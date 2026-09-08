Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/XeGPULayoutImpl?download=true
inline.NumInlined: 4198
inline.NumDeleted: 1966
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZL26get2DBlockIOInstDataLayoutN4llvm8ArrayRefIlEEN4mlir4TypeEPKNS2_5xegpu5uArch27BlockIOInstructionInterfaceEbb:bb.a
  store i64 1, ptr %i.ak, align 8, !tbaa !85
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 40
  store i64 1, ptr %i.al, align 8, !tbaa !85
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 48
  store i64 1, ptr %i.am, align 8, !tbaa !85
  %i.an = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 56
  store i64 1, ptr %i.an, align 8, !tbaa !85
  %i.ao = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.ao, %i.ab
  br i1 %.not.i.i.i.i.i.i.i.i.7, label %_ZN4llvm11SmallVectorIlLj6EEC2EmRKl.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZN4llvm11SmallVectorIlLj6EEC2EmRKl.exit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.i.i
  %storemerge.i = trunc i64 %2 to i32
  store i32 %storemerge.i, ptr %i.j, align 8, !tbaa !19
  %i.ap = getelementptr [8 x i8], ptr %1, i64 %2
  %i.aq = getelementptr i8, ptr %i.ap, i64 -8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !85
  %i.as = trunc i64 %i.ar to i32
  %i.at = call noundef i32 @_ZN4mlir5xegpu17getLargestDivisorIiEEiT_N4llvm8ArrayRefIS2_EES5_(i32 noundef %i.as, ptr %.sroa.5.0.copyload, i64 %.sroa.6.0.copyload, ptr null, i64 0) #20
  %sext13 = add i64 %sext, -8589934592
  %i.au = ashr exact i64 %sext13, 32              ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !85
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = call noundef i32 @_ZN4mlir5xegpu17getLargestDivisorIiEEiT_N4llvm8ArrayRefIS2_EES5_(i32 noundef %i.ax, ptr %.sroa.318.0.copyload, i64 %.sroa.4.0.copyload, ptr null, i64 0) #20
  %i.az = sext i32 %i.at to i64
  %i.ba = load ptr, ptr %8, align 8, !tbaa !18    ; 3 uses
  %i.bb = load i32, ptr %i.j, align 8, !tbaa !19  ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -8
  store i64 %i.az, ptr %i.be, align 8, !tbaa !85
  %i.bf = sext i32 %i.ay to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.au
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !85
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bh, ptr %0, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !19
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.bj, align 4, !tbaa !20
  %.not.i.i.i.i.i.i.i.i14 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i.i.i.i.i.i14, label %_ZNSt8optionalIN4llvm11SmallVectorIlLj6EEEEC2IS2_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_IS7_ISt10in_place_tSE_EESt16is_constructibleIS2_JSA_EESt14is_convertibleISA_S2_EEEbE4typeELb1EEEOSA_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2EmRKl.exit
  %i.bk = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIlEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %8) ; 0 uses
  %.pre = load ptr, ptr %8, align 8, !tbaa !18
  br label %_ZNSt8optionalIN4llvm11SmallVectorIlLj6EEEEC2IS2_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_IS7_ISt10in_place_tSE_EESt16is_constructibleIS2_JSA_EESt14is_convertibleISA_S2_EEEbE4typeELb1EEEOSA_.exit

