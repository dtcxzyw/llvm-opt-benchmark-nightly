Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/paulilogic?download=true
inline.NumInlined: 250
inline.NumDeleted: 118
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z19paulis_containsXOrY11PauliStrSum:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_Z23paulis_getTargetBitMask11PauliStrSum(ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  br label %bb.b

._crit_edge:                                      ; preds = %_Z23paulis_getTargetBitMask8PauliStr.exit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.0.lcssa.i, %_Z23paulis_getTargetBitMask8PauliStr.exit ]
  ret i64 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %_Z23paulis_getTargetBitMask8PauliStr.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_Z23paulis_getTargetBitMask8PauliStr.exit ] ; 2 uses
  %.08 = phi i64 [ 0, %.lr.ph ], [ %.0.lcssa.i, %_Z23paulis_getTargetBitMask8PauliStr.exit ] ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 8, !tbaa !15 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !15 ; 5 uses
  %i.f = icmp eq i64 %.sroa.2.0.copyload, 0       ; 3 uses
  %i.g = select i1 %i.f, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload ; 2 uses
  %.not7.i.i = icmp eq i64 %i.g, 0
  br i1 %.not7.i.i, label %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.h = select i1 %i.f, i32 0, i32 32
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.09.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ %i.g, %.lr.ph.i.i.preheader ]
  %.068.i.i = phi i32 [ %i.j, %.lr.ph.i.i ], [ %i.h, %.lr.ph.i.i.preheader ]
  %i.i = lshr i64 %.09.i.i, 2                     ; 2 uses
  %i.j = add nuw nsw i32 %.068.i.i, 1             ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %.lr.ph.preheader.i.loopexit, label %.lr.ph.i.i, !llvm.loop !0

_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i: ; preds = %bb.b
  br i1 %i.f, label %_Z23paulis_getTargetBitMask8PauliStr.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i.loopexit:                      ; preds = %.lr.ph.i.i
  %i.k = zext nneg i32 %i.j to i64
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.loopexit, %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i
  %.06.lcssa.i20.i = phi i64 [ 32, %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i ], [ %i.k, %.lr.ph.preheader.i.loopexit ] ; 4 uses
  %xtraiter = and i64 %.06.lcssa.i20.i, 1
  %i.l = icmp eq i64 %.06.lcssa.i20.i, 1
  br i1 %i.l, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %.06.lcssa.i20.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 7 uses
  %.016.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %.1.i.1, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.m = icmp samesign ult i64 %indvars.iv.i, 32  ; 2 uses
  %i.n = shl nuw nsw i64 %indvars.iv.i, 1         ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 4294967232
  %.sink4.i.i = select i1 %i.m, i64 %i.n, i64 %i.o
  %.sink.i.i = select i1 %i.m, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload
  %i.p = and i64 %.sink4.i.i, 4294967292
  %i.q = ashr i64 %.sink.i.i, %i.p
  %i.r = and i64 %i.q, 3
  %.not13.i = icmp eq i64 %i.r, 0
  %i.s = shl nuw i64 1, %indvars.iv.i
  %i.t = select i1 %.not13.i, i64 0, i64 %i.s
  %.1.i = xor i64 %i.t, %.016.i
  %i.u = icmp samesign ult i64 %indvars.iv.i, 32  ; 2 uses
  %indvars.iv.next.i = shl nuw i64 %indvars.iv.i, 1 ; 2 uses
  %i.v = or disjoint i64 %indvars.iv.next.i, 2
  %i.w = add nuw nsw i64 %indvars.iv.next.i, 4294967234
  %.sink4.i.i.1 = select i1 %i.u, i64 %i.v, i64 %i.w
  %.sink.i.i.1 = select i1 %i.u, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload
  %i.x = and i64 %.sink4.i.i.1, 4294967294
  %i.y = ashr i64 %.sink.i.i.1, %i.x
  %i.z = and i64 %i.y, 3
  %.not13.i.1 = icmp eq i64 %i.z, 0
  %i.aa = shl nuw i64 2, %indvars.iv.i
  %i.ab = select i1 %.not13.i.1, i64 0, i64 %i.aa
  %.1.i.1 = xor i64 %i.ab, %.1.i                  ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z23paulis_getTargetBitMask8PauliStr.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2

_Z23paulis_getTargetBitMask8PauliStr.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z23paulis_getTargetBitMask8PauliStr.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_Z23paulis_getTargetBitMask8PauliStr.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %_Z23paulis_getTargetBitMask8PauliStr.exit.loopexit.unr-lcssa ] ; 3 uses
  %.016.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %.1.i.1, %_Z23paulis_getTargetBitMask8PauliStr.exit.loopexit.unr-lcssa ]
  %lcmp.mod13 = trunc i64 %.06.lcssa.i20.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.ac = icmp samesign ult i64 %indvars.iv.i.epil.init, 32 ; 2 uses
  %i.ad = shl nuw nsw i64 %indvars.iv.i.epil.init, 1 ; 2 uses
  %i.ae = add nuw nsw i64 %i.ad, 4294967232
  %.sink4.i.i.epil = select i1 %i.ac, i64 %i.ad, i64 %i.ae
  %.sink.i.i.epil = select i1 %i.ac, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload
  %i.af = and i64 %.sink4.i.i.epil, 4294967294
  %i.ag = ashr i64 %.sink.i.i.epil, %i.af
  %i.ah = and i64 %i.ag, 3
  %.not13.i.epil = icmp eq i64 %i.ah, 0
  %i.ai = shl nuw i64 1, %indvars.iv.i.epil.init
  %i.aj = select i1 %.not13.i.epil, i64 0, i64 %i.ai
  %.1.i.epil = xor i64 %i.aj, %.016.i.epil.init
  br label %_Z23paulis_getTargetBitMask8PauliStr.exit.loopexit

