Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tldTracker?download=true
inline.NumInlined: 498
inline.NumDeleted: 241
begin_hunk_0_@_ZN2cv8tracking4impl3tld14TrackerTLDImpl8initImplERKNS_3MatERKNS_5Rect_IdEE:bb.a
  unreachable

bb.at:                                            ; preds = %bb.aq
  unreachable

bb.au:                                            ; preds = %bb.ap
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 7 uses
  store i32 1, ptr %i.dm, align 8, !tbaa !20
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 12 ; 2 uses
  store i32 1, ptr %i.dn, align 4, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv8tracking4impl3tld15TrackerTLDModelELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dc, align 8, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store ptr %i.cz, ptr %i.do, align 8, !tbaa !83
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.cz, ptr %i.dp, align 8, !tbaa !84
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i.i48 = icmp eq ptr %i.dc, %i.dr
  br i1 %.not.i.i.i.i48, label %_ZN2cv3PtrINS_6detail8tracking12TrackerModelEEaSINS_8tracking4impl3tld15TrackerTLDModelEEERS4_RKNS0_IT_EE.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ds = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i50 = icmp eq i8 %i.ds, 0
  br i1 %.not.i.i.i.i.i50, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i32 2, ptr %i.dm, align 8, !tbaa !54
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i51

bb.ax:                                            ; preds = %bb.av
  %i.dt = atomicrmw volatile add ptr %i.dm, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i57 = load ptr, ptr %i.dq, align 8, !tbaa !31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i51

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i51: ; preds = %bb.ax, %bb.aw
  %i.du = phi ptr [ %.pr.pre.i.i.i.i57, %bb.ax ], [ %i.dr, %bb.aw ] ; 8 uses
  %.not8.i.i.i.i52 = icmp eq ptr %i.du, null
  br i1 %.not8.i.i.i.i52, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i56, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i51
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 4 uses
  %i.dw = load atomic i64, ptr %i.dv acquire, align 8 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 4294967297
  %i.dy = trunc i64 %i.dw to i32                  ; 2 uses
  br i1 %i.dx, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.dv, align 8, !tbaa !20
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 0, ptr %i.dz, align 4, !tbaa !21
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #25, !inline_history !107
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #25, !inline_history !107
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i56

bb.ba:                                            ; preds = %bb.ay
  %i.eg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i9.i.i.i.i53 = icmp eq i8 %i.eg, 0
  br i1 %.not.i9.i.i.i.i53, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.eh = add nsw i32 %i.dy, -1
  store i32 %i.eh, ptr %i.dv, align 8, !tbaa !54
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i54

bb.bc:                                            ; preds = %bb.ba
  %i.ei = atomicrmw volatile add ptr %i.dv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i54

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i54: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i.i.i55 = phi i32 [ %i.dy, %bb.bb ], [ %i.ei, %bb.bc ]
  %i.ej = icmp eq i32 %.0.i.i.i.i.i.i55, 1
  br i1 %i.ej, label %bb.bd, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i56, !prof !55

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i54
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i56

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i56: ; preds = %bb.bd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i54, %bb.az, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i51
  store ptr %i.dc, ptr %i.dq, align 8, !tbaa !31
  br label %_ZN2cv3PtrINS_6detail8tracking12TrackerModelEEaSINS_8tracking4impl3tld15TrackerTLDModelEEERS4_RKNS0_IT_EE.exit

_ZN2cv3PtrINS_6detail8tracking12TrackerModelEEaSINS_8tracking4impl3tld15TrackerTLDModelEEERS4_RKNS0_IT_EE.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i56, %bb.au
  %i.ek = load atomic i64, ptr %i.dm acquire, align 8 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 4294967297
  %i.em = trunc i64 %i.ek to i32                  ; 2 uses
  br i1 %i.el, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZN2cv3PtrINS_6detail8tracking12TrackerModelEEaSINS_8tracking4impl3tld15TrackerTLDModelEEERS4_RKNS0_IT_EE.exit
  store i32 0, ptr %i.dm, align 8, !tbaa !20
  store i32 0, ptr %i.dn, align 4, !tbaa !21
  %i.en = load ptr, ptr %i.dc, align 8, !tbaa !18
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #25, !inline_history !108
  %i.eq = load ptr, ptr %i.dc, align 8, !tbaa !18
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #25, !inline_history !108
  br label %_ZNSt12__shared_ptrIN2cv8tracking4impl3tld15TrackerTLDModelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bf:                                            ; preds = %_ZN2cv3PtrINS_6detail8tracking12TrackerModelEEaSINS_8tracking4impl3tld15TrackerTLDModelEEERS4_RKNS0_IT_EE.exit
  %i.et = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i59 = icmp eq i8 %i.et, 0
  br i1 %.not.i.i.i59, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.eu = add nsw i32 %i.em, -1
  store i32 %i.eu, ptr %i.dm, align 8, !tbaa !54
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i60

bb.bh:                                            ; preds = %bb.bf
  %i.ev = atomicrmw volatile add ptr %i.dm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i60

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i60: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i61 = phi i32 [ %i.em, %bb.bg ], [ %i.ev, %bb.bh ]
  %i.ew = icmp eq i32 %.0.i.i.i.i61, 1
  br i1 %i.ew, label %bb.bi, label %_ZNSt12__shared_ptrIN2cv8tracking4impl3tld15TrackerTLDModelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i60
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #25
  br label %_ZNSt12__shared_ptrIN2cv8tracking4impl3tld15TrackerTLDModelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv8tracking4impl3tld15TrackerTLDModelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i60, %bb.bi
  %i.ex = load ptr, ptr %i.ap, align 8, !tbaa !79 ; 2 uses
  store i8 0, ptr %i.ex, align 8, !tbaa !85
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  store i8 0, ptr %i.ey, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret i1 true

bb.bj:                                            ; preds = %bb.an
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body46

bb.bk:                                            ; preds = %bb.ao
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef 736) #28
  br label %.body46

