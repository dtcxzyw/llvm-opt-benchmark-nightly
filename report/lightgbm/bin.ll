Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/bin?download=true
inline.NumInlined: 9544
inline.NumDeleted: 2682
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 530
loop-unroll.NumUnrolled: 531
begin_hunk_0_@_ZNK8LightGBM16MultiValDenseBinIhE18ConstructHistogramEiiPKfS3_Pd:bb.a
  %i.ad = load <2 x double>, ptr %i.ac, align 8, !tbaa !80
  %i.ae = fadd <2 x double> %i.ad, %i.t
  store <2 x double> %i.ae, ptr %i.ac, align 8, !tbaa !80
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next33.i = add nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next33.i, %wide.trip.count35.i
  br i1 %exitcond36.not.i, label %_ZNK8LightGBM16MultiValDenseBinIhE23ConstructHistogramInnerILb0ELb0ELb0EEEvPKiiiPKfS6_Pd.exit, label %.lr.ph.i, !llvm.loop !812

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !50
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !51
  %i.ak = add i32 %i.aj, %i.ah
  %i.al = shl i32 %i.ak, 1
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.am ; 2 uses
  %i.ao = load <2 x double>, ptr %i.an, align 8, !tbaa !80
  %i.ap = fadd <2 x double> %i.ao, %i.t
  store <2 x double> %i.ap, ptr %i.an, align 8, !tbaa !80
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !50
  %i.as = zext i8 %i.ar to i32
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !51
  %i.av = add i32 %i.au, %i.as
  %i.aw = shl i32 %i.av, 1
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ax ; 2 uses
  %i.az = load <2 x double>, ptr %i.ay, align 8, !tbaa !80
  %i.ba = fadd <2 x double> %i.az, %i.t
  store <2 x double> %i.ba, ptr %i.ay, align 8, !tbaa !80
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i.new, !llvm.loop !813

_ZNK8LightGBM16MultiValDenseBinIhE23ConstructHistogramInnerILb0ELb0ELb0EEEvPKiiiPKfS6_Pd.exit: ; preds = %._crit_edge.i, %bb.a, %.lr.ph29.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8LightGBM16MultiValDenseBinIhE25ConstructHistogramOrderedEPKiiiPKfS5_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNK8LightGBM16MultiValDenseBinIhE23ConstructHistogramInnerILb1ELb1ELb1EEEvPKiiiPKfS6_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8LightGBM16MultiValDenseBinIhE23ConstructHistogramInt32EPKiiiPKfS5_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNK8LightGBM16MultiValDenseBinIhE26ConstructHistogramIntInnerILb1ELb1ELb0ElLi32EEEvPKiiiPKfPd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8LightGBM16MultiValDenseBinIhE23ConstructHistogramInt32EiiPKfS3_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = icmp slt i32 %1, %2
  br i1 %i.c, label %.lr.ph27.i, label %_ZNK8LightGBM16MultiValDenseBinIhE26ConstructHistogramIntInnerILb0ELb0ELb0ElLi32EEEvPKiiiPKfPd.exit

.lr.ph27.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !233  ; 5 uses
  %i.f = sext i32 %i.e to i64
  %i.g = icmp sgt i32 %i.e, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  br i1 %i.g, label %.lr.ph.preheader.i, label %_ZNK8LightGBM16MultiValDenseBinIhE26ConstructHistogramIntInnerILb0ELb0ELb0ElLi32EEEvPKiiiPKfPd.exit

.lr.ph.preheader.i:                               ; preds = %.lr.ph27.i
  %i.j = sext i32 %1 to i64
  %wide.trip.count33.i = sext i32 %2 to i64
  %wide.trip.count.i = zext nneg i32 %i.e to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.k = icmp eq i32 %i.e, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod6 = trunc i32 %i.e to i1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv30.i = phi i64 [ %i.j, %.lr.ph.preheader.i ], [ %indvars.iv.next31.i, %._crit_edge.i ] ; 3 uses
  %i.l = mul nsw i64 %indvars.iv30.i, %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds [2 x i8], ptr %3, i64 %indvars.iv30.i
  %i.o = load i16, ptr %i.n, align 2, !tbaa !82   ; 2 uses
  %i.p = ashr i16 %i.o, 8
  %i.q = sext i16 %i.p to i64
  %i.r = shl nsw i64 %i.q, 32
  %i.s = and i16 %i.o, 255
  %i.t = zext nneg i16 %i.s to i64
  %i.u = or disjoint i64 %i.r, %i.t               ; 3 uses
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.i.epil.init
  %i.w = load i8, ptr %i.v, align 1, !tbaa !50
  %i.x = zext i8 %i.w to i32
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i.epil.init
  %i.z = load i32, ptr %i.y, align 4, !tbaa !51
  %i.aa = add i32 %i.z, %i.x
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ab ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !84
  %i.ae = add nsw i64 %i.u, %i.ad
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !84
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next31.i = add nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next31.i, %wide.trip.count33.i
  br i1 %exitcond34.not.i, label %_ZNK8LightGBM16MultiValDenseBinIhE26ConstructHistogramIntInnerILb0ELb0ELb0ElLi32EEEvPKiiiPKfPd.exit, label %.lr.ph.i, !llvm.loop !814

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !50
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !51
  %i.ak = add i32 %i.aj, %i.ah
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.al ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !84
  %i.ao = add nsw i64 %i.u, %i.an
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !84
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !50
  %i.ar = zext i8 %i.aq to i32
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !51
  %i.au = add i32 %i.at, %i.ar
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.av ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !84
  %i.ay = add nsw i64 %i.u, %i.ax
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !84
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i.new, !llvm.loop !815

_ZNK8LightGBM16MultiValDenseBinIhE26ConstructHistogramIntInnerILb0ELb0ELb0ElLi32EEEvPKiiiPKfPd.exit: ; preds = %._crit_edge.i, %bb.a, %.lr.ph27.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8LightGBM16MultiValDenseBinIhE30ConstructHistogramOrderedInt32EPKiiiPKfS5_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNK8LightGBM16MultiValDenseBinIhE26ConstructHistogramIntInnerILb1ELb1ELb1ElLi32EEEvPKiiiPKfPd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8LightGBM16MultiValDenseBinIhE23ConstructHistogramInt16EPKiiiPKfS5_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNK8LightGBM16MultiValDenseBinIhE26ConstructHistogramIntInnerILb1ELb1ELb0EiLi16EEEvPKiiiPKfPd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8LightGBM16MultiValDenseBinIhE23ConstructHistogramInt16EiiPKfS3_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = icmp slt i32 %1, %2
  br i1 %i.c, label %.lr.ph27.i, label %_ZNK8LightGBM16MultiValDenseBinIhE26ConstructHistogramIntInnerILb0ELb0ELb0EiLi16EEEvPKiiiPKfPd.exit

.lr.ph27.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load i32, ptr %i.d, align 8, !tbaa !233  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph27.split.preheader.i, label %_ZNK8LightGBM16MultiValDenseBinIhE26ConstructHistogramIntInnerILb0ELb0ELb0EiLi16EEEvPKiiiPKfPd.exit

.lr.ph27.split.preheader.i:                       ; preds = %.lr.ph27.i
  %i.i = sext i32 %1 to i64
  %wide.trip.count.i = sext i32 %2 to i64
  br label %.lr.ph27.split.i

.lr.ph27.split.i:                                 ; preds = %._crit_edge.i, %.lr.ph27.split.preheader.i
  %i.j = phi i32 [ %i.g, %.lr.ph27.split.preheader.i ], [ %i.v, %._crit_edge.i ] ; 3 uses
  %indvars.iv31.i = phi i64 [ %i.i, %.lr.ph27.split.preheader.i ], [ %indvars.iv.next32.i, %._crit_edge.i ] ; 3 uses
  %6 = zext nneg i32 %i.j to i64
  %i.k = mul nsw i64 %indvars.iv31.i, %6
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.k
  %i.m = getelementptr inbounds [2 x i8], ptr %3, i64 %indvars.iv31.i
  %i.n = load i16, ptr %i.m, align 2, !tbaa !82   ; 2 uses
  %i.o = ashr i16 %i.n, 8
  %i.p = sext i16 %i.o to i32
  %i.q = shl nsw i32 %i.p, 16
  %i.r = and i16 %i.n, 255
  %i.s = zext nneg i16 %i.r to i32
  %i.t = or disjoint i32 %i.q, %i.s
  %i.u = icmp sgt i32 %i.j, 0
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph27.split.i
  %i.v = phi i32 [ %i.j, %.lr.ph27.split.i ], [ %i.ag, %.lr.ph.i ]
  %indvars.iv.next32.i = add nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next32.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK8LightGBM16MultiValDenseBinIhE26ConstructHistogramIntInnerILb0ELb0ELb0EiLi16EEEvPKiiiPKfPd.exit, label %.lr.ph27.split.i, !llvm.loop !816

.lr.ph.i:                                         ; preds = %.lr.ph27.split.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph27.split.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !50
  %i.y = zext i8 %i.x to i32
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !51
  %i.ab = add i32 %i.aa, %i.y
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !51
  %i.af = add nsw i32 %i.t, %i.ae
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !51
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ag = load i32, ptr %i.d, align 8, !tbaa !233 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next.i, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !817

_ZNK8LightGBM16MultiValDenseBinIhE26ConstructHistogramIntInnerILb0ELb0ELb0EiLi16EEEvPKiiiPKfPd.exit: ; preds = %._crit_edge.i, %bb.a, %.lr.ph27.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8LightGBM16MultiValDenseBinIhE30ConstructHistogramOrderedInt16EPKiiiPKfS5_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNK8LightGBM16MultiValDenseBinIhE26ConstructHistogramIntInnerILb1ELb1ELb1EiLi16EEEvPKiiiPKfPd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8LightGBM16MultiValDenseBinIhE22ConstructHistogramInt8EPKiiiPKfS5_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 8 uses
  %i.c = add nsw i32 %3, -32                      ; 3 uses
  %i.d = icmp slt i32 %2, %i.c
  br i1 %i.d, label %.lr.ph55.i, label %.preheader.i

.lr.ph55.i:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !233  ; 6 uses
  %i.g = sext i32 %i.f to i64                     ; 8 uses
  %i.h = icmp sgt i32 %i.f, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = sext i32 %2 to i64                       ; 5 uses
  %wide.trip.count71.i = sext i32 %i.c to i64     ; 2 uses
  br i1 %i.h, label %.lr.ph.us.preheader.i, label %.lr.ph55.split.i.preheader

.lr.ph55.split.i.preheader:                       ; preds = %.lr.ph55.i
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sub nsw i64 %i.l, %i.k
  %i.n = add nsw i64 %i.l, -33
  %i.o = sub nsw i64 %i.n, %i.k
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph55.split.i.prol.loopexit, label %.lr.ph55.split.i.prol

.lr.ph55.split.i.prol:                            ; preds = %.lr.ph55.split.i.preheader, %.lr.ph55.split.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph55.split.i.prol ], [ %i.k, %.lr.ph55.split.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph55.split.i.prol ], [ 0, %.lr.ph55.split.i.preheader ]
  %i.p = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.i.prol
  %i.q = getelementptr i8, ptr %i.p, i64 128
  %i.r = load i32, ptr %i.q, align 4, !tbaa !51
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds [2 x i8], ptr %4, i64 %i.s
  tail call void @llvm.prefetch.p0(ptr %i.t, i32 0, i32 3, i32 1)
  %i.u = mul nsw i64 %i.s, %i.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.u
  tail call void @llvm.prefetch.p0(ptr %i.v, i32 0, i32 3, i32 1)
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph55.split.i.prol.loopexit, label %.lr.ph55.split.i.prol, !llvm.loop !818

.lr.ph55.split.i.prol.loopexit:                   ; preds = %.lr.ph55.split.i.prol, %.lr.ph55.split.i.preheader
  %indvars.iv.i.unr = phi i64 [ %i.k, %.lr.ph55.split.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph55.split.i.prol ]
  %i.w = icmp ult i64 %i.o, 3
  br i1 %i.w, label %_ZNK8LightGBM16MultiValDenseBinIhE26ConstructHistogramIntInnerILb1ELb1ELb0EsLi8EEEvPKiiiPKfPd.exit, label %.lr.ph55.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph55.i
  %wide.trip.count66.i = zext nneg i32 %i.f to i64 ; 2 uses
  %xtraiter17 = and i64 %wide.trip.count66.i, 1
  %i.x = icmp eq i32 %i.f, 1
  %unroll_iter = and i64 %wide.trip.count66.i, 2147483646
  %lcmp.mod18.not = icmp eq i64 %xtraiter17, 0
  %lcmp.mod19 = trunc i32 %i.f to i1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv68.i = phi i64 [ %i.k, %.lr.ph.us.preheader.i ], [ %indvars.iv.next69.i, %._crit_edge.us.i ] ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv68.i ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !51
  %i.aa = getelementptr i8, ptr %i.y, i64 128
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !51
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ac
  tail call void @llvm.prefetch.p0(ptr %i.ad, i32 0, i32 3, i32 1)
  %i.ae = mul nsw i64 %i.ac, %i.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ae
  tail call void @llvm.prefetch.p0(ptr %i.af, i32 0, i32 3, i32 1)
  %i.ag = sext i32 %i.z to i64                    ; 2 uses
  %i.ah = mul nsw i64 %i.ag, %i.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ah ; 3 uses
  %i.aj = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ag
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !82 ; 3 uses
  br i1 %i.x, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv63.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !50
  %i.an = zext i8 %i.am to i32
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv63.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !51
  %i.aq = add i32 %i.ap, %i.an
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.ar ; 2 uses
  %i.at = load i16, ptr %i.as, align 2, !tbaa !82
  %i.au = add i16 %i.at, %i.ak
  store i16 %i.au, ptr %i.as, align 2, !tbaa !82
  %indvars.iv.next64.i = or disjoint i64 %indvars.iv63.i, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.next64.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !50
  %i.ax = zext i8 %i.aw to i32
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next64.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !51
  %i.ba = add i32 %i.az, %i.ax
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.bb ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !82
  %i.be = add i16 %i.bd, %i.ak
  store i16 %i.be, ptr %i.bc, align 2, !tbaa !82
  %indvars.iv.next64.i.1 = add nuw nsw i64 %indvars.iv63.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !819

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod18.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %indvars.iv63.i.epil.init = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next64.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv63.i.epil.init
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !50
  %i.bh = zext i8 %i.bg to i32
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv63.i.epil.init
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !51
  %i.bk = add i32 %i.bj, %i.bh
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.bl ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !82
  %i.bo = add i16 %i.bn, %i.ak
  store i16 %i.bo, ptr %i.bm, align 2, !tbaa !82
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next69.i = add nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %exitcond72.not.i = icmp eq i64 %indvars.iv.next69.i, %wide.trip.count71.i
  br i1 %exitcond72.not.i, label %.lr.ph58.i, label %.lr.ph.us.i, !llvm.loop !820

