inline.NumInlined: 622
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN2cvL6SVBkSbEiiPKfmS1_mbS1_mbS1_miPfmPh:bb.a
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.02123.i.i, i64 %indvars.iv.i116.i ; 2 uses
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !19
  %i.he = fpext float %i.hd to double
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i116.i
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !17
  %i.hh = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.hg, double %i.he)
  %i.hi = fptrunc double %i.hh to float
  store float %i.hi, ptr %i.hc, align 4, !tbaa !19
  %indvars.iv.next.i117.i = add nuw nsw i64 %indvars.iv.i116.i, 1 ; 2 uses
  %exitcond.not.i118.i = icmp eq i64 %indvars.iv.next.i117.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i118.i, label %._crit_edge.i119.i, label %scalar.ph, !llvm.loop !228

._crit_edge.i119.i:                               ; preds = %scalar.ph, %middle.block
  %indvars.iv.next30.i120.i = add nuw nsw i64 %indvars.iv29.i115.i, 1 ; 2 uses
  %i.hj = getelementptr inbounds [4 x i8], ptr %.02123.i.i, i64 %i.bf
  %exitcond33.not.i121.i = icmp eq i64 %indvars.iv.next30.i120.i, %wide.trip.count32.i112.i
  br i1 %exitcond33.not.i121.i, label %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i, label %.lr.ph.i114.i, !llvm.loop !229

_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i: ; preds = %._crit_edge.i119.i, %.preheader135.i, %.preheader138.i, %.lr.ph168.i.split
  %indvars.iv.next207.i = add nuw nsw i64 %indvars.iv206.i, 1 ; 2 uses
  %i.hk = getelementptr inbounds [4 x i8], ptr %.098163.i, i64 %i.bg
  %i.hl = getelementptr inbounds [4 x i8], ptr %.0104160.i, i64 %i.bi
  %exitcond210.not.i = icmp eq i64 %indvars.iv.next207.i, %wide.trip.count181.i
  br i1 %exitcond210.not.i, label %_ZN2cvL11SVBkSbImpl_IfEEviiPKT_iS3_ibS3_ibS3_iiPS1_iPdS1_.exit, label %.lr.ph168.i.split, !llvm.loop !219

_ZN2cvL11SVBkSbImpl_IfEEviiPKT_iS3_ibS3_ibS3_iiPS1_iPdS1_.exit: ; preds = %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us, %.preheader139.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN2cvL6SVBkSbEiiPKdmS1_mbS1_mbS1_miPdmPh(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i1 noundef zeroext %6, ptr nofree noundef readonly captures(none) %7, i64 noundef %8, ptr nofree noundef readonly captures(address_is_null) %9, i64 noundef %10, i32 noundef %11, ptr nofree noundef captures(none) %12, i64 noundef %13, ptr noundef %14) unnamed_addr #7 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %.not = icmp eq i64 %3, 0
  %i.b = lshr i64 %13, 3                          ; 2 uses
  %i.c = ptrtoint ptr %14 to i64
  %i.d = add i64 %i.c, 7
  %i.e = and i64 %i.d, -8                         ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 21 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %1, i32 %0) ; 3 uses
  %.not.i = icmp eq ptr %9, null                  ; 3 uses
  %spec.select.i = select i1 %.not.i, i32 %0, i32 %11 ; 8 uses
  %i.g = icmp sgt i32 %1, 0
  %i.h = icmp sgt i32 %spec.select.i, 0           ; 3 uses
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %.preheader143.preheader.i, label %.preheader142.i

.preheader143.preheader.i:                        ; preds = %bb.a
  %sext = shl i64 %i.b, 32
  %i.i = ashr exact i64 %sext, 29                 ; 9 uses
  %i.j = zext nneg i32 %spec.select.i to i64
  %i.k = shl nuw nsw i64 %i.j, 3                  ; 9 uses
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.l = icmp ult i32 %1, 8
  br i1 %i.l, label %.preheader143.i.epil.preheader, label %.preheader143.preheader.i.new

.preheader143.preheader.i.new:                    ; preds = %.preheader143.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %.preheader143.i