.body46:                                          ; preds = %bb.bk, %bb.ar, %bb.bj, %bb.am
  %.pn42.pn = phi { ptr, i32 } [ %.pn39.pn, %bb.am ], [ %i.fa, %bb.bk ], [ %i.ez, %bb.bj ], [ %i.dj, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.body

.body:                                            ; preds = %bb.o, %bb.aj, %.body46, %bb.k, %bb.e
  %.pn42.pn.pn = phi { ptr, i32 } [ %.pn42.pn, %.body46 ], [ %i.cw, %bb.aj ], [ %i.m, %bb.e ], [ %.pn, %bb.k ], [ %i.aj, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn42.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #7

declare void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64, double noundef, double noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN2cv8tracking4impl3tld15TrackerTLDModelC1ENS_6legacy8tracking10TrackerTLD6ParamsERKNS_3MatERKNS_5Rect_IdEENS_5Size_IiEE(ptr noundef nonnull align 8 dereferenceable(736), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32), i64) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv8tracking4impl3tld14TrackerTLDImpl10updateImplERKNS_3MatERNS_5Rect_IdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Rect_", align 8         ; 4 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 15 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %13 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %14 = alloca %"class.cv::Mat_", align 8         ; 11 uses
  %15 = alloca %"class.std::vector.76", align 8   ; 13 uses
  %16 = alloca %"class.cv::Rect_", align 8        ; 12 uses
  %17 = alloca %"class.cv::tracking::impl::tld::TrackerTLDImpl::Pexpert", align 8 ; 12 uses
  %18 = alloca %"class.cv::tracking::impl::tld::TrackerTLDImpl::Nexpert", align 8 ; 14 uses
  %19 = alloca %"class.std::vector.61", align 8   ; 18 uses
  %20 = alloca %"class.std::vector.61", align 8   ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %6) #25
  %i.a = load i32, ptr %1, align 8, !tbaa !63
  %i.b = and i32 %i.a, 4064
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 0, ptr %i.d, align 4, !tbaa !66
  store i32 16842752, ptr %7, align 8, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.g, align 8
  store i32 33619968, ptr %8, align 8, !tbaa !68
  store ptr %4, ptr %i.f, align 8, !tbaa !69
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 6, i32 noundef 0, i32 noundef 0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.bs

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.i = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %bb.g unwind label %bb.i       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.k, %bb.i ], [ %i.j, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.bs

bb.k:                                             ; preds = %bb.g, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !79
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !73 ; 2 uses
  %i.p = fcmp ogt double %i.o, 1.000000e+00
  br i1 %i.p, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.q, align 8, !tbaa !65
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 0, ptr %i.r, align 4, !tbaa !66
  store i32 16842752, ptr %10, align 8, !tbaa !68
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %4, ptr %i.s, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %i.u, align 8
  store i32 33619968, ptr %11, align 8, !tbaa !68
  store ptr %6, ptr %i.t, align 8, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load <2 x i32>, ptr %i.v, align 8, !tbaa !54
  %i.x = sitofp <2 x i32> %i.w to <2 x double>
  %i.y = insertelement <2 x double> poison, double %i.o, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x double> %i.z, %i.x            ; 2 uses
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ac = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ab)
  %i.ad = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.aa)
  %.sroa.2.0.insert.ext = zext i32 %i.ad to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0211.0.insert.ext = zext i32 %i.ac to i64
  %.sroa.0211.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0211.0.insert.ext
  invoke void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 %.sroa.0211.0.insert.insert, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 5)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.q

bb.n:                                             ; preds = %bb.p
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.o:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.bs

bb.p:                                             ; preds = %bb.k
  %i.ag = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.q unwind label %bb.n       ; 0 uses

bb.q:                                             ; preds = %bb.p, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.ah, align 8, !tbaa !65
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 0, ptr %i.ai, align 4, !tbaa !66
  store i32 16842752, ptr %12, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %6, ptr %i.aj, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 0, ptr %i.al, align 8
  store i32 33619968, ptr %13, align 8, !tbaa !68
  store ptr %5, ptr %i.ak, align 8, !tbaa !69
  invoke void @_ZN2cv12GaussianBlurERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 12884901891, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 4, i32 noundef 0)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !84 ; 6 uses
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !79
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !74
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %14, i32 noundef 15, i32 noundef 15, i32 noundef 0)
          to label %_ZN2cv4Mat_IhEC2Eii.exit unwind label %bb.y

_ZN2cv4Mat_IhEC2Eii.exit:                         ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !80
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !79
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !86, !range !87, !noundef !88
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4Mat_IhEC2Eii.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !52 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.t unwind label %bb.z

bb.t:                                             ; preds = %bb.s
  br i1 %i.bb, label %_ZNKSt6vectorIN2cv5Rect_IdEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, label %bb.aa

_ZNKSt6vectorIN2cv5Rect_IdEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.bc = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24
          to label %bb.u unwind label %bb.z       ; 5 uses

bb.u:                                             ; preds = %_ZNKSt6vectorIN2cv5Rect_IdEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 32, i1 false), !tbaa.struct !80
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 3 uses
  invoke void @_ZN2cv8tracking4impl3tld8resampleERKNS_3MatERKNS_5Rect_IdEERNS_4Mat_IhEE(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
end_hunk_0
begin_hunk_1_@_ZN2cv8tracking4impl3tld14TrackerTLDImpl10updateImplERKNS_3MatERNS_5Rect_IdEE:bb.a
  %.sroa.speculated.i.i.i89 = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i89, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = call i64 @llvm.umin.i64(i64 %i.bw, i64 288230376151711743)
  %i.bz = select i1 %i.bx, i64 288230376151711743, i64 %i.by ; 3 uses
  %.not.i.i.i90 = icmp ne i64 %i.bz, 0
  call void @llvm.assume(i1 %.not.i.i.i90)
  %i.ca = shl nuw nsw i64 %i.bz, 5
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #24
          to label %.noexc101 unwind label %bb.z  ; 6 uses

.noexc101:                                        ; preds = %_ZNKSt6vectorIN2cv5Rect_IdEESaIS2_EE12_M_check_lenEmPKc.exit.i.i88
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 32, i1 false), !tbaa.struct !80
  %.not10.i.i.i.i.i91 = icmp eq ptr %.sroa.0197.1, %.sroa.20.1
  br i1 %.not10.i.i.i.i.i91, label %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i96, label %.lr.ph.i.i.i.i.i92.preheader

.lr.ph.i.i.i.i.i92.preheader:                     ; preds = %.noexc101
  %i.cd = add i64 %i.br, -32
  %i.ce = sub i64 %i.cd, %i.bs
  %i.cf = and i64 %i.ce, -32
  %i.cg = add i64 %i.cf, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr align 8 %.sroa.0197.1, i64 %i.cg, i1 false), !alias.scope !116
  br label %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i96

_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i96: ; preds = %.lr.ph.i.i.i.i.i92.preheader, %.noexc101
  %.not.i23.i.i98 = icmp eq ptr %.sroa.0197.1, null
  br i1 %.not.i23.i.i98, label %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE9push_backERKS2_.exit102, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i96
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0197.1, i64 noundef %i.bt) #28
  br label %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE9push_backERKS2_.exit102

