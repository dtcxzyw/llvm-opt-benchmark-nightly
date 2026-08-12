inline.NumInlined: 635
inline.NumDeleted: 277
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN2cv10OcvDftImpl6colDftEPKhmPhmiib:bb.a
  %i.biy = icmp eq i32 %i.bix, 2
  br i1 %i.biy, label %bb.ab, label %_ZN2cvL23complementComplexOutputEiPhmiii.exit

bb.ab:                                            ; preds = %bb.aa
  %i.biz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bja = load i32, ptr %i.biz, align 8, !tbaa !82
  %i.bjb = icmp eq i32 %i.bja, 5
  %i.bjc = icmp sgt i32 %i.b, 0
  %i.bjd = icmp sgt i32 %i.d, 2
  %or.cond.i = and i1 %i.bjc, %i.bjd              ; 2 uses
  br i1 %i.bjb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bje = lshr i64 %4, 2                         ; 2 uses
  br i1 %or.cond.i, label %.lr.ph37.split.i.i, label %_ZN2cvL23complementComplexOutputEiPhmiii.exit

.lr.ph37.split.i.i:                               ; preds = %bb.ac
  %i.bjf = add nuw nsw i32 %i.d, 1
  %i.bjg = lshr i32 %i.bjf, 1                     ; 2 uses
  %i.bjh = zext nneg i32 %i.d to i64              ; 3 uses
  %wide.trip.count57.i.i = zext nneg i32 %i.b to i64 ; 3 uses
  %wide.trip.count52.i.i = zext nneg i32 %i.bjg to i64
  %i.bji = add nsw i64 %wide.trip.count52.i.i, -1 ; 3 uses
  %xtraiter861 = and i64 %i.bji, 1
  %i.bjj = icmp eq i32 %i.bjg, 2
  %unroll_iter865 = and i64 %i.bji, -2
  %lcmp.mod863.not = icmp eq i64 %xtraiter861, 0
  %lcmp.mod864 = trunc i64 %i.bji to i1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %.lr.ph37.split.i.i
  %indvars.iv43.i.i = phi i64 [ %indvars.iv.next44.i.i, %._crit_edge.i.i ], [ 0, %.lr.ph37.split.i.i ] ; 5 uses
  %i.bjk = mul i64 %indvars.iv43.i.i, %i.bje
  %i.bjl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bjk ; 4 uses
  %i.bjm = icmp eq i64 %indvars.iv43.i.i, 0
  %i.bjn = shl nuw nsw i64 %indvars.iv43.i.i, 1
  %i.bjo = icmp eq i64 %i.bjn, %wide.trip.count57.i.i
  %or.cond33.i.i = select i1 %i.bjm, i1 true, i1 %i.bjo
  %i.bjp = sub nsw i64 %wide.trip.count57.i.i, %indvars.iv43.i.i
  %i.bjq = mul i64 %i.bjp, %i.bje
  %i.bjr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bjq
  %spec.select.i.i = select i1 %or.cond33.i.i, ptr %i.bjl, ptr %i.bjr ; 3 uses
  br i1 %i.bjj, label %.epil.preheader860, label %.lr.ph.i.i.new

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph.i.i.new
  br i1 %lcmp.mod863.not, label %._crit_edge.i.i, label %.epil.preheader860