.preheader143.i:                                  ; preds = %.preheader143.i, %.preheader143.preheader.i.new
  %indvar.i = phi i64 [ 0, %.preheader143.preheader.i.new ], [ %indvar.next.i.7, %.preheader143.i ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader143.preheader.i.new ], [ %niter.next.7, %.preheader143.i ]
  %i.m = mul i64 %indvar.i, %i.i
  %scevgep.i = getelementptr i8, ptr %12, i64 %i.m
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.k, i1 false), !tbaa !17
  %indvar.next.i = or disjoint i64 %indvar.i, 1
  %i.n = mul i64 %indvar.next.i, %i.i
  %scevgep.i.1 = getelementptr i8, ptr %12, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.1, i8 0, i64 %i.k, i1 false), !tbaa !17
  %indvar.next.i.1 = or disjoint i64 %indvar.i, 2
  %i.o = mul i64 %indvar.next.i.1, %i.i
  %scevgep.i.2 = getelementptr i8, ptr %12, i64 %i.o
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.2, i8 0, i64 %i.k, i1 false), !tbaa !17
  %indvar.next.i.2 = or disjoint i64 %indvar.i, 3
  %i.p = mul i64 %indvar.next.i.2, %i.i
  %scevgep.i.3 = getelementptr i8, ptr %12, i64 %i.p
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.3, i8 0, i64 %i.k, i1 false), !tbaa !17
  %indvar.next.i.3 = or disjoint i64 %indvar.i, 4
  %i.q = mul i64 %indvar.next.i.3, %i.i
  %scevgep.i.4 = getelementptr i8, ptr %12, i64 %i.q
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.4, i8 0, i64 %i.k, i1 false), !tbaa !17
  %indvar.next.i.4 = or disjoint i64 %indvar.i, 5
  %i.r = mul i64 %indvar.next.i.4, %i.i
  %scevgep.i.5 = getelementptr i8, ptr %12, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.5, i8 0, i64 %i.k, i1 false), !tbaa !17
  %indvar.next.i.5 = or disjoint i64 %indvar.i, 6
  %i.s = mul i64 %indvar.next.i.5, %i.i
  %scevgep.i.6 = getelementptr i8, ptr %12, i64 %i.s
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.6, i8 0, i64 %i.k, i1 false), !tbaa !17
  %indvar.next.i.6 = or disjoint i64 %indvar.i, 7
  %i.t = mul i64 %indvar.next.i.6, %i.i
  %scevgep.i.7 = getelementptr i8, ptr %12, i64 %i.t
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.7, i8 0, i64 %i.k, i1 false), !tbaa !17
  %indvar.next.i.7 = add nuw nsw i64 %indvar.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader142.i.loopexit.unr-lcssa, label %.preheader143.i, !llvm.loop !230

.preheader142.i.loopexit.unr-lcssa:               ; preds = %.preheader143.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader142.i, label %.preheader143.i.epil.preheader

.preheader143.i.epil.preheader:                   ; preds = %.preheader142.i.loopexit.unr-lcssa, %.preheader143.preheader.i
  %indvar.i.epil.init = phi i64 [ 0, %.preheader143.preheader.i ], [ %indvar.next.i.7, %.preheader142.i.loopexit.unr-lcssa ]
  %lcmp.mod67 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod67)
  br label %.preheader143.i.epil

.preheader143.i.epil:                             ; preds = %.preheader143.i.epil, %.preheader143.i.epil.preheader
  %indvar.i.epil = phi i64 [ %indvar.i.epil.init, %.preheader143.i.epil.preheader ], [ %indvar.next.i.epil, %.preheader143.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader143.i.epil.preheader ], [ %epil.iter.next, %.preheader143.i.epil ]
  %i.u = mul i64 %indvar.i.epil, %i.i
  %scevgep.i.epil = getelementptr i8, ptr %12, i64 %i.u
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.epil, i8 0, i64 %i.k, i1 false), !tbaa !17
  %indvar.next.i.epil = add nuw nsw i64 %indvar.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader142.i, label %.preheader143.i.epil, !llvm.loop !231

.preheader142.i:                                  ; preds = %.preheader142.i.loopexit.unr-lcssa, %.preheader143.i.epil, %bb.a
  %i.v = icmp sgt i32 %.sroa.speculated.i, 0
  br i1 %i.v, label %.lr.ph.preheader.i, label %_ZN2cvL11SVBkSbImpl_IdEEviiPKT_iS3_ibS3_ibS3_iiPS1_iPdS1_.exit

.lr.ph.preheader.i:                               ; preds = %.preheader142.i
  %i.w = shl i64 %3, 29
  %i.x = ashr i64 %i.w, 32
  %i.y = select i1 %.not, i64 1, i64 %i.x         ; 7 uses
  %wide.trip.count184.i = zext nneg i32 %.sroa.speculated.i to i64 ; 4 uses
  %xtraiter68 = and i64 %wide.trip.count184.i, 3  ; 3 uses
  %i.z = icmp ult i32 %.sroa.speculated.i, 4
  br i1 %i.z, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter73 = and i64 %wide.trip.count184.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.0106146.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.new ], [ %i.ap, %.lr.ph.i ]
  %niter74 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter74.next.3, %.lr.ph.i ]
  %i.aa = mul nsw i64 %indvars.iv.i, %i.y
  %i.ab = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !17
  %i.ad = fadd double %.0106146.i, %i.ac
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.ae = mul nsw i64 %indvars.iv.next.i, %i.y
  %i.af = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !17
  %i.ah = fadd double %i.ad, %i.ag
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %i.ai = mul nsw i64 %indvars.iv.next.i.1, %i.y
  %i.aj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !17
  %i.al = fadd double %i.ah, %i.ak
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %i.am = mul nsw i64 %indvars.iv.next.i.2, %i.y
  %i.an = getelementptr inbounds [8 x i8], ptr %2, i64 %i.am
  %i.ao = load double, ptr %i.an, align 8, !tbaa !17
  %i.ap = fadd double %i.al, %i.ao                ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter74.next.3 = add i64 %niter74, 4           ; 2 uses
  %niter74.ncmp.3 = icmp eq i64 %niter74.next.3, %unroll_iter73
  br i1 %niter74.ncmp.3, label %.lr.ph171.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !232

