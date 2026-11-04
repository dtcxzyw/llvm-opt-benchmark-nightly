Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gcpuot?download=true
inline.NumInlined: 1267
inline.NumDeleted: 721
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv6detail14OCVSetupHelperINS_4gapi2ot19GTrackFromFrameImplESt5tupleIJNS_6GFrameENS_6GArrayINS_5Rect_IiEEEENS7_IiEEfEEE10setup_implIJLi0ELi1ELi2ELi3EEEEDTcmclL_ZNS4_5setupENS_10GFrameDescENS_10GArrayDescESG_fRSt10shared_ptrIN3vas2ot13ObjectTrackerEERKSt6vectorINS_11GCompileArgESaISO_EEEspclsr6detailE11get_in_metaI_SUBSTPACK_Efp_fp0_T_EclL_ZSt7declvalISM_EDTcl9__declvalIT_ELi0EEEvEEfp2_Ecvv_EERKSN_INS_4util7variantIJNSY_9monostateENS_8GMatDescENS_11GScalarDescESG_NS_11GOpaqueDescESF_EEESaIS14_EERKSN_INS_4GArgESaIS19_EERS19_SS_NS0_3SeqIJXspT_EEEE:bb.a
_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i24: ; preds = %_ZN2cv6detail11get_in_metaINS_6GArrayINS_5Rect_IiEEEEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS7_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSE_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISM_EERKSD_INS_4GArgESaISR_EEi.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.o = load i64, ptr %i.n, align 8, !tbaa !125
  %.not.i.i25 = icmp eq i64 %i.o, 3
  br i1 %.not.i.i25, label %_ZN2cv6detail11get_in_metaINS_6GArrayIiEEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS5_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSB_INS_4GArgESaISP_EEi.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %6, align 8, !tbaa !33
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %6) #26
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.body

_ZN2cv6detail11get_in_metaINS_6GArrayIiEEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS5_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSB_INS_4GArgESaISP_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i24
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !74
  %i.s = load ptr, ptr %1, align 8, !tbaa !75     ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 4                   ; 2 uses
  %.not.i.i.i29 = icmp ugt i64 %i.w, 3
  br i1 %.not.i.i.i29, label %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i, label %.invoke

.invoke:                                          ; preds = %_ZN2cv6detail11get_in_metaINS_6GArrayIiEEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS5_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSB_INS_4GArgESaISP_EEi.exit, %_ZN2cv6detail11get_in_metaINS_6GArrayINS_5Rect_IiEEEEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS7_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSE_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISM_EERKSD_INS_4GArgESaISR_EEi.exit, %bb.e, %bb.a
  %i.x = phi i64 [ 2, %_ZN2cv6detail11get_in_metaINS_6GArrayINS_5Rect_IiEEEEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS7_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSE_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISM_EERKSD_INS_4GArgESaISR_EEi.exit ], [ 1, %bb.e ], [ 0, %bb.a ], [ 3, %_ZN2cv6detail11get_in_metaINS_6GArrayIiEEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS5_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSB_INS_4GArgESaISP_EEi.exit ]
  %i.y = phi i64 [ %i.g, %_ZN2cv6detail11get_in_metaINS_6GArrayINS_5Rect_IiEEEEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS7_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSE_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISM_EERKSD_INS_4GArgESaISR_EEi.exit ], [ %i.g, %bb.e ], [ %i.g, %bb.a ], [ %i.w, %_ZN2cv6detail11get_in_metaINS_6GArrayIiEEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS5_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSB_INS_4GArgESaISP_EEi.exit ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.11, i64 noundef %i.x, i64 noundef %i.y) #26
          to label %.cont unwind label %bb.aa

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i:     ; preds = %_ZN2cv6detail11get_in_metaINS_6GArrayIiEEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS5_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSB_INS_4GArgESaISP_EEi.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !48  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.i.i.i

_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.i.i.i: ; preds = %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  %i.ac = tail call ptr @__dynamic_cast(ptr nonnull %i.aa, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implIfEE, i64 0) #22 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %bb.n

_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i: ; preds = %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.i.i.i, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %5, align 8, !tbaa !33
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  unreachable

bb.m:                                             ; preds = %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.body