_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE9push_backERKS2_.exit102: ; preds = %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i96, %bb.ae
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %i.cb, i64 %i.bz ; 3 uses
  invoke void @_ZN2cv8tracking4impl3tld8resampleERKNS_3MatERKNS_5Rect_IdEERNS_4Mat_IhEE(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %bb.af unwind label %bb.z

bb.af:                                            ; preds = %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE9push_backERKS2_.exit102
  %i.ci = load ptr, ptr %i.bn, align 8, !tbaa !115
  %i.cj = invoke noundef double @_ZNK2cv8tracking4impl3tld11TLDDetector2ScERKNS_4Mat_IhEE(ptr noundef nonnull align 8 dereferenceable(312) %i.ci, ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %bb.ag unwind label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.ck = ptrtoint ptr %.sroa.14.0 to i64
  %i.cl = ptrtoint ptr %.sroa.0180.1 to i64
  %i.cm = sub i64 %i.ck, %i.cl                    ; 6 uses
  %i.cn = icmp eq i64 %i.cm, 9223372036854775800
  br i1 %i.cn, label %bb.ah, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i104

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #26
          to label %.noexc110 unwind label %bb.ak

.noexc110:                                        ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i104: ; preds = %bb.ag
  %i.co = ashr exact i64 %i.cm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i105 = call i64 @llvm.umax.i64(i64 %i.co, i64 1)
  %i.cp = add nsw i64 %.sroa.speculated.i.i.i.i105, %i.co ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.co
  %i.cr = call i64 @llvm.umin.i64(i64 %i.cp, i64 1152921504606846975)
  %i.cs = select i1 %i.cq, i64 1152921504606846975, i64 %i.cr ; 3 uses
  %.not.i.i.i.i106 = icmp ne i64 %i.cs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i106)
  %i.ct = shl nuw nsw i64 %i.cs, 3
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #24
          to label %.noexc111 unwind label %bb.ak ; 4 uses

.noexc111:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i104
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 %i.cm ; 2 uses
  store double %i.cj, ptr %i.cv, align 8, !tbaa !71
  %i.cw = icmp sgt i64 %i.cm, 0
  br i1 %i.cw, label %bb.ai, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i107

bb.ai:                                            ; preds = %.noexc111
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cu, ptr align 8 %.sroa.0180.1, i64 %i.cm, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i107

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i107: ; preds = %bb.ai, %.noexc111
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.not.i17.i.i.i108 = icmp eq ptr %.sroa.0180.1, null
  br i1 %.not.i17.i.i.i108, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i109, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i107
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0180.1, i64 noundef %i.cm) #28
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i109

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i109: ; preds = %bb.aj, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i107
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cs
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit112

bb.ak:                                            ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i104, %bb.ah, %bb.af
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

_ZNSt6vectorIdSaIdEE9push_backEOd.exit112:        ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i109, %bb.ab
  %.sroa.0180.2 = phi ptr [ %.sroa.0180.1, %bb.ab ], [ %i.cu, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i109 ] ; 12 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.0, %bb.ab ], [ %i.cx, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i109 ] ; 4 uses
  %.sroa.23.2 = phi ptr [ %.sroa.14.0, %bb.ab ], [ %i.cy, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i109 ] ; 3 uses
  %.sroa.20.2 = phi ptr [ %.sroa.20.1, %bb.ab ], [ %i.ch, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i109 ] ; 3 uses
  %.sroa.0197.2 = phi ptr [ %.sroa.0197.1, %bb.ab ], [ %i.cb, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i109 ] ; 6 uses
  %i.da = icmp eq ptr %.sroa.0180.2, %.sroa.14.1
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0180.2, i64 8 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.db, %.sroa.14.1
  %or.cond.i.i = select i1 %i.da, i1 true, i1 %.not9.i.i
  br i1 %or.cond.i.i, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit112
  %.pre.i.i = load double, ptr %.sroa.0180.2, align 8, !tbaa !71
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.dc = phi double [ %i.dh, %.lr.ph.i.i ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.dd = phi ptr [ %i.dg, %.lr.ph.i.i ], [ %i.db, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.02.010.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i.i ], [ %.sroa.0180.2, %.lr.ph.preheader.i.i ]
  %i.de = load double, ptr %i.dd, align 8, !tbaa !71 ; 2 uses
  %i.df = fcmp olt double %i.dc, %i.de            ; 2 uses
  %spec.select.i.i = select i1 %i.df, ptr %i.dd, ptr %.sroa.02.010.i.i ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %.not.i.i113 = icmp eq ptr %i.dg, %.sroa.14.1
  %i.dh = select i1 %i.df, double %i.de, double %i.dc
  br i1 %.not.i.i113, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit, label %.lr.ph.i.i, !llvm.loop !112

_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit: ; preds = %.lr.ph.i.i, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit112
  %.sroa.02.2.i.i = phi ptr [ %.sroa.0180.2, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit112 ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 4 uses
  %i.di = icmp ne ptr %.sroa.02.2.i.i, %.sroa.14.1 ; 2 uses
  br i1 %i.di, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit
  %i.dj = load ptr, ptr %i.l, align 8, !tbaa !79  ; 2 uses
  store i8 0, ptr %i.dj, align 8, !tbaa !85
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  store i8 1, ptr %i.dk, align 1, !tbaa !86
  br label %bb.bj

bb.am:                                            ; preds = %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit
  %i.dl = ptrtoint ptr %.sroa.02.2.i.i to i64
  %i.dm = ptrtoint ptr %.sroa.0180.2 to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = ashr exact i64 %i.dn, 3
  %i.dp = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0197.2, i64 %i.do ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.dp, i64 32, i1 false), !tbaa.struct !80
  %i.dq = load ptr, ptr %i.l, align 8, !tbaa !79
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  store i8 0, ptr %i.dr, align 1, !tbaa !86
  %i.ds = icmp ne ptr %.sroa.02.2.i.i, %.sroa.0180.2
  %or.cond = or i1 %.063, %i.ds
  br i1 %or.cond, label %.critedge, label %bb.an

.critedge:                                        ; preds = %bb.am
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !52 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !18
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = invoke noundef zeroext i1 %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.an unwind label %bb.ao     ; 0 uses

bb.an:                                            ; preds = %.critedge, %bb.am
  invoke void @_ZN2cv8tracking4impl3tld8resampleERKNS_3MatERKNS_5Rect_IdEERNS_4Mat_IhEE(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %.critedge, %bb.an
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.ap:                                            ; preds = %bb.an
  %i.dz = load double, ptr %.sroa.02.2.i.i, align 8, !tbaa !71
  %i.ea = fcmp ogt double %i.dz, 5.000000e-01
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !79  ; 3 uses
  br i1 %i.ea, label %.thread, label %bb.aq

.thread:                                          ; preds = %bb.ap
  store i8 1, ptr %.pre, align 8, !tbaa !85
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %.pre233 = load i8, ptr %.pre, align 8, !tbaa !85, !range !87
  %i.eb = trunc nuw i8 %.pre233 to i1
  br i1 %i.eb, label %bb.ar, label %bb.bj

bb.ar:                                            ; preds = %.thread, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  %i.ec = load ptr, ptr %i.bn, align 8, !tbaa !115
  %i.ed = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.sroa.0.0.copyload.i114 = load i64, ptr %i.ed, align 8, !tbaa !54
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(480) %17, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %.noexc115 unwind label %bb.ay

.noexc115:                                        ; preds = %bb.ar
  %i.ee = getelementptr inbounds nuw i8, ptr %17, i64 208 ; 3 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ee, ptr noundef nonnull align 8 dereferenceable(208) %5)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %.noexc115
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body.sink.split

bb.at:                                            ; preds = %.noexc115
  %i.eg = getelementptr inbounds nuw i8, ptr %17, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eg, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !80
  %i.eh = getelementptr inbounds nuw i8, ptr %17, i64 448
  store ptr %i.ec, ptr %i.eh, align 8, !tbaa !117
  %i.ei = getelementptr inbounds nuw i8, ptr %17, i64 464
  store i64 4294967295, ptr %i.ei, align 8, !tbaa !96
  %i.ej = getelementptr inbounds nuw i8, ptr %17, i64 472
  store i64 %.sroa.0.0.copyload.i114, ptr %i.ej, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.ek = load ptr, ptr %i.bn, align 8, !tbaa !115
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(480) %18) #25
  %i.el = getelementptr inbounds nuw i8, ptr %18, i64 208 ; 3 uses
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.el) #25
  %i.em = getelementptr inbounds nuw i8, ptr %18, i64 416 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %18, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.em, i8 0, i64 40, i1 false)
  invoke void @_ZN2cv6legacy8tracking10TrackerTLD6ParamsC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %i.en)
          to label %_ZN2cv8tracking4impl3tld14TrackerTLDImpl7PexpertC2Ev.exit.i unwind label %common.resume.i