.lr.ph171.i.unr-lcssa:                            ; preds = %.lr.ph.i
  %lcmp.mod70.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod70.not, label %.lr.ph171.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph171.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.lr.ph171.i.unr-lcssa ]
  %.0106146.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.ap, %.lr.ph171.i.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter68, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.0106146.i.epil = phi double [ %.0106146.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.at, %.lr.ph.i.epil ]
  %epil.iter69 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter69.next, %.lr.ph.i.epil ]
  %i.aq = mul nsw i64 %indvars.iv.i.epil, %i.y
  %i.ar = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !17
  %i.at = fadd double %.0106146.i.epil, %i.as     ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter69.next = add i64 %epil.iter69, 1     ; 2 uses
  %epil.iter69.cmp.not = icmp eq i64 %epil.iter69.next, %xtraiter68
  br i1 %epil.iter69.cmp.not, label %.lr.ph171.i, label %.lr.ph.i.epil, !llvm.loop !233

.lr.ph171.i:                                      ; preds = %.lr.ph.i.epil, %.lr.ph171.i.unr-lcssa
  %.lcssa66 = phi double [ %i.ap, %.lr.ph171.i.unr-lcssa ], [ %i.at, %.lr.ph.i.epil ]
  %i.au = fmul double %.lcssa66, f0x3CC0000000000000 ; 2 uses
  %i.av = icmp eq i32 %spec.select.i, 1
  %i.aw = shl i64 %10, 29
  %i.ax = ashr i64 %i.aw, 32                      ; 6 uses
  %i.ay = shl i64 %5, 29
  %i.az = ashr i64 %i.ay, 32                      ; 2 uses
  %i.ba = select i1 %6, i64 1, i64 %i.az          ; 10 uses
  %wide.trip.count33.i.i = zext i32 %0 to i64     ; 4 uses
  %wide.trip.count.i.i = zext i32 %spec.select.i to i64 ; 23 uses
  %sext19 = shl i64 %i.b, 32                      ; 2 uses
  %i.bb = ashr exact i64 %sext19, 32              ; 5 uses
  %wide.trip.count33.i112.i = zext i32 %1 to i64  ; 4 uses
  %i.bc = select i1 %6, i64 %i.az, i64 1          ; 3 uses
  %i.bd = shl i64 %8, 29
  %i.be = ashr i64 %i.bd, 32                      ; 2 uses
  %15 = shl nuw nsw i64 %wide.trip.count.i.i, 3
  br i1 %i.av, label %.lr.ph171.i.split.us.preheader, label %.lr.ph171.i.split.preheader

.lr.ph171.i.split.us.preheader:                   ; preds = %.lr.ph171.i
  %xtraiter82 = and i64 %wide.trip.count33.i.i, 1
  %i.bf = icmp eq i32 %0, 1
  %unroll_iter87 = and i64 %wide.trip.count33.i.i, 4294967294
  %lcmp.mod84.not = icmp eq i64 %xtraiter82, 0
  %lcmp.mod86 = trunc i32 %0 to i1
  %xtraiter89 = and i64 %wide.trip.count33.i112.i, 1
  %i.bg = icmp eq i32 %1, 1
  %unroll_iter93 = and i64 %wide.trip.count33.i112.i, 4294967294
  %lcmp.mod91.not = icmp eq i64 %xtraiter89, 0
  %lcmp.mod92 = trunc i32 %1 to i1
  br label %.lr.ph171.i.split.us