bb.n:                                             ; preds = %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !76
  invoke void @_ZN2cv4gapi2ot19GTrackFromFrameImpl5setupENS_10GFrameDescENS_10GArrayDescES4_fRSt10shared_ptrIN3vas2ot13ObjectTrackerEERKSt6vectorINS_11GCompileArgESaISC_EE(i64 %.sroa.01.0.copyload.i, i32 %.sroa.22.0.copyload.i, float noundef %i.af, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.o unwind label %bb.aa

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !61, !noalias !188 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %9, align 16, !tbaa !49, !noalias !188
  store <2 x ptr> %i.ai, ptr %4, align 16, !tbaa !49, !alias.scope !188
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i, label %_ZN2cv6detail9WrapValueISt10shared_ptrIN3vas2ot13ObjectTrackerEEvE4wrapERKS6_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38, !noalias !188
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !65, !noalias !188
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !65, !noalias !188
  br label %_ZN2cv6detail9WrapValueISt10shared_ptrIN3vas2ot13ObjectTrackerEEvE4wrapERKS6_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.an = atomicrmw volatile add ptr %i.aj, i32 1 acq_rel, align 4, !noalias !188 ; 0 uses
  br label %_ZN2cv6detail9WrapValueISt10shared_ptrIN3vas2ot13ObjectTrackerEEvE4wrapERKS6_.exit.i

_ZN2cv6detail9WrapValueISt10shared_ptrIN3vas2ot13ObjectTrackerEEvE4wrapERKS6_.exit.i: ; preds = %bb.r, %bb.q, %bb.o
  %i.ao = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.t unwind label %bb.s       ; 3 uses

bb.s:                                             ; preds = %_ZN2cv6detail9WrapValueISt10shared_ptrIN3vas2ot13ObjectTrackerEEvE4wrapERKS6_.exit.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN3vas2ot13ObjectTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

bb.t:                                             ; preds = %_ZN2cv6detail9WrapValueISt10shared_ptrIN3vas2ot13ObjectTrackerEEvE4wrapERKS6_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implISt10shared_ptrIN3vas2ot13ObjectTrackerEEEE, i64 16), ptr %i.ao, align 8, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load <2 x ptr>, ptr %4, align 16, !tbaa !49
  store <2 x ptr> %i.ar, ptr %i.aq, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  store i64 0, ptr %2, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !48 ; 3 uses
  store ptr %i.ao, ptr %i.as, align 8, !tbaa !48
  %.not.i.i.i.i.i.i35 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i35, label %_ZN2cv4GArgD2Ev.exit, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i: ; preds = %bb.t
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at) #22, !inline_history !8
  br label %_ZN2cv4GArgD2Ev.exit

_ZN2cv4GArgD2Ev.exit:                             ; preds = %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i, %bb.t
  %i.ax = load ptr, ptr %i.ag, align 8, !tbaa !61 ; 8 uses
  %.not.i.i37 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i37, label %_ZNSt12__shared_ptrIN3vas2ot13ObjectTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN2cv4GArgD2Ev.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.ay, align 8, !tbaa !63
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !64
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !33
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #22, !inline_history !6
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #22, !inline_history !6
  br label %_ZNSt12__shared_ptrIN3vas2ot13ObjectTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i38 = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i38, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !65
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i = phi i32 [ %i.bb, %bb.x ], [ %i.bl, %bb.y ]
  %i.bm = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bm, label %bb.z, label %_ZNSt12__shared_ptrIN3vas2ot13ObjectTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #22
  br label %_ZNSt12__shared_ptrIN3vas2ot13ObjectTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN3vas2ot13ObjectTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN2cv4GArgD2Ev.exit, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  ret void