_Z23paulis_getTargetBitMask8PauliStr.exit.loopexit: ; preds = %_Z23paulis_getTargetBitMask8PauliStr.exit.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.1.i.lcssa = phi i64 [ %.1.i.1, %_Z23paulis_getTargetBitMask8PauliStr.exit.loopexit.unr-lcssa ], [ %.1.i.epil, %.lr.ph.i.epil.preheader ]
  %i.ak = or i64 %.1.i.lcssa, %.08
  br label %_Z23paulis_getTargetBitMask8PauliStr.exit

_Z23paulis_getTargetBitMask8PauliStr.exit:        ; preds = %_Z23paulis_getTargetBitMask8PauliStr.exit.loopexit, %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i
  %.0.lcssa.i = phi i64 [ %.08, %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i ], [ %i.ak, %_Z23paulis_getTargetBitMask8PauliStr.exit.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !49
}

; Function Attrs: mustprogress uwtable
define void @_Z53paulis_setPauliStrSumToScaledTensorProdOfConjWithSelf11PauliStrSumdS_i(ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %0, double noundef %1, ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %.sroa.039.0.copyload = load i64, ptr %2, align 8, !tbaa !15 ; 6 uses
  %.sroa.2.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload41 = load ptr, ptr %.sroa.2.0..sroa_idx40, align 8, !tbaa !34 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.a = icmp sgt i64 %.sroa.039.0.copyload, 0    ; 2 uses
  br i1 %i.a, label %.lr.ph.i.i, label %_Z38paulis_getIndOfLefmostNonIdentityPauli11PauliStrSum.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i.i
  %.011.i.i = phi i32 [ %spec.select.i.i, %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i.i ], [ 0, %bb.a ]
  %.0810.i.i = phi i64 [ %i.i, %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.sroa.2.0.copyload41, i64 %.0810.i.i ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !15 ; 2 uses
  %i.c = icmp eq i64 %.sroa.2.0.copyload.i.i, 0   ; 2 uses
  %i.d = select i1 %i.c, i32 0, i32 32            ; 2 uses
  %i.e = select i1 %i.c, i64 %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i ; 2 uses
  %.not7.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not7.i.i.i, label %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.f, %.lr.ph.i.i.i ], [ %i.e, %.lr.ph.i.i ]
  %.068.i.i.i = phi i32 [ %i.g, %.lr.ph.i.i.i ], [ %i.d, %.lr.ph.i.i ]
  %i.f = lshr i64 %.09.i.i.i, 2                   ; 2 uses
  %i.g = add nuw nsw i32 %.068.i.i.i, 1           ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i
  %.06.lcssa.i.i.i = phi i32 [ %i.d, %.lr.ph.i.i ], [ %i.g, %.lr.ph.i.i.i ]
  %i.h = add nsw i32 %.06.lcssa.i.i.i, -1
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %.011.i.i) ; 2 uses
  %i.i = add nuw nsw i64 %.0810.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.i, %.sroa.039.0.copyload
  br i1 %exitcond.not.i.i, label %_Z38paulis_getIndOfLefmostNonIdentityPauli11PauliStrSum.exit, label %.lr.ph.i.i, !llvm.loop !1

_Z38paulis_getIndOfLefmostNonIdentityPauli11PauliStrSum.exit: ; preds = %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %spec.select.i.i, %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i.i ]
  %.not = icmp slt i32 %.0.lcssa.i.i, %3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_Z38paulis_getIndOfLefmostNonIdentityPauli11PauliStrSum.exit
  tail call void @_Z55error_pauliStrSumHasMoreQubitsThanSpecifiedInTensorProdv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_Z38paulis_getIndOfLefmostNonIdentityPauli11PauliStrSum.exit
  %i.j = load i64, ptr %0, align 8, !tbaa !33
  %i.k = mul nsw i64 %.sroa.039.0.copyload, %.sroa.039.0.copyload
  %.not23 = icmp eq i64 %i.j, %i.k
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_Z47error_pauliStrSumTensorProdHasIncorrectNumTermsv()
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge46.split

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.l = add i32 %3, -32
  %or.cond.i.i = icmp ult i32 %i.l, -31
  %i.m = shl nsw i32 %3, 1                        ; 2 uses
  %i.n = sub i32 64, %i.m
  %i.o = zext nneg i32 %i.n to i64
  %i.p = zext nneg i32 %i.m to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %4 = insertelement <2 x double> poison, double %1, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = insertelement <2 x i64> poison, i64 %i.p, i64 0
  %i.w = shufflevector <2 x i64> %i.v, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.045 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.cf, %._crit_edge ]
  %.02144 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.aa, %._crit_edge ] ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.sroa.2.0.copyload41, i64 %.02144 ; 4 uses
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.02144 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  br label %bb.f

._crit_edge46.split:                              ; preds = %._crit_edge, %bb.e
  ret void

._crit_edge:                                      ; preds = %_ZmlRKSt7complexIdERKi.exit
  %i.aa = add nuw nsw i64 %.02144, 1              ; 2 uses
  %exitcond48.not = icmp eq i64 %i.aa, %.sroa.039.0.copyload
  br i1 %exitcond48.not, label %._crit_edge46.split, label %.preheader, !llvm.loop !50