.epil.preheader860:                               ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod864)
  %.idx.i.i.epil = shl nuw nsw i64 %indvars.iv.i.i.epil.init, 3
  %i.bjs = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 %.idx.i.i.epil ; 2 uses
  %i.bjt = load float, ptr %i.bjs, align 4, !tbaa !143
  %i.bju = sub nsw i64 %i.bjh, %indvars.iv.i.i.epil.init
  %.idx60.i.i.epil = shl nsw i64 %i.bju, 3
  %i.bjv = getelementptr inbounds i8, ptr %i.bjl, i64 %.idx60.i.i.epil ; 2 uses
  store float %i.bjt, ptr %i.bjv, align 4, !tbaa !143
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjs, i64 4
  %i.bjx = load float, ptr %i.bjw, align 4, !tbaa !143
  %i.bjy = fneg float %i.bjx
  %i.bjz = getelementptr i8, ptr %i.bjv, i64 4
  store float %i.bjy, ptr %i.bjz, align 4, !tbaa !143
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader860
  %indvars.iv.next44.i.i = add nuw nsw i64 %indvars.iv43.i.i, 1 ; 2 uses
  %exitcond47.not.i.i = icmp eq i64 %indvars.iv.next44.i.i, %wide.trip.count57.i.i
  br i1 %exitcond47.not.i.i, label %_ZN2cvL23complementComplexOutputEiPhmiii.exit, label %.lr.ph.i.i, !llvm.loop !578

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i.new ], [ 1, %.lr.ph.i.i ] ; 4 uses
  %niter866 = phi i64 [ %niter866.next.1, %.lr.ph.i.i.new ], [ 0, %.lr.ph.i.i ]
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i.i, 3
  %i.bka = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 %.idx.i.i ; 2 uses
  %i.bkb = load float, ptr %i.bka, align 4, !tbaa !143
  %i.bkc = sub nsw i64 %i.bjh, %indvars.iv.i.i
  %.idx60.i.i = shl nsw i64 %i.bkc, 3
  %i.bkd = getelementptr inbounds i8, ptr %i.bjl, i64 %.idx60.i.i ; 2 uses
  store float %i.bkb, ptr %i.bkd, align 4, !tbaa !143
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bka, i64 4
  %i.bkf = load float, ptr %i.bke, align 4, !tbaa !143
  %i.bkg = fneg float %i.bkf
  %i.bkh = getelementptr i8, ptr %i.bkd, i64 4
  store float %i.bkg, ptr %i.bkh, align 4, !tbaa !143
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.idx.i.i.1 = shl nuw nsw i64 %indvars.iv.next.i.i, 3
  %i.bki = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 %.idx.i.i.1 ; 2 uses
  %i.bkj = load float, ptr %i.bki, align 4, !tbaa !143
  %i.bkk = sub nsw i64 %i.bjh, %indvars.iv.next.i.i
  %.idx60.i.i.1 = shl nsw i64 %i.bkk, 3
  %i.bkl = getelementptr inbounds i8, ptr %i.bjl, i64 %.idx60.i.i.1 ; 2 uses
  store float %i.bkj, ptr %i.bkl, align 4, !tbaa !143
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bki, i64 4
  %i.bkn = load float, ptr %i.bkm, align 4, !tbaa !143
  %i.bko = fneg float %i.bkn
  %i.bkp = getelementptr i8, ptr %i.bkl, i64 4
  store float %i.bko, ptr %i.bkp, align 4, !tbaa !143
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter866.next.1 = add nuw i64 %niter866, 2     ; 2 uses
  %niter866.ncmp.1 = icmp eq i64 %niter866.next.1, %unroll_iter865
  br i1 %niter866.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph.i.i.new, !llvm.loop !577

bb.ad:                                            ; preds = %bb.ab
  %i.bkq = lshr i64 %4, 3                         ; 2 uses
  br i1 %or.cond.i, label %.lr.ph37.split.i11.i, label %_ZN2cvL23complementComplexOutputEiPhmiii.exit

.lr.ph37.split.i11.i:                             ; preds = %bb.ad
  %i.bkr = add nuw nsw i32 %i.d, 1
  %i.bks = lshr i32 %i.bkr, 1                     ; 2 uses
  %i.bkt = zext nneg i32 %i.d to i64              ; 3 uses
  %wide.trip.count57.i13.i = zext nneg i32 %i.b to i64 ; 3 uses
  %wide.trip.count52.i29.i = zext nneg i32 %i.bks to i64
  %i.bku = add nsw i64 %wide.trip.count52.i29.i, -1 ; 3 uses
  %xtraiter854 = and i64 %i.bku, 1
  %i.bkv = icmp eq i32 %i.bks, 2
  %unroll_iter858 = and i64 %i.bku, -2
  %lcmp.mod856.not = icmp eq i64 %xtraiter854, 0
  %lcmp.mod857 = trunc i64 %i.bku to i1
  br label %.lr.ph.i16.i

.lr.ph.i16.i:                                     ; preds = %._crit_edge.i25.i, %.lr.ph37.split.i11.i
  %indvars.iv43.i17.i = phi i64 [ %indvars.iv.next44.i26.i, %._crit_edge.i25.i ], [ 0, %.lr.ph37.split.i11.i ] ; 5 uses
  %i.bkw = mul i64 %indvars.iv43.i17.i, %i.bkq
  %i.bkx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bkw ; 4 uses
  %i.bky = icmp eq i64 %indvars.iv43.i17.i, 0
  %i.bkz = shl nuw nsw i64 %indvars.iv43.i17.i, 1
  %i.bla = icmp eq i64 %i.bkz, %wide.trip.count57.i13.i
  %or.cond33.i18.i = select i1 %i.bky, i1 true, i1 %i.bla
  %i.blb = sub nsw i64 %wide.trip.count57.i13.i, %indvars.iv43.i17.i
  %i.blc = mul i64 %i.blb, %i.bkq
  %i.bld = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.blc
  %spec.select.i19.i = select i1 %or.cond33.i18.i, ptr %i.bkx, ptr %i.bld ; 3 uses
  br i1 %i.bkv, label %.epil.preheader, label %.lr.ph.i16.i.new