bb.aa:                                            ; preds = %.invoke, %bb.n
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %bb.d, %bb.k, %bb.m, %bb.aa, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.m ], [ %i.i, %bb.d ], [ %i.m, %bb.h ], [ %i.p, %bb.k ], [ %i.bn, %bb.aa ], [ %i.ap, %bb.s ]
  call void @_ZNSt12__shared_ptrIN3vas2ot13ObjectTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4gapi2ot19GTrackFromFrameImpl5setupENS_10GFrameDescENS_10GArrayDescES4_fRSt10shared_ptrIN3vas2ot13ObjectTrackerEERKSt6vectorINS_11GCompileArgESaISC_EE(i64 %0, i32 %1, float noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %6 = alloca %"struct.cv::gapi::ot::ObjectTrackerParams", align 8 ; 6 uses
  %7 = alloca %"class.cv::util::optional", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.17", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.a = load ptr, ptr %4, align 8, !tbaa !127, !noalias !191 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !127, !noalias !191 ; 2 uses
  %.not12.i = icmp eq ptr %i.a, %i.c
  br i1 %.not12.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.critedge.i
  %.sroa.06.013.i = phi ptr [ %i.v, %.critedge.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !58, !noalias !191
  %i.f = icmp eq i64 %i.e, 32
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %.critedge.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %.lr.ph.i
  %i.g = load ptr, ptr %.sroa.06.013.i, align 8, !tbaa !57, !noalias !191 ; 2 uses
  %i.h = load i128, ptr %i.g, align 1
  %i.i = xor i128 %i.h, 132120151299605599006245010065985533539
  %i.j = getelementptr i8, ptr %i.g, i64 16
  %i.k = load i128, ptr %i.j, align 1
  %i.l = xor i128 %i.k, 153429156328743598813133295823086706548
  %i.m = or i128 %i.i, %i.l
  %i.n = icmp ne i128 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, label %.critedge.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48, !noalias !191 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN2cv4util8any_castINS_4gapi2ot19ObjectTrackerParamsEEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv4util8any_castINS_4gapi2ot19ObjectTrackerParamsEEEPKT_PKNS0_3anyE.exit.i.i.i

_ZN2cv4util8any_castINS_4gapi2ot19ObjectTrackerParamsEEEPKT_PKNS0_3anyE.exit.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i
  %i.t = tail call ptr @__dynamic_cast(ptr nonnull %i.r, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implINS_4gapi2ot19ObjectTrackerParamsEEE, i64 0) #22, !noalias !191 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN2cv4util8any_castINS_4gapi2ot19ObjectTrackerParamsEEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %bb.d

_ZN2cv4util8any_castINS_4gapi2ot19ObjectTrackerParamsEEEPKT_PKNS0_3anyE.exit.thread.i.i.i: ; preds = %_ZN2cv4util8any_castINS_4gapi2ot19ObjectTrackerParamsEEEPKT_PKNS0_3anyE.exit.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !191
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %5, align 8, !tbaa !33, !noalias !191
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
          to label %bb.b unwind label %bb.c, !noalias !191

bb.b:                                             ; preds = %_ZN2cv4util8any_castINS_4gapi2ot19ObjectTrackerParamsEEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  unreachable

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.c ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %_ZN2cv4util8any_castINS_4gapi2ot19ObjectTrackerParamsEEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22, !noalias !191
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !191
  br label %common.resume

.critedge.i:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i, i64 72 ; 2 uses
  %.not.i = icmp eq ptr %i.v, %i.c
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %.critedge.i, %bb.a
  store i64 0, ptr %7, align 8, !tbaa !129, !alias.scope !191
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.e

bb.d:                                             ; preds = %_ZN2cv4util8any_castINS_4gapi2ot19ObjectTrackerParamsEEEPKT_PKNS0_3anyE.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 1, ptr %7, align 8, !tbaa !129, !alias.scope !191
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.y, ptr noundef nonnull align 4 dereferenceable(12) %i.x, i64 12, i1 false), !tbaa.struct !131
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.sroa.gep22 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.34.0.i.sroa.speculate.load.true23 = load i8, ptr %.sroa.gep22, align 8, !tbaa !130
  %.val26 = load i64, ptr %i.z, align 8
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %.sink33 = phi i64 [ 4294967295, %.loopexit ], [ %.val26, %bb.d ] ; 2 uses
  %.sink = phi i8 [ 1, %.loopexit ], [ %.sroa.34.0.i.sroa.speculate.load.true23, %bb.d ]
  %i.aa = phi ptr [ %i.w, %.loopexit ], [ %i.z, %bb.d ]
  %10 = phi ptr [ @_ZN2cv4util7variantIJNS0_8optionalINS_4gapi2ot19ObjectTrackerParamsEE7nothingES5_EE6dtor_hIS7_E4helpEPNSt15aligned_storageILm12ELm4EE4typeE, %.loopexit ], [ @_ZN2cv4util7variantIJNS0_8optionalINS_4gapi2ot19ObjectTrackerParamsEE7nothingES5_EE6dtor_hIS5_E4helpEPNSt15aligned_storageILm12ELm4EE4typeE, %bb.d ]
  store i64 %.sink33, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %.sink, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void %10(ptr noundef nonnull %i.aa)
          to label %_ZN2cv4util8optionalINS_4gapi2ot19ObjectTrackerParamsEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #23
  unreachable

_ZN2cv4util8optionalINS_4gapi2ot19ObjectTrackerParamsEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %.mask = and i64 %.sink33, -4294967296
  %i.ad = icmp eq i64 %.mask, 4294967296
  br i1 %i.ad, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZN2cv4util8optionalINS_4gapi2ot19ObjectTrackerParamsEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv4gapi2ot19GTrackFromFrameImpl5setupENS_10GFrameDescENS_10GArrayDescES4_fRSt10shared_ptrIN3vas2ot13ObjectTrackerEERKSt6vectorINS_11GCompileArgESaISC_EE, ptr noundef nonnull @.str.5, i32 noundef 105) #26
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %8, align 8, !tbaa !57    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !38
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.af, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume

bb.l:                                             ; preds = %_ZN2cv4util8optionalINS_4gapi2ot19ObjectTrackerParamsEED2Ev.exit
  call fastcc void @_ZN2cv4gapi2ot12_GLOBAL__N_115GTrackImplSetupENS_10GArrayDescES3_fRSt10shared_ptrIN3vas2ot13ObjectTrackerEERKNS1_19ObjectTrackerParamsE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(9) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cv4gapi2ot12_GLOBAL__N_115GTrackImplSetupENS_10GArrayDescES3_fRSt10shared_ptrIN3vas2ot13ObjectTrackerEERKNS1_19ObjectTrackerParamsE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(9) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__shared_ptr.46", align 16 ; 5 uses
  %3 = alloca %"class.vas::ot::ObjectTracker::Builder", align 8 ; 9 uses
  %4 = alloca %"class.std::unique_ptr.121", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN3vas2ot13ObjectTracker7BuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.b = load <2 x i32>, ptr %1, align 4, !tbaa !65
  store <2 x i32> %i.b, ptr %i.a, align 4, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i8, ptr %i.c, align 4, !tbaa !194, !range !45, !noundef !46
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 %i.d, ptr %i.e, align 4, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNK3vas2ot13ObjectTracker7Builder5BuildENS0_12TrackingTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.121") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 5)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt12__shared_ptrIN3vas2ot13ObjectTrackerELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61   ; 8 uses
  %i.h = load <2 x ptr>, ptr %0, align 8, !tbaa !49
  %i.i = load <2 x ptr>, ptr %2, align 16, !tbaa !49
  store <2 x ptr> %i.i, ptr %0, align 8, !tbaa !49
  store <2 x ptr> %i.h, ptr %2, align 16, !tbaa !49
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !64
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #22, !inline_history !192
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #22, !inline_history !192
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !65
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !66

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.d, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.y = load ptr, ptr %4, align 8, !tbaa !132    ; 3 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3vas2ot13ObjectTrackerESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN3vas2ot13ObjectTrackerEEclEPS2_.exit.i

