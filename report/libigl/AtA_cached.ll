inline.NumInlined: 983
inline.NumDeleted: 465
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN3igl10AtA_cachedIdEEvRKN5Eigen12SparseMatrixIT_Li0EiEERKNS_15AtA_cached_dataERS4_:bb.a
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !20
  %i.bi = fmul double %i.bc, %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !22
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !20
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bn, double %i.ax) ; 2 uses
  store double %i.bo, ptr %i.v, align 8, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !22
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !20
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !22
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !20
  %i.bz = fmul double %i.bt, %i.by
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !22
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.cc
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !20
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.ce, double %i.bo) ; 2 uses
  store double %i.cf, ptr %i.v, align 8, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph.new, !llvm.loop !23
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl21AtA_cached_precomputeIdEEvRKN5Eigen12SparseMatrixIT_Li0EiEERNS_15AtA_cached_dataERS4_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::SparseMatrix", align 8 ; 17 uses
  %4 = alloca %"class.Eigen::Transpose", align 8  ; 6 uses
  %5 = alloca %"class.Eigen::Product", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 6 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %i.b, 384307168202282325
  br i1 %i.c, label %bb.c, label %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
          to label %.noexc389 unwind label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i372.thread

.noexc389:                                        ; preds = %bb.c
  unreachable

_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.b
  %i.d = mul nuw nsw i64 %i.b, 24                 ; 4 uses
  %i.e = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #20
          to label %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit.i395 unwind label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i372.thread ; 7 uses

_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit.i395: ; preds = %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.e, i8 0, i64 %i.d, i1 false)
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.b ; 4 uses
  %i.g = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #20
          to label %.lr.ph569 unwind label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i372.thread ; 6 uses

.lr.ph569:                                        ; preds = %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit.i395
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.g, i8 0, i64 %i.d, i1 false)
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.b ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.d

.loopexit536.loopexit:                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140
  %.pre = load i64, ptr %i.a, align 8, !tbaa !24
  br label %.loopexit536

.loopexit536:                                     ; preds = %.loopexit536.loopexit, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.l = phi i64 [ %.pre, %.loopexit536.loopexit ], [ %i.o, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit ] ; 2 uses
  %i.m = icmp sgt i64 %i.l, %i.u
  br i1 %i.m, label %bb.d, label %._crit_edge, !llvm.loop !29

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i372.thread: ; preds = %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit.i395, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit.i, %bb.c
  %.sroa.26.0 = phi ptr [ null, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.f, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit.i395 ], [ null, %bb.c ]
  %.sroa.0429.0 = phi ptr [ null, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.e, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit.i395 ], [ null, %bb.c ]
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit374

bb.d:                                             ; preds = %.lr.ph569, %.loopexit536
  %i.o = phi i64 [ %i.b, %.lr.ph569 ], [ %i.l, %.loopexit536 ] ; 13 uses
  %i.p = phi i64 [ 0, %.lr.ph569 ], [ %i.u, %.loopexit536 ]
  %.0100568 = phi i32 [ 0, %.lr.ph569 ], [ %i.t, %.loopexit536 ] ; 2 uses
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !30   ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.p ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !22   ; 2 uses
  %i.t = add i32 %.0100568, 1                     ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 3 uses
  %i.v = icmp eq i64 %i.o, %i.u
  br i1 %i.v, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !31   ; 13 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o
  %i.z = load i32, ptr %i.y, align 4, !tbaa !22
  %i.aa = load i32, ptr %i.q, align 4, !tbaa !22
  %i.ab = sub nsw i32 %i.z, %i.aa
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.ad = and i64 %i.ac, 3
  %.not.i.i.i.i.i.i.i.i126 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.i.i126, label %bb.h, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ae = lshr exact i64 %i.ac, 2
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = and i64 %i.af, 3
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.o)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ah, %bb.h ], [ %i.o, %bb.g ] ; 12 uses
  %i.ai = sub nsw i64 %i.o, %.0.i.i.i.i.i.i.i.i   ; 5 uses
  %i.aj = sdiv i64 %i.ai, 8
  %i.ak = shl nsw i64 %i.aj, 3                    ; 2 uses
  %i.al = sdiv i64 %i.ai, 4                       ; 2 uses
  %i.am = shl nsw i64 %i.al, 2                    ; 2 uses
  %i.an = add nsw i64 %i.ak, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.ao = add nsw i64 %i.am, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add nsw i64 %i.ai, 3
  %.not.i.i.i.i127 = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i127, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ap = getelementptr [4 x i8], ptr %i.w, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.aq = load <2 x i64>, ptr %i.ap, align 1, !tbaa !32 ; 2 uses
  %i.ar = icmp sgt i64 %i.ai, 7
  br i1 %i.ar, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr i8, ptr %i.ap, i64 16
  %i.at = load <4 x i32>, ptr %i.as, align 1, !tbaa !32 ; 2 uses
  %i.au = bitcast <2 x i64> %i.aq to <4 x i32>    ; 2 uses
  %i.av = icmp samesign ugt i64 %i.ai, 15
  br i1 %i.av, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.j
  %.05777.i.i.i.i = add nuw nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i128

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i128, %bb.j
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.at, %bb.j ], [ %i.bg, %.lr.ph.i.i.i.i128 ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.au, %bb.j ], [ %i.bc, %.lr.ph.i.i.i.i128 ]
  %i.aw = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.ax = bitcast <4 x i32> %i.aw to <2 x i64>
  %i.ay = icmp sgt i64 %i.am, %i.ak
  br i1 %i.ay, label %bb.k, label %bb.l

.lr.ph.i.i.i.i128:                                ; preds = %.lr.ph.i.i.i.i128, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i128 ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i128 ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.bc, %.lr.ph.i.i.i.i128 ], [ %i.au, %.lr.ph.preheader.i.i.i.i ]
  %i.az = phi <4 x i32> [ %i.bg, %.lr.ph.i.i.i.i128 ], [ %i.at, %.lr.ph.preheader.i.i.i.i ]
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.w, i64 %.05780.i.i.i.i
  %i.bb = load <4 x i32>, ptr %i.ba, align 1, !tbaa !32
  %i.bc = add <4 x i32> %i.bb, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %i.w, i64 %.057.in79.i.i.i.i
  %i.be = getelementptr i8, ptr %i.bd, i64 48
  %i.bf = load <4 x i32>, ptr %i.be, align 1, !tbaa !32
  %i.bg = add <4 x i32> %i.bf, %i.az              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.bh = icmp slt i64 %.057.i.i.i.i, %i.an
  br i1 %i.bh, label %.lr.ph.i.i.i.i128, label %._crit_edge.i.i.i.i, !llvm.loop !33

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.an
  %i.bj = load <4 x i32>, ptr %i.bi, align 1, !tbaa !32
  %i.bk = add <4 x i32> %i.bj, %i.aw
  %i.bl = bitcast <4 x i32> %i.bk to <2 x i64>
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i, %bb.i
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.aq, %bb.i ], [ %i.bl, %bb.k ], [ %i.ax, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bm = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.bn = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.bo = shufflevector <4 x i32> %i.bn, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bp = add <4 x i32> %i.bo, %i.bm              ; 2 uses
  %shift = shufflevector <4 x i32> %i.bp, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.bp, %shift
  %6 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bn) ; 2 uses
  %.not524 = icmp eq i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %.not524, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.l
  %min.iters.check820 = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check820, label %.lr.ph85.i.i.i.i.preheader1112, label %vector.ph821

vector.ph821:                                     ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec822 = and i64 %.0.i.i.i.i.i.i.i.i, -8     ; 3 uses
  %i.bq = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body823

vector.body823:                                   ; preds = %vector.body823, %vector.ph821
  %index824 = phi i64 [ 0, %vector.ph821 ], [ %index.next829, %vector.body823 ] ; 2 uses
  %vec.phi825 = phi <4 x i32> [ %i.bq, %vector.ph821 ], [ %i.bt, %vector.body823 ]
  %vec.phi826 = phi <4 x i32> [ zeroinitializer, %vector.ph821 ], [ %i.bu, %vector.body823 ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index824 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load827 = load <4 x i32>, ptr %i.br, align 4, !tbaa !22
  %wide.load828 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !22
  %i.bt = add <4 x i32> %wide.load827, %vec.phi825 ; 2 uses
  %i.bu = add <4 x i32> %wide.load828, %vec.phi826 ; 2 uses
  %index.next829 = add nuw i64 %index824, 8       ; 2 uses
  %i.bv = icmp eq i64 %index.next829, %n.vec822
  br i1 %i.bv, label %middle.block830, label %vector.body823, !llvm.loop !34

middle.block830:                                  ; preds = %vector.body823
  %bin.rdx831 = add <4 x i32> %i.bu, %i.bt
  %i.bw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx831) ; 2 uses
  %cmp.n832 = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec822
  br i1 %cmp.n832, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader1112

.lr.ph85.i.i.i.i.preheader1112:                   ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block830
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec822, %middle.block830 ]
  %.07582.i.i.i.i.ph = phi i32 [ %6, %.lr.ph85.i.i.i.i.preheader ], [ %i.bw, %middle.block830 ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block830, %bb.l
  %.075.lcssa.i.i.i.i = phi i32 [ %6, %bb.l ], [ %i.bw, %middle.block830 ], [ %i.cm, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.bx = icmp slt i64 %i.ao, %i.o
  br i1 %i.bx, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.by = shl nsw i64 %i.al, 2
  %i.bz = add i64 %.0.i.i.i.i.i.i.i.i, %i.by
  %i.ca = sub i64 %i.o, %i.bz                     ; 3 uses
  %min.iters.check804 = icmp ult i64 %i.ca, 8
  br i1 %min.iters.check804, label %.lr.ph89.i.i.i.i.preheader1110, label %vector.ph805

vector.ph805:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec806 = and i64 %i.ca, -8                   ; 3 uses
  %i.cb = add i64 %i.ao, %n.vec806
  %i.cc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.cd = getelementptr [4 x i8], ptr %i.w, i64 %i.ao
  br label %vector.body807

vector.body807:                                   ; preds = %vector.body807, %vector.ph805
  %index808 = phi i64 [ 0, %vector.ph805 ], [ %index.next813, %vector.body807 ] ; 2 uses
  %vec.phi809 = phi <4 x i32> [ %i.cc, %vector.ph805 ], [ %i.cg, %vector.body807 ]
  %vec.phi810 = phi <4 x i32> [ zeroinitializer, %vector.ph805 ], [ %i.ch, %vector.body807 ]
  %i.ce = getelementptr [4 x i8], ptr %i.cd, i64 %index808 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load811 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !22
  %wide.load812 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !22
  %i.cg = add <4 x i32> %wide.load811, %vec.phi809 ; 2 uses
  %i.ch = add <4 x i32> %wide.load812, %vec.phi810 ; 2 uses
  %index.next813 = add nuw i64 %index808, 8       ; 2 uses
  %i.ci = icmp eq i64 %index.next813, %n.vec806
  br i1 %i.ci, label %middle.block814, label %vector.body807, !llvm.loop !37

middle.block814:                                  ; preds = %vector.body807
  %bin.rdx815 = add <4 x i32> %i.ch, %i.cg
  %i.cj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx815) ; 2 uses
  %cmp.n816 = icmp eq i64 %i.ca, %n.vec806
  br i1 %cmp.n816, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph89.i.i.i.i.preheader1110

.lr.ph89.i.i.i.i.preheader1110:                   ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block814
  %.05588.i.i.i.i.ph = phi i64 [ %i.ao, %.lr.ph89.i.i.i.i.preheader ], [ %i.cb, %middle.block814 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.cj, %middle.block814 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader1112, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.cn, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader1112 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.cm, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader1112 ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.05683.i.i.i.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !22
  %i.cm = add nsw i32 %i.cl, %.07582.i.i.i.i      ; 2 uses
  %i.cn = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cn, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !38

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader1110, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.cr, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader1110 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.cq, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader1110 ]
  %i.co = getelementptr inbounds [4 x i8], ptr %i.w, i64 %.05588.i.i.i.i
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !22
  %i.cq = add nsw i32 %i.cp, %.187.i.i.i.i        ; 2 uses
  %i.cr = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cs = icmp slt i64 %i.cr, %i.o
  br i1 %i.cs, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, !llvm.loop !39

bb.m:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ct = load i32, ptr %i.w, align 4, !tbaa !22  ; 3 uses
  %i.cu = icmp samesign ugt i64 %i.o, 1
  br i1 %i.cu, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.m
  %i.cv = add i64 %i.o, -1                        ; 2 uses
  %min.iters.check = icmp ult i64 %i.o, 9
  br i1 %min.iters.check, label %.lr.ph94.i.i.i.i.preheader1109, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec = and i64 %i.cv, -8                      ; 3 uses
  %i.cw = or disjoint i64 %n.vec, 1
  %i.cx = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ct, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cx, %vector.ph ], [ %i.db, %vector.body ]
  %vec.phi801 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dc, %vector.body ]
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 20
  %wide.load = load <4 x i32>, ptr %i.cz, align 4, !tbaa !22
  %wide.load802 = load <4 x i32>, ptr %i.da, align 4, !tbaa !22
  %i.db = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.dc = add <4 x i32> %wide.load802, %vec.phi801 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dc, %i.db
  %i.de = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cv, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i.preheader1109

.lr.ph94.i.i.i.i.preheader1109:                   ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.cw, %middle.block ]
  %.291.i.i.i.i.ph = phi i32 [ %i.ct, %.lr.ph94.i.i.i.i.preheader ], [ %i.de, %middle.block ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader1109, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.di, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader1109 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.dh, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader1109 ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.092.i.i.i.i
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !22
  %i.dh = add nsw i32 %i.dg, %.291.i.i.i.i        ; 2 uses
  %i.di = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.di, %i.o
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i, !llvm.loop !41

bb.n:                                             ; preds = %bb.d
  %i.dj = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !22
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block814, %middle.block, %.preheader.i.i.i.i, %bb.m, %bb.f, %bb.n
  %.in525 = phi i32 [ %i.dk, %bb.n ], [ %i.ab, %bb.f ], [ %i.dh, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ct, %bb.m ], [ %i.de, %middle.block ], [ %i.cj, %middle.block814 ], [ %i.cq, %.lr.ph89.i.i.i.i ] ; 2 uses
  %i.dl = icmp ult i32 %i.s, %.in525
  br i1 %i.dl, label %.lr.ph, label %.loopexit536

.lr.ph:                                           ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.dm = sext i32 %.0100568 to i64               ; 2 uses
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.dm ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.dm ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  %i.dt = zext i32 %i.s to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140
  %indvars.iv = phi i64 [ %i.dt, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140 ] ; 4 uses
  %i.du = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !22 ; 2 uses
  %i.dx = load ptr, ptr %i.do, align 8, !tbaa !9  ; 4 uses
  %i.dy = load ptr, ptr %i.dp, align 8, !tbaa !43
  %.not.i = icmp eq ptr %i.dx, %i.dy
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !22
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  store ptr %i.dz, ptr %i.do, align 8, !tbaa !9
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.q:                                             ; preds = %bb.o
  %i.ea = load ptr, ptr %i.dn, align 8, !tbaa !13 ; 4 uses
  %i.eb = ptrtoint ptr %i.dx to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec                    ; 6 uses
  %i.ee = icmp eq i64 %i.ed, 9223372036854775804
  br i1 %i.ee, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.u, %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #19
end_hunk_0
begin_hunk_1_@_ZN3igl21AtA_cached_precomputeIdEEvRKN5Eigen12SparseMatrixIT_Li0EiEERNS_15AtA_cached_dataERS4_:bb.a
  %i.gf = getelementptr i8, ptr %i.fz, i64 %i.ge
  br label %vector.body839

vector.body839:                                   ; preds = %vector.body839, %vector.ph837
  %index840 = phi i64 [ 0, %vector.ph837 ], [ %index.next841, %vector.body839 ] ; 2 uses
  %i.gg = shl i64 %index840, 3
  %next.gep = getelementptr i8, ptr %i.fz, i64 %i.gg ; 2 uses
  %i.gh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %next.gep, align 8, !tbaa !20
  store <2 x double> splat (double 1.000000e+00), ptr %i.gh, align 8, !tbaa !20
  %index.next841 = add nuw i64 %index840, 4       ; 2 uses
  %i.gi = icmp eq i64 %index.next841, %n.vec838
  br i1 %i.gi, label %middle.block842, label %vector.body839, !llvm.loop !57

middle.block842:                                  ; preds = %vector.body839
  %cmp.n843 = icmp eq i64 %i.gd, %n.vec838
  br i1 %cmp.n843, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.ac, %middle.block842
  %.07.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.fz, %bb.ac ], [ %i.gf, %middle.block842 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store double 1.000000e+00, ptr %.07.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !20
  %i.gj = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gj, %i.ga
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !58

bb.ad:                                            ; preds = %.invoke768, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i264, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i222, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i180, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.y, %_ZN5Eigen12SparseMatrixIdLi0EiEC2INS_9TransposeIKS1_EEEERKNS_16SparseMatrixBaseIT_EE.exit
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.ae:                                            ; preds = %bb.x
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.dr

bb.af:                                            ; preds = %bb.ab
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block842, %bb.aa, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i, %bb.z
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 7 uses
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !24 ; 4 uses
  %i.gq = icmp ugt i64 %i.gp, 2305843009213693951
  br i1 %i.gq, label %.invoke768, label %bb.ag

bb.ag:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 6 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !43
  %i.gt = load ptr, ptr %i.gn, align 8, !tbaa !13 ; 4 uses
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = ptrtoint ptr %i.gt to i64               ; 2 uses
  %i.gw = sub i64 %i.gu, %i.gv                    ; 2 uses
  %i.gx = ashr exact i64 %i.gw, 2
  %i.gy = icmp ult i64 %i.gx, %i.gp
  br i1 %i.gy, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.ag
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !9
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = sub i64 %i.hb, %i.gv                    ; 3 uses
  %i.hd = shl nuw nsw i64 %i.gp, 2
  %i.he = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hd) #20
          to label %.noexc144 unwind label %bb.ad ; 4 uses

.noexc144:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.hf = icmp sgt i64 %i.hc, 0
  br i1 %i.hf, label %bb.ah, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.ah:                                            ; preds = %.noexc144
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.he, ptr align 4 %i.gt, i64 %i.hc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.ah, %.noexc144
  %.not.i8.i = icmp eq ptr %i.gt, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gw) #21
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.ai, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.he, ptr %i.gn, align 8, !tbaa !13
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hc
  store ptr %i.hg, ptr %i.gz, align 8, !tbaa !9
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.gp
  store ptr %i.hh, ptr %i.gr, align 8, !tbaa !43
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %bb.ag
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !31 ; 16 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !30 ; 2 uses
  %i.ho = load i64, ptr %i.go, align 8, !tbaa !24
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !22
  %i.hr = load i32, ptr %i.hn, align 4, !tbaa !22
  %i.hs = sub nsw i32 %i.hq, %i.hr
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit179

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.ht = load i64, ptr %i.go, align 8, !tbaa !24 ; 11 uses
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %.thread738, label %bb.al

.thread738:                                       ; preds = %bb.ak
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit228.thread

bb.al:                                            ; preds = %bb.ak
  %i.hx = ptrtoint ptr %i.hk to i64               ; 2 uses
  %i.hy = and i64 %i.hx, 3
  %.not.i.i.i.i.i.i.i.i145 = icmp eq i64 %i.hy, 0
  br i1 %.not.i.i.i.i.i.i.i.i145, label %bb.am, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i146