_ZNSt8optionalIN4llvm11SmallVectorIlLj6EEEEC2IS2_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_IS7_ISt10in_place_tSE_EESt16is_constructibleIS2_JSA_EESt14is_convertibleISA_S2_EEEbE4typeELb1EEEOSA_.exit: ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2EmRKl.exit, %bb.e
  %i.bl = phi ptr [ %i.ba, %_ZN4llvm11SmallVectorIlLj6EEC2EmRKl.exit ], [ %.pre, %bb.e ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.bm, align 8, !tbaa !116
  %i.bn = icmp eq ptr %i.bl, %i.i
  br i1 %i.bn, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8optionalIN4llvm11SmallVectorIlLj6EEEEC2IS2_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_IS7_ISt10in_place_tSE_EESt16is_constructibleIS2_JSA_EESt14is_convertibleISA_S2_EEEbE4typeELb1EEEOSA_.exit
  call void @free(ptr noundef %i.bl) #20
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %_ZNSt8optionalIN4llvm11SmallVectorIlLj6EEEEC2IS2_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_IS7_ISt10in_place_tSE_EESt16is_constructibleIS2_JSA_EESt14is_convertibleISA_S2_EEEbE4typeELb1EEEOSA_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL21getSgLayoutCandidatesN4llvm8ArrayRefIlEES1_l(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3, i64 noundef range(i64 -2147483648, 2147483648) %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.llvm::SmallVector.57", align 8 ; 10 uses
  %6 = alloca %class.anon.595, align 1            ; 3 uses
  %7 = alloca %"class.std::function", align 8     ; 10 uses
  %8 = alloca %"class.llvm::SmallVector.80", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %2, ptr %i.c, align 8, !tbaa !85, !noalias !319
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.d, ptr %8, align 8, !tbaa !18, !alias.scope !319
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !19, !alias.scope !319
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 1, ptr %i.f, align 4, !tbaa !20, !alias.scope !319
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !319
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.g, ptr %5, align 8, !tbaa !18, !noalias !319
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 6, ptr %i.i, align 4, !tbaa !20, !noalias !319
  %i.j = icmp ugt i64 %2, 6
  br i1 %i.j, label %_ZNKSt8functionIFvllEEclEll.exit.loopexit.i, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.i.i.i

_ZNKSt8functionIFvllEEclEll.exit.loopexit.i:      ; preds = %bb.a
  store i32 0, ptr %i.h, align 8, !tbaa !19, !noalias !319
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %i.g, i64 noundef %2, i64 noundef 8) #20
  %i.k = load ptr, ptr %5, align 8, !tbaa !18, !noalias !319
  br label %_ZNKSt8functionIFvllEEclEll.exit.sink.split.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.i.i.i:        ; preds = %bb.a
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZNKSt8functionIFvllEEclEll.exit.i, label %_ZNKSt8functionIFvllEEclEll.exit.sink.split.i

_ZNKSt8functionIFvllEEclEll.exit.sink.split.i:    ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.i.i.i, %_ZNKSt8functionIFvllEEclEll.exit.loopexit.i
  %.sink.i = phi ptr [ %i.k, %_ZNKSt8functionIFvllEEclEll.exit.loopexit.i ], [ %i.g, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.i.i.i ]
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %2, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink.i, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !85
  br label %_ZNKSt8functionIFvllEEclEll.exit.i

_ZNKSt8functionIFvllEEclEll.exit.i:               ; preds = %_ZNKSt8functionIFvllEEclEll.exit.sink.split.i, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.i.i.i
  %storemerge.i.i = trunc i64 %2 to i32
  store i32 %storemerge.i.i, ptr %i.h, align 8, !tbaa !19, !noalias !319
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20, !noalias !319
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !319
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.n, align 8, !noalias !319
  %i.o = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22 ; 6 uses
  store ptr %i.c, ptr %i.o, align 16, !tbaa !125
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %5, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !127
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %8, ptr %.sroa.5.0..sroa_idx.i, align 16, !tbaa !129
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %6, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %7, ptr %.sroa.7.0..sroa_idx.i, align 16, !tbaa !131
  store ptr %i.o, ptr %7, align 8, !tbaa !67, !noalias !319
  store ptr @"_ZNSt17_Function_handlerIFvllEZL23enumerateFactorizationsllE3$_0E9_M_invokeERKSt9_Any_dataOlS6_", ptr %i.m, align 8, !tbaa !134, !noalias !319
  store ptr @"_ZNSt17_Function_handlerIFvllEZL23enumerateFactorizationsllE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", ptr %i.l, align 8, !tbaa !135, !noalias !319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !319
  store i64 0, ptr %i.a, align 8, !tbaa !85, !noalias !319
  store i64 %4, ptr %i.b, align 8, !tbaa !85, !noalias !319
  call void @"_ZNSt17_Function_handlerIFvllEZL23enumerateFactorizationsllE3$_0E9_M_invokeERKSt9_Any_dataOlS6_"(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20, !inline_history !315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !319
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !135, !noalias !319 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i1.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNKSt8functionIFvllEEclEll.exit.i
  %i.q = call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3) #20, !inline_history !316 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %_ZNKSt8functionIFvllEEclEll.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !319
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !319
  %i.r = load ptr, ptr %5, align 8, !tbaa !18, !noalias !319 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.g
  br i1 %i.s, label %_ZL23enumerateFactorizationsll.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  call void @free(ptr noundef %i.r) #20
  br label %_ZL23enumerateFactorizationsll.exit

_ZL23enumerateFactorizationsll.exit:              ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %0, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.u, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.v, align 4, !tbaa !20
  %i.w = load ptr, ptr %8, align 8, !tbaa !18     ; 3 uses
  %i.x = load i32, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.y = zext i32 %i.x to i64
  %.idx = shl nuw nsw i64 %i.y, 6
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx ; 2 uses
  %.not36 = icmp eq i32 %i.x, 0
  br i1 %.not36, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZL23enumerateFactorizationsll.exit
  %.not3334 = icmp sgt i64 %2, 0
  br i1 %.not3334, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %.thread.us
  %.02437.us = phi ptr [ %i.al, %.thread.us ], [ %i.w, %.preheader.lr.ph ] ; 3 uses
  %i.aa = load ptr, ptr %.02437.us, align 8, !tbaa !18
  br label %bb.e

bb.d:                                             ; preds = %bb.f
  %i.ab = add nuw nsw i64 %.035.us, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %2
  br i1 %exitcond.not, label %..critedge.loopexit_crit_edge.us, label %bb.e, !llvm.loop !317

bb.e:                                             ; preds = %.preheader.us, %bb.d
  %.035.us = phi i64 [ 0, %.preheader.us ], [ %i.ab, %bb.d ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.035.us
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !85 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.035.us
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !85 ; 2 uses
  %i.ag = srem i64 %i.ad, %i.af
  %i.ah = sdiv i64 %i.ad, %i.af
  %.not25.us = icmp eq i64 %i.ag, 0
  br i1 %.not25.us, label %bb.f, label %.thread.us

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.035.us
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !85
  %i.ak = srem i64 %i.ah, %i.aj
  %.not26.us = icmp eq i64 %i.ak, 0
  br i1 %.not26.us, label %bb.d, label %.thread.us

.thread.us:                                       ; preds = %bb.e, %bb.f, %..critedge.loopexit_crit_edge.us
  %i.al = getelementptr inbounds nuw i8, ptr %.02437.us, i64 64 ; 2 uses
  %.not.us = icmp eq ptr %i.al, %i.z
  br i1 %.not.us, label %._crit_edge, label %.preheader.us

..critedge.loopexit_crit_edge.us:                 ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(64) %.02437.us)
  br label %.thread.us

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.02437 = phi ptr [ %i.am, %.preheader ], [ %i.w, %.preheader.lr.ph ] ; 2 uses
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(64) %.02437)
  %i.am = getelementptr inbounds nuw i8, ptr %.02437, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.am, %i.z
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.preheader, %.thread.us, %_ZL23enumerateFactorizationsll.exit
  %.val = load ptr, ptr %0, align 8, !tbaa !18    ; 5 uses
  %.val27 = load i32, ptr %i.u, align 8, !tbaa !19 ; 3 uses
  %i.an = zext i32 %.val27 to i64                 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.an, 6
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %.val27, 0
  br i1 %.not.i.i.i.i, label %"_ZN4llvm4sortIRNS_11SmallVectorINS1_IlLj6EEELj1EEEZL21getSgLayoutCandidatesNS_8ArrayRefIlEES6_lE3$_0EEvOT_T0_.exit", label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ap = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.an, i1 true)
  %i.aq = shl nuw nsw i64 %i.ap, 1
  %i.ar = xor i64 %i.aq, 126
  call fastcc void @"_ZSt16__introsort_loopIPN4llvm11SmallVectorIlLj6EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZL21getSgLayoutCandidatesNS0_8ArrayRefIlEES8_lE3$_0EEEvT_SB_T0_T1_"(ptr noundef %.val, ptr noundef nonnull %i.ao, i64 noundef %i.ar)
  %i.as = icmp ugt i32 %.val27, 16
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 1024 ; 2 uses
  call fastcc void @"_ZSt16__insertion_sortIPN4llvm11SmallVectorIlLj6EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZL21getSgLayoutCandidatesNS0_8ArrayRefIlEES8_lE3$_0EEEvT_SB_T0_"(ptr noundef nonnull %.val, ptr noundef nonnull %i.at)
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %bb.h
  %.07.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %i.at, %bb.h ] ; 2 uses
  call fastcc void @"_ZSt25__unguarded_linear_insertIPN4llvm11SmallVectorIlLj6EEEN9__gnu_cxx5__ops14_Val_comp_iterIZL21getSgLayoutCandidatesNS0_8ArrayRefIlEES8_lE3$_0EEEvT_T0_"(ptr noundef nonnull %.07.i.i.i.i.i.i)
  %i.au = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, %i.ao
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4llvm4sortIRNS_11SmallVectorINS1_IlLj6EEELj1EEEZL21getSgLayoutCandidatesNS_8ArrayRefIlEES6_lE3$_0EEvOT_T0_.exit", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !318

bb.i:                                             ; preds = %bb.g
  call fastcc void @"_ZSt16__insertion_sortIPN4llvm11SmallVectorIlLj6EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZL21getSgLayoutCandidatesNS0_8ArrayRefIlEES8_lE3$_0EEEvT_SB_T0_"(ptr noundef nonnull %.val, ptr noundef nonnull %i.ao)
  br label %"_ZN4llvm4sortIRNS_11SmallVectorINS1_IlLj6EEELj1EEEZL21getSgLayoutCandidatesNS_8ArrayRefIlEES6_lE3$_0EEvOT_T0_.exit"