._crit_edge.i25.i.unr-lcssa:                      ; preds = %.lr.ph.i16.i.new
  br i1 %lcmp.mod856.not, label %._crit_edge.i25.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i25.i.unr-lcssa, %.lr.ph.i16.i
  %indvars.iv.i20.i.epil.init = phi i64 [ 1, %.lr.ph.i16.i ], [ %indvars.iv.next.i23.i.1, %._crit_edge.i25.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod857)
  %.idx.i21.i.epil = shl nuw nsw i64 %indvars.iv.i20.i.epil.init, 4
  %i.ble = getelementptr inbounds nuw i8, ptr %spec.select.i19.i, i64 %.idx.i21.i.epil ; 2 uses
  %i.blf = load double, ptr %i.ble, align 8, !tbaa !228
  %i.blg = sub nsw i64 %i.bkt, %indvars.iv.i20.i.epil.init
  %.idx60.i22.i.epil = shl nsw i64 %i.blg, 4
  %i.blh = getelementptr inbounds i8, ptr %i.bkx, i64 %.idx60.i22.i.epil ; 2 uses
  store double %i.blf, ptr %i.blh, align 8, !tbaa !228
  %i.bli = getelementptr inbounds nuw i8, ptr %i.ble, i64 8
  %i.blj = load double, ptr %i.bli, align 8, !tbaa !228
  %i.blk = fneg double %i.blj
  %i.bll = getelementptr i8, ptr %i.blh, i64 8
  store double %i.blk, ptr %i.bll, align 8, !tbaa !228
  br label %._crit_edge.i25.i

._crit_edge.i25.i:                                ; preds = %._crit_edge.i25.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next44.i26.i = add nuw nsw i64 %indvars.iv43.i17.i, 1 ; 2 uses
  %exitcond47.not.i27.i = icmp eq i64 %indvars.iv.next44.i26.i, %wide.trip.count57.i13.i
  br i1 %exitcond47.not.i27.i, label %_ZN2cvL23complementComplexOutputEiPhmiii.exit, label %.lr.ph.i16.i, !llvm.loop !580

.lr.ph.i16.i.new:                                 ; preds = %.lr.ph.i16.i, %.lr.ph.i16.i.new
  %indvars.iv.i20.i = phi i64 [ %indvars.iv.next.i23.i.1, %.lr.ph.i16.i.new ], [ 1, %.lr.ph.i16.i ] ; 4 uses
  %niter859 = phi i64 [ %niter859.next.1, %.lr.ph.i16.i.new ], [ 0, %.lr.ph.i16.i ]
  %.idx.i21.i = shl nuw nsw i64 %indvars.iv.i20.i, 4
  %i.blm = getelementptr inbounds nuw i8, ptr %spec.select.i19.i, i64 %.idx.i21.i ; 2 uses
  %i.bln = load double, ptr %i.blm, align 8, !tbaa !228
  %i.blo = sub nsw i64 %i.bkt, %indvars.iv.i20.i
  %.idx60.i22.i = shl nsw i64 %i.blo, 4
  %i.blp = getelementptr inbounds i8, ptr %i.bkx, i64 %.idx60.i22.i ; 2 uses
  store double %i.bln, ptr %i.blp, align 8, !tbaa !228
  %i.blq = getelementptr inbounds nuw i8, ptr %i.blm, i64 8
  %i.blr = load double, ptr %i.blq, align 8, !tbaa !228
  %i.bls = fneg double %i.blr
  %i.blt = getelementptr i8, ptr %i.blp, i64 8
  store double %i.bls, ptr %i.blt, align 8, !tbaa !228
  %indvars.iv.next.i23.i = add nuw nsw i64 %indvars.iv.i20.i, 1 ; 2 uses
  %.idx.i21.i.1 = shl nuw nsw i64 %indvars.iv.next.i23.i, 4
  %i.blu = getelementptr inbounds nuw i8, ptr %spec.select.i19.i, i64 %.idx.i21.i.1 ; 2 uses
  %i.blv = load double, ptr %i.blu, align 8, !tbaa !228
  %i.blw = sub nsw i64 %i.bkt, %indvars.iv.next.i23.i
  %.idx60.i22.i.1 = shl nsw i64 %i.blw, 4
  %i.blx = getelementptr inbounds i8, ptr %i.bkx, i64 %.idx60.i22.i.1 ; 2 uses
  store double %i.blv, ptr %i.blx, align 8, !tbaa !228
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blu, i64 8
  %i.blz = load double, ptr %i.bly, align 8, !tbaa !228
  %i.bma = fneg double %i.blz
  %i.bmb = getelementptr i8, ptr %i.blx, i64 8
  store double %i.bma, ptr %i.bmb, align 8, !tbaa !228
  %indvars.iv.next.i23.i.1 = add nuw nsw i64 %indvars.iv.i20.i, 2 ; 2 uses
  %niter859.next.1 = add nuw i64 %niter859, 2     ; 2 uses
  %niter859.ncmp.1 = icmp eq i64 %niter859.next.1, %unroll_iter858
  br i1 %niter859.ncmp.1, label %._crit_edge.i25.i.unr-lcssa, label %.lr.ph.i16.i.new, !llvm.loop !579

