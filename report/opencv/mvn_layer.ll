Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/mvn_layer?download=true
inline.NumInlined: 215
inline.NumDeleted: 123
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv3dnn12MVNLayerImpl13setActivationERKNS_3PtrINS0_14dnn5_v2026060515ActivationLayerEEE:bb.a

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !59, !noalias !111 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %_ZNK2cv3PtrINS_3dnn14dnn5_v2026060515ActivationLayerEE11dynamicCastINS2_9ReLULayerEEENS0_IT_EEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23, !noalias !111
  %.not.i.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !63, !noalias !111
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !63, !noalias !111
  br label %_ZNK2cv3PtrINS_3dnn14dnn5_v2026060515ActivationLayerEE11dynamicCastINS2_9ReLULayerEEENS0_IT_EEv.exit

bb.l:                                             ; preds = %bb.j
  %i.ac = atomicrmw volatile add ptr %i.y, i32 1 acq_rel, align 4, !noalias !111 ; 0 uses
  br label %_ZNK2cv3PtrINS_3dnn14dnn5_v2026060515ActivationLayerEE11dynamicCastINS2_9ReLULayerEEENS0_IT_EEv.exit

_ZNK2cv3PtrINS_3dnn14dnn5_v2026060515ActivationLayerEE11dynamicCastINS2_9ReLULayerEEENS0_IT_EEv.exit: ; preds = %bb.h, %bb.i, %bb.k, %bb.l
  %.sroa.6.0.i = phi ptr [ %i.x, %bb.k ], [ null, %bb.i ], [ %i.x, %bb.l ], [ null, %bb.h ] ; 12 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  store ptr %i.v, ptr %i.ad, align 8, !tbaa !112
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !59 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.6.0.i, %i.af
  br i1 %.not.i.i.i.i, label %_ZN2cv3PtrINS_3dnn14dnn5_v202606059ReLULayerEEaSERKS4_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK2cv3PtrINS_3dnn14dnn5_v2026060515ActivationLayerEE11dynamicCastINS2_9ReLULayerEEENS0_IT_EEv.exit
  %.not7.i.i.i.i = icmp eq ptr %.sroa.6.0.i, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i, i64 8 ; 3 uses
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i6 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i6, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !63
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !63
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ak = atomicrmw volatile add ptr %i.ag, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !59
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.p, %bb.o, %bb.m
  %i.al = phi ptr [ %i.af, %bb.m ], [ %i.af, %bb.o ], [ %.pr.pre.i.i.i.i, %bb.p ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.am, align 8, !tbaa !61
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !62
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !15
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #22, !inline_history !106
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #22, !inline_history !106
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i9.i.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i9.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.ap, %bb.t ], [ %i.az, %bb.u ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.v, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !64

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.r, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %.sroa.6.0.i, ptr %i.ae, align 8, !tbaa !59
  br label %_ZN2cv3PtrINS_3dnn14dnn5_v202606059ReLULayerEEaSERKS4_.exit

_ZN2cv3PtrINS_3dnn14dnn5_v202606059ReLULayerEEaSERKS4_.exit: ; preds = %_ZNK2cv3PtrINS_3dnn14dnn5_v2026060515ActivationLayerEE11dynamicCastINS2_9ReLULayerEEENS0_IT_EEv.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i
  %.not.i.i = icmp eq ptr %.sroa.6.0.i, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606059ReLULayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN2cv3PtrINS_3dnn14dnn5_v202606059ReLULayerEEaSERKS4_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.bb, align 8, !tbaa !61
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !62
  %i.bg = load ptr, ptr %.sroa.6.0.i, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0.i) #22, !inline_history !0
  %i.bj = load ptr, ptr %.sroa.6.0.i, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0.i) #22, !inline_history !0
  br label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606059ReLULayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = add nsw i32 %i.be, -1
  store i32 %i.bn, ptr %i.bb, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.bo = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i = phi i32 [ %i.be, %bb.z ], [ %i.bo, %bb.aa ]
  %i.bp = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bp, label %bb.ab, label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606059ReLULayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !64

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0.i) #22
  br label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606059ReLULayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606059ReLULayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN2cv3PtrINS_3dnn14dnn5_v202606059ReLULayerEEaSERKS4_.exit, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ab
  %i.bq = load ptr, ptr %i.ad, align 8, !tbaa !112 ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606059ReLULayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 156
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !115
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 608
  store float %i.bt, ptr %i.bu, align 8, !tbaa !57
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606059ReLULayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ac, %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !112
  %i.bx = icmp ne ptr %i.bw, null                 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.bz = zext i1 %i.bx to i8
  store i8 %i.bz, ptr %i.by, align 4, !tbaa !56
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.f
  %.0 = phi i1 [ %i.bx, %bb.ad ], [ %i.q, %bb.f ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer7tryFuseERNS_3PtrIS2_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer13getScaleShiftERNS_3MatES4_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer17getScaleZeropointERfRi(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #4

declare void @_ZN2cv3dnn14dnn5_v202606055Layer13unsetAttachedEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #4

declare noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606055Layer15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS4_EEiRS6_S9_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer8getTypesERKSt6vectorIiSaIiEEiiRS5_S8_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare noundef i32 @_ZNK2cv3dnn14dnn5_v202606055Layer10getLayoutsERKSt6vectorINS_10DataLayoutESaIS4_EERS6_iS9_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK2cv3dnn12MVNLayerImpl8getFLOPSERKSt6vectorINS_8MatShapeESaIS3_EES7_(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.split:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !122    ; 3 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 52
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = load i8, ptr %i.h, align 8, !range !65
  %i.j = trunc nuw i8 %i.i to i1                  ; 2 uses
  %i.k = select i1 %i.j, i32 2, i32 1             ; 2 uses
  br label %bb.a

._crit_edge:                                      ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit25.epilog-lcssa, %.split
  %.09.lcssa = phi i64 [ 0, %.split ], [ %i.bu, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit25.epilog-lcssa ]
  ret i64 %.09.lcssa

bb.a:                                             ; preds = %.lr.ph, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit25.epilog-lcssa
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit25.epilog-lcssa ] ; 2 uses
  %.0934 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit25.epilog-lcssa ]
  %i.l = getelementptr inbounds nuw [52 x i8], ptr %i.c, i64 %indvars.iv ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !68   ; 5 uses
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.m, i32 0) ; 3 uses
  %.not33.i = icmp slt i32 %i.m, 1
  br i1 %.not33.i, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 9 uses
  %i.o = zext nneg i32 %narrow.i.i to i64         ; 2 uses
  %i.p = add nsw i32 %narrow.i.i, -1
  %.not32.not.i = icmp samesign ugt i32 %i.m, %i.p
  br i1 %.not32.not.i, label %_ZNK2cv8MatShapeixEm.exit.i.preheader, label %bb.b