"_ZN4llvm4sortIRNS_11SmallVectorINS1_IlLj6EEELj1EEEZL21getSgLayoutCandidatesNS_8ArrayRefIlEES6_lE3$_0EEvOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i.i, %._crit_edge, %bb.i
  %i.av = load ptr, ptr %8, align 8, !tbaa !18    ; 3 uses
  %i.aw = load i32, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %.not4.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE13destroy_rangeEPS2_S4_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %"_ZN4llvm4sortIRNS_11SmallVectorINS1_IlLj6EEELj1EEEZL21getSgLayoutCandidatesNS_8ArrayRefIlEES6_lE3$_0EEvOT_T0_.exit"
  %i.ax = zext i32 %i.aw to i64
  %.idx.i28 = shl nuw nsw i64 %i.ax, 6
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx.i28
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.az, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i ], [ %i.ay, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.05.i.i, i64 -64 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !18 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.05.i.i, i64 -48
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  call void @free(ptr noundef %i.ba) #20
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i:        ; preds = %bb.j, %.lr.ph.i.i
  %.not.i.i29 = icmp eq ptr %i.av, %i.az
  br i1 %.not.i.i29, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i: ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE13destroy_rangeEPS2_S4_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE13destroy_rangeEPS2_S4_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i, %"_ZN4llvm4sortIRNS_11SmallVectorINS1_IlLj6EEELj1EEEZL21getSgLayoutCandidatesNS_8ArrayRefIlEES6_lE3$_0EEvOT_T0_.exit"
  %i.bd = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i ], [ %i.av, %"_ZN4llvm4sortIRNS_11SmallVectorINS1_IlLj6EEELj1EEEZL21getSgLayoutCandidatesNS_8ArrayRefIlEES6_lE3$_0EEvOT_T0_.exit" ] ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.d
  br i1 %i.be, label %_ZN4llvm11SmallVectorINS0_IlLj6EEELj1EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE13destroy_rangeEPS2_S4_.exit.i
  call void @free(ptr noundef %i.bd) #20
  br label %_ZN4llvm11SmallVectorINS0_IlLj6EEELj1EED2Ev.exit

_ZN4llvm11SmallVectorINS0_IlLj6EEELj1EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE13destroy_rangeEPS2_S4_.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZL13buildSgLayoutPN4mlir11MLIRContextEN4llvm8ArrayRefIlEES4_iNS_6detail18DenseArrayAttrImplIiEE(ptr noundef %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, i64 %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %5 = alloca %"class.llvm::SmallVector.57", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 6, ptr %i.c, align 4, !tbaa !20
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %3, 6
  br i1 %i.e, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %i.a, i64 noundef %3, i64 noundef 8) #20
  %.pre.i.i.i = load i32, ptr %i.b, align 8, !tbaa !19
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %3, %.pre13.i.i.i
  br i1 %.not11.i.i.i, label %_ZN4llvm11SmallVectorIlLj6EEC2Em.exit, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !18
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.b
  %i.f = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.a, %bb.b ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.b ] ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %.pre-phi.i.i3.i
  %i.h = sub i64 %3, %.pre-phi.i.i3.i
  %i.i = shl i64 %i.h, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %i.i, i1 false), !tbaa !85
  br label %_ZN4llvm11SmallVectorIlLj6EEC2Em.exit

_ZN4llvm11SmallVectorIlLj6EEC2Em.exit:            ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %i.j = trunc i64 %3 to i32                      ; 2 uses
  store i32 %i.j, ptr %i.b, align 8, !tbaa !19
  %.pre31.pre = load ptr, ptr %5, align 8         ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2Em.exit
  %i.l = zext i32 %4 to i64                       ; 2 uses
  %wide.trip.count = and i64 %3, 2147483647
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.l
  br label %bb.d

._crit_edge:                                      ; preds = %bb.g, %bb.a, %_ZN4llvm11SmallVectorIlLj6EEC2Em.exit
  %i.n = phi i64 [ 0, %bb.a ], [ %3, %_ZN4llvm11SmallVectorIlLj6EEC2Em.exit ], [ %3, %bb.g ]
  %.pre37 = phi ptr [ %i.a, %bb.a ], [ %.pre31.pre, %_ZN4llvm11SmallVectorIlLj6EEC2Em.exit ], [ %.pre31.pre, %bb.g ]
  %i.o = and i64 %i.n, 4294967295
  %i.p = call fastcc ptr @_ZL11buildLayoutPN4mlir11MLIRContextEN4llvm8ArrayRefIlEES4_S4_S4_S4_NS_6detail18DenseArrayAttrImplIiEE(ptr noundef %0, ptr %2, i64 %3, ptr %.pre37, i64 %i.o, ptr null, i64 0, ptr null, i64 0, ptr null, i64 0, ptr null)
  %i.q = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.q) #20
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret ptr %i.p

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  %i.s = icmp eq i64 %indvars.iv, %i.l
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.m, align 8, !tbaa !85
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.v = load i64, ptr %i.u, align 8, !tbaa !85
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.x = load i64, ptr %i.w, align 8, !tbaa !85
  %i.y = sdiv i64 %i.v, %i.x
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i64 [ %i.t, %bb.e ], [ %i.y, %bb.f ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.pre31.pre, i64 %indvars.iv
  store i64 %.sink, ptr %i.z, align 8, !tbaa !85
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !320
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
begin_hunk_1_@_ZN4mlir5xegpu23setupLoadNdAnchorLayoutENS0_10LayoutKindENS_10VectorTypeENS0_20DistributeLayoutAttrEiPKNS0_5uArch5uArchE:bb.a
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !88 ; 2 uses
  %i.dz = icmp slt i32 %i.dw, %i.dy
  %spec.select.i.i.i63.prol = select i1 %i.dz, ptr %i.dx, ptr %.018.i.i.i62.prol ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 4 ; 2 uses
  %i.eb = call i32 @llvm.smax.i32(i32 %i.dw, i32 %i.dy) ; 2 uses
  %prol.iter203.next = add i64 %prol.iter203, 1   ; 2 uses
  %prol.iter203.cmp.not = icmp eq i64 %prol.iter203.next, %xtraiter201
  br i1 %prol.iter203.cmp.not, label %.lr.ph.i.i.i61.prol.loopexit, label %.lr.ph.i.i.i61.prol, !llvm.loop !343

.lr.ph.i.i.i61.prol.loopexit:                     ; preds = %.lr.ph.i.i.i61.prol, %.lr.ph.preheader.i.i.i59
  %spec.select.i.i.i63.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader.i.i.i59 ], [ %spec.select.i.i.i63.prol, %.lr.ph.i.i.i61.prol ]
  %.unr204 = phi i32 [ %.pre.i.i.i60, %.lr.ph.preheader.i.i.i59 ], [ %i.eb, %.lr.ph.i.i.i61.prol ]
  %.unr205 = phi ptr [ %i.ds, %.lr.ph.preheader.i.i.i59 ], [ %i.ea, %.lr.ph.i.i.i61.prol ]
  %.018.i.i.i62.unr = phi ptr [ %.sroa.7.0.copyload, %.lr.ph.preheader.i.i.i59 ], [ %spec.select.i.i.i63.prol, %.lr.ph.i.i.i61.prol ]
  %i.ec = icmp ult i64 %i.dt, 12
  br i1 %i.ec, label %_ZN4llvm11max_elementIRNS_8ArrayRefIiEEEEDaOT_.exit66, label %.lr.ph.i.i.i61