bb.f:                                             ; preds = %.preheader, %_ZmlRKSt7complexIdERKi.exit
  %.143 = phi i64 [ %.045, %.preheader ], [ %i.cf, %_ZmlRKSt7complexIdERKi.exit ] ; 3 uses
  %.02242 = phi i64 [ 0, %.preheader ], [ %i.cg, %_ZmlRKSt7complexIdERKi.exit ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.2.0.copyload41, i64 %.02242
  %i.ac = load <2 x i64>, ptr %i.x, align 8, !tbaa !15
  %.sroa.04.0.copyload = load i64, ptr %i.x, align 8, !tbaa !15
  %i.ad = load <2 x i64>, ptr %i.ab, align 8, !tbaa !15
  br i1 %or.cond.i.i, label %bb.g, label %_Z30paulis_getTensorProdOfPauliStr8PauliStrS_i.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Z36error_pauliStrShiftedByIllegalAmountv()
  br label %_Z30paulis_getTensorProdOfPauliStr8PauliStrS_i.exit

_Z30paulis_getTensorProdOfPauliStr8PauliStrS_i.exit: ; preds = %bb.f, %bb.g
  %i.ae = ashr i64 %.sroa.04.0.copyload, %i.o
  %i.af = shl <2 x i64> %i.ac, %i.w
  %i.ag = getelementptr inbounds [16 x i8], ptr %i.r, i64 %.143
  %i.ah = insertelement <2 x i64> <i64 0, i64 poison>, i64 %i.ae, i64 1
  %i.ai = or <2 x i64> %i.ad, %i.ah
  %i.aj = or <2 x i64> %i.ai, %i.af
  store <2 x i64> %i.aj, ptr %i.ag, align 8, !tbaa !15
  %i.ak = load double, ptr %i.y, align 8, !tbaa !36
  %i.al = load double, ptr %i.z, align 8, !tbaa !36
  %i.am = fneg double %i.al
  %6 = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.02242
  %7 = insertelement <2 x double> poison, double %i.am, i64 0
  %8 = insertelement <2 x double> %7, double %i.ak, i64 1
  %9 = fmul <2 x double> %5, %8                   ; 4 uses
  %10 = load <2 x double>, ptr %6, align 8        ; 4 uses
  %11 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %12 = fmul <2 x double> %11, %10                ; 2 uses
  %13 = fmul <2 x double> %9, %10
  %shift = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %12, %shift
  %14 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %15 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %13) ; 3 uses
  %i.an = fcmp uno double %14, 0.000000e+00
  br i1 %i.an, label %bb.h, label %vector.ph, !prof !27

bb.h:                                             ; preds = %_Z30paulis_getTensorProdOfPauliStr8PauliStrS_i.exit
  %i.ao = fcmp uno double %15, 0.000000e+00
  br i1 %i.ao, label %bb.i, label %vector.ph, !prof !27

bb.i:                                             ; preds = %bb.h
  %16 = extractelement <2 x double> %9, i64 0
  %17 = extractelement <2 x double> %9, i64 1
  %18 = extractelement <2 x double> %10, i64 0
  %19 = extractelement <2 x double> %10, i64 1
  %i.ap = tail call noundef { double, double } @__muldc3(double noundef %17, double noundef %16, double noundef %18, double noundef %19) #16 ; 2 uses
  %i.aq = extractvalue { double, double } %i.ap, 0
  %i.ar = extractvalue { double, double } %i.ap, 1
  br label %vector.ph

vector.ph:                                        ; preds = %bb.i, %bb.h, %_Z30paulis_getTensorProdOfPauliStr8PauliStrS_i.exit
  %i.as = phi double [ %14, %_Z30paulis_getTensorProdOfPauliStr8PauliStrS_i.exit ], [ %14, %bb.h ], [ %i.aq, %bb.i ] ; 3 uses
  %i.at = phi double [ %15, %_Z30paulis_getTensorProdOfPauliStr8PauliStrS_i.exit ], [ %15, %bb.h ], [ %i.ar, %bb.i ] ; 3 uses
  %.sroa.2.0.copyload = load i64, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !15
  %.sroa.0.0.copyload = load i64, ptr %i.x, align 8, !tbaa !15
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %.sroa.0.0.copyload, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert59 = insertelement <16 x i64> poison, i64 %.sroa.2.0.copyload, i64 0
  %broadcast.splat60 = shufflevector <16 x i64> %broadcast.splatinsert59, <16 x i64> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi61 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.au = icmp ult <16 x i32> %vec.ind, splat (i32 32) ; 2 uses
  %i.av = icmp ult <16 x i32> %vec.ind, splat (i32 16) ; 2 uses
  %i.aw = shl nuw nsw <16 x i32> %vec.ind, splat (i32 1) ; 2 uses
  %step.add = shl <16 x i32> %vec.ind, splat (i32 1)
  %i.ax = add nsw <16 x i32> %i.aw, splat (i32 -64)
  %i.ay = select <16 x i1> %i.au, <16 x i32> %i.aw, <16 x i32> %i.ax
  %.v = select <16 x i1> %i.av, <16 x i32> splat (i32 32), <16 x i32> splat (i32 -32)
  %i.az = add <16 x i32> %step.add, %.v
  %i.ba = select <16 x i1> %i.au, <16 x i64> %broadcast.splat, <16 x i64> %broadcast.splat60
  %i.bb = select <16 x i1> %i.av, <16 x i64> %broadcast.splat, <16 x i64> %broadcast.splat60
  %i.bc = zext nneg <16 x i32> %i.ay to <16 x i64>
  %i.bd = zext nneg <16 x i32> %i.az to <16 x i64>
  %i.be = ashr <16 x i64> %i.ba, %i.bc
  %i.bf = ashr <16 x i64> %i.bb, %i.bd
  %i.bg = and <16 x i64> %i.be, splat (i64 3)
  %i.bh = and <16 x i64> %i.bf, splat (i64 3)
  %i.bi = icmp eq <16 x i64> %i.bg, splat (i64 2)
  %i.bj = icmp eq <16 x i64> %i.bh, splat (i64 2)
  %i.bk = xor <16 x i1> %vec.phi, %i.bi           ; 2 uses
  %i.bl = xor <16 x i1> %vec.phi61, %i.bj         ; 2 uses
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <16 x i32> %vec.ind, splat (i32 32)
  %i.bm = icmp eq i32 %index.next, 64
  br i1 %i.bm, label %_Z28paulis_getSignOfPauliStrConj8PauliStr.exit, label %vector.body, !llvm.loop !51