.lr.ph171.i.split.preheader:                      ; preds = %.lr.ph171.i
  %i.bh = add nuw nsw i64 %wide.trip.count33.i112.i, 2305843009213693951
  %i.bi = mul i64 %i.bh, %i.bb
  %16 = shl nuw nsw i64 %wide.trip.count.i.i, 3
  %i.bj = add i64 %i.bi, %wide.trip.count.i.i
  %i.bk = shl i64 %i.bj, 3
  %scevgep = getelementptr i8, ptr %12, i64 %i.bk
  %scevgep4 = getelementptr i8, ptr %i.f, i64 %16
  %i.bl = sub i64 %i.e, %i.a
  %i.bm = mul nsw i64 %i.bc, -8
  %i.bn = shl nuw nsw i64 %wide.trip.count.i.i, 3
  %scevgep38 = getelementptr i8, ptr %i.f, i64 %i.bn
  %i.bo = add nuw nsw i64 %wide.trip.count33.i.i, 2305843009213693951
  %i.bp = mul i64 %i.ax, %i.bo
  %i.bq = add i64 %i.bp, %wide.trip.count.i.i
  %i.br = shl i64 %i.bq, 3
  %scevgep39 = getelementptr i8, ptr %9, i64 %i.br
  %min.iters.check45 = icmp ult i32 %spec.select.i, 4
  %bound040 = icmp ugt ptr %scevgep39, %i.f
  %bound141 = icmp ult ptr %9, %scevgep38
  %found.conflict42 = and i1 %bound040, %bound141
  %stride.check43 = icmp slt i64 %i.ax, 0
  %i.bs = or i1 %found.conflict42, %stride.check43
  %n.vec47 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n58 = icmp eq i64 %n.vec47, %wide.trip.count.i.i
  %xtraiter75 = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  %i.bt = add nsw i64 %wide.trip.count.i.i, -1
  %min.iters.check24 = icmp ult i32 %spec.select.i, 4
  %n.vec26 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n35 = icmp eq i64 %n.vec26, %wide.trip.count.i.i
  %min.iters.check10 = icmp ult i32 %spec.select.i, 4
  %ident.check.not = icmp ne i64 %i.ba, 1
  %or.cond.not61 = or i1 %min.iters.check10, %ident.check.not
  %invariant.op = add i64 %i.bl, -1
  %n.vec12 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n21 = icmp eq i64 %n.vec12, %wide.trip.count.i.i
  %xtraiter77 = and i64 %wide.trip.count.i.i, 3   ; 2 uses
  %lcmp.mod78.not = icmp eq i64 %xtraiter77, 0
  %min.iters.check = icmp ult i32 %spec.select.i, 4
  %bound0 = icmp ult ptr %12, %scevgep4
  %bound1 = icmp ugt ptr %scevgep, %i.f
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %sext19, 0
  %i.bu = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %wide.trip.count.i.i, 4294967292 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  %xtraiter79 = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  %i.bv = add nsw i64 %wide.trip.count.i.i, -1
  br label %.lr.ph171.i.split

.lr.ph171.i.split.us:                             ; preds = %.lr.ph171.i.split.us.preheader, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i.us
  %indvars.iv209.i.us = phi i64 [ %indvars.iv.next210.i.us, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i.us ], [ 0, %.lr.ph171.i.split.us.preheader ] ; 2 uses
  %.098166.i.us = phi ptr [ %i.dr, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i.us ], [ %4, %.lr.ph171.i.split.us.preheader ] ; 5 uses
  %.0104163.i.us = phi ptr [ %i.ds, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i.us ], [ %7, %.lr.ph171.i.split.us.preheader ] ; 4 uses
  %i.bw = mul nsw i64 %indvars.iv209.i.us, %i.y
  %i.bx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !17 ; 2 uses
  %i.bz = tail call noundef double @llvm.fabs.f64(double %i.by)
  %i.ca = fcmp ugt double %i.bz, %i.au
  br i1 %i.ca, label %bb.b, label %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i.us

bb.b:                                             ; preds = %.lr.ph171.i.split.us
  %i.cb = fdiv double 1.000000e+00, %i.by
  br i1 %.not.i, label %bb.c, label %.lr.ph158.i.us.preheader

.lr.ph158.i.us.preheader:                         ; preds = %bb.b
  br i1 %i.bf, label %.lr.ph158.i.us.epil.preheader, label %.lr.ph158.i.us

.lr.ph158.i.us:                                   ; preds = %.lr.ph158.i.us.preheader, %.lr.ph158.i.us
  %indvars.iv199.i.us = phi i64 [ %indvars.iv.next200.i.us.1, %.lr.ph158.i.us ], [ 0, %.lr.ph158.i.us.preheader ] ; 4 uses
  %.0157.i.us = phi double [ %i.cp, %.lr.ph158.i.us ], [ 0.000000e+00, %.lr.ph158.i.us.preheader ]
  %niter88 = phi i64 [ %niter88.next.1, %.lr.ph158.i.us ], [ 0, %.lr.ph158.i.us.preheader ]
  %i.cc = mul nsw i64 %indvars.iv199.i.us, %i.ba
  %i.cd = getelementptr inbounds [8 x i8], ptr %.098166.i.us, i64 %i.cc
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !17
  %i.cf = mul nsw i64 %indvars.iv199.i.us, %i.ax
  %i.cg = getelementptr inbounds [8 x i8], ptr %9, i64 %i.cf
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !17
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.ch, double %.0157.i.us)
  %indvars.iv.next200.i.us = or disjoint i64 %indvars.iv199.i.us, 1 ; 2 uses
  %i.cj = mul nsw i64 %indvars.iv.next200.i.us, %i.ba
  %i.ck = getelementptr inbounds [8 x i8], ptr %.098166.i.us, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !17
  %i.cm = mul nsw i64 %indvars.iv.next200.i.us, %i.ax
  %i.cn = getelementptr inbounds [8 x i8], ptr %9, i64 %i.cm
  %i.co = load double, ptr %i.cn, align 8, !tbaa !17
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.co, double %i.ci) ; 3 uses
  %indvars.iv.next200.i.us.1 = add nuw nsw i64 %indvars.iv199.i.us, 2 ; 2 uses
  %niter88.next.1 = add i64 %niter88, 2           ; 2 uses
  %niter88.ncmp.1 = icmp eq i64 %niter88.next.1, %unroll_iter87
  br i1 %niter88.ncmp.1, label %.lr.ph162.preheader.i.us.loopexit.unr-lcssa, label %.lr.ph158.i.us, !llvm.loop !234