_ZNK2cv8MatShapeixEm.exit.i.preheader:            ; preds = %.lr.ph.i
  %xtraiter = and i64 %i.o, 7                     ; 3 uses
  %i.q = icmp slt i32 %i.m, 8
  br i1 %i.q, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.i.preheader.new

_ZNK2cv8MatShapeixEm.exit.i.preheader.new:        ; preds = %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %unroll_iter = and i64 %i.o, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %indvars.iv.next.i.7, %_ZNK2cv8MatShapeixEm.exit.i ] ; 9 uses
  %.02128.i = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %i.bd, %_ZNK2cv8MatShapeixEm.exit.i ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit.i ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !63
  %i.t = sext i32 %i.s to i64
  %i.u = mul i64 %.02128.i, %i.t
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !63
  %i.y = sext i32 %i.x to i64
  %i.z = mul i64 %i.u, %i.y
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !63
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul i64 %i.z, %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !63
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul i64 %i.ae, %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i32, ptr %i.al, align 4, !tbaa !63
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.aj, %i.an
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !63
  %i.as = sext i32 %i.ar to i64
  %i.at = mul i64 %i.ao, %i.as
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !63
  %i.ax = sext i32 %i.aw to i64
  %i.ay = mul i64 %i.at, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 28
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !63
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul i64 %i.ay, %i.bc                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !116

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.11, i32 noundef 103) #23
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !23
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.be

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.epil.preheader:       ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %indvars.iv.next.i.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ]
  %.02128.i.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %i.bd, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ]
  %lcmp.mod58 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %_ZNK2cv8MatShapeixEm.exit.i.epil