bb.am:                                            ; preds = %bb.al
  %i.hz = lshr exact i64 %i.hx, 2
  %i.ia = sub nsw i64 0, %i.hz
  %i.ib = and i64 %i.ia, 3
  %i.ic = call i64 @llvm.smin.i64(i64 %i.ib, i64 %i.ht)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i146

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i146: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i.i.i.i147 = phi i64 [ %i.ic, %bb.am ], [ %i.ht, %bb.al ] ; 12 uses
  %i.id = sub nsw i64 %i.ht, %.0.i.i.i.i.i.i.i.i147 ; 5 uses
  %i.ie = sdiv i64 %i.id, 8
  %i.if = shl nsw i64 %i.ie, 3                    ; 2 uses
  %i.ig = sdiv i64 %i.id, 4                       ; 2 uses
  %i.ih = shl nsw i64 %i.ig, 2                    ; 2 uses
  %i.ii = add nsw i64 %i.if, %.0.i.i.i.i.i.i.i.i147 ; 2 uses
  %i.ij = add nsw i64 %i.ih, %.0.i.i.i.i.i.i.i.i147 ; 4 uses
  %.off.i.i.i.i148 = add i64 %i.id, 3
  %.not.i.i.i.i149 = icmp ult i64 %.off.i.i.i.i148, 7
  br i1 %.not.i.i.i.i149, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i146
  %i.ik = getelementptr [4 x i8], ptr %i.hk, i64 %.0.i.i.i.i.i.i.i.i147 ; 2 uses
  %i.il = load <2 x i64>, ptr %i.ik, align 1, !tbaa !32 ; 2 uses
  %i.im = icmp sgt i64 %i.id, 7
  br i1 %i.im, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.in = getelementptr i8, ptr %i.ik, i64 16
  %i.io = load <4 x i32>, ptr %i.in, align 1, !tbaa !32 ; 2 uses
  %i.ip = bitcast <2 x i64> %i.il to <4 x i32>    ; 2 uses
  %i.iq = icmp samesign ugt i64 %i.id, 15
  br i1 %i.iq, label %.lr.ph.preheader.i.i.i.i168, label %._crit_edge.i.i.i.i165

.lr.ph.preheader.i.i.i.i168:                      ; preds = %bb.ao
  %.05777.i.i.i.i169 = add nsw i64 %.0.i.i.i.i.i.i.i.i147, 8
  br label %.lr.ph.i.i.i.i170

._crit_edge.i.i.i.i165:                           ; preds = %.lr.ph.i.i.i.i170, %bb.ao
  %.lcssa.i.i.i.i166 = phi <4 x i32> [ %i.io, %bb.ao ], [ %i.jb, %.lr.ph.i.i.i.i170 ]
  %.sroa.067.0.lcssa.i.i.i.i167 = phi <4 x i32> [ %i.ip, %bb.ao ], [ %i.ix, %.lr.ph.i.i.i.i170 ]
  %i.ir = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i167, %.lcssa.i.i.i.i166 ; 2 uses
  %i.is = bitcast <4 x i32> %i.ir to <2 x i64>
  %i.it = icmp sgt i64 %i.ih, %i.if
  br i1 %i.it, label %bb.ap, label %bb.aq

.lr.ph.i.i.i.i170:                                ; preds = %.lr.ph.i.i.i.i170, %.lr.ph.preheader.i.i.i.i168
  %.05780.i.i.i.i171 = phi i64 [ %.057.i.i.i.i174, %.lr.ph.i.i.i.i170 ], [ %.05777.i.i.i.i169, %.lr.ph.preheader.i.i.i.i168 ] ; 3 uses
  %.057.in79.i.i.i.i172 = phi i64 [ %.05780.i.i.i.i171, %.lr.ph.i.i.i.i170 ], [ %.0.i.i.i.i.i.i.i.i147, %.lr.ph.preheader.i.i.i.i168 ]
  %.sroa.067.078.i.i.i.i173 = phi <4 x i32> [ %i.ix, %.lr.ph.i.i.i.i170 ], [ %i.ip, %.lr.ph.preheader.i.i.i.i168 ]
  %i.iu = phi <4 x i32> [ %i.jb, %.lr.ph.i.i.i.i170 ], [ %i.io, %.lr.ph.preheader.i.i.i.i168 ]
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %.05780.i.i.i.i171
  %i.iw = load <4 x i32>, ptr %i.iv, align 1, !tbaa !32
  %i.ix = add <4 x i32> %i.iw, %.sroa.067.078.i.i.i.i173 ; 2 uses
  %i.iy = getelementptr [4 x i8], ptr %i.hk, i64 %.057.in79.i.i.i.i172
  %i.iz = getelementptr i8, ptr %i.iy, i64 48
  %i.ja = load <4 x i32>, ptr %i.iz, align 1, !tbaa !32
  %i.jb = add <4 x i32> %i.ja, %i.iu              ; 2 uses
  %.057.i.i.i.i174 = add nsw i64 %.05780.i.i.i.i171, 8 ; 2 uses
  %i.jc = icmp slt i64 %.057.i.i.i.i174, %i.ii
  br i1 %i.jc, label %.lr.ph.i.i.i.i170, label %._crit_edge.i.i.i.i165, !llvm.loop !33

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i165
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %i.ii
  %i.je = load <4 x i32>, ptr %i.jd, align 1, !tbaa !32
  %i.jf = add <4 x i32> %i.je, %i.ir
  %i.jg = bitcast <4 x i32> %i.jf to <2 x i64>
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge.i.i.i.i165, %bb.an
  %.sroa.067.2.i.i.i.i150 = phi <2 x i64> [ %i.il, %bb.an ], [ %i.jg, %bb.ap ], [ %i.is, %._crit_edge.i.i.i.i165 ] ; 2 uses
  %i.jh = bitcast <2 x i64> %.sroa.067.2.i.i.i.i150 to <4 x i32>
  %i.ji = bitcast <2 x i64> %.sroa.067.2.i.i.i.i150 to <4 x i32> ; 2 uses
  %i.jj = shufflevector <4 x i32> %i.ji, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.jk = add <4 x i32> %i.jj, %i.jh              ; 2 uses
  %shift1038 = shufflevector <4 x i32> %i.jk, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1039 = add nsw <4 x i32> %i.jk, %shift1038
  %7 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ji) ; 2 uses
  %i.jl = icmp sgt i64 %.0.i.i.i.i.i.i.i.i147, 0
  br i1 %i.jl, label %.lr.ph85.i.i.i.i161.preheader, label %.preheader.i.i.i.i153

.lr.ph85.i.i.i.i161.preheader:                    ; preds = %bb.aq
  %min.iters.check846 = icmp ult i64 %.0.i.i.i.i.i.i.i.i147, 8
  br i1 %min.iters.check846, label %.lr.ph85.i.i.i.i161.preheader1103, label %vector.ph847

vector.ph847:                                     ; preds = %.lr.ph85.i.i.i.i161.preheader
  %n.vec848 = and i64 %.0.i.i.i.i.i.i.i.i147, 9223372036854775800 ; 3 uses
  %i.jm = shufflevector <4 x i32> %foldExtExtBinop1039, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body849

vector.body849:                                   ; preds = %vector.body849, %vector.ph847
  %index850 = phi i64 [ 0, %vector.ph847 ], [ %index.next855, %vector.body849 ] ; 2 uses
  %vec.phi851 = phi <4 x i32> [ %i.jm, %vector.ph847 ], [ %i.jp, %vector.body849 ]
  %vec.phi852 = phi <4 x i32> [ zeroinitializer, %vector.ph847 ], [ %i.jq, %vector.body849 ]
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %index850 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %wide.load853 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !22
  %wide.load854 = load <4 x i32>, ptr %i.jo, align 4, !tbaa !22
  %i.jp = add <4 x i32> %wide.load853, %vec.phi851 ; 2 uses
  %i.jq = add <4 x i32> %wide.load854, %vec.phi852 ; 2 uses
  %index.next855 = add nuw i64 %index850, 8       ; 2 uses
  %i.jr = icmp eq i64 %index.next855, %n.vec848
  br i1 %i.jr, label %middle.block856, label %vector.body849, !llvm.loop !59

middle.block856:                                  ; preds = %vector.body849
  %bin.rdx857 = add <4 x i32> %i.jq, %i.jp
  %i.js = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx857) ; 2 uses
  %cmp.n858 = icmp eq i64 %.0.i.i.i.i.i.i.i.i147, %n.vec848
  br i1 %cmp.n858, label %.preheader.i.i.i.i153, label %.lr.ph85.i.i.i.i161.preheader1103

.lr.ph85.i.i.i.i161.preheader1103:                ; preds = %.lr.ph85.i.i.i.i161.preheader, %middle.block856
  %.05683.i.i.i.i162.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i161.preheader ], [ %n.vec848, %middle.block856 ]
  %.07582.i.i.i.i163.ph = phi i32 [ %7, %.lr.ph85.i.i.i.i161.preheader ], [ %i.js, %middle.block856 ]
  br label %.lr.ph85.i.i.i.i161

.preheader.i.i.i.i153:                            ; preds = %.lr.ph85.i.i.i.i161, %middle.block856, %bb.aq
  %.075.lcssa.i.i.i.i154 = phi i32 [ %7, %bb.aq ], [ %i.js, %middle.block856 ], [ %i.ki, %.lr.ph85.i.i.i.i161 ] ; 3 uses
  %i.jt = icmp slt i64 %i.ij, %i.ht
  br i1 %i.jt, label %.lr.ph89.i.i.i.i158.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit179

.lr.ph89.i.i.i.i158.preheader:                    ; preds = %.preheader.i.i.i.i153
  %i.ju = shl nsw i64 %i.ig, 2
  %i.jv = add i64 %.0.i.i.i.i.i.i.i.i147, %i.ju
  %i.jw = sub i64 %i.ht, %i.jv                    ; 3 uses
  %min.iters.check862 = icmp ult i64 %i.jw, 8
  br i1 %min.iters.check862, label %.lr.ph89.i.i.i.i158.preheader1098, label %vector.ph863

vector.ph863:                                     ; preds = %.lr.ph89.i.i.i.i158.preheader
  %n.vec864 = and i64 %i.jw, -8                   ; 3 uses
  %i.jx = add i64 %i.ij, %n.vec864
  %i.jy = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i154, i64 0
  %i.jz = getelementptr [4 x i8], ptr %i.hk, i64 %i.ij
  br label %vector.body865

vector.body865:                                   ; preds = %vector.body865, %vector.ph863
  %index866 = phi i64 [ 0, %vector.ph863 ], [ %index.next871, %vector.body865 ] ; 2 uses
  %vec.phi867 = phi <4 x i32> [ %i.jy, %vector.ph863 ], [ %i.kc, %vector.body865 ]
  %vec.phi868 = phi <4 x i32> [ zeroinitializer, %vector.ph863 ], [ %i.kd, %vector.body865 ]
  %i.ka = getelementptr [4 x i8], ptr %i.jz, i64 %index866 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %wide.load869 = load <4 x i32>, ptr %i.ka, align 4, !tbaa !22
  %wide.load870 = load <4 x i32>, ptr %i.kb, align 4, !tbaa !22
  %i.kc = add <4 x i32> %wide.load869, %vec.phi867 ; 2 uses
  %i.kd = add <4 x i32> %wide.load870, %vec.phi868 ; 2 uses
  %index.next871 = add nuw i64 %index866, 8       ; 2 uses
  %i.ke = icmp eq i64 %index.next871, %n.vec864
  br i1 %i.ke, label %middle.block872, label %vector.body865, !llvm.loop !60

middle.block872:                                  ; preds = %vector.body865
  %bin.rdx873 = add <4 x i32> %i.kd, %i.kc
  %i.kf = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx873) ; 2 uses
  %cmp.n874 = icmp eq i64 %i.jw, %n.vec864
  br i1 %cmp.n874, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit179, label %.lr.ph89.i.i.i.i158.preheader1098

.lr.ph89.i.i.i.i158.preheader1098:                ; preds = %.lr.ph89.i.i.i.i158.preheader, %middle.block872
  %.05588.i.i.i.i159.ph = phi i64 [ %i.ij, %.lr.ph89.i.i.i.i158.preheader ], [ %i.jx, %middle.block872 ]
  %.187.i.i.i.i160.ph = phi i32 [ %.075.lcssa.i.i.i.i154, %.lr.ph89.i.i.i.i158.preheader ], [ %i.kf, %middle.block872 ]
  br label %.lr.ph89.i.i.i.i158

.lr.ph85.i.i.i.i161:                              ; preds = %.lr.ph85.i.i.i.i161.preheader1103, %.lr.ph85.i.i.i.i161
  %.05683.i.i.i.i162 = phi i64 [ %i.kj, %.lr.ph85.i.i.i.i161 ], [ %.05683.i.i.i.i162.ph, %.lr.ph85.i.i.i.i161.preheader1103 ] ; 2 uses
  %.07582.i.i.i.i163 = phi i32 [ %i.ki, %.lr.ph85.i.i.i.i161 ], [ %.07582.i.i.i.i163.ph, %.lr.ph85.i.i.i.i161.preheader1103 ]
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %.05683.i.i.i.i162
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !22
  %i.ki = add nsw i32 %i.kh, %.07582.i.i.i.i163   ; 2 uses
  %i.kj = add nuw nsw i64 %.05683.i.i.i.i162, 1   ; 2 uses
  %exitcond.not.i.i.i.i164 = icmp eq i64 %i.kj, %.0.i.i.i.i.i.i.i.i147
  br i1 %exitcond.not.i.i.i.i164, label %.preheader.i.i.i.i153, label %.lr.ph85.i.i.i.i161, !llvm.loop !61

.lr.ph89.i.i.i.i158:                              ; preds = %.lr.ph89.i.i.i.i158.preheader1098, %.lr.ph89.i.i.i.i158
  %.05588.i.i.i.i159 = phi i64 [ %i.kn, %.lr.ph89.i.i.i.i158 ], [ %.05588.i.i.i.i159.ph, %.lr.ph89.i.i.i.i158.preheader1098 ] ; 2 uses
  %.187.i.i.i.i160 = phi i32 [ %i.km, %.lr.ph89.i.i.i.i158 ], [ %.187.i.i.i.i160.ph, %.lr.ph89.i.i.i.i158.preheader1098 ]
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %.05588.i.i.i.i159
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !22
  %i.km = add nsw i32 %i.kl, %.187.i.i.i.i160     ; 2 uses
  %i.kn = add nsw i64 %.05588.i.i.i.i159, 1       ; 2 uses
  %i.ko = icmp slt i64 %i.kn, %i.ht
  br i1 %i.ko, label %.lr.ph89.i.i.i.i158, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit179, !llvm.loop !62

bb.ar:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i146
  %i.kp = load i32, ptr %i.hk, align 4, !tbaa !22 ; 3 uses
  %i.kq = icmp sgt i64 %i.ht, 1
  br i1 %i.kq, label %.lr.ph94.i.i.i.i175.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit179

.lr.ph94.i.i.i.i175.preheader:                    ; preds = %bb.ar
  %i.kr = add nsw i64 %i.ht, -1                   ; 2 uses
  %min.iters.check878 = icmp ult i64 %i.ht, 9
  br i1 %min.iters.check878, label %.lr.ph94.i.i.i.i175.preheader1094, label %vector.ph879

vector.ph879:                                     ; preds = %.lr.ph94.i.i.i.i175.preheader
  %n.vec880 = and i64 %i.kr, -8                   ; 3 uses
  %i.ks = or disjoint i64 %n.vec880, 1
  %i.kt = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.kp, i64 0
  br label %vector.body881

vector.body881:                                   ; preds = %vector.body881, %vector.ph879
  %index882 = phi i64 [ 0, %vector.ph879 ], [ %index.next887, %vector.body881 ] ; 2 uses
  %vec.phi883 = phi <4 x i32> [ %i.kt, %vector.ph879 ], [ %i.kx, %vector.body881 ]
  %vec.phi884 = phi <4 x i32> [ zeroinitializer, %vector.ph879 ], [ %i.ky, %vector.body881 ]
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %index882 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 20
  %wide.load885 = load <4 x i32>, ptr %i.kv, align 4, !tbaa !22
  %wide.load886 = load <4 x i32>, ptr %i.kw, align 4, !tbaa !22
  %i.kx = add <4 x i32> %wide.load885, %vec.phi883 ; 2 uses
  %i.ky = add <4 x i32> %wide.load886, %vec.phi884 ; 2 uses
  %index.next887 = add nuw i64 %index882, 8       ; 2 uses
  %i.kz = icmp eq i64 %index.next887, %n.vec880
  br i1 %i.kz, label %middle.block888, label %vector.body881, !llvm.loop !63

middle.block888:                                  ; preds = %vector.body881
  %bin.rdx889 = add <4 x i32> %i.ky, %i.kx
  %i.la = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx889) ; 2 uses
  %cmp.n890 = icmp eq i64 %i.kr, %n.vec880
  br i1 %cmp.n890, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit179, label %.lr.ph94.i.i.i.i175.preheader1094

.lr.ph94.i.i.i.i175.preheader1094:                ; preds = %.lr.ph94.i.i.i.i175.preheader, %middle.block888
  %.092.i.i.i.i176.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i175.preheader ], [ %i.ks, %middle.block888 ]
  %.291.i.i.i.i177.ph = phi i32 [ %i.kp, %.lr.ph94.i.i.i.i175.preheader ], [ %i.la, %middle.block888 ]
  br label %.lr.ph94.i.i.i.i175

.lr.ph94.i.i.i.i175:                              ; preds = %.lr.ph94.i.i.i.i175.preheader1094, %.lr.ph94.i.i.i.i175
  %.092.i.i.i.i176 = phi i64 [ %i.le, %.lr.ph94.i.i.i.i175 ], [ %.092.i.i.i.i176.ph, %.lr.ph94.i.i.i.i175.preheader1094 ] ; 2 uses
  %.291.i.i.i.i177 = phi i32 [ %i.ld, %.lr.ph94.i.i.i.i175 ], [ %.291.i.i.i.i177.ph, %.lr.ph94.i.i.i.i175.preheader1094 ]
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %.092.i.i.i.i176
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !22
  %i.ld = add nsw i32 %i.lc, %.291.i.i.i.i177     ; 2 uses
  %i.le = add nuw nsw i64 %.092.i.i.i.i176, 1     ; 2 uses
  %exitcond102.not.i.i.i.i178 = icmp eq i64 %i.le, %i.ht
  br i1 %exitcond102.not.i.i.i.i178, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit179, label %.lr.ph94.i.i.i.i175, !llvm.loop !64

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit179: ; preds = %.lr.ph89.i.i.i.i158, %.lr.ph94.i.i.i.i175, %middle.block872, %middle.block888, %.preheader.i.i.i.i153, %bb.ar, %bb.aj
  %.0.i157.in = phi i32 [ %i.hs, %bb.aj ], [ %i.ld, %.lr.ph94.i.i.i.i175 ], [ %.075.lcssa.i.i.i.i154, %.preheader.i.i.i.i153 ], [ %i.kp, %bb.ar ], [ %i.la, %middle.block888 ], [ %i.kf, %middle.block872 ], [ %i.km, %.lr.ph89.i.i.i.i158 ]
  %.0.i157 = sext i32 %.0.i157.in to i64          ; 2 uses
  %i.lf = shl nsw i64 %.0.i157, 1                 ; 3 uses
  %i.lg = icmp ugt i64 %i.lf, 2305843009213693951
  br i1 %i.lg, label %.invoke768, label %bb.as