_ZN2cv8tracking4impl3tld14TrackerTLDImpl7PexpertC2Ev.exit.i: ; preds = %bb.at
  %i.eo = getelementptr inbounds nuw i8, ptr %18, i64 464
  store i64 4294967295, ptr %i.eo, align 8, !tbaa !96
  %i.ep = getelementptr inbounds nuw i8, ptr %18, i64 472
  store i32 0, ptr %i.ep, align 8, !tbaa !65
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 476
  store i32 0, ptr %i.eq, align 4, !tbaa !66
  %i.er = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(480) %18, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %bb.au unwind label %common.resume.i ; 0 uses

common.resume.i:                                  ; preds = %_ZN2cv8tracking4impl3tld14TrackerTLDImpl7PexpertC2Ev.exit.i, %bb.at
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %.body116

bb.au:                                            ; preds = %_ZN2cv8tracking4impl3tld14TrackerTLDImpl7PexpertC2Ev.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.em, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !80
  %i.et = getelementptr inbounds nuw i8, ptr %18, i64 448
  store ptr %i.ek, ptr %i.et, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 7 uses
  %i.ew = invoke noundef ptr @_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef 100, ptr noundef null, ptr noundef null)
          to label %.noexc120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc120:                                        ; preds = %bb.au
  %i.ex = load ptr, ptr %19, align 8, !tbaa !99   ; 3 uses
  %i.ey = load ptr, ptr %i.ev, align 8, !tbaa !100 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ex, %i.ey
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv4Mat_IhEEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc120, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ez, %.lr.ph.i.i.i ], [ %i.ex, %.noexc120 ] ; 2 uses
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #25
  %i.ez = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i118 = icmp eq ptr %i.ez, %i.ey
  br i1 %.not.i.i.i118, label %_ZSt8_DestroyIPN2cv4Mat_IhEEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN2cv4Mat_IhEEEvT_S4_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %19, align 8, !tbaa !99
  br label %_ZSt8_DestroyIPN2cv4Mat_IhEEEvT_S4_.exit.i

_ZSt8_DestroyIPN2cv4Mat_IhEEEvT_S4_.exit.i:       ; preds = %_ZSt8_DestroyIPN2cv4Mat_IhEEEvT_S4_.exitthread-pre-split.i, %.noexc120
  %i.fa = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv4Mat_IhEEEvT_S4_.exitthread-pre-split.i ], [ %i.ex, %.noexc120 ] ; 3 uses
  %.not.i.i119 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i119, label %_ZNSt12_Vector_baseIN2cv4Mat_IhEESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPN2cv4Mat_IhEEEvT_S4_.exit.i
  %i.fb = load ptr, ptr %i.eu, align 8, !tbaa !101
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.fa to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fe) #28
  br label %_ZNSt12_Vector_baseIN2cv4Mat_IhEESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN2cv4Mat_IhEESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.av, %_ZSt8_DestroyIPN2cv4Mat_IhEEEvT_S4_.exit.i
  store ptr %i.ew, ptr %19, align 8, !tbaa !99
  store ptr %i.ew, ptr %i.ev, align 8, !tbaa !100
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ew, i64 20800
  store ptr %i.ff, ptr %i.eu, align 8, !tbaa !101
  %i.fg = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !101
  %i.fi = load ptr, ptr %20, align 8, !tbaa !99   ; 2 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64               ; 2 uses
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = sdiv exact i64 %i.fl, 208
  %i.fn = icmp ult i64 %i.fm, 100
  br i1 %i.fn, label %bb.aw, label %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE7reserveEm.exit131

bb.aw:                                            ; preds = %_ZNSt12_Vector_baseIN2cv4Mat_IhEESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.fo = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !100 ; 2 uses
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = sub i64 %i.fq, %i.fk
  %i.fs = invoke noundef ptr @_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef 100, ptr noundef %i.fi, ptr noundef %i.fp)
          to label %.noexc130 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc130:                                        ; preds = %bb.aw
  %i.ft = load ptr, ptr %20, align 8, !tbaa !99   ; 3 uses
  %i.fu = load ptr, ptr %i.fo, align 8, !tbaa !100 ; 2 uses
  %.not4.i.i.i121 = icmp eq ptr %i.ft, %i.fu
  br i1 %.not4.i.i.i121, label %_ZSt8_DestroyIPN2cv4Mat_IhEEEvT_S4_.exit.i127, label %.lr.ph.i.i.i122