_ZNKSt14default_deleteIN3vas2ot13ObjectTrackerEEclEPS2_.exit.i: ; preds = %bb.i
  call void @_ZN3vas2ot13ObjectTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 8) #24
  br label %_ZNSt10unique_ptrIN3vas2ot13ObjectTrackerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN3vas2ot13ObjectTrackerESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.i, %_ZNKSt14default_deleteIN3vas2ot13ObjectTrackerEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN3vas2ot13ObjectTracker7BuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.j:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3vas2ot13ObjectTrackerESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.k ], [ %i.z, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN3vas2ot13ObjectTracker7BuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_8optionalINS_4gapi2ot19ObjectTrackerParamsEE7nothingES5_EE6dtor_hIS7_E4helpEPNSt15aligned_storageILm12ELm4EE4typeE(ptr noundef %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_8optionalINS_4gapi2ot19ObjectTrackerParamsEE7nothingES5_EE6dtor_hIS5_E4helpEPNSt15aligned_storageILm12ELm4EE4typeE(ptr noundef %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN3vas2ot13ObjectTracker7BuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare void @_ZNK3vas2ot13ObjectTracker7Builder5BuildENS0_12TrackingTypeE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.121") align 8, ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN3vas2ot13ObjectTrackerESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !132    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN3vas2ot13ObjectTrackerEEclEPS2_.exit

_ZNKSt14default_deleteIN3vas2ot13ObjectTrackerEEclEPS2_.exit: ; preds = %bb.a
  tail call void @_ZN3vas2ot13ObjectTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #24
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN3vas2ot13ObjectTrackerEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN3vas2ot13ObjectTracker7BuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN3vas2ot13ObjectTrackerELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !132    ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !61
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt16allocator_traitsISaISt19_Sp_counted_deleterIPN3vas2ot13ObjectTrackerESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSB_m.exit.i

_ZNSt16allocator_traitsISaISt19_Sp_counted_deleterIPN3vas2ot13ObjectTrackerESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSB_m.exit.i: ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN3vas2ot13ObjectTrackerESt14default_deleteIS6_EEEOSt10unique_ptrIT_T0_E.exit unwind label %bb.p ; 13 uses

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN3vas2ot13ObjectTrackerESt14default_deleteIS6_EEEOSt10unique_ptrIT_T0_E.exit: ; preds = %_ZNSt16allocator_traitsISaISt19_Sp_counted_deleterIPN3vas2ot13ObjectTrackerESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSB_m.exit.i
  %i.e = load ptr, ptr %1, align 8, !tbaa !132
  store ptr null, ptr %1, align 8, !tbaa !132
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store i32 1, ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.g, align 4, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN3vas2ot13ObjectTrackerESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.h, align 8, !tbaa !209
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.i
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21, label %bb.b

bb.b:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN3vas2ot13ObjectTrackerESt14default_deleteIS6_EEEOSt10unique_ptrIT_T0_E.exit
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.f, align 8, !tbaa !65
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !61
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.d, %bb.c
  %i.l = phi ptr [ %.pr.pre.i, %bb.d ], [ %i.i, %bb.c ] ; 8 uses
  %.not8.i = icmp eq ptr %i.l, null
  br i1 %.not8.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.m, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !64
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #22, !inline_history !208
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #22, !inline_history !208
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i9.i = icmp eq i8 %i.x, 0
  br i1 %.not.i9.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !65
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i32 [ %i.p, %bb.h ], [ %i.z, %bb.i ]
  %i.aa = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.aa, label %bb.j, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, !prof !66

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.j
  store ptr %i.d, ptr %i.b, align 8, !tbaa !61
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21: ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN3vas2ot13ObjectTrackerESt14default_deleteIS6_EEEOSt10unique_ptrIT_T0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21
  store i32 0, ptr %i.ab, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !64
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #22, !inline_history !9
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #22, !inline_history !9
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i7 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !65
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.ae, %bb.m ], [ %i.ao, %bb.n ]
  %i.ap = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ap, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %_ZNSt16allocator_traitsISaISt19_Sp_counted_deleterIPN3vas2ot13ObjectTrackerESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSB_m.exit.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #22
  resume { ptr, i32 } %i.aq
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN3vas2ot13ObjectTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !64
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !9
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
end_hunk_0
begin_hunk_1_@_ZN2cv6detail14OCVSetupHelperINS_4gapi2ot17GTrackFromMatImplESt5tupleIJNS_4GMatENS_6GArrayINS_5Rect_IiEEEENS7_IiEEfEEE10setup_implIJLi0ELi1ELi2ELi3EEEEDTcmclL_ZNS4_5setupENS_8GMatDescENS_10GArrayDescESG_fRSt10shared_ptrIN3vas2ot13ObjectTrackerEERKSt6vectorINS_11GCompileArgESaISO_EEEspclsr6detailE11get_in_metaI_SUBSTPACK_Efp_fp0_T_EclL_ZSt7declvalISM_EDTcl9__declvalIT_ELi0EEEvEEfp2_Ecvv_EERKSN_INS_4util7variantIJNSY_9monostateESF_NS_11GScalarDescESG_NS_11GOpaqueDescENS_10GFrameDescEEEESaIS14_EERKSN_INS_4GArgESaIS19_EERS19_SS_NS0_3SeqIJXspT_EEEE:bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.11, i64 noundef %i.u, i64 noundef %i.v) #26
          to label %.cont unwind label %bb.z

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i:     ; preds = %_ZN2cv6detail11get_in_metaINS_6GArrayIiEEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS5_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSB_INS_4GArgESaISP_EEi.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.i.i.i

_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.i.i.i: ; preds = %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  %i.z = call ptr @__dynamic_cast(ptr nonnull %i.x, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implIfEE, i64 0) #22 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %bb.k

_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i: ; preds = %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.i.i.i, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %5, align 8, !tbaa !33
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  unreachable

bb.j:                                             ; preds = %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.body

bb.k:                                             ; preds = %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !76
  invoke void @_ZN2cv4gapi2ot17GTrackFromMatImpl5setupENS_8GMatDescENS_10GArrayDescES4_fRSt10shared_ptrIN3vas2ot13ObjectTrackerEERKSt6vectorINS_11GCompileArgESaISC_EE(ptr noundef nonnull align 8 %9, float noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.l unwind label %bb.z

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !96 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i23, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !95
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #24
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !61, !noalias !259 ; 2 uses
  %i.am = load <2 x ptr>, ptr %8, align 16, !tbaa !49, !noalias !259
  store <2 x ptr> %i.am, ptr %4, align 16, !tbaa !49, !alias.scope !259
  %.not.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i, label %_ZN2cv6detail9WrapValueISt10shared_ptrIN3vas2ot13ObjectTrackerEEvE4wrapERKS6_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38, !noalias !259
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !65, !noalias !259
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !65, !noalias !259
  br label %_ZN2cv6detail9WrapValueISt10shared_ptrIN3vas2ot13ObjectTrackerEEvE4wrapERKS6_.exit.i

bb.p:                                             ; preds = %bb.n
  %i.ar = atomicrmw volatile add ptr %i.an, i32 1 acq_rel, align 4, !noalias !259 ; 0 uses
  br label %_ZN2cv6detail9WrapValueISt10shared_ptrIN3vas2ot13ObjectTrackerEEvE4wrapERKS6_.exit.i

_ZN2cv6detail9WrapValueISt10shared_ptrIN3vas2ot13ObjectTrackerEEvE4wrapERKS6_.exit.i: ; preds = %bb.p, %bb.o, %_ZN2cv8GMatDescD2Ev.exit
  %i.as = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.r unwind label %bb.q       ; 3 uses

bb.q:                                             ; preds = %_ZN2cv6detail9WrapValueISt10shared_ptrIN3vas2ot13ObjectTrackerEEvE4wrapERKS6_.exit.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN3vas2ot13ObjectTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZN2cv8GMatDescD2Ev.exit31

bb.r:                                             ; preds = %_ZN2cv6detail9WrapValueISt10shared_ptrIN3vas2ot13ObjectTrackerEEvE4wrapERKS6_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implISt10shared_ptrIN3vas2ot13ObjectTrackerEEEE, i64 16), ptr %i.as, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load <2 x ptr>, ptr %4, align 16, !tbaa !49
  store <2 x ptr> %i.av, ptr %i.au, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  store i64 0, ptr %2, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !48 ; 3 uses
  store ptr %i.as, ptr %i.aw, align 8, !tbaa !48
  %.not.i.i.i.i.i.i26 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i.i26, label %_ZN2cv4GArgD2Ev.exit, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i: ; preds = %bb.r
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax) #22, !inline_history !8
  br label %_ZN2cv4GArgD2Ev.exit