.preheader.i:                                     ; preds = %bb.a
  %i.bp = icmp slt i32 %2, %3
  br i1 %i.bp, label %.preheader.i..lr.ph58.i_crit_edge, label %_ZNK8LightGBM16MultiValDenseBinIhE26ConstructHistogramIntInnerILb1ELb1ELb0EsLi8EEEvPKiiiPKfPd.exit

.preheader.i..lr.ph58.i_crit_edge:                ; preds = %.preheader.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !233 ; 2 uses
  %.pre7 = sext i32 %.pre to i64
  br label %.lr.ph58.i

.lr.ph58.i:                                       ; preds = %._crit_edge.us.i, %.preheader.i..lr.ph58.i_crit_edge
  %.pre-phi = phi i64 [ %.pre7, %.preheader.i..lr.ph58.i_crit_edge ], [ %i.g, %._crit_edge.us.i ]
  %i.bq = phi i32 [ %.pre, %.preheader.i..lr.ph58.i_crit_edge ], [ %i.f, %._crit_edge.us.i ] ; 4 uses
  %.0.lcssa88.i = phi i32 [ %2, %.preheader.i..lr.ph58.i_crit_edge ], [ %i.c, %._crit_edge.us.i ]
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph58.split.i, label %_ZNK8LightGBM16MultiValDenseBinIhE26ConstructHistogramIntInnerILb1ELb1ELb0EsLi8EEEvPKiiiPKfPd.exit

end_hunk_0
begin_hunk_1_@_ZNK8LightGBM16MultiValDenseBinItE18ConstructHistogramEiiPKfS3_Pd:bb.a
  %i.ad = load <2 x double>, ptr %i.ac, align 8, !tbaa !80
  %i.ae = fadd <2 x double> %i.ad, %i.t
  store <2 x double> %i.ae, ptr %i.ac, align 8, !tbaa !80
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next33.i = add nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next33.i, %wide.trip.count35.i
  br i1 %exitcond36.not.i, label %_ZNK8LightGBM16MultiValDenseBinItE23ConstructHistogramInnerILb0ELb0ELb0EEEvPKiiiPKfS6_Pd.exit, label %.lr.ph.i, !llvm.loop !832

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !82
  %i.ah = zext i16 %i.ag to i32
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !51
  %i.ak = add i32 %i.aj, %i.ah
  %i.al = shl i32 %i.ak, 1
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.am ; 2 uses
  %i.ao = load <2 x double>, ptr %i.an, align 8, !tbaa !80
  %i.ap = fadd <2 x double> %i.ao, %i.t
  store <2 x double> %i.ap, ptr %i.an, align 8, !tbaa !80
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.next.i
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !82
  %i.as = zext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !51
  %i.av = add i32 %i.au, %i.as
  %i.aw = shl i32 %i.av, 1
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ax ; 2 uses
  %i.az = load <2 x double>, ptr %i.ay, align 8, !tbaa !80
  %i.ba = fadd <2 x double> %i.az, %i.t
  store <2 x double> %i.ba, ptr %i.ay, align 8, !tbaa !80
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i.new, !llvm.loop !833

_ZNK8LightGBM16MultiValDenseBinItE23ConstructHistogramInnerILb0ELb0ELb0EEEvPKiiiPKfS6_Pd.exit: ; preds = %._crit_edge.i, %bb.a, %.lr.ph29.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8LightGBM16MultiValDenseBinItE25ConstructHistogramOrderedEPKiiiPKfS5_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNK8LightGBM16MultiValDenseBinItE23ConstructHistogramInnerILb1ELb1ELb1EEEvPKiiiPKfS6_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8LightGBM16MultiValDenseBinItE23ConstructHistogramInt32EPKiiiPKfS5_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNK8LightGBM16MultiValDenseBinItE26ConstructHistogramIntInnerILb1ELb1ELb0ElLi32EEEvPKiiiPKfPd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8LightGBM16MultiValDenseBinItE23ConstructHistogramInt32EiiPKfS3_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.c = icmp slt i32 %1, %2
  br i1 %i.c, label %.lr.ph27.i, label %_ZNK8LightGBM16MultiValDenseBinItE26ConstructHistogramIntInnerILb0ELb0ELb0ElLi32EEEvPKiiiPKfPd.exit

.lr.ph27.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !240  ; 5 uses
  %i.f = sext i32 %i.e to i64
  %i.g = icmp sgt i32 %i.e, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  br i1 %i.g, label %.lr.ph.preheader.i, label %_ZNK8LightGBM16MultiValDenseBinItE26ConstructHistogramIntInnerILb0ELb0ELb0ElLi32EEEvPKiiiPKfPd.exit

.lr.ph.preheader.i:                               ; preds = %.lr.ph27.i
  %i.j = sext i32 %1 to i64
  %wide.trip.count33.i = sext i32 %2 to i64
  %wide.trip.count.i = zext nneg i32 %i.e to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.k = icmp eq i32 %i.e, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod6 = trunc i32 %i.e to i1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv30.i = phi i64 [ %i.j, %.lr.ph.preheader.i ], [ %indvars.iv.next31.i, %._crit_edge.i ] ; 3 uses
  %i.l = mul nsw i64 %indvars.iv30.i, %i.f
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds [2 x i8], ptr %3, i64 %indvars.iv30.i
  %i.o = load i16, ptr %i.n, align 2, !tbaa !82   ; 2 uses
  %i.p = ashr i16 %i.o, 8
  %i.q = sext i16 %i.p to i64
  %i.r = shl nsw i64 %i.q, 32
  %i.s = and i16 %i.o, 255
  %i.t = zext nneg i16 %i.s to i64
  %i.u = or disjoint i64 %i.r, %i.t               ; 3 uses
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.i.epil.init
  %i.w = load i16, ptr %i.v, align 2, !tbaa !82
  %i.x = zext i16 %i.w to i32
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i.epil.init
  %i.z = load i32, ptr %i.y, align 4, !tbaa !51
  %i.aa = add i32 %i.z, %i.x
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ab ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !84
  %i.ae = add nsw i64 %i.u, %i.ad
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !84
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next31.i = add nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next31.i, %wide.trip.count33.i
  br i1 %exitcond34.not.i, label %_ZNK8LightGBM16MultiValDenseBinItE26ConstructHistogramIntInnerILb0ELb0ELb0ElLi32EEEvPKiiiPKfPd.exit, label %.lr.ph.i, !llvm.loop !834

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !82
  %i.ah = zext i16 %i.ag to i32
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !51
  %i.ak = add i32 %i.aj, %i.ah
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.al ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !84
  %i.ao = add nsw i64 %i.u, %i.an
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !84
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.next.i
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !82
  %i.ar = zext i16 %i.aq to i32
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !51
  %i.au = add i32 %i.at, %i.ar
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.av ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !84
  %i.ay = add nsw i64 %i.u, %i.ax
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !84
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i.new, !llvm.loop !835

_ZNK8LightGBM16MultiValDenseBinItE26ConstructHistogramIntInnerILb0ELb0ELb0ElLi32EEEvPKiiiPKfPd.exit: ; preds = %._crit_edge.i, %bb.a, %.lr.ph27.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8LightGBM16MultiValDenseBinItE30ConstructHistogramOrderedInt32EPKiiiPKfS5_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNK8LightGBM16MultiValDenseBinItE26ConstructHistogramIntInnerILb1ELb1ELb1ElLi32EEEvPKiiiPKfPd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8LightGBM16MultiValDenseBinItE23ConstructHistogramInt16EPKiiiPKfS5_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNK8LightGBM16MultiValDenseBinItE26ConstructHistogramIntInnerILb1ELb1ELb0EiLi16EEEvPKiiiPKfPd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8LightGBM16MultiValDenseBinItE23ConstructHistogramInt16EiiPKfS3_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.c = icmp slt i32 %1, %2
  br i1 %i.c, label %.lr.ph27.i, label %_ZNK8LightGBM16MultiValDenseBinItE26ConstructHistogramIntInnerILb0ELb0ELb0EiLi16EEEvPKiiiPKfPd.exit

.lr.ph27.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load i32, ptr %i.d, align 8, !tbaa !240  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph27.split.preheader.i, label %_ZNK8LightGBM16MultiValDenseBinItE26ConstructHistogramIntInnerILb0ELb0ELb0EiLi16EEEvPKiiiPKfPd.exit

.lr.ph27.split.preheader.i:                       ; preds = %.lr.ph27.i
  %i.i = sext i32 %1 to i64
  %wide.trip.count.i = sext i32 %2 to i64
  br label %.lr.ph27.split.i

.lr.ph27.split.i:                                 ; preds = %._crit_edge.i, %.lr.ph27.split.preheader.i
  %i.j = phi i32 [ %i.g, %.lr.ph27.split.preheader.i ], [ %i.v, %._crit_edge.i ] ; 3 uses
  %indvars.iv31.i = phi i64 [ %i.i, %.lr.ph27.split.preheader.i ], [ %indvars.iv.next32.i, %._crit_edge.i ] ; 3 uses
  %6 = zext nneg i32 %i.j to i64
  %i.k = mul nsw i64 %indvars.iv31.i, %6
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.k
  %i.m = getelementptr inbounds [2 x i8], ptr %3, i64 %indvars.iv31.i
  %i.n = load i16, ptr %i.m, align 2, !tbaa !82   ; 2 uses
  %i.o = ashr i16 %i.n, 8
  %i.p = sext i16 %i.o to i32
  %i.q = shl nsw i32 %i.p, 16
  %i.r = and i16 %i.n, 255
  %i.s = zext nneg i16 %i.r to i32
  %i.t = or disjoint i32 %i.q, %i.s
  %i.u = icmp sgt i32 %i.j, 0
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph27.split.i
  %i.v = phi i32 [ %i.j, %.lr.ph27.split.i ], [ %i.ag, %.lr.ph.i ]
  %indvars.iv.next32.i = add nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next32.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK8LightGBM16MultiValDenseBinItE26ConstructHistogramIntInnerILb0ELb0ELb0EiLi16EEEvPKiiiPKfPd.exit, label %.lr.ph27.split.i, !llvm.loop !836

.lr.ph.i:                                         ; preds = %.lr.ph27.split.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph27.split.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.x = load i16, ptr %i.w, align 2, !tbaa !82
  %i.y = zext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !51
  %i.ab = add i32 %i.aa, %i.y
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !51
  %i.af = add nsw i32 %i.t, %i.ae
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !51
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ag = load i32, ptr %i.d, align 8, !tbaa !240 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next.i, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !837

_ZNK8LightGBM16MultiValDenseBinItE26ConstructHistogramIntInnerILb0ELb0ELb0EiLi16EEEvPKiiiPKfPd.exit: ; preds = %._crit_edge.i, %bb.a, %.lr.ph27.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8LightGBM16MultiValDenseBinItE30ConstructHistogramOrderedInt16EPKiiiPKfS5_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNK8LightGBM16MultiValDenseBinItE26ConstructHistogramIntInnerILb1ELb1ELb1EiLi16EEEvPKiiiPKfPd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8LightGBM16MultiValDenseBinItE22ConstructHistogramInt8EPKiiiPKfS5_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 8 uses
  %i.c = add nsw i32 %3, -16                      ; 3 uses
  %i.d = icmp slt i32 %2, %i.c
  br i1 %i.d, label %.lr.ph55.i, label %.preheader.i

.lr.ph55.i:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !240  ; 6 uses
  %i.g = sext i32 %i.f to i64                     ; 8 uses
  %i.h = icmp sgt i32 %i.f, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = sext i32 %2 to i64                       ; 5 uses
  %wide.trip.count71.i = sext i32 %i.c to i64     ; 2 uses
  br i1 %i.h, label %.lr.ph.us.preheader.i, label %.lr.ph55.split.i.preheader

.lr.ph55.split.i.preheader:                       ; preds = %.lr.ph55.i
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sub nsw i64 %i.l, %i.k
  %i.n = add nsw i64 %i.l, -17
  %i.o = sub nsw i64 %i.n, %i.k
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph55.split.i.prol.loopexit, label %.lr.ph55.split.i.prol

.lr.ph55.split.i.prol:                            ; preds = %.lr.ph55.split.i.preheader, %.lr.ph55.split.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph55.split.i.prol ], [ %i.k, %.lr.ph55.split.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph55.split.i.prol ], [ 0, %.lr.ph55.split.i.preheader ]
  %i.p = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.i.prol
  %i.q = getelementptr i8, ptr %i.p, i64 64
  %i.r = load i32, ptr %i.q, align 4, !tbaa !51
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds [2 x i8], ptr %4, i64 %i.s
  tail call void @llvm.prefetch.p0(ptr %i.t, i32 0, i32 3, i32 1)
  %i.u = mul nsw i64 %i.s, %i.g
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.u
  tail call void @llvm.prefetch.p0(ptr %i.v, i32 0, i32 3, i32 1)
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph55.split.i.prol.loopexit, label %.lr.ph55.split.i.prol, !llvm.loop !838