bb.as:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit179
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !43
  %i.lj = load ptr, ptr %i.hi, align 8, !tbaa !13 ; 4 uses
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = ptrtoint ptr %i.lj to i64               ; 2 uses
  %i.lm = sub i64 %i.lk, %i.ll                    ; 2 uses
  %i.ln = ashr exact i64 %i.lm, 2
  %i.lo = icmp ult i64 %i.ln, %i.lf
  br i1 %i.lo, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i180, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit186

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i180: ; preds = %bb.as
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !9
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = sub i64 %i.lr, %i.ll                    ; 3 uses
  %i.lt = shl nsw i64 %.0.i157, 3
  %i.lu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lt) #20
          to label %.noexc185 unwind label %bb.ad ; 4 uses

.noexc185:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i180
  %i.lv = icmp sgt i64 %i.ls, 0
  br i1 %i.lv, label %bb.at, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i181

bb.at:                                            ; preds = %.noexc185
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lu, ptr align 4 %i.lj, i64 %i.ls, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i181

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i181: ; preds = %bb.at, %.noexc185
  %.not.i8.i182 = icmp eq ptr %i.lj, null
  br i1 %.not.i8.i182, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i183, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i181
  call void @_ZdlPvm(ptr noundef nonnull %i.lj, i64 noundef %i.lm) #21
  %.pre614.pre = load ptr, ptr %i.hj, align 8, !tbaa !31
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i183

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i183: ; preds = %bb.au, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i181
  %.pre614 = phi ptr [ %.pre614.pre, %bb.au ], [ %i.hk, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i181 ]
  store ptr %i.lu, ptr %i.hi, align 8, !tbaa !13
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.ls
  store ptr %i.lw, ptr %i.lp, align 8, !tbaa !9
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.lf
  store ptr %i.lx, ptr %i.lh, align 8, !tbaa !43
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit186

_ZNSt6vectorIiSaIiEE7reserveEm.exit186:           ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i183, %bb.as
  %i.ly = phi ptr [ %.pre614, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i183 ], [ %i.hk, %bb.as ] ; 20 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.ma = icmp eq ptr %i.ly, null
  br i1 %i.ma, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit186
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !30 ; 2 uses
  %i.md = load i64, ptr %i.go, align 8, !tbaa !24
  %i.me = getelementptr inbounds [4 x i8], ptr %i.mc, i64 %i.md
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !22
  %i.mg = load i32, ptr %i.mc, align 4, !tbaa !22
  %i.mh = sub nsw i32 %i.mf, %i.mg
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit221

bb.aw:                                            ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit186
  %.pr = load i64, ptr %i.go, align 8, !tbaa !24  ; 11 uses
  %i.mi = icmp eq i64 %.pr, 0
  br i1 %i.mi, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit228.thread, label %bb.ax

_ZNSt6vectorIiSaIiEE7reserveEm.exit228.thread:    ; preds = %bb.aw, %.thread738
  %i.mj = phi ptr [ %i.hk, %.thread738 ], [ %i.ly, %bb.aw ]
  %i.mk = phi ptr [ %i.hv, %.thread738 ], [ %i.lh, %bb.aw ]
  %i.ml = phi ptr [ %i.hw, %.thread738 ], [ %i.lz, %bb.aw ]
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.bi

bb.ax:                                            ; preds = %bb.aw
  %i.mo = ptrtoint ptr %i.ly to i64               ; 2 uses
  %i.mp = and i64 %i.mo, 3
  %.not.i.i.i.i.i.i.i.i187 = icmp eq i64 %i.mp, 0
  br i1 %.not.i.i.i.i.i.i.i.i187, label %bb.ay, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i188

bb.ay:                                            ; preds = %bb.ax
  %i.mq = lshr exact i64 %i.mo, 2
  %i.mr = sub nsw i64 0, %i.mq
  %i.ms = and i64 %i.mr, 3
  %i.mt = call i64 @llvm.smin.i64(i64 %i.ms, i64 %.pr)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i188

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i188: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i.i.i189 = phi i64 [ %i.mt, %bb.ay ], [ %.pr, %bb.ax ] ; 12 uses
  %i.mu = sub nsw i64 %.pr, %.0.i.i.i.i.i.i.i.i189 ; 5 uses
  %i.mv = sdiv i64 %i.mu, 8
  %i.mw = shl nsw i64 %i.mv, 3                    ; 2 uses
  %i.mx = sdiv i64 %i.mu, 4                       ; 2 uses
  %i.my = shl nsw i64 %i.mx, 2                    ; 2 uses
  %i.mz = add nsw i64 %i.mw, %.0.i.i.i.i.i.i.i.i189 ; 2 uses
  %i.na = add nsw i64 %i.my, %.0.i.i.i.i.i.i.i.i189 ; 4 uses
  %.off.i.i.i.i190 = add i64 %i.mu, 3
  %.not.i.i.i.i191 = icmp ult i64 %.off.i.i.i.i190, 7
  br i1 %.not.i.i.i.i191, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i188
  %i.nb = getelementptr [4 x i8], ptr %i.ly, i64 %.0.i.i.i.i.i.i.i.i189 ; 2 uses
  %i.nc = load <2 x i64>, ptr %i.nb, align 1, !tbaa !32 ; 2 uses
  %i.nd = icmp sgt i64 %i.mu, 7
  br i1 %i.nd, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.ne = getelementptr i8, ptr %i.nb, i64 16
  %i.nf = load <4 x i32>, ptr %i.ne, align 1, !tbaa !32 ; 2 uses
  %i.ng = bitcast <2 x i64> %i.nc to <4 x i32>    ; 2 uses
  %i.nh = icmp samesign ugt i64 %i.mu, 15
  br i1 %i.nh, label %.lr.ph.preheader.i.i.i.i210, label %._crit_edge.i.i.i.i207

.lr.ph.preheader.i.i.i.i210:                      ; preds = %bb.ba
  %.05777.i.i.i.i211 = add nsw i64 %.0.i.i.i.i.i.i.i.i189, 8
  br label %.lr.ph.i.i.i.i212

._crit_edge.i.i.i.i207:                           ; preds = %.lr.ph.i.i.i.i212, %bb.ba
  %.lcssa.i.i.i.i208 = phi <4 x i32> [ %i.nf, %bb.ba ], [ %i.ns, %.lr.ph.i.i.i.i212 ]
  %.sroa.067.0.lcssa.i.i.i.i209 = phi <4 x i32> [ %i.ng, %bb.ba ], [ %i.no, %.lr.ph.i.i.i.i212 ]
  %i.ni = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i209, %.lcssa.i.i.i.i208 ; 2 uses
  %i.nj = bitcast <4 x i32> %i.ni to <2 x i64>
  %i.nk = icmp sgt i64 %i.my, %i.mw
  br i1 %i.nk, label %bb.bb, label %bb.bc

.lr.ph.i.i.i.i212:                                ; preds = %.lr.ph.i.i.i.i212, %.lr.ph.preheader.i.i.i.i210
  %.05780.i.i.i.i213 = phi i64 [ %.057.i.i.i.i216, %.lr.ph.i.i.i.i212 ], [ %.05777.i.i.i.i211, %.lr.ph.preheader.i.i.i.i210 ] ; 3 uses
  %.057.in79.i.i.i.i214 = phi i64 [ %.05780.i.i.i.i213, %.lr.ph.i.i.i.i212 ], [ %.0.i.i.i.i.i.i.i.i189, %.lr.ph.preheader.i.i.i.i210 ]
  %.sroa.067.078.i.i.i.i215 = phi <4 x i32> [ %i.no, %.lr.ph.i.i.i.i212 ], [ %i.ng, %.lr.ph.preheader.i.i.i.i210 ]
  %i.nl = phi <4 x i32> [ %i.ns, %.lr.ph.i.i.i.i212 ], [ %i.nf, %.lr.ph.preheader.i.i.i.i210 ]
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.ly, i64 %.05780.i.i.i.i213
  %i.nn = load <4 x i32>, ptr %i.nm, align 1, !tbaa !32
  %i.no = add <4 x i32> %i.nn, %.sroa.067.078.i.i.i.i215 ; 2 uses
  %i.np = getelementptr [4 x i8], ptr %i.ly, i64 %.057.in79.i.i.i.i214
  %i.nq = getelementptr i8, ptr %i.np, i64 48
  %i.nr = load <4 x i32>, ptr %i.nq, align 1, !tbaa !32
  %i.ns = add <4 x i32> %i.nr, %i.nl              ; 2 uses
  %.057.i.i.i.i216 = add nsw i64 %.05780.i.i.i.i213, 8 ; 2 uses
  %i.nt = icmp slt i64 %.057.i.i.i.i216, %i.mz
  br i1 %i.nt, label %.lr.ph.i.i.i.i212, label %._crit_edge.i.i.i.i207, !llvm.loop !33

bb.bb:                                            ; preds = %._crit_edge.i.i.i.i207
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.ly, i64 %i.mz
  %i.nv = load <4 x i32>, ptr %i.nu, align 1, !tbaa !32
  %i.nw = add <4 x i32> %i.nv, %i.ni
  %i.nx = bitcast <4 x i32> %i.nw to <2 x i64>
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %._crit_edge.i.i.i.i207, %bb.az
  %.sroa.067.2.i.i.i.i192 = phi <2 x i64> [ %i.nc, %bb.az ], [ %i.nx, %bb.bb ], [ %i.nj, %._crit_edge.i.i.i.i207 ] ; 2 uses
  %i.ny = bitcast <2 x i64> %.sroa.067.2.i.i.i.i192 to <4 x i32>
  %i.nz = bitcast <2 x i64> %.sroa.067.2.i.i.i.i192 to <4 x i32> ; 2 uses
  %i.oa = shufflevector <4 x i32> %i.nz, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ob = add <4 x i32> %i.oa, %i.ny              ; 2 uses
  %shift1041 = shufflevector <4 x i32> %i.ob, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1042 = add nsw <4 x i32> %i.ob, %shift1041
  %8 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.nz) ; 2 uses
  %i.oc = icmp sgt i64 %.0.i.i.i.i.i.i.i.i189, 0
  br i1 %i.oc, label %.lr.ph85.i.i.i.i203.preheader, label %.preheader.i.i.i.i195

.lr.ph85.i.i.i.i203.preheader:                    ; preds = %bb.bc
  %min.iters.check894 = icmp ult i64 %.0.i.i.i.i.i.i.i.i189, 8
  br i1 %min.iters.check894, label %.lr.ph85.i.i.i.i203.preheader1088, label %vector.ph895

vector.ph895:                                     ; preds = %.lr.ph85.i.i.i.i203.preheader
  %n.vec896 = and i64 %.0.i.i.i.i.i.i.i.i189, 9223372036854775800 ; 3 uses
  %i.od = shufflevector <4 x i32> %foldExtExtBinop1042, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body897

vector.body897:                                   ; preds = %vector.body897, %vector.ph895
  %index898 = phi i64 [ 0, %vector.ph895 ], [ %index.next903, %vector.body897 ] ; 2 uses
  %vec.phi899 = phi <4 x i32> [ %i.od, %vector.ph895 ], [ %i.og, %vector.body897 ]
  %vec.phi900 = phi <4 x i32> [ zeroinitializer, %vector.ph895 ], [ %i.oh, %vector.body897 ]
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %index898 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %wide.load901 = load <4 x i32>, ptr %i.oe, align 4, !tbaa !22
  %wide.load902 = load <4 x i32>, ptr %i.of, align 4, !tbaa !22
  %i.og = add <4 x i32> %wide.load901, %vec.phi899 ; 2 uses
  %i.oh = add <4 x i32> %wide.load902, %vec.phi900 ; 2 uses
  %index.next903 = add nuw i64 %index898, 8       ; 2 uses
  %i.oi = icmp eq i64 %index.next903, %n.vec896
  br i1 %i.oi, label %middle.block904, label %vector.body897, !llvm.loop !65

middle.block904:                                  ; preds = %vector.body897
  %bin.rdx905 = add <4 x i32> %i.oh, %i.og
  %i.oj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx905) ; 2 uses
  %cmp.n906 = icmp eq i64 %.0.i.i.i.i.i.i.i.i189, %n.vec896
  br i1 %cmp.n906, label %.preheader.i.i.i.i195, label %.lr.ph85.i.i.i.i203.preheader1088

.lr.ph85.i.i.i.i203.preheader1088:                ; preds = %.lr.ph85.i.i.i.i203.preheader, %middle.block904
  %.05683.i.i.i.i204.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i203.preheader ], [ %n.vec896, %middle.block904 ]
  %.07582.i.i.i.i205.ph = phi i32 [ %8, %.lr.ph85.i.i.i.i203.preheader ], [ %i.oj, %middle.block904 ]
  br label %.lr.ph85.i.i.i.i203

.preheader.i.i.i.i195:                            ; preds = %.lr.ph85.i.i.i.i203, %middle.block904, %bb.bc
  %.075.lcssa.i.i.i.i196 = phi i32 [ %8, %bb.bc ], [ %i.oj, %middle.block904 ], [ %i.oz, %.lr.ph85.i.i.i.i203 ] ; 3 uses
  %i.ok = icmp slt i64 %i.na, %.pr
  br i1 %i.ok, label %.lr.ph89.i.i.i.i200.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit221

.lr.ph89.i.i.i.i200.preheader:                    ; preds = %.preheader.i.i.i.i195
  %i.ol = shl nsw i64 %i.mx, 2
  %i.om = add i64 %.0.i.i.i.i.i.i.i.i189, %i.ol
  %i.on = sub i64 %.pr, %i.om                     ; 3 uses
  %min.iters.check910 = icmp ult i64 %i.on, 8
  br i1 %min.iters.check910, label %.lr.ph89.i.i.i.i200.preheader1083, label %vector.ph911

vector.ph911:                                     ; preds = %.lr.ph89.i.i.i.i200.preheader
  %n.vec912 = and i64 %i.on, -8                   ; 3 uses
  %i.oo = add i64 %i.na, %n.vec912
  %i.op = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i196, i64 0
  %i.oq = getelementptr [4 x i8], ptr %i.ly, i64 %i.na
  br label %vector.body913

vector.body913:                                   ; preds = %vector.body913, %vector.ph911
  %index914 = phi i64 [ 0, %vector.ph911 ], [ %index.next919, %vector.body913 ] ; 2 uses
  %vec.phi915 = phi <4 x i32> [ %i.op, %vector.ph911 ], [ %i.ot, %vector.body913 ]
  %vec.phi916 = phi <4 x i32> [ zeroinitializer, %vector.ph911 ], [ %i.ou, %vector.body913 ]
  %i.or = getelementptr [4 x i8], ptr %i.oq, i64 %index914 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %wide.load917 = load <4 x i32>, ptr %i.or, align 4, !tbaa !22
  %wide.load918 = load <4 x i32>, ptr %i.os, align 4, !tbaa !22
  %i.ot = add <4 x i32> %wide.load917, %vec.phi915 ; 2 uses
  %i.ou = add <4 x i32> %wide.load918, %vec.phi916 ; 2 uses
  %index.next919 = add nuw i64 %index914, 8       ; 2 uses
  %i.ov = icmp eq i64 %index.next919, %n.vec912
  br i1 %i.ov, label %middle.block920, label %vector.body913, !llvm.loop !66

middle.block920:                                  ; preds = %vector.body913
  %bin.rdx921 = add <4 x i32> %i.ou, %i.ot
  %i.ow = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx921) ; 2 uses
  %cmp.n922 = icmp eq i64 %i.on, %n.vec912
  br i1 %cmp.n922, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit221, label %.lr.ph89.i.i.i.i200.preheader1083

.lr.ph89.i.i.i.i200.preheader1083:                ; preds = %.lr.ph89.i.i.i.i200.preheader, %middle.block920
  %.05588.i.i.i.i201.ph = phi i64 [ %i.na, %.lr.ph89.i.i.i.i200.preheader ], [ %i.oo, %middle.block920 ]
  %.187.i.i.i.i202.ph = phi i32 [ %.075.lcssa.i.i.i.i196, %.lr.ph89.i.i.i.i200.preheader ], [ %i.ow, %middle.block920 ]
  br label %.lr.ph89.i.i.i.i200

.lr.ph85.i.i.i.i203:                              ; preds = %.lr.ph85.i.i.i.i203.preheader1088, %.lr.ph85.i.i.i.i203
  %.05683.i.i.i.i204 = phi i64 [ %i.pa, %.lr.ph85.i.i.i.i203 ], [ %.05683.i.i.i.i204.ph, %.lr.ph85.i.i.i.i203.preheader1088 ] ; 2 uses
  %.07582.i.i.i.i205 = phi i32 [ %i.oz, %.lr.ph85.i.i.i.i203 ], [ %.07582.i.i.i.i205.ph, %.lr.ph85.i.i.i.i203.preheader1088 ]
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %.05683.i.i.i.i204
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !22
  %i.oz = add nsw i32 %i.oy, %.07582.i.i.i.i205   ; 2 uses
  %i.pa = add nuw nsw i64 %.05683.i.i.i.i204, 1   ; 2 uses
  %exitcond.not.i.i.i.i206 = icmp eq i64 %i.pa, %.0.i.i.i.i.i.i.i.i189
  br i1 %exitcond.not.i.i.i.i206, label %.preheader.i.i.i.i195, label %.lr.ph85.i.i.i.i203, !llvm.loop !67

.lr.ph89.i.i.i.i200:                              ; preds = %.lr.ph89.i.i.i.i200.preheader1083, %.lr.ph89.i.i.i.i200
  %.05588.i.i.i.i201 = phi i64 [ %i.pe, %.lr.ph89.i.i.i.i200 ], [ %.05588.i.i.i.i201.ph, %.lr.ph89.i.i.i.i200.preheader1083 ] ; 2 uses
  %.187.i.i.i.i202 = phi i32 [ %i.pd, %.lr.ph89.i.i.i.i200 ], [ %.187.i.i.i.i202.ph, %.lr.ph89.i.i.i.i200.preheader1083 ]
  %i.pb = getelementptr inbounds [4 x i8], ptr %i.ly, i64 %.05588.i.i.i.i201
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !22
  %i.pd = add nsw i32 %i.pc, %.187.i.i.i.i202     ; 2 uses
  %i.pe = add nsw i64 %.05588.i.i.i.i201, 1       ; 2 uses
  %i.pf = icmp slt i64 %i.pe, %.pr
  br i1 %i.pf, label %.lr.ph89.i.i.i.i200, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit221, !llvm.loop !68

bb.bd:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i188
  %i.pg = load i32, ptr %i.ly, align 4, !tbaa !22 ; 3 uses
  %i.ph = icmp sgt i64 %.pr, 1
  br i1 %i.ph, label %.lr.ph94.i.i.i.i217.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit221

.lr.ph94.i.i.i.i217.preheader:                    ; preds = %bb.bd
  %i.pi = add nsw i64 %.pr, -1                    ; 2 uses
  %min.iters.check926 = icmp ult i64 %.pr, 9
  br i1 %min.iters.check926, label %.lr.ph94.i.i.i.i217.preheader1079, label %vector.ph927

vector.ph927:                                     ; preds = %.lr.ph94.i.i.i.i217.preheader
  %n.vec928 = and i64 %i.pi, -8                   ; 3 uses
  %i.pj = or disjoint i64 %n.vec928, 1
  %i.pk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.pg, i64 0
  br label %vector.body929

