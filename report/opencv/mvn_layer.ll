Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/mvn_layer?download=true
inline.NumInlined: 215
inline.NumDeleted: 123
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv3dnn12MVNLayerImpl13setActivationERKNS_3PtrINS0_14dnn5_v2026060515ActivationLayerEEE:bb.a
  %i.v = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN2cv3dnn14dnn5_v2026060515ActivationLayerE, ptr nonnull @_ZTIN2cv3dnn14dnn5_v202606059ReLULayerE, i64 0) #22, !noalias !111 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.not.i.i, label %_ZNK2cv3PtrINS_3dnn14dnn5_v2026060515ActivationLayerEE11dynamicCastINS2_9ReLULayerEEENS0_IT_EEv.exit, label %bb.i

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
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !123    ; 3 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 52
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = load i8, ptr %i.h, align 8, !tbaa !41, !range !65, !noundef !66
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = select i1 %i.j, i32 2, i32 1             ; 3 uses
  %i.l = zext nneg i32 %i.k to i64
  br label %bb.a

._crit_edge:                                      ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit25.epilog-lcssa, %.split
  %.09.lcssa = phi i64 [ 0, %.split ], [ %i.bp, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit25.epilog-lcssa ]
  ret i64 %.09.lcssa

bb.a:                                             ; preds = %.lr.ph, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit25.epilog-lcssa
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit25.epilog-lcssa ] ; 2 uses
  %.0934 = phi i64 [ 0, %.lr.ph ], [ %i.bp, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit25.epilog-lcssa ]
  %i.m = getelementptr inbounds nuw [52 x i8], ptr %i.c, i64 %indvars.iv ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !68   ; 4 uses
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0) ; 2 uses
  %.not33.i = icmp slt i32 %i.n, 1
  br i1 %.not33.i, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 9 uses
  %i.p = zext nneg i32 %narrow.i.i to i64         ; 2 uses
  %xtraiter = and i64 %i.p, 7                     ; 3 uses
  %3 = icmp slt i32 %i.n, 8
  br i1 %3, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.i.preheader.new

_ZNK2cv8MatShapeixEm.exit.i.preheader.new:        ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.p, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %indvars.iv.next.i.7, %_ZNK2cv8MatShapeixEm.exit.i ] ; 9 uses
  %.02128.i = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %i.bc, %_ZNK2cv8MatShapeixEm.exit.i ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit.i ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !63
  %i.s = sext i32 %i.r to i64
  %i.t = mul i64 %.02128.i, %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !63
  %i.x = sext i32 %i.w to i64
  %i.y = mul i64 %i.t, %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !63
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul i64 %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !63
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul i64 %i.ad, %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !63
  %i.am = sext i32 %i.al to i64
  %i.an = mul i64 %i.ai, %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !63
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul i64 %i.an, %i.ar
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i32, ptr %i.au, align 4, !tbaa !63
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul i64 %i.as, %i.aw
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !63
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul i64 %i.ax, %i.bb                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !116

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.epil.preheader:       ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ]
  %.02128.i.epil.init = phi i64 [ 1, %.lr.ph.i ], [ %i.bc, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ]
  %lcmp.mod58 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %_ZNK2cv8MatShapeixEm.exit.i.epil

_ZNK2cv8MatShapeixEm.exit.i.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %indvars.iv.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ] ; 2 uses
  %.02128.i.epil = phi i64 [ %i.bg, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %.02128.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.epil
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !63
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul i64 %.02128.i.epil, %i.bf           ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit, label %_ZNK2cv8MatShapeixEm.exit.i.epil, !llvm.loop !117

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit: ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa
  %.lcssa = phi i64 [ %i.bc, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ], [ %i.bg, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %i.bh = mul i64 %.lcssa, 6
  br label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit, %bb.a
  %.021.lcssa.i = phi i64 [ 6, %bb.a ], [ %i.bh, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit ]
  %.not.i = icmp slt i32 %i.n, %i.k
  br i1 %.not.i, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  br label %_ZNK2cv8MatShapeixEm.exit.i19.epil

bb.b:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.k, i32 noundef %narrow.i.i, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEiiE15__cv_check__167) #23
  unreachable

_ZNK2cv8MatShapeixEm.exit.i19.epil:               ; preds = %_ZNK2cv8MatShapeixEm.exit.i19.epil, %.preheader.i
  %indvars.iv.i20.epil = phi i64 [ %indvars.iv.next.i22.epil, %_ZNK2cv8MatShapeixEm.exit.i19.epil ], [ 0, %.preheader.i ] ; 2 uses
  %.02128.i21.epil = phi i64 [ %i.bm, %_ZNK2cv8MatShapeixEm.exit.i19.epil ], [ 1, %.preheader.i ]
  %epil.iter60 = phi i64 [ %epil.iter60.next, %_ZNK2cv8MatShapeixEm.exit.i19.epil ], [ 0, %.preheader.i ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i20.epil
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !63
  %i.bl = sext i32 %i.bk to i64
  %i.bm = mul i64 %.02128.i21.epil, %i.bl         ; 2 uses
  %indvars.iv.next.i22.epil = add nuw nsw i64 %indvars.iv.i20.epil, 1
  %epil.iter60.next = add i64 %epil.iter60, 1     ; 2 uses
  %epil.iter60.cmp.not = icmp eq i64 %epil.iter60.next, %i.l
  br i1 %epil.iter60.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit25.epilog-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i19.epil, !llvm.loop !118

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit25.epilog-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i19.epil
  %i.bn = mul i64 %i.bm, 3
  %i.bo = add i64 %.021.lcssa.i, %.0934
  %i.bp = add i64 %i.bo, %i.bn                    ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.a, !llvm.loop !119
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
end_hunk_0