bb.c:                                             ; preds = %bb.b
  %i.cq = load double, ptr %.098166.i.us, align 8, !tbaa !17
  br label %.lr.ph162.preheader.i.us

.lr.ph162.preheader.i.us.loopexit.unr-lcssa:      ; preds = %.lr.ph158.i.us
  br i1 %lcmp.mod84.not, label %.lr.ph162.preheader.i.us, label %.lr.ph158.i.us.epil.preheader

.lr.ph158.i.us.epil.preheader:                    ; preds = %.lr.ph162.preheader.i.us.loopexit.unr-lcssa, %.lr.ph158.i.us.preheader
  %indvars.iv199.i.us.epil.init = phi i64 [ 0, %.lr.ph158.i.us.preheader ], [ %indvars.iv.next200.i.us.1, %.lr.ph162.preheader.i.us.loopexit.unr-lcssa ] ; 2 uses
  %.0157.i.us.epil.init = phi double [ 0.000000e+00, %.lr.ph158.i.us.preheader ], [ %i.cp, %.lr.ph162.preheader.i.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.cr = mul nsw i64 %indvars.iv199.i.us.epil.init, %i.ba
  %i.cs = getelementptr inbounds [8 x i8], ptr %.098166.i.us, i64 %i.cr
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !17
  %i.cu = mul nsw i64 %indvars.iv199.i.us.epil.init, %i.ax
  %i.cv = getelementptr inbounds [8 x i8], ptr %9, i64 %i.cu
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !17
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.cw, double %.0157.i.us.epil.init)
  br label %.lr.ph162.preheader.i.us

.lr.ph162.preheader.i.us:                         ; preds = %.lr.ph158.i.us.epil.preheader, %.lr.ph162.preheader.i.us.loopexit.unr-lcssa, %bb.c
  %.1.i.us = phi double [ %i.cq, %bb.c ], [ %i.cp, %.lr.ph162.preheader.i.us.loopexit.unr-lcssa ], [ %i.cx, %.lr.ph158.i.us.epil.preheader ]
  %i.cy = fmul double %i.cb, %.1.i.us             ; 3 uses
  br i1 %i.bg, label %.lr.ph162.i.us.epil.preheader, label %.lr.ph162.i.us

.lr.ph162.i.us:                                   ; preds = %.lr.ph162.preheader.i.us, %.lr.ph162.i.us
  %indvars.iv204.i.us = phi i64 [ %indvars.iv.next205.i.us.1, %.lr.ph162.i.us ], [ 0, %.lr.ph162.preheader.i.us ] ; 4 uses
  %niter94 = phi i64 [ %niter94.next.1, %.lr.ph162.i.us ], [ 0, %.lr.ph162.preheader.i.us ]
  %i.cz = mul nsw i64 %indvars.iv204.i.us, %i.bb
  %i.da = getelementptr inbounds [8 x i8], ptr %12, i64 %i.cz ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !17
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.0104163.i.us, i64 %indvars.iv204.i.us
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !17
  %i.de = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.dd, double %i.db)
  store double %i.de, ptr %i.da, align 8, !tbaa !17
  %indvars.iv.next205.i.us = or disjoint i64 %indvars.iv204.i.us, 1 ; 2 uses
  %i.df = mul nsw i64 %indvars.iv.next205.i.us, %i.bb
  %i.dg = getelementptr inbounds [8 x i8], ptr %12, i64 %i.df ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !17
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.0104163.i.us, i64 %indvars.iv.next205.i.us
  %i.dj = load double, ptr %i.di, align 8, !tbaa !17
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.dj, double %i.dh)
  store double %i.dk, ptr %i.dg, align 8, !tbaa !17
  %indvars.iv.next205.i.us.1 = add nuw nsw i64 %indvars.iv204.i.us, 2 ; 2 uses
  %niter94.next.1 = add i64 %niter94, 2           ; 2 uses
  %niter94.ncmp.1 = icmp eq i64 %niter94.next.1, %unroll_iter93
  br i1 %niter94.ncmp.1, label %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i.us.loopexit.unr-lcssa, label %.lr.ph162.i.us, !llvm.loop !235

_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i.us.loopexit.unr-lcssa: ; preds = %.lr.ph162.i.us
  br i1 %lcmp.mod91.not, label %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i.us, label %.lr.ph162.i.us.epil.preheader