.lr.ph55.split.i.prol.loopexit:                   ; preds = %.lr.ph55.split.i.prol, %.lr.ph55.split.i.preheader
  %indvars.iv.i.unr = phi i64 [ %i.k, %.lr.ph55.split.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph55.split.i.prol ]
  %i.w = icmp ult i64 %i.o, 3
  br i1 %i.w, label %_ZNK8LightGBM16MultiValDenseBinItE26ConstructHistogramIntInnerILb1ELb1ELb0EsLi8EEEvPKiiiPKfPd.exit, label %.lr.ph55.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph55.i
  %wide.trip.count66.i = zext nneg i32 %i.f to i64 ; 2 uses
  %xtraiter17 = and i64 %wide.trip.count66.i, 1
  %i.x = icmp eq i32 %i.f, 1
  %unroll_iter = and i64 %wide.trip.count66.i, 2147483646
  %lcmp.mod18.not = icmp eq i64 %xtraiter17, 0
  %lcmp.mod19 = trunc i32 %i.f to i1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv68.i = phi i64 [ %i.k, %.lr.ph.us.preheader.i ], [ %indvars.iv.next69.i, %._crit_edge.us.i ] ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv68.i ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !51
  %i.aa = getelementptr i8, ptr %i.y, i64 64
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !51
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ac
  tail call void @llvm.prefetch.p0(ptr %i.ad, i32 0, i32 3, i32 1)
  %i.ae = mul nsw i64 %i.ac, %i.g
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ae
  tail call void @llvm.prefetch.p0(ptr %i.af, i32 0, i32 3, i32 1)
  %i.ag = sext i32 %i.z to i64                    ; 2 uses
  %i.ah = mul nsw i64 %i.ag, %i.g
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ah ; 3 uses
  %i.aj = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ag
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !82 ; 3 uses
  br i1 %i.x, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv63.i
  %i.am = load i16, ptr %i.al, align 2, !tbaa !82
  %i.an = zext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv63.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !51
  %i.aq = add i32 %i.ap, %i.an
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.ar ; 2 uses
  %i.at = load i16, ptr %i.as, align 2, !tbaa !82
  %i.au = add i16 %i.at, %i.ak
  store i16 %i.au, ptr %i.as, align 2, !tbaa !82
  %indvars.iv.next64.i = or disjoint i64 %indvars.iv63.i, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv.next64.i
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !82
  %i.ax = zext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next64.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !51
  %i.ba = add i32 %i.az, %i.ax
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.bb ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !82
  %i.be = add i16 %i.bd, %i.ak
  store i16 %i.be, ptr %i.bc, align 2, !tbaa !82
  %indvars.iv.next64.i.1 = add nuw nsw i64 %indvars.iv63.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !839

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod18.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %indvars.iv63.i.epil.init = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next64.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv63.i.epil.init
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !82
  %i.bh = zext i16 %i.bg to i32
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv63.i.epil.init
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !51
  %i.bk = add i32 %i.bj, %i.bh
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.bl ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !82
  %i.bo = add i16 %i.bn, %i.ak
  store i16 %i.bo, ptr %i.bm, align 2, !tbaa !82
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next69.i = add nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %exitcond72.not.i = icmp eq i64 %indvars.iv.next69.i, %wide.trip.count71.i
  br i1 %exitcond72.not.i, label %.lr.ph58.i, label %.lr.ph.us.i, !llvm.loop !840

.preheader.i:                                     ; preds = %bb.a
  %i.bp = icmp slt i32 %2, %3
  br i1 %i.bp, label %.preheader.i..lr.ph58.i_crit_edge, label %_ZNK8LightGBM16MultiValDenseBinItE26ConstructHistogramIntInnerILb1ELb1ELb0EsLi8EEEvPKiiiPKfPd.exit

.preheader.i..lr.ph58.i_crit_edge:                ; preds = %.preheader.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !240 ; 2 uses
  %.pre7 = sext i32 %.pre to i64
  br label %.lr.ph58.i

.lr.ph58.i:                                       ; preds = %._crit_edge.us.i, %.preheader.i..lr.ph58.i_crit_edge
  %.pre-phi = phi i64 [ %.pre7, %.preheader.i..lr.ph58.i_crit_edge ], [ %i.g, %._crit_edge.us.i ]
  %i.bq = phi i32 [ %.pre, %.preheader.i..lr.ph58.i_crit_edge ], [ %i.f, %._crit_edge.us.i ] ; 4 uses
  %.0.lcssa88.i = phi i32 [ %2, %.preheader.i..lr.ph58.i_crit_edge ], [ %i.c, %._crit_edge.us.i ]
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph58.split.i, label %_ZNK8LightGBM16MultiValDenseBinItE26ConstructHistogramIntInnerILb1ELb1ELb0EsLi8EEEvPKiiiPKfPd.exit

end_hunk_1
begin_hunk_2_@_ZNK8LightGBM16MultiValDenseBinIjE18ConstructHistogramEiiPKfS3_Pd:bb.a
  %i.x = load i32, ptr %i.w, align 4, !tbaa !51
  %i.y = add i32 %i.x, %i.v
  %i.z = shl i32 %i.y, 1
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.aa ; 2 uses
  %i.ac = load <2 x double>, ptr %i.ab, align 8, !tbaa !80
  %i.ad = fadd <2 x double> %i.ac, %i.t
  store <2 x double> %i.ad, ptr %i.ab, align 8, !tbaa !80
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next33.i = add nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next33.i, %wide.trip.count35.i
  br i1 %exitcond36.not.i, label %_ZNK8LightGBM16MultiValDenseBinIjE23ConstructHistogramInnerILb0ELb0ELb0EEEvPKiiiPKfS6_Pd.exit, label %.lr.ph.i, !llvm.loop !851

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !51
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !51
  %i.ai = add i32 %i.ah, %i.af
  %i.aj = shl i32 %i.ai, 1
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ak ; 2 uses
  %i.am = load <2 x double>, ptr %i.al, align 8, !tbaa !80
  %i.an = fadd <2 x double> %i.am, %i.t
  store <2 x double> %i.an, ptr %i.al, align 8, !tbaa !80
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !51
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !51
  %i.as = add i32 %i.ar, %i.ap
  %i.at = shl i32 %i.as, 1
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.au ; 2 uses
  %i.aw = load <2 x double>, ptr %i.av, align 8, !tbaa !80
  %i.ax = fadd <2 x double> %i.aw, %i.t
  store <2 x double> %i.ax, ptr %i.av, align 8, !tbaa !80
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i.new, !llvm.loop !852

_ZNK8LightGBM16MultiValDenseBinIjE23ConstructHistogramInnerILb0ELb0ELb0EEEvPKiiiPKfS6_Pd.exit: ; preds = %._crit_edge.i, %bb.a, %.lr.ph29.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8LightGBM16MultiValDenseBinIjE25ConstructHistogramOrderedEPKiiiPKfS5_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNK8LightGBM16MultiValDenseBinIjE23ConstructHistogramInnerILb1ELb1ELb1EEEvPKiiiPKfS6_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8LightGBM16MultiValDenseBinIjE23ConstructHistogramInt32EPKiiiPKfS5_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNK8LightGBM16MultiValDenseBinIjE26ConstructHistogramIntInnerILb1ELb1ELb0ElLi32EEEvPKiiiPKfPd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8LightGBM16MultiValDenseBinIjE23ConstructHistogramInt32EiiPKfS3_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120
  %i.c = icmp slt i32 %1, %2
  br i1 %i.c, label %.lr.ph27.i, label %_ZNK8LightGBM16MultiValDenseBinIjE26ConstructHistogramIntInnerILb0ELb0ELb0ElLi32EEEvPKiiiPKfPd.exit

.lr.ph27.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !244  ; 5 uses
  %i.f = sext i32 %i.e to i64
  %i.g = icmp sgt i32 %i.e, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  br i1 %i.g, label %.lr.ph.preheader.i, label %_ZNK8LightGBM16MultiValDenseBinIjE26ConstructHistogramIntInnerILb0ELb0ELb0ElLi32EEEvPKiiiPKfPd.exit

.lr.ph.preheader.i:                               ; preds = %.lr.ph27.i
  %i.j = sext i32 %1 to i64
  %wide.trip.count33.i = sext i32 %2 to i64
  %wide.trip.count.i = zext nneg i32 %i.e to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.k = icmp eq i32 %i.e, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod6 = trunc i32 %i.e to i1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv30.i = phi i64 [ %i.j, %.lr.ph.preheader.i ], [ %indvars.iv.next31.i, %._crit_edge.i ] ; 3 uses
  %i.l = mul nsw i64 %indvars.iv30.i, %i.f
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds [2 x i8], ptr %3, i64 %indvars.iv30.i
  %i.o = load i16, ptr %i.n, align 2, !tbaa !82   ; 2 uses
  %i.p = ashr i16 %i.o, 8
  %i.q = sext i16 %i.p to i64
  %i.r = shl nsw i64 %i.q, 32
  %i.s = and i16 %i.o, 255
  %i.t = zext nneg i16 %i.s to i64
  %i.u = or disjoint i64 %i.r, %i.t               ; 3 uses
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i.epil.init
  %i.w = load i32, ptr %i.v, align 4, !tbaa !51
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i.epil.init
  %i.y = load i32, ptr %i.x, align 4, !tbaa !51
  %i.z = add i32 %i.y, %i.w
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.aa ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !84
  %i.ad = add nsw i64 %i.u, %i.ac
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !84
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next31.i = add nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next31.i, %wide.trip.count33.i
  br i1 %exitcond34.not.i, label %_ZNK8LightGBM16MultiValDenseBinIjE26ConstructHistogramIntInnerILb0ELb0ELb0ElLi32EEEvPKiiiPKfPd.exit, label %.lr.ph.i, !llvm.loop !853

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !51
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !51
  %i.ai = add i32 %i.ah, %i.af
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.aj ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !84
  %i.am = add nsw i64 %i.u, %i.al
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !84
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !51
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !51
  %i.ar = add i32 %i.aq, %i.ao
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.as ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !84
  %i.av = add nsw i64 %i.u, %i.au
  store i64 %i.av, ptr %i.at, align 8, !tbaa !84
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i.new, !llvm.loop !854

_ZNK8LightGBM16MultiValDenseBinIjE26ConstructHistogramIntInnerILb0ELb0ELb0ElLi32EEEvPKiiiPKfPd.exit: ; preds = %._crit_edge.i, %bb.a, %.lr.ph27.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8LightGBM16MultiValDenseBinIjE30ConstructHistogramOrderedInt32EPKiiiPKfS5_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNK8LightGBM16MultiValDenseBinIjE26ConstructHistogramIntInnerILb1ELb1ELb1ElLi32EEEvPKiiiPKfPd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8LightGBM16MultiValDenseBinIjE23ConstructHistogramInt16EPKiiiPKfS5_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNK8LightGBM16MultiValDenseBinIjE26ConstructHistogramIntInnerILb1ELb1ELb0EiLi16EEEvPKiiiPKfPd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8LightGBM16MultiValDenseBinIjE23ConstructHistogramInt16EiiPKfS3_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120
  %i.c = icmp slt i32 %1, %2
  br i1 %i.c, label %.lr.ph27.i, label %_ZNK8LightGBM16MultiValDenseBinIjE26ConstructHistogramIntInnerILb0ELb0ELb0EiLi16EEEvPKiiiPKfPd.exit

.lr.ph27.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load i32, ptr %i.d, align 8, !tbaa !244  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph27.split.preheader.i, label %_ZNK8LightGBM16MultiValDenseBinIjE26ConstructHistogramIntInnerILb0ELb0ELb0EiLi16EEEvPKiiiPKfPd.exit

.lr.ph27.split.preheader.i:                       ; preds = %.lr.ph27.i
  %i.i = sext i32 %1 to i64
  %wide.trip.count.i = sext i32 %2 to i64
  br label %.lr.ph27.split.i

.lr.ph27.split.i:                                 ; preds = %._crit_edge.i, %.lr.ph27.split.preheader.i
  %i.j = phi i32 [ %i.g, %.lr.ph27.split.preheader.i ], [ %i.v, %._crit_edge.i ] ; 3 uses
  %indvars.iv31.i = phi i64 [ %i.i, %.lr.ph27.split.preheader.i ], [ %indvars.iv.next32.i, %._crit_edge.i ] ; 3 uses
  %6 = zext nneg i32 %i.j to i64
  %i.k = mul nsw i64 %indvars.iv31.i, %6
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.k
  %i.m = getelementptr inbounds [2 x i8], ptr %3, i64 %indvars.iv31.i
  %i.n = load i16, ptr %i.m, align 2, !tbaa !82   ; 2 uses
  %i.o = ashr i16 %i.n, 8
  %i.p = sext i16 %i.o to i32
  %i.q = shl nsw i32 %i.p, 16
  %i.r = and i16 %i.n, 255
  %i.s = zext nneg i16 %i.r to i32
  %i.t = or disjoint i32 %i.q, %i.s
  %i.u = icmp sgt i32 %i.j, 0
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph27.split.i
  %i.v = phi i32 [ %i.j, %.lr.ph27.split.i ], [ %i.af, %.lr.ph.i ]
  %indvars.iv.next32.i = add nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next32.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK8LightGBM16MultiValDenseBinIjE26ConstructHistogramIntInnerILb0ELb0ELb0EiLi16EEEvPKiiiPKfPd.exit, label %.lr.ph27.split.i, !llvm.loop !855

.lr.ph.i:                                         ; preds = %.lr.ph27.split.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph27.split.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.x = load i32, ptr %i.w, align 4, !tbaa !51
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !51
  %i.aa = add i32 %i.z, %i.x
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !51
  %i.ae = add nsw i32 %i.t, %i.ad
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !51
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.af = load i32, ptr %i.d, align 8, !tbaa !244 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next.i, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !856

_ZNK8LightGBM16MultiValDenseBinIjE26ConstructHistogramIntInnerILb0ELb0ELb0EiLi16EEEvPKiiiPKfPd.exit: ; preds = %._crit_edge.i, %bb.a, %.lr.ph27.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8LightGBM16MultiValDenseBinIjE30ConstructHistogramOrderedInt16EPKiiiPKfS5_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNK8LightGBM16MultiValDenseBinIjE26ConstructHistogramIntInnerILb1ELb1ELb1EiLi16EEEvPKiiiPKfPd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK8LightGBM16MultiValDenseBinIjE22ConstructHistogramInt8EPKiiiPKfS5_Pd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 8 uses
  %i.c = add nsw i32 %3, -8                       ; 3 uses
  %i.d = icmp slt i32 %2, %i.c
  br i1 %i.d, label %.lr.ph55.i, label %.preheader.i

.lr.ph55.i:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !244  ; 6 uses
  %i.g = sext i32 %i.f to i64                     ; 8 uses
  %i.h = icmp sgt i32 %i.f, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = sext i32 %2 to i64                       ; 5 uses
  %wide.trip.count71.i = sext i32 %i.c to i64     ; 2 uses
  br i1 %i.h, label %.lr.ph.us.preheader.i, label %.lr.ph55.split.i.preheader

.lr.ph55.split.i.preheader:                       ; preds = %.lr.ph55.i
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sub nsw i64 %i.l, %i.k
  %i.n = add nsw i64 %i.l, -9
  %i.o = sub nsw i64 %i.n, %i.k
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph55.split.i.prol.loopexit, label %.lr.ph55.split.i.prol