.lr.ph.i.i.i122:                                  ; preds = %.noexc130, %.lr.ph.i.i.i122
  %.05.i.i.i123 = phi ptr [ %i.fv, %.lr.ph.i.i.i122 ], [ %i.ft, %.noexc130 ] ; 2 uses
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i123) #25
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i.i123, i64 208 ; 2 uses
  %.not.i.i.i124 = icmp eq ptr %i.fv, %i.fu
  br i1 %.not.i.i.i124, label %_ZSt8_DestroyIPN2cv4Mat_IhEEEvT_S4_.exitthread-pre-split.i125, label %.lr.ph.i.i.i122, !llvm.loop !6

_ZSt8_DestroyIPN2cv4Mat_IhEEEvT_S4_.exitthread-pre-split.i125: ; preds = %.lr.ph.i.i.i122
  %.pr.i126 = load ptr, ptr %20, align 8, !tbaa !99
  br label %_ZSt8_DestroyIPN2cv4Mat_IhEEEvT_S4_.exit.i127

_ZSt8_DestroyIPN2cv4Mat_IhEEEvT_S4_.exit.i127:    ; preds = %_ZSt8_DestroyIPN2cv4Mat_IhEEEvT_S4_.exitthread-pre-split.i125, %.noexc130
  %i.fw = phi ptr [ %.pr.i126, %_ZSt8_DestroyIPN2cv4Mat_IhEEEvT_S4_.exitthread-pre-split.i125 ], [ %i.ft, %.noexc130 ] ; 3 uses
  %.not.i.i128 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i128, label %_ZNSt12_Vector_baseIN2cv4Mat_IhEESaIS2_EE13_M_deallocateEPS2_m.exit.i129, label %bb.ax

bb.ax:                                            ; preds = %_ZSt8_DestroyIPN2cv4Mat_IhEEEvT_S4_.exit.i127
  %i.fx = load ptr, ptr %i.fg, align 8, !tbaa !101
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %i.fw to i64
  %i.ga = sub i64 %i.fy, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.ga) #28
  br label %_ZNSt12_Vector_baseIN2cv4Mat_IhEESaIS2_EE13_M_deallocateEPS2_m.exit.i129

_ZNSt12_Vector_baseIN2cv4Mat_IhEESaIS2_EE13_M_deallocateEPS2_m.exit.i129: ; preds = %bb.ax, %_ZSt8_DestroyIPN2cv4Mat_IhEEEvT_S4_.exit.i127
  store ptr %i.fs, ptr %20, align 8, !tbaa !99
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fr
  store ptr %i.gb, ptr %i.fo, align 8, !tbaa !100
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fs, i64 20800
  store ptr %i.gc, ptr %i.fg, align 8, !tbaa !101
  br label %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE7reserveEm.exit131

_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE7reserveEm.exit131: ; preds = %_ZNSt12_Vector_baseIN2cv4Mat_IhEESaIS2_EE13_M_deallocateEPS2_m.exit.i, %_ZNSt12_Vector_baseIN2cv4Mat_IhEESaIS2_EE13_M_deallocateEPS2_m.exit.i129
  %i.gd = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !120
  %i.gf = load ptr, ptr %15, align 8, !tbaa !121  ; 2 uses
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = sdiv exact i64 %i.gi, 40
  %i.gk = trunc i64 %i.gj to i32
  %i.gl = icmp sgt i32 %i.gk, 0
  br i1 %i.gl, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.bc, %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE7reserveEm.exit131
  invoke void @_ZN2cv8tracking4impl3tld15TrackerTLDModel18integrateRelabeledERNS_3MatES5_RKSt6vectorINS2_11TLDDetector12LabeledPatchESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(736) %i.an, ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %bb.ar
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE7reserveEm.exit131, %bb.bc
  %i.gn = phi ptr [ %i.gv, %bb.bc ], [ %i.gf, %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE7reserveEm.exit131 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bc ], [ 0, %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE7reserveEm.exit131 ] ; 3 uses
  %i.go = getelementptr inbounds nuw [40 x i8], ptr %i.gn, i64 %indvars.iv ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gq = load i8, ptr %i.gp, align 8, !tbaa !123, !range !87, !noundef !88
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.lr.ph
  %.sroa.0.0.copyload = load <4 x double>, ptr %i.go, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store <4 x double> %.sroa.0.0.copyload, ptr %3, align 8
  %i.gs = invoke noundef double @_ZN2cv8tracking4impl3tld7overlapERKNS_5Rect_IdEES6_(ptr noundef nonnull align 8 dereferenceable(32) %i.em, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN2cv8tracking4impl3tld14TrackerTLDImpl7NexpertclENS_5Rect_IdEE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN2cv8tracking4impl3tld14TrackerTLDImpl7NexpertclENS_5Rect_IdEE.exit: ; preds = %bb.az
  %i.gt = fcmp uge double %i.gs, 2.000000e-01
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.gu = zext i1 %i.gt to i8
  %.pre234 = load ptr, ptr %15, align 8, !tbaa !121
  br label %bb.ba

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.az, %bb.aw, %bb.au, %._crit_edge, %bb.bd, %bb.be, %_ZN2cv8tracking4impl3tld14TrackerTLDImpl7Nexpert18additionalExamplesERSt6vectorINS_4Mat_IhEESaIS7_EESA_.exit
  %lpad.loopexit.split-lp265 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %.body116

bb.ba:                                            ; preds = %.lr.ph, %_ZN2cv8tracking4impl3tld14TrackerTLDImpl7NexpertclENS_5Rect_IdEE.exit
  %i.gv = phi ptr [ %.pre234, %_ZN2cv8tracking4impl3tld14TrackerTLDImpl7NexpertclENS_5Rect_IdEE.exit ], [ %i.gn, %.lr.ph ] ; 3 uses
  %.0.in = phi i8 [ %i.gu, %_ZN2cv8tracking4impl3tld14TrackerTLDImpl7NexpertclENS_5Rect_IdEE.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.gw = getelementptr inbounds nuw [40 x i8], ptr %i.gv, i64 %indvars.iv ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 33 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !124, !range !87, !noundef !88
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %i.hb = load i8, ptr %i.ha, align 8, !tbaa !123, !range !87, !noundef !88
  %i.hc = icmp ne i8 %i.hb, %.0.in
  %i.hd = zext i1 %i.hc to i8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.he = phi i8 [ 1, %bb.ba ], [ %i.hd, %bb.bb ]
  store i8 %i.he, ptr %i.gx, align 1, !tbaa !124
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  store i8 %.0.in, ptr %i.hf, align 8, !tbaa !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hg = load ptr, ptr %i.gd, align 8, !tbaa !120
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.gv to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = sdiv exact i64 %i.hj, 40
  %i.hl = shl i64 %i.hk, 32
  %i.hm = ashr exact i64 %i.hl, 32
  %i.hn = icmp slt i64 %indvars.iv.next, %i.hm
  br i1 %i.hn, label %.lr.ph, label %._crit_edge, !llvm.loop !113

bb.bd:                                            ; preds = %._crit_edge
  %i.ho = invoke noundef i32 @_ZN2cv8tracking4impl3tld14TrackerTLDImpl7Pexpert18additionalExamplesERSt6vectorINS_4Mat_IhEESaIS7_EESA_(ptr noundef nonnull align 8 dereferenceable(480) %17, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN2cv8tracking4impl3tld15TrackerTLDModel19integrateAdditionalERKSt6vectorINS_4Mat_IhEESaIS6_EESA_b(ptr noundef nonnull align 8 dereferenceable(736) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %20, i1 noundef zeroext true)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.be
  %i.hp = load ptr, ptr %19, align 8, !tbaa !99   ; 4 uses
  %i.hq = load ptr, ptr %i.ev, align 8, !tbaa !100 ; 2 uses
  %.not.i.i133 = icmp eq ptr %i.hq, %i.hp
  br i1 %.not.i.i133, label %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bf, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.hr, %.lr.ph.i.i.i.i ], [ %i.hp, %bb.bf ] ; 2 uses
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i) #25
  %i.hr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i134 = icmp eq ptr %i.hr, %i.hq
  br i1 %.not.i.i.i.i134, label %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.hp, ptr %i.ev, align 8, !tbaa !100
  br label %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit:  ; preds = %bb.bf, %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.hs = load ptr, ptr %20, align 8, !tbaa !99   ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 5 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !100 ; 2 uses
  %.not.i.i135 = icmp eq ptr %i.hu, %i.hs
  br i1 %.not.i.i135, label %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit140, label %.lr.ph.i.i.i.i136

.lr.ph.i.i.i.i136:                                ; preds = %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit, %.lr.ph.i.i.i.i136
  %.05.i.i.i.i137 = phi ptr [ %i.hv, %.lr.ph.i.i.i.i136 ], [ %i.hs, %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit ] ; 2 uses
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i137) #25
  %i.hv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i137, i64 208 ; 2 uses
  %.not.i.i.i.i138 = icmp eq ptr %i.hv, %i.hu
  br i1 %.not.i.i.i.i138, label %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i.i139, label %.lr.ph.i.i.i.i136, !llvm.loop !6