.lr.ph.i.i.i61:                                   ; preds = %.lr.ph.i.i.i61.prol.loopexit, %.lr.ph.i.i.i61
  %i.ed = phi i32 [ %i.eu, %.lr.ph.i.i.i61 ], [ %.unr204, %.lr.ph.i.i.i61.prol.loopexit ] ; 2 uses
  %i.ee = phi ptr [ %i.et, %.lr.ph.i.i.i61 ], [ %.unr205, %.lr.ph.i.i.i61.prol.loopexit ] ; 6 uses
  %.018.i.i.i62 = phi ptr [ %spec.select.i.i.i63.3, %.lr.ph.i.i.i61 ], [ %.018.i.i.i62.unr, %.lr.ph.i.i.i61.prol.loopexit ]
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !88 ; 2 uses
  %i.eg = icmp slt i32 %i.ed, %i.ef
  %spec.select.i.i.i63 = select i1 %i.eg, ptr %i.ee, ptr %.018.i.i.i62
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 4 ; 2 uses
  %i.ei = call i32 @llvm.smax.i32(i32 %i.ed, i32 %i.ef) ; 2 uses
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !88 ; 2 uses
  %i.ek = icmp slt i32 %i.ei, %i.ej
  %spec.select.i.i.i63.1 = select i1 %i.ek, ptr %i.eh, ptr %spec.select.i.i.i63
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %i.em = call i32 @llvm.smax.i32(i32 %i.ei, i32 %i.ej) ; 2 uses
  %i.en = load i32, ptr %i.el, align 4, !tbaa !88 ; 2 uses
  %i.eo = icmp slt i32 %i.em, %i.en
  %spec.select.i.i.i63.2 = select i1 %i.eo, ptr %i.el, ptr %spec.select.i.i.i63.1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ee, i64 12 ; 2 uses
  %i.eq = call i32 @llvm.smax.i32(i32 %i.em, i32 %i.en) ; 2 uses
  %i.er = load i32, ptr %i.ep, align 4, !tbaa !88 ; 2 uses
  %i.es = icmp slt i32 %i.eq, %i.er
  %spec.select.i.i.i63.3 = select i1 %i.es, ptr %i.ep, ptr %spec.select.i.i.i63.2 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 2 uses
  %.not.i.i.i64.3 = icmp eq ptr %i.et, %i.dr
  %i.eu = call i32 @llvm.smax.i32(i32 %i.eq, i32 %i.er)
  br i1 %.not.i.i.i64.3, label %_ZN4llvm11max_elementIRNS_8ArrayRefIiEEEEDaOT_.exit66, label %.lr.ph.i.i.i61, !llvm.loop !342

_ZN4llvm11max_elementIRNS_8ArrayRefIiEEEEDaOT_.exit66: ; preds = %.lr.ph.i.i.i61.prol.loopexit, %.lr.ph.i.i.i61, %_ZN4llvm11max_elementIRNS_8ArrayRefIiEEEEDaOT_.exit
  %.011.i.i.i65 = phi ptr [ %.sroa.7.0.copyload, %_ZN4llvm11max_elementIRNS_8ArrayRefIiEEEEDaOT_.exit ], [ %spec.select.i.i.i63.lcssa.unr, %.lr.ph.i.i.i61.prol.loopexit ], [ %spec.select.i.i.i63.3, %.lr.ph.i.i.i61 ]
  %i.ev = load i32, ptr %.011.i.i.i65, align 4, !tbaa !88
  %i.ew = trunc i64 %i.cl to i32                  ; 7 uses
  %i.ex = lshr i64 %.sroa.9.0.copyload, 2         ; 2 uses
  %.not.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i67

.lr.ph.i.i.i.i67:                                 ; preds = %_ZN4llvm11max_elementIRNS_8ArrayRefIiEEEEDaOT_.exit66
  %i.ey = and i64 %.idx.i57, 9223372036854775792
  %scevgep.i.i.i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ey
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph.i.i.i.i67
  %.047.i.i.i.i = phi i64 [ %i.ex, %.lr.ph.i.i.i.i67 ], [ %i.fl, %bb.q ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %.sroa.7.0.copyload, %.lr.ph.i.i.i.i67 ], [ %i.fk, %bb.q ] ; 9 uses
  %i.ez = load i32, ptr %.02946.i.i.i.i, align 4, !tbaa !88
  %i.fa = icmp eq i32 %i.ez, %i.ew
  br i1 %i.fa, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fb = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !88
  %i.fd = icmp eq i32 %i.fc, %i.ew
  br i1 %i.fd, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fe = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !88
  %i.fg = icmp eq i32 %i.ff, %i.ew
  br i1 %i.fg, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit166, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fh = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 12
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !88
  %i.fj = icmp eq i32 %i.fi, %i.ew
  br i1 %i.fj, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit168, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fk = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.fl = add nsw i64 %.047.i.i.i.i, -1
  %i.fm = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.fm, label %bb.m, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !344

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.q
  %i.fn = and i64 %.sroa.9.0.copyload, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN4llvm11max_elementIRNS_8ArrayRefIiEEEEDaOT_.exit66
  %.pre-phi56.i.i.i.i = phi i64 [ %i.fn, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.9.0.copyload, %_ZN4llvm11max_elementIRNS_8ArrayRefIiEEEEDaOT_.exit66 ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.7.0.copyload, %_ZN4llvm11max_elementIRNS_8ArrayRefIiEEEEDaOT_.exit66 ] ; 5 uses
  switch i64 %.pre-phi56.i.i.i.i, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.thread [
    i64 3, label %bb.r
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i.i
  %i.fo = load i32, ptr %.029.lcssa.i.i.i.i, align 4, !tbaa !88
  %i.fp = icmp eq i32 %i.fo, %i.ew
  br i1 %i.fp, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fq = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.s
  %.1.i.i.i.i = phi ptr [ %i.fq, %bb.s ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.fr = load i32, ptr %.1.i.i.i.i, align 4, !tbaa !88
  %i.fs = icmp eq i32 %i.fr, %i.ew
  br i1 %i.fs, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.t
  %.2.i.i.i.i = phi ptr [ %i.ft, %bb.t ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.fu = load i32, ptr %.2.i.i.i.i, align 4, !tbaa !88
  %i.fv = icmp eq i32 %i.fu, %i.ew
  br i1 %i.fv, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.thread

_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.n
  %i.fw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  br label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit166: ; preds = %bb.o
  %i.fx = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit168: ; preds = %bb.p
  %i.fy = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 12
  br label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit: ; preds = %bb.m, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit166, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit168, %bb.r, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.r ], [ %.2.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %i.fy, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit168 ], [ %i.fx, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit166 ], [ %i.fw, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i, %bb.m ]
  %.not120 = icmp eq ptr %.028.i.i.i.i, %i.dr
  br i1 %.not120, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.thread, label %.critedge

bb.u:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit ] ; 2 uses
  %i.fz = load ptr, ptr %10, align 8, !tbaa !18
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !85 ; 2 uses
  %i.gc = icmp sgt i64 %i.gb, 1
  br i1 %i.gc, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.gb, i64 %i.cf) ; 2 uses
  %i.gd = load i32, ptr %i.cc, align 8, !tbaa !19 ; 2 uses
  %i.ge = load i32, ptr %i.cd, align 4, !tbaa !20
  %.not.i68 = icmp ult i32 %i.gd, %i.ge
  br i1 %.not.i68, label %bb.x, label %bb.w, !prof !24