_Z28paulis_getSignOfPauliStrConj8PauliStr.exit:   ; preds = %vector.body
  %bin.rdx = xor <16 x i1> %i.bl, %i.bk
  %i.bn = bitcast <16 x i1> %bin.rdx to i16
  %i.bo = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.bn)
  %i.bp = trunc i16 %i.bo to i1
  %i.bq = select i1 %i.bp, double -1.000000e+00, double 1.000000e+00 ; 3 uses
  %i.br = fmul double %i.as, %i.bq
  %i.bs = fmul double %i.at, 0.000000e+00
  %i.bt = fmul double %i.as, 0.000000e+00
  %i.bu = fmul double %i.at, %i.bq
  %i.bv = fsub double %i.br, %i.bs                ; 3 uses
  %i.bw = fadd double %i.bt, %i.bu                ; 3 uses
  %i.bx = fcmp uno double %i.bv, 0.000000e+00
  br i1 %i.bx, label %bb.j, label %_ZmlRKSt7complexIdERKi.exit, !prof !27

bb.j:                                             ; preds = %_Z28paulis_getSignOfPauliStrConj8PauliStr.exit
  %i.by = fcmp uno double %i.bw, 0.000000e+00
  br i1 %i.by, label %bb.k, label %_ZmlRKSt7complexIdERKi.exit, !prof !27

bb.k:                                             ; preds = %bb.j
  %i.bz = tail call noundef { double, double } @__muldc3(double noundef %i.as, double noundef %i.at, double noundef %i.bq, double noundef 0.000000e+00) #16 ; 2 uses
  %i.ca = extractvalue { double, double } %i.bz, 0
  %i.cb = extractvalue { double, double } %i.bz, 1
  br label %_ZmlRKSt7complexIdERKi.exit

_ZmlRKSt7complexIdERKi.exit:                      ; preds = %_Z28paulis_getSignOfPauliStrConj8PauliStr.exit, %bb.j, %bb.k
  %i.cc = phi double [ %i.bv, %_Z28paulis_getSignOfPauliStrConj8PauliStr.exit ], [ %i.bv, %bb.j ], [ %i.ca, %bb.k ]
  %i.cd = phi double [ %i.bw, %_Z28paulis_getSignOfPauliStrConj8PauliStr.exit ], [ %i.bw, %bb.j ], [ %i.cb, %bb.k ]
  %i.ce = getelementptr inbounds [16 x i8], ptr %i.u, i64 %.143 ; 2 uses
  store double %i.cc, ptr %i.ce, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store double %i.cd, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !30
  %i.cf = add nsw i64 %.143, 1                    ; 2 uses
  %i.cg = add nuw nsw i64 %.02242, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cg, %.sroa.039.0.copyload
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !52
}

declare void @_Z55error_pauliStrSumHasMoreQubitsThanSpecifiedInTensorProdv() local_unnamed_addr #4