_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i.i139: ; preds = %.lr.ph.i.i.i.i136
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !100
  %.pre235 = load ptr, ptr %i.ev, align 8, !tbaa !100
  br label %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit140

_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit140: ; preds = %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit, %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i.i139
  %i.hw = phi ptr [ %i.hp, %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit ], [ %.pre235, %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i.i139 ] ; 2 uses
  %i.hx = load ptr, ptr %19, align 8, !tbaa !99   ; 3 uses
  %.not.i.i.i141 = icmp eq ptr %i.hw, %i.hx
  br i1 %.not.i.i.i141, label %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit.i, label %.lr.ph.i.i.i.i.i142

.lr.ph.i.i.i.i.i142:                              ; preds = %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit140, %.lr.ph.i.i.i.i.i142
  %.05.i.i.i.i.i = phi ptr [ %i.hy, %.lr.ph.i.i.i.i.i142 ], [ %i.hx, %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit140 ] ; 2 uses
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i.i) #25
  %i.hy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i143 = icmp eq ptr %i.hy, %i.hw
  br i1 %.not.i.i.i.i.i143, label %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i142, !llvm.loop !6

_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i142
  store ptr %i.hx, ptr %i.ev, align 8, !tbaa !100
  %.pre236 = load ptr, ptr %i.ht, align 8, !tbaa !100
  br label %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit.i

_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit140
  %i.hz = phi ptr [ %.pre236, %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i.i.i ], [ %i.hs, %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit140 ] ; 2 uses
  %i.ia = load ptr, ptr %20, align 8, !tbaa !99   ; 3 uses
  %.not.i.i2.i = icmp eq ptr %i.hz, %i.ia
  br i1 %.not.i.i2.i, label %_ZN2cv8tracking4impl3tld14TrackerTLDImpl7Nexpert18additionalExamplesERSt6vectorINS_4Mat_IhEESaIS7_EESA_.exit, label %.lr.ph.i.i.i.i3.i

.lr.ph.i.i.i.i3.i:                                ; preds = %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit.i, %.lr.ph.i.i.i.i3.i
  %.05.i.i.i.i4.i = phi ptr [ %i.ib, %.lr.ph.i.i.i.i3.i ], [ %i.ia, %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit.i ] ; 2 uses
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i4.i) #25
  %i.ib = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i4.i, i64 208 ; 2 uses
  %.not.i.i.i.i5.i = icmp eq ptr %i.ib, %i.hz
  br i1 %.not.i.i.i.i5.i, label %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i.i6.i, label %.lr.ph.i.i.i.i3.i, !llvm.loop !6

_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i.i6.i: ; preds = %.lr.ph.i.i.i.i3.i
  store ptr %i.ia, ptr %i.ht, align 8, !tbaa !100
  br label %_ZN2cv8tracking4impl3tld14TrackerTLDImpl7Nexpert18additionalExamplesERSt6vectorINS_4Mat_IhEESaIS7_EESA_.exit

_ZN2cv8tracking4impl3tld14TrackerTLDImpl7Nexpert18additionalExamplesERSt6vectorINS_4Mat_IhEESaIS7_EESA_.exit: ; preds = %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit.i, %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i.i6.i
  invoke void @_ZN2cv8tracking4impl3tld15TrackerTLDModel19integrateAdditionalERKSt6vectorINS_4Mat_IhEESaIS6_EESA_b(ptr noundef nonnull align 8 dereferenceable(736) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %20, i1 noundef zeroext false)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %_ZN2cv8tracking4impl3tld14TrackerTLDImpl7Nexpert18additionalExamplesERSt6vectorINS_4Mat_IhEESaIS7_EESA_.exit
  %i.ic = load ptr, ptr %20, align 8, !tbaa !99   ; 3 uses
  %i.id = load ptr, ptr %i.ht, align 8, !tbaa !100 ; 2 uses
  %.not4.i.i.i144 = icmp eq ptr %i.ic, %i.id
  br i1 %.not4.i.i.i144, label %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i145