_ZNK2cv8MatShapeixEm.exit.i.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %indvars.iv.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ] ; 2 uses
  %.02128.i.epil = phi i64 [ %i.bn, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %.02128.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i.epil
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !63
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul i64 %.02128.i.epil, %i.bm           ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit, label %_ZNK2cv8MatShapeixEm.exit.i.epil, !llvm.loop !117

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit: ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa
  %.lcssa = phi i64 [ %i.bd, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ], [ %i.bn, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %i.bo = mul i64 %.lcssa, 6
  br label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit, %bb.a
  %.021.lcssa.i = phi i64 [ 6, %bb.a ], [ %i.bo, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit ]
  %.not.i = icmp slt i32 %i.m, %i.k
  br i1 %.not.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.k, i32 noundef %narrow.i.i, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEiiE15__cv_check__167) #23
  unreachable

bb.e:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit
  %5 = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %6 = load i32, ptr %5, align 4, !tbaa !63
  %7 = sext i32 %6 to i64                         ; 2 uses
  br i1 %i.j, label %_ZNK2cv8MatShapeixEm.exit.i19.epil, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit25.epilog-lcssa

_ZNK2cv8MatShapeixEm.exit.i19.epil:               ; preds = %bb.e
  %8 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bp = load i32, ptr %8, align 4, !tbaa !63
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul nsw i64 %7, %i.bq
  br label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit25.epilog-lcssa

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit25.epilog-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i19.epil, %bb.e
  %.lcssa53 = phi i64 [ %7, %bb.e ], [ %i.br, %_ZNK2cv8MatShapeixEm.exit.i19.epil ]
  %i.bs = mul i64 %.lcssa53, 3
  %i.bt = add i64 %.021.lcssa.i, %.0934
  %i.bu = add i64 %i.bt, %i.bs                    ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.a, !llvm.loop !118
}

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer18updateMemoryShapesERKSt6vectorINS_8MatShapeESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606055Layer20alwaysSupportInplaceEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #4

declare noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606055Layer19dynamicOutputShapesEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #4

declare noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606055Layer15isDataShufflingEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK2cv3dnn14dnn5_v202606055Layer9dumpAttrsERSoi(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK2cv3dnn14dnn5_v202606055Layer4dumpERSoib(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i1 noundef zeroext) unnamed_addr #4

declare void @_ZN2cv3dnn14dnn5_v202606055LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2cv3dnn14dnn5_v202606055LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(156) dereferenceable(156)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK2cv3dnn14dnn5_v202606059DictValue3getIlEET_i(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !76     ; 3 uses
  switch i32 %i.b, label %bb.c [
    i32 0, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
    i32 3, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
    i32 2, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.7, i32 noundef %i.b)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv, ptr noundef nonnull @.str.4, i32 noundef 310) #23
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %3, align 8, !tbaa !22     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.g = load i64, ptr %i.e, align 8, !tbaa !23
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30 ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %common.resume

_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit: ; preds = %bb.b, %bb.b, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.0.in.i = load i64, ptr %i.k, align 8, !tbaa !20
  %i.l = and i64 %.0.in.i, 4294967295
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.o, label %.thread

bb.f:                                             ; preds = %bb.a
  %i.n = icmp sgt i32 %1, -1
  br i1 %i.n, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %0, align 8, !tbaa !76     ; 3 uses
  switch i32 %i.o, label %bb.h [
    i32 0, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit32
    i32 3, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit32
    i32 2, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit32
  ]

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.7, i32 noundef %i.o)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv, ptr noundef nonnull @.str.4, i32 noundef 310) #23
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29: ; preds = %bb.j
  %i.t = load i64, ptr %i.r, align 8, !tbaa !23
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %common.resume

_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit32: ; preds = %bb.g, %bb.g, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !23   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.0.in.i27 = load i64, ptr %i.x, align 8, !tbaa !20
  %.0.i28 = trunc i64 %.0.in.i27 to i32
  %i.y = icmp slt i32 %1, %.0.i28
  br i1 %i.y, label %bb.o, label %.thread

.thread:                                          ; preds = %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit, %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit32, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %.thread
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv3dnn14dnn5_v202606059DictValue3getIlEET_i, ptr noundef nonnull @.str.4, i32 noundef 88) #23
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %.thread
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !23
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.z, %bb.m ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aa, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume

bb.o:                                             ; preds = %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit32, %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
  %i.ag = phi ptr [ %i.w, %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit32 ], [ %i.j, %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit ] ; 3 uses
  %i.ah = phi i32 [ %i.o, %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit32 ], [ %i.b, %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit ] ; 2 uses
  %i.ai = phi i32 [ %1, %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit32 ], [ 0, %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit ] ; 3 uses
  switch i32 %i.ah, label %bb.y [
    i32 0, label %bb.p
    i32 2, label %bb.q
    i32 3, label %bb.x
  ]

bb.p:                                             ; preds = %bb.o
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !79
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load i64, ptr %i.al, align 8, !tbaa !20
  br label %bb.ae

bb.q:                                             ; preds = %bb.o
  %i.an = zext nneg i32 %i.ai to i64
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !82
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !84 ; 2 uses
  %i.ar = tail call { double, double } @llvm.modf.f64(double %i.aq)
  %i.as = extractvalue { double, double } %i.ar, 0
  %i.at = fcmp oeq double %i.as, 0.000000e+00
  br i1 %i.at, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv3dnn14dnn5_v202606059DictValue3getIlEET_i, ptr noundef nonnull @.str.4, i32 noundef 101) #23
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.v:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.v
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !23
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %bb.u
  %.pn24 = phi { ptr, i32 } [ %i.au, %bb.u ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %i.av, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume

bb.w:                                             ; preds = %bb.q
  %i.bb = fptosi double %i.aq to i64
  br label %bb.ae

bb.x:                                             ; preds = %bb.o
  %i.bc = zext nneg i32 %i.ai to i64
  %i.bd = load ptr, ptr %i.ag, align 8, !tbaa !87
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !22
  %i.bg = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.bf, ptr noundef null, i32 noundef 10) #22, !inline_history !124
  %sext = shl i64 %i.bg, 32
  %i.bh = ashr exact i64 %sext, 32
  br label %bb.ae

bb.y:                                             ; preds = %bb.o
  %i.bi = and i32 %i.ah, -3
  %spec.select.i = icmp eq i32 %i.bi, 0
  br i1 %spec.select.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv3dnn14dnn5_v202606059DictValue3getIlEET_i, ptr noundef nonnull @.str.4, i32 noundef 111) #23
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.ad:                                            ; preds = %bb.aa
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.ad
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !23
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.ac
  %.pn22 = phi { ptr, i32 } [ %i.bj, %bb.ac ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %i.bk, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %common.resume

bb.ae:                                            ; preds = %bb.y, %bb.x, %bb.w, %bb.p
  %.018 = phi i64 [ %i.am, %bb.p ], [ %i.bb, %bb.w ], [ %i.bh, %bb.x ], [ 0, %bb.y ]
  ret i64 %.018
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.modf.f64(double) #13

declare void @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef double @_ZNK2cv3dnn14dnn5_v202606059DictValue3getIdEET_i(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !76     ; 3 uses
  switch i32 %i.b, label %bb.c [
    i32 0, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
    i32 3, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
    i32 2, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.7, i32 noundef %i.b)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv, ptr noundef nonnull @.str.4, i32 noundef 310) #23
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %3, align 8, !tbaa !22     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.g = load i64, ptr %i.e, align 8, !tbaa !23
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24 ], [ %.pn18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %common.resume

_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit: ; preds = %bb.b, %bb.b, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.0.in.i = load i64, ptr %i.k, align 8, !tbaa !20
  %i.l = and i64 %.0.in.i, 4294967295
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.o, label %.thread

bb.f:                                             ; preds = %bb.a
  %i.n = icmp sgt i32 %1, -1
  br i1 %i.n, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %0, align 8, !tbaa !76     ; 3 uses
  switch i32 %i.o, label %bb.h [
    i32 0, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit26
    i32 3, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit26
    i32 2, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit26
  ]

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.7, i32 noundef %i.o)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv, ptr noundef nonnull @.str.4, i32 noundef 310) #23
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23: ; preds = %bb.j
  %i.t = load i64, ptr %i.r, align 8, !tbaa !23
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %common.resume

_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit26: ; preds = %bb.g, %bb.g, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !23   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.0.in.i21 = load i64, ptr %i.x, align 8, !tbaa !20
  %.0.i22 = trunc i64 %.0.in.i21 to i32
  %i.y = icmp slt i32 %1, %.0.i22
  br i1 %i.y, label %bb.o, label %.thread