declare void @_Z47error_pauliStrSumTensorProdHasIncorrectNumTermsv() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 -1073741823, 1073741825) i64 @_Z52paulis_getNumTermsInPauliStrSumProdOfAdjointWithSelf11PauliStrSum(ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !33
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = add i32 %i.b, -1
  %i.d = mul i32 %i.c, %i.b
  %i.e = sdiv i32 %i.d, 2
  %i.f = add nsw i32 %i.e, 1
  %i.g = sext i32 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: mustprogress uwtable
define void @_Z50paulis_setPauliStrSumToScaledProdOfAdjointWithSelf11PauliStrSumdS_(ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %0, double noundef %1, ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !33
  %.sroa.046.0.copyload = load i64, ptr %2, align 8, !tbaa !15 ; 3 uses
  %.sroa.2.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = trunc i64 %.sroa.046.0.copyload to i32   ; 2 uses
  %i.c = add i32 %i.b, -1
  %i.d = mul i32 %i.c, %i.b
  %i.e = sdiv i32 %i.d, 2
  %i.f = add nsw i32 %i.e, 1
  %i.g = sext i32 %i.f to i64
  %.not = icmp eq i64 %i.a, %i.g
  br i1 %.not, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z41error_pauliStrSumProdHasIncorrectNumTermsv()
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !59
  store i8 73, ptr %i.h, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.i, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.j, align 1, !tbaa !30
  %i.k = invoke { i64, i64 } @_Z11getPauliStrNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 3 uses
  store i64 %i.l, ptr %i.o, align 8, !tbaa !15
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !15
  %i.p = load ptr, ptr %3, align 8, !tbaa !63     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.h
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.h, align 8, !tbaa !30
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64   ; 4 uses
  %i.v = icmp sgt i64 %.sroa.046.0.copyload, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br i1 %i.v, label %.lr.ph52, label %._crit_edge53

.lr.ph52:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64   ; 2 uses
  %i.y = load ptr, ptr %.sroa.2.0..sroa_idx47, align 8 ; 2 uses
  %i.z = fmul double %1, 2.000000e+00
  br label %bb.e

._crit_edge53:                                    ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %3, align 8, !tbaa !63    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.h
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.d
  %i.ad = load i64, ptr %i.h, align 8, !tbaa !30
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  resume { ptr, i32 } %i.aa

bb.e:                                             ; preds = %.lr.ph52, %._crit_edge
  %.02251 = phi i64 [ 1, %.lr.ph52 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.02350 = phi i64 [ 0, %.lr.ph52 ], [ %i.ap, %._crit_edge ] ; 5 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %.02350 ; 3 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !36 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !36 ; 2 uses
  %i.aj = fmul double %i.ai, %i.ai
  %i.ak = call noundef double @llvm.fmuladd.f64(double %i.ag, double %i.ag, double %i.aj)
  %i.al = fmul double %1, %i.ak
  %i.am = load double, ptr %i.u, align 8
  %i.an = fadd double %i.am, %i.al
  store double %i.an, ptr %i.u, align 8
  %.not54 = icmp eq i64 %.02350, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.02350 ; 2 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  br label %bb.f

._crit_edge:                                      ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit38, %bb.e
  %.1.lcssa = phi i64 [ %.02251, %bb.e ], [ %i.dd, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit38 ]
  %i.ap = add nuw nsw i64 %.02350, 1              ; 2 uses
  %exitcond55.not = icmp eq i64 %i.ap, %.sroa.046.0.copyload
  br i1 %exitcond55.not, label %._crit_edge53, label %bb.e, !llvm.loop !53

bb.f:                                             ; preds = %.lr.ph, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit38
  %.149 = phi i64 [ %.02251, %.lr.ph ], [ %i.dd, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit38 ] ; 3 uses
  %.02448 = phi i64 [ 0, %.lr.ph ], [ %i.de, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit38 ] ; 3 uses
  %.sroa.02.0.copyload = load i64, ptr %i.ao, align 8, !tbaa !15 ; 2 uses
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !15 ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.02448 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.aq, align 8, !tbaa !15 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !15 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit.i, %bb.f
  %.033.i = phi i32 [ 0, %bb.f ], [ %i.bs, %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit.i ] ; 3 uses
  %.sroa.028.032.i = phi double [ 1.000000e+00, %bb.f ], [ %.sroa.028.1.i, %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit.i ] ; 4 uses
  %.sroa.6.031.i = phi double [ 0.000000e+00, %bb.f ], [ %.sroa.6.1.i, %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit.i ] ; 4 uses
  %i.ar = icmp samesign ult i32 %.033.i, 32       ; 3 uses
  %i.as = shl nuw nsw i32 %.033.i, 1              ; 2 uses
  %i.at = add nsw i32 %i.as, -64
  %.sink4.i.i = select i1 %i.ar, i32 %i.as, i32 %i.at
  %.sink.i.i = select i1 %i.ar, i64 %.sroa.02.0.copyload, i64 %.sroa.23.0.copyload
  %i.au = zext nneg i32 %.sink4.i.i to i64        ; 2 uses
  %i.av = ashr i64 %.sink.i.i, %i.au
  %.in.i.i = trunc i64 %i.av to i32
  %i.aw = and i32 %.in.i.i, 3                     ; 3 uses
  %.sink.i26.i = select i1 %i.ar, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload
  %i.ax = ashr i64 %.sink.i26.i, %i.au
  %.in.i27.i = trunc i64 %i.ax to i32
  %i.ay = and i32 %.in.i27.i, 3                   ; 3 uses
  %i.az = icmp eq i32 %i.aw, 0
  %i.ba = icmp eq i32 %i.ay, 0
  %or.cond.i = or i1 %i.az, %i.ba
  %i.bb = icmp eq i32 %i.aw, %i.ay
  %or.cond24.i = or i1 %i.bb, %or.cond.i
  br i1 %or.cond24.i, label %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = sub nsw i32 %i.ay, %i.aw                ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 1
  %i.be = icmp eq i32 %i.bc, -2
  %i.bf = or i1 %i.bd, %i.be
  %i.bg = select i1 %i.bf, double 1.000000e+00, double -1.000000e+00 ; 3 uses
  %i.bh = fmul double %.sroa.028.032.i, 0.000000e+00
  %i.bi = fmul double %.sroa.6.031.i, %i.bg
  %i.bj = fmul double %.sroa.028.032.i, %i.bg
  %i.bk = fmul double %.sroa.6.031.i, 0.000000e+00
  %i.bl = fsub double %i.bh, %i.bi                ; 3 uses
  %i.bm = fadd double %i.bk, %i.bj                ; 3 uses
  %i.bn = fcmp uno double %i.bl, 0.000000e+00
  br i1 %i.bn, label %bb.i, label %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit.i, !prof !27

bb.i:                                             ; preds = %bb.h
  %i.bo = fcmp uno double %i.bm, 0.000000e+00
  br i1 %i.bo, label %bb.j, label %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit.i, !prof !27

bb.j:                                             ; preds = %bb.i
  %i.bp = call noundef { double, double } @__muldc3(double noundef %.sroa.028.032.i, double noundef %.sroa.6.031.i, double noundef 0.000000e+00, double noundef %i.bg) #16, !noalias !65 ; 2 uses
  %i.bq = extractvalue { double, double } %i.bp, 0
  %i.br = extractvalue { double, double } %i.bp, 1
  br label %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit.i

_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit.i:        ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.sroa.6.1.i = phi double [ %.sroa.6.031.i, %bb.g ], [ %i.bm, %bb.h ], [ %i.bm, %bb.i ], [ %i.br, %bb.j ] ; 4 uses
  %.sroa.028.1.i = phi double [ %.sroa.028.032.i, %bb.g ], [ %i.bl, %bb.h ], [ %i.bl, %bb.i ], [ %i.bq, %bb.j ] ; 4 uses
  %i.bs = add nuw nsw i32 %.033.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bs, 64
  br i1 %exitcond.not.i, label %_Z22paulis_getPauliStrProd8PauliStrS_.exit, label %bb.g, !llvm.loop !3

_Z22paulis_getPauliStrProd8PauliStrS_.exit:       ; preds = %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit.i
  %i.bt = xor i64 %.sroa.2.0.copyload, %.sroa.23.0.copyload
  %i.bu = xor i64 %.sroa.0.0.copyload, %.sroa.02.0.copyload
  %i.bv = getelementptr inbounds [16 x i8], ptr %i.o, i64 %.149 ; 2 uses
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !15
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %i.bt, ptr %.sroa.8.16..sroa_idx, align 8, !tbaa !15
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %.02448
  %i.bx = load <2 x double>, ptr %i.af, align 8, !tbaa !36 ; 4 uses
  %i.by = extractelement <2 x double> %i.bx, i64 1
  %i.bz = fneg double %i.by
  %i.ca = load <2 x double>, ptr %i.bw, align 8   ; 4 uses
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cc = fmul <2 x double> %i.bx, %i.ca
  %4 = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.cc) ; 3 uses
  %i.cd = fmul <2 x double> %i.bx, %i.cb          ; 2 uses
  %shift72 = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop73 = fsub <2 x double> %i.cd, %shift72
  %i.ce = extractelement <2 x double> %foldExtExtBinop73, i64 0 ; 3 uses
  %i.cf = fcmp uno double %4, 0.000000e+00
  br i1 %i.cf, label %bb.k, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit, !prof !27

bb.k:                                             ; preds = %_Z22paulis_getPauliStrProd8PauliStrS_.exit
  %i.cg = fcmp uno double %i.ce, 0.000000e+00
  br i1 %i.cg, label %bb.l, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit, !prof !27

bb.l:                                             ; preds = %bb.k
  %i.ch = extractelement <2 x double> %i.bx, i64 0
  %i.ci = extractelement <2 x double> %i.ca, i64 0
  %i.cj = extractelement <2 x double> %i.ca, i64 1
  %i.ck = call noundef { double, double } @__muldc3(double noundef %i.ch, double noundef %i.bz, double noundef %i.ci, double noundef %i.cj) #16 ; 2 uses
  %i.cl = extractvalue { double, double } %i.ck, 0
  %i.cm = extractvalue { double, double } %i.ck, 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit

_ZStmlIdESt7complexIT_ERKS2_S4_.exit:             ; preds = %_Z22paulis_getPauliStrProd8PauliStrS_.exit, %bb.k, %bb.l
  %i.cn = phi double [ %4, %_Z22paulis_getPauliStrProd8PauliStrS_.exit ], [ %4, %bb.k ], [ %i.cl, %bb.l ] ; 3 uses
  %i.co = phi double [ %i.ce, %_Z22paulis_getPauliStrProd8PauliStrS_.exit ], [ %i.ce, %bb.k ], [ %i.cm, %bb.l ] ; 3 uses
  %i.cp = fmul double %.sroa.028.1.i, %i.cn
  %i.cq = fmul double %.sroa.6.1.i, %i.co
  %i.cr = fsub double %i.cp, %i.cq                ; 3 uses
  %i.cs = fcmp uno double %i.cr, 0.000000e+00
  br i1 %i.cs, label %bb.m, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit38, !prof !27

bb.m:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit
  %i.ct = fmul double %.sroa.028.1.i, %i.co
  %i.cu = fmul double %.sroa.6.1.i, %i.cn
  %i.cv = fadd double %i.cu, %i.ct
  %i.cw = fcmp uno double %i.cv, 0.000000e+00
  br i1 %i.cw, label %bb.n, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit38, !prof !27

bb.n:                                             ; preds = %bb.m
  %i.cx = call noundef { double, double } @__muldc3(double noundef %i.cn, double noundef %i.co, double noundef %.sroa.028.1.i, double noundef %.sroa.6.1.i) #16
  %i.cy = extractvalue { double, double } %i.cx, 0
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit38

_ZStmlIdESt7complexIT_ERKS2_S4_.exit38:           ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit, %bb.m, %bb.n
  %i.cz = phi double [ %i.cr, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit ], [ %i.cr, %bb.m ], [ %i.cy, %bb.n ]
  %i.da = fmul double %i.z, %i.cz
  %i.db = getelementptr inbounds [16 x i8], ptr %i.u, i64 %.149 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store double %i.da, ptr %i.db, align 8
  store double 0.000000e+00, ptr %i.dc, align 8
  %i.dd = add nsw i64 %.149, 1                    ; 2 uses
  %i.de = add nuw nsw i64 %.02448, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.de, %.02350
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !56
}

declare void @_Z41error_pauliStrSumProdHasIncorrectNumTermsv() local_unnamed_addr #4

declare { i64, i64 } @_Z11getPauliStrNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: mustprogress uwtable
define void @_Z34paulis_setPauliStrSumToShiftedConj11PauliStrSumS_i(ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %.sroa.019.0.copyload = load i64, ptr %1, align 8, !tbaa !15 ; 3 uses
  %.sroa.2.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload21 = load ptr, ptr %.sroa.2.0..sroa_idx20, align 8, !tbaa !34 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.a = icmp sgt i64 %.sroa.019.0.copyload, 0
  br i1 %i.a, label %.lr.ph.i.i, label %_Z38paulis_getIndOfLefmostNonIdentityPauli11PauliStrSum.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i.i
  %.011.i.i = phi i32 [ %spec.select.i.i, %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i.i ], [ 0, %bb.a ]
  %.0810.i.i = phi i64 [ %i.i, %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.sroa.2.0.copyload21, i64 %.0810.i.i ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !15 ; 2 uses
  %i.c = icmp eq i64 %.sroa.2.0.copyload.i.i, 0   ; 2 uses
  %i.d = select i1 %i.c, i32 0, i32 32            ; 2 uses
  %i.e = select i1 %i.c, i64 %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i ; 2 uses
  %.not7.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not7.i.i.i, label %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.f, %.lr.ph.i.i.i ], [ %i.e, %.lr.ph.i.i ]
  %.068.i.i.i = phi i32 [ %i.g, %.lr.ph.i.i.i ], [ %i.d, %.lr.ph.i.i ]
  %i.f = lshr i64 %.09.i.i.i, 2                   ; 2 uses
  %i.g = add nuw nsw i32 %.068.i.i.i, 1           ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i
  %.06.lcssa.i.i.i = phi i32 [ %i.d, %.lr.ph.i.i ], [ %i.g, %.lr.ph.i.i.i ]
  %i.h = add nsw i32 %.06.lcssa.i.i.i, -1
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %.011.i.i) ; 2 uses
  %i.i = add nuw nsw i64 %.0810.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.i, %.sroa.019.0.copyload
  br i1 %exitcond.not.i.i, label %_Z38paulis_getIndOfLefmostNonIdentityPauli11PauliStrSum.exit, label %.lr.ph.i.i, !llvm.loop !1

_Z38paulis_getIndOfLefmostNonIdentityPauli11PauliStrSum.exit: ; preds = %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %spec.select.i.i, %_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr.exit.i.i ]
  %.not = icmp slt i32 %.0.lcssa.i.i, %2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_Z38paulis_getIndOfLefmostNonIdentityPauli11PauliStrSum.exit
  tail call void @_Z54error_pauliStrSumHasMoreQubitsThanSpecifiedInConjShiftv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_Z38paulis_getIndOfLefmostNonIdentityPauli11PauliStrSum.exit
  %i.j = load i64, ptr %0, align 8, !tbaa !33     ; 3 uses
  %.not14 = icmp eq i64 %i.j, %.sroa.019.0.copyload
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_Z41error_pauliStrSumConjHasIncorrectNumTermsv()
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.l = add i32 %2, -32
  %or.cond.i = icmp ult i32 %i.l, -31
  %i.m = shl nsw i32 %2, 1                        ; 2 uses
  %i.n = sub i32 64, %i.m
  %i.o = zext nneg i32 %i.n to i64
  %i.p = zext nneg i32 %i.m to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  br label %bb.f

