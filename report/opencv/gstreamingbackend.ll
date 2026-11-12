Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gstreamingbackend?download=true
inline.NumInlined: 3013
inline.NumDeleted: 1492
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv14GKernelPackage13includeHelperI6GOCVUVEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv:bb.a
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = load ptr, ptr %i.e, align 8, !tbaa !81  ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i29, label %_ZN2cv4gapi9streaming16GStreamingKernelD2Ev.exit31, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = invoke noundef zeroext i1 %i.cn(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZN2cv4gapi9streaming16GStreamingKernelD2Ev.exit31 unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #32
  unreachable

_ZN2cv4gapi9streaming16GStreamingKernelD2Ev.exit31: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.ad

bb.w:                                             ; preds = %_ZN2cv4gapi9streaming16GStreamingKernelD2Ev.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

bb.x:                                             ; preds = %.noexc15
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.p
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.x
  %i.cv = load i64, ptr %i.p, align 8, !tbaa !42
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.w
  %.pn = phi { ptr, i32 } [ %i.cr, %bb.w ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.cs, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ac

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.z:                                             ; preds = %_ZSt9make_pairIRN2cv4gapi8GBackendERNS0_11GKernelImplEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.aa:                                            ; preds = %.noexc19
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %6, align 8, !tbaa !55    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.z
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.aa
  %i.dc = load i64, ptr %i.z, align 8, !tbaa !42
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.z
  %.pn10 = phi { ptr, i32 } [ %i.cy, %bb.z ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %i.cz, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @_ZNSt4pairIN2cv4gapi8GBackendENS0_11GKernelImplEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #28
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %bb.y
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ], [ %i.cx, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn10.pn.pn = phi { ptr, i32 } [ %.pn10.pn, %bb.ab ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  call void @_ZN2cv11GKernelImplD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #28
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZN2cv4gapi9streaming16GStreamingKernelD2Ev.exit31
  %.pn10.pn.pn.pn = phi { ptr, i32 } [ %.pn10.pn.pn, %bb.ac ], [ %i.cm, %_ZN2cv4gapi9streaming16GStreamingKernelD2Ev.exit31 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @_ZN2cv4gapi8GBackendD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn10.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi9streaming3GUVESt5tupleIJNS_6GFrameEEENS_4GMatEE10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.307") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi9streaming3GUVESt5tupleIJNS_6GFrameEEENS_4GMatEE15getOutMeta_implIJLi0EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.307") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6GOCVUV6createERKSt6vectorIN2cv11GCompileArgESaIS2_EE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.217") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.b, align 4, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6GOCVUV5ActorE, i64 16), ptr %i.a, align 8, !tbaa !36
  store ptr %i.a, ptr %0, align 8, !tbaa !156
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !40
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %_ZNSt10shared_ptrIN2cv4gapi9streaming6IActorEEC2IN6GOCVUV5ActorEvEEPT_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #28 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #31
  invoke void @__cxa_rethrow() #30
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #32
  unreachable

bb.f:                                             ; preds = %bb.b
  unreachable

_ZNSt10shared_ptrIN2cv4gapi9streaming6IActorEEC2IN6GOCVUV5ActorEvEEPT_.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1, ptr %i.k, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.l, align 4, !tbaa !34
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6GOCVUV5ActorELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.m, align 8, !tbaa !217
  store ptr %i.d, ptr %i.c, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN6GOCVUV5ActorELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN6GOCVUV5ActorELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !217  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN6GOCVUV5ActorELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN6GOCVUV5ActorELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi9streaming3GUVESt5tupleIJNS_6GFrameEEENS_4GMatEE15getOutMeta_implIJLi0EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.307") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %4 = alloca [1 x %"class.cv::util::variant.315"], align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162
  %i.c = load ptr, ptr %1, align 8, !tbaa !163    ; 4 uses
  %.not.i.i.i.not = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.59, i64 noundef 0, i64 noundef 0) #30
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.c, align 8, !tbaa !169
  %.not.i.i = icmp eq i64 %i.d, 5
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !36
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #30
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit9, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.v, %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit9 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume

bb.f:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %5 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %5, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !43
  %.sroa.012.4.extract.shift = lshr i64 %.sroa.01.0.copyload.i, 32
  %.sroa.012.4.extract.trunc = trunc nuw i64 %.sroa.012.4.extract.shift to i32
  %6 = sdiv i32 %.sroa.012.4.extract.trunc, 2
  %7 = sdiv i32 %.sroa.22.0.copyload.i, 2
  %.sroa.2.0.insert.ext.i = zext i32 %7 to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %6 to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i64 1, ptr %4, align 8, !tbaa !169
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.f, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 2, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.sroa.0.0.insert.insert.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.h = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread ; 4 uses

.thread:                                          ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.h, ptr %0, align 8, !tbaa !163
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !164
  %i.m = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %4, ptr noundef nonnull %i.j, ptr noundef nonnull %i.h)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 56) #31
  br label %.body

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.o, align 8, !tbaa !162
  %i.p = load i64, ptr %4, align 8, !tbaa !169
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @constinit.46, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void %i.r(ptr noundef nonnull %i.s)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #32
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

.body:                                            ; preds = %.thread, %bb.g
  %i.v = phi { ptr, i32 } [ %i.i, %.thread ], [ %i.n, %bb.g ]
  %i.w = load i64, ptr %4, align 8, !tbaa !169
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @constinit.46, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void %i.y(ptr noundef nonnull %i.z)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit9 unwind label %bb.j

bb.j:                                             ; preds = %.body
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #32
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit9: ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv11GKernelTypeINS_5gimpl9streaming5GCopyESt8functionIFNS_4GMatES5_EEE2onES5_(ptr dead_on_unwind noalias writable sret(%"class.cv::GMat") align 8 %0, ptr noundef align 8 %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.cv::GCall", align 8         ; 8 uses
  %3 = alloca %"struct.cv::GKernel", align 8      ; 36 uses
  %4 = alloca [1 x %"class.cv::util::variant.429"], align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 25, ptr %i.a, align 8, !tbaa !66
  %i.c = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.c, ptr %3, align 8, !tbaa !55
  %i.d = load i64, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.c, ptr noundef nonnull align 1 dereferenceable(25) @.str.42, i64 25, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !67
  %i.f = load ptr, ptr %3, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !65
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !67
  store i8 0, ptr %i.i, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  store ptr @_ZN2cv5gimpl9streaming5GCopy10getOutMetaERKSt6vectorINS_4util7variantIJNS4_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISC_EERKS3_INS_4GArgESaISH_EE, ptr %i.k, align 8, !tbaa !41
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E9_M_invokeERKSt9_Any_dataSE_SJ_, ptr %i.m, align 8, !tbaa !159
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, ptr %i.n, align 8, !tbaa !81
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.p = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #29
          to label %bb.c unwind label %bb.a       ; 3 uses

bb.a:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !219  ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i4.i, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !220
  br label %.sink.split105

bb.c:                                             ; preds = %.noexc
  store ptr %i.p, ptr %i.o, align 8, !tbaa !219
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !220
  store i32 0, ptr %i.p, align 4, !tbaa !222
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 104
  store ptr %i.u, ptr %i.w, align 8, !tbaa !223
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %i.y = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #29
          to label %bb.f unwind label %bb.d       ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !225 ; 2 uses
  %.not.i.i4.i51 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i4.i51, label %bb.u, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !226
  br label %.sink.split

bb.f:                                             ; preds = %bb.c
  store ptr %i.y, ptr %i.x, align 8, !tbaa !225
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !226
  store i32 0, ptr %i.y, align 4, !tbaa !228
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 128
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !229
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i64 0, ptr %4, align 8, !tbaa !231, !alias.scope !561
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %i.ah = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateESt8functionIFvRNS0_6detail9VectorRefEEES4_IFvRNS5_9OpaqueRefEEEEEESaISE_EE11_M_allocateEm.exit.i.i unwind label %bb.g ; 3 uses

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateESt8functionIFvRNS0_6detail9VectorRefEEES4_IFvRNS5_9OpaqueRefEEEEEESaISE_EE11_M_allocateEm.exit.i.i: ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !234
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 160
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !235
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateESt8functionIFvRNS0_6detail9VectorRefEEES4_IFvRNS5_9OpaqueRefEEEEEEPSE_ET0_T_SJ_SI_(ptr noundef nonnull %4, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ah)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateESt8functionIFvRNS0_6detail9VectorRefEEES4_IFvRNS5_9OpaqueRefEEEEEESaISE_EE11_M_allocateEm.exit.i.i, %bb.f
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !234 ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i5.i, label %.body54, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !235
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #31
  br label %.body54

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateESt8functionIFvRNS0_6detail9VectorRefEEES4_IFvRNS5_9OpaqueRefEEEEEESaISE_EE11_M_allocateEm.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 152
  store ptr %i.al, ptr %i.at, align 8, !tbaa !236
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.av = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #29
          to label %bb.l unwind label %bb.j       ; 3 uses
end_hunk_0