.lr.ph162.i.us.epil.preheader:                    ; preds = %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i.us.loopexit.unr-lcssa, %.lr.ph162.preheader.i.us
  %indvars.iv204.i.us.epil.init = phi i64 [ 0, %.lr.ph162.preheader.i.us ], [ %indvars.iv.next205.i.us.1, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod92)
  %i.dl = mul nsw i64 %indvars.iv204.i.us.epil.init, %i.bb
  %i.dm = getelementptr inbounds [8 x i8], ptr %12, i64 %i.dl ; 2 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !17
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.0104163.i.us, i64 %indvars.iv204.i.us.epil.init
  %i.dp = load double, ptr %i.do, align 8, !tbaa !17
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.dp, double %i.dn)
  store double %i.dq, ptr %i.dm, align 8, !tbaa !17
  br label %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i.us

_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i.us: ; preds = %.lr.ph162.i.us.epil.preheader, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i.us.loopexit.unr-lcssa, %.lr.ph171.i.split.us
  %indvars.iv.next210.i.us = add nuw nsw i64 %indvars.iv209.i.us, 1 ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %.098166.i.us, i64 %i.bc
  %i.ds = getelementptr inbounds [8 x i8], ptr %.0104163.i.us, i64 %i.be
  %exitcond213.not.i.us = icmp eq i64 %indvars.iv.next210.i.us, %wide.trip.count184.i
  br i1 %exitcond213.not.i.us, label %_ZN2cvL11SVBkSbImpl_IdEEviiPKT_iS3_ibS3_ibS3_iiPS1_iPdS1_.exit, label %.lr.ph171.i.split.us, !llvm.loop !236

.lr.ph171.i.split:                                ; preds = %.lr.ph171.i.split.preheader, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i
  %indvars.iv209.i = phi i64 [ %indvars.iv.next210.i, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i ], [ 0, %.lr.ph171.i.split.preheader ] ; 3 uses
  %.098166.i = phi ptr [ %i.hr, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i ], [ %4, %.lr.ph171.i.split.preheader ] ; 8 uses
  %.0104163.i = phi ptr [ %i.hs, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i ], [ %7, %.lr.ph171.i.split.preheader ] ; 2 uses
  %i.dt = mul i64 %i.bm, %indvars.iv209.i
  %i.du = mul nsw i64 %indvars.iv209.i, %i.y
  %i.dv = getelementptr inbounds [8 x i8], ptr %2, i64 %i.du
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !17 ; 2 uses
  %i.dx = tail call noundef double @llvm.fabs.f64(double %i.dw)
  %i.dy = fcmp ugt double %i.dx, %i.au
  br i1 %i.dy, label %bb.d, label %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i

bb.d:                                             ; preds = %.lr.ph171.i.split
  %i.dz = fdiv double 1.000000e+00, %i.dw         ; 8 uses
  br i1 %.not.i, label %.preheader138.i, label %.preheader141.i

.preheader141.i:                                  ; preds = %bb.d
  br i1 %i.h, label %.lr.ph.i.preheader.i, label %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i

.preheader138.i:                                  ; preds = %bb.d
  br i1 %i.h, label %.lr.ph155.i.preheader, label %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i

.lr.ph155.i.preheader:                            ; preds = %.preheader138.i
  %.reass = add i64 %i.dt, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond60 = select i1 %or.cond.not61, i1 true, i1 %diff.check
  br i1 %or.cond60, label %.lr.ph155.i.preheader62, label %vector.ph11

vector.ph11:                                      ; preds = %.lr.ph155.i.preheader
  %broadcast.splatinsert13 = insertelement <2 x double> poison, double %i.dz, i64 0
  %broadcast.splat14 = shufflevector <2 x double> %broadcast.splatinsert13, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body15

vector.body15:                                    ; preds = %vector.body15, %vector.ph11
  %index16 = phi i64 [ 0, %vector.ph11 ], [ %index.next19, %vector.body15 ] ; 3 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %.098166.i, i64 %index16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load17 = load <2 x double>, ptr %i.ea, align 8, !tbaa !17
  %wide.load18 = load <2 x double>, ptr %i.eb, align 8, !tbaa !17
  %i.ec = fmul <2 x double> %broadcast.splat14, %wide.load17
  %i.ed = fmul <2 x double> %broadcast.splat14, %wide.load18
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index16 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store <2 x double> %i.ec, ptr %i.ee, align 8, !tbaa !17
  store <2 x double> %i.ed, ptr %i.ef, align 8, !tbaa !17
  %index.next19 = add nuw i64 %index16, 4         ; 2 uses
  %i.eg = icmp eq i64 %index.next19, %n.vec12
  br i1 %i.eg, label %middle.block20, label %vector.body15, !llvm.loop !237

middle.block20:                                   ; preds = %vector.body15
  br i1 %cmp.n21, label %.lr.ph.i114.i.preheader, label %.lr.ph155.i.preheader62

.lr.ph155.i.preheader62:                          ; preds = %.lr.ph155.i.preheader, %middle.block20
  %indvars.iv194.i.ph = phi i64 [ 0, %.lr.ph155.i.preheader ], [ %n.vec12, %middle.block20 ] ; 3 uses
  br i1 %lcmp.mod78.not, label %.lr.ph155.i.prol.loopexit, label %.lr.ph155.i.prol