.lr.ph55.split.i.prol:                            ; preds = %.lr.ph55.split.i.preheader, %.lr.ph55.split.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph55.split.i.prol ], [ %i.k, %.lr.ph55.split.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph55.split.i.prol ], [ 0, %.lr.ph55.split.i.preheader ]
  %i.p = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.i.prol
  %i.q = getelementptr i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 4, !tbaa !51
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds [2 x i8], ptr %4, i64 %i.s
  tail call void @llvm.prefetch.p0(ptr %i.t, i32 0, i32 3, i32 1)
  %i.u = mul nsw i64 %i.s, %i.g
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.u
  tail call void @llvm.prefetch.p0(ptr %i.v, i32 0, i32 3, i32 1)
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph55.split.i.prol.loopexit, label %.lr.ph55.split.i.prol, !llvm.loop !857

.lr.ph55.split.i.prol.loopexit:                   ; preds = %.lr.ph55.split.i.prol, %.lr.ph55.split.i.preheader
  %indvars.iv.i.unr = phi i64 [ %i.k, %.lr.ph55.split.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph55.split.i.prol ]
  %i.w = icmp ult i64 %i.o, 3
  br i1 %i.w, label %_ZNK8LightGBM16MultiValDenseBinIjE26ConstructHistogramIntInnerILb1ELb1ELb0EsLi8EEEvPKiiiPKfPd.exit, label %.lr.ph55.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph55.i
  %wide.trip.count66.i = zext nneg i32 %i.f to i64 ; 2 uses
  %xtraiter17 = and i64 %wide.trip.count66.i, 1
  %i.x = icmp eq i32 %i.f, 1
  %unroll_iter = and i64 %wide.trip.count66.i, 2147483646
  %lcmp.mod18.not = icmp eq i64 %xtraiter17, 0
  %lcmp.mod19 = trunc i32 %i.f to i1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv68.i = phi i64 [ %i.k, %.lr.ph.us.preheader.i ], [ %indvars.iv.next69.i, %._crit_edge.us.i ] ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv68.i ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !51
  %i.aa = getelementptr i8, ptr %i.y, i64 32
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !51
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ac
  tail call void @llvm.prefetch.p0(ptr %i.ad, i32 0, i32 3, i32 1)
  %i.ae = mul nsw i64 %i.ac, %i.g
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ae
  tail call void @llvm.prefetch.p0(ptr %i.af, i32 0, i32 3, i32 1)
  %i.ag = sext i32 %i.z to i64                    ; 2 uses
  %i.ah = mul nsw i64 %i.ag, %i.g
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ah ; 3 uses
  %i.aj = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ag
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !82 ; 3 uses
  br i1 %i.x, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv63.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !51
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv63.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !51
  %i.ap = add i32 %i.ao, %i.am
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.aq ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !82
  %i.at = add i16 %i.as, %i.ak
  store i16 %i.at, ptr %i.ar, align 2, !tbaa !82
  %indvars.iv.next64.i = or disjoint i64 %indvars.iv63.i, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next64.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !51
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next64.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !51
  %i.ay = add i32 %i.ax, %i.av
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.az ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !82
  %i.bc = add i16 %i.bb, %i.ak
  store i16 %i.bc, ptr %i.ba, align 2, !tbaa !82
  %indvars.iv.next64.i.1 = add nuw nsw i64 %indvars.iv63.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !858

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod18.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %indvars.iv63.i.epil.init = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next64.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv63.i.epil.init
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !51
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv63.i.epil.init
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !51
  %i.bh = add i32 %i.bg, %i.be
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.bi ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !82
  %i.bl = add i16 %i.bk, %i.ak
  store i16 %i.bl, ptr %i.bj, align 2, !tbaa !82
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next69.i = add nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %exitcond72.not.i = icmp eq i64 %indvars.iv.next69.i, %wide.trip.count71.i
  br i1 %exitcond72.not.i, label %.lr.ph58.i, label %.lr.ph.us.i, !llvm.loop !859

.preheader.i:                                     ; preds = %bb.a
  %i.bm = icmp slt i32 %2, %3
  br i1 %i.bm, label %.preheader.i..lr.ph58.i_crit_edge, label %_ZNK8LightGBM16MultiValDenseBinIjE26ConstructHistogramIntInnerILb1ELb1ELb0EsLi8EEEvPKiiiPKfPd.exit

.preheader.i..lr.ph58.i_crit_edge:                ; preds = %.preheader.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !244 ; 2 uses
  %.pre7 = sext i32 %.pre to i64
  br label %.lr.ph58.i

.lr.ph58.i:                                       ; preds = %._crit_edge.us.i, %.preheader.i..lr.ph58.i_crit_edge
  %.pre-phi = phi i64 [ %.pre7, %.preheader.i..lr.ph58.i_crit_edge ], [ %i.g, %._crit_edge.us.i ]
  %i.bn = phi i32 [ %.pre, %.preheader.i..lr.ph58.i_crit_edge ], [ %i.f, %._crit_edge.us.i ] ; 4 uses
  %.0.lcssa88.i = phi i32 [ %2, %.preheader.i..lr.ph58.i_crit_edge ], [ %i.c, %._crit_edge.us.i ]
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph58.split.i, label %_ZNK8LightGBM16MultiValDenseBinIjE26ConstructHistogramIntInnerILb1ELb1ELb0EsLi8EEEvPKiiiPKfPd.exit

.lr.ph58.split.i:                                 ; preds = %.lr.ph58.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !234 ; 3 uses
  %i.br = sext i32 %.0.lcssa88.i to i64
end_hunk_2
begin_hunk_3_@_ZNK8LightGBM16MultiValDenseBinIhE26ConstructHistogramIntInnerILb1ELb1ELb1ElLi32EEEvPKiiiPKfPd:bb.a
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ed ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !84
  %i.eg = add nsw i64 %i.dm, %i.ef
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !84
  %indvars.iv.next74 = or disjoint i64 %indvars.iv73, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next74
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !50
  %i.ej = zext i8 %i.ei to i32
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next74
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !51
  %i.em = add i32 %i.el, %i.ej
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.en ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !84
  %i.eq = add nsw i64 %i.dm, %i.ep
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !84
  %indvars.iv.next74.1 = add nuw nsw i64 %indvars.iv73, 2 ; 2 uses
  %niter100.next.1 = add i64 %niter100, 2         ; 2 uses
  %niter100.ncmp.1 = icmp eq i64 %niter100.next.1, %unroll_iter99
  br i1 %niter100.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !1393

._crit_edge59.split:                              ; preds = %._crit_edge, %.lr.ph58, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK8LightGBM16MultiValDenseBinIhE26ConstructHistogramIntInnerILb1ELb1ELb0EiLi16EEEvPKiiiPKfPd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 8 uses
  %i.c = add nsw i32 %3, -32                      ; 6 uses
  %i.d = icmp slt i32 %2, %i.c
  br i1 %i.d, label %.lr.ph57, label %.preheader

.lr.ph57:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load i32, ptr %i.e, align 8, !tbaa !233  ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph57.split.preheader, label %.lr.ph57.split.us

.lr.ph57.split.preheader:                         ; preds = %.lr.ph57
  %i.j = sext i32 %2 to i64
  %wide.trip.count75 = sext i32 %i.c to i64
  br label %.lr.ph57.split