_ZN2cv4GArgD2Ev.exit:                             ; preds = %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i, %bb.r
  %i.bb = load ptr, ptr %i.ak, align 8, !tbaa !61 ; 8 uses
  %.not.i.i28 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i28, label %_ZNSt12__shared_ptrIN3vas2ot13ObjectTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4GArgD2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 4 uses
  %i.bd = load atomic i64, ptr %i.bc acquire, align 8 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 4294967297
  %i.bf = trunc i64 %i.bd to i32                  ; 2 uses
  br i1 %i.be, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bc, align 8, !tbaa !63
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 0, ptr %i.bg, align 4, !tbaa !64
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !33
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #22, !inline_history !6
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !33
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #22, !inline_history !6
  br label %_ZNSt12__shared_ptrIN3vas2ot13ObjectTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i29 = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i29, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = add nsw i32 %i.bf, -1
  store i32 %i.bo, ptr %i.bc, align 8, !tbaa !65
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bp = atomicrmw volatile add ptr %i.bc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bf, %bb.v ], [ %i.bp, %bb.w ]
  %i.bq = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bq, label %bb.x, label %_ZNSt12__shared_ptrIN3vas2ot13ObjectTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #22
  br label %_ZNSt12__shared_ptrIN3vas2ot13ObjectTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN3vas2ot13ObjectTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN2cv4GArgD2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret void

bb.y:                                             ; preds = %bb.a
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit31