.lr.ph155.i.prol:                                 ; preds = %.lr.ph155.i.preheader62, %.lr.ph155.i.prol
  %indvars.iv194.i.prol = phi i64 [ %indvars.iv.next195.i.prol, %.lr.ph155.i.prol ], [ %indvars.iv194.i.ph, %.lr.ph155.i.preheader62 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph155.i.prol ], [ 0, %.lr.ph155.i.preheader62 ]
  %i.eh = mul nsw i64 %indvars.iv194.i.prol, %i.ba
  %i.ei = getelementptr inbounds [8 x i8], ptr %.098166.i, i64 %i.eh
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !17
  %i.ek = fmul double %i.dz, %i.ej
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv194.i.prol
  store double %i.ek, ptr %i.el, align 8, !tbaa !17
  %indvars.iv.next195.i.prol = add nuw nsw i64 %indvars.iv194.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter77
  br i1 %prol.iter.cmp.not, label %.lr.ph155.i.prol.loopexit, label %.lr.ph155.i.prol, !llvm.loop !238

.lr.ph155.i.prol.loopexit:                        ; preds = %.lr.ph155.i.prol, %.lr.ph155.i.preheader62
  %indvars.iv194.i.unr = phi i64 [ %indvars.iv194.i.ph, %.lr.ph155.i.preheader62 ], [ %indvars.iv.next195.i.prol, %.lr.ph155.i.prol ]
  %i.em = sub nsw i64 %indvars.iv194.i.ph, %wide.trip.count.i.i
  %i.en = icmp ugt i64 %i.em, -4
  br i1 %i.en, label %.lr.ph.i114.i.preheader, label %.lr.ph155.i

.lr.ph.i.preheader.i:                             ; preds = %.preheader141.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.f, i8 0, i64 %15, i1 false), !tbaa !17
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %.lr.ph.i.preheader.i
  %indvars.iv30.i.i = phi i64 [ %indvars.iv.next31.i.i, %._crit_edge.i.i ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %i.fo, %._crit_edge.i.i ], [ %9, %.lr.ph.i.preheader.i ] ; 5 uses
  %i.eo = mul nsw i64 %indvars.iv30.i.i, %i.ba
  %i.ep = getelementptr inbounds [8 x i8], ptr %.098166.i, i64 %i.eo
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !17 ; 4 uses
  %brmerge = select i1 %min.iters.check45, i1 true, i1 %i.bs
  br i1 %brmerge, label %scalar.ph44.preheader, label %vector.ph46

vector.ph46:                                      ; preds = %.lr.ph.i.i
  %broadcast.splatinsert48 = insertelement <2 x double> poison, double %i.eq, i64 0
  %broadcast.splat49 = shufflevector <2 x double> %broadcast.splatinsert48, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph46
  %index51 = phi i64 [ 0, %vector.ph46 ], [ %index.next56, %vector.body50 ] ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index51 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 2 uses
  %wide.load52 = load <2 x double>, ptr %i.er, align 8, !tbaa !17, !alias.scope !239, !noalias !242
  %wide.load53 = load <2 x double>, ptr %i.es, align 8, !tbaa !17, !alias.scope !239, !noalias !242
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.01925.i.i, i64 %index51 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %wide.load54 = load <2 x double>, ptr %i.et, align 8, !tbaa !17, !alias.scope !242
  %wide.load55 = load <2 x double>, ptr %i.eu, align 8, !tbaa !17, !alias.scope !242
  %i.ev = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat49, <2 x double> %wide.load54, <2 x double> %wide.load52)
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat49, <2 x double> %wide.load55, <2 x double> %wide.load53)
  store <2 x double> %i.ev, ptr %i.er, align 8, !tbaa !17, !alias.scope !239, !noalias !242
  store <2 x double> %i.ew, ptr %i.es, align 8, !tbaa !17, !alias.scope !239, !noalias !242
  %index.next56 = add nuw i64 %index51, 4         ; 2 uses
  %i.ex = icmp eq i64 %index.next56, %n.vec47
  br i1 %i.ex, label %middle.block57, label %vector.body50, !llvm.loop !244

middle.block57:                                   ; preds = %vector.body50
  br i1 %cmp.n58, label %._crit_edge.i.i, label %scalar.ph44.preheader

scalar.ph44.preheader:                            ; preds = %.lr.ph.i.i, %middle.block57
  %indvars.iv.i.i.ph = phi i64 [ %n.vec47, %middle.block57 ], [ 0, %.lr.ph.i.i ] ; 5 uses
  br i1 %lcmp.mod76.not, label %scalar.ph44.prol.loopexit, label %scalar.ph44.prol

scalar.ph44.prol:                                 ; preds = %scalar.ph44.preheader
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i.ph ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !17
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.01925.i.i, i64 %indvars.iv.i.i.ph
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !17
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.fb, double %i.ez)
  store double %i.fc, ptr %i.ey, align 8, !tbaa !17
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %scalar.ph44.prol.loopexit