.lr.ph57.split.us:                                ; preds = %.lr.ph57
  %i.k = sext i32 %i.h to i64                     ; 5 uses
  %i.l = sext i32 %2 to i64                       ; 4 uses
  %wide.trip.count = sext i32 %i.c to i64
  %i.m = sext i32 %3 to i64                       ; 2 uses
  %i.n = sub nsw i64 %i.m, %i.l
  %i.o = add nsw i64 %i.m, -33
  %i.p = sub nsw i64 %i.o, %i.l
  %xtraiter = and i64 %i.n, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph57.split.us, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.l, %.lr.ph57.split.us ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph57.split.us ]
  %i.q = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.r = getelementptr i8, ptr %i.q, i64 128
  %i.s = load i32, ptr %i.r, align 4, !tbaa !51
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds [2 x i8], ptr %4, i64 %i.t
  tail call void @llvm.prefetch.p0(ptr %i.u, i32 0, i32 3, i32 1)
  %i.v = mul nsw i64 %i.k, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.v
  tail call void @llvm.prefetch.p0(ptr %i.w, i32 0, i32 3, i32 1)
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1394

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph57.split.us
  %indvars.iv.unr = phi i64 [ %i.l, %.lr.ph57.split.us ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.x = icmp ult i64 %i.p, 3
  br i1 %i.x, label %.lr.ph63, label %.lr.ph57.split.us.new

.lr.ph57.split.us.new:                            ; preds = %.prol.loopexit, %.lr.ph57.split.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph57.split.us.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.z = getelementptr i8, ptr %i.y, i64 128
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !51
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ab
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = mul nsw i64 %i.k, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  tail call void @llvm.prefetch.p0(ptr %i.ae, i32 0, i32 3, i32 1)
  %i.af = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.ag = getelementptr i8, ptr %i.af, i64 132
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !51
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ai
  tail call void @llvm.prefetch.p0(ptr %i.aj, i32 0, i32 3, i32 1)
  %i.ak = mul nsw i64 %i.k, %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ak
  tail call void @llvm.prefetch.p0(ptr %i.al, i32 0, i32 3, i32 1)
  %i.am = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.an = getelementptr i8, ptr %i.am, i64 136
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !51
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ap
  tail call void @llvm.prefetch.p0(ptr %i.aq, i32 0, i32 3, i32 1)
  %i.ar = mul nsw i64 %i.k, %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ar
  tail call void @llvm.prefetch.p0(ptr %i.as, i32 0, i32 3, i32 1)
  %i.at = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.au = getelementptr i8, ptr %i.at, i64 140
  %i.av = load i32, ptr %i.au, align 4, !tbaa !51
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [2 x i8], ptr %4, i64 %i.aw
  tail call void @llvm.prefetch.p0(ptr %i.ax, i32 0, i32 3, i32 1)
  %i.ay = mul nsw i64 %i.k, %i.aw
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ay
  tail call void @llvm.prefetch.p0(ptr %i.az, i32 0, i32 3, i32 1)
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.lr.ph63, label %.lr.ph57.split.us.new, !llvm.loop !1395

.preheader:                                       ; preds = %bb.a
  %i.ba = icmp slt i32 %2, %3
  br i1 %i.ba, label %.lr.ph63, label %._crit_edge64

.lr.ph63:                                         ; preds = %.prol.loopexit, %.lr.ph57.split.us.new, %._crit_edge, %.preheader
  %.0.lcssa93 = phi i32 [ %2, %.preheader ], [ %i.c, %._crit_edge ], [ %i.c, %.lr.ph57.split.us.new ], [ %i.c, %.prol.loopexit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load i32, ptr %i.bb, align 8, !tbaa !233 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph63.split.preheader, label %._crit_edge64

.lr.ph63.split.preheader:                         ; preds = %.lr.ph63
  %i.bf = sext i32 %.0.lcssa93 to i64
  %wide.trip.count83 = sext i32 %3 to i64
  br label %.lr.ph63.split

.lr.ph57.split:                                   ; preds = %.lr.ph57.split.preheader, %._crit_edge
  %i.bg = phi i32 [ %i.h, %.lr.ph57.split.preheader ], [ %i.cc, %._crit_edge ] ; 3 uses
  %indvars.iv72 = phi i64 [ %i.j, %.lr.ph57.split.preheader ], [ %indvars.iv.next73, %._crit_edge ] ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv72 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !51
  %i.bj = getelementptr i8, ptr %i.bh, i64 128
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !51
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = getelementptr inbounds [2 x i8], ptr %4, i64 %i.bl
  tail call void @llvm.prefetch.p0(ptr %i.bm, i32 0, i32 3, i32 1)
  %i.bn = sext i32 %i.bg to i64                   ; 2 uses
  %i.bo = mul nsw i64 %i.bn, %i.bl
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bo
  tail call void @llvm.prefetch.p0(ptr %i.bp, i32 0, i32 3, i32 1)
  %i.bq = sext i32 %i.bi to i64                   ; 2 uses
  %i.br = mul nsw i64 %i.bn, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.br
  %i.bt = getelementptr inbounds [2 x i8], ptr %4, i64 %i.bq
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !82 ; 2 uses
  %i.bv = ashr i16 %i.bu, 8
  %i.bw = sext i16 %i.bv to i32
  %i.bx = shl nsw i32 %i.bw, 16
  %i.by = and i16 %i.bu, 255
  %i.bz = zext nneg i16 %i.by to i32
  %i.ca = or disjoint i32 %i.bx, %i.bz
  %i.cb = icmp sgt i32 %i.bg, 0
  br i1 %i.cb, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph57.split
  %i.cc = phi i32 [ %i.bg, %.lr.ph57.split ], [ %i.cn, %.lr.ph ]
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %.lr.ph63, label %.lr.ph57.split, !llvm.loop !1396

.lr.ph:                                           ; preds = %.lr.ph57.split, %.lr.ph
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %.lr.ph ], [ 0, %.lr.ph57.split ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 %indvars.iv69
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !50
  %i.cf = zext i8 %i.ce to i32
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv69
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !51
  %i.ci = add i32 %i.ch, %i.cf
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !51
  %i.cm = add nsw i32 %i.ca, %i.cl
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !51
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.cn = load i32, ptr %i.e, align 8, !tbaa !233 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp slt i64 %indvars.iv.next70, %i.co
  br i1 %i.cp, label %.lr.ph, label %._crit_edge, !llvm.loop !1397

.lr.ph63.split:                                   ; preds = %.lr.ph63.split.preheader, %._crit_edge61
  %i.cq = phi i32 [ %i.bd, %.lr.ph63.split.preheader ], [ %i.dg, %._crit_edge61 ] ; 3 uses
  %indvars.iv80 = phi i64 [ %i.bf, %.lr.ph63.split.preheader ], [ %indvars.iv.next81, %._crit_edge61 ] ; 2 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv80
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !51
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  %6 = zext nneg i32 %i.cq to i64
  %i.cu = mul nsw i64 %6, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cu
  %i.cw = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ct
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !82 ; 2 uses
  %i.cy = ashr i16 %i.cx, 8
  %i.cz = sext i16 %i.cy to i32
  %i.da = shl nsw i32 %i.cz, 16
  %i.db = and i16 %i.cx, 255
  %i.dc = zext nneg i16 %i.db to i32
  %i.dd = or disjoint i32 %i.da, %i.dc
  %i.de = icmp sgt i32 %i.cq, 0
  br i1 %i.de, label %.lr.ph60, label %._crit_edge61

.lr.ph60:                                         ; preds = %.lr.ph63.split
  %i.df = load ptr, ptr %i.bc, align 8, !tbaa !234
  br label %bb.b

._crit_edge61:                                    ; preds = %bb.b, %.lr.ph63.split
  %i.dg = phi i32 [ %i.cq, %.lr.ph63.split ], [ %i.dr, %bb.b ]
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %._crit_edge64, label %.lr.ph63.split, !llvm.loop !1398

bb.b:                                             ; preds = %.lr.ph60, %bb.b
  %indvars.iv77 = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next78, %bb.b ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cv, i64 %indvars.iv77
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !50
  %i.dj = zext i8 %i.di to i32
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv77
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !51
  %i.dm = add i32 %i.dl, %i.dj
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.dn ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !51
  %i.dq = add nsw i32 %i.dd, %i.dp
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !51
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %i.dr = load i32, ptr %i.bb, align 8, !tbaa !233 ; 2 uses
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next78, %i.ds
  br i1 %i.dt, label %bb.b, label %._crit_edge61, !llvm.loop !1399

._crit_edge64:                                    ; preds = %._crit_edge61, %.lr.ph63, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK8LightGBM16MultiValDenseBinIhE26ConstructHistogramIntInnerILb1ELb1ELb1EiLi16EEEvPKiiiPKfPd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 8 uses
  %i.c = add nsw i32 %3, -32                      ; 6 uses
  %i.d = icmp slt i32 %2, %i.c
  br i1 %i.d, label %.lr.ph55, label %.preheader

.lr.ph55:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load i32, ptr %i.e, align 8, !tbaa !233  ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph55.split.preheader, label %.lr.ph55.split.us

.lr.ph55.split.preheader:                         ; preds = %.lr.ph55
  %i.j = sext i32 %2 to i64
  %wide.trip.count73 = sext i32 %i.c to i64
  br label %.lr.ph55.split

.lr.ph55.split.us:                                ; preds = %.lr.ph55
  %i.k = sext i32 %i.h to i64                     ; 5 uses
  %i.l = sext i32 %2 to i64                       ; 4 uses
  %wide.trip.count = sext i32 %i.c to i64
  %i.m = sext i32 %3 to i64                       ; 2 uses
  %i.n = sub nsw i64 %i.m, %i.l
  %i.o = add nsw i64 %i.m, -33
  %i.p = sub nsw i64 %i.o, %i.l
  %xtraiter = and i64 %i.n, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph55.split.us, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.l, %.lr.ph55.split.us ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph55.split.us ]
  %i.q = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.r = getelementptr i8, ptr %i.q, i64 128
  %i.s = load i32, ptr %i.r, align 4, !tbaa !51
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.k, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.u
  tail call void @llvm.prefetch.p0(ptr %i.v, i32 0, i32 3, i32 1)
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1400

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph55.split.us
  %indvars.iv.unr = phi i64 [ %i.l, %.lr.ph55.split.us ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.w = icmp ult i64 %i.p, 3
  br i1 %i.w, label %.lr.ph61, label %.lr.ph55.split.us.new

.lr.ph55.split.us.new:                            ; preds = %.prol.loopexit, %.lr.ph55.split.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph55.split.us.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.y = getelementptr i8, ptr %i.x, i64 128
  %i.z = load i32, ptr %i.y, align 4, !tbaa !51
  %i.aa = sext i32 %i.z to i64
  %i.ab = mul nsw i64 %i.k, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ab
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.ae = getelementptr i8, ptr %i.ad, i64 132
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !51
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %i.k, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ah
  tail call void @llvm.prefetch.p0(ptr %i.ai, i32 0, i32 3, i32 1)
  %i.aj = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.ak = getelementptr i8, ptr %i.aj, i64 136
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !51
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.k, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.an
  tail call void @llvm.prefetch.p0(ptr %i.ao, i32 0, i32 3, i32 1)
  %i.ap = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.aq = getelementptr i8, ptr %i.ap, i64 140
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !51
  %i.as = sext i32 %i.ar to i64
  %i.at = mul nsw i64 %i.k, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.at
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.lr.ph61, label %.lr.ph55.split.us.new, !llvm.loop !1401

.preheader:                                       ; preds = %bb.a
  %i.av = icmp slt i32 %2, %3
  br i1 %i.av, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %.prol.loopexit, %.lr.ph55.split.us.new, %._crit_edge, %.preheader
  %.0.lcssa91 = phi i32 [ %2, %.preheader ], [ %i.c, %._crit_edge ], [ %i.c, %.lr.ph55.split.us.new ], [ %i.c, %.prol.loopexit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load i32, ptr %i.aw, align 8, !tbaa !233 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph61.split.preheader, label %._crit_edge62

.lr.ph61.split.preheader:                         ; preds = %.lr.ph61
  %i.ba = sext i32 %.0.lcssa91 to i64
  %wide.trip.count81 = sext i32 %3 to i64
  br label %.lr.ph61.split

.lr.ph55.split:                                   ; preds = %.lr.ph55.split.preheader, %._crit_edge
  %i.bb = phi i32 [ %i.h, %.lr.ph55.split.preheader ], [ %i.bw, %._crit_edge ] ; 3 uses
  %indvars.iv70 = phi i64 [ %i.j, %.lr.ph55.split.preheader ], [ %indvars.iv.next71, %._crit_edge ] ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv70 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !51
  %i.be = getelementptr i8, ptr %i.bc, i64 128
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !51
  %i.bg = sext i32 %i.bf to i64
  %i.bh = sext i32 %i.bb to i64                   ; 2 uses
  %i.bi = mul nsw i64 %i.bh, %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bi
  tail call void @llvm.prefetch.p0(ptr %i.bj, i32 0, i32 3, i32 1)
  %i.bk = sext i32 %i.bd to i64                   ; 2 uses
  %i.bl = mul nsw i64 %i.bh, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bl
  %i.bn = getelementptr inbounds [2 x i8], ptr %4, i64 %i.bk
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !82 ; 2 uses
  %i.bp = ashr i16 %i.bo, 8
  %i.bq = sext i16 %i.bp to i32
  %i.br = shl nsw i32 %i.bq, 16
  %i.bs = and i16 %i.bo, 255
  %i.bt = zext nneg i16 %i.bs to i32
  %i.bu = or disjoint i32 %i.br, %i.bt
  %i.bv = icmp sgt i32 %i.bb, 0
  br i1 %i.bv, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph55.split
  %i.bw = phi i32 [ %i.bb, %.lr.ph55.split ], [ %i.ch, %.lr.ph ]
  %indvars.iv.next71 = add nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %.lr.ph61, label %.lr.ph55.split, !llvm.loop !1402

.lr.ph:                                           ; preds = %.lr.ph55.split, %.lr.ph
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %.lr.ph ], [ 0, %.lr.ph55.split ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv67
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !50
  %i.bz = zext i8 %i.by to i32
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv67
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !51
  %i.cc = add i32 %i.cb, %i.bz
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !51
  %i.cg = add nsw i32 %i.bu, %i.cf
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !51
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %i.ch = load i32, ptr %i.e, align 8, !tbaa !233 ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp slt i64 %indvars.iv.next68, %i.ci
  br i1 %i.cj, label %.lr.ph, label %._crit_edge, !llvm.loop !1403

.lr.ph61.split:                                   ; preds = %.lr.ph61.split.preheader, %._crit_edge59
  %i.ck = phi i32 [ %i.ay, %.lr.ph61.split.preheader ], [ %i.da, %._crit_edge59 ] ; 3 uses
  %indvars.iv78 = phi i64 [ %i.ba, %.lr.ph61.split.preheader ], [ %indvars.iv.next79, %._crit_edge59 ] ; 2 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv78
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !51
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  %6 = zext nneg i32 %i.ck to i64
  %i.co = mul nsw i64 %6, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.co
  %i.cq = getelementptr inbounds [2 x i8], ptr %4, i64 %i.cn
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !82 ; 2 uses
  %i.cs = ashr i16 %i.cr, 8
  %i.ct = sext i16 %i.cs to i32
  %i.cu = shl nsw i32 %i.ct, 16
  %i.cv = and i16 %i.cr, 255
  %i.cw = zext nneg i16 %i.cv to i32
  %i.cx = or disjoint i32 %i.cu, %i.cw
  %i.cy = icmp sgt i32 %i.ck, 0
  br i1 %i.cy, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.lr.ph61.split
  %i.cz = load ptr, ptr %i.ax, align 8, !tbaa !234
  br label %bb.b

._crit_edge59:                                    ; preds = %bb.b, %.lr.ph61.split
  %i.da = phi i32 [ %i.ck, %.lr.ph61.split ], [ %i.dl, %bb.b ]
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %._crit_edge62, label %.lr.ph61.split, !llvm.loop !1404

bb.b:                                             ; preds = %.lr.ph58, %bb.b
  %indvars.iv75 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next76, %bb.b ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 %indvars.iv75
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !50
  %i.dd = zext i8 %i.dc to i32
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv75
  %i.df = load i32, ptr %i.de, align 4, !tbaa !51
  %i.dg = add i32 %i.df, %i.dd
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !51
  %i.dk = add nsw i32 %i.cx, %i.dj
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !51
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %i.dl = load i32, ptr %i.aw, align 8, !tbaa !233 ; 2 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp slt i64 %indvars.iv.next76, %i.dm
  br i1 %i.dn, label %bb.b, label %._crit_edge59, !llvm.loop !1405

._crit_edge62:                                    ; preds = %._crit_edge59, %.lr.ph61, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !260
  %i.c = load ptr, ptr %1, align 8, !tbaa !234    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !261
  %i.i = load ptr, ptr %0, align 8, !tbaa !234    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, !prof !255

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #40
  unreachable

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #39 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !246

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !51
  store i32 %i.r, ptr %i.o, align 4, !tbaa !51
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit

_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !234    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !261
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #38
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !234
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !261
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !260  ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 4
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !246

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 4
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !51
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !51
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 4
  br i1 %i.af, label %bb.o, label %bb.p, !prof !246

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !234
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !260 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !234
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !260
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 4
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !51
  store i32 %i.ah, ptr %i.i, align 4, !tbaa !51
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

_ZSt4copyIPjS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 4, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 4
  br i1 %i.an, label %bb.r, label %bb.s, !prof !246

bb.r:                                             ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ai, ptr align 4 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 4
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load i32, ptr %i.ak, align 4, !tbaa !51
  store i32 %i.ap, ptr %i.ai, align 4, !tbaa !51
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !234
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !260
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16MultiValDenseBinIhE9CopyInnerILb1ELb0EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #1 comdat align 2 {
end_hunk_3
begin_hunk_4_@_ZNK8LightGBM16MultiValDenseBinItE26ConstructHistogramIntInnerILb1ELb1ELb1ElLi32EEEvPKiiiPKfPd:bb.a
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ed ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !84
  %i.eg = add nsw i64 %i.dm, %i.ef
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !84
  %indvars.iv.next74 = or disjoint i64 %indvars.iv73, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %indvars.iv.next74
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !82
  %i.ej = zext i16 %i.ei to i32
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next74
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !51
  %i.em = add i32 %i.el, %i.ej
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.en ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !84
  %i.eq = add nsw i64 %i.dm, %i.ep
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !84
  %indvars.iv.next74.1 = add nuw nsw i64 %indvars.iv73, 2 ; 2 uses
  %niter100.next.1 = add i64 %niter100, 2         ; 2 uses
  %niter100.ncmp.1 = icmp eq i64 %niter100.next.1, %unroll_iter99
  br i1 %niter100.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !1435

._crit_edge59.split:                              ; preds = %._crit_edge, %.lr.ph58, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK8LightGBM16MultiValDenseBinItE26ConstructHistogramIntInnerILb1ELb1ELb0EiLi16EEEvPKiiiPKfPd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 8 uses
  %i.c = add nsw i32 %3, -16                      ; 6 uses
  %i.d = icmp slt i32 %2, %i.c
  br i1 %i.d, label %.lr.ph57, label %.preheader

.lr.ph57:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load i32, ptr %i.e, align 8, !tbaa !240  ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph57.split.preheader, label %.lr.ph57.split.us

.lr.ph57.split.preheader:                         ; preds = %.lr.ph57
  %i.j = sext i32 %2 to i64
  %wide.trip.count75 = sext i32 %i.c to i64
  br label %.lr.ph57.split

.lr.ph57.split.us:                                ; preds = %.lr.ph57
  %i.k = sext i32 %i.h to i64                     ; 5 uses
  %i.l = sext i32 %2 to i64                       ; 4 uses
  %wide.trip.count = sext i32 %i.c to i64
  %i.m = sext i32 %3 to i64                       ; 2 uses
  %i.n = sub nsw i64 %i.m, %i.l
  %i.o = add nsw i64 %i.m, -17
  %i.p = sub nsw i64 %i.o, %i.l
  %xtraiter = and i64 %i.n, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph57.split.us, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.l, %.lr.ph57.split.us ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph57.split.us ]
  %i.q = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.r = getelementptr i8, ptr %i.q, i64 64
  %i.s = load i32, ptr %i.r, align 4, !tbaa !51
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds [2 x i8], ptr %4, i64 %i.t
  tail call void @llvm.prefetch.p0(ptr %i.u, i32 0, i32 3, i32 1)
  %i.v = mul nsw i64 %i.k, %i.t
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.v
  tail call void @llvm.prefetch.p0(ptr %i.w, i32 0, i32 3, i32 1)
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1436

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph57.split.us
  %indvars.iv.unr = phi i64 [ %i.l, %.lr.ph57.split.us ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.x = icmp ult i64 %i.p, 3
  br i1 %i.x, label %.lr.ph63, label %.lr.ph57.split.us.new

.lr.ph57.split.us.new:                            ; preds = %.prol.loopexit, %.lr.ph57.split.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph57.split.us.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.z = getelementptr i8, ptr %i.y, i64 64
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !51
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ab
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = mul nsw i64 %i.k, %i.ab
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ad
  tail call void @llvm.prefetch.p0(ptr %i.ae, i32 0, i32 3, i32 1)
  %i.af = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.ag = getelementptr i8, ptr %i.af, i64 68
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !51
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ai
  tail call void @llvm.prefetch.p0(ptr %i.aj, i32 0, i32 3, i32 1)
  %i.ak = mul nsw i64 %i.k, %i.ai
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ak
  tail call void @llvm.prefetch.p0(ptr %i.al, i32 0, i32 3, i32 1)
  %i.am = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.an = getelementptr i8, ptr %i.am, i64 72
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !51
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ap
  tail call void @llvm.prefetch.p0(ptr %i.aq, i32 0, i32 3, i32 1)
  %i.ar = mul nsw i64 %i.k, %i.ap
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ar
  tail call void @llvm.prefetch.p0(ptr %i.as, i32 0, i32 3, i32 1)
  %i.at = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.au = getelementptr i8, ptr %i.at, i64 76
  %i.av = load i32, ptr %i.au, align 4, !tbaa !51
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [2 x i8], ptr %4, i64 %i.aw
  tail call void @llvm.prefetch.p0(ptr %i.ax, i32 0, i32 3, i32 1)
  %i.ay = mul nsw i64 %i.k, %i.aw
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ay
  tail call void @llvm.prefetch.p0(ptr %i.az, i32 0, i32 3, i32 1)
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.lr.ph63, label %.lr.ph57.split.us.new, !llvm.loop !1437

.preheader:                                       ; preds = %bb.a
  %i.ba = icmp slt i32 %2, %3
  br i1 %i.ba, label %.lr.ph63, label %._crit_edge64

.lr.ph63:                                         ; preds = %.prol.loopexit, %.lr.ph57.split.us.new, %._crit_edge, %.preheader
  %.0.lcssa93 = phi i32 [ %2, %.preheader ], [ %i.c, %._crit_edge ], [ %i.c, %.lr.ph57.split.us.new ], [ %i.c, %.prol.loopexit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load i32, ptr %i.bb, align 8, !tbaa !240 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph63.split.preheader, label %._crit_edge64

.lr.ph63.split.preheader:                         ; preds = %.lr.ph63
  %i.bf = sext i32 %.0.lcssa93 to i64
  %wide.trip.count83 = sext i32 %3 to i64
  br label %.lr.ph63.split

.lr.ph57.split:                                   ; preds = %.lr.ph57.split.preheader, %._crit_edge
  %i.bg = phi i32 [ %i.h, %.lr.ph57.split.preheader ], [ %i.cc, %._crit_edge ] ; 3 uses
  %indvars.iv72 = phi i64 [ %i.j, %.lr.ph57.split.preheader ], [ %indvars.iv.next73, %._crit_edge ] ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv72 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !51
  %i.bj = getelementptr i8, ptr %i.bh, i64 64
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !51
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = getelementptr inbounds [2 x i8], ptr %4, i64 %i.bl
  tail call void @llvm.prefetch.p0(ptr %i.bm, i32 0, i32 3, i32 1)
  %i.bn = sext i32 %i.bg to i64                   ; 2 uses
  %i.bo = mul nsw i64 %i.bn, %i.bl
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bo
  tail call void @llvm.prefetch.p0(ptr %i.bp, i32 0, i32 3, i32 1)
  %i.bq = sext i32 %i.bi to i64                   ; 2 uses
  %i.br = mul nsw i64 %i.bn, %i.bq
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.br
  %i.bt = getelementptr inbounds [2 x i8], ptr %4, i64 %i.bq
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !82 ; 2 uses
  %i.bv = ashr i16 %i.bu, 8
  %i.bw = sext i16 %i.bv to i32
  %i.bx = shl nsw i32 %i.bw, 16
  %i.by = and i16 %i.bu, 255
  %i.bz = zext nneg i16 %i.by to i32
  %i.ca = or disjoint i32 %i.bx, %i.bz
  %i.cb = icmp sgt i32 %i.bg, 0
  br i1 %i.cb, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph57.split
  %i.cc = phi i32 [ %i.bg, %.lr.ph57.split ], [ %i.cn, %.lr.ph ]
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %.lr.ph63, label %.lr.ph57.split, !llvm.loop !1438

.lr.ph:                                           ; preds = %.lr.ph57.split, %.lr.ph
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %.lr.ph ], [ 0, %.lr.ph57.split ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %indvars.iv69
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !82
  %i.cf = zext i16 %i.ce to i32
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv69
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !51
  %i.ci = add i32 %i.ch, %i.cf
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !51
  %i.cm = add nsw i32 %i.ca, %i.cl
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !51
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.cn = load i32, ptr %i.e, align 8, !tbaa !240 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp slt i64 %indvars.iv.next70, %i.co
  br i1 %i.cp, label %.lr.ph, label %._crit_edge, !llvm.loop !1439

.lr.ph63.split:                                   ; preds = %.lr.ph63.split.preheader, %._crit_edge61
  %i.cq = phi i32 [ %i.bd, %.lr.ph63.split.preheader ], [ %i.dg, %._crit_edge61 ] ; 3 uses
  %indvars.iv80 = phi i64 [ %i.bf, %.lr.ph63.split.preheader ], [ %indvars.iv.next81, %._crit_edge61 ] ; 2 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv80
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !51
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  %6 = zext nneg i32 %i.cq to i64
  %i.cu = mul nsw i64 %6, %i.ct
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cu
  %i.cw = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ct
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !82 ; 2 uses
  %i.cy = ashr i16 %i.cx, 8
  %i.cz = sext i16 %i.cy to i32
  %i.da = shl nsw i32 %i.cz, 16
  %i.db = and i16 %i.cx, 255
  %i.dc = zext nneg i16 %i.db to i32
  %i.dd = or disjoint i32 %i.da, %i.dc
  %i.de = icmp sgt i32 %i.cq, 0
  br i1 %i.de, label %.lr.ph60, label %._crit_edge61

.lr.ph60:                                         ; preds = %.lr.ph63.split
  %i.df = load ptr, ptr %i.bc, align 8, !tbaa !234
  br label %bb.b

._crit_edge61:                                    ; preds = %bb.b, %.lr.ph63.split
  %i.dg = phi i32 [ %i.cq, %.lr.ph63.split ], [ %i.dr, %bb.b ]
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %._crit_edge64, label %.lr.ph63.split, !llvm.loop !1440

bb.b:                                             ; preds = %.lr.ph60, %bb.b
  %indvars.iv77 = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next78, %bb.b ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv77
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !82
  %i.dj = zext i16 %i.di to i32
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv77
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !51
  %i.dm = add i32 %i.dl, %i.dj
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.dn ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !51
  %i.dq = add nsw i32 %i.dd, %i.dp
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !51
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %i.dr = load i32, ptr %i.bb, align 8, !tbaa !240 ; 2 uses
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next78, %i.ds
  br i1 %i.dt, label %bb.b, label %._crit_edge61, !llvm.loop !1441

._crit_edge64:                                    ; preds = %._crit_edge61, %.lr.ph63, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK8LightGBM16MultiValDenseBinItE26ConstructHistogramIntInnerILb1ELb1ELb1EiLi16EEEvPKiiiPKfPd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 8 uses
  %i.c = add nsw i32 %3, -16                      ; 6 uses
  %i.d = icmp slt i32 %2, %i.c
  br i1 %i.d, label %.lr.ph55, label %.preheader

.lr.ph55:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load i32, ptr %i.e, align 8, !tbaa !240  ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph55.split.preheader, label %.lr.ph55.split.us

.lr.ph55.split.preheader:                         ; preds = %.lr.ph55
  %i.j = sext i32 %2 to i64
  %wide.trip.count73 = sext i32 %i.c to i64
  br label %.lr.ph55.split

.lr.ph55.split.us:                                ; preds = %.lr.ph55
  %i.k = sext i32 %i.h to i64                     ; 5 uses
  %i.l = sext i32 %2 to i64                       ; 4 uses
  %wide.trip.count = sext i32 %i.c to i64
  %i.m = sext i32 %3 to i64                       ; 2 uses
  %i.n = sub nsw i64 %i.m, %i.l
  %i.o = add nsw i64 %i.m, -17
  %i.p = sub nsw i64 %i.o, %i.l
  %xtraiter = and i64 %i.n, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph55.split.us, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.l, %.lr.ph55.split.us ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph55.split.us ]
  %i.q = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.r = getelementptr i8, ptr %i.q, i64 64
  %i.s = load i32, ptr %i.r, align 4, !tbaa !51
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.k, %i.t
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.u
  tail call void @llvm.prefetch.p0(ptr %i.v, i32 0, i32 3, i32 1)
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1442

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph55.split.us
  %indvars.iv.unr = phi i64 [ %i.l, %.lr.ph55.split.us ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.w = icmp ult i64 %i.p, 3
  br i1 %i.w, label %.lr.ph61, label %.lr.ph55.split.us.new

.lr.ph55.split.us.new:                            ; preds = %.prol.loopexit, %.lr.ph55.split.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph55.split.us.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.y = getelementptr i8, ptr %i.x, i64 64
  %i.z = load i32, ptr %i.y, align 4, !tbaa !51
  %i.aa = sext i32 %i.z to i64
  %i.ab = mul nsw i64 %i.k, %i.aa
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ab
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.ae = getelementptr i8, ptr %i.ad, i64 68
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !51
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %i.k, %i.ag
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ah
  tail call void @llvm.prefetch.p0(ptr %i.ai, i32 0, i32 3, i32 1)
  %i.aj = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.ak = getelementptr i8, ptr %i.aj, i64 72
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !51
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.k, %i.am
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.an
  tail call void @llvm.prefetch.p0(ptr %i.ao, i32 0, i32 3, i32 1)
  %i.ap = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.aq = getelementptr i8, ptr %i.ap, i64 76
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !51
  %i.as = sext i32 %i.ar to i64
  %i.at = mul nsw i64 %i.k, %i.as
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.at
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.lr.ph61, label %.lr.ph55.split.us.new, !llvm.loop !1443

.preheader:                                       ; preds = %bb.a
  %i.av = icmp slt i32 %2, %3
  br i1 %i.av, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %.prol.loopexit, %.lr.ph55.split.us.new, %._crit_edge, %.preheader
  %.0.lcssa91 = phi i32 [ %2, %.preheader ], [ %i.c, %._crit_edge ], [ %i.c, %.lr.ph55.split.us.new ], [ %i.c, %.prol.loopexit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load i32, ptr %i.aw, align 8, !tbaa !240 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph61.split.preheader, label %._crit_edge62

.lr.ph61.split.preheader:                         ; preds = %.lr.ph61
  %i.ba = sext i32 %.0.lcssa91 to i64
  %wide.trip.count81 = sext i32 %3 to i64
  br label %.lr.ph61.split

.lr.ph55.split:                                   ; preds = %.lr.ph55.split.preheader, %._crit_edge
  %i.bb = phi i32 [ %i.h, %.lr.ph55.split.preheader ], [ %i.bw, %._crit_edge ] ; 3 uses
  %indvars.iv70 = phi i64 [ %i.j, %.lr.ph55.split.preheader ], [ %indvars.iv.next71, %._crit_edge ] ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv70 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !51
  %i.be = getelementptr i8, ptr %i.bc, i64 64
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !51
  %i.bg = sext i32 %i.bf to i64
  %i.bh = sext i32 %i.bb to i64                   ; 2 uses
  %i.bi = mul nsw i64 %i.bh, %i.bg
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bi
  tail call void @llvm.prefetch.p0(ptr %i.bj, i32 0, i32 3, i32 1)
  %i.bk = sext i32 %i.bd to i64                   ; 2 uses
  %i.bl = mul nsw i64 %i.bh, %i.bk
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bl
  %i.bn = getelementptr inbounds [2 x i8], ptr %4, i64 %i.bk
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !82 ; 2 uses
  %i.bp = ashr i16 %i.bo, 8
  %i.bq = sext i16 %i.bp to i32
  %i.br = shl nsw i32 %i.bq, 16
  %i.bs = and i16 %i.bo, 255
  %i.bt = zext nneg i16 %i.bs to i32
  %i.bu = or disjoint i32 %i.br, %i.bt
  %i.bv = icmp sgt i32 %i.bb, 0
  br i1 %i.bv, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph55.split
  %i.bw = phi i32 [ %i.bb, %.lr.ph55.split ], [ %i.ch, %.lr.ph ]
  %indvars.iv.next71 = add nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %.lr.ph61, label %.lr.ph55.split, !llvm.loop !1444

.lr.ph:                                           ; preds = %.lr.ph55.split, %.lr.ph
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %.lr.ph ], [ 0, %.lr.ph55.split ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv67
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.bz = zext i16 %i.by to i32
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv67
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !51
  %i.cc = add i32 %i.cb, %i.bz
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !51
  %i.cg = add nsw i32 %i.bu, %i.cf
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !51
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %i.ch = load i32, ptr %i.e, align 8, !tbaa !240 ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp slt i64 %indvars.iv.next68, %i.ci
  br i1 %i.cj, label %.lr.ph, label %._crit_edge, !llvm.loop !1445

.lr.ph61.split:                                   ; preds = %.lr.ph61.split.preheader, %._crit_edge59
  %i.ck = phi i32 [ %i.ay, %.lr.ph61.split.preheader ], [ %i.da, %._crit_edge59 ] ; 3 uses
  %indvars.iv78 = phi i64 [ %i.ba, %.lr.ph61.split.preheader ], [ %indvars.iv.next79, %._crit_edge59 ] ; 2 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv78
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !51
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  %6 = zext nneg i32 %i.ck to i64
  %i.co = mul nsw i64 %6, %i.cn
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.co
  %i.cq = getelementptr inbounds [2 x i8], ptr %4, i64 %i.cn
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !82 ; 2 uses
  %i.cs = ashr i16 %i.cr, 8
  %i.ct = sext i16 %i.cs to i32
  %i.cu = shl nsw i32 %i.ct, 16
  %i.cv = and i16 %i.cr, 255
  %i.cw = zext nneg i16 %i.cv to i32
  %i.cx = or disjoint i32 %i.cu, %i.cw
  %i.cy = icmp sgt i32 %i.ck, 0
  br i1 %i.cy, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.lr.ph61.split
  %i.cz = load ptr, ptr %i.ax, align 8, !tbaa !234
  br label %bb.b

._crit_edge59:                                    ; preds = %bb.b, %.lr.ph61.split
  %i.da = phi i32 [ %i.ck, %.lr.ph61.split ], [ %i.dl, %bb.b ]
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %._crit_edge62, label %.lr.ph61.split, !llvm.loop !1446

bb.b:                                             ; preds = %.lr.ph58, %bb.b
  %indvars.iv75 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next76, %bb.b ] ; 3 uses
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %indvars.iv75
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !82
  %i.dd = zext i16 %i.dc to i32
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv75
  %i.df = load i32, ptr %i.de, align 4, !tbaa !51
  %i.dg = add i32 %i.df, %i.dd
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !51
  %i.dk = add nsw i32 %i.cx, %i.dj
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !51
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %i.dl = load i32, ptr %i.aw, align 8, !tbaa !240 ; 2 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp slt i64 %indvars.iv.next76, %i.dm
  br i1 %i.dn, label %bb.b, label %._crit_edge59, !llvm.loop !1447

._crit_edge62:                                    ; preds = %._crit_edge59, %.lr.ph61, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16MultiValDenseBinItE9CopyInnerILb1ELb0EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %2, ptr %i.a, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr %1, ptr %i.b, align 8, !tbaa !274
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !238
  %i.h = icmp eq i32 %i.g, %3
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 269)
  %.pre = load i32, ptr %i.f, align 8, !tbaa !238
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ %.pre, %bb.b ], [ %3, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.j = tail call i32 @OMP_NUM_THREADS()
  %i.k = add i32 %i.i, 1023
  %i.l = sdiv i32 %i.k, 1024
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 4 uses
  store i32 %.sroa.speculated.i.i, ptr %i.c, align 4, !tbaa !51
  %i.m = icmp sgt i32 %.sroa.speculated.i.i, 1
  br i1 %i.m, label %bb.d, label %_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.n = add i32 %i.i, -1
  %i.o = add i32 %i.n, %.sroa.speculated.i.i
  %i.p = sdiv i32 %i.o, %.sroa.speculated.i.i
  %i.q = add nsw i32 %i.p, 31
  %i.r = sdiv i32 %i.q, 32
  %i.s = shl nsw i32 %i.r, 5
  br label %_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit

_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit: ; preds = %bb.c, %bb.d
  %storemerge.i.i = phi i32 [ %i.s, %bb.d ], [ %i.i, %bb.c ]
  store i32 %storemerge.i.i, ptr %i.d, align 4, !tbaa !51
  %i.t = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.t)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN8LightGBM16MultiValDenseBinItE9CopyInnerILb1ELb0EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIiSaIiEE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM16MultiValDenseBinItE9CopyInnerILb1ELb0EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIiSaIiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree nonnull readnone align 8 captures(none) %7) #18 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !51     ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.f, ptr %i.b, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !51
  %i.h = load i32, ptr %0, align 4, !tbaa !51     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !51
  %i.i = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.f) ; 3 uses
  store i32 %i.i, ptr %i.b, align 4, !tbaa !51
  %i.j = load i32, ptr %i.a, align 4, !tbaa !51   ; 3 uses
  %.not41 = icmp sgt i32 %i.j, %i.i
  br i1 %.not41, label %._crit_edge42, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.k = load i32, ptr %3, align 4, !tbaa !51     ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = load i32, ptr %i.c, align 4, !tbaa !51   ; 3 uses
  %i.q = mul i32 %i.j, %i.k
  %i.r = mul i32 %i.p, %i.k
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.d
  %indvars.iv45 = phi i32 [ %i.q, %.preheader.lr.ph ], [ %indvars.iv.next46, %bb.d ] ; 2 uses
  %i.s = phi i32 [ %i.j, %.preheader.lr.ph ], [ %i.cf, %bb.d ] ; 2 uses
  %i.t = phi i32 [ %i.i, %.preheader.lr.ph ], [ %i.ch, %bb.d ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %._crit_edge39.split
  %indvars.iv47 = phi i32 [ %indvars.iv45, %.preheader ], [ %indvars.iv.next48, %._crit_edge39.split ] ; 2 uses
  %.03140 = phi i32 [ %i.s, %.preheader ], [ %i.ar, %._crit_edge39.split ] ; 3 uses
  %i.u = sext i32 %indvars.iv47 to i64            ; 2 uses
  %i.v = mul nsw i32 %i.k, %.03140                ; 2 uses
  %i.w = add nsw i32 %i.v, %i.k
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.m) ; 2 uses
  %i.x = icmp slt i32 %i.v, %.sroa.speculated
  br i1 %i.x, label %.lr.ph38, label %._crit_edge39.split