bb.z:                                             ; preds = %.invoke, %bb.k
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.j, %bb.z, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.m, %bb.h ], [ %i.bs, %bb.z ], [ %i.aa, %bb.j ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !96 ; 3 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i30, label %_ZN2cv8GMatDescD2Ev.exit31, label %bb.aa

bb.aa:                                            ; preds = %.body
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !95
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #24
  br label %_ZN2cv8GMatDescD2Ev.exit31

_ZN2cv8GMatDescD2Ev.exit31:                       ; preds = %bb.q, %bb.aa, %.body, %bb.y
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.aa ], [ %i.br, %bb.y ], [ %eh.lpad-body, %.body ], [ %i.at, %bb.q ]
  call void @_ZNSt12__shared_ptrIN3vas2ot13ObjectTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4gapi2ot17GTrackFromMatImpl5setupENS_8GMatDescENS_10GArrayDescES4_fRSt10shared_ptrIN3vas2ot13ObjectTrackerEERKSt6vectorINS_11GCompileArgESaISC_EE(ptr noundef align 8 %0, float noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %5 = alloca %"struct.cv::gapi::ot::ObjectTrackerParams", align 8 ; 6 uses
  %6 = alloca %"class.cv::util::optional", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.17", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.a = load ptr, ptr %3, align 8, !tbaa !127, !noalias !262 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !127, !noalias !262 ; 2 uses
  %.not12.i = icmp eq ptr %i.a, %i.c
  br i1 %.not12.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.critedge.i
  %.sroa.06.013.i = phi ptr [ %i.v, %.critedge.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !58, !noalias !262
  %i.f = icmp eq i64 %i.e, 32
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %.critedge.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %.lr.ph.i
  %i.g = load ptr, ptr %.sroa.06.013.i, align 8, !tbaa !57, !noalias !262 ; 2 uses
  %i.h = load i128, ptr %i.g, align 1
  %i.i = xor i128 %i.h, 132120151299605599006245010065985533539
  %i.j = getelementptr i8, ptr %i.g, i64 16
  %i.k = load i128, ptr %i.j, align 1
  %i.l = xor i128 %i.k, 153429156328743598813133295823086706548
  %i.m = or i128 %i.i, %i.l
  %i.n = icmp ne i128 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, label %.critedge.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48, !noalias !262 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN2cv4util8any_castINS_4gapi2ot19ObjectTrackerParamsEEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv4util8any_castINS_4gapi2ot19ObjectTrackerParamsEEEPKT_PKNS0_3anyE.exit.i.i.i

_ZN2cv4util8any_castINS_4gapi2ot19ObjectTrackerParamsEEEPKT_PKNS0_3anyE.exit.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i
  %i.t = tail call ptr @__dynamic_cast(ptr nonnull %i.r, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implINS_4gapi2ot19ObjectTrackerParamsEEE, i64 0) #22, !noalias !262 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN2cv4util8any_castINS_4gapi2ot19ObjectTrackerParamsEEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %bb.d

_ZN2cv4util8any_castINS_4gapi2ot19ObjectTrackerParamsEEEPKT_PKNS0_3anyE.exit.thread.i.i.i: ; preds = %_ZN2cv4util8any_castINS_4gapi2ot19ObjectTrackerParamsEEEPKT_PKNS0_3anyE.exit.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !262
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %4, align 8, !tbaa !33, !noalias !262
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
          to label %bb.b unwind label %bb.c, !noalias !262

bb.b:                                             ; preds = %_ZN2cv4util8any_castINS_4gapi2ot19ObjectTrackerParamsEEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  unreachable

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.c ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %_ZN2cv4util8any_castINS_4gapi2ot19ObjectTrackerParamsEEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22, !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !262
  br label %common.resume

.critedge.i:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i, i64 72 ; 2 uses
  %.not.i = icmp eq ptr %i.v, %i.c
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %.critedge.i, %bb.a
  store i64 0, ptr %6, align 8, !tbaa !129, !alias.scope !262
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.e

bb.d:                                             ; preds = %_ZN2cv4util8any_castINS_4gapi2ot19ObjectTrackerParamsEEEPKT_PKNS0_3anyE.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 1, ptr %6, align 8, !tbaa !129, !alias.scope !262
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.y, ptr noundef nonnull align 4 dereferenceable(12) %i.x, i64 12, i1 false), !tbaa.struct !131
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.gep19 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.34.0.i.sroa.speculate.load.true20 = load i8, ptr %.sroa.gep19, align 8, !tbaa !130
  %.val23 = load i64, ptr %i.z, align 8
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %.sink30 = phi i64 [ 4294967295, %.loopexit ], [ %.val23, %bb.d ] ; 2 uses
  %.sink = phi i8 [ 1, %.loopexit ], [ %.sroa.34.0.i.sroa.speculate.load.true20, %bb.d ]
  %i.aa = phi ptr [ %i.w, %.loopexit ], [ %i.z, %bb.d ]
  %9 = phi ptr [ @_ZN2cv4util7variantIJNS0_8optionalINS_4gapi2ot19ObjectTrackerParamsEE7nothingES5_EE6dtor_hIS7_E4helpEPNSt15aligned_storageILm12ELm4EE4typeE, %.loopexit ], [ @_ZN2cv4util7variantIJNS0_8optionalINS_4gapi2ot19ObjectTrackerParamsEE7nothingES5_EE6dtor_hIS5_E4helpEPNSt15aligned_storageILm12ELm4EE4typeE, %bb.d ]
  store i64 %.sink30, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 %.sink, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void %9(ptr noundef nonnull %i.aa)
          to label %_ZN2cv4util8optionalINS_4gapi2ot19ObjectTrackerParamsEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #23
  unreachable

_ZN2cv4util8optionalINS_4gapi2ot19ObjectTrackerParamsEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.ad = icmp ult i64 %.sink30, 4294967296
  br i1 %i.ad, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZN2cv4util8optionalINS_4gapi2ot19ObjectTrackerParamsEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv4gapi2ot19GTrackFromFrameImpl5setupENS_10GFrameDescENS_10GArrayDescES4_fRSt10shared_ptrIN3vas2ot13ObjectTrackerEERKSt6vectorINS_11GCompileArgESaISC_EE, ptr noundef nonnull @.str.5, i32 noundef 66) #26
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %7, align 8, !tbaa !57    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !38
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.af, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

bb.l:                                             ; preds = %_ZN2cv4util8optionalINS_4gapi2ot19ObjectTrackerParamsEED2Ev.exit
  call fastcc void @_ZN2cv4gapi2ot12_GLOBAL__N_115GTrackImplSetupENS_10GArrayDescES3_fRSt10shared_ptrIN3vas2ot13ObjectTrackerEERKNS1_19ObjectTrackerParamsE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(9) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind noalias writable sret(%"struct.cv::GMatDesc") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !122
  %i.d = load ptr, ptr %1, align 8, !tbaa !123    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 56                  ; 2 uses
  %.not.i.i = icmp ugt i64 %i.h, %i.a
  br i1 %.not.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.11, i64 noundef %i.a, i64 noundef %i.h) #26
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %i.a ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !125
  %.not.i = icmp eq i64 %i.j, 1
  br i1 %.not.i, label %_ZN2cv4util3getINS_8GMatDescEJNS0_9monostateES2_NS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEERKT_RKNS0_7variantIJDpT0_EEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %4, align 8, !tbaa !33
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.k