_ZN2cvL23complementComplexOutputEiPhmiii.exit:    ; preds = %._crit_edge.i25.i, %._crit_edge.i.i, %bb.ad, %bb.ac, %bb.aa, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN2cvL9ExpandCCSEPhii(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #16 {
bb.a:
  %i.a = icmp eq i32 %2, 4
  %i.b = add nuw nsw i32 %1, 1                    ; 4 uses
  %i.c = icmp sgt i32 %1, 2                       ; 2 uses
  br i1 %i.a, label %.preheader, label %.preheader62

.preheader62:                                     ; preds = %bb.a
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader62
  %i.d = lshr i32 %i.b, 1
  %i.e = zext nneg i32 %1 to i64                  ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.d, i32 2)
  %wide.trip.count = zext nneg i32 %smax to i64
  %i.f = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.f, 1
  %3 = icmp ult i32 %1, 5
  br i1 %3, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.f, -2
  br label %.lr.ph

.preheader:                                       ; preds = %bb.a
  br i1 %i.c, label %.lr.ph70.preheader, label %._crit_edge71

.lr.ph70.preheader:                               ; preds = %.preheader
  %i.g = lshr i32 %i.b, 1
  %i.h = zext nneg i32 %1 to i64                  ; 3 uses
  %smax85 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 2)
  %wide.trip.count86 = zext nneg i32 %smax85 to i64
  %i.i = add nsw i64 %wide.trip.count86, -1       ; 3 uses
  %xtraiter113 = and i64 %i.i, 1
  %4 = icmp ult i32 %1, 5
  br i1 %4, label %.lr.ph70.epil.preheader, label %.lr.ph70.preheader.new

.lr.ph70.preheader.new:                           ; preds = %.lr.ph70.preheader
  %unroll_iter116 = and i64 %i.i, -2
  br label %.lr.ph70