.thread:                                          ; preds = %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit, %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit26, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %.thread
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv3dnn14dnn5_v202606059DictValue3getIlEET_i, ptr noundef nonnull @.str.4, i32 noundef 154) #23
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %.thread
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !23
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.z, %bb.m ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aa, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume

bb.o:                                             ; preds = %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit26, %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
  %i.ag = phi ptr [ %i.w, %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit26 ], [ %i.j, %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit ] ; 3 uses
  %i.ah = phi i32 [ %i.o, %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit26 ], [ %i.b, %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit ]
  %i.ai = phi i32 [ %1, %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit26 ], [ 0, %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit ] ; 3 uses
  switch i32 %i.ah, label %bb.s [
    i32 2, label %bb.p
    i32 0, label %bb.q
    i32 3, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !82
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load double, ptr %i.al, align 8, !tbaa !84
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  %i.an = zext nneg i32 %i.ai to i64
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !79
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !20
  %i.ar = sitofp i64 %i.aq to double
  br label %bb.x

bb.r:                                             ; preds = %bb.o
  %i.as = zext nneg i32 %i.ai to i64
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !87
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %i.as
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !22
  %i.aw = tail call double @strtod(ptr noundef nonnull captures(none) %i.av, ptr noundef null) #22, !inline_history !125
  br label %bb.x

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv3dnn14dnn5_v202606059DictValue3getIlEET_i, ptr noundef nonnull @.str.4, i32 noundef 171) #23
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.w:                                             ; preds = %bb.t
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.w
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !23
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.v
  %.pn18 = phi { ptr, i32 } [ %i.ax, %bb.v ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.ay, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume

bb.x:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.014 = phi double [ %i.am, %bb.p ], [ %i.ar, %bb.q ], [ %i.aw, %bb.r ]
  ret double %.014
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !inline_history !126
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !63   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !inline_history !126
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i) #22
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 208 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !67
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit:  ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #21
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

declare void @_ZN2cv5utils5trace7details8traceArgERKNS2_8TraceArgEPKc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #4

declare void @_ZN2cv3dnn14dnn5_v202606055Layer16forward_fallbackERKNS_11_InputArrayERKNS_12_OutputArrayES8_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_trueEbRKNS0_12CheckContextE(i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #12

declare void @_ZN2cv3dnn15fastNormChannelERKNS_3MatES3_S3_RS1_f(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), float noundef) local_unnamed_addr #4

declare void @_ZN2cv3dnn8fastNormERKNS_3MatERS1_fmb(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), float noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !73
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable
}

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606059ReLULayerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !62
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !127
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !127
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !64

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN2cv3dnn12MVNLayerImplEEET_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !59
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !62
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv3dnn12MVNLayerImplELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !90
  store ptr %i.a, ptr %0, align 8, !tbaa !59
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #22 ; 0 uses
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2cv3dnn12MVNLayerImplD2Ev(ptr noundef nonnull align 8 dead_on_return(614) dereferenceable(616) %1) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 616) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  invoke void @__cxa_rethrow() #23
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.i

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #24
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn12MVNLayerImplELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn12MVNLayerImplELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 600
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN2cv3dnn12MVNLayerImplD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !62
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !1
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !1
  br label %_ZN2cv3dnn12MVNLayerImplD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZN2cv3dnn12MVNLayerImplD2Ev.exit, !prof !64

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZN2cv3dnn12MVNLayerImplD2Ev.exit

_ZN2cv3dnn12MVNLayerImplD2Ev.exit:                ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.u) #22
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.v) #22
  tail call void @_ZN2cv3dnn14dnn5_v202606055LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(162) dereferenceable(616) %i.b) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 616) #21
  br label %bb.i