._crit_edge:                                      ; preds = %_ZmlRKSt7complexIdERKi.exit, %bb.e
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZmlRKSt7complexIdERKi.exit
  %.022 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %_ZmlRKSt7complexIdERKi.exit ] ; 5 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.sroa.2.0.copyload21, i64 %.022 ; 3 uses
  %.sroa.02.0.copyload = load i64, ptr %i.v, align 8, !tbaa !15 ; 2 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !15
  br i1 %or.cond.i, label %bb.g, label %_Z25paulis_getShiftedPauliStr8PauliStri.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Z36error_pauliStrShiftedByIllegalAmountv()
  br label %_Z25paulis_getShiftedPauliStr8PauliStri.exit

_Z25paulis_getShiftedPauliStr8PauliStri.exit:     ; preds = %bb.f, %bb.g
  %i.w = ashr i64 %.sroa.02.0.copyload, %i.o
  %i.x = shl i64 %.sroa.02.0.copyload, %i.p
  %i.y = shl i64 %.sroa.23.0.copyload, %i.p
  %i.z = or i64 %i.y, %i.w
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.022 ; 2 uses
  store i64 %i.x, ptr %i.aa, align 8, !tbaa !15
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.z, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.022
  %3 = load <2 x double>, ptr %i.ab, align 8, !tbaa !36 ; 3 uses
  %.sroa.2.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !15
  %.sroa.0.0.copyload = load i64, ptr %i.v, align 8, !tbaa !15
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %.sroa.0.0.copyload, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert28 = insertelement <16 x i64> poison, i64 %.sroa.2.0.copyload, i64 0
  %broadcast.splat29 = shufflevector <16 x i64> %broadcast.splatinsert28, <16 x i64> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_Z25paulis_getShiftedPauliStr8PauliStri.exit
  %index = phi i32 [ 0, %_Z25paulis_getShiftedPauliStr8PauliStri.exit ], [ %index.next, %vector.body ]
  %vec.phi = phi <16 x i1> [ zeroinitializer, %_Z25paulis_getShiftedPauliStr8PauliStri.exit ], [ %i.as, %vector.body ]
  %vec.phi30 = phi <16 x i1> [ zeroinitializer, %_Z25paulis_getShiftedPauliStr8PauliStri.exit ], [ %i.at, %vector.body ]
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %_Z25paulis_getShiftedPauliStr8PauliStri.exit ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.ac = icmp ult <16 x i32> %vec.ind, splat (i32 32) ; 2 uses
  %i.ad = icmp ult <16 x i32> %vec.ind, splat (i32 16) ; 2 uses
  %i.ae = shl nuw nsw <16 x i32> %vec.ind, splat (i32 1) ; 2 uses
  %step.add = shl <16 x i32> %vec.ind, splat (i32 1)
  %i.af = add nsw <16 x i32> %i.ae, splat (i32 -64)
  %i.ag = select <16 x i1> %i.ac, <16 x i32> %i.ae, <16 x i32> %i.af
  %.v = select <16 x i1> %i.ad, <16 x i32> splat (i32 32), <16 x i32> splat (i32 -32)
  %i.ah = add <16 x i32> %step.add, %.v
  %i.ai = select <16 x i1> %i.ac, <16 x i64> %broadcast.splat, <16 x i64> %broadcast.splat29
  %i.aj = select <16 x i1> %i.ad, <16 x i64> %broadcast.splat, <16 x i64> %broadcast.splat29
  %i.ak = zext nneg <16 x i32> %i.ag to <16 x i64>
  %i.al = zext nneg <16 x i32> %i.ah to <16 x i64>
  %i.am = ashr <16 x i64> %i.ai, %i.ak
  %i.an = ashr <16 x i64> %i.aj, %i.al
  %i.ao = and <16 x i64> %i.am, splat (i64 3)
  %i.ap = and <16 x i64> %i.an, splat (i64 3)
  %i.aq = icmp eq <16 x i64> %i.ao, splat (i64 2)
  %i.ar = icmp eq <16 x i64> %i.ap, splat (i64 2)
  %i.as = xor <16 x i1> %vec.phi, %i.aq           ; 2 uses
  %i.at = xor <16 x i1> %vec.phi30, %i.ar         ; 2 uses
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <16 x i32> %vec.ind, splat (i32 32)
  %i.au = icmp eq i32 %index.next, 64
  br i1 %i.au, label %_Z28paulis_getSignOfPauliStrConj8PauliStr.exit, label %vector.body, !llvm.loop !66