.lr.ph38:                                         ; preds = %bb.c
  %i.y = load i32, ptr %i.n, align 8, !tbaa !240  ; 5 uses
  %i.z = sext i32 %i.y to i64                     ; 3 uses
  %i.aa = load ptr, ptr %5, align 8, !tbaa !274   ; 2 uses
  %i.ab = load ptr, ptr %6, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !240
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = icmp sgt i32 %i.y, 0
  br i1 %i.af, label %.lr.ph38.split, label %._crit_edge39.split

.lr.ph38.split:                                   ; preds = %.lr.ph38
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !104 ; 2 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !104 ; 2 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = sext i32 %.sroa.speculated to i64
  %wide.trip.count = zext nneg i32 %i.y to i64    ; 8 uses
  %i.am = shl nuw nsw i64 %i.z, 1
  %i.an = shl nuw nsw i64 %i.z, 1
  %i.ao = mul nsw i64 %i.an, %i.u
  %i.ap = add i64 %i.ao, %i.ak
  %min.iters.check = icmp ult i32 %i.y, 4
  %min.iters.check57 = icmp ult i32 %i.y, 16
  %i.aq = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.aq, 0
  %n.vec59 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n63 = icmp eq i64 %n.vec59, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

._crit_edge39.split:                              ; preds = %._crit_edge, %.lr.ph38, %bb.c
  %i.ar = add nsw i32 %.03140, 1
  %.not33.not = icmp slt i32 %.03140, %i.t
  %indvars.iv.next48 = add i32 %indvars.iv47, %i.k
  br i1 %.not33.not, label %bb.c, label %bb.d