vector.body929:                                   ; preds = %vector.body929, %vector.ph927
  %index930 = phi i64 [ 0, %vector.ph927 ], [ %index.next935, %vector.body929 ] ; 2 uses
  %vec.phi931 = phi <4 x i32> [ %i.pk, %vector.ph927 ], [ %i.po, %vector.body929 ]
  %vec.phi932 = phi <4 x i32> [ zeroinitializer, %vector.ph927 ], [ %i.pp, %vector.body929 ]
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %index930 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 4
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 20
  %wide.load933 = load <4 x i32>, ptr %i.pm, align 4, !tbaa !22
  %wide.load934 = load <4 x i32>, ptr %i.pn, align 4, !tbaa !22
  %i.po = add <4 x i32> %wide.load933, %vec.phi931 ; 2 uses
  %i.pp = add <4 x i32> %wide.load934, %vec.phi932 ; 2 uses
  %index.next935 = add nuw i64 %index930, 8       ; 2 uses
  %i.pq = icmp eq i64 %index.next935, %n.vec928
  br i1 %i.pq, label %middle.block936, label %vector.body929, !llvm.loop !69

middle.block936:                                  ; preds = %vector.body929
  %bin.rdx937 = add <4 x i32> %i.pp, %i.po
  %i.pr = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx937) ; 2 uses
  %cmp.n938 = icmp eq i64 %i.pi, %n.vec928
  br i1 %cmp.n938, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit221, label %.lr.ph94.i.i.i.i217.preheader1079

.lr.ph94.i.i.i.i217.preheader1079:                ; preds = %.lr.ph94.i.i.i.i217.preheader, %middle.block936
  %.092.i.i.i.i218.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i217.preheader ], [ %i.pj, %middle.block936 ]
  %.291.i.i.i.i219.ph = phi i32 [ %i.pg, %.lr.ph94.i.i.i.i217.preheader ], [ %i.pr, %middle.block936 ]
  br label %.lr.ph94.i.i.i.i217

.lr.ph94.i.i.i.i217:                              ; preds = %.lr.ph94.i.i.i.i217.preheader1079, %.lr.ph94.i.i.i.i217
  %.092.i.i.i.i218 = phi i64 [ %i.pv, %.lr.ph94.i.i.i.i217 ], [ %.092.i.i.i.i218.ph, %.lr.ph94.i.i.i.i217.preheader1079 ] ; 2 uses
  %.291.i.i.i.i219 = phi i32 [ %i.pu, %.lr.ph94.i.i.i.i217 ], [ %.291.i.i.i.i219.ph, %.lr.ph94.i.i.i.i217.preheader1079 ]
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %.092.i.i.i.i218
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !22
  %i.pu = add nsw i32 %i.pt, %.291.i.i.i.i219     ; 2 uses
  %i.pv = add nuw nsw i64 %.092.i.i.i.i218, 1     ; 2 uses
  %exitcond102.not.i.i.i.i220 = icmp eq i64 %i.pv, %.pr
  br i1 %exitcond102.not.i.i.i.i220, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit221, label %.lr.ph94.i.i.i.i217, !llvm.loop !70

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit221: ; preds = %.lr.ph89.i.i.i.i200, %.lr.ph94.i.i.i.i217, %middle.block920, %middle.block936, %.preheader.i.i.i.i195, %bb.bd, %bb.av
  %i.pw = phi ptr [ null, %bb.av ], [ %i.ly, %middle.block936 ], [ %i.ly, %.preheader.i.i.i.i195 ], [ %i.ly, %bb.bd ], [ %i.ly, %middle.block920 ], [ %i.ly, %.lr.ph94.i.i.i.i217 ], [ %i.ly, %.lr.ph89.i.i.i.i200 ] ; 2 uses
  %.0.i199.in = phi i32 [ %i.mh, %bb.av ], [ %i.pr, %middle.block936 ], [ %.075.lcssa.i.i.i.i196, %.preheader.i.i.i.i195 ], [ %i.pg, %bb.bd ], [ %i.ow, %middle.block920 ], [ %i.pu, %.lr.ph94.i.i.i.i217 ], [ %i.pd, %.lr.ph89.i.i.i.i200 ]
  %.0.i199 = sext i32 %.0.i199.in to i64          ; 2 uses
  %i.px = shl nsw i64 %.0.i199, 1                 ; 3 uses
  %i.py = icmp ugt i64 %i.px, 2305843009213693951
  br i1 %i.py, label %.invoke768, label %bb.be

bb.be:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit221
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !43
  %i.qb = load ptr, ptr %i.lz, align 8, !tbaa !13 ; 4 uses
  %i.qc = ptrtoint ptr %i.qa to i64
  %i.qd = ptrtoint ptr %i.qb to i64               ; 2 uses
  %i.qe = sub i64 %i.qc, %i.qd                    ; 2 uses
  %i.qf = ashr exact i64 %i.qe, 2
  %i.qg = icmp ult i64 %i.qf, %i.px
  br i1 %i.qg, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i222, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit228

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i222: ; preds = %bb.be
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !9
  %i.qj = ptrtoint ptr %i.qi to i64
  %i.qk = sub i64 %i.qj, %i.qd                    ; 3 uses
  %i.ql = shl nsw i64 %.0.i199, 3
  %i.qm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ql) #20
          to label %.noexc227 unwind label %bb.ad ; 4 uses

.noexc227:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i222
  %i.qn = icmp sgt i64 %i.qk, 0
  br i1 %i.qn, label %bb.bf, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i223

bb.bf:                                            ; preds = %.noexc227
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.qm, ptr align 4 %i.qb, i64 %i.qk, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i223

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i223: ; preds = %bb.bf, %.noexc227
  %.not.i8.i224 = icmp eq ptr %i.qb, null
  br i1 %.not.i8.i224, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i225, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i223
  call void @_ZdlPvm(ptr noundef nonnull %i.qb, i64 noundef %i.qe) #21
  %.pre615.pre = load ptr, ptr %i.hj, align 8, !tbaa !31
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i225

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i225: ; preds = %bb.bg, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i223
  %.pre615 = phi ptr [ %.pre615.pre, %bb.bg ], [ %i.pw, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i223 ]
  store ptr %i.qm, ptr %i.lz, align 8, !tbaa !13
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 %i.qk
  store ptr %i.qo, ptr %i.qh, align 8, !tbaa !9
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.px
  store ptr %i.qp, ptr %i.pz, align 8, !tbaa !43
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit228

_ZNSt6vectorIiSaIiEE7reserveEm.exit228:           ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i225, %bb.be
  %i.qq = phi ptr [ %.pre615, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i225 ], [ %i.pw, %bb.be ] ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.qs = icmp eq ptr %i.qq, null
  br i1 %i.qs, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit228
  %i.qt = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !30 ; 2 uses
  %i.qv = load i64, ptr %i.go, align 8, !tbaa !24 ; 2 uses
  %i.qw = getelementptr inbounds [4 x i8], ptr %i.qu, i64 %i.qv
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !22
  %i.qy = load i32, ptr %i.qu, align 4, !tbaa !22
  %i.qz = sub nsw i32 %i.qx, %i.qy
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit263

bb.bi:                                            ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit228.thread, %_ZNSt6vectorIiSaIiEE7reserveEm.exit228
  %i.ra = phi ptr [ %i.mn, %_ZNSt6vectorIiSaIiEE7reserveEm.exit228.thread ], [ %i.qr, %_ZNSt6vectorIiSaIiEE7reserveEm.exit228 ] ; 7 uses
  %i.rb = phi ptr [ %i.mm, %_ZNSt6vectorIiSaIiEE7reserveEm.exit228.thread ], [ %i.pz, %_ZNSt6vectorIiSaIiEE7reserveEm.exit228 ] ; 6 uses
  %i.rc = phi ptr [ %i.mj, %_ZNSt6vectorIiSaIiEE7reserveEm.exit228.thread ], [ %i.qq, %_ZNSt6vectorIiSaIiEE7reserveEm.exit228 ] ; 12 uses
  %i.rd = phi ptr [ %i.mk, %_ZNSt6vectorIiSaIiEE7reserveEm.exit228.thread ], [ %i.lh, %_ZNSt6vectorIiSaIiEE7reserveEm.exit228 ] ; 6 uses
  %i.re = phi ptr [ %i.ml, %_ZNSt6vectorIiSaIiEE7reserveEm.exit228.thread ], [ %i.lz, %_ZNSt6vectorIiSaIiEE7reserveEm.exit228 ] ; 7 uses
  %i.rf = load i64, ptr %i.go, align 8, !tbaa !24 ; 17 uses
  %i.rg = icmp eq i64 %i.rf, 0
  br i1 %i.rg, label %._crit_edge578, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.rh = ptrtoint ptr %i.rc to i64               ; 2 uses
  %i.ri = and i64 %i.rh, 3
  %.not.i.i.i.i.i.i.i.i229 = icmp eq i64 %i.ri, 0
  br i1 %.not.i.i.i.i.i.i.i.i229, label %bb.bk, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i230

bb.bk:                                            ; preds = %bb.bj
  %i.rj = lshr exact i64 %i.rh, 2
  %i.rk = sub nsw i64 0, %i.rj
  %i.rl = and i64 %i.rk, 3
  %i.rm = call i64 @llvm.smin.i64(i64 %i.rl, i64 %i.rf)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i230

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i230: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i.i.i.i.i231 = phi i64 [ %i.rm, %bb.bk ], [ %i.rf, %bb.bj ] ; 12 uses
  %i.rn = sub nsw i64 %i.rf, %.0.i.i.i.i.i.i.i.i231 ; 5 uses
  %i.ro = sdiv i64 %i.rn, 8
  %i.rp = shl nsw i64 %i.ro, 3                    ; 2 uses
  %i.rq = sdiv i64 %i.rn, 4                       ; 2 uses
  %i.rr = shl nsw i64 %i.rq, 2                    ; 2 uses
  %i.rs = add nsw i64 %i.rp, %.0.i.i.i.i.i.i.i.i231 ; 2 uses
  %i.rt = add nsw i64 %i.rr, %.0.i.i.i.i.i.i.i.i231 ; 4 uses
  %.off.i.i.i.i232 = add i64 %i.rn, 3
  %.not.i.i.i.i233 = icmp ult i64 %.off.i.i.i.i232, 7
  br i1 %.not.i.i.i.i233, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i230
  %i.ru = getelementptr [4 x i8], ptr %i.rc, i64 %.0.i.i.i.i.i.i.i.i231 ; 2 uses
  %i.rv = load <2 x i64>, ptr %i.ru, align 1, !tbaa !32 ; 2 uses
  %i.rw = icmp sgt i64 %i.rn, 7
  br i1 %i.rw, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.rx = getelementptr i8, ptr %i.ru, i64 16
  %i.ry = load <4 x i32>, ptr %i.rx, align 1, !tbaa !32 ; 2 uses
  %i.rz = bitcast <2 x i64> %i.rv to <4 x i32>    ; 2 uses
  %i.sa = icmp samesign ugt i64 %i.rn, 15
  br i1 %i.sa, label %.lr.ph.preheader.i.i.i.i252, label %._crit_edge.i.i.i.i249

.lr.ph.preheader.i.i.i.i252:                      ; preds = %bb.bm
  %.05777.i.i.i.i253 = add nsw i64 %.0.i.i.i.i.i.i.i.i231, 8
  br label %.lr.ph.i.i.i.i254

._crit_edge.i.i.i.i249:                           ; preds = %.lr.ph.i.i.i.i254, %bb.bm
  %.lcssa.i.i.i.i250 = phi <4 x i32> [ %i.ry, %bb.bm ], [ %i.sl, %.lr.ph.i.i.i.i254 ]
  %.sroa.067.0.lcssa.i.i.i.i251 = phi <4 x i32> [ %i.rz, %bb.bm ], [ %i.sh, %.lr.ph.i.i.i.i254 ]
  %i.sb = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i251, %.lcssa.i.i.i.i250 ; 2 uses
  %i.sc = bitcast <4 x i32> %i.sb to <2 x i64>
  %i.sd = icmp sgt i64 %i.rr, %i.rp
  br i1 %i.sd, label %bb.bn, label %bb.bo

.lr.ph.i.i.i.i254:                                ; preds = %.lr.ph.i.i.i.i254, %.lr.ph.preheader.i.i.i.i252
  %.05780.i.i.i.i255 = phi i64 [ %.057.i.i.i.i258, %.lr.ph.i.i.i.i254 ], [ %.05777.i.i.i.i253, %.lr.ph.preheader.i.i.i.i252 ] ; 3 uses
  %.057.in79.i.i.i.i256 = phi i64 [ %.05780.i.i.i.i255, %.lr.ph.i.i.i.i254 ], [ %.0.i.i.i.i.i.i.i.i231, %.lr.ph.preheader.i.i.i.i252 ]
  %.sroa.067.078.i.i.i.i257 = phi <4 x i32> [ %i.sh, %.lr.ph.i.i.i.i254 ], [ %i.rz, %.lr.ph.preheader.i.i.i.i252 ]
  %i.se = phi <4 x i32> [ %i.sl, %.lr.ph.i.i.i.i254 ], [ %i.ry, %.lr.ph.preheader.i.i.i.i252 ]
  %i.sf = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %.05780.i.i.i.i255
  %i.sg = load <4 x i32>, ptr %i.sf, align 1, !tbaa !32
  %i.sh = add <4 x i32> %i.sg, %.sroa.067.078.i.i.i.i257 ; 2 uses
  %i.si = getelementptr [4 x i8], ptr %i.rc, i64 %.057.in79.i.i.i.i256
  %i.sj = getelementptr i8, ptr %i.si, i64 48
  %i.sk = load <4 x i32>, ptr %i.sj, align 1, !tbaa !32
  %i.sl = add <4 x i32> %i.sk, %i.se              ; 2 uses
  %.057.i.i.i.i258 = add nsw i64 %.05780.i.i.i.i255, 8 ; 2 uses
  %i.sm = icmp slt i64 %.057.i.i.i.i258, %i.rs
  br i1 %i.sm, label %.lr.ph.i.i.i.i254, label %._crit_edge.i.i.i.i249, !llvm.loop !33

bb.bn:                                            ; preds = %._crit_edge.i.i.i.i249
  %i.sn = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %i.rs
  %i.so = load <4 x i32>, ptr %i.sn, align 1, !tbaa !32
  %i.sp = add <4 x i32> %i.so, %i.sb
  %i.sq = bitcast <4 x i32> %i.sp to <2 x i64>
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %._crit_edge.i.i.i.i249, %bb.bl
  %.sroa.067.2.i.i.i.i234 = phi <2 x i64> [ %i.rv, %bb.bl ], [ %i.sq, %bb.bn ], [ %i.sc, %._crit_edge.i.i.i.i249 ] ; 2 uses
  %i.sr = bitcast <2 x i64> %.sroa.067.2.i.i.i.i234 to <4 x i32>
  %i.ss = bitcast <2 x i64> %.sroa.067.2.i.i.i.i234 to <4 x i32> ; 2 uses
  %i.st = shufflevector <4 x i32> %i.ss, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.su = add <4 x i32> %i.st, %i.sr              ; 2 uses
  %shift1044 = shufflevector <4 x i32> %i.su, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1045 = add nsw <4 x i32> %i.su, %shift1044
  %9 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ss) ; 2 uses
  %i.sv = icmp sgt i64 %.0.i.i.i.i.i.i.i.i231, 0
  br i1 %i.sv, label %.lr.ph85.i.i.i.i245.preheader, label %.preheader.i.i.i.i237

.lr.ph85.i.i.i.i245.preheader:                    ; preds = %bb.bo
  %min.iters.check942 = icmp ult i64 %.0.i.i.i.i.i.i.i.i231, 8
  br i1 %min.iters.check942, label %.lr.ph85.i.i.i.i245.preheader1073, label %vector.ph943

vector.ph943:                                     ; preds = %.lr.ph85.i.i.i.i245.preheader
  %n.vec944 = and i64 %.0.i.i.i.i.i.i.i.i231, 9223372036854775800 ; 3 uses
  %i.sw = shufflevector <4 x i32> %foldExtExtBinop1045, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body945

vector.body945:                                   ; preds = %vector.body945, %vector.ph943
  %index946 = phi i64 [ 0, %vector.ph943 ], [ %index.next951, %vector.body945 ] ; 2 uses
  %vec.phi947 = phi <4 x i32> [ %i.sw, %vector.ph943 ], [ %i.sz, %vector.body945 ]
  %vec.phi948 = phi <4 x i32> [ zeroinitializer, %vector.ph943 ], [ %i.ta, %vector.body945 ]
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %index946 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  %wide.load949 = load <4 x i32>, ptr %i.sx, align 4, !tbaa !22
  %wide.load950 = load <4 x i32>, ptr %i.sy, align 4, !tbaa !22
  %i.sz = add <4 x i32> %wide.load949, %vec.phi947 ; 2 uses
  %i.ta = add <4 x i32> %wide.load950, %vec.phi948 ; 2 uses
  %index.next951 = add nuw i64 %index946, 8       ; 2 uses
  %i.tb = icmp eq i64 %index.next951, %n.vec944
  br i1 %i.tb, label %middle.block952, label %vector.body945, !llvm.loop !71

middle.block952:                                  ; preds = %vector.body945
  %bin.rdx953 = add <4 x i32> %i.ta, %i.sz
  %i.tc = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx953) ; 2 uses
  %cmp.n954 = icmp eq i64 %.0.i.i.i.i.i.i.i.i231, %n.vec944
  br i1 %cmp.n954, label %.preheader.i.i.i.i237, label %.lr.ph85.i.i.i.i245.preheader1073

.lr.ph85.i.i.i.i245.preheader1073:                ; preds = %.lr.ph85.i.i.i.i245.preheader, %middle.block952
  %.05683.i.i.i.i246.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i245.preheader ], [ %n.vec944, %middle.block952 ]
  %.07582.i.i.i.i247.ph = phi i32 [ %9, %.lr.ph85.i.i.i.i245.preheader ], [ %i.tc, %middle.block952 ]
  br label %.lr.ph85.i.i.i.i245

.preheader.i.i.i.i237:                            ; preds = %.lr.ph85.i.i.i.i245, %middle.block952, %bb.bo
  %.075.lcssa.i.i.i.i238 = phi i32 [ %9, %bb.bo ], [ %i.tc, %middle.block952 ], [ %i.ts, %.lr.ph85.i.i.i.i245 ] ; 3 uses
  %i.td = icmp slt i64 %i.rt, %i.rf
  br i1 %i.td, label %.lr.ph89.i.i.i.i242.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit263

.lr.ph89.i.i.i.i242.preheader:                    ; preds = %.preheader.i.i.i.i237
  %i.te = shl nsw i64 %i.rq, 2
  %i.tf = add i64 %.0.i.i.i.i.i.i.i.i231, %i.te
  %i.tg = sub i64 %i.rf, %i.tf                    ; 3 uses
  %min.iters.check958 = icmp ult i64 %i.tg, 8
  br i1 %min.iters.check958, label %.lr.ph89.i.i.i.i242.preheader1068, label %vector.ph959

vector.ph959:                                     ; preds = %.lr.ph89.i.i.i.i242.preheader
  %n.vec960 = and i64 %i.tg, -8                   ; 3 uses
  %i.th = add i64 %i.rt, %n.vec960
  %i.ti = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i238, i64 0
  %i.tj = getelementptr [4 x i8], ptr %i.rc, i64 %i.rt
  br label %vector.body961