_Z28paulis_getSignOfPauliStrConj8PauliStr.exit:   ; preds = %vector.body
  %bin.rdx = xor <16 x i1> %i.at, %i.as
  %i.av = bitcast <16 x i1> %bin.rdx to i16
  %i.aw = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.av)
  %i.ax = trunc i16 %i.aw to i1
  %4 = extractelement <2 x double> %3, i64 1      ; 2 uses
  %i.ay = fneg double %4
  %i.az = select i1 %i.ax, double -1.000000e+00, double 1.000000e+00 ; 3 uses
  %5 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.az, i64 0
  %6 = fmul <2 x double> %3, %5
  %7 = extractelement <2 x double> %3, i64 0      ; 2 uses
  %i.ba = fmul double %7, 0.000000e+00
  %8 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %6) ; 3 uses
  %i.bb = fmul double %4, %i.az
  %i.bc = fsub double %i.ba, %i.bb                ; 3 uses
  %i.bd = fcmp uno double %8, 0.000000e+00
  br i1 %i.bd, label %bb.h, label %_ZmlRKSt7complexIdERKi.exit, !prof !27

bb.h:                                             ; preds = %_Z28paulis_getSignOfPauliStrConj8PauliStr.exit
  %i.be = fcmp uno double %i.bc, 0.000000e+00
  br i1 %i.be, label %bb.i, label %_ZmlRKSt7complexIdERKi.exit, !prof !27