.lr.ph70:                                         ; preds = %.lr.ph70, %.lr.ph70.preheader.new
  %indvars.iv82 = phi i64 [ 1, %.lr.ph70.preheader.new ], [ %indvars.iv.next83.1, %.lr.ph70 ] ; 4 uses
  %niter117 = phi i64 [ 0, %.lr.ph70.preheader.new ], [ %niter117.next.1, %.lr.ph70 ]
  %.idx95 = shl i64 %indvars.iv82, 3
  %i.j = getelementptr i8, ptr %0, i64 %.idx95    ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -4
  %i.l = load float, ptr %i.k, align 4, !tbaa !143
  %i.m = sub nsw i64 %i.h, %indvars.iv82
  %.idx96 = shl nsw i64 %i.m, 3
  %i.n = getelementptr inbounds i8, ptr %0, i64 %.idx96 ; 2 uses
  store float %i.l, ptr %i.n, align 4, !tbaa !143
  %i.o = load float, ptr %i.j, align 4, !tbaa !143
  %i.p = fneg float %i.o
  %i.q = getelementptr i8, ptr %i.n, i64 4
  store float %i.p, ptr %i.q, align 4, !tbaa !143
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %.idx95.1 = shl i64 %indvars.iv.next83, 3
  %i.r = getelementptr i8, ptr %0, i64 %.idx95.1  ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -4
  %i.t = load float, ptr %i.s, align 4, !tbaa !143
  %i.u = sub nsw i64 %i.h, %indvars.iv.next83
  %.idx96.1 = shl nsw i64 %i.u, 3
  %i.v = getelementptr inbounds i8, ptr %0, i64 %.idx96.1 ; 2 uses
  store float %i.t, ptr %i.v, align 4, !tbaa !143
  %i.w = load float, ptr %i.r, align 4, !tbaa !143
  %i.x = fneg float %i.w
  %i.y = getelementptr i8, ptr %i.v, i64 4
  store float %i.x, ptr %i.y, align 4, !tbaa !143
  %indvars.iv.next83.1 = add nuw nsw i64 %indvars.iv82, 2 ; 2 uses
  %niter117.next.1 = add nuw i64 %niter117, 2     ; 2 uses
  %niter117.ncmp.1 = icmp eq i64 %niter117.next.1, %unroll_iter116
  br i1 %niter117.ncmp.1, label %._crit_edge71.loopexit.unr-lcssa, label %.lr.ph70, !llvm.loop !635

._crit_edge71.loopexit.unr-lcssa:                 ; preds = %.lr.ph70
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %._crit_edge71, label %.lr.ph70.epil.preheader

.lr.ph70.epil.preheader:                          ; preds = %._crit_edge71.loopexit.unr-lcssa, %.lr.ph70.preheader
  %indvars.iv82.epil.init = phi i64 [ 1, %.lr.ph70.preheader ], [ %indvars.iv.next83.1, %._crit_edge71.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod115 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod115)
  %.idx95.epil = shl i64 %indvars.iv82.epil.init, 3
  %i.z = getelementptr i8, ptr %0, i64 %.idx95.epil ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !143
  %i.ac = sub nsw i64 %i.h, %indvars.iv82.epil.init
  %.idx96.epil = shl nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %.idx96.epil ; 2 uses
  store float %i.ab, ptr %i.ad, align 4, !tbaa !143
  %i.ae = load float, ptr %i.z, align 4, !tbaa !143
  %i.af = fneg float %i.ae
  %i.ag = getelementptr i8, ptr %i.ad, i64 4
  store float %i.af, ptr %i.ag, align 4, !tbaa !143
  br label %._crit_edge71

._crit_edge71:                                    ; preds = %.lr.ph70.epil.preheader, %._crit_edge71.loopexit.unr-lcssa, %.preheader
  %i.ah = and i32 %1, 1
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge71
  %i.aj = sext i32 %1 to i64
  %i.ak = getelementptr [4 x i8], ptr %0, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -4
  %i.am = load float, ptr %i.al, align 4, !tbaa !143
  store float %i.am, ptr %i.ak, align 4, !tbaa !143
  %i.an = sext i32 %i.b to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %0, i64 %i.an
  store float 0.000000e+00, ptr %i.ao, align 4, !tbaa !143
  %i.ap = add nsw i32 %1, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge71
  %.0 = phi i32 [ %i.ap, %bb.b ], [ %1, %._crit_edge71 ] ; 3 uses
  %i.aq = icmp sgt i32 %.0, 1
  br i1 %i.aq, label %.lr.ph75.preheader, label %._crit_edge76

.lr.ph75.preheader:                               ; preds = %bb.c
  %i.ar = zext nneg i32 %.0 to i64                ; 4 uses
  %i.as = add nsw i64 %i.ar, -1                   ; 2 uses
  %min.iters.check99 = icmp ult i32 %.0, 9
  br i1 %min.iters.check99, label %.lr.ph75.preheader110, label %vector.ph100

vector.ph100:                                     ; preds = %.lr.ph75.preheader
  %n.vec101 = and i64 %i.as, -8                   ; 3 uses
  %i.at = sub nsw i64 %i.ar, %n.vec101
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph100
  %index103 = phi i64 [ 0, %vector.ph100 ], [ %index.next106, %vector.body102 ] ; 2 uses
  %i.au = sub i64 %i.ar, %index103                ; 2 uses
  %i.av = getelementptr [4 x i8], ptr %0, i64 %i.au ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 -16
  %i.ax = getelementptr i8, ptr %i.av, i64 -32
  %wide.load104 = load <4 x float>, ptr %i.aw, align 4, !tbaa !143
  %wide.load105 = load <4 x float>, ptr %i.ax, align 4, !tbaa !143
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -12
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -28
  store <4 x float> %wide.load104, ptr %i.az, align 4, !tbaa !143
  store <4 x float> %wide.load105, ptr %i.ba, align 4, !tbaa !143
  %index.next106 = add nuw i64 %index103, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next106, %n.vec101
  br i1 %i.bb, label %middle.block107, label %vector.body102, !llvm.loop !636