vector.body961:                                   ; preds = %vector.body961, %vector.ph959
  %index962 = phi i64 [ 0, %vector.ph959 ], [ %index.next967, %vector.body961 ] ; 2 uses
  %vec.phi963 = phi <4 x i32> [ %i.ti, %vector.ph959 ], [ %i.tm, %vector.body961 ]
  %vec.phi964 = phi <4 x i32> [ zeroinitializer, %vector.ph959 ], [ %i.tn, %vector.body961 ]
  %i.tk = getelementptr [4 x i8], ptr %i.tj, i64 %index962 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %wide.load965 = load <4 x i32>, ptr %i.tk, align 4, !tbaa !22
  %wide.load966 = load <4 x i32>, ptr %i.tl, align 4, !tbaa !22
  %i.tm = add <4 x i32> %wide.load965, %vec.phi963 ; 2 uses
  %i.tn = add <4 x i32> %wide.load966, %vec.phi964 ; 2 uses
  %index.next967 = add nuw i64 %index962, 8       ; 2 uses
  %i.to = icmp eq i64 %index.next967, %n.vec960
  br i1 %i.to, label %middle.block968, label %vector.body961, !llvm.loop !72

middle.block968:                                  ; preds = %vector.body961
  %bin.rdx969 = add <4 x i32> %i.tn, %i.tm
  %i.tp = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx969) ; 2 uses
  %cmp.n970 = icmp eq i64 %i.tg, %n.vec960
  br i1 %cmp.n970, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit263, label %.lr.ph89.i.i.i.i242.preheader1068

.lr.ph89.i.i.i.i242.preheader1068:                ; preds = %.lr.ph89.i.i.i.i242.preheader, %middle.block968
  %.05588.i.i.i.i243.ph = phi i64 [ %i.rt, %.lr.ph89.i.i.i.i242.preheader ], [ %i.th, %middle.block968 ]
  %.187.i.i.i.i244.ph = phi i32 [ %.075.lcssa.i.i.i.i238, %.lr.ph89.i.i.i.i242.preheader ], [ %i.tp, %middle.block968 ]
  br label %.lr.ph89.i.i.i.i242

.lr.ph85.i.i.i.i245:                              ; preds = %.lr.ph85.i.i.i.i245.preheader1073, %.lr.ph85.i.i.i.i245
  %.05683.i.i.i.i246 = phi i64 [ %i.tt, %.lr.ph85.i.i.i.i245 ], [ %.05683.i.i.i.i246.ph, %.lr.ph85.i.i.i.i245.preheader1073 ] ; 2 uses
  %.07582.i.i.i.i247 = phi i32 [ %i.ts, %.lr.ph85.i.i.i.i245 ], [ %.07582.i.i.i.i247.ph, %.lr.ph85.i.i.i.i245.preheader1073 ]
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %.05683.i.i.i.i246
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !22
  %i.ts = add nsw i32 %i.tr, %.07582.i.i.i.i247   ; 2 uses
  %i.tt = add nuw nsw i64 %.05683.i.i.i.i246, 1   ; 2 uses
  %exitcond.not.i.i.i.i248 = icmp eq i64 %i.tt, %.0.i.i.i.i.i.i.i.i231
  br i1 %exitcond.not.i.i.i.i248, label %.preheader.i.i.i.i237, label %.lr.ph85.i.i.i.i245, !llvm.loop !73

.lr.ph89.i.i.i.i242:                              ; preds = %.lr.ph89.i.i.i.i242.preheader1068, %.lr.ph89.i.i.i.i242
  %.05588.i.i.i.i243 = phi i64 [ %i.tx, %.lr.ph89.i.i.i.i242 ], [ %.05588.i.i.i.i243.ph, %.lr.ph89.i.i.i.i242.preheader1068 ] ; 2 uses
  %.187.i.i.i.i244 = phi i32 [ %i.tw, %.lr.ph89.i.i.i.i242 ], [ %.187.i.i.i.i244.ph, %.lr.ph89.i.i.i.i242.preheader1068 ]
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %.05588.i.i.i.i243
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !22
  %i.tw = add nsw i32 %i.tv, %.187.i.i.i.i244     ; 2 uses
  %i.tx = add nsw i64 %.05588.i.i.i.i243, 1       ; 2 uses
  %i.ty = icmp slt i64 %i.tx, %i.rf
  br i1 %i.ty, label %.lr.ph89.i.i.i.i242, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit263, !llvm.loop !74

bb.bp:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i230
  %i.tz = load i32, ptr %i.rc, align 4, !tbaa !22 ; 3 uses
  %i.ua = icmp sgt i64 %i.rf, 1
  br i1 %i.ua, label %.lr.ph94.i.i.i.i259.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit263

.lr.ph94.i.i.i.i259.preheader:                    ; preds = %bb.bp
  %i.ub = add nsw i64 %i.rf, -1                   ; 2 uses
  %min.iters.check974 = icmp ult i64 %i.rf, 9
  br i1 %min.iters.check974, label %.lr.ph94.i.i.i.i259.preheader1064, label %vector.ph975

vector.ph975:                                     ; preds = %.lr.ph94.i.i.i.i259.preheader
  %n.vec976 = and i64 %i.ub, -8                   ; 3 uses
  %i.uc = or disjoint i64 %n.vec976, 1
  %i.ud = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.tz, i64 0
  br label %vector.body977

vector.body977:                                   ; preds = %vector.body977, %vector.ph975
  %index978 = phi i64 [ 0, %vector.ph975 ], [ %index.next983, %vector.body977 ] ; 2 uses
  %vec.phi979 = phi <4 x i32> [ %i.ud, %vector.ph975 ], [ %i.uh, %vector.body977 ]
  %vec.phi980 = phi <4 x i32> [ zeroinitializer, %vector.ph975 ], [ %i.ui, %vector.body977 ]
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %index978 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 4
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 20
  %wide.load981 = load <4 x i32>, ptr %i.uf, align 4, !tbaa !22
  %wide.load982 = load <4 x i32>, ptr %i.ug, align 4, !tbaa !22
  %i.uh = add <4 x i32> %wide.load981, %vec.phi979 ; 2 uses
  %i.ui = add <4 x i32> %wide.load982, %vec.phi980 ; 2 uses
  %index.next983 = add nuw i64 %index978, 8       ; 2 uses
  %i.uj = icmp eq i64 %index.next983, %n.vec976
  br i1 %i.uj, label %middle.block984, label %vector.body977, !llvm.loop !75

middle.block984:                                  ; preds = %vector.body977
  %bin.rdx985 = add <4 x i32> %i.ui, %i.uh
  %i.uk = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx985) ; 2 uses
  %cmp.n986 = icmp eq i64 %i.ub, %n.vec976
  br i1 %cmp.n986, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit263, label %.lr.ph94.i.i.i.i259.preheader1064

.lr.ph94.i.i.i.i259.preheader1064:                ; preds = %.lr.ph94.i.i.i.i259.preheader, %middle.block984
  %.092.i.i.i.i260.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i259.preheader ], [ %i.uc, %middle.block984 ]
  %.291.i.i.i.i261.ph = phi i32 [ %i.tz, %.lr.ph94.i.i.i.i259.preheader ], [ %i.uk, %middle.block984 ]
  br label %.lr.ph94.i.i.i.i259

.lr.ph94.i.i.i.i259:                              ; preds = %.lr.ph94.i.i.i.i259.preheader1064, %.lr.ph94.i.i.i.i259
  %.092.i.i.i.i260 = phi i64 [ %i.uo, %.lr.ph94.i.i.i.i259 ], [ %.092.i.i.i.i260.ph, %.lr.ph94.i.i.i.i259.preheader1064 ] ; 2 uses
  %.291.i.i.i.i261 = phi i32 [ %i.un, %.lr.ph94.i.i.i.i259 ], [ %.291.i.i.i.i261.ph, %.lr.ph94.i.i.i.i259.preheader1064 ]
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %.092.i.i.i.i260
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !22
  %i.un = add nsw i32 %i.um, %.291.i.i.i.i261     ; 2 uses
  %i.uo = add nuw nsw i64 %.092.i.i.i.i260, 1     ; 2 uses
  %exitcond102.not.i.i.i.i262 = icmp eq i64 %i.uo, %i.rf
  br i1 %exitcond102.not.i.i.i.i262, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit263, label %.lr.ph94.i.i.i.i259, !llvm.loop !76

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit263: ; preds = %.lr.ph89.i.i.i.i242, %.lr.ph94.i.i.i.i259, %middle.block968, %middle.block984, %.preheader.i.i.i.i237, %bb.bp, %bb.bh
  %i.up = phi ptr [ %i.qr, %bb.bh ], [ %i.ra, %middle.block984 ], [ %i.ra, %.preheader.i.i.i.i237 ], [ %i.ra, %bb.bp ], [ %i.ra, %middle.block968 ], [ %i.ra, %.lr.ph94.i.i.i.i259 ], [ %i.ra, %.lr.ph89.i.i.i.i242 ] ; 6 uses
  %i.uq = phi ptr [ %i.pz, %bb.bh ], [ %i.rb, %middle.block984 ], [ %i.rb, %.preheader.i.i.i.i237 ], [ %i.rb, %bb.bp ], [ %i.rb, %middle.block968 ], [ %i.rb, %.lr.ph94.i.i.i.i259 ], [ %i.rb, %.lr.ph89.i.i.i.i242 ] ; 2 uses
  %i.ur = phi ptr [ %i.lh, %bb.bh ], [ %i.rd, %middle.block984 ], [ %i.rd, %.preheader.i.i.i.i237 ], [ %i.rd, %bb.bp ], [ %i.rd, %middle.block968 ], [ %i.rd, %.lr.ph94.i.i.i.i259 ], [ %i.rd, %.lr.ph89.i.i.i.i242 ] ; 2 uses
  %i.us = phi ptr [ %i.lz, %bb.bh ], [ %i.re, %middle.block984 ], [ %i.re, %.preheader.i.i.i.i237 ], [ %i.re, %bb.bp ], [ %i.re, %middle.block968 ], [ %i.re, %.lr.ph94.i.i.i.i259 ], [ %i.re, %.lr.ph89.i.i.i.i242 ] ; 4 uses
  %i.ut = phi i64 [ %i.qv, %bb.bh ], [ %i.rf, %middle.block984 ], [ %i.rf, %.preheader.i.i.i.i237 ], [ %i.rf, %bb.bp ], [ %i.rf, %middle.block968 ], [ %i.rf, %.lr.ph94.i.i.i.i259 ], [ %i.rf, %.lr.ph89.i.i.i.i242 ] ; 2 uses
  %.0.i241.in = phi i32 [ %i.qz, %bb.bh ], [ %i.uk, %middle.block984 ], [ %.075.lcssa.i.i.i.i238, %.preheader.i.i.i.i237 ], [ %i.tz, %bb.bp ], [ %i.tp, %middle.block968 ], [ %i.un, %.lr.ph94.i.i.i.i259 ], [ %i.tw, %.lr.ph89.i.i.i.i242 ]
  %.0.i241 = sext i32 %.0.i241.in to i64          ; 2 uses
  %i.uu = shl nsw i64 %.0.i241, 1                 ; 3 uses
  %i.uv = icmp ugt i64 %i.uu, 2305843009213693951
  br i1 %i.uv, label %.invoke768, label %bb.bq

.invoke768:                                       ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit263, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit221, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit179, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
          to label %.cont769 unwind label %bb.ad

.cont769:                                         ; preds = %.invoke768
  unreachable

bb.bq:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit263
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !43
  %i.uy = load ptr, ptr %i.up, align 8, !tbaa !13 ; 4 uses
  %i.uz = ptrtoint ptr %i.ux to i64
  %i.va = ptrtoint ptr %i.uy to i64               ; 2 uses
  %i.vb = sub i64 %i.uz, %i.va                    ; 2 uses
  %i.vc = ashr exact i64 %i.vb, 2
  %i.vd = icmp ult i64 %i.vc, %i.uu
  br i1 %i.vd, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i264, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit270

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i264: ; preds = %bb.bq
  %i.ve = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !9
  %i.vg = ptrtoint ptr %i.vf to i64
  %i.vh = sub i64 %i.vg, %i.va                    ; 3 uses
  %i.vi = shl nsw i64 %.0.i241, 3
  %i.vj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vi) #20
          to label %.noexc269 unwind label %bb.ad ; 4 uses

.noexc269:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i264
  %i.vk = icmp sgt i64 %i.vh, 0
  br i1 %i.vk, label %bb.br, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i265

bb.br:                                            ; preds = %.noexc269
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.vj, ptr align 4 %i.uy, i64 %i.vh, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i265

end_hunk_1
begin_hunk_2_@_ZN3igl21AtA_cached_precomputeIdEEvRKN5Eigen12SparseMatrixIT_Li0EiEERNS_15AtA_cached_dataERS4_:bb.a
  %i.vo = icmp sgt i64 %i.vn, 0
  br i1 %i.vo, label %.lr.ph577, label %._crit_edge578

.lr.ph577:                                        ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit270
  %i.vp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.vq = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.vr = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  br label %bb.by

.loopexit526.loopexit:                            ; preds = %.critedge
  %.pre619 = load i64, ptr %i.go, align 8, !tbaa !24
  br label %.loopexit526

.loopexit526:                                     ; preds = %.loopexit526.loopexit, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit309
  %i.vv = phi i64 [ %.pre619, %.loopexit526.loopexit ], [ %i.xb, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit309 ] ; 2 uses
  %i.vw = icmp sgt i64 %i.vv, %i.xh
  br i1 %i.vw, label %bb.by, label %._crit_edge578, !llvm.loop !77

._crit_edge578:                                   ; preds = %.loopexit526, %bb.bi, %_ZNSt6vectorIiSaIiEE7reserveEm.exit270
  %i.vx = phi ptr [ %i.re, %bb.bi ], [ %i.us, %_ZNSt6vectorIiSaIiEE7reserveEm.exit270 ], [ %i.us, %.loopexit526 ]
  %i.vy = phi ptr [ %i.ra, %bb.bi ], [ %i.up, %_ZNSt6vectorIiSaIiEE7reserveEm.exit270 ], [ %i.up, %.loopexit526 ]
  %i.vz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !9
  %i.wb = load ptr, ptr %i.hi, align 8, !tbaa !13
  %i.wc = ptrtoint ptr %i.wa to i64
  %i.wd = ptrtoint ptr %i.wb to i64
  %i.we = sub i64 %i.wc, %i.wd
  %i.wf = lshr exact i64 %i.we, 2
  %i.wg = trunc i64 %i.wf to i32                  ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !9  ; 4 uses
  %i.wj = load ptr, ptr %i.gr, align 8, !tbaa !43
  %.not.i.i271 = icmp eq ptr %i.wi, %i.wj
  br i1 %.not.i.i271, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge578
  store i32 %i.wg, ptr %i.wi, align 4, !tbaa !22
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 4 ; 2 uses
  store ptr %i.wk, ptr %i.wh, align 8, !tbaa !9
  %.pre620 = load ptr, ptr %i.gn, align 8, !tbaa !13
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.bu:                                            ; preds = %._crit_edge578
  %i.wl = load ptr, ptr %i.gn, align 8, !tbaa !13 ; 4 uses
  %i.wm = ptrtoint ptr %i.wi to i64
  %i.wn = ptrtoint ptr %i.wl to i64
  %i.wo = sub i64 %i.wm, %i.wn                    ; 6 uses
  %i.wp = icmp eq i64 %i.wo, 9223372036854775804
  br i1 %i.wp, label %bb.bv, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #19
          to label %.noexc273 unwind label %bb.dq

.noexc273:                                        ; preds = %bb.bv
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bu
  %i.wq = ashr exact i64 %i.wo, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.wq, i64 1)
  %i.wr = add nsw i64 %.sroa.speculated.i.i.i.i, %i.wq ; 2 uses
  %i.ws = icmp ult i64 %i.wr, %i.wq
  %i.wt = call i64 @llvm.umin.i64(i64 %i.wr, i64 2305843009213693951)
  %i.wu = select i1 %i.ws, i64 2305843009213693951, i64 %i.wt ; 3 uses
  %.not.i.i.i.i272 = icmp ne i64 %i.wu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i272)
  %i.wv = shl nuw nsw i64 %i.wu, 2
  %i.ww = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wv) #20
          to label %.noexc274 unwind label %bb.dq ; 5 uses

.noexc274:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.wx = getelementptr inbounds i8, ptr %i.ww, i64 %i.wo ; 2 uses
  store i32 %i.wg, ptr %i.wx, align 4, !tbaa !22
  %i.wy = icmp sgt i64 %i.wo, 0
  br i1 %i.wy, label %bb.bw, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.bw:                                            ; preds = %.noexc274
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ww, ptr align 4 %i.wl, i64 %i.wo, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.bw, %.noexc274
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wx, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.wl, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.wl, i64 noundef %i.wo) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.bx, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ww, ptr %i.gn, align 8, !tbaa !13
  store ptr %i.wz, ptr %i.wh, align 8, !tbaa !9
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %i.wu
  store ptr %i.xa, ptr %i.gr, align 8, !tbaa !43
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.by:                                            ; preds = %.lr.ph577, %.loopexit526
  %i.xb = phi i64 [ %i.vn, %.lr.ph577 ], [ %i.vv, %.loopexit526 ] ; 13 uses
  %i.xc = phi i64 [ 0, %.lr.ph577 ], [ %i.xh, %.loopexit526 ]
  %.0103576 = phi i32 [ 0, %.lr.ph577 ], [ %i.xg, %.loopexit526 ] ; 2 uses
  %i.xd = load ptr, ptr %i.vp, align 8, !tbaa !30 ; 3 uses
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.xd, i64 %i.xc ; 2 uses
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !22 ; 2 uses
  %i.xg = add i32 %.0103576, 1                    ; 2 uses
  %i.xh = zext i32 %i.xg to i64                   ; 3 uses
  %i.xi = icmp eq i64 %i.xb, %i.xh
  br i1 %i.xi, label %bb.bz, label %bb.ci

bb.bz:                                            ; preds = %bb.by
  %i.xj = load ptr, ptr %i.hj, align 8, !tbaa !31 ; 13 uses
  %i.xk = icmp eq ptr %i.xj, null
  br i1 %i.xk, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.xd, i64 %i.xb
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !22
  %i.xn = load i32, ptr %i.xd, align 4, !tbaa !22
  %i.xo = sub nsw i32 %i.xm, %i.xn
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit309

bb.cb:                                            ; preds = %bb.bz
  %i.xp = ptrtoint ptr %i.xj to i64               ; 2 uses
  %i.xq = and i64 %i.xp, 3
  %.not.i.i.i.i.i.i.i.i275 = icmp eq i64 %i.xq, 0
  br i1 %.not.i.i.i.i.i.i.i.i275, label %bb.cc, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i276

bb.cc:                                            ; preds = %bb.cb
  %i.xr = lshr exact i64 %i.xp, 2
  %i.xs = sub nsw i64 0, %i.xr
  %i.xt = and i64 %i.xs, 3
  %i.xu = call i64 @llvm.umin.i64(i64 %i.xt, i64 %i.xb)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i276

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i276: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i.i.i.i.i.i277 = phi i64 [ %i.xu, %bb.cc ], [ %i.xb, %bb.cb ] ; 12 uses
  %i.xv = sub nsw i64 %i.xb, %.0.i.i.i.i.i.i.i.i277 ; 5 uses
  %i.xw = sdiv i64 %i.xv, 8
  %i.xx = shl nsw i64 %i.xw, 3                    ; 2 uses
  %i.xy = sdiv i64 %i.xv, 4                       ; 2 uses
  %i.xz = shl nsw i64 %i.xy, 2                    ; 2 uses
  %i.ya = add nsw i64 %i.xx, %.0.i.i.i.i.i.i.i.i277 ; 2 uses
  %i.yb = add nsw i64 %i.xz, %.0.i.i.i.i.i.i.i.i277 ; 4 uses
  %.off.i.i.i.i278 = add nsw i64 %i.xv, 3
  %.not.i.i.i.i279 = icmp ult i64 %.off.i.i.i.i278, 7
  br i1 %.not.i.i.i.i279, label %bb.ch, label %bb.cd