bb.i:                                             ; preds = %_ZN2cv3dnn12MVNLayerImplD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn12MVNLayerImplELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN2cv3dnn12MVNLayerImplELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { nounwind }
attributes #23 = { noreturn }
attributes #24 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606059ReLULayerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1 = distinct !{ptr @_ZN2cv3dnn12MVNLayerImplD2Ev, ptr @_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606059ReLULayerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{!2, !25}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!13 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!14 = !{!"vtable pointer", !6, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 omnipotent char", !11, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"long", !7, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !19, i64 8, !7, i64 16}
!22 = !{!21, !16, i64 0}
!23 = !{!7, !7, i64 0}
!24 = !{!21, !19, i64 8}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"_ZTSN2cv9AlgorithmE"}
!27 = !{!"p1 _ZTSN2cv3MatE", !11, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!29 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE12_Vector_implE", !28, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIN2cv3MatESaIS1_EE", !29, i64 0}
!31 = !{!"_ZTSSt6vectorIN2cv3MatESaIS1_EE", !30, i64 0}
!32 = !{!"p1 _ZTSN2cv3dnn14dnn5_v202606053ArgE", !11, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!"_ZTSNSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_Vector_implE", !33, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE", !34, i64 0}
!36 = !{!"_ZTSSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE", !35, i64 0}
!37 = !{!"_ZTSN2cv3dnn14dnn5_v202606055LayerE", !26, i64 0, !31, i64 8, !36, i64 32, !36, i64 56, !11, i64 80, !21, i64 88, !21, i64 120, !8, i64 152}
!38 = !{!"float", !7, i64 0}
!39 = !{!"bool", !7, i64 0}
!40 = !{!"_ZTSN2cv3dnn14dnn5_v202606058MVNLayerE", !37, i64 0, !38, i64 156, !39, i64 160, !39, i64 161}
!41 = !{!40, !39, i64 160}
!42 = !{!40, !39, i64 161}
!43 = !{!40, !38, i64 156}
!44 = !{!"p1 _ZTSN2cv12MatAllocatorE", !11, i64 0}
!45 = !{!"p1 _ZTSN2cv8UMatDataE", !11, i64 0}
!46 = !{!"_ZTSN2cv10DataLayoutE", !7, i64 0}
!47 = !{!"_ZTSN2cv8MatShapeE", !8, i64 0, !46, i64 4, !8, i64 8, !7, i64 12}
!48 = !{!"_ZTSN2cv7MatStepE", !7, i64 0}
!49 = !{!"_ZTSN2cv3MatE", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !44, i64 56, !45, i64 64, !47, i64 72, !48, i64 128}
!50 = !{!"p1 _ZTSN2cv3dnn14dnn5_v202606059ReLULayerE", !11, i64 0}
!51 = !{!"_ZTSSt12__shared_ptrIN2cv3dnn14dnn5_v202606059ReLULayerELN9__gnu_cxx12_Lock_policyE2EE", !50, i64 0, !13, i64 8}
!52 = !{!"_ZTSSt10shared_ptrIN2cv3dnn14dnn5_v202606059ReLULayerEE", !51, i64 0}
!53 = !{!"_ZTSN2cv3PtrINS_3dnn14dnn5_v202606059ReLULayerEEE", !52, i64 0}
!54 = !{!"_ZTSN2cv3dnn12MVNLayerImplE", !40, i64 0, !49, i64 168, !49, i64 376, !39, i64 584, !53, i64 592, !38, i64 608, !39, i64 612, !39, i64 613}
!55 = !{!54, !39, i64 584}
!56 = !{!54, !39, i64 612}
!57 = !{!54, !38, i64 608}
!58 = !{!54, !39, i64 613}
!59 = !{!13, !12, i64 0}
!60 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 8, !8, i64 12}
!61 = !{!60, !8, i64 8}
!62 = !{!60, !8, i64 12}
!63 = !{!8, !8, i64 0}
!64 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!65 = !{i8 0, i8 2}
!66 = !{}
!67 = !{!28, !27, i64 0}
!68 = !{!47, !8, i64 0}
!69 = !{!28, !27, i64 8}
!70 = !{!28, !27, i64 16}
!71 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !11, i64 0}
!72 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !71, i64 0, !8, i64 8}
!73 = !{!72, !8, i64 8}
!74 = !{!"_ZTSN2cv5ParamE", !7, i64 0}
!75 = !{!"_ZTSN2cv3dnn14dnn5_v202606059DictValueE", !74, i64 0, !7, i64 8}
!76 = !{!75, !74, i64 0}
!77 = !{!"p1 long", !11, i64 0}
!78 = !{!"_ZTSN2cv10AutoBufferIlLm1EEE", !77, i64 0, !19, i64 8, !7, i64 16}
!79 = !{!78, !77, i64 0}
!80 = !{!"p1 double", !11, i64 0}
!81 = !{!"_ZTSN2cv10AutoBufferIdLm1EEE", !80, i64 0, !19, i64 8, !7, i64 16}
!82 = !{!81, !80, i64 0}
!83 = !{!"double", !7, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!86 = !{!"_ZTSN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EEE", !85, i64 0, !19, i64 8, !7, i64 16}
!87 = !{!86, !85, i64 0}
!88 = !{!"p1 _ZTSN2cv3dnn12MVNLayerImplE", !11, i64 0}
!89 = !{!"_ZTSSt15_Sp_counted_ptrIPN2cv3dnn12MVNLayerImplELN9__gnu_cxx12_Lock_policyE2EE", !60, i64 0, !88, i64 16}
!90 = !{!89, !88, i64 16}
!91 = !{!"p1 _ZTSN2cv3dnn14dnn5_v202606058MVNLayerE", !11, i64 0}
!92 = !{!"_ZTSSt12__shared_ptrIN2cv3dnn14dnn5_v202606058MVNLayerELN9__gnu_cxx12_Lock_policyE2EE", !91, i64 0, !13, i64 8}
!93 = !{!92, !91, i64 0}
!94 = distinct !{!94, !25}
!95 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!96 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!97 = !{!"_ZTSSt18_Rb_tree_node_base", !95, i64 0, !96, i64 8, !96, i64 16, !96, i64 24}
!98 = !{!"_ZTSSt15_Rb_tree_header", !97, i64 0, !19, i64 32}
!99 = !{!98, !96, i64 8}
!100 = !{!96, !96, i64 0}
!101 = !{!72, !71, i64 0}
!102 = distinct !{!102, i1 false, !"_ZNK2cv3PtrINS_3dnn14dnn5_v2026060515ActivationLayerEE11dynamicCastINS2_9ReLULayerEEENS0_IT_EEv"}
!103 = distinct !{!103, !102, !"_ZNK2cv3PtrINS_3dnn14dnn5_v2026060515ActivationLayerEE11dynamicCastINS2_9ReLULayerEEENS0_IT_EEv: argument 0"}
!104 = distinct !{!104, i1 false, !"_ZSt20dynamic_pointer_castIN2cv3dnn14dnn5_v202606059ReLULayerENS2_15ActivationLayerEESt10shared_ptrIT_ERKS5_IT0_E"}
!105 = distinct !{!105, !104, !"_ZSt20dynamic_pointer_castIN2cv3dnn14dnn5_v202606059ReLULayerENS2_15ActivationLayerEESt10shared_ptrIT_ERKS5_IT0_E: argument 0"}
!106 = distinct !{null, null, null, null, null}
!107 = !{!"p1 _ZTSN2cv3dnn14dnn5_v2026060515ActivationLayerE", !11, i64 0}
!108 = !{!"_ZTSSt12__shared_ptrIN2cv3dnn14dnn5_v2026060515ActivationLayerELN9__gnu_cxx12_Lock_policyE2EE", !107, i64 0, !13, i64 8}
!109 = !{!108, !107, i64 0}
!110 = !{!37, !8, i64 152}
!111 = !{!105, !103}
!112 = !{!51, !50, i64 0}
!113 = !{!"_ZTSN2cv3dnn14dnn5_v2026060515ActivationLayerE", !37, i64 0}
!114 = !{!"_ZTSN2cv3dnn14dnn5_v202606059ReLULayerE", !113, i64 0, !38, i64 156}
!115 = !{!114, !38, i64 156}
!116 = distinct !{!116, !25}
!117 = distinct !{!117, !123}
!118 = distinct !{!118, !25}
!119 = !{!"p1 _ZTSN2cv8MatShapeE", !11, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseIN2cv8MatShapeESaIS1_EE17_Vector_impl_dataE", !119, i64 0, !119, i64 8, !119, i64 16}
!121 = !{!120, !119, i64 8}
!122 = !{!120, !119, i64 0}
!123 = !{!"llvm.loop.unroll.disable"}
!124 = distinct !{null}
!125 = distinct !{null}
!126 = distinct !{null}
!127 = distinct !{null, null}
end_hunk_0