iter.check:                                       ; preds = %.lr.ph38.split, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph38.split ], [ %indvar.next, %._crit_edge ] ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNK8LightGBM16MultiValDenseBinIjE26ConstructHistogramIntInnerILb1ELb1ELb1ElLi32EEEvPKiiiPKfPd:bb.a
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !51
  %i.dx = add i32 %i.dw, %i.du
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.dy ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !84
  %i.eb = add nsw i64 %i.dj, %i.ea
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !84
  %indvars.iv.next74 = or disjoint i64 %indvars.iv73, 1 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next74
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !51
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next74
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !51
  %i.eg = add i32 %i.ef, %i.ed
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.eh ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !84
  %i.ek = add nsw i64 %i.dj, %i.ej
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !84
  %indvars.iv.next74.1 = add nuw nsw i64 %indvars.iv73, 2 ; 2 uses
  %niter100.next.1 = add i64 %niter100, 2         ; 2 uses
  %niter100.ncmp.1 = icmp eq i64 %niter100.next.1, %unroll_iter99
  br i1 %niter100.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !1481

._crit_edge59.split:                              ; preds = %._crit_edge, %.lr.ph58, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK8LightGBM16MultiValDenseBinIjE26ConstructHistogramIntInnerILb1ELb1ELb0EiLi16EEEvPKiiiPKfPd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 8 uses
  %i.c = add nsw i32 %3, -8                       ; 6 uses
  %i.d = icmp slt i32 %2, %i.c
  br i1 %i.d, label %.lr.ph57, label %.preheader

.lr.ph57:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load i32, ptr %i.e, align 8, !tbaa !244  ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph57.split.preheader, label %.lr.ph57.split.us

.lr.ph57.split.preheader:                         ; preds = %.lr.ph57
  %i.j = sext i32 %2 to i64
  %wide.trip.count75 = sext i32 %i.c to i64
  br label %.lr.ph57.split