bb.cd:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i276
  %i.yc = getelementptr [4 x i8], ptr %i.xj, i64 %.0.i.i.i.i.i.i.i.i277 ; 2 uses
  %i.yd = load <2 x i64>, ptr %i.yc, align 1, !tbaa !32 ; 2 uses
  %i.ye = icmp sgt i64 %i.xv, 7
  br i1 %i.ye, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.yf = getelementptr i8, ptr %i.yc, i64 16
  %i.yg = load <4 x i32>, ptr %i.yf, align 1, !tbaa !32 ; 2 uses
  %i.yh = bitcast <2 x i64> %i.yd to <4 x i32>    ; 2 uses
  %i.yi = icmp samesign ugt i64 %i.xv, 15
  br i1 %i.yi, label %.lr.ph.preheader.i.i.i.i298, label %._crit_edge.i.i.i.i295

.lr.ph.preheader.i.i.i.i298:                      ; preds = %bb.ce
  %.05777.i.i.i.i299 = add nuw nsw i64 %.0.i.i.i.i.i.i.i.i277, 8
  br label %.lr.ph.i.i.i.i300

._crit_edge.i.i.i.i295:                           ; preds = %.lr.ph.i.i.i.i300, %bb.ce
  %.lcssa.i.i.i.i296 = phi <4 x i32> [ %i.yg, %bb.ce ], [ %i.yt, %.lr.ph.i.i.i.i300 ]
  %.sroa.067.0.lcssa.i.i.i.i297 = phi <4 x i32> [ %i.yh, %bb.ce ], [ %i.yp, %.lr.ph.i.i.i.i300 ]
  %i.yj = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i297, %.lcssa.i.i.i.i296 ; 2 uses
  %i.yk = bitcast <4 x i32> %i.yj to <2 x i64>
  %i.yl = icmp sgt i64 %i.xz, %i.xx
  br i1 %i.yl, label %bb.cf, label %bb.cg

.lr.ph.i.i.i.i300:                                ; preds = %.lr.ph.i.i.i.i300, %.lr.ph.preheader.i.i.i.i298
  %.05780.i.i.i.i301 = phi i64 [ %.057.i.i.i.i304, %.lr.ph.i.i.i.i300 ], [ %.05777.i.i.i.i299, %.lr.ph.preheader.i.i.i.i298 ] ; 3 uses
  %.057.in79.i.i.i.i302 = phi i64 [ %.05780.i.i.i.i301, %.lr.ph.i.i.i.i300 ], [ %.0.i.i.i.i.i.i.i.i277, %.lr.ph.preheader.i.i.i.i298 ]
  %.sroa.067.078.i.i.i.i303 = phi <4 x i32> [ %i.yp, %.lr.ph.i.i.i.i300 ], [ %i.yh, %.lr.ph.preheader.i.i.i.i298 ]
  %i.ym = phi <4 x i32> [ %i.yt, %.lr.ph.i.i.i.i300 ], [ %i.yg, %.lr.ph.preheader.i.i.i.i298 ]
  %i.yn = getelementptr inbounds [4 x i8], ptr %i.xj, i64 %.05780.i.i.i.i301
  %i.yo = load <4 x i32>, ptr %i.yn, align 1, !tbaa !32
  %i.yp = add <4 x i32> %i.yo, %.sroa.067.078.i.i.i.i303 ; 2 uses
  %i.yq = getelementptr [4 x i8], ptr %i.xj, i64 %.057.in79.i.i.i.i302
  %i.yr = getelementptr i8, ptr %i.yq, i64 48
  %i.ys = load <4 x i32>, ptr %i.yr, align 1, !tbaa !32
  %i.yt = add <4 x i32> %i.ys, %i.ym              ; 2 uses
  %.057.i.i.i.i304 = add nsw i64 %.05780.i.i.i.i301, 8 ; 2 uses
  %i.yu = icmp slt i64 %.057.i.i.i.i304, %i.ya
  br i1 %i.yu, label %.lr.ph.i.i.i.i300, label %._crit_edge.i.i.i.i295, !llvm.loop !33

bb.cf:                                            ; preds = %._crit_edge.i.i.i.i295
  %i.yv = getelementptr inbounds [4 x i8], ptr %i.xj, i64 %i.ya
  %i.yw = load <4 x i32>, ptr %i.yv, align 1, !tbaa !32
  %i.yx = add <4 x i32> %i.yw, %i.yj
  %i.yy = bitcast <4 x i32> %i.yx to <2 x i64>
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %._crit_edge.i.i.i.i295, %bb.cd
  %.sroa.067.2.i.i.i.i280 = phi <2 x i64> [ %i.yd, %bb.cd ], [ %i.yy, %bb.cf ], [ %i.yk, %._crit_edge.i.i.i.i295 ] ; 2 uses
  %i.yz = bitcast <2 x i64> %.sroa.067.2.i.i.i.i280 to <4 x i32>
  %i.za = bitcast <2 x i64> %.sroa.067.2.i.i.i.i280 to <4 x i32> ; 2 uses
  %i.zb = shufflevector <4 x i32> %i.za, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.zc = add <4 x i32> %i.zb, %i.yz              ; 2 uses
  %shift1047 = shufflevector <4 x i32> %i.zc, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1048 = add nsw <4 x i32> %i.zc, %shift1047
  %10 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.za) ; 2 uses
  %.not523 = icmp eq i64 %.0.i.i.i.i.i.i.i.i277, 0
  br i1 %.not523, label %.preheader.i.i.i.i283, label %.lr.ph85.i.i.i.i291.preheader

.lr.ph85.i.i.i.i291.preheader:                    ; preds = %bb.cg
  %min.iters.check1022 = icmp ult i64 %.0.i.i.i.i.i.i.i.i277, 8
  br i1 %min.iters.check1022, label %.lr.ph85.i.i.i.i291.preheader1053, label %vector.ph1023

vector.ph1023:                                    ; preds = %.lr.ph85.i.i.i.i291.preheader
  %n.vec1024 = and i64 %.0.i.i.i.i.i.i.i.i277, -8 ; 3 uses
  %i.zd = shufflevector <4 x i32> %foldExtExtBinop1048, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body1025

vector.body1025:                                  ; preds = %vector.body1025, %vector.ph1023
  %index1026 = phi i64 [ 0, %vector.ph1023 ], [ %index.next1031, %vector.body1025 ] ; 2 uses
  %vec.phi1027 = phi <4 x i32> [ %i.zd, %vector.ph1023 ], [ %i.zg, %vector.body1025 ]
  %vec.phi1028 = phi <4 x i32> [ zeroinitializer, %vector.ph1023 ], [ %i.zh, %vector.body1025 ]
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.xj, i64 %index1026 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  %wide.load1029 = load <4 x i32>, ptr %i.ze, align 4, !tbaa !22
  %wide.load1030 = load <4 x i32>, ptr %i.zf, align 4, !tbaa !22
  %i.zg = add <4 x i32> %wide.load1029, %vec.phi1027 ; 2 uses
  %i.zh = add <4 x i32> %wide.load1030, %vec.phi1028 ; 2 uses
  %index.next1031 = add nuw i64 %index1026, 8     ; 2 uses
  %i.zi = icmp eq i64 %index.next1031, %n.vec1024
  br i1 %i.zi, label %middle.block1032, label %vector.body1025, !llvm.loop !78

middle.block1032:                                 ; preds = %vector.body1025
  %bin.rdx1033 = add <4 x i32> %i.zh, %i.zg
  %i.zj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1033) ; 2 uses
  %cmp.n1034 = icmp eq i64 %.0.i.i.i.i.i.i.i.i277, %n.vec1024
  br i1 %cmp.n1034, label %.preheader.i.i.i.i283, label %.lr.ph85.i.i.i.i291.preheader1053

.lr.ph85.i.i.i.i291.preheader1053:                ; preds = %.lr.ph85.i.i.i.i291.preheader, %middle.block1032
  %.05683.i.i.i.i292.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i291.preheader ], [ %n.vec1024, %middle.block1032 ]
  %.07582.i.i.i.i293.ph = phi i32 [ %10, %.lr.ph85.i.i.i.i291.preheader ], [ %i.zj, %middle.block1032 ]
  br label %.lr.ph85.i.i.i.i291

.preheader.i.i.i.i283:                            ; preds = %.lr.ph85.i.i.i.i291, %middle.block1032, %bb.cg
  %.075.lcssa.i.i.i.i284 = phi i32 [ %10, %bb.cg ], [ %i.zj, %middle.block1032 ], [ %i.zz, %.lr.ph85.i.i.i.i291 ] ; 3 uses
  %i.zk = icmp slt i64 %i.yb, %i.xb
  br i1 %i.zk, label %.lr.ph89.i.i.i.i288.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit309

.lr.ph89.i.i.i.i288.preheader:                    ; preds = %.preheader.i.i.i.i283
  %i.zl = shl nsw i64 %i.xy, 2
  %i.zm = add i64 %.0.i.i.i.i.i.i.i.i277, %i.zl
  %i.zn = sub i64 %i.xb, %i.zm                    ; 3 uses
  %min.iters.check1006 = icmp ult i64 %i.zn, 8
  br i1 %min.iters.check1006, label %.lr.ph89.i.i.i.i288.preheader1051, label %vector.ph1007

vector.ph1007:                                    ; preds = %.lr.ph89.i.i.i.i288.preheader
  %n.vec1008 = and i64 %i.zn, -8                  ; 3 uses
  %i.zo = add i64 %i.yb, %n.vec1008
  %i.zp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i284, i64 0
  %i.zq = getelementptr [4 x i8], ptr %i.xj, i64 %i.yb
  br label %vector.body1009

vector.body1009:                                  ; preds = %vector.body1009, %vector.ph1007
  %index1010 = phi i64 [ 0, %vector.ph1007 ], [ %index.next1015, %vector.body1009 ] ; 2 uses
  %vec.phi1011 = phi <4 x i32> [ %i.zp, %vector.ph1007 ], [ %i.zt, %vector.body1009 ]
  %vec.phi1012 = phi <4 x i32> [ zeroinitializer, %vector.ph1007 ], [ %i.zu, %vector.body1009 ]
  %i.zr = getelementptr [4 x i8], ptr %i.zq, i64 %index1010 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 16
  %wide.load1013 = load <4 x i32>, ptr %i.zr, align 4, !tbaa !22
  %wide.load1014 = load <4 x i32>, ptr %i.zs, align 4, !tbaa !22
  %i.zt = add <4 x i32> %wide.load1013, %vec.phi1011 ; 2 uses
  %i.zu = add <4 x i32> %wide.load1014, %vec.phi1012 ; 2 uses
  %index.next1015 = add nuw i64 %index1010, 8     ; 2 uses
  %i.zv = icmp eq i64 %index.next1015, %n.vec1008
  br i1 %i.zv, label %middle.block1016, label %vector.body1009, !llvm.loop !79

middle.block1016:                                 ; preds = %vector.body1009
  %bin.rdx1017 = add <4 x i32> %i.zu, %i.zt
  %i.zw = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1017) ; 2 uses
  %cmp.n1018 = icmp eq i64 %i.zn, %n.vec1008
  br i1 %cmp.n1018, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit309, label %.lr.ph89.i.i.i.i288.preheader1051

.lr.ph89.i.i.i.i288.preheader1051:                ; preds = %.lr.ph89.i.i.i.i288.preheader, %middle.block1016
  %.05588.i.i.i.i289.ph = phi i64 [ %i.yb, %.lr.ph89.i.i.i.i288.preheader ], [ %i.zo, %middle.block1016 ]
  %.187.i.i.i.i290.ph = phi i32 [ %.075.lcssa.i.i.i.i284, %.lr.ph89.i.i.i.i288.preheader ], [ %i.zw, %middle.block1016 ]
  br label %.lr.ph89.i.i.i.i288

.lr.ph85.i.i.i.i291:                              ; preds = %.lr.ph85.i.i.i.i291.preheader1053, %.lr.ph85.i.i.i.i291
  %.05683.i.i.i.i292 = phi i64 [ %i.aaa, %.lr.ph85.i.i.i.i291 ], [ %.05683.i.i.i.i292.ph, %.lr.ph85.i.i.i.i291.preheader1053 ] ; 2 uses
  %.07582.i.i.i.i293 = phi i32 [ %i.zz, %.lr.ph85.i.i.i.i291 ], [ %.07582.i.i.i.i293.ph, %.lr.ph85.i.i.i.i291.preheader1053 ]
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.xj, i64 %.05683.i.i.i.i292
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !22
  %i.zz = add nsw i32 %i.zy, %.07582.i.i.i.i293   ; 2 uses
  %i.aaa = add nuw nsw i64 %.05683.i.i.i.i292, 1  ; 2 uses
  %exitcond.not.i.i.i.i294 = icmp eq i64 %i.aaa, %.0.i.i.i.i.i.i.i.i277
  br i1 %exitcond.not.i.i.i.i294, label %.preheader.i.i.i.i283, label %.lr.ph85.i.i.i.i291, !llvm.loop !80

.lr.ph89.i.i.i.i288:                              ; preds = %.lr.ph89.i.i.i.i288.preheader1051, %.lr.ph89.i.i.i.i288
  %.05588.i.i.i.i289 = phi i64 [ %i.aae, %.lr.ph89.i.i.i.i288 ], [ %.05588.i.i.i.i289.ph, %.lr.ph89.i.i.i.i288.preheader1051 ] ; 2 uses
  %.187.i.i.i.i290 = phi i32 [ %i.aad, %.lr.ph89.i.i.i.i288 ], [ %.187.i.i.i.i290.ph, %.lr.ph89.i.i.i.i288.preheader1051 ]
  %i.aab = getelementptr inbounds [4 x i8], ptr %i.xj, i64 %.05588.i.i.i.i289
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !22
  %i.aad = add nsw i32 %i.aac, %.187.i.i.i.i290   ; 2 uses
  %i.aae = add nsw i64 %.05588.i.i.i.i289, 1      ; 2 uses
  %i.aaf = icmp slt i64 %i.aae, %i.xb
  br i1 %i.aaf, label %.lr.ph89.i.i.i.i288, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit309, !llvm.loop !81

bb.ch:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i276
  %i.aag = load i32, ptr %i.xj, align 4, !tbaa !22 ; 3 uses
  %i.aah = icmp samesign ugt i64 %i.xb, 1
  br i1 %i.aah, label %.lr.ph94.i.i.i.i305.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit309

.lr.ph94.i.i.i.i305.preheader:                    ; preds = %bb.ch
  %i.aai = add i64 %i.xb, -1                      ; 2 uses
  %min.iters.check990 = icmp ult i64 %i.xb, 9
  br i1 %min.iters.check990, label %.lr.ph94.i.i.i.i305.preheader1050, label %vector.ph991

vector.ph991:                                     ; preds = %.lr.ph94.i.i.i.i305.preheader
  %n.vec992 = and i64 %i.aai, -8                  ; 3 uses
  %i.aaj = or disjoint i64 %n.vec992, 1
  %i.aak = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.aag, i64 0
  br label %vector.body993

vector.body993:                                   ; preds = %vector.body993, %vector.ph991
  %index994 = phi i64 [ 0, %vector.ph991 ], [ %index.next999, %vector.body993 ] ; 2 uses
  %vec.phi995 = phi <4 x i32> [ %i.aak, %vector.ph991 ], [ %i.aao, %vector.body993 ]
  %vec.phi996 = phi <4 x i32> [ zeroinitializer, %vector.ph991 ], [ %i.aap, %vector.body993 ]
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.xj, i64 %index994 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 4
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aal, i64 20
  %wide.load997 = load <4 x i32>, ptr %i.aam, align 4, !tbaa !22
  %wide.load998 = load <4 x i32>, ptr %i.aan, align 4, !tbaa !22
  %i.aao = add <4 x i32> %wide.load997, %vec.phi995 ; 2 uses
  %i.aap = add <4 x i32> %wide.load998, %vec.phi996 ; 2 uses
  %index.next999 = add nuw i64 %index994, 8       ; 2 uses
  %i.aaq = icmp eq i64 %index.next999, %n.vec992
  br i1 %i.aaq, label %middle.block1000, label %vector.body993, !llvm.loop !82

middle.block1000:                                 ; preds = %vector.body993
  %bin.rdx1001 = add <4 x i32> %i.aap, %i.aao
  %i.aar = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1001) ; 2 uses
  %cmp.n1002 = icmp eq i64 %i.aai, %n.vec992
  br i1 %cmp.n1002, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit309, label %.lr.ph94.i.i.i.i305.preheader1050

.lr.ph94.i.i.i.i305.preheader1050:                ; preds = %.lr.ph94.i.i.i.i305.preheader, %middle.block1000
  %.092.i.i.i.i306.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i305.preheader ], [ %i.aaj, %middle.block1000 ]
  %.291.i.i.i.i307.ph = phi i32 [ %i.aag, %.lr.ph94.i.i.i.i305.preheader ], [ %i.aar, %middle.block1000 ]
  br label %.lr.ph94.i.i.i.i305

.lr.ph94.i.i.i.i305:                              ; preds = %.lr.ph94.i.i.i.i305.preheader1050, %.lr.ph94.i.i.i.i305
  %.092.i.i.i.i306 = phi i64 [ %i.aav, %.lr.ph94.i.i.i.i305 ], [ %.092.i.i.i.i306.ph, %.lr.ph94.i.i.i.i305.preheader1050 ] ; 2 uses
  %.291.i.i.i.i307 = phi i32 [ %i.aau, %.lr.ph94.i.i.i.i305 ], [ %.291.i.i.i.i307.ph, %.lr.ph94.i.i.i.i305.preheader1050 ]
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.xj, i64 %.092.i.i.i.i306
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !22
  %i.aau = add nsw i32 %i.aat, %.291.i.i.i.i307   ; 2 uses
  %i.aav = add nuw nsw i64 %.092.i.i.i.i306, 1    ; 2 uses
  %exitcond102.not.i.i.i.i308 = icmp eq i64 %i.aav, %i.xb
  br i1 %exitcond102.not.i.i.i.i308, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit309, label %.lr.ph94.i.i.i.i305, !llvm.loop !83

bb.ci:                                            ; preds = %bb.by
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.xe, i64 4
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !22
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit309

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit309: ; preds = %.lr.ph89.i.i.i.i288, %.lr.ph94.i.i.i.i305, %middle.block1016, %middle.block1000, %.preheader.i.i.i.i283, %bb.ch, %bb.ca, %bb.ci
  %.in = phi i32 [ %i.aax, %bb.ci ], [ %i.xo, %bb.ca ], [ %i.aau, %.lr.ph94.i.i.i.i305 ], [ %.075.lcssa.i.i.i.i284, %.preheader.i.i.i.i283 ], [ %i.aag, %bb.ch ], [ %i.aar, %middle.block1000 ], [ %i.zw, %middle.block1016 ], [ %i.aad, %.lr.ph89.i.i.i.i288 ] ; 2 uses
  %i.aay = icmp ult i32 %i.xf, %.in
  br i1 %i.aay, label %.lr.ph575, label %.loopexit526