middle.block107:                                  ; preds = %vector.body102
  %cmp.n108 = icmp eq i64 %i.as, %n.vec101
  br i1 %cmp.n108, label %._crit_edge76, label %.lr.ph75.preheader110

.lr.ph75.preheader110:                            ; preds = %.lr.ph75.preheader, %middle.block107
  %indvars.iv89.ph = phi i64 [ %i.ar, %.lr.ph75.preheader ], [ %i.at, %middle.block107 ]
  br label %.lr.ph75

.lr.ph75:                                         ; preds = %.lr.ph75.preheader110, %.lr.ph75
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %.lr.ph75 ], [ %indvars.iv89.ph, %.lr.ph75.preheader110 ] ; 3 uses
  %indvars.iv.next90 = add nsw i64 %indvars.iv89, -1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next90
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !143
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv89
  store float %i.bd, ptr %i.be, align 4, !tbaa !143
  %i.bf = icmp samesign ugt i64 %indvars.iv89, 2
  br i1 %i.bf, label %.lr.ph75, label %._crit_edge76, !llvm.loop !637

._crit_edge76:                                    ; preds = %.lr.ph75, %middle.block107, %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float 0.000000e+00, ptr %i.bg, align 4, !tbaa !143
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %.idx = shl i64 %indvars.iv, 4
  %i.bh = getelementptr i8, ptr %0, i64 %.idx     ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 -8
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !228
  %i.bk = sub nsw i64 %i.e, %indvars.iv
  %.idx94 = shl nsw i64 %i.bk, 4
  %i.bl = getelementptr inbounds i8, ptr %0, i64 %.idx94 ; 2 uses
  store double %i.bj, ptr %i.bl, align 8, !tbaa !228
  %i.bm = load double, ptr %i.bh, align 8, !tbaa !228
  %i.bn = fneg double %i.bm
  %i.bo = getelementptr i8, ptr %i.bl, i64 8
  store double %i.bn, ptr %i.bo, align 8, !tbaa !228
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.idx.1 = shl i64 %indvars.iv.next, 4
  %i.bp = getelementptr i8, ptr %0, i64 %.idx.1   ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 -8
  %i.br = load double, ptr %i.bq, align 8, !tbaa !228
  %i.bs = sub nsw i64 %i.e, %indvars.iv.next
  %.idx94.1 = shl nsw i64 %i.bs, 4
  %i.bt = getelementptr inbounds i8, ptr %0, i64 %.idx94.1 ; 2 uses
  store double %i.br, ptr %i.bt, align 8, !tbaa !228
  %i.bu = load double, ptr %i.bp, align 8, !tbaa !228
  %i.bv = fneg double %i.bu
  %i.bw = getelementptr i8, ptr %i.bt, i64 8
  store double %i.bv, ptr %i.bw, align 8, !tbaa !228
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !638

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod112 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %.idx.epil = shl i64 %indvars.iv.epil.init, 4
  %i.bx = getelementptr i8, ptr %0, i64 %.idx.epil ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 -8
  %i.bz = load double, ptr %i.by, align 8, !tbaa !228
  %i.ca = sub nsw i64 %i.e, %indvars.iv.epil.init
  %.idx94.epil = shl nsw i64 %i.ca, 4
  %i.cb = getelementptr inbounds i8, ptr %0, i64 %.idx94.epil ; 2 uses
  store double %i.bz, ptr %i.cb, align 8, !tbaa !228
  %i.cc = load double, ptr %i.bx, align 8, !tbaa !228
  %i.cd = fneg double %i.cc
  %i.ce = getelementptr i8, ptr %i.cb, i64 8
  store double %i.cd, ptr %i.ce, align 8, !tbaa !228
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader62
  %i.cf = and i32 %1, 1
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.ch = sext i32 %1 to i64
  %i.ci = getelementptr [8 x i8], ptr %0, i64 %i.ch ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 -8
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !228
  store double %i.ck, ptr %i.ci, align 8, !tbaa !228
end_hunk_0