scalar.ph44.prol.loopexit:                        ; preds = %scalar.ph44.prol, %scalar.ph44.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph44.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph44.prol ]
  %i.fd = icmp eq i64 %indvars.iv.i.i.ph, %i.bt
  br i1 %i.fd, label %._crit_edge.i.i, label %scalar.ph44

scalar.ph44:                                      ; preds = %scalar.ph44.prol.loopexit, %scalar.ph44
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph44 ], [ %indvars.iv.i.i.unr, %scalar.ph44.prol.loopexit ] ; 4 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i ; 2 uses
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !17
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.01925.i.i, i64 %indvars.iv.i.i
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !17
  %i.fi = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.fh, double %i.ff)
  store double %i.fi, ptr %i.fe, align 8, !tbaa !17
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.i.i ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !17
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.01925.i.i, i64 %indvars.iv.next.i.i
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !17
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.fm, double %i.fk)
  store double %i.fn, ptr %i.fj, align 8, !tbaa !17
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.i, label %scalar.ph44, !llvm.loop !245

._crit_edge.i.i:                                  ; preds = %scalar.ph44.prol.loopexit, %scalar.ph44, %middle.block57
  %indvars.iv.next31.i.i = add nuw nsw i64 %indvars.iv30.i.i, 1 ; 2 uses
  %i.fo = getelementptr inbounds [8 x i8], ptr %.01925.i.i, i64 %i.ax
  %exitcond34.not.i.i = icmp eq i64 %indvars.iv.next31.i.i, %wide.trip.count33.i.i
  br i1 %exitcond34.not.i.i, label %.lr.ph153.i.preheader, label %.lr.ph.i.i, !llvm.loop !246

.lr.ph153.i.preheader:                            ; preds = %._crit_edge.i.i
  br i1 %min.iters.check24, label %.lr.ph153.i.preheader63, label %vector.ph25

vector.ph25:                                      ; preds = %.lr.ph153.i.preheader
  %broadcast.splatinsert27 = insertelement <2 x double> poison, double %i.dz, i64 0
  %broadcast.splat28 = shufflevector <2 x double> %broadcast.splatinsert27, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body29

vector.body29:                                    ; preds = %vector.body29, %vector.ph25
  %index30 = phi i64 [ 0, %vector.ph25 ], [ %index.next33, %vector.body29 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index30 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  %wide.load31 = load <2 x double>, ptr %i.fp, align 8, !tbaa !17
  %wide.load32 = load <2 x double>, ptr %i.fq, align 8, !tbaa !17
  %i.fr = fmul <2 x double> %broadcast.splat28, %wide.load31
  %i.fs = fmul <2 x double> %broadcast.splat28, %wide.load32
  store <2 x double> %i.fr, ptr %i.fp, align 8, !tbaa !17
  store <2 x double> %i.fs, ptr %i.fq, align 8, !tbaa !17
  %index.next33 = add nuw i64 %index30, 4         ; 2 uses
  %i.ft = icmp eq i64 %index.next33, %n.vec26
  br i1 %i.ft, label %middle.block34, label %vector.body29, !llvm.loop !247

middle.block34:                                   ; preds = %vector.body29
  br i1 %cmp.n35, label %.lr.ph.i114.i.preheader, label %.lr.ph153.i.preheader63

.lr.ph153.i.preheader63:                          ; preds = %.lr.ph153.i.preheader, %middle.block34
  %indvars.iv189.i.ph = phi i64 [ 0, %.lr.ph153.i.preheader ], [ %n.vec26, %middle.block34 ]
  br label %.lr.ph153.i

.lr.ph153.i:                                      ; preds = %.lr.ph153.i.preheader63, %.lr.ph153.i
  %indvars.iv189.i.a = phi i64 [ %indvars.iv.next190.i.a, %.lr.ph153.i ], [ %indvars.iv189.i.ph, %.lr.ph153.i.preheader63 ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv189.i.a ; 2 uses
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !17
  %i.fw = fmul double %i.dz, %i.fv
  store double %i.fw, ptr %i.fu, align 8, !tbaa !17
  %indvars.iv.next190.i.a = add nuw nsw i64 %indvars.iv189.i.a, 1 ; 2 uses
  %exitcond193.not.i = icmp eq i64 %indvars.iv.next190.i.a, %wide.trip.count.i.i
  br i1 %exitcond193.not.i, label %.lr.ph.i114.i.preheader, label %.lr.ph153.i, !llvm.loop !248

.lr.ph155.i:                                      ; preds = %.lr.ph155.i.prol.loopexit, %.lr.ph155.i
  %indvars.iv194.i = phi i64 [ %indvars.iv.next195.i.3, %.lr.ph155.i ], [ %indvars.iv194.i.unr, %.lr.ph155.i.prol.loopexit ] ; 6 uses
  %i.fx = mul nsw i64 %indvars.iv194.i, %i.ba
  %i.fy = getelementptr inbounds [8 x i8], ptr %.098166.i, i64 %i.fx
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !17
  %i.ga = fmul double %i.dz, %i.fz
end_hunk_0