.lr.ph575:                                        ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit309
  %i.aaz = sext i32 %.0103576 to i64              ; 2 uses
  %i.aba = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0429.2462719, i64 %i.aaz ; 3 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  %i.abc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0416.1734, i64 %i.aaz
  %i.abd = zext i32 %i.xf to i64
  %wide.trip.count = zext i32 %.in to i64
  br label %bb.cj

bb.cj:                                            ; preds = %.lr.ph575, %.critedge
  %indvars.iv610 = phi i64 [ %i.abd, %.lr.ph575 ], [ %indvars.iv.next611, %.critedge ] ; 2 uses
  %i.abe = load ptr, ptr %i.vq, align 8, !tbaa !42
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.abe, i64 %indvars.iv610
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !22
  %i.abh = load ptr, ptr %i.vr, align 8, !tbaa !9
  %i.abi = load ptr, ptr %i.hi, align 8, !tbaa !13
  %i.abj = ptrtoint ptr %i.abh to i64
  %i.abk = ptrtoint ptr %i.abi to i64
  %i.abl = sub i64 %i.abj, %i.abk
  %i.abm = lshr exact i64 %i.abl, 2
  %i.abn = trunc i64 %i.abm to i32                ; 2 uses
  %i.abo = load ptr, ptr %i.vs, align 8, !tbaa !9 ; 4 uses
  %i.abp = load ptr, ptr %i.gr, align 8, !tbaa !43
  %.not.i.i310 = icmp eq ptr %i.abo, %i.abp
  br i1 %.not.i.i310, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  store i32 %i.abn, ptr %i.abo, align 4, !tbaa !22
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abo, i64 4
  store ptr %i.abq, ptr %i.vs, align 8, !tbaa !9
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit319

bb.cl:                                            ; preds = %bb.cj
  %i.abr = load ptr, ptr %i.gn, align 8, !tbaa !13 ; 4 uses
  %i.abs = ptrtoint ptr %i.abo to i64
  %i.abt = ptrtoint ptr %i.abr to i64
  %i.abu = sub i64 %i.abs, %i.abt                 ; 6 uses
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal43conservative_sparse_sparse_product_selectorINS_12SparseMatrixIdLi0EiEES3_S3_Li0ELi0ELi0EE3runERKS3_S6_RS3_:bb.a
  br label %bb.z

bb.z:                                             ; preds = %.body, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bc, %bb.x ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume

bb.aa:                                            ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit21, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5Eigen8internalL39conservative_sparse_sparse_product_implINS_12SparseMatrixIdLi0EiEES3_S3_EEvRKT_RKT0_RT1_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !55   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !24   ; 14 uses
  %i.e = icmp ugt i64 %i.b, 131072                ; 5 uses
  br i1 %i.e, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.b) #23 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !95
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.b
  %i.i = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.i, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.j = shl nuw i64 %i.b, 3
  br label %bb.e

bb.d:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !95
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
          to label %.noexc140 unwind label %.split

.noexc140:                                        ; preds = %bb.d
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.l = add nuw nsw i64 %i.b, 15
  %i.m = alloca i8, i64 %i.l, align 16            ; 2 uses
  %i.n = shl nuw nsw i64 %i.b, 3                  ; 3 uses
  %i.o = icmp samesign ult i64 %i.b, 16385
  br i1 %i.o, label %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread, label %bb.e

_ZN5Eigen8internal14aligned_mallocEm.exit143.thread: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.p = add nuw nsw i64 %i.n, 15
  %i.q = alloca i8, i64 %i.p, align 16
  %i.r = add nuw nsw i64 %i.n, 15
  %i.s = alloca i8, i64 %i.r, align 16
  br label %bb.h

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.t = phi i64 [ %i.j, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread ], [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ] ; 2 uses
  %i.u = phi ptr [ %i.f, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread ], [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ] ; 3 uses
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #23 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit143

bb.f:                                             ; preds = %bb.e
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !95
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
          to label %.noexc142 unwind label %.split261

.noexc142:                                        ; preds = %bb.f
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit143:     ; preds = %bb.e
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.t) #23 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit143
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aa, align 8, !tbaa !95
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
          to label %.noexc147 unwind label %.split265

.noexc147:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit143, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread
  %i.ab = phi i1 [ false, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread ], [ true, %_ZN5Eigen8internal14aligned_mallocEm.exit143 ] ; 2 uses
  %i.ac = phi ptr [ %i.q, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread ], [ %i.v, %_ZN5Eigen8internal14aligned_mallocEm.exit143 ] ; 7 uses
  %i.ad = phi ptr [ %i.m, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread ], [ %i.u, %_ZN5Eigen8internal14aligned_mallocEm.exit143 ] ; 7 uses
  %i.ae = phi ptr [ %i.s, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread ], [ %i.y, %_ZN5Eigen8internal14aligned_mallocEm.exit143 ] ; 8 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ad, i8 0, i64 %i.b, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31 ; 13 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !30 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !24
  %i.am = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !22
  %i.ao = load i32, ptr %i.aj, align 4, !tbaa !22
  %i.ap = sub nsw i32 %i.an, %i.ao
  %i.aq = sext i32 %i.ap to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !24 ; 11 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.av = and i64 %i.au, 3
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.l, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.aw = lshr exact i64 %i.au, 2
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = and i64 %i.ax, 3
  %i.az = tail call i64 @llvm.smin.i64(i64 %i.ay, i64 %i.as)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.az, %bb.l ], [ %i.as, %bb.k ] ; 12 uses
  %i.ba = sub nsw i64 %i.as, %.0.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.bb = sdiv i64 %i.ba, 8
  %i.bc = shl nsw i64 %i.bb, 3                    ; 2 uses
  %i.bd = sdiv i64 %i.ba, 4                       ; 2 uses
  %i.be = shl nsw i64 %i.bd, 2                    ; 2 uses
  %i.bf = add nsw i64 %i.bc, %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bg = add nsw i64 %i.be, %.0.i.i.i.i.i.i.i.i.i ; 4 uses
  %.off.i.i.i.i.i = add i64 %i.ba, 3
  %.not.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i, 7
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.bh = getelementptr [4 x i8], ptr %i.ag, i64 %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bi = load <2 x i64>, ptr %i.bh, align 1, !tbaa !32 ; 2 uses
  %i.bj = icmp sgt i64 %i.ba, 7
  br i1 %i.bj, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr i8, ptr %i.bh, i64 16
  %i.bl = load <4 x i32>, ptr %i.bk, align 1, !tbaa !32 ; 2 uses
  %i.bm = bitcast <2 x i64> %i.bi to <4 x i32>    ; 2 uses
  %i.bn = icmp samesign ugt i64 %i.ba, 15
  br i1 %i.bn, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.n
  %.05777.i.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.n
  %.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.bl, %bb.n ], [ %i.by, %.lr.ph.i.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.bm, %bb.n ], [ %i.bu, %.lr.ph.i.i.i.i.i ]
  %i.bo = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i.i, %.lcssa.i.i.i.i.i ; 2 uses
  %i.bp = bitcast <4 x i32> %i.bo to <2 x i64>
  %i.bq = icmp sgt i64 %i.be, %i.bc
  br i1 %i.bq, label %bb.o, label %bb.p

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.05780.i.i.i.i.i = phi i64 [ %.057.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.05777.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i.i = phi i64 [ %.05780.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ]
  %.sroa.067.078.i.i.i.i.i = phi <4 x i32> [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %i.bm, %.lr.ph.preheader.i.i.i.i.i ]
  %i.br = phi <4 x i32> [ %i.by, %.lr.ph.i.i.i.i.i ], [ %i.bl, %.lr.ph.preheader.i.i.i.i.i ]
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05780.i.i.i.i.i
  %i.bt = load <4 x i32>, ptr %i.bs, align 1, !tbaa !32
  %i.bu = add <4 x i32> %i.bt, %.sroa.067.078.i.i.i.i.i ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.ag, i64 %.057.in79.i.i.i.i.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 48
  %i.bx = load <4 x i32>, ptr %i.bw, align 1, !tbaa !32
  %i.by = add <4 x i32> %i.bx, %i.br              ; 2 uses
  %.057.i.i.i.i.i = add nsw i64 %.05780.i.i.i.i.i, 8 ; 2 uses
  %i.bz = icmp slt i64 %.057.i.i.i.i.i, %i.bf
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !33

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.bf
  %i.cb = load <4 x i32>, ptr %i.ca, align 1, !tbaa !32
  %i.cc = add <4 x i32> %i.cb, %i.bo
  %i.cd = bitcast <4 x i32> %i.cc to <2 x i64>
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i.i, %bb.m
  %.sroa.067.2.i.i.i.i.i = phi <2 x i64> [ %i.bi, %bb.m ], [ %i.cd, %bb.o ], [ %i.bp, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ce = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32>
  %i.cf = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32> ; 2 uses
  %i.cg = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ch = add <4 x i32> %i.cg, %i.ce              ; 2 uses
  %shift = shufflevector <4 x i32> %i.ch, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.ch, %shift
  %4 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cf) ; 2 uses
  %i.ci = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ci, label %.lr.ph85.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.p
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.i.preheader515, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.cj = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cj, %vector.ph ], [ %i.cm, %vector.body ]
  %vec.phi391 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cn, %vector.body ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load = load <4 x i32>, ptr %i.ck, align 4, !tbaa !22
  %wide.load392 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !22
  %i.cm = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.cn = add <4 x i32> %wide.load392, %vec.phi391 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cn, %i.cm
  %i.cp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.preheader515

.lr.ph85.i.i.i.i.i.preheader515:                  ; preds = %.lr.ph85.i.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.i.ph = phi i32 [ %4, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.cp, %middle.block ]
  br label %.lr.ph85.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph85.i.i.i.i.i, %middle.block, %bb.p
  %.075.lcssa.i.i.i.i.i = phi i32 [ %4, %bb.p ], [ %i.cp, %middle.block ], [ %i.df, %.lr.ph85.i.i.i.i.i ] ; 3 uses
  %i.cq = icmp slt i64 %i.bg, %i.as
  br i1 %i.cq, label %.lr.ph89.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph89.i.i.i.i.i.preheader:                     ; preds = %.preheader.i.i.i.i.i
  %i.cr = shl nsw i64 %i.bd, 2
  %i.cs = add i64 %.0.i.i.i.i.i.i.i.i.i, %i.cr
  %i.ct = sub i64 %i.as, %i.cs                    ; 3 uses
  %min.iters.check394 = icmp ult i64 %i.ct, 8
  br i1 %min.iters.check394, label %.lr.ph89.i.i.i.i.i.preheader510, label %vector.ph395

vector.ph395:                                     ; preds = %.lr.ph89.i.i.i.i.i.preheader
  %n.vec396 = and i64 %i.ct, -8                   ; 3 uses
  %i.cu = add i64 %i.bg, %n.vec396
  %i.cv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i, i64 0
  %i.cw = getelementptr [4 x i8], ptr %i.ag, i64 %i.bg
  br label %vector.body397

vector.body397:                                   ; preds = %vector.body397, %vector.ph395
  %index398 = phi i64 [ 0, %vector.ph395 ], [ %index.next403, %vector.body397 ] ; 2 uses
  %vec.phi399 = phi <4 x i32> [ %i.cv, %vector.ph395 ], [ %i.cz, %vector.body397 ]
  %vec.phi400 = phi <4 x i32> [ zeroinitializer, %vector.ph395 ], [ %i.da, %vector.body397 ]
  %i.cx = getelementptr [4 x i8], ptr %i.cw, i64 %index398 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load401 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !22
  %wide.load402 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !22
  %i.cz = add <4 x i32> %wide.load401, %vec.phi399 ; 2 uses
  %i.da = add <4 x i32> %wide.load402, %vec.phi400 ; 2 uses
  %index.next403 = add nuw i64 %index398, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next403, %n.vec396
  br i1 %i.db, label %middle.block404, label %vector.body397, !llvm.loop !117

middle.block404:                                  ; preds = %vector.body397
  %bin.rdx405 = add <4 x i32> %i.da, %i.cz
  %i.dc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx405) ; 2 uses
  %cmp.n406 = icmp eq i64 %i.ct, %n.vec396
  br i1 %cmp.n406, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph89.i.i.i.i.i.preheader510

.lr.ph89.i.i.i.i.i.preheader510:                  ; preds = %.lr.ph89.i.i.i.i.i.preheader, %middle.block404
  %.05588.i.i.i.i.i.ph = phi i64 [ %i.bg, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.cu, %middle.block404 ]
  %.187.i.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i.i, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.dc, %middle.block404 ]
  br label %.lr.ph89.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.preheader515, %.lr.ph85.i.i.i.i.i
  %.05683.i.i.i.i.i = phi i64 [ %i.dg, %.lr.ph85.i.i.i.i.i ], [ %.05683.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader515 ] ; 2 uses
  %.07582.i.i.i.i.i = phi i32 [ %i.df, %.lr.ph85.i.i.i.i.i ], [ %.07582.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader515 ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.05683.i.i.i.i.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !22
  %i.df = add nsw i32 %i.de, %.07582.i.i.i.i.i    ; 2 uses
  %i.dg = add nuw nsw i64 %.05683.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dg, %.0.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i, !llvm.loop !118

.lr.ph89.i.i.i.i.i:                               ; preds = %.lr.ph89.i.i.i.i.i.preheader510, %.lr.ph89.i.i.i.i.i
  %.05588.i.i.i.i.i = phi i64 [ %i.dk, %.lr.ph89.i.i.i.i.i ], [ %.05588.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader510 ] ; 2 uses
  %.187.i.i.i.i.i = phi i32 [ %i.dj, %.lr.ph89.i.i.i.i.i ], [ %.187.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader510 ]
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05588.i.i.i.i.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !22
  %i.dj = add nsw i32 %i.di, %.187.i.i.i.i.i      ; 2 uses
  %i.dk = add nsw i64 %.05588.i.i.i.i.i, 1        ; 2 uses
  %i.dl = icmp slt i64 %i.dk, %i.as
  br i1 %i.dl, label %.lr.ph89.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, !llvm.loop !119

bb.q:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.dm = load i32, ptr %i.ag, align 4, !tbaa !22 ; 3 uses
  %i.dn = icmp sgt i64 %i.as, 1
  br i1 %i.dn, label %.lr.ph94.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph94.i.i.i.i.i.preheader:                     ; preds = %bb.q
  %i.do = add nsw i64 %i.as, -1                   ; 2 uses
  %min.iters.check410 = icmp ult i64 %i.as, 9
  br i1 %min.iters.check410, label %.lr.ph94.i.i.i.i.i.preheader506, label %vector.ph411

vector.ph411:                                     ; preds = %.lr.ph94.i.i.i.i.i.preheader
  %n.vec412 = and i64 %i.do, -8                   ; 3 uses
  %i.dp = or disjoint i64 %n.vec412, 1
  %i.dq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.dm, i64 0
  br label %vector.body413

vector.body413:                                   ; preds = %vector.body413, %vector.ph411
  %index414 = phi i64 [ 0, %vector.ph411 ], [ %index.next419, %vector.body413 ] ; 2 uses
  %vec.phi415 = phi <4 x i32> [ %i.dq, %vector.ph411 ], [ %i.du, %vector.body413 ]
  %vec.phi416 = phi <4 x i32> [ zeroinitializer, %vector.ph411 ], [ %i.dv, %vector.body413 ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index414 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %wide.load417 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !22
  %wide.load418 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !22
  %i.du = add <4 x i32> %wide.load417, %vec.phi415 ; 2 uses
  %i.dv = add <4 x i32> %wide.load418, %vec.phi416 ; 2 uses
  %index.next419 = add nuw i64 %index414, 8       ; 2 uses
  %i.dw = icmp eq i64 %index.next419, %n.vec412
  br i1 %i.dw, label %middle.block420, label %vector.body413, !llvm.loop !120

middle.block420:                                  ; preds = %vector.body413
  %bin.rdx421 = add <4 x i32> %i.dv, %i.du
  %i.dx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx421) ; 2 uses
  %cmp.n422 = icmp eq i64 %i.do, %n.vec412
  br i1 %cmp.n422, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i.preheader506

.lr.ph94.i.i.i.i.i.preheader506:                  ; preds = %.lr.ph94.i.i.i.i.i.preheader, %middle.block420
  %.092.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.dp, %middle.block420 ]
  %.291.i.i.i.i.i.ph = phi i32 [ %i.dm, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.dx, %middle.block420 ]
  br label %.lr.ph94.i.i.i.i.i