bb.w:                                             ; preds = %bb.v
  call void @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 noundef %.sroa.speculated)
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

bb.x:                                             ; preds = %bb.v
  %i.gf = zext i32 %i.gd to i64
  %i.gg = load ptr, ptr %13, align 8, !tbaa !18
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gf
  store i64 %.sroa.speculated, ptr %i.gh, align 1
  %i.gi = load i32, ptr %i.cc, align 8, !tbaa !19
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr %i.cc, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

bb.y:                                             ; preds = %bb.u
  %i.gk = load i32, ptr %i.cc, align 8, !tbaa !19 ; 2 uses
  %i.gl = load i32, ptr %i.cd, align 4, !tbaa !20
  %.not.i69 = icmp ult i32 %i.gk, %i.gl
  br i1 %.not.i69, label %bb.aa, label %bb.z, !prof !24

bb.z:                                             ; preds = %bb.y
  call void @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 noundef 1)
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

bb.aa:                                            ; preds = %bb.y
  %i.gm = zext i32 %i.gk to i64
  %i.gn = load ptr, ptr %13, align 8, !tbaa !18
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.gm
  store i64 1, ptr %i.go, align 1
  %i.gp = load i32, ptr %i.cc, align 8, !tbaa !19
  %i.gq = add i32 %i.gp, 1
  store i32 %i.gq, ptr %i.cc, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit: ; preds = %bb.aa, %bb.z, %bb.x, %bb.w
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.u, !llvm.loop !345

_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.thread: ; preds = %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge.i.i.i.i, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit
  %i.gr = sext i32 %i.ev to i64                   ; 2 uses
  %i.gs = srem i64 %i.cl, %i.gr
  %i.gt = sdiv i64 %i.cl, %i.gr
  %i.gu = icmp eq i64 %i.gs, 0
  %i.gv = sext i32 %i.dq to i64
  %i.gw = icmp slt i64 %i.gt, %i.gv
  %or.cond = select i1 %i.gu, i1 %i.gw, i1 false
  br i1 %or.cond, label %.critedge, label %.critedge2

.critedge:                                        ; preds = %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.thread, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit
  %i.gx = trunc i64 %i.ci to i32                  ; 7 uses
  %.idx4.i71 = shl nuw nsw i64 %.sroa.6.0.copyload, 2 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 %.idx4.i71
  %i.gz = lshr i64 %.sroa.6.0.copyload, 2         ; 2 uses
  %.not.i72 = icmp eq i64 %i.gz, 0
  br i1 %.not.i72, label %._crit_edge.i.i.i.i78, label %.lr.ph.i.i.i.i73

.lr.ph.i.i.i.i73:                                 ; preds = %.critedge
  %i.ha = and i64 %.idx4.i71, 9223372036854775792
  %scevgep.i.i.i.i74 = getelementptr i8, ptr %.sroa.5.0.copyload, i64 %i.ha
  br label %bb.ab

bb.ab:                                            ; preds = %bb.af, %.lr.ph.i.i.i.i73
  %.047.i.i.i.i75 = phi i64 [ %i.gz, %.lr.ph.i.i.i.i73 ], [ %i.hn, %bb.af ] ; 2 uses
  %.02946.i.i.i.i76 = phi ptr [ %.sroa.5.0.copyload, %.lr.ph.i.i.i.i73 ], [ %i.hm, %bb.af ] ; 9 uses
  %i.hb = load i32, ptr %.02946.i.i.i.i76, align 4, !tbaa !88
  %i.hc = icmp eq i32 %i.hb, %i.gx
  br i1 %i.hc, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit91, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i76, i64 4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !88
  %i.hf = icmp eq i32 %i.he, %i.gx
  br i1 %i.hf, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit91.loopexit.split.loop.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hg = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i76, i64 8
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !88
  %i.hi = icmp eq i32 %i.hh, %i.gx
  br i1 %i.hi, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit91.loopexit.split.loop.exit174, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i76, i64 12
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !88
  %i.hl = icmp eq i32 %i.hk, %i.gx
  br i1 %i.hl, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit91.loopexit.split.loop.exit176, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hm = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i76, i64 16
  %i.hn = add nsw i64 %.047.i.i.i.i75, -1
  %i.ho = icmp sgt i64 %.047.i.i.i.i75, 1
  br i1 %i.ho, label %bb.ab, label %._crit_edge.loopexit.i.i.i.i77, !llvm.loop !344

._crit_edge.loopexit.i.i.i.i77:                   ; preds = %bb.af
  %i.hp = and i64 %.sroa.6.0.copyload, 3
  br label %._crit_edge.i.i.i.i78