.lr.ph57.split.us:                                ; preds = %.lr.ph57
  %i.k = sext i32 %i.h to i64                     ; 5 uses
  %i.l = sext i32 %2 to i64                       ; 4 uses
  %wide.trip.count = sext i32 %i.c to i64
  %i.m = sext i32 %3 to i64                       ; 2 uses
  %i.n = sub nsw i64 %i.m, %i.l
  %i.o = add nsw i64 %i.m, -9
  %i.p = sub nsw i64 %i.o, %i.l
  %xtraiter = and i64 %i.n, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph57.split.us, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.l, %.lr.ph57.split.us ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph57.split.us ]
  %i.q = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.r = getelementptr i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 4, !tbaa !51
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds [2 x i8], ptr %4, i64 %i.t
  tail call void @llvm.prefetch.p0(ptr %i.u, i32 0, i32 3, i32 1)
  %i.v = mul nsw i64 %i.k, %i.t
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.v
  tail call void @llvm.prefetch.p0(ptr %i.w, i32 0, i32 3, i32 1)
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1482

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph57.split.us
  %indvars.iv.unr = phi i64 [ %i.l, %.lr.ph57.split.us ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.x = icmp ult i64 %i.p, 3
  br i1 %i.x, label %.lr.ph63, label %.lr.ph57.split.us.new

.lr.ph57.split.us.new:                            ; preds = %.prol.loopexit, %.lr.ph57.split.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph57.split.us.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.z = getelementptr i8, ptr %i.y, i64 32
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !51
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ab
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = mul nsw i64 %i.k, %i.ab
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ad
  tail call void @llvm.prefetch.p0(ptr %i.ae, i32 0, i32 3, i32 1)
  %i.af = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.ag = getelementptr i8, ptr %i.af, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !51
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ai
  tail call void @llvm.prefetch.p0(ptr %i.aj, i32 0, i32 3, i32 1)
  %i.ak = mul nsw i64 %i.k, %i.ai
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ak
  tail call void @llvm.prefetch.p0(ptr %i.al, i32 0, i32 3, i32 1)
  %i.am = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.an = getelementptr i8, ptr %i.am, i64 40
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !51
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ap
  tail call void @llvm.prefetch.p0(ptr %i.aq, i32 0, i32 3, i32 1)
  %i.ar = mul nsw i64 %i.k, %i.ap
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ar
  tail call void @llvm.prefetch.p0(ptr %i.as, i32 0, i32 3, i32 1)
  %i.at = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.au = getelementptr i8, ptr %i.at, i64 44
  %i.av = load i32, ptr %i.au, align 4, !tbaa !51
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [2 x i8], ptr %4, i64 %i.aw
  tail call void @llvm.prefetch.p0(ptr %i.ax, i32 0, i32 3, i32 1)
  %i.ay = mul nsw i64 %i.k, %i.aw
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ay
  tail call void @llvm.prefetch.p0(ptr %i.az, i32 0, i32 3, i32 1)
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.lr.ph63, label %.lr.ph57.split.us.new, !llvm.loop !1483

.preheader:                                       ; preds = %bb.a
  %i.ba = icmp slt i32 %2, %3
  br i1 %i.ba, label %.lr.ph63, label %._crit_edge64

.lr.ph63:                                         ; preds = %.prol.loopexit, %.lr.ph57.split.us.new, %._crit_edge, %.preheader
  %.0.lcssa93 = phi i32 [ %2, %.preheader ], [ %i.c, %._crit_edge ], [ %i.c, %.lr.ph57.split.us.new ], [ %i.c, %.prol.loopexit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load i32, ptr %i.bb, align 8, !tbaa !244 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph63.split.preheader, label %._crit_edge64

.lr.ph63.split.preheader:                         ; preds = %.lr.ph63
  %i.bf = sext i32 %.0.lcssa93 to i64
  %wide.trip.count83 = sext i32 %3 to i64
  br label %.lr.ph63.split

.lr.ph57.split:                                   ; preds = %.lr.ph57.split.preheader, %._crit_edge
  %i.bg = phi i32 [ %i.h, %.lr.ph57.split.preheader ], [ %i.cc, %._crit_edge ] ; 3 uses
  %indvars.iv72 = phi i64 [ %i.j, %.lr.ph57.split.preheader ], [ %indvars.iv.next73, %._crit_edge ] ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv72 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !51
  %i.bj = getelementptr i8, ptr %i.bh, i64 32
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !51
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = getelementptr inbounds [2 x i8], ptr %4, i64 %i.bl
  tail call void @llvm.prefetch.p0(ptr %i.bm, i32 0, i32 3, i32 1)
  %i.bn = sext i32 %i.bg to i64                   ; 2 uses
  %i.bo = mul nsw i64 %i.bn, %i.bl
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bo
  tail call void @llvm.prefetch.p0(ptr %i.bp, i32 0, i32 3, i32 1)
  %i.bq = sext i32 %i.bi to i64                   ; 2 uses
  %i.br = mul nsw i64 %i.bn, %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.br
  %i.bt = getelementptr inbounds [2 x i8], ptr %4, i64 %i.bq
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !82 ; 2 uses
  %i.bv = ashr i16 %i.bu, 8
  %i.bw = sext i16 %i.bv to i32
  %i.bx = shl nsw i32 %i.bw, 16
  %i.by = and i16 %i.bu, 255
  %i.bz = zext nneg i16 %i.by to i32
  %i.ca = or disjoint i32 %i.bx, %i.bz
  %i.cb = icmp sgt i32 %i.bg, 0
  br i1 %i.cb, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph57.split
  %i.cc = phi i32 [ %i.bg, %.lr.ph57.split ], [ %i.cm, %.lr.ph ]
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %.lr.ph63, label %.lr.ph57.split, !llvm.loop !1484

.lr.ph:                                           ; preds = %.lr.ph57.split, %.lr.ph
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %.lr.ph ], [ 0, %.lr.ph57.split ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv69
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !51
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv69
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !51
  %i.ch = add i32 %i.cg, %i.ce
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !51
  %i.cl = add nsw i32 %i.ca, %i.ck
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !51
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.cm = load i32, ptr %i.e, align 8, !tbaa !244 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next70, %i.cn
  br i1 %i.co, label %.lr.ph, label %._crit_edge, !llvm.loop !1485

.lr.ph63.split:                                   ; preds = %.lr.ph63.split.preheader, %._crit_edge61
  %i.cp = phi i32 [ %i.bd, %.lr.ph63.split.preheader ], [ %i.df, %._crit_edge61 ] ; 3 uses
  %indvars.iv80 = phi i64 [ %i.bf, %.lr.ph63.split.preheader ], [ %indvars.iv.next81, %._crit_edge61 ] ; 2 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv80
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !51
  %i.cs = sext i32 %i.cr to i64                   ; 2 uses
  %6 = zext nneg i32 %i.cp to i64
  %i.ct = mul nsw i64 %6, %i.cs
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ct
  %i.cv = getelementptr inbounds [2 x i8], ptr %4, i64 %i.cs
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !82 ; 2 uses
  %i.cx = ashr i16 %i.cw, 8
  %i.cy = sext i16 %i.cx to i32
  %i.cz = shl nsw i32 %i.cy, 16
  %i.da = and i16 %i.cw, 255
  %i.db = zext nneg i16 %i.da to i32
  %i.dc = or disjoint i32 %i.cz, %i.db
  %i.dd = icmp sgt i32 %i.cp, 0
  br i1 %i.dd, label %.lr.ph60, label %._crit_edge61

.lr.ph60:                                         ; preds = %.lr.ph63.split
  %i.de = load ptr, ptr %i.bc, align 8, !tbaa !234
  br label %bb.b

._crit_edge61:                                    ; preds = %bb.b, %.lr.ph63.split
  %i.df = phi i32 [ %i.cp, %.lr.ph63.split ], [ %i.dp, %bb.b ]
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %._crit_edge64, label %.lr.ph63.split, !llvm.loop !1486

bb.b:                                             ; preds = %.lr.ph60, %bb.b
  %indvars.iv77 = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next78, %bb.b ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv77
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !51
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv77
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !51
  %i.dk = add i32 %i.dj, %i.dh
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.dl ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !51
  %i.do = add nsw i32 %i.dc, %i.dn
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !51
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %i.dp = load i32, ptr %i.bb, align 8, !tbaa !244 ; 2 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv.next78, %i.dq
  br i1 %i.dr, label %bb.b, label %._crit_edge61, !llvm.loop !1487

._crit_edge64:                                    ; preds = %._crit_edge61, %.lr.ph63, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK8LightGBM16MultiValDenseBinIjE26ConstructHistogramIntInnerILb1ELb1ELb1EiLi16EEEvPKiiiPKfPd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 8 uses
  %i.c = add nsw i32 %3, -8                       ; 6 uses
  %i.d = icmp slt i32 %2, %i.c
  br i1 %i.d, label %.lr.ph55, label %.preheader

.lr.ph55:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load i32, ptr %i.e, align 8, !tbaa !244  ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph55.split.preheader, label %.lr.ph55.split.us

.lr.ph55.split.preheader:                         ; preds = %.lr.ph55
  %i.j = sext i32 %2 to i64
  %wide.trip.count73 = sext i32 %i.c to i64
  br label %.lr.ph55.split

.lr.ph55.split.us:                                ; preds = %.lr.ph55
  %i.k = sext i32 %i.h to i64                     ; 5 uses
  %i.l = sext i32 %2 to i64                       ; 4 uses
  %wide.trip.count = sext i32 %i.c to i64
  %i.m = sext i32 %3 to i64                       ; 2 uses
  %i.n = sub nsw i64 %i.m, %i.l
  %i.o = add nsw i64 %i.m, -9
  %i.p = sub nsw i64 %i.o, %i.l
  %xtraiter = and i64 %i.n, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph55.split.us, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.l, %.lr.ph55.split.us ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph55.split.us ]
  %i.q = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.r = getelementptr i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 4, !tbaa !51
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.k, %i.t
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.u
  tail call void @llvm.prefetch.p0(ptr %i.v, i32 0, i32 3, i32 1)
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1488

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph55.split.us
  %indvars.iv.unr = phi i64 [ %i.l, %.lr.ph55.split.us ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.w = icmp ult i64 %i.p, 3
  br i1 %i.w, label %.lr.ph61, label %.lr.ph55.split.us.new

.lr.ph55.split.us.new:                            ; preds = %.prol.loopexit, %.lr.ph55.split.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph55.split.us.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.y = getelementptr i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 4, !tbaa !51
  %i.aa = sext i32 %i.z to i64
  %i.ab = mul nsw i64 %i.k, %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ab
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.ae = getelementptr i8, ptr %i.ad, i64 36
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !51
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %i.k, %i.ag
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ah
  tail call void @llvm.prefetch.p0(ptr %i.ai, i32 0, i32 3, i32 1)
  %i.aj = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.ak = getelementptr i8, ptr %i.aj, i64 40
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !51
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.k, %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.an
  tail call void @llvm.prefetch.p0(ptr %i.ao, i32 0, i32 3, i32 1)
  %i.ap = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.aq = getelementptr i8, ptr %i.ap, i64 44
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !51
  %i.as = sext i32 %i.ar to i64
  %i.at = mul nsw i64 %i.k, %i.as
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.at
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.lr.ph61, label %.lr.ph55.split.us.new, !llvm.loop !1489

.preheader:                                       ; preds = %bb.a
  %i.av = icmp slt i32 %2, %3
  br i1 %i.av, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %.prol.loopexit, %.lr.ph55.split.us.new, %._crit_edge, %.preheader
  %.0.lcssa91 = phi i32 [ %2, %.preheader ], [ %i.c, %._crit_edge ], [ %i.c, %.lr.ph55.split.us.new ], [ %i.c, %.prol.loopexit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load i32, ptr %i.aw, align 8, !tbaa !244 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph61.split.preheader, label %._crit_edge62

.lr.ph61.split.preheader:                         ; preds = %.lr.ph61
  %i.ba = sext i32 %.0.lcssa91 to i64
  %wide.trip.count81 = sext i32 %3 to i64
  br label %.lr.ph61.split

.lr.ph55.split:                                   ; preds = %.lr.ph55.split.preheader, %._crit_edge
  %i.bb = phi i32 [ %i.h, %.lr.ph55.split.preheader ], [ %i.bw, %._crit_edge ] ; 3 uses
  %indvars.iv70 = phi i64 [ %i.j, %.lr.ph55.split.preheader ], [ %indvars.iv.next71, %._crit_edge ] ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv70 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !51
  %i.be = getelementptr i8, ptr %i.bc, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !51
  %i.bg = sext i32 %i.bf to i64
  %i.bh = sext i32 %i.bb to i64                   ; 2 uses
  %i.bi = mul nsw i64 %i.bh, %i.bg
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bi
  tail call void @llvm.prefetch.p0(ptr %i.bj, i32 0, i32 3, i32 1)
  %i.bk = sext i32 %i.bd to i64                   ; 2 uses
  %i.bl = mul nsw i64 %i.bh, %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bl
  %i.bn = getelementptr inbounds [2 x i8], ptr %4, i64 %i.bk
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !82 ; 2 uses
  %i.bp = ashr i16 %i.bo, 8
  %i.bq = sext i16 %i.bp to i32
  %i.br = shl nsw i32 %i.bq, 16
  %i.bs = and i16 %i.bo, 255
  %i.bt = zext nneg i16 %i.bs to i32
  %i.bu = or disjoint i32 %i.br, %i.bt
  %i.bv = icmp sgt i32 %i.bb, 0
  br i1 %i.bv, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph55.split
  %i.bw = phi i32 [ %i.bb, %.lr.ph55.split ], [ %i.cg, %.lr.ph ]
  %indvars.iv.next71 = add nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %.lr.ph61, label %.lr.ph55.split, !llvm.loop !1490

.lr.ph:                                           ; preds = %.lr.ph55.split, %.lr.ph
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %.lr.ph ], [ 0, %.lr.ph55.split ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv67
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !51
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv67
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !51
  %i.cb = add i32 %i.ca, %i.by
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !51
  %i.cf = add nsw i32 %i.bu, %i.ce
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !51
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %i.cg = load i32, ptr %i.e, align 8, !tbaa !244 ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp slt i64 %indvars.iv.next68, %i.ch
  br i1 %i.ci, label %.lr.ph, label %._crit_edge, !llvm.loop !1491

.lr.ph61.split:                                   ; preds = %.lr.ph61.split.preheader, %._crit_edge59
  %i.cj = phi i32 [ %i.ay, %.lr.ph61.split.preheader ], [ %i.cz, %._crit_edge59 ] ; 3 uses
  %indvars.iv78 = phi i64 [ %i.ba, %.lr.ph61.split.preheader ], [ %indvars.iv.next79, %._crit_edge59 ] ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv78
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !51
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  %6 = zext nneg i32 %i.cj to i64
  %i.cn = mul nsw i64 %6, %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cn
  %i.cp = getelementptr inbounds [2 x i8], ptr %4, i64 %i.cm
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !82 ; 2 uses
  %i.cr = ashr i16 %i.cq, 8
  %i.cs = sext i16 %i.cr to i32
  %i.ct = shl nsw i32 %i.cs, 16
  %i.cu = and i16 %i.cq, 255
  %i.cv = zext nneg i16 %i.cu to i32
  %i.cw = or disjoint i32 %i.ct, %i.cv
  %i.cx = icmp sgt i32 %i.cj, 0
  br i1 %i.cx, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.lr.ph61.split
  %i.cy = load ptr, ptr %i.ax, align 8, !tbaa !234
  br label %bb.b

._crit_edge59:                                    ; preds = %bb.b, %.lr.ph61.split
  %i.cz = phi i32 [ %i.cj, %.lr.ph61.split ], [ %i.dj, %bb.b ]
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %._crit_edge62, label %.lr.ph61.split, !llvm.loop !1492

bb.b:                                             ; preds = %.lr.ph58, %bb.b
  %indvars.iv75 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next76, %bb.b ] ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv75
  %i.db = load i32, ptr %i.da, align 4, !tbaa !51
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv75
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !51
  %i.de = add i32 %i.dd, %i.db
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.df ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !51
  %i.di = add nsw i32 %i.cw, %i.dh
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !51
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %i.dj = load i32, ptr %i.aw, align 8, !tbaa !244 ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv.next76, %i.dk
  br i1 %i.dl, label %bb.b, label %._crit_edge59, !llvm.loop !1493

._crit_edge62:                                    ; preds = %._crit_edge59, %.lr.ph61, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16MultiValDenseBinIjE9CopyInnerILb1ELb0EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %2, ptr %i.a, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr %1, ptr %i.b, align 8, !tbaa !276
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !242
  %i.h = icmp eq i32 %i.g, %3
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 269)
  %.pre = load i32, ptr %i.f, align 8, !tbaa !242
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ %.pre, %bb.b ], [ %3, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.j = tail call i32 @OMP_NUM_THREADS()
  %i.k = add i32 %i.i, 1023
  %i.l = sdiv i32 %i.k, 1024
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 4 uses
  store i32 %.sroa.speculated.i.i, ptr %i.c, align 4, !tbaa !51
  %i.m = icmp sgt i32 %.sroa.speculated.i.i, 1
  br i1 %i.m, label %bb.d, label %_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.n = add i32 %i.i, -1
  %i.o = add i32 %i.n, %.sroa.speculated.i.i
  %i.p = sdiv i32 %i.o, %.sroa.speculated.i.i
  %i.q = add nsw i32 %i.p, 31
  %i.r = sdiv i32 %i.q, 32
  %i.s = shl nsw i32 %i.r, 5
  br label %_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit

_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit: ; preds = %bb.c, %bb.d
  %storemerge.i.i = phi i32 [ %i.s, %bb.d ], [ %i.i, %bb.c ]
  store i32 %storemerge.i.i, ptr %i.d, align 4, !tbaa !51
  %i.t = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.t)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN8LightGBM16MultiValDenseBinIjE9CopyInnerILb1ELb0EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIiSaIiEE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM16MultiValDenseBinIjE9CopyInnerILb1ELb0EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIiSaIiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree nonnull readnone align 8 captures(none) %7) #18 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !51     ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.f, ptr %i.b, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !51
  %i.h = load i32, ptr %0, align 4, !tbaa !51     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !51
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.f) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !51
  %i.k = load i32, ptr %i.a, align 4, !tbaa !51   ; 2 uses
  %.not44 = icmp sgt i32 %i.k, %i.j
  br i1 %.not44, label %._crit_edge45, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge43
  %i.o = phi i32 [ %i.j, %.preheader.lr.ph ], [ %i.bg, %._crit_edge43 ] ; 3 uses
  %i.p = phi i32 [ %i.k, %.preheader.lr.ph ], [ %i.be, %._crit_edge43 ] ; 3 uses
  %.not3340 = icmp sgt i32 %i.p, %i.o
  br i1 %.not3340, label %._crit_edge43, label %.lr.ph42

.lr.ph42:                                         ; preds = %.preheader, %._crit_edge39
  %i.q = phi i32 [ %i.ae, %._crit_edge39 ], [ %i.o, %.preheader ] ; 2 uses
  %.03141 = phi i32 [ %i.af, %._crit_edge39 ], [ %i.p, %.preheader ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !51     ; 2 uses
  %i.s = mul nsw i32 %i.r, %.03141                ; 3 uses
  %i.t = add nsw i32 %i.s, %i.r
  %i.u = load i32, ptr %i.l, align 4, !tbaa !51
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.u) ; 2 uses
  %i.v = icmp slt i32 %i.s, %.sroa.speculated
  br i1 %i.v, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %.lr.ph42
  %i.w = load ptr, ptr %5, align 8, !tbaa !276    ; 2 uses
  %i.x = load ptr, ptr %6, align 8, !tbaa !64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !244 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph38.split.preheader, label %._crit_edge39

.lr.ph38.split.preheader:                         ; preds = %.lr.ph38
  %i.ac = sext i32 %i.s to i64
  %i.ad = sext i32 %.sroa.speculated to i64
  br label %.lr.ph38.split

._crit_edge39.loopexit:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !51
  br label %._crit_edge39

._crit_edge39:                                    ; preds = %.lr.ph38, %._crit_edge39.loopexit, %.lr.ph42
  %i.ae = phi i32 [ %i.q, %.lr.ph42 ], [ %.pre, %._crit_edge39.loopexit ], [ %i.q, %.lr.ph38 ] ; 3 uses
  %i.af = add nsw i32 %.03141, 1
  %.not33.not = icmp slt i32 %.03141, %i.ae
  br i1 %.not33.not, label %.lr.ph42, label %._crit_edge43.loopexit

.lr.ph38.split:                                   ; preds = %.lr.ph38.split.preheader, %._crit_edge
  %i.ag = phi i32 [ %i.aa, %.lr.ph38.split.preheader ], [ %i.au, %._crit_edge ] ; 3 uses
  %indvars.iv49 = phi i64 [ %i.ac, %.lr.ph38.split.preheader ], [ %indvars.iv.next50, %._crit_edge ] ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph38.split
  %i.ai = load i32, ptr %i.y, align 8, !tbaa !244
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv49
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !51
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.aj, %i.am
  %i.ao = zext nneg i32 %i.ag to i64
  %i.ap = mul nsw i64 %indvars.iv49, %i.ao
  %i.aq = load ptr, ptr %i.z, align 8, !tbaa !120
  %i.ar = getelementptr [4 x i8], ptr %i.aq, i64 %i.an
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !120
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ap
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.lr.ph38.split
  %i.au = phi i32 [ %i.ag, %.lr.ph38.split ], [ %i.az, %bb.c ]
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, 1 ; 2 uses
end_hunk_5