_ZN2cv4util3getINS_8GMatDescEJNS0_9monostateES2_NS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEERKT_RKNS0_7variantIJDpT0_EEE.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 17, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !94   ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !96   ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv4util3getINS_8GMatDescEJNS0_9monostateES2_NS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEERKT_RKNS0_7variantIJDpT0_EEE.exit
  %i.u = icmp ugt i64 %i.t, 9223372036854775804
  br i1 %i.u, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !66

.noexc.i.i.i:                                     ; preds = %bb.f
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #25
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !135 ; 2 uses
  %.pre1 = load ptr, ptr %i.o, align 8, !tbaa !135
  %.pre2 = ptrtoint ptr %.pre1 to i64
  %.pre3 = ptrtoint ptr %.pre to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %_ZN2cv4util3getINS_8GMatDescEJNS0_9monostateES2_NS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEERKT_RKNS0_7variantIJDpT0_EEE.exit
  %.pre-phi4 = phi i64 [ %.pre3, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.s, %_ZN2cv4util3getINS_8GMatDescEJNS0_9monostateES2_NS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEERKT_RKNS0_7variantIJDpT0_EEE.exit ]
  %.pre-phi = phi i64 [ %.pre2, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.r, %_ZN2cv4util3getINS_8GMatDescEJNS0_9monostateES2_NS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEERKT_RKNS0_7variantIJDpT0_EEE.exit ]
  %i.w = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.q, %_ZN2cv4util3getINS_8GMatDescEJNS0_9monostateES2_NS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEERKT_RKNS0_7variantIJDpT0_EEE.exit ] ; 2 uses
  %i.x = phi ptr [ %i.v, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %_ZN2cv4util3getINS_8GMatDescEJNS0_9monostateES2_NS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEERKT_RKNS0_7variantIJDpT0_EEE.exit ] ; 5 uses
  store ptr %i.x, ptr %i.m, align 8, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.y, ptr %i.z, align 8, !tbaa !95
  %i.aa = sub i64 %.pre-phi, %.pre-phi4           ; 4 uses
  %i.ab = icmp sgt i64 %i.aa, 4
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !136

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.x, ptr align 4 %i.w, i64 %i.aa, i1 false)
  br label %_ZN2cv8GMatDescC2ERKS0_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.aa, 4
  br i1 %i.ac, label %bb.j, label %_ZN2cv8GMatDescC2ERKS0_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = load i32, ptr %i.w, align 4, !tbaa !65
  store i32 %i.ad, ptr %i.x, align 4, !tbaa !65
  br label %_ZN2cv8GMatDescC2ERKS0_.exit

_ZN2cv8GMatDescC2ERKS0_.exit:                     ; preds = %bb.h, %bb.i, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds i8, ptr %i.x, i64 %i.aa
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi2ot13GTrackFromMatESt5tupleIJNS_4GMatENS_6GArrayINS_5Rect_IiEEEENS7_IiEEfEES5_IJSA_SB_NS7_ImEESB_EEE15getOutMeta_implIJLi0ELi1ELi2ELi3EEJLi0ELi1ELi2ELi3EEEESt6vectorINS_4util7variantIJNSI_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISQ_EERKSS_RKSH_INS_4GArgESaISV_EENS0_3SeqIJXspT_EEEENS10_IJXspT0_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.12") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %4 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %5 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %6 = alloca %"struct.cv::GMatDesc", align 8     ; 5 uses
  %7 = alloca [4 x %"class.cv::util::variant.136"], align 8 ; 25 uses
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.c = load ptr, ptr %1, align 8, !tbaa !123    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %.invoke

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !125
  %.not.i.i = icmp eq i64 %i.i, 3
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_6GArrayINS_5Rect_IiEEEEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS7_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSE_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISM_EERKSD_INS_4GArgESaISR_EEi.exit, label %bb.b

bb.b:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %5, align 8, !tbaa !33
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.body

_ZN2cv6detail11get_in_metaINS_6GArrayINS_5Rect_IiEEEEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS7_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSE_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISM_EERKSD_INS_4GArgESaISR_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %.not.i.i.i15.not = icmp eq i64 %i.f, 112
  br i1 %.not.i.i.i15.not, label %.invoke, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i16

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i16: ; preds = %_ZN2cv6detail11get_in_metaINS_6GArrayINS_5Rect_IiEEEEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS7_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSE_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISM_EERKSD_INS_4GArgESaISR_EEi.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.l = load i64, ptr %i.k, align 8, !tbaa !125
  %.not.i.i17 = icmp eq i64 %i.l, 3
end_hunk_1