._crit_edge.i.i.i.i78:                            ; preds = %._crit_edge.loopexit.i.i.i.i77, %.critedge
  %.pre-phi56.i.i.i.i79 = phi i64 [ %i.hp, %._crit_edge.loopexit.i.i.i.i77 ], [ %.sroa.6.0.copyload, %.critedge ]
  %.029.lcssa.i.i.i.i80 = phi ptr [ %scevgep.i.i.i.i74, %._crit_edge.loopexit.i.i.i.i77 ], [ %.sroa.5.0.copyload, %.critedge ] ; 5 uses
  switch i64 %.pre-phi56.i.i.i.i79, label %.critedge2 [
    i64 3, label %bb.ag
    i64 2, label %._crit_edge._crit_edge.i.i.i.i85
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i81
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i78
  %i.hq = load i32, ptr %.029.lcssa.i.i.i.i80, align 4, !tbaa !88
  %i.hr = icmp eq i32 %i.hq, %i.gx
  br i1 %i.hr, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit91, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hs = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i80, i64 4
  br label %._crit_edge._crit_edge.i.i.i.i85

._crit_edge._crit_edge.i.i.i.i85:                 ; preds = %._crit_edge.i.i.i.i78, %bb.ah
  %.1.i.i.i.i87 = phi ptr [ %i.hs, %bb.ah ], [ %.029.lcssa.i.i.i.i80, %._crit_edge.i.i.i.i78 ] ; 3 uses
  %i.ht = load i32, ptr %.1.i.i.i.i87, align 4, !tbaa !88
  %i.hu = icmp eq i32 %i.ht, %i.gx
  br i1 %i.hu, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit91, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i85
  %i.hv = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i87, i64 4
  br label %._crit_edge._crit_edge52.i.i.i.i81

._crit_edge._crit_edge52.i.i.i.i81:               ; preds = %._crit_edge.i.i.i.i78, %bb.ai
  %.2.i.i.i.i83 = phi ptr [ %i.hv, %bb.ai ], [ %.029.lcssa.i.i.i.i80, %._crit_edge.i.i.i.i78 ] ; 2 uses
  %i.hw = load i32, ptr %.2.i.i.i.i83, align 4, !tbaa !88
  %i.hx = icmp eq i32 %i.hw, %i.gx
  br i1 %i.hx, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit91, label %.critedge2

_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit91.loopexit.split.loop.exit: ; preds = %bb.ac
  %i.hy = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i76, i64 4
  br label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit91

_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit91.loopexit.split.loop.exit174: ; preds = %bb.ad
  %i.hz = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i76, i64 8
  br label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit91

_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit91.loopexit.split.loop.exit176: ; preds = %bb.ae
  %i.ia = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i76, i64 12
  br label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit91

_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit91: ; preds = %bb.ab, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit91.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit91.loopexit.split.loop.exit174, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit91.loopexit.split.loop.exit176, %bb.ag, %._crit_edge._crit_edge.i.i.i.i85, %._crit_edge._crit_edge52.i.i.i.i81
  %.028.i.i.i.i84 = phi ptr [ %.1.i.i.i.i87, %._crit_edge._crit_edge.i.i.i.i85 ], [ %.029.lcssa.i.i.i.i80, %bb.ag ], [ %.2.i.i.i.i83, %._crit_edge._crit_edge52.i.i.i.i81 ], [ %i.ia, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit91.loopexit.split.loop.exit176 ], [ %i.hz, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit91.loopexit.split.loop.exit174 ], [ %i.hy, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit91.loopexit.split.loop.exit ], [ %.02946.i.i.i.i76, %bb.ab ]
  %.not121 = icmp eq ptr %.028.i.i.i.i84, %i.gy
  br i1 %.not121, label %.critedge2, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit91
  %i.ib = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !19
  %i.id = zext i32 %i.ic to i64
  %i.ie = load ptr, ptr %13, align 8, !tbaa !18
  %i.if = load i32, ptr %i.cc, align 8, !tbaa !19
  %i.ig = zext i32 %i.if to i64
  %i.ih = load ptr, ptr %11, align 8, !tbaa !18
  %i.ii = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !19
  %i.ik = zext i32 %i.ij to i64
  %i.il = call fastcc ptr @_ZL27buildInstDataLayoutWithLanePN4mlir11MLIRContextEN4llvm8ArrayRefIlEES4_S4_NS_6detail18DenseArrayAttrImplIiEE(ptr noundef %i.c, ptr %i.cg, i64 %i.id, ptr %i.ie, i64 %i.ig, ptr %i.ih, i64 %i.ik, ptr %i.ba)
  call void @_ZN4mlir5xegpu20DistributeLayoutAttrCI2NS_6detail9InterfaceIS1_NS_9AttributeENS0_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEEEINS0_10LayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS3_IS1_S4_S6_S4_S8_E5TraitIT_EESD_EE5valueEvE4typeELPv0EEESD_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.il)
  br label %bb.ar

.critedge2:                                       ; preds = %._crit_edge._crit_edge52.i.i.i.i81, %._crit_edge.i.i.i.i78, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.thread, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit91
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call fastcc void @_ZL26get2DBlockIOInstDataLayoutN4llvm8ArrayRefIlEEN4mlir4TypeEPKNS2_5xegpu5uArch27BlockIOInstructionInterfaceEbb(ptr dead_on_unwind noalias writable align 8 %14, ptr %i.j, i64 %i.k, ptr %i.d, ptr noundef %i.aw, i1 noundef zeroext %i.bu, i1 noundef zeroext %i.bt)
  %i.im = load ptr, ptr %14, align 8, !tbaa !18
  %i.in = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.io = load i32, ptr %i.in, align 8, !tbaa !19
  %i.ip = zext i32 %i.io to i64
  %i.iq = load ptr, ptr %13, align 8, !tbaa !18
  %i.ir = load i32, ptr %i.cc, align 8, !tbaa !19
  %i.is = zext i32 %i.ir to i64
  %i.it = load ptr, ptr %11, align 8, !tbaa !18
  %i.iu = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !19
  %i.iw = zext i32 %i.iv to i64
  %i.ix = call fastcc ptr @_ZL27buildInstDataLayoutWithLanePN4mlir11MLIRContextEN4llvm8ArrayRefIlEES4_S4_NS_6detail18DenseArrayAttrImplIiEE(ptr noundef %i.c, ptr %i.im, i64 %i.ip, ptr %i.iq, i64 %i.is, ptr %i.it, i64 %i.iw, ptr %i.ba) ; 3 uses
  %.cast.i.i.i = ptrtoint ptr %i.ix to i64
  store i64 %.cast.i.i.i, ptr %6, align 8, !tbaa !22
  %.not.i.i.i92 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i92, label %_ZN4mlir5xegpu20DistributeLayoutAttrCI2NS_6detail9InterfaceIS1_NS_9AttributeENS0_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEEEINS0_10LayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS3_IS1_S4_S6_S4_S8_E5TraitIT_EESD_EE5valueEvE4typeELPv0EEESD_.exit, label %bb.ak

bb.ak:                                            ; preds = %.critedge2
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !56 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id acquire, align 8
  %i.jb = icmp eq i8 %i.ja, 0
  br i1 %i.jb, label %bb.al, label %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, !prof !57

bb.al:                                            ; preds = %bb.ak
  %i.jc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.jc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jd = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 49), i64 33) #20
  store ptr %i.jd, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i: ; preds = %bb.am, %bb.al, %bb.ak
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id, align 8, !tbaa !53 ; 2 uses
  %i.je = load ptr, ptr %i.iz, align 8, !tbaa !18 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.jg, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %i.jh = zext i32 %i.jg to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jh, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.je, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ji = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i, 1   ; 3 uses
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i, i64 %i.ji ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.jj, align 8, !tbaa !53
  %i.jk = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jm = xor i64 %i.ji, -1
  %i.jn = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i, %i.jm
  %.112.i.i.i.i.i.i.i.i.i.i = select i1 %i.jk, ptr %i.jl, ptr %.01116.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i = select i1 %i.jk, i64 %i.jn, i64 %i.ji ; 2 uses
  %i.jo = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.jo, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %i.jh, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.je, %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.jp = getelementptr inbounds nuw [16 x i8], ptr %i.je, i64 %.pre-phi.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, %i.jp
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4mlir5xegpu20DistributeLayoutAttrCI2NS_6detail9InterfaceIS1_NS_9AttributeENS0_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEEEINS0_10LayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS3_IS1_S4_S6_S4_S8_E5TraitIT_EESD_EE5valueEvE4typeELPv0EEESD_.exit, label %bb.an

bb.an:                                            ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i
  %i.jq = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !60
  %i.jr = icmp eq ptr %i.jq, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.jr, label %bb.ao, label %_ZN4mlir5xegpu20DistributeLayoutAttrCI2NS_6detail9InterfaceIS1_NS_9AttributeENS0_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEEEINS0_10LayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS3_IS1_S4_S6_S4_S8_E5TraitIT_EESD_EE5valueEvE4typeELPv0EEESD_.exit

bb.ao:                                            ; preds = %bb.an
  %i.js = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !62