.lr.ph94.i.i.i.i.i:                               ; preds = %.lr.ph94.i.i.i.i.i.preheader506, %.lr.ph94.i.i.i.i.i
  %.092.i.i.i.i.i = phi i64 [ %i.eb, %.lr.ph94.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader506 ] ; 2 uses
  %.291.i.i.i.i.i = phi i32 [ %i.ea, %.lr.ph94.i.i.i.i.i ], [ %.291.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader506 ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.092.i.i.i.i.i
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !22
  %i.ea = add nsw i32 %i.dz, %.291.i.i.i.i.i      ; 2 uses
  %i.eb = add nuw nsw i64 %.092.i.i.i.i.i, 1      ; 2 uses
  %exitcond102.not.i.i.i.i.i = icmp eq i64 %i.eb, %i.as
  br i1 %exitcond102.not.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i, !llvm.loop !121

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i: ; preds = %.lr.ph89.i.i.i.i.i, %.lr.ph94.i.i.i.i.i, %middle.block404, %middle.block420, %bb.q, %.preheader.i.i.i.i.i
  %.0.i.i.i = phi i32 [ %i.ea, %.lr.ph94.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.dm, %bb.q ], [ %i.dx, %middle.block420 ], [ %i.dc, %middle.block404 ], [ %i.dj, %.lr.ph89.i.i.i.i.i ]
  %i.ec = sext i32 %.0.i.i.i to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, %bb.j, %bb.i
  %.0.i.i = phi i64 [ %i.aq, %bb.i ], [ %i.ec, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i ], [ 0, %bb.j ]
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !31 ; 13 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !30 ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.d
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !22
  %i.ek = load i32, ptr %i.eh, align 4, !tbaa !22
  %i.el = sub nsw i32 %i.ej, %i.ek
  %i.em = sext i32 %i.el to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183

bb.s:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit
  %i.en = icmp eq i64 %i.d, 0
  br i1 %i.en, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eo = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.ep = and i64 %i.eo, 3
  %.not.i.i.i.i.i.i.i.i.i149 = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i149, label %bb.u, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150

bb.u:                                             ; preds = %bb.t
  %i.eq = lshr exact i64 %i.eo, 2
  %i.er = sub nsw i64 0, %i.eq
  %i.es = and i64 %i.er, 3
  %i.et = tail call i64 @llvm.smin.i64(i64 %i.es, i64 %i.d)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i.i151 = phi i64 [ %i.et, %bb.u ], [ %i.d, %bb.t ] ; 12 uses
  %i.eu = sub nsw i64 %i.d, %.0.i.i.i.i.i.i.i.i.i151 ; 5 uses
  %i.ev = sdiv i64 %i.eu, 8
  %i.ew = shl nsw i64 %i.ev, 3                    ; 2 uses
  %i.ex = sdiv i64 %i.eu, 4                       ; 2 uses
  %i.ey = shl nsw i64 %i.ex, 2                    ; 2 uses
  %i.ez = add nsw i64 %i.ew, %.0.i.i.i.i.i.i.i.i.i151 ; 2 uses
  %i.fa = add nsw i64 %i.ey, %.0.i.i.i.i.i.i.i.i.i151 ; 4 uses
  %.off.i.i.i.i.i152 = add i64 %i.eu, 3
  %.not.i.i.i.i.i153 = icmp ult i64 %.off.i.i.i.i.i152, 7
  br i1 %.not.i.i.i.i.i153, label %bb.z, label %bb.v

bb.v:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150
  %i.fb = getelementptr [4 x i8], ptr %i.ee, i64 %.0.i.i.i.i.i.i.i.i.i151 ; 2 uses
  %i.fc = load <2 x i64>, ptr %i.fb, align 1, !tbaa !32 ; 2 uses
  %i.fd = icmp sgt i64 %i.eu, 7
  br i1 %i.fd, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.fe = getelementptr i8, ptr %i.fb, i64 16
  %i.ff = load <4 x i32>, ptr %i.fe, align 1, !tbaa !32 ; 2 uses
  %i.fg = bitcast <2 x i64> %i.fc to <4 x i32>    ; 2 uses
  %i.fh = icmp samesign ugt i64 %i.eu, 15
  br i1 %i.fh, label %.lr.ph.preheader.i.i.i.i.i172, label %._crit_edge.i.i.i.i.i169

.lr.ph.preheader.i.i.i.i.i172:                    ; preds = %bb.w
  %.05777.i.i.i.i.i173 = add nsw i64 %.0.i.i.i.i.i.i.i.i.i151, 8
  br label %.lr.ph.i.i.i.i.i174

._crit_edge.i.i.i.i.i169:                         ; preds = %.lr.ph.i.i.i.i.i174, %bb.w
  %.lcssa.i.i.i.i.i170 = phi <4 x i32> [ %i.ff, %bb.w ], [ %i.fs, %.lr.ph.i.i.i.i.i174 ]
  %.sroa.067.0.lcssa.i.i.i.i.i171 = phi <4 x i32> [ %i.fg, %bb.w ], [ %i.fo, %.lr.ph.i.i.i.i.i174 ]
  %i.fi = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i.i171, %.lcssa.i.i.i.i.i170 ; 2 uses
  %i.fj = bitcast <4 x i32> %i.fi to <2 x i64>
  %i.fk = icmp sgt i64 %i.ey, %i.ew
  br i1 %i.fk, label %bb.x, label %bb.y

.lr.ph.i.i.i.i.i174:                              ; preds = %.lr.ph.i.i.i.i.i174, %.lr.ph.preheader.i.i.i.i.i172
  %.05780.i.i.i.i.i175 = phi i64 [ %.057.i.i.i.i.i178, %.lr.ph.i.i.i.i.i174 ], [ %.05777.i.i.i.i.i173, %.lr.ph.preheader.i.i.i.i.i172 ] ; 3 uses
  %.057.in79.i.i.i.i.i176 = phi i64 [ %.05780.i.i.i.i.i175, %.lr.ph.i.i.i.i.i174 ], [ %.0.i.i.i.i.i.i.i.i.i151, %.lr.ph.preheader.i.i.i.i.i172 ]
  %.sroa.067.078.i.i.i.i.i177 = phi <4 x i32> [ %i.fo, %.lr.ph.i.i.i.i.i174 ], [ %i.fg, %.lr.ph.preheader.i.i.i.i.i172 ]
  %i.fl = phi <4 x i32> [ %i.fs, %.lr.ph.i.i.i.i.i174 ], [ %i.ff, %.lr.ph.preheader.i.i.i.i.i172 ]
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %.05780.i.i.i.i.i175
  %i.fn = load <4 x i32>, ptr %i.fm, align 1, !tbaa !32
  %i.fo = add <4 x i32> %i.fn, %.sroa.067.078.i.i.i.i.i177 ; 2 uses
  %i.fp = getelementptr [4 x i8], ptr %i.ee, i64 %.057.in79.i.i.i.i.i176
  %i.fq = getelementptr i8, ptr %i.fp, i64 48
  %i.fr = load <4 x i32>, ptr %i.fq, align 1, !tbaa !32
  %i.fs = add <4 x i32> %i.fr, %i.fl              ; 2 uses
  %.057.i.i.i.i.i178 = add nsw i64 %.05780.i.i.i.i.i175, 8 ; 2 uses
  %i.ft = icmp slt i64 %.057.i.i.i.i.i178, %i.ez
  br i1 %i.ft, label %.lr.ph.i.i.i.i.i174, label %._crit_edge.i.i.i.i.i169, !llvm.loop !33

bb.x:                                             ; preds = %._crit_edge.i.i.i.i.i169
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ez
  %i.fv = load <4 x i32>, ptr %i.fu, align 1, !tbaa !32
  %i.fw = add <4 x i32> %i.fv, %i.fi
  %i.fx = bitcast <4 x i32> %i.fw to <2 x i64>
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i.i.i.i.i169, %bb.v
  %.sroa.067.2.i.i.i.i.i154 = phi <2 x i64> [ %i.fc, %bb.v ], [ %i.fx, %bb.x ], [ %i.fj, %._crit_edge.i.i.i.i.i169 ] ; 2 uses
  %i.fy = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i154 to <4 x i32>
  %i.fz = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i154 to <4 x i32> ; 2 uses
  %i.ga = shufflevector <4 x i32> %i.fz, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.gb = add <4 x i32> %i.ga, %i.fy              ; 2 uses
  %shift484 = shufflevector <4 x i32> %i.gb, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop485 = add nsw <4 x i32> %i.gb, %shift484
  %5 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fz) ; 2 uses
  %i.gc = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i151, 0
  br i1 %i.gc, label %.lr.ph85.i.i.i.i.i165.preheader, label %.preheader.i.i.i.i.i157

.lr.ph85.i.i.i.i.i165.preheader:                  ; preds = %bb.y
  %min.iters.check426 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i151, 8
  br i1 %min.iters.check426, label %.lr.ph85.i.i.i.i.i165.preheader500, label %vector.ph427

vector.ph427:                                     ; preds = %.lr.ph85.i.i.i.i.i165.preheader
  %n.vec428 = and i64 %.0.i.i.i.i.i.i.i.i.i151, 9223372036854775800 ; 3 uses
  %i.gd = shufflevector <4 x i32> %foldExtExtBinop485, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body429

vector.body429:                                   ; preds = %vector.body429, %vector.ph427
  %index430 = phi i64 [ 0, %vector.ph427 ], [ %index.next435, %vector.body429 ] ; 2 uses
  %vec.phi431 = phi <4 x i32> [ %i.gd, %vector.ph427 ], [ %i.gg, %vector.body429 ]
  %vec.phi432 = phi <4 x i32> [ zeroinitializer, %vector.ph427 ], [ %i.gh, %vector.body429 ]
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %index430 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %wide.load433 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !22
  %wide.load434 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !22
  %i.gg = add <4 x i32> %wide.load433, %vec.phi431 ; 2 uses
  %i.gh = add <4 x i32> %wide.load434, %vec.phi432 ; 2 uses
  %index.next435 = add nuw i64 %index430, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next435, %n.vec428
  br i1 %i.gi, label %middle.block436, label %vector.body429, !llvm.loop !122

middle.block436:                                  ; preds = %vector.body429
  %bin.rdx437 = add <4 x i32> %i.gh, %i.gg
  %i.gj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx437) ; 2 uses
  %cmp.n438 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i151, %n.vec428
  br i1 %cmp.n438, label %.preheader.i.i.i.i.i157, label %.lr.ph85.i.i.i.i.i165.preheader500

.lr.ph85.i.i.i.i.i165.preheader500:               ; preds = %.lr.ph85.i.i.i.i.i165.preheader, %middle.block436
  %.05683.i.i.i.i.i166.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i165.preheader ], [ %n.vec428, %middle.block436 ]
  %.07582.i.i.i.i.i167.ph = phi i32 [ %5, %.lr.ph85.i.i.i.i.i165.preheader ], [ %i.gj, %middle.block436 ]
  br label %.lr.ph85.i.i.i.i.i165

.preheader.i.i.i.i.i157:                          ; preds = %.lr.ph85.i.i.i.i.i165, %middle.block436, %bb.y
  %.075.lcssa.i.i.i.i.i158 = phi i32 [ %5, %bb.y ], [ %i.gj, %middle.block436 ], [ %i.gz, %.lr.ph85.i.i.i.i.i165 ] ; 3 uses
  %i.gk = icmp slt i64 %i.fa, %i.d
  br i1 %i.gk, label %.lr.ph89.i.i.i.i.i162.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159

.lr.ph89.i.i.i.i.i162.preheader:                  ; preds = %.preheader.i.i.i.i.i157
  %i.gl = shl nsw i64 %i.ex, 2
  %i.gm = add i64 %.0.i.i.i.i.i.i.i.i.i151, %i.gl
  %i.gn = sub i64 %i.d, %i.gm                     ; 3 uses
  %min.iters.check442 = icmp ult i64 %i.gn, 8
  br i1 %min.iters.check442, label %.lr.ph89.i.i.i.i.i162.preheader495, label %vector.ph443

vector.ph443:                                     ; preds = %.lr.ph89.i.i.i.i.i162.preheader
  %n.vec444 = and i64 %i.gn, -8                   ; 3 uses
  %i.go = add i64 %i.fa, %n.vec444
  %i.gp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i158, i64 0
  %i.gq = getelementptr [4 x i8], ptr %i.ee, i64 %i.fa
  br label %vector.body445

vector.body445:                                   ; preds = %vector.body445, %vector.ph443
  %index446 = phi i64 [ 0, %vector.ph443 ], [ %index.next451, %vector.body445 ] ; 2 uses
  %vec.phi447 = phi <4 x i32> [ %i.gp, %vector.ph443 ], [ %i.gt, %vector.body445 ]
  %vec.phi448 = phi <4 x i32> [ zeroinitializer, %vector.ph443 ], [ %i.gu, %vector.body445 ]
  %i.gr = getelementptr [4 x i8], ptr %i.gq, i64 %index446 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %wide.load449 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !22
  %wide.load450 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !22
  %i.gt = add <4 x i32> %wide.load449, %vec.phi447 ; 2 uses
  %i.gu = add <4 x i32> %wide.load450, %vec.phi448 ; 2 uses
  %index.next451 = add nuw i64 %index446, 8       ; 2 uses
  %i.gv = icmp eq i64 %index.next451, %n.vec444
  br i1 %i.gv, label %middle.block452, label %vector.body445, !llvm.loop !123

middle.block452:                                  ; preds = %vector.body445
  %bin.rdx453 = add <4 x i32> %i.gu, %i.gt
  %i.gw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx453) ; 2 uses
  %cmp.n454 = icmp eq i64 %i.gn, %n.vec444
  br i1 %cmp.n454, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, label %.lr.ph89.i.i.i.i.i162.preheader495

.lr.ph89.i.i.i.i.i162.preheader495:               ; preds = %.lr.ph89.i.i.i.i.i162.preheader, %middle.block452
  %.05588.i.i.i.i.i163.ph = phi i64 [ %i.fa, %.lr.ph89.i.i.i.i.i162.preheader ], [ %i.go, %middle.block452 ]
  %.187.i.i.i.i.i164.ph = phi i32 [ %.075.lcssa.i.i.i.i.i158, %.lr.ph89.i.i.i.i.i162.preheader ], [ %i.gw, %middle.block452 ]
  br label %.lr.ph89.i.i.i.i.i162

.lr.ph85.i.i.i.i.i165:                            ; preds = %.lr.ph85.i.i.i.i.i165.preheader500, %.lr.ph85.i.i.i.i.i165
  %.05683.i.i.i.i.i166 = phi i64 [ %i.ha, %.lr.ph85.i.i.i.i.i165 ], [ %.05683.i.i.i.i.i166.ph, %.lr.ph85.i.i.i.i.i165.preheader500 ] ; 2 uses
  %.07582.i.i.i.i.i167 = phi i32 [ %i.gz, %.lr.ph85.i.i.i.i.i165 ], [ %.07582.i.i.i.i.i167.ph, %.lr.ph85.i.i.i.i.i165.preheader500 ]
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.05683.i.i.i.i.i166
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !22
  %i.gz = add nsw i32 %i.gy, %.07582.i.i.i.i.i167 ; 2 uses
  %i.ha = add nuw nsw i64 %.05683.i.i.i.i.i166, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i168 = icmp eq i64 %i.ha, %.0.i.i.i.i.i.i.i.i.i151
  br i1 %exitcond.not.i.i.i.i.i168, label %.preheader.i.i.i.i.i157, label %.lr.ph85.i.i.i.i.i165, !llvm.loop !124

.lr.ph89.i.i.i.i.i162:                            ; preds = %.lr.ph89.i.i.i.i.i162.preheader495, %.lr.ph89.i.i.i.i.i162
  %.05588.i.i.i.i.i163 = phi i64 [ %i.he, %.lr.ph89.i.i.i.i.i162 ], [ %.05588.i.i.i.i.i163.ph, %.lr.ph89.i.i.i.i.i162.preheader495 ] ; 2 uses
  %.187.i.i.i.i.i164 = phi i32 [ %i.hd, %.lr.ph89.i.i.i.i.i162 ], [ %.187.i.i.i.i.i164.ph, %.lr.ph89.i.i.i.i.i162.preheader495 ]
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %.05588.i.i.i.i.i163
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !22
  %i.hd = add nsw i32 %i.hc, %.187.i.i.i.i.i164   ; 2 uses
  %i.he = add nsw i64 %.05588.i.i.i.i.i163, 1     ; 2 uses
  %i.hf = icmp slt i64 %i.he, %i.d
  br i1 %i.hf, label %.lr.ph89.i.i.i.i.i162, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, !llvm.loop !125

bb.z:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150
  %i.hg = load i32, ptr %i.ee, align 4, !tbaa !22 ; 3 uses
  %i.hh = icmp sgt i64 %i.d, 1
  br i1 %i.hh, label %.lr.ph94.i.i.i.i.i179.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159

.lr.ph94.i.i.i.i.i179.preheader:                  ; preds = %bb.z
  %i.hi = add nsw i64 %i.d, -1                    ; 2 uses
  %min.iters.check458 = icmp ult i64 %i.d, 9
  br i1 %min.iters.check458, label %.lr.ph94.i.i.i.i.i179.preheader491, label %vector.ph459

vector.ph459:                                     ; preds = %.lr.ph94.i.i.i.i.i179.preheader
  %n.vec460 = and i64 %i.hi, -8                   ; 3 uses
  %i.hj = or disjoint i64 %n.vec460, 1
  %i.hk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.hg, i64 0
  br label %vector.body461

vector.body461:                                   ; preds = %vector.body461, %vector.ph459
  %index462 = phi i64 [ 0, %vector.ph459 ], [ %index.next467, %vector.body461 ] ; 2 uses
  %vec.phi463 = phi <4 x i32> [ %i.hk, %vector.ph459 ], [ %i.ho, %vector.body461 ]
  %vec.phi464 = phi <4 x i32> [ zeroinitializer, %vector.ph459 ], [ %i.hp, %vector.body461 ]
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %index462 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 20
  %wide.load465 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !22
  %wide.load466 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !22
  %i.ho = add <4 x i32> %wide.load465, %vec.phi463 ; 2 uses
  %i.hp = add <4 x i32> %wide.load466, %vec.phi464 ; 2 uses
  %index.next467 = add nuw i64 %index462, 8       ; 2 uses
  %i.hq = icmp eq i64 %index.next467, %n.vec460
  br i1 %i.hq, label %middle.block468, label %vector.body461, !llvm.loop !126

middle.block468:                                  ; preds = %vector.body461
  %bin.rdx469 = add <4 x i32> %i.hp, %i.ho
  %i.hr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx469) ; 2 uses
  %cmp.n470 = icmp eq i64 %i.hi, %n.vec460
  br i1 %cmp.n470, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, label %.lr.ph94.i.i.i.i.i179.preheader491

.lr.ph94.i.i.i.i.i179.preheader491:               ; preds = %.lr.ph94.i.i.i.i.i179.preheader, %middle.block468
  %.092.i.i.i.i.i180.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i179.preheader ], [ %i.hj, %middle.block468 ]
  %.291.i.i.i.i.i181.ph = phi i32 [ %i.hg, %.lr.ph94.i.i.i.i.i179.preheader ], [ %i.hr, %middle.block468 ]
  br label %.lr.ph94.i.i.i.i.i179

.lr.ph94.i.i.i.i.i179:                            ; preds = %.lr.ph94.i.i.i.i.i179.preheader491, %.lr.ph94.i.i.i.i.i179
  %.092.i.i.i.i.i180 = phi i64 [ %i.hv, %.lr.ph94.i.i.i.i.i179 ], [ %.092.i.i.i.i.i180.ph, %.lr.ph94.i.i.i.i.i179.preheader491 ] ; 2 uses
  %.291.i.i.i.i.i181 = phi i32 [ %i.hu, %.lr.ph94.i.i.i.i.i179 ], [ %.291.i.i.i.i.i181.ph, %.lr.ph94.i.i.i.i.i179.preheader491 ]
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.092.i.i.i.i.i180
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !22
  %i.hu = add nsw i32 %i.ht, %.291.i.i.i.i.i181   ; 2 uses
  %i.hv = add nuw nsw i64 %.092.i.i.i.i.i180, 1   ; 2 uses
  %exitcond102.not.i.i.i.i.i182 = icmp eq i64 %i.hv, %i.d
  br i1 %exitcond102.not.i.i.i.i.i182, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, label %.lr.ph94.i.i.i.i.i179, !llvm.loop !127

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159: ; preds = %.lr.ph89.i.i.i.i.i162, %.lr.ph94.i.i.i.i.i179, %middle.block452, %middle.block468, %bb.z, %.preheader.i.i.i.i.i157
  %.0.i.i.i160 = phi i32 [ %i.hu, %.lr.ph94.i.i.i.i.i179 ], [ %.075.lcssa.i.i.i.i.i158, %.preheader.i.i.i.i.i157 ], [ %i.hg, %bb.z ], [ %i.hr, %middle.block468 ], [ %i.gw, %middle.block452 ], [ %i.hd, %.lr.ph89.i.i.i.i.i162 ]
  %i.hw = sext i32 %.0.i.i.i160 to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, %bb.s, %bb.r
  %.0.i.i161 = phi i64 [ %i.em, %bb.r ], [ %i.hw, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159 ], [ 0, %bb.s ]
  %i.hx = add nsw i64 %.0.i.i161, %.0.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 7 uses
  store i64 0, ptr %i.hy, align 8, !tbaa !109
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !30
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !24
  %i.id = shl i64 %i.ic, 2
  %i.ie = add i64 %i.id, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ia, i8 0, i64 %i.ie, i1 false)
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !31 ; 2 uses
  %.not.i = icmp eq ptr %i.ig, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183
  %i.ih = load i64, ptr %i.ib, align 8, !tbaa !24
  %i.ii = shl i64 %i.ih, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ig, i8 0, i64 %i.ii, i1 false)
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit:   ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183, %bb.aa
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.ij, i64 noundef %i.hx)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit.preheader unwind label %bb.ae

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit.preheader: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit
  %i.ik = icmp sgt i64 %i.d, 0
  br i1 %i.ik, label %.lr.ph307, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge

.lr.ph307:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit.preheader
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 9 uses
  %i.is = udiv i64 %i.b, 11
end_hunk_3