.lr.ph.i.i.i145:                                  ; preds = %bb.bg, %.lr.ph.i.i.i145
  %.05.i.i.i146 = phi ptr [ %i.ie, %.lr.ph.i.i.i145 ], [ %i.ic, %bb.bg ] ; 2 uses
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i146) #25
  %i.ie = getelementptr inbounds nuw i8, ptr %.05.i.i.i146, i64 208 ; 2 uses
  %.not.i.i.i147 = icmp eq ptr %i.ie, %i.id
  br i1 %.not.i.i.i147, label %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i145, !llvm.loop !6

_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i145
  %.pr.i148 = load ptr, ptr %20, align 8, !tbaa !99
  br label %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.bg
  %i.if = phi ptr [ %.pr.i148, %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ic, %bb.bg ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ig = load ptr, ptr %i.fg, align 8, !tbaa !101
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = ptrtoint ptr %i.if to i64
  %i.ij = sub i64 %i.ih, %i.ii
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %i.ij) #28
  br label %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EED2Ev.exit:      ; preds = %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  %i.ik = load ptr, ptr %19, align 8, !tbaa !99   ; 3 uses
  %i.il = load ptr, ptr %i.ev, align 8, !tbaa !100 ; 2 uses
  %.not4.i.i.i149 = icmp eq ptr %i.ik, %i.il
  br i1 %.not4.i.i.i149, label %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i155, label %.lr.ph.i.i.i150

.lr.ph.i.i.i150:                                  ; preds = %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EED2Ev.exit, %.lr.ph.i.i.i150
  %.05.i.i.i151 = phi ptr [ %i.im, %.lr.ph.i.i.i150 ], [ %i.ik, %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EED2Ev.exit ] ; 2 uses
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i151) #25
  %i.im = getelementptr inbounds nuw i8, ptr %.05.i.i.i151, i64 208 ; 2 uses
  %.not.i.i.i152 = icmp eq ptr %i.im, %i.il
  br i1 %.not.i.i.i152, label %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i153, label %.lr.ph.i.i.i150, !llvm.loop !6

_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i153: ; preds = %.lr.ph.i.i.i150
  %.pr.i154 = load ptr, ptr %19, align 8, !tbaa !99
  br label %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i155

_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i155: ; preds = %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i153, %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EED2Ev.exit
  %i.in = phi ptr [ %.pr.i154, %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i153 ], [ %i.ik, %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i156 = icmp eq ptr %i.in, null
  br i1 %.not.i.i1.i156, label %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EED2Ev.exit157, label %bb.bi

bb.bi:                                            ; preds = %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i155
  %i.io = load ptr, ptr %i.eu, align 8, !tbaa !101
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %i.in to i64
  %i.ir = sub i64 %i.ip, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef %i.ir) #28
  br label %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EED2Ev.exit157

_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EED2Ev.exit157:   ; preds = %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i155, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.el) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(480) %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ee) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(480) %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.bj

.body116:                                         ; preds = %common.resume.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn75.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp265, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.es, %common.resume.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.el) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(480) %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ee) #25
  br label %.body.sink.split

.body.sink.split:                                 ; preds = %.body116, %bb.as
  %.pn75.pn.pn.ph = phi { ptr, i32 } [ %i.ef, %bb.as ], [ %.pn75.pn, %.body116 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(480) %17) #25
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ay
  %.pn75.pn.pn = phi { ptr, i32 } [ %i.gm, %bb.ay ], [ %.pn75.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.bn

bb.bj:                                            ; preds = %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EED2Ev.exit157, %bb.aq, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %.not.i.i.i158 = icmp eq ptr %.sroa.0180.2, null
  br i1 %.not.i.i.i158, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.is = ptrtoint ptr %.sroa.23.2 to i64
  %i.it = ptrtoint ptr %.sroa.0180.2 to i64
  %i.iu = sub i64 %i.is, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0180.2, i64 noundef %i.iu) #28
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.bj, %bb.bk
  %.not.i.i.i159 = icmp eq ptr %.sroa.0197.2, null
  br i1 %.not.i.i.i159, label %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.iv = ptrtoint ptr %.sroa.20.2 to i64
  %i.iw = ptrtoint ptr %.sroa.0197.2 to i64
  %i.ix = sub i64 %i.iv, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0197.2, i64 noundef %i.ix) #28
  br label %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EED2Ev.exit:     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.bl
  %i.iy = load ptr, ptr %15, align 8, !tbaa !121  ; 3 uses
  %.not.i.i.i160 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i160, label %_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EED2Ev.exit
  %i.iz = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !125
  %i.jb = ptrtoint ptr %i.ja to i64
  %i.jc = ptrtoint ptr %i.iy to i64
  %i.jd = sub i64 %i.jb, %i.jc
  call void @_ZdlPvm(ptr noundef nonnull %i.iy, i64 noundef %i.jd) #28
  br label %_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EED2Ev.exit

_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EED2Ev.exit: ; preds = %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EED2Ev.exit, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret i1 %i.di

bb.bn:                                            ; preds = %bb.ao, %.body, %bb.ak, %bb.z
  %.sroa.0180.3 = phi ptr [ %.sroa.0180.0, %bb.z ], [ %.sroa.0180.1, %bb.ak ], [ %.sroa.0180.2, %bb.ao ], [ %.sroa.0180.2, %.body ] ; 3 uses
  %.sroa.23.3 = phi ptr [ %.sroa.23.0, %bb.z ], [ %.sroa.14.0, %bb.ak ], [ %.sroa.23.2, %bb.ao ], [ %.sroa.23.2, %.body ]
  %.sroa.20.3 = phi ptr [ %.sroa.20.0, %bb.z ], [ %i.ch, %bb.ak ], [ %.sroa.20.2, %bb.ao ], [ %.sroa.20.2, %.body ]
  %.sroa.0197.3 = phi ptr [ %.sroa.0197.0, %bb.z ], [ %i.cb, %bb.ak ], [ %.sroa.0197.2, %bb.ao ], [ %.sroa.0197.2, %.body ] ; 2 uses
  %.pn75.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.z ], [ %i.cz, %bb.ak ], [ %i.dy, %bb.ao ], [ %.pn75.pn.pn, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %.not.i.i.i161 = icmp eq ptr %.sroa.0180.3, null
  br i1 %.not.i.i.i161, label %_ZNSt6vectorIdSaIdEED2Ev.exit162, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.je = ptrtoint ptr %.sroa.23.3 to i64
  %i.jf = ptrtoint ptr %.sroa.0180.3 to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0180.3, i64 noundef %i.jg) #28
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit162