end_hunk_1
begin_hunk_2_@_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE9push_backERKS2_:bb.a
  br i1 %or.cond.i, label %_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE28reserveForParamAndGetAddressERKS2_m.exit
  %i.y = icmp ugt i32 %i.w, 6
  br i1 %i.y, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i:           ; preds = %bb.d
  %i.z = zext i32 %i.w to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull %i.s, i64 noundef %i.z, i64 noundef 8) #20
  %.pre.i = load i32, ptr %i.v, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i
  %.pre5 = load ptr, ptr %i.r, align 8, !tbaa !18
  br label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i:    ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge, %bb.d
  %i.aa = phi ptr [ %.pre5, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge ], [ %i.s, %bb.d ]
  %i.ab = phi i32 [ %.pre.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge ], [ %i.w, %bb.d ]
  %i.ac = zext i32 %i.ab to i64
  %i.ad = load ptr, ptr %.016.i.i, align 8, !tbaa !18
  %gepdiff.i.i = shl nuw nsw i64 %i.ac, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 8 %i.ad, i64 %gepdiff.i.i, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i
  store i32 %i.w, ptr %i.t, align 8, !tbaa !19
  br label %_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit

_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit:        ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE28reserveForParamAndGetAddressERKS2_m.exit, %.sink.split.i.i
  %i.ae = load i32, ptr %i.a, align 8, !tbaa !19
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.a, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvllEZL23enumerateFactorizationsllE3$_0E9_M_invokeERKSt9_Any_dataOlS6_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.57", align 8 ; 15 uses
  %4 = alloca %"class.llvm::SmallVector.57", align 8 ; 13 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !67    ; 5 uses
  %.val3 = load i64, ptr %1, align 8, !tbaa !85   ; 4 uses
  %.val4 = load i64, ptr %2, align 8, !tbaa !85   ; 6 uses
  %i.c = load ptr, ptr %.val, align 8, !tbaa !439, !nonnull !113, !align !440
  %i.d = load i64, ptr %i.c, align 8, !tbaa !85
  %i.e = add nsw i64 %i.d, -1
  %i.f = icmp eq i64 %.val3, %i.e
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !441, !nonnull !113, !align !440 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.val3
  store i64 %.val4, ptr %i.j, align 8, !tbaa !85
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !442, !nonnull !113, !align !440 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.n, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 6, ptr %i.o, align 4, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !19   ; 5 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.q, 0
  %i.r = icmp eq ptr %3, %i.h
  %or.cond.i.i.i.i = or i1 %i.r, %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ugt i32 %i.q, 6
  br i1 %i.s, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i:     ; preds = %bb.c
  %i.t = zext i32 %i.q to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.m, i64 noundef %i.t, i64 noundef 8) #20
  %.pre.i.i.i.i = load i32, ptr %i.p, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i
  %.pre26.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  %.pre27.i.i.i = load ptr, ptr %3, align 8, !tbaa !18
  br label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i, %bb.c
  %i.u = phi ptr [ %.pre27.i.i.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.m, %bb.c ]
  %i.v = phi ptr [ %.pre26.i.i.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.i, %bb.c ]
  %i.w = phi i32 [ %.pre.i.i.i.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.q, %bb.c ]
  %i.x = zext i32 %i.w to i64
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %i.x, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 8 %i.v, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i.i.i.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i
  store i32 %i.q, ptr %i.n, align 8, !tbaa !19
  br label %_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit.i.i.i

_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit.i.i.i:  ; preds = %.sink.split.i.i.i.i.i, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !19   ; 2 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !20
  %.not.i.i.not.i.i.i.i = icmp ult i32 %i.z, %i.ad
  %.pre4.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !18 ; 4 uses
  br i1 %.not.i.i.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i, label %bb.d, !prof !24

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit.i.i.i
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %.pre4.i.i.i.i, i64 %i.aa
  %i.af = icmp uge ptr %3, %.pre4.i.i.i.i
  %i.ag = icmp ult ptr %3, %i.ae
  %spec.select.i.i.i.i.i.i.i.i = and i1 %i.af, %i.ag
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.e, label %.critedge.i.i.i.i.i.i, !prof !25

bb.e:                                             ; preds = %bb.d
  %i.ah = ptrtoint ptr %3 to i64
  %i.ai = ptrtoint ptr %.pre4.i.i.i.i to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 noundef %i.ab)
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !18  ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.aj
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 noundef %i.ab)
  %.pre.i16.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i: ; preds = %.critedge.i.i.i.i.i.i, %bb.e, %_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit.i.i.i
  %i.am = phi ptr [ %.pre4.i.i.i.i, %_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit.i.i.i ], [ %i.ak, %bb.e ], [ %.pre.i16.i.i.i, %.critedge.i.i.i.i.i.i ]
  %.016.i.i.i.i.i.i = phi ptr [ %3, %_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit.i.i.i ], [ %i.al, %bb.e ], [ %3, %.critedge.i.i.i.i.i.i ] ; 2 uses
  %i.an = load i32, ptr %i.y, align 8, !tbaa !19
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [64 x i8], ptr %i.am, i64 %i.ao ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 0, ptr %i.ar, align 8, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 6, ptr %i.as, align 4, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !19
  %.not.i.i3.i.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i3.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE9push_backEOS2_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i
  %i.av = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIlEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %.016.i.i.i.i.i.i) ; 0 uses
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE9push_backEOS2_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE9push_backEOS2_.exit.i.i.i: ; preds = %bb.f, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i
  %i.aw = load i32, ptr %i.y, align 8, !tbaa !19
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.y, align 8, !tbaa !19
  %i.ay = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.m
  br i1 %i.az, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE9push_backEOS2_.exit.i.i.i
  call void @free(ptr noundef %i.ay) #20
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i.i:      ; preds = %bb.g, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE9push_backEOS2_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %"_ZSt10__invoke_rIvRZL23enumerateFactorizationsllE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES3_E4typeEOS4_DpOS5_.exit"

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ba, ptr %4, align 8, !tbaa !18, !alias.scope !443
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !19, !alias.scope !443
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  store i32 6, ptr %i.bc, align 4, !tbaa !20, !alias.scope !443
  %.not1.i.i.i.i = icmp slt i64 %.val4, 1
  br i1 %.not1.i.i.i.i, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit19.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit16.i.i.i.i
  %.pre.i17.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !19, !alias.scope !443 ; 3 uses
  %i.bd = icmp ult i32 %.pre.i17.i.i.i, 2
  %.pre23.i.i.i = load ptr, ptr %4, align 8, !tbaa !18 ; 2 uses
  br i1 %i.bd, label %"_ZZL23enumerateFactorizationsllENK3$_1clEl.exit.i.i.i", label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.be = zext i32 %.pre.i17.i.i.i to i64
  call void @qsort(ptr noundef nonnull %.pre23.i.i.i, i64 noundef %i.be, i64 noundef 8, ptr noundef nonnull @_ZN4llvm25array_pod_sort_comparatorIlEEiPKvS2_) #20
  %.pre.i.i.i = load ptr, ptr %4, align 8, !tbaa !18
  %.pre24.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !19
  br label %"_ZZL23enumerateFactorizationsllENK3$_1clEl.exit.i.i.i"

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit16.i.i.i.i
  %.02.i.i.i.i = phi i64 [ %i.bw, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit16.i.i.i.i ], [ 1, %bb.h ] ; 6 uses
  %i.bf = urem i64 %.val4, %.02.i.i.i.i
  %i.bg = udiv i64 %.val4, %.02.i.i.i.i           ; 3 uses
  %i.bh = icmp eq i64 %i.bf, 0
  br i1 %i.bh, label %bb.j, label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit16.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bi = load i32, ptr %i.bb, align 8, !tbaa !19, !alias.scope !443 ; 2 uses
  %i.bj = load i32, ptr %i.bc, align 4, !tbaa !20, !alias.scope !443
  %.not.i.i18.i.i.i = icmp ult i32 %i.bi, %i.bj
  br i1 %.not.i.i18.i.i.i, label %bb.l, label %bb.k, !prof !24

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %.02.i.i.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bk = zext i32 %i.bi to i64
  %i.bl = load ptr, ptr %4, align 8, !tbaa !18, !alias.scope !443
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bk
  store i64 %.02.i.i.i.i, ptr %i.bm, align 1
  %i.bn = load i32, ptr %i.bb, align 8, !tbaa !19, !alias.scope !443
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bb, align 8, !tbaa !19, !alias.scope !443
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.not14.i.i.i.i = icmp eq i64 %.02.i.i.i.i, %i.bg
  br i1 %.not14.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit16.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.i.i.i.i
  %i.bp = load i32, ptr %i.bb, align 8, !tbaa !19, !alias.scope !443 ; 2 uses
  %i.bq = load i32, ptr %i.bc, align 4, !tbaa !20, !alias.scope !443
  %.not.i15.i.i.i.i = icmp ult i32 %i.bp, %i.bq
  br i1 %.not.i15.i.i.i.i, label %bb.o, label %bb.n, !prof !24

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.bg)
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit16.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.br = zext i32 %i.bp to i64
  %i.bs = load ptr, ptr %4, align 8, !tbaa !18, !alias.scope !443
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  store i64 %i.bg, ptr %i.bt, align 1
  %i.bu = load i32, ptr %i.bb, align 8, !tbaa !19, !alias.scope !443
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bb, align 8, !tbaa !19, !alias.scope !443
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit16.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit16.i.i.i.i: ; preds = %bb.o, %bb.n, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bw = add nuw nsw i64 %.02.i.i.i.i, 1         ; 3 uses
  %i.bx = mul nuw nsw i64 %i.bw, %i.bw
  %.not.i.i.i.i = icmp sgt i64 %i.bx, %.val4
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !436