bb.i:                                             ; preds = %bb.h
  %i.bf = tail call noundef { double, double } @__muldc3(double noundef %7, double noundef %i.ay, double noundef %i.az, double noundef 0.000000e+00) #16 ; 2 uses
  %i.bg = extractvalue { double, double } %i.bf, 0
  %i.bh = extractvalue { double, double } %i.bf, 1
  br label %_ZmlRKSt7complexIdERKi.exit

_ZmlRKSt7complexIdERKi.exit:                      ; preds = %_Z28paulis_getSignOfPauliStrConj8PauliStr.exit, %bb.h, %bb.i
  %i.bi = phi double [ %8, %_Z28paulis_getSignOfPauliStrConj8PauliStr.exit ], [ %8, %bb.h ], [ %i.bg, %bb.i ]
  %i.bj = phi double [ %i.bc, %_Z28paulis_getSignOfPauliStrConj8PauliStr.exit ], [ %i.bc, %bb.h ], [ %i.bh, %bb.i ]
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.022 ; 2 uses
  store double %i.bi, ptr %i.bk, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store double %i.bj, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !30
  %i.bl = add nuw nsw i64 %.022, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !67
}

declare void @_Z54error_pauliStrSumHasMoreQubitsThanSpecifiedInConjShiftv() local_unnamed_addr #4

declare void @_Z41error_pauliStrSumConjHasIncorrectNumTermsv() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !13}
!1 = distinct !{!1, !13}
!2 = distinct !{!2, !13}
!3 = distinct !{!3, !13}
!4 = !{i32 7, !"openmp", i32 51}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"long long", !9, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"any pointer", !9, i64 0}
!19 = !{!"p1 int", !18, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!10, !10, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!23 = !{!22, !19, i64 8}
!24 = !{!22, !19, i64 0}
!25 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!26 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!27 = !{!"branch_weights", i32 1, i32 1048575}
!28 = !{!22, !19, i64 16}
!29 = !{!"p1 _ZTSSt7complexIdE", !18, i64 0}
!30 = !{!9, !9, i64 0}
!31 = !{!"_ZTS11PauliStrSum", !14, i64 0, !18, i64 8, !29, i64 16, !19, i64 24}
!32 = !{!31, !18, i64 8}
!33 = !{!31, !14, i64 0}
!34 = !{!18, !18, i64 0}
!35 = !{!"double", !9, i64 0}
!36 = !{!35, !35, i64 0}
!37 = distinct !{!37, !13, !16, !17}
!38 = distinct !{!38, !13, !17, !16}
!39 = distinct !{!39, !13, !16, !17}
!40 = distinct !{!40, !13}
!41 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !18, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"_ZTS5Qureg", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !29, i64 72, !29, i64 80, !29, i64 88, !29, i64 96}
!44 = !{!43, !10, i64 28}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13, !16, !17}
!47 = distinct !{!47, !13, !17, !16}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13, !16, !17}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !"_Z22paulis_getPauliStrProd8PauliStrS_"}
!55 = distinct !{!55, !54, !"_Z22paulis_getPauliStrProd8PauliStrS_: argument 0"}
!56 = distinct !{!56, !13}
!57 = !{!"p1 omnipotent char", !18, i64 0}
!58 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !57, i64 0}
!59 = !{!58, !57, i64 0}
!60 = !{!"long", !9, i64 0}
!61 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !58, i64 0, !60, i64 8, !9, i64 16}
!62 = !{!61, !60, i64 8}
!63 = !{!61, !57, i64 0}
!64 = !{!31, !29, i64 16}
!65 = !{!55}
!66 = distinct !{!66, !13, !16, !17}
!67 = distinct !{!67, !13}
end_hunk_0