_ZNSt6vectorIdSaIdEED2Ev.exit162:                 ; preds = %bb.bn, %bb.bo
  %.not.i.i.i163 = icmp eq ptr %.sroa.0197.3, null
  br i1 %.not.i.i.i163, label %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EED2Ev.exit164, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit162.thread, %_ZNSt6vectorIdSaIdEED2Ev.exit162
  %.sroa.20.3218228 = phi ptr [ %i.bd, %_ZNSt6vectorIdSaIdEED2Ev.exit162.thread ], [ %.sroa.20.3, %_ZNSt6vectorIdSaIdEED2Ev.exit162 ]
  %.sroa.0197.3219227 = phi ptr [ %i.bc, %_ZNSt6vectorIdSaIdEED2Ev.exit162.thread ], [ %.sroa.0197.3, %_ZNSt6vectorIdSaIdEED2Ev.exit162 ] ; 2 uses
  %.pn75.pn.pn.pn.pn220225 = phi { ptr, i32 } [ %i.bm, %_ZNSt6vectorIdSaIdEED2Ev.exit162.thread ], [ %.pn75.pn.pn.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit162 ]
  %i.jh = ptrtoint ptr %.sroa.20.3218228 to i64
  %i.ji = ptrtoint ptr %.sroa.0197.3219227 to i64
  %i.jj = sub i64 %i.jh, %i.ji
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0197.3219227, i64 noundef %i.jj) #28
  br label %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EED2Ev.exit164

_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EED2Ev.exit164:  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit162, %bb.bp
  %.pn75.pn.pn.pn.pn220226 = phi { ptr, i32 } [ %.pn75.pn.pn.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit162 ], [ %.pn75.pn.pn.pn.pn220225, %bb.bp ]
  %i.jk = load ptr, ptr %15, align 8, !tbaa !121  ; 3 uses
  %.not.i.i.i165 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EED2Ev.exit166, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EED2Ev.exit164
  %i.jl = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !125
  %i.jn = ptrtoint ptr %i.jm to i64
  %i.jo = ptrtoint ptr %i.jk to i64
  %i.jp = sub i64 %i.jn, %i.jo
  call void @_ZdlPvm(ptr noundef nonnull %i.jk, i64 noundef %i.jp) #28
  br label %_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EED2Ev.exit166

_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EED2Ev.exit166: ; preds = %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EED2Ev.exit164, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #25
  br label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EED2Ev.exit166, %bb.y
  %.pn75.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn75.pn.pn.pn.pn220226, %_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EED2Ev.exit166 ], [ %i.bk, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.bs

bb.bs:                                            ; preds = %bb.n, %bb.o, %bb.x, %bb.br, %bb.j, %bb.d
  %.pn75.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %i.h, %bb.d ], [ %.pn75.pn.pn.pn.pn.pn, %bb.br ], [ %i.bj, %bb.x ], [ %i.af, %bb.o ], [ %i.ae, %bb.n ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn75.pn.pn.pn.pn.pn.pn.pn
}

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

declare void @_ZN2cv12GaussianBlurERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN2cv8tracking4impl3tld8resampleERKNS_3MatERKNS_5Rect_IdEERNS_4Mat_IhEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

declare noundef double @_ZNK2cv8tracking4impl3tld11TLDDetector2ScERKNS_4Mat_IhEE(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN2cv8tracking4impl3tld11TLDDetector6detectERKNS_3MatES6_RNS_5Rect_IdEERSt6vectorINS3_12LabeledPatchESaISB_EENS_5Size_IiEE(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), i64) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv8tracking4impl3tld14TrackerTLDImpl7NexpertclENS_5Rect_IdEE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull byval(%"class.cv::Rect_") align 8 %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.b = call noundef double @_ZN2cv8tracking4impl3tld7overlapERKNS_5Rect_IdEES6_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.c = fcmp uge double %i.b, 2.000000e-01
  ret i1 %i.c
}

declare void @_ZN2cv8tracking4impl3tld15TrackerTLDModel18integrateRelabeledERNS_3MatES5_RKSt6vectorINS2_11TLDDetector12LabeledPatchESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(736), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN2cv8tracking4impl3tld14TrackerTLDImpl7Pexpert18additionalExamplesERSt6vectorINS_4Mat_IhEESaIS7_EESA_(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.81", align 8    ; 13 uses
  %4 = alloca %"class.std::vector.81", align 8    ; 10 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %7 = alloca %"class.cv::Rect_", align 16        ; 3 uses
  %8 = alloca %"class.cv::Mat_", align 8          ; 13 uses
  %9 = alloca %"class.cv::Mat_", align 8          ; 9 uses
  %10 = alloca %"class.cv::RotatedRect", align 16 ; 6 uses
  %11 = alloca %"class.cv::RotatedRect", align 16 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !99     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i) #25
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.a, ptr %i.b, align 8, !tbaa !100
  br label %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit:  ; preds = %bb.a, %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.e = load ptr, ptr %2, align 8, !tbaa !99     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100  ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i50, label %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit55, label %.lr.ph.i.i.i.i51

.lr.ph.i.i.i.i51:                                 ; preds = %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit, %.lr.ph.i.i.i.i51
  %.05.i.i.i.i52 = phi ptr [ %i.h, %.lr.ph.i.i.i.i51 ], [ %i.e, %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit ] ; 2 uses
  tail call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i52) #25
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i52, i64 208 ; 2 uses
  %.not.i.i.i.i53 = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i.i.i53, label %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i.i54, label %.lr.ph.i.i.i.i51, !llvm.loop !6

_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i.i54: ; preds = %.lr.ph.i.i.i.i51
  store ptr %i.e, ptr %i.f, align 8, !tbaa !100
  br label %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit55

_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit55: ; preds = %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit, %_ZSt8_DestroyIPN2cv4Mat_IhEES2_EvT_S4_RSaIT0_E.exit.i.i54
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !101
  %i.k = load ptr, ptr %1, align 8, !tbaa !99     ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 208
  %i.p = icmp ult i64 %i.o, 100
  br i1 %i.p, label %bb.b, label %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE7reserveEm.exit

bb.b:                                             ; preds = %_ZNSt6vectorIN2cv4Mat_IhEESaIS2_EE5clearEv.exit55
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !100  ; 2 uses
end_hunk_1