"_ZZL23enumerateFactorizationsllENK3$_1clEl.exit.i.i.i": ; preds = %bb.i, %._crit_edge.i.i.i.i
  %i.by = phi i32 [ %.pre24.i.i.i, %bb.i ], [ %.pre.i17.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bz = phi ptr [ %.pre.i.i.i, %bb.i ], [ %.pre23.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ca = zext i32 %i.by to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ca, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx.i.i.i
  %.not21.i.i.i = icmp eq i32 %i.by, 0
  br i1 %.not21.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZZL23enumerateFactorizationsllENK3$_1clEl.exit.i.i.i"
  %i.cc = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ce = add nsw i64 %.val3, 1
  br label %bb.q

._crit_edge.loopexit.i.i.i:                       ; preds = %_ZNKSt8functionIFvllEEclEll.exit.i.i.i
  %.pre25.i.i.i = load ptr, ptr %4, align 8, !tbaa !18
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %"_ZZL23enumerateFactorizationsllENK3$_1clEl.exit.i.i.i"
  %i.cf = phi ptr [ %.pre25.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bz, %"_ZZL23enumerateFactorizationsllENK3$_1clEl.exit.i.i.i" ] ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ba
  br i1 %i.cg, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit19.i.i.i, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i.i.i
  call void @free(ptr noundef %i.cf) #20
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit19.i.i.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit19.i.i.i:    ; preds = %bb.p, %._crit_edge.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %"_ZSt10__invoke_rIvRZL23enumerateFactorizationsllE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES3_E4typeEOS4_DpOS5_.exit"

bb.q:                                             ; preds = %_ZNKSt8functionIFvllEEclEll.exit.i.i.i, %.lr.ph.i.i.i
  %.022.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i ], [ %i.cr, %_ZNKSt8functionIFvllEEclEll.exit.i.i.i ] ; 2 uses
  %i.ch = load i64, ptr %.022.i.i.i, align 8, !tbaa !85 ; 2 uses
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !441, !nonnull !113, !align !440
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.val3
  store i64 %i.ch, ptr %i.ck, align 8, !tbaa !85
  %i.cl = load ptr, ptr %i.cd, align 8, !tbaa !444, !nonnull !113, !align !440 ; 3 uses
  %i.cm = sdiv i64 %.val4, %i.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ce, ptr %i.a, align 8, !tbaa !85
  store i64 %i.cm, ptr %i.b, align 8, !tbaa !85
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !135
  %.not.i.i20.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i20.i.i.i, label %bb.r, label %_ZNKSt8functionIFvllEEclEll.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  call void @_ZSt25__throw_bad_function_callv() #24
  unreachable

_ZNKSt8functionIFvllEEclEll.exit.i.i.i:           ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !134
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20, !inline_history !437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cr = getelementptr inbounds nuw i8, ptr %.022.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cr, %i.cb
  br i1 %.not.i.i.i, label %._crit_edge.loopexit.i.i.i, label %bb.q

"_ZSt10__invoke_rIvRZL23enumerateFactorizationsllE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES3_E4typeEOS4_DpOS5_.exit": ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i.i, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit19.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvllEZL23enumerateFactorizationsllE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZL23enumerateFactorizationsllE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !67
  store ptr %.val, ptr %0, align 8, !tbaa !67
  br label %"_ZNSt14_Function_base13_Base_managerIZL23enumerateFactorizationsllE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !446
  br label %"_ZNSt14_Function_base13_Base_managerIZL23enumerateFactorizationsllE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val5, i64 40, i1 false), !tbaa.struct !447
  store ptr %i.a, ptr %0, align 8, !tbaa !67
  br label %"_ZNSt14_Function_base13_Base_managerIZL23enumerateFactorizationsllE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !67 ; 2 uses
  %i.b = icmp eq ptr %.val6.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZL23enumerateFactorizationsllE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 40) #21
  br label %"_ZNSt14_Function_base13_Base_managerIZL23enumerateFactorizationsllE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZL23enumerateFactorizationsllE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = shl nuw nsw i64 %i.g, 6
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj6EEELb0EE19moveElementsForGrowEPS2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt10_ConstructIN4llvm11SmallVectorIlLj6EEEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN4llvm11SmallVectorIlLj6EEEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 6 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN4llvm11SmallVectorIlLj6EEEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16
  store ptr %i.i, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 12
  store i32 6, ptr %i.k, align 4, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !19
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm11SmallVectorIlLj6EEEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.n = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIlEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.04.08.i.i.i.i.i.i) ; 0 uses
  br label %_ZSt10_ConstructIN4llvm11SmallVectorIlLj6EEEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN4llvm11SmallVectorIlLj6EEEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 64
end_hunk_2
