Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/goclcore?download=true
inline.NumInlined: 4274
inline.NumDeleted: 1046
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN2cv14GKernelPackage13includeHelperI9GOCLCmpGTEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.ad
  %.pn11 = phi { ptr, i32 } [ %i.db, %bb.ad ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %i.dc, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.aj

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %_ZSt9make_pairIRN2cv4gapi8GBackendERNS0_11GKernelImplEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.ah:                                            ; preds = %.noexc22
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.aj
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.ah
  %i.dm = load i64, ptr %i.aj, align 8, !tbaa !45
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.ag
  %.pn13 = phi { ptr, i32 } [ %i.di, %bb.ag ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.dj, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZNSt4pairIN2cv4gapi8GBackendENS0_11GKernelImplEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #23
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.af
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.dh, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ai ], [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  call void @_ZN2cv11GKernelImplD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.body
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn, %bb.aj ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN2cv4gapi8GBackendD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn13.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpGTESt5tupleIJNS_4GMatES6_EES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpGTESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI9GOCLCmpGTSt5tupleIJNS_4GMatES4_EES3_IJS4_EEE4callERNS_11GOCLContextE(ptr noundef nonnull align 8 dereferenceable(80) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail13OCLCallHelperI9GOCLCmpGTSt5tupleIJNS_4GMatES4_EES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSB_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI9GOCLCmpGTSt5tupleIJNS_4GMatES4_EES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSB_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %4 = alloca %"class.cv::UMat", align 8          ; 7 uses
  %5 = alloca %"class.cv::UMat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0), !noalias !294
  call void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull align 8 dereferenceable(184) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.b = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %5, ptr noundef nonnull align 8 dereferenceable(184) %i.b)
          to label %_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit unwind label %bb.d

_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit: ; preds = %.noexc
  %i.c = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext7outMatREi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !79
  store i32 17432576, ptr %1, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %4, ptr %i.f, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.g, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.h, align 4, !tbaa !79
  store i32 17432576, ptr %2, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %5, ptr %i.i, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.k, align 8
  store i32 34209792, ptr %3, align 8, !tbaa !81
  store ptr %i.c, ptr %i.j, align 8, !tbaa !82
  invoke void @_ZN2cv7compareERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.d:                                             ; preds = %.noexc, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %5) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn
}

declare void @_ZN2cv7compareERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpGTESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 5 uses
  %5 = alloca [1 x %"class.cv::util::variant"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89, !noalias !299 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !85, !noalias !299 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !58

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #27
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !90, !noalias !299 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.b, align 8, !tbaa !90, !noalias !299
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %bb.b
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc13 ], [ %i.f, %bb.b ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc13 ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i.i, %.noexc13 ], [ %i.d, %bb.b ] ; 3 uses
  %i.k = phi ptr [ %i.i, %.noexc13 ], [ null, %bb.b ] ; 8 uses
  %i.l = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 10 uses
  %i.m = icmp sgt i64 %i.l, 4
  br i1 %i.m, label %bb.e, label %bb.f, !prof !91

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false), !noalias !299
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.j, align 4, !tbaa !57, !noalias !299
  store i32 %i.o, ptr %i.k, align 4, !tbaa !57, !noalias !299
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !85   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !86
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !85
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.j, %bb.h ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !86
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #25
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 1, ptr %5, align 8, !tbaa !88
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ac, align 8
  %.sroa.6.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i16 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i16, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !86
  br label %bb.o

bb.k:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ah = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.ah, label %.noexc.i.i.i.i.i18, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, !prof !58

.noexc.i.i.i.i.i18:                               ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc19 unwind label %bb.x

.noexc19:                                         ; preds = %.noexc.i.i.i.i.i18
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17: ; preds = %bb.k
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #27
          to label %.noexc20 unwind label %bb.x   ; 5 uses

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !85
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !89
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.l ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !86
  %6 = icmp samesign ugt i64 %i.l, 4
  br i1 %6, label %bb.l, label %bb.m, !prof !115

bb.l:                                             ; preds = %.noexc20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc20
  %i.am = icmp eq i64 %i.l, 4
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %i.k, align 4, !tbaa !57
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !57
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.thread
  %i.ao = phi ptr [ %i.ak, %bb.l ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ], [ %i.af, %.thread ]
  %i.ap = phi ptr [ %i.aj, %bb.l ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %i.ae, %.thread ]
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.aq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread48 ; 4 uses

.thread48:                                        ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.aq, ptr %0, align 8, !tbaa !94
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !95
  %i.av = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 56) #25
  br label %.body

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !96
  %i.ay = load i64, ptr %5, align 8, !tbaa !88
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !65
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.ba(ptr noundef nonnull %i.bb)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #24
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i21 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #25
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.t:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit24

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i23, label %_ZN2cv8GMatDescD2Ev.exit24, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !86
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #25
  br label %_ZN2cv8GMatDescD2Ev.exit24

_ZN2cv8GMatDescD2Ev.exit24:                       ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.be, %bb.t ], [ %i.bf, %bb.u ], [ %i.bf, %bb.v ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i25, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.w

bb.w:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit24
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !86
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #25
  br label %_ZN2cv8GMatDescD2Ev.exit26

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, %.noexc.i.i.i.i.i18
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread48, %bb.p
  %i.bv = phi { ptr, i32 } [ %i.ar, %.thread48 ], [ %i.aw, %bb.p ]
  %i.bw = load i64, ptr %5, align 8, !tbaa !88
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !65
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.by(ptr noundef nonnull %i.bz)
          to label %.loopexit unwind label %bb.y

bb.y:                                             ; preds = %.body
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #24
  unreachable

.loopexit:                                        ; preds = %.body, %bb.x
  %.pn10 = phi { ptr, i32 } [ %i.bu, %bb.x ], [ %i.bv, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i28 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #25
  br label %_ZN2cv8GMatDescD2Ev.exit26

_ZN2cv8GMatDescD2Ev.exit26:                       ; preds = %bb.z, %.loopexit, %bb.w, %_ZN2cv8GMatDescD2Ev.exit24
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %.pn, %_ZN2cv8GMatDescD2Ev.exit24 ], [ %.pn10, %.loopexit ], [ %.pn10, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI9GOCLCmpGEEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::function.18", align 8  ; 12 uses
  %2 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %3 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %4 = alloca %"class.cv::GOCLKernel", align 8    ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN2cv4gapi3ocl7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !302
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !noalias !302
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @_ZN2cv6detail13OCLCallHelperI9GOCLCmpGESt5tupleIJNS_4GMatES4_EES3_IJS4_EEE4callERNS_11GOCLContextE, ptr %1, align 8, !tbaa !65, !noalias !302
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.d, align 8, !tbaa !69, !noalias !302
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.e, align 8, !tbaa !40, !noalias !302
  invoke void @_ZN2cv10GOCLKernelC1ERKSt8functionIFvRNS_11GOCLContextEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !302 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i1.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !302 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.k, null
  br i1 %.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i unwind label %bb.g ; 0 uses
end_hunk_0
begin_hunk_1_@_ZN2cv14GKernelPackage13includeHelperI9GOCLCmpGEEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv:bb.a
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.ad
  %.pn11 = phi { ptr, i32 } [ %i.db, %bb.ad ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %i.dc, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.aj

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %_ZSt9make_pairIRN2cv4gapi8GBackendERNS0_11GKernelImplEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.ah:                                            ; preds = %.noexc22
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.aj
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.ah
  %i.dm = load i64, ptr %i.aj, align 8, !tbaa !45
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.ag
  %.pn13 = phi { ptr, i32 } [ %i.di, %bb.ag ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.dj, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZNSt4pairIN2cv4gapi8GBackendENS0_11GKernelImplEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #23
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.af
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.dh, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ai ], [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  call void @_ZN2cv11GKernelImplD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.body
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn, %bb.aj ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN2cv4gapi8GBackendD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn13.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpGEESt5tupleIJNS_4GMatES6_EES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpGEESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI9GOCLCmpGESt5tupleIJNS_4GMatES4_EES3_IJS4_EEE4callERNS_11GOCLContextE(ptr noundef nonnull align 8 dereferenceable(80) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail13OCLCallHelperI9GOCLCmpGESt5tupleIJNS_4GMatES4_EES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSB_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI9GOCLCmpGESt5tupleIJNS_4GMatES4_EES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSB_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %4 = alloca %"class.cv::UMat", align 8          ; 7 uses
  %5 = alloca %"class.cv::UMat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0), !noalias !305
  call void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull align 8 dereferenceable(184) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.b = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %5, ptr noundef nonnull align 8 dereferenceable(184) %i.b)
          to label %_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit unwind label %bb.d

_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit: ; preds = %.noexc
  %i.c = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext7outMatREi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !79
  store i32 17432576, ptr %1, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %4, ptr %i.f, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.g, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.h, align 4, !tbaa !79
  store i32 17432576, ptr %2, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %5, ptr %i.i, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.k, align 8
  store i32 34209792, ptr %3, align 8, !tbaa !81
  store ptr %i.c, ptr %i.j, align 8, !tbaa !82
  invoke void @_ZN2cv7compareERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.d:                                             ; preds = %.noexc, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %5) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpGEESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 5 uses
  %5 = alloca [1 x %"class.cv::util::variant"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89, !noalias !310 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !85, !noalias !310 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !58

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #27
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !90, !noalias !310 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.b, align 8, !tbaa !90, !noalias !310
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %bb.b
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc13 ], [ %i.f, %bb.b ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc13 ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i.i, %.noexc13 ], [ %i.d, %bb.b ] ; 3 uses
  %i.k = phi ptr [ %i.i, %.noexc13 ], [ null, %bb.b ] ; 8 uses
  %i.l = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 10 uses
  %i.m = icmp sgt i64 %i.l, 4
  br i1 %i.m, label %bb.e, label %bb.f, !prof !91

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false), !noalias !310
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.j, align 4, !tbaa !57, !noalias !310
  store i32 %i.o, ptr %i.k, align 4, !tbaa !57, !noalias !310
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !85   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !86
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !85
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.j, %bb.h ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !86
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #25
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 1, ptr %5, align 8, !tbaa !88
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ac, align 8
  %.sroa.6.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i16 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i16, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !86
  br label %bb.o

bb.k:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ah = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.ah, label %.noexc.i.i.i.i.i18, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, !prof !58

.noexc.i.i.i.i.i18:                               ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc19 unwind label %bb.x

.noexc19:                                         ; preds = %.noexc.i.i.i.i.i18
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17: ; preds = %bb.k
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #27
          to label %.noexc20 unwind label %bb.x   ; 5 uses

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !85
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !89
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.l ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !86
  %6 = icmp samesign ugt i64 %i.l, 4
  br i1 %6, label %bb.l, label %bb.m, !prof !115

bb.l:                                             ; preds = %.noexc20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc20
  %i.am = icmp eq i64 %i.l, 4
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %i.k, align 4, !tbaa !57
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !57
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.thread
  %i.ao = phi ptr [ %i.ak, %bb.l ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ], [ %i.af, %.thread ]
  %i.ap = phi ptr [ %i.aj, %bb.l ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %i.ae, %.thread ]
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.aq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread48 ; 4 uses

.thread48:                                        ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.aq, ptr %0, align 8, !tbaa !94
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !95
  %i.av = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 56) #25
  br label %.body

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !96
  %i.ay = load i64, ptr %5, align 8, !tbaa !88
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !65
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.ba(ptr noundef nonnull %i.bb)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #24
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i21 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #25
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.t:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit24

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i23, label %_ZN2cv8GMatDescD2Ev.exit24, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !86
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #25
  br label %_ZN2cv8GMatDescD2Ev.exit24

_ZN2cv8GMatDescD2Ev.exit24:                       ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.be, %bb.t ], [ %i.bf, %bb.u ], [ %i.bf, %bb.v ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i25, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.w

bb.w:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit24
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !86
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #25
  br label %_ZN2cv8GMatDescD2Ev.exit26

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, %.noexc.i.i.i.i.i18
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread48, %bb.p
  %i.bv = phi { ptr, i32 } [ %i.ar, %.thread48 ], [ %i.aw, %bb.p ]
  %i.bw = load i64, ptr %5, align 8, !tbaa !88
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !65
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.by(ptr noundef nonnull %i.bz)
          to label %.loopexit unwind label %bb.y

bb.y:                                             ; preds = %.body
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #24
  unreachable

.loopexit:                                        ; preds = %.body, %bb.x
  %.pn10 = phi { ptr, i32 } [ %i.bu, %bb.x ], [ %i.bv, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i28 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #25
  br label %_ZN2cv8GMatDescD2Ev.exit26

_ZN2cv8GMatDescD2Ev.exit26:                       ; preds = %bb.z, %.loopexit, %bb.w, %_ZN2cv8GMatDescD2Ev.exit24
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %.pn, %_ZN2cv8GMatDescD2Ev.exit24 ], [ %.pn10, %.loopexit ], [ %.pn10, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI9GOCLCmpLEEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::function.18", align 8  ; 12 uses
  %2 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %3 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %4 = alloca %"class.cv::GOCLKernel", align 8    ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN2cv4gapi3ocl7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !313
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !noalias !313
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @_ZN2cv6detail13OCLCallHelperI9GOCLCmpLESt5tupleIJNS_4GMatES4_EES3_IJS4_EEE4callERNS_11GOCLContextE, ptr %1, align 8, !tbaa !65, !noalias !313
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.d, align 8, !tbaa !69, !noalias !313
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.e, align 8, !tbaa !40, !noalias !313
  invoke void @_ZN2cv10GOCLKernelC1ERKSt8functionIFvRNS_11GOCLContextEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !313 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i1.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !313 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.k, null
  br i1 %.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i unwind label %bb.g ; 0 uses
end_hunk_1
begin_hunk_2_@_ZN2cv14GKernelPackage13includeHelperI9GOCLCmpLEEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv:bb.a
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.ad
  %.pn11 = phi { ptr, i32 } [ %i.db, %bb.ad ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %i.dc, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.aj

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %_ZSt9make_pairIRN2cv4gapi8GBackendERNS0_11GKernelImplEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.ah:                                            ; preds = %.noexc22
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.aj
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.ah
  %i.dm = load i64, ptr %i.aj, align 8, !tbaa !45
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.ag
  %.pn13 = phi { ptr, i32 } [ %i.di, %bb.ag ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.dj, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZNSt4pairIN2cv4gapi8GBackendENS0_11GKernelImplEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #23
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.af
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.dh, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ai ], [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  call void @_ZN2cv11GKernelImplD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.body
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn, %bb.aj ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN2cv4gapi8GBackendD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn13.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpLEESt5tupleIJNS_4GMatES6_EES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpLEESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI9GOCLCmpLESt5tupleIJNS_4GMatES4_EES3_IJS4_EEE4callERNS_11GOCLContextE(ptr noundef nonnull align 8 dereferenceable(80) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail13OCLCallHelperI9GOCLCmpLESt5tupleIJNS_4GMatES4_EES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSB_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI9GOCLCmpLESt5tupleIJNS_4GMatES4_EES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSB_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %4 = alloca %"class.cv::UMat", align 8          ; 7 uses
  %5 = alloca %"class.cv::UMat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0), !noalias !316
  call void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull align 8 dereferenceable(184) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.b = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %5, ptr noundef nonnull align 8 dereferenceable(184) %i.b)
          to label %_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit unwind label %bb.d

_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit: ; preds = %.noexc
  %i.c = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext7outMatREi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !79
  store i32 17432576, ptr %1, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %4, ptr %i.f, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.g, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.h, align 4, !tbaa !79
  store i32 17432576, ptr %2, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %5, ptr %i.i, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.k, align 8
  store i32 34209792, ptr %3, align 8, !tbaa !81
  store ptr %i.c, ptr %i.j, align 8, !tbaa !82
  invoke void @_ZN2cv7compareERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.d:                                             ; preds = %.noexc, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %5) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpLEESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 5 uses
  %5 = alloca [1 x %"class.cv::util::variant"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89, !noalias !321 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !85, !noalias !321 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !58

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #27
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !90, !noalias !321 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.b, align 8, !tbaa !90, !noalias !321
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %bb.b
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc13 ], [ %i.f, %bb.b ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc13 ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i.i, %.noexc13 ], [ %i.d, %bb.b ] ; 3 uses
  %i.k = phi ptr [ %i.i, %.noexc13 ], [ null, %bb.b ] ; 8 uses
  %i.l = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 10 uses
  %i.m = icmp sgt i64 %i.l, 4
  br i1 %i.m, label %bb.e, label %bb.f, !prof !91

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false), !noalias !321
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.j, align 4, !tbaa !57, !noalias !321
  store i32 %i.o, ptr %i.k, align 4, !tbaa !57, !noalias !321
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !85   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !86
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !85
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.j, %bb.h ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !86
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #25
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 1, ptr %5, align 8, !tbaa !88
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ac, align 8
  %.sroa.6.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i16 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i16, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !86
  br label %bb.o

bb.k:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ah = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.ah, label %.noexc.i.i.i.i.i18, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, !prof !58

.noexc.i.i.i.i.i18:                               ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc19 unwind label %bb.x

.noexc19:                                         ; preds = %.noexc.i.i.i.i.i18
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17: ; preds = %bb.k
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #27
          to label %.noexc20 unwind label %bb.x   ; 5 uses

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !85
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !89
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.l ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !86
  %6 = icmp samesign ugt i64 %i.l, 4
  br i1 %6, label %bb.l, label %bb.m, !prof !115

bb.l:                                             ; preds = %.noexc20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc20
  %i.am = icmp eq i64 %i.l, 4
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %i.k, align 4, !tbaa !57
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !57
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.thread
  %i.ao = phi ptr [ %i.ak, %bb.l ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ], [ %i.af, %.thread ]
  %i.ap = phi ptr [ %i.aj, %bb.l ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %i.ae, %.thread ]
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.aq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread48 ; 4 uses

.thread48:                                        ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.aq, ptr %0, align 8, !tbaa !94
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !95
  %i.av = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 56) #25
  br label %.body

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !96
  %i.ay = load i64, ptr %5, align 8, !tbaa !88
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !65
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.ba(ptr noundef nonnull %i.bb)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #24
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i21 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #25
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.t:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit24

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i23, label %_ZN2cv8GMatDescD2Ev.exit24, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !86
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #25
  br label %_ZN2cv8GMatDescD2Ev.exit24

_ZN2cv8GMatDescD2Ev.exit24:                       ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.be, %bb.t ], [ %i.bf, %bb.u ], [ %i.bf, %bb.v ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i25, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.w

bb.w:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit24
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !86
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #25
  br label %_ZN2cv8GMatDescD2Ev.exit26

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, %.noexc.i.i.i.i.i18
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread48, %bb.p
  %i.bv = phi { ptr, i32 } [ %i.ar, %.thread48 ], [ %i.aw, %bb.p ]
  %i.bw = load i64, ptr %5, align 8, !tbaa !88
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !65
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.by(ptr noundef nonnull %i.bz)
          to label %.loopexit unwind label %bb.y

bb.y:                                             ; preds = %.body
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #24
  unreachable

.loopexit:                                        ; preds = %.body, %bb.x
  %.pn10 = phi { ptr, i32 } [ %i.bu, %bb.x ], [ %i.bv, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i28 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #25
  br label %_ZN2cv8GMatDescD2Ev.exit26

_ZN2cv8GMatDescD2Ev.exit26:                       ; preds = %bb.z, %.loopexit, %bb.w, %_ZN2cv8GMatDescD2Ev.exit24
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %.pn, %_ZN2cv8GMatDescD2Ev.exit24 ], [ %.pn10, %.loopexit ], [ %.pn10, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI9GOCLCmpLTEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::function.18", align 8  ; 12 uses
  %2 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %3 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %4 = alloca %"class.cv::GOCLKernel", align 8    ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN2cv4gapi3ocl7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !324
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !noalias !324
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @_ZN2cv6detail13OCLCallHelperI9GOCLCmpLTSt5tupleIJNS_4GMatES4_EES3_IJS4_EEE4callERNS_11GOCLContextE, ptr %1, align 8, !tbaa !65, !noalias !324
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.d, align 8, !tbaa !69, !noalias !324
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.e, align 8, !tbaa !40, !noalias !324
  invoke void @_ZN2cv10GOCLKernelC1ERKSt8functionIFvRNS_11GOCLContextEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !324 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i1.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !324 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.k, null
  br i1 %.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i unwind label %bb.g ; 0 uses
end_hunk_2
begin_hunk_3_@_ZN2cv14GKernelPackage13includeHelperI9GOCLCmpLTEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv:bb.a
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.ad
  %.pn11 = phi { ptr, i32 } [ %i.db, %bb.ad ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %i.dc, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.aj

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %_ZSt9make_pairIRN2cv4gapi8GBackendERNS0_11GKernelImplEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.ah:                                            ; preds = %.noexc22
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.aj
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.ah
  %i.dm = load i64, ptr %i.aj, align 8, !tbaa !45
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.ag
  %.pn13 = phi { ptr, i32 } [ %i.di, %bb.ag ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.dj, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZNSt4pairIN2cv4gapi8GBackendENS0_11GKernelImplEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #23
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.af
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.dh, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ai ], [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  call void @_ZN2cv11GKernelImplD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.body
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn, %bb.aj ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN2cv4gapi8GBackendD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn13.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpLTESt5tupleIJNS_4GMatES6_EES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpLTESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI9GOCLCmpLTSt5tupleIJNS_4GMatES4_EES3_IJS4_EEE4callERNS_11GOCLContextE(ptr noundef nonnull align 8 dereferenceable(80) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail13OCLCallHelperI9GOCLCmpLTSt5tupleIJNS_4GMatES4_EES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSB_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI9GOCLCmpLTSt5tupleIJNS_4GMatES4_EES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSB_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %4 = alloca %"class.cv::UMat", align 8          ; 7 uses
  %5 = alloca %"class.cv::UMat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0), !noalias !327
  call void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull align 8 dereferenceable(184) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.b = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %5, ptr noundef nonnull align 8 dereferenceable(184) %i.b)
          to label %_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit unwind label %bb.d

_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit: ; preds = %.noexc
  %i.c = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext7outMatREi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !79
  store i32 17432576, ptr %1, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %4, ptr %i.f, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.g, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.h, align 4, !tbaa !79
  store i32 17432576, ptr %2, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %5, ptr %i.i, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.k, align 8
  store i32 34209792, ptr %3, align 8, !tbaa !81
  store ptr %i.c, ptr %i.j, align 8, !tbaa !82
  invoke void @_ZN2cv7compareERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.d:                                             ; preds = %.noexc, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %5) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpLTESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 5 uses
  %5 = alloca [1 x %"class.cv::util::variant"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89, !noalias !332 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !85, !noalias !332 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !58

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #27
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !90, !noalias !332 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.b, align 8, !tbaa !90, !noalias !332
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %bb.b
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc13 ], [ %i.f, %bb.b ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc13 ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i.i, %.noexc13 ], [ %i.d, %bb.b ] ; 3 uses
  %i.k = phi ptr [ %i.i, %.noexc13 ], [ null, %bb.b ] ; 8 uses
  %i.l = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 10 uses
  %i.m = icmp sgt i64 %i.l, 4
  br i1 %i.m, label %bb.e, label %bb.f, !prof !91

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false), !noalias !332
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.j, align 4, !tbaa !57, !noalias !332
  store i32 %i.o, ptr %i.k, align 4, !tbaa !57, !noalias !332
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !85   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !86
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !85
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.j, %bb.h ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !86
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #25
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 1, ptr %5, align 8, !tbaa !88
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ac, align 8
  %.sroa.6.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i16 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i16, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !86
  br label %bb.o

bb.k:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ah = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.ah, label %.noexc.i.i.i.i.i18, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, !prof !58

.noexc.i.i.i.i.i18:                               ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc19 unwind label %bb.x

.noexc19:                                         ; preds = %.noexc.i.i.i.i.i18
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17: ; preds = %bb.k
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #27
          to label %.noexc20 unwind label %bb.x   ; 5 uses

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !85
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !89
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.l ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !86
  %6 = icmp samesign ugt i64 %i.l, 4
  br i1 %6, label %bb.l, label %bb.m, !prof !115

bb.l:                                             ; preds = %.noexc20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc20
  %i.am = icmp eq i64 %i.l, 4
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %i.k, align 4, !tbaa !57
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !57
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.thread
  %i.ao = phi ptr [ %i.ak, %bb.l ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ], [ %i.af, %.thread ]
  %i.ap = phi ptr [ %i.aj, %bb.l ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %i.ae, %.thread ]
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.aq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread48 ; 4 uses

.thread48:                                        ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.aq, ptr %0, align 8, !tbaa !94
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !95
  %i.av = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 56) #25
  br label %.body

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !96
  %i.ay = load i64, ptr %5, align 8, !tbaa !88
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !65
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.ba(ptr noundef nonnull %i.bb)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #24
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i21 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #25
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.t:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit24

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i23, label %_ZN2cv8GMatDescD2Ev.exit24, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !86
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #25
  br label %_ZN2cv8GMatDescD2Ev.exit24

_ZN2cv8GMatDescD2Ev.exit24:                       ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.be, %bb.t ], [ %i.bf, %bb.u ], [ %i.bf, %bb.v ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i25, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.w

bb.w:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit24
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !86
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #25
  br label %_ZN2cv8GMatDescD2Ev.exit26

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, %.noexc.i.i.i.i.i18
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread48, %bb.p
  %i.bv = phi { ptr, i32 } [ %i.ar, %.thread48 ], [ %i.aw, %bb.p ]
  %i.bw = load i64, ptr %5, align 8, !tbaa !88
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !65
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.by(ptr noundef nonnull %i.bz)
          to label %.loopexit unwind label %bb.y

bb.y:                                             ; preds = %.body
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #24
  unreachable

.loopexit:                                        ; preds = %.body, %bb.x
  %.pn10 = phi { ptr, i32 } [ %i.bu, %bb.x ], [ %i.bv, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i28 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #25
  br label %_ZN2cv8GMatDescD2Ev.exit26

_ZN2cv8GMatDescD2Ev.exit26:                       ; preds = %bb.z, %.loopexit, %bb.w, %_ZN2cv8GMatDescD2Ev.exit24
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %.pn, %_ZN2cv8GMatDescD2Ev.exit24 ], [ %.pn10, %.loopexit ], [ %.pn10, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI9GOCLCmpEQEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::function.18", align 8  ; 12 uses
  %2 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %3 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %4 = alloca %"class.cv::GOCLKernel", align 8    ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN2cv4gapi3ocl7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !335
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !noalias !335
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @_ZN2cv6detail13OCLCallHelperI9GOCLCmpEQSt5tupleIJNS_4GMatES4_EES3_IJS4_EEE4callERNS_11GOCLContextE, ptr %1, align 8, !tbaa !65, !noalias !335
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.d, align 8, !tbaa !69, !noalias !335
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.e, align 8, !tbaa !40, !noalias !335
  invoke void @_ZN2cv10GOCLKernelC1ERKSt8functionIFvRNS_11GOCLContextEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !335 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i1.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !335 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.k, null
  br i1 %.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i unwind label %bb.g ; 0 uses
end_hunk_3
begin_hunk_4_@_ZN2cv14GKernelPackage13includeHelperI9GOCLCmpEQEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv:bb.a
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.ad
  %.pn11 = phi { ptr, i32 } [ %i.db, %bb.ad ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %i.dc, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.aj

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %_ZSt9make_pairIRN2cv4gapi8GBackendERNS0_11GKernelImplEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.ah:                                            ; preds = %.noexc22
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.aj
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.ah
  %i.dm = load i64, ptr %i.aj, align 8, !tbaa !45
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.ag
  %.pn13 = phi { ptr, i32 } [ %i.di, %bb.ag ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.dj, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZNSt4pairIN2cv4gapi8GBackendENS0_11GKernelImplEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #23
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.af
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.dh, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ai ], [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  call void @_ZN2cv11GKernelImplD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.body
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn, %bb.aj ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN2cv4gapi8GBackendD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn13.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpEQESt5tupleIJNS_4GMatES6_EES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpEQESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI9GOCLCmpEQSt5tupleIJNS_4GMatES4_EES3_IJS4_EEE4callERNS_11GOCLContextE(ptr noundef nonnull align 8 dereferenceable(80) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail13OCLCallHelperI9GOCLCmpEQSt5tupleIJNS_4GMatES4_EES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSB_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI9GOCLCmpEQSt5tupleIJNS_4GMatES4_EES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSB_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %4 = alloca %"class.cv::UMat", align 8          ; 7 uses
  %5 = alloca %"class.cv::UMat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0), !noalias !338
  call void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull align 8 dereferenceable(184) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.b = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %5, ptr noundef nonnull align 8 dereferenceable(184) %i.b)
          to label %_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit unwind label %bb.d

_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit: ; preds = %.noexc
  %i.c = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext7outMatREi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !79
  store i32 17432576, ptr %1, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %4, ptr %i.f, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.g, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.h, align 4, !tbaa !79
  store i32 17432576, ptr %2, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %5, ptr %i.i, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.k, align 8
  store i32 34209792, ptr %3, align 8, !tbaa !81
  store ptr %i.c, ptr %i.j, align 8, !tbaa !82
  invoke void @_ZN2cv7compareERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.d:                                             ; preds = %.noexc, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %5) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpEQESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 5 uses
  %5 = alloca [1 x %"class.cv::util::variant"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89, !noalias !343 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !85, !noalias !343 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !58

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #27
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !90, !noalias !343 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.b, align 8, !tbaa !90, !noalias !343
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %bb.b
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc13 ], [ %i.f, %bb.b ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc13 ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i.i, %.noexc13 ], [ %i.d, %bb.b ] ; 3 uses
  %i.k = phi ptr [ %i.i, %.noexc13 ], [ null, %bb.b ] ; 8 uses
  %i.l = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 10 uses
  %i.m = icmp sgt i64 %i.l, 4
  br i1 %i.m, label %bb.e, label %bb.f, !prof !91

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false), !noalias !343
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.j, align 4, !tbaa !57, !noalias !343
  store i32 %i.o, ptr %i.k, align 4, !tbaa !57, !noalias !343
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !85   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !86
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !85
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.j, %bb.h ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !86
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #25
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 1, ptr %5, align 8, !tbaa !88
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ac, align 8
  %.sroa.6.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i16 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i16, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !86
  br label %bb.o

bb.k:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ah = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.ah, label %.noexc.i.i.i.i.i18, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, !prof !58

.noexc.i.i.i.i.i18:                               ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc19 unwind label %bb.x

.noexc19:                                         ; preds = %.noexc.i.i.i.i.i18
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17: ; preds = %bb.k
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #27
          to label %.noexc20 unwind label %bb.x   ; 5 uses

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !85
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !89
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.l ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !86
  %6 = icmp samesign ugt i64 %i.l, 4
  br i1 %6, label %bb.l, label %bb.m, !prof !115

bb.l:                                             ; preds = %.noexc20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc20
  %i.am = icmp eq i64 %i.l, 4
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %i.k, align 4, !tbaa !57
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !57
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.thread
  %i.ao = phi ptr [ %i.ak, %bb.l ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ], [ %i.af, %.thread ]
  %i.ap = phi ptr [ %i.aj, %bb.l ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %i.ae, %.thread ]
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.aq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread48 ; 4 uses

.thread48:                                        ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.aq, ptr %0, align 8, !tbaa !94
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !95
  %i.av = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 56) #25
  br label %.body

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !96
  %i.ay = load i64, ptr %5, align 8, !tbaa !88
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !65
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.ba(ptr noundef nonnull %i.bb)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #24
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i21 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #25
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.t:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit24

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i23, label %_ZN2cv8GMatDescD2Ev.exit24, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !86
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #25
  br label %_ZN2cv8GMatDescD2Ev.exit24

_ZN2cv8GMatDescD2Ev.exit24:                       ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.be, %bb.t ], [ %i.bf, %bb.u ], [ %i.bf, %bb.v ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i25, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.w

bb.w:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit24
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !86
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #25
  br label %_ZN2cv8GMatDescD2Ev.exit26

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, %.noexc.i.i.i.i.i18
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread48, %bb.p
  %i.bv = phi { ptr, i32 } [ %i.ar, %.thread48 ], [ %i.aw, %bb.p ]
  %i.bw = load i64, ptr %5, align 8, !tbaa !88
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !65
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.by(ptr noundef nonnull %i.bz)
          to label %.loopexit unwind label %bb.y

bb.y:                                             ; preds = %.body
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #24
  unreachable

.loopexit:                                        ; preds = %.body, %bb.x
  %.pn10 = phi { ptr, i32 } [ %i.bu, %bb.x ], [ %i.bv, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i28 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #25
  br label %_ZN2cv8GMatDescD2Ev.exit26

_ZN2cv8GMatDescD2Ev.exit26:                       ; preds = %bb.z, %.loopexit, %bb.w, %_ZN2cv8GMatDescD2Ev.exit24
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %.pn, %_ZN2cv8GMatDescD2Ev.exit24 ], [ %.pn10, %.loopexit ], [ %.pn10, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI9GOCLCmpNEEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::function.18", align 8  ; 12 uses
  %2 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %3 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %4 = alloca %"class.cv::GOCLKernel", align 8    ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN2cv4gapi3ocl7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !346
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !noalias !346
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @_ZN2cv6detail13OCLCallHelperI9GOCLCmpNESt5tupleIJNS_4GMatES4_EES3_IJS4_EEE4callERNS_11GOCLContextE, ptr %1, align 8, !tbaa !65, !noalias !346
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.d, align 8, !tbaa !69, !noalias !346
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.e, align 8, !tbaa !40, !noalias !346
  invoke void @_ZN2cv10GOCLKernelC1ERKSt8functionIFvRNS_11GOCLContextEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !346 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i1.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !346 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.k, null
  br i1 %.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i unwind label %bb.g ; 0 uses
end_hunk_4
begin_hunk_5_@_ZN2cv14GKernelPackage13includeHelperI9GOCLCmpNEEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv:bb.a
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.ad
  %.pn11 = phi { ptr, i32 } [ %i.db, %bb.ad ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %i.dc, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.aj

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %_ZSt9make_pairIRN2cv4gapi8GBackendERNS0_11GKernelImplEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.ah:                                            ; preds = %.noexc22
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.aj
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.ah
  %i.dm = load i64, ptr %i.aj, align 8, !tbaa !45
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.ag
  %.pn13 = phi { ptr, i32 } [ %i.di, %bb.ag ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.dj, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZNSt4pairIN2cv4gapi8GBackendENS0_11GKernelImplEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #23
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.af
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.dh, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ai ], [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  call void @_ZN2cv11GKernelImplD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.body
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn, %bb.aj ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN2cv4gapi8GBackendD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn13.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpNEESt5tupleIJNS_4GMatES6_EES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpNEESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI9GOCLCmpNESt5tupleIJNS_4GMatES4_EES3_IJS4_EEE4callERNS_11GOCLContextE(ptr noundef nonnull align 8 dereferenceable(80) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail13OCLCallHelperI9GOCLCmpNESt5tupleIJNS_4GMatES4_EES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSB_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI9GOCLCmpNESt5tupleIJNS_4GMatES4_EES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSB_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %4 = alloca %"class.cv::UMat", align 8          ; 7 uses
  %5 = alloca %"class.cv::UMat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0), !noalias !349
  call void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull align 8 dereferenceable(184) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.b = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %5, ptr noundef nonnull align 8 dereferenceable(184) %i.b)
          to label %_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit unwind label %bb.d

_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit: ; preds = %.noexc
  %i.c = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext7outMatREi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !79
  store i32 17432576, ptr %1, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %4, ptr %i.f, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.g, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.h, align 4, !tbaa !79
  store i32 17432576, ptr %2, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %5, ptr %i.i, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.k, align 8
  store i32 34209792, ptr %3, align 8, !tbaa !81
  store ptr %i.c, ptr %i.j, align 8, !tbaa !82
  invoke void @_ZN2cv7compareERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.d:                                             ; preds = %.noexc, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %5) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpNEESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 5 uses
  %5 = alloca [1 x %"class.cv::util::variant"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89, !noalias !354 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !85, !noalias !354 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !58

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #27
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !90, !noalias !354 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.b, align 8, !tbaa !90, !noalias !354
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %bb.b
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc13 ], [ %i.f, %bb.b ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc13 ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i.i, %.noexc13 ], [ %i.d, %bb.b ] ; 3 uses
  %i.k = phi ptr [ %i.i, %.noexc13 ], [ null, %bb.b ] ; 8 uses
  %i.l = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 10 uses
  %i.m = icmp sgt i64 %i.l, 4
  br i1 %i.m, label %bb.e, label %bb.f, !prof !91

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false), !noalias !354
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.j, align 4, !tbaa !57, !noalias !354
  store i32 %i.o, ptr %i.k, align 4, !tbaa !57, !noalias !354
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !85   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !86
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !85
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.j, %bb.h ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !86
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #25
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 1, ptr %5, align 8, !tbaa !88
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ac, align 8
  %.sroa.6.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i16 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i16, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !86
  br label %bb.o

bb.k:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ah = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.ah, label %.noexc.i.i.i.i.i18, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, !prof !58

.noexc.i.i.i.i.i18:                               ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc19 unwind label %bb.x

.noexc19:                                         ; preds = %.noexc.i.i.i.i.i18
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17: ; preds = %bb.k
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #27
          to label %.noexc20 unwind label %bb.x   ; 5 uses

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !85
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !89
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.l ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !86
  %6 = icmp samesign ugt i64 %i.l, 4
  br i1 %6, label %bb.l, label %bb.m, !prof !115

bb.l:                                             ; preds = %.noexc20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc20
  %i.am = icmp eq i64 %i.l, 4
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %i.k, align 4, !tbaa !57
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !57
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.thread
  %i.ao = phi ptr [ %i.ak, %bb.l ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ], [ %i.af, %.thread ]
  %i.ap = phi ptr [ %i.aj, %bb.l ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %i.ae, %.thread ]
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.aq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread48 ; 4 uses

.thread48:                                        ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.aq, ptr %0, align 8, !tbaa !94
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !95
  %i.av = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 56) #25
  br label %.body

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !96
  %i.ay = load i64, ptr %5, align 8, !tbaa !88
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !65
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.ba(ptr noundef nonnull %i.bb)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #24
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i21 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #25
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.t:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit24

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i23, label %_ZN2cv8GMatDescD2Ev.exit24, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !86
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #25
  br label %_ZN2cv8GMatDescD2Ev.exit24

_ZN2cv8GMatDescD2Ev.exit24:                       ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.be, %bb.t ], [ %i.bf, %bb.u ], [ %i.bf, %bb.v ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i25, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.w

bb.w:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit24
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !86
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #25
  br label %_ZN2cv8GMatDescD2Ev.exit26

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, %.noexc.i.i.i.i.i18
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread48, %bb.p
  %i.bv = phi { ptr, i32 } [ %i.ar, %.thread48 ], [ %i.aw, %bb.p ]
  %i.bw = load i64, ptr %5, align 8, !tbaa !88
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !65
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.by(ptr noundef nonnull %i.bz)
          to label %.loopexit unwind label %bb.y

bb.y:                                             ; preds = %.body
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #24
  unreachable

.loopexit:                                        ; preds = %.body, %bb.x
  %.pn10 = phi { ptr, i32 } [ %i.bu, %bb.x ], [ %i.bv, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i28 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #25
  br label %_ZN2cv8GMatDescD2Ev.exit26

_ZN2cv8GMatDescD2Ev.exit26:                       ; preds = %bb.z, %.loopexit, %bb.w, %_ZN2cv8GMatDescD2Ev.exit24
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %.pn, %_ZN2cv8GMatDescD2Ev.exit24 ], [ %.pn10, %.loopexit ], [ %.pn10, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI15GOCLCmpGTScalarEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::function.18", align 8  ; 12 uses
  %2 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %3 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %4 = alloca %"class.cv::GOCLKernel", align 8    ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN2cv4gapi3ocl7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !357
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !noalias !357
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @_ZN2cv6detail13OCLCallHelperI15GOCLCmpGTScalarSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE4callERNS_11GOCLContextE, ptr %1, align 8, !tbaa !65, !noalias !357
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.d, align 8, !tbaa !69, !noalias !357
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.e, align 8, !tbaa !40, !noalias !357
  invoke void @_ZN2cv10GOCLKernelC1ERKSt8functionIFvRNS_11GOCLContextEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !357 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i1.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !357 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.k, null
  br i1 %.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i unwind label %bb.g ; 0 uses
end_hunk_5
begin_hunk_6_@_ZN2cv14GKernelPackage13includeHelperI15GOCLCmpGTScalarEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv:bb.a
  call void @_ZNSt4pairIN2cv4gapi8GBackendENS0_11GKernelImplEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #23
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.af
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.dh, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ai ], [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  call void @_ZN2cv11GKernelImplD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.body
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn, %bb.aj ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN2cv4gapi8GBackendD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn13.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpGTScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpGTScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI15GOCLCmpGTScalarSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE4callERNS_11GOCLContextE(ptr noundef nonnull align 8 dereferenceable(80) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail13OCLCallHelperI15GOCLCmpGTScalarSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSC_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI15GOCLCmpGTScalarSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSC_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %4 = alloca %"class.cv::UMat", align 8          ; 7 uses
  %5 = alloca %"class.cv::Scalar_", align 16      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0), !noalias !362
  call void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull align 8 dereferenceable(184) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN2cv11GOCLContext5inValEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 1)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !111, !noalias !363
  store <2 x double> %i.c, ptr %5, align 16, !tbaa !111, !alias.scope !363
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.f = load <2 x double>, ptr %i.d, align 8, !tbaa !111, !noalias !363
  store <2 x double> %i.f, ptr %i.e, align 16, !tbaa !111, !alias.scope !363
  %i.g = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext7outMatREi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.h, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.i, align 4, !tbaa !79
  store i32 17432576, ptr %1, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %4, ptr %i.j, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1056833530, ptr %2, align 8, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %5, ptr %i.l, align 8, !tbaa !82
  store i64 17179869185, ptr %i.k, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.n, align 8
  store i32 34209792, ptr %3, align 8, !tbaa !81
  store ptr %i.g, ptr %i.m, align 8, !tbaa !82
  invoke void @_ZN2cv7compareERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.e:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpGTScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %5 = alloca [1 x %"class.cv::util::variant"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.c = load ptr, ptr %1, align 8, !tbaa !94     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef 1, i64 noundef %i.g) #26
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !88
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !50
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !89, !noalias !368 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !85, !noalias !368 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.r = icmp ugt i64 %i.q, 9223372036854775804
  br i1 %i.r, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !58

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc10 unwind label %bb.u

.noexc10:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #27
          to label %.noexc11 unwind label %bb.u

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !90, !noalias !368 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.l, align 8, !tbaa !90, !noalias !368
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.noexc11, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc11 ], [ %i.p, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc11 ], [ %i.o, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i, %.noexc11 ], [ %i.n, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 5 uses
  %i.u = phi ptr [ %i.s, %.noexc11 ], [ null, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 8 uses
  %i.v = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 10 uses
  %i.w = icmp sgt i64 %i.v, 4
  br i1 %i.w, label %bb.h, label %bb.i, !prof !91

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.t, i64 %i.v, i1 false), !noalias !368
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %.thread43, label %bb.j

.thread43:                                        ; preds = %bb.i
  %i.y = load i32, ptr %i.t, align 4, !tbaa !57, !noalias !368
  store i32 %i.y, ptr %i.u, align 4, !tbaa !57, !noalias !368
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread43, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !86
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ad) #25
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 1, ptr %5, align 8, !tbaa !88
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ae, align 8
  %.sroa.6.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx28, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i12 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i12, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ah = getelementptr inbounds i8, ptr null, i64 %i.v ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !86
  br label %bb.p

bb.l:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.aj = icmp ugt i64 %i.v, 9223372036854775804
  br i1 %i.aj, label %.noexc.i.i.i.i.i14, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, !prof !58

.noexc.i.i.i.i.i14:                               ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc15 unwind label %bb.w

.noexc15:                                         ; preds = %.noexc.i.i.i.i.i14
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13: ; preds = %bb.l
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #27
          to label %.noexc16 unwind label %bb.w   ; 5 uses

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !85
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !89
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.v ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.am, ptr %i.an, align 8, !tbaa !86
  %6 = icmp samesign ugt i64 %i.v, 4
  br i1 %6, label %bb.m, label %bb.n, !prof !115

bb.m:                                             ; preds = %.noexc16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.u, i64 %i.v, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc16
  %i.ao = icmp eq i64 %i.v, 4
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.u, align 4, !tbaa !57
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !57
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.thread
  %i.aq = phi ptr [ %i.am, %bb.m ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.ah, %.thread ]
  %i.ar = phi ptr [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.al, %bb.o ], [ %i.ag, %.thread ]
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.as = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread45 ; 4 uses

.thread45:                                        ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body17

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.as, ptr %0, align 8, !tbaa !94
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !95
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.au, ptr noundef nonnull %i.as)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 56) #25
  br label %.body17

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !96
  %i.ba = load i64, ptr %5, align 8, !tbaa !88
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !65
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bc(ptr noundef nonnull %i.bd)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #24
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i19 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit20, label %bb.t

bb.t:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #25
  br label %_ZN2cv8GMatDescD2Ev.exit20

_ZN2cv8GMatDescD2Ev.exit20:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %i.j, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.v

bb.v:                                             ; preds = %.body
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !86
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #25
  br label %_ZN2cv8GMatDescD2Ev.exit22

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, %.noexc.i.i.i.i.i14
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body17:                                          ; preds = %.thread45, %bb.q
  %i.bp = phi { ptr, i32 } [ %i.at, %.thread45 ], [ %i.ay, %bb.q ]
  %i.bq = load i64, ptr %5, align 8, !tbaa !88
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !65
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bs(ptr noundef nonnull %i.bt)
          to label %.loopexit unwind label %bb.x

bb.x:                                             ; preds = %.body17
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #24
  unreachable

.loopexit:                                        ; preds = %.body17, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %i.bp, %.body17 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i24 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.y

bb.y:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #25
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %bb.y, %.loopexit, %bb.v, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.v ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI15GOCLCmpGEScalarEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::function.18", align 8  ; 12 uses
  %2 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %3 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %4 = alloca %"class.cv::GOCLKernel", align 8    ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN2cv4gapi3ocl7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !371
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !noalias !371
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @_ZN2cv6detail13OCLCallHelperI15GOCLCmpGEScalarSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE4callERNS_11GOCLContextE, ptr %1, align 8, !tbaa !65, !noalias !371
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.d, align 8, !tbaa !69, !noalias !371
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.e, align 8, !tbaa !40, !noalias !371
  invoke void @_ZN2cv10GOCLKernelC1ERKSt8functionIFvRNS_11GOCLContextEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !371 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i1.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !371 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.k, null
  br i1 %.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit3.i:                ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !371
  br label %.body

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !371
  %i.o = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %.noexc unwind label %bb.aa    ; 5 uses

end_hunk_6
begin_hunk_7_@_ZN2cv14GKernelPackage13includeHelperI15GOCLCmpGEScalarEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv:bb.a
  call void @_ZNSt4pairIN2cv4gapi8GBackendENS0_11GKernelImplEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #23
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.af
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.dh, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ai ], [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  call void @_ZN2cv11GKernelImplD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.body
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn, %bb.aj ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN2cv4gapi8GBackendD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn13.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpGEScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpGEScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI15GOCLCmpGEScalarSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE4callERNS_11GOCLContextE(ptr noundef nonnull align 8 dereferenceable(80) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail13OCLCallHelperI15GOCLCmpGEScalarSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSC_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI15GOCLCmpGEScalarSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSC_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %4 = alloca %"class.cv::UMat", align 8          ; 7 uses
  %5 = alloca %"class.cv::Scalar_", align 16      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0), !noalias !376
  call void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull align 8 dereferenceable(184) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN2cv11GOCLContext5inValEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 1)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !111, !noalias !377
  store <2 x double> %i.c, ptr %5, align 16, !tbaa !111, !alias.scope !377
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.f = load <2 x double>, ptr %i.d, align 8, !tbaa !111, !noalias !377
  store <2 x double> %i.f, ptr %i.e, align 16, !tbaa !111, !alias.scope !377
  %i.g = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext7outMatREi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.h, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.i, align 4, !tbaa !79
  store i32 17432576, ptr %1, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %4, ptr %i.j, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1056833530, ptr %2, align 8, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %5, ptr %i.l, align 8, !tbaa !82
  store i64 17179869185, ptr %i.k, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.n, align 8
  store i32 34209792, ptr %3, align 8, !tbaa !81
  store ptr %i.g, ptr %i.m, align 8, !tbaa !82
  invoke void @_ZN2cv7compareERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.e:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpGEScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %5 = alloca [1 x %"class.cv::util::variant"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.c = load ptr, ptr %1, align 8, !tbaa !94     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef 1, i64 noundef %i.g) #26
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !88
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !50
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !89, !noalias !382 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !85, !noalias !382 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.r = icmp ugt i64 %i.q, 9223372036854775804
  br i1 %i.r, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !58

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc10 unwind label %bb.u

.noexc10:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #27
          to label %.noexc11 unwind label %bb.u

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !90, !noalias !382 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.l, align 8, !tbaa !90, !noalias !382
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.noexc11, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc11 ], [ %i.p, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc11 ], [ %i.o, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i, %.noexc11 ], [ %i.n, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 5 uses
  %i.u = phi ptr [ %i.s, %.noexc11 ], [ null, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 8 uses
  %i.v = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 10 uses
  %i.w = icmp sgt i64 %i.v, 4
  br i1 %i.w, label %bb.h, label %bb.i, !prof !91

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.t, i64 %i.v, i1 false), !noalias !382
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %.thread43, label %bb.j

.thread43:                                        ; preds = %bb.i
  %i.y = load i32, ptr %i.t, align 4, !tbaa !57, !noalias !382
  store i32 %i.y, ptr %i.u, align 4, !tbaa !57, !noalias !382
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread43, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !86
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ad) #25
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 1, ptr %5, align 8, !tbaa !88
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ae, align 8
  %.sroa.6.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx28, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i12 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i12, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ah = getelementptr inbounds i8, ptr null, i64 %i.v ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !86
  br label %bb.p

bb.l:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.aj = icmp ugt i64 %i.v, 9223372036854775804
  br i1 %i.aj, label %.noexc.i.i.i.i.i14, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, !prof !58

.noexc.i.i.i.i.i14:                               ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc15 unwind label %bb.w

.noexc15:                                         ; preds = %.noexc.i.i.i.i.i14
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13: ; preds = %bb.l
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #27
          to label %.noexc16 unwind label %bb.w   ; 5 uses

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !85
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !89
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.v ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.am, ptr %i.an, align 8, !tbaa !86
  %6 = icmp samesign ugt i64 %i.v, 4
  br i1 %6, label %bb.m, label %bb.n, !prof !115

bb.m:                                             ; preds = %.noexc16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.u, i64 %i.v, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc16
  %i.ao = icmp eq i64 %i.v, 4
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.u, align 4, !tbaa !57
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !57
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.thread
  %i.aq = phi ptr [ %i.am, %bb.m ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.ah, %.thread ]
  %i.ar = phi ptr [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.al, %bb.o ], [ %i.ag, %.thread ]
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.as = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread45 ; 4 uses

.thread45:                                        ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body17

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.as, ptr %0, align 8, !tbaa !94
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !95
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.au, ptr noundef nonnull %i.as)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 56) #25
  br label %.body17

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !96
  %i.ba = load i64, ptr %5, align 8, !tbaa !88
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !65
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bc(ptr noundef nonnull %i.bd)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #24
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i19 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit20, label %bb.t

bb.t:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #25
  br label %_ZN2cv8GMatDescD2Ev.exit20

_ZN2cv8GMatDescD2Ev.exit20:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %i.j, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.v

bb.v:                                             ; preds = %.body
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !86
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #25
  br label %_ZN2cv8GMatDescD2Ev.exit22

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, %.noexc.i.i.i.i.i14
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body17:                                          ; preds = %.thread45, %bb.q
  %i.bp = phi { ptr, i32 } [ %i.at, %.thread45 ], [ %i.ay, %bb.q ]
  %i.bq = load i64, ptr %5, align 8, !tbaa !88
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !65
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bs(ptr noundef nonnull %i.bt)
          to label %.loopexit unwind label %bb.x

bb.x:                                             ; preds = %.body17
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #24
  unreachable

.loopexit:                                        ; preds = %.body17, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %i.bp, %.body17 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i24 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.y

bb.y:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #25
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %bb.y, %.loopexit, %bb.v, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.v ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI15GOCLCmpLEScalarEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::function.18", align 8  ; 12 uses
  %2 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %3 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %4 = alloca %"class.cv::GOCLKernel", align 8    ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN2cv4gapi3ocl7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !385
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !noalias !385
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @_ZN2cv6detail13OCLCallHelperI15GOCLCmpLEScalarSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE4callERNS_11GOCLContextE, ptr %1, align 8, !tbaa !65, !noalias !385
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.d, align 8, !tbaa !69, !noalias !385
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.e, align 8, !tbaa !40, !noalias !385
  invoke void @_ZN2cv10GOCLKernelC1ERKSt8functionIFvRNS_11GOCLContextEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !385 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i1.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !385 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.k, null
  br i1 %.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit3.i:                ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !385
  br label %.body

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !385
  %i.o = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %.noexc unwind label %bb.aa    ; 5 uses

end_hunk_7
begin_hunk_8_@_ZN2cv14GKernelPackage13includeHelperI15GOCLCmpLEScalarEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv:bb.a
  call void @_ZNSt4pairIN2cv4gapi8GBackendENS0_11GKernelImplEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #23
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.af
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.dh, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ai ], [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  call void @_ZN2cv11GKernelImplD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.body
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn, %bb.aj ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN2cv4gapi8GBackendD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn13.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpLEScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpLEScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI15GOCLCmpLEScalarSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE4callERNS_11GOCLContextE(ptr noundef nonnull align 8 dereferenceable(80) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail13OCLCallHelperI15GOCLCmpLEScalarSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSC_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI15GOCLCmpLEScalarSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSC_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %4 = alloca %"class.cv::UMat", align 8          ; 7 uses
  %5 = alloca %"class.cv::Scalar_", align 16      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0), !noalias !390
  call void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull align 8 dereferenceable(184) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN2cv11GOCLContext5inValEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 1)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !111, !noalias !391
  store <2 x double> %i.c, ptr %5, align 16, !tbaa !111, !alias.scope !391
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.f = load <2 x double>, ptr %i.d, align 8, !tbaa !111, !noalias !391
  store <2 x double> %i.f, ptr %i.e, align 16, !tbaa !111, !alias.scope !391
  %i.g = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext7outMatREi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.h, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.i, align 4, !tbaa !79
  store i32 17432576, ptr %1, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %4, ptr %i.j, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1056833530, ptr %2, align 8, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %5, ptr %i.l, align 8, !tbaa !82
  store i64 17179869185, ptr %i.k, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.n, align 8
  store i32 34209792, ptr %3, align 8, !tbaa !81
  store ptr %i.g, ptr %i.m, align 8, !tbaa !82
  invoke void @_ZN2cv7compareERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 4)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.e:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpLEScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %5 = alloca [1 x %"class.cv::util::variant"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.c = load ptr, ptr %1, align 8, !tbaa !94     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef 1, i64 noundef %i.g) #26
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !88
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !50
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !89, !noalias !396 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !85, !noalias !396 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.r = icmp ugt i64 %i.q, 9223372036854775804
  br i1 %i.r, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !58

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc10 unwind label %bb.u

.noexc10:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #27
          to label %.noexc11 unwind label %bb.u

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !90, !noalias !396 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.l, align 8, !tbaa !90, !noalias !396
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.noexc11, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc11 ], [ %i.p, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc11 ], [ %i.o, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i, %.noexc11 ], [ %i.n, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 5 uses
  %i.u = phi ptr [ %i.s, %.noexc11 ], [ null, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 8 uses
  %i.v = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 10 uses
  %i.w = icmp sgt i64 %i.v, 4
  br i1 %i.w, label %bb.h, label %bb.i, !prof !91

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.t, i64 %i.v, i1 false), !noalias !396
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %.thread43, label %bb.j

.thread43:                                        ; preds = %bb.i
  %i.y = load i32, ptr %i.t, align 4, !tbaa !57, !noalias !396
  store i32 %i.y, ptr %i.u, align 4, !tbaa !57, !noalias !396
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread43, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !86
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ad) #25
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 1, ptr %5, align 8, !tbaa !88
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ae, align 8
  %.sroa.6.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx28, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i12 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i12, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ah = getelementptr inbounds i8, ptr null, i64 %i.v ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !86
  br label %bb.p

bb.l:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.aj = icmp ugt i64 %i.v, 9223372036854775804
  br i1 %i.aj, label %.noexc.i.i.i.i.i14, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, !prof !58

.noexc.i.i.i.i.i14:                               ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc15 unwind label %bb.w

.noexc15:                                         ; preds = %.noexc.i.i.i.i.i14
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13: ; preds = %bb.l
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #27
          to label %.noexc16 unwind label %bb.w   ; 5 uses

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !85
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !89
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.v ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.am, ptr %i.an, align 8, !tbaa !86
  %6 = icmp samesign ugt i64 %i.v, 4
  br i1 %6, label %bb.m, label %bb.n, !prof !115

bb.m:                                             ; preds = %.noexc16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.u, i64 %i.v, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc16
  %i.ao = icmp eq i64 %i.v, 4
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.u, align 4, !tbaa !57
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !57
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.thread
  %i.aq = phi ptr [ %i.am, %bb.m ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.ah, %.thread ]
  %i.ar = phi ptr [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.al, %bb.o ], [ %i.ag, %.thread ]
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.as = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread45 ; 4 uses

.thread45:                                        ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body17

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.as, ptr %0, align 8, !tbaa !94
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !95
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.au, ptr noundef nonnull %i.as)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 56) #25
  br label %.body17

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !96
  %i.ba = load i64, ptr %5, align 8, !tbaa !88
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !65
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bc(ptr noundef nonnull %i.bd)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #24
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i19 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit20, label %bb.t

bb.t:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #25
  br label %_ZN2cv8GMatDescD2Ev.exit20

_ZN2cv8GMatDescD2Ev.exit20:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %i.j, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.v

bb.v:                                             ; preds = %.body
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !86
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #25
  br label %_ZN2cv8GMatDescD2Ev.exit22

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, %.noexc.i.i.i.i.i14
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body17:                                          ; preds = %.thread45, %bb.q
  %i.bp = phi { ptr, i32 } [ %i.at, %.thread45 ], [ %i.ay, %bb.q ]
  %i.bq = load i64, ptr %5, align 8, !tbaa !88
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !65
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bs(ptr noundef nonnull %i.bt)
          to label %.loopexit unwind label %bb.x

bb.x:                                             ; preds = %.body17
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #24
  unreachable

.loopexit:                                        ; preds = %.body17, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %i.bp, %.body17 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i24 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.y

bb.y:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #25
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %bb.y, %.loopexit, %bb.v, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.v ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI15GOCLCmpLTScalarEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::function.18", align 8  ; 12 uses
  %2 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %3 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %4 = alloca %"class.cv::GOCLKernel", align 8    ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN2cv4gapi3ocl7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !399
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !noalias !399
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @_ZN2cv6detail13OCLCallHelperI15GOCLCmpLTScalarSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE4callERNS_11GOCLContextE, ptr %1, align 8, !tbaa !65, !noalias !399
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.d, align 8, !tbaa !69, !noalias !399
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.e, align 8, !tbaa !40, !noalias !399
  invoke void @_ZN2cv10GOCLKernelC1ERKSt8functionIFvRNS_11GOCLContextEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !399 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i1.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !399 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.k, null
  br i1 %.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit3.i:                ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !399
  br label %.body

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !399
  %i.o = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %.noexc unwind label %bb.aa    ; 5 uses

end_hunk_8
begin_hunk_9_@_ZN2cv14GKernelPackage13includeHelperI15GOCLCmpLTScalarEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv:bb.a
  call void @_ZNSt4pairIN2cv4gapi8GBackendENS0_11GKernelImplEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #23
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.af
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.dh, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ai ], [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  call void @_ZN2cv11GKernelImplD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.body
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn, %bb.aj ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN2cv4gapi8GBackendD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn13.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpLTScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpLTScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI15GOCLCmpLTScalarSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE4callERNS_11GOCLContextE(ptr noundef nonnull align 8 dereferenceable(80) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail13OCLCallHelperI15GOCLCmpLTScalarSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSC_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI15GOCLCmpLTScalarSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSC_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %4 = alloca %"class.cv::UMat", align 8          ; 7 uses
  %5 = alloca %"class.cv::Scalar_", align 16      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0), !noalias !404
  call void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull align 8 dereferenceable(184) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN2cv11GOCLContext5inValEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 1)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !111, !noalias !405
  store <2 x double> %i.c, ptr %5, align 16, !tbaa !111, !alias.scope !405
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.f = load <2 x double>, ptr %i.d, align 8, !tbaa !111, !noalias !405
  store <2 x double> %i.f, ptr %i.e, align 16, !tbaa !111, !alias.scope !405
  %i.g = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext7outMatREi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.h, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.i, align 4, !tbaa !79
  store i32 17432576, ptr %1, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %4, ptr %i.j, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1056833530, ptr %2, align 8, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %5, ptr %i.l, align 8, !tbaa !82
  store i64 17179869185, ptr %i.k, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.n, align 8
  store i32 34209792, ptr %3, align 8, !tbaa !81
  store ptr %i.g, ptr %i.m, align 8, !tbaa !82
  invoke void @_ZN2cv7compareERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.e:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpLTScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %5 = alloca [1 x %"class.cv::util::variant"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.c = load ptr, ptr %1, align 8, !tbaa !94     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef 1, i64 noundef %i.g) #26
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !88
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !50
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !89, !noalias !410 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !85, !noalias !410 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.r = icmp ugt i64 %i.q, 9223372036854775804
  br i1 %i.r, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !58

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc10 unwind label %bb.u

.noexc10:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #27
          to label %.noexc11 unwind label %bb.u

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !90, !noalias !410 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.l, align 8, !tbaa !90, !noalias !410
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.noexc11, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc11 ], [ %i.p, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc11 ], [ %i.o, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i, %.noexc11 ], [ %i.n, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 5 uses
  %i.u = phi ptr [ %i.s, %.noexc11 ], [ null, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 8 uses
  %i.v = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 10 uses
  %i.w = icmp sgt i64 %i.v, 4
  br i1 %i.w, label %bb.h, label %bb.i, !prof !91

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.t, i64 %i.v, i1 false), !noalias !410
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %.thread43, label %bb.j

.thread43:                                        ; preds = %bb.i
  %i.y = load i32, ptr %i.t, align 4, !tbaa !57, !noalias !410
  store i32 %i.y, ptr %i.u, align 4, !tbaa !57, !noalias !410
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread43, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !86
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ad) #25
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 1, ptr %5, align 8, !tbaa !88
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ae, align 8
  %.sroa.6.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx28, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i12 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i12, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ah = getelementptr inbounds i8, ptr null, i64 %i.v ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !86
  br label %bb.p

bb.l:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.aj = icmp ugt i64 %i.v, 9223372036854775804
  br i1 %i.aj, label %.noexc.i.i.i.i.i14, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, !prof !58

.noexc.i.i.i.i.i14:                               ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc15 unwind label %bb.w

.noexc15:                                         ; preds = %.noexc.i.i.i.i.i14
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13: ; preds = %bb.l
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #27
          to label %.noexc16 unwind label %bb.w   ; 5 uses

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !85
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !89
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.v ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.am, ptr %i.an, align 8, !tbaa !86
  %6 = icmp samesign ugt i64 %i.v, 4
  br i1 %6, label %bb.m, label %bb.n, !prof !115

bb.m:                                             ; preds = %.noexc16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.u, i64 %i.v, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc16
  %i.ao = icmp eq i64 %i.v, 4
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.u, align 4, !tbaa !57
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !57
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.thread
  %i.aq = phi ptr [ %i.am, %bb.m ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.ah, %.thread ]
  %i.ar = phi ptr [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.al, %bb.o ], [ %i.ag, %.thread ]
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.as = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread45 ; 4 uses

.thread45:                                        ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body17

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.as, ptr %0, align 8, !tbaa !94
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !95
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.au, ptr noundef nonnull %i.as)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 56) #25
  br label %.body17

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !96
  %i.ba = load i64, ptr %5, align 8, !tbaa !88
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !65
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bc(ptr noundef nonnull %i.bd)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #24
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i19 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit20, label %bb.t

bb.t:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #25
  br label %_ZN2cv8GMatDescD2Ev.exit20

_ZN2cv8GMatDescD2Ev.exit20:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %i.j, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.v

bb.v:                                             ; preds = %.body
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !86
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #25
  br label %_ZN2cv8GMatDescD2Ev.exit22

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, %.noexc.i.i.i.i.i14
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body17:                                          ; preds = %.thread45, %bb.q
  %i.bp = phi { ptr, i32 } [ %i.at, %.thread45 ], [ %i.ay, %bb.q ]
  %i.bq = load i64, ptr %5, align 8, !tbaa !88
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !65
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bs(ptr noundef nonnull %i.bt)
          to label %.loopexit unwind label %bb.x

bb.x:                                             ; preds = %.body17
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #24
  unreachable

.loopexit:                                        ; preds = %.body17, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %i.bp, %.body17 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i24 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.y

bb.y:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #25
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %bb.y, %.loopexit, %bb.v, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.v ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI15GOCLCmpEQScalarEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::function.18", align 8  ; 12 uses
  %2 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %3 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %4 = alloca %"class.cv::GOCLKernel", align 8    ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN2cv4gapi3ocl7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !413
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !noalias !413
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @_ZN2cv6detail13OCLCallHelperI15GOCLCmpEQScalarSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE4callERNS_11GOCLContextE, ptr %1, align 8, !tbaa !65, !noalias !413
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.d, align 8, !tbaa !69, !noalias !413
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.e, align 8, !tbaa !40, !noalias !413
  invoke void @_ZN2cv10GOCLKernelC1ERKSt8functionIFvRNS_11GOCLContextEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !413 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i1.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !413 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.k, null
  br i1 %.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit3.i:                ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !413
  br label %.body

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !413
  %i.o = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %.noexc unwind label %bb.aa    ; 5 uses

end_hunk_9
begin_hunk_10_@_ZN2cv14GKernelPackage13includeHelperI15GOCLCmpEQScalarEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv:bb.a
  call void @_ZNSt4pairIN2cv4gapi8GBackendENS0_11GKernelImplEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #23
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.af
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.dh, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ai ], [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  call void @_ZN2cv11GKernelImplD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.body
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn, %bb.aj ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN2cv4gapi8GBackendD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn13.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpEQScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpEQScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI15GOCLCmpEQScalarSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE4callERNS_11GOCLContextE(ptr noundef nonnull align 8 dereferenceable(80) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail13OCLCallHelperI15GOCLCmpEQScalarSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSC_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI15GOCLCmpEQScalarSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSC_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %4 = alloca %"class.cv::UMat", align 8          ; 7 uses
  %5 = alloca %"class.cv::Scalar_", align 16      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0), !noalias !418
  call void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull align 8 dereferenceable(184) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN2cv11GOCLContext5inValEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 1)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !111, !noalias !419
  store <2 x double> %i.c, ptr %5, align 16, !tbaa !111, !alias.scope !419
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.f = load <2 x double>, ptr %i.d, align 8, !tbaa !111, !noalias !419
  store <2 x double> %i.f, ptr %i.e, align 16, !tbaa !111, !alias.scope !419
  %i.g = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext7outMatREi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.h, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.i, align 4, !tbaa !79
  store i32 17432576, ptr %1, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %4, ptr %i.j, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1056833530, ptr %2, align 8, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %5, ptr %i.l, align 8, !tbaa !82
  store i64 17179869185, ptr %i.k, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.n, align 8
  store i32 34209792, ptr %3, align 8, !tbaa !81
  store ptr %i.g, ptr %i.m, align 8, !tbaa !82
  invoke void @_ZN2cv7compareERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.e:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpEQScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %5 = alloca [1 x %"class.cv::util::variant"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.c = load ptr, ptr %1, align 8, !tbaa !94     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef 1, i64 noundef %i.g) #26
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !88
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !50
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !89, !noalias !424 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !85, !noalias !424 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.r = icmp ugt i64 %i.q, 9223372036854775804
  br i1 %i.r, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !58

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc10 unwind label %bb.u

.noexc10:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #27
          to label %.noexc11 unwind label %bb.u

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !90, !noalias !424 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.l, align 8, !tbaa !90, !noalias !424
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.noexc11, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc11 ], [ %i.p, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc11 ], [ %i.o, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i, %.noexc11 ], [ %i.n, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 5 uses
  %i.u = phi ptr [ %i.s, %.noexc11 ], [ null, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 8 uses
  %i.v = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 10 uses
  %i.w = icmp sgt i64 %i.v, 4
  br i1 %i.w, label %bb.h, label %bb.i, !prof !91

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.t, i64 %i.v, i1 false), !noalias !424
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %.thread43, label %bb.j

.thread43:                                        ; preds = %bb.i
  %i.y = load i32, ptr %i.t, align 4, !tbaa !57, !noalias !424
  store i32 %i.y, ptr %i.u, align 4, !tbaa !57, !noalias !424
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread43, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !86
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ad) #25
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 1, ptr %5, align 8, !tbaa !88
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ae, align 8
  %.sroa.6.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx28, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i12 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i12, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ah = getelementptr inbounds i8, ptr null, i64 %i.v ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !86
  br label %bb.p

bb.l:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.aj = icmp ugt i64 %i.v, 9223372036854775804
  br i1 %i.aj, label %.noexc.i.i.i.i.i14, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, !prof !58

.noexc.i.i.i.i.i14:                               ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc15 unwind label %bb.w

.noexc15:                                         ; preds = %.noexc.i.i.i.i.i14
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13: ; preds = %bb.l
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #27
          to label %.noexc16 unwind label %bb.w   ; 5 uses

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !85
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !89
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.v ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.am, ptr %i.an, align 8, !tbaa !86
  %6 = icmp samesign ugt i64 %i.v, 4
  br i1 %6, label %bb.m, label %bb.n, !prof !115

bb.m:                                             ; preds = %.noexc16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.u, i64 %i.v, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc16
  %i.ao = icmp eq i64 %i.v, 4
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.u, align 4, !tbaa !57
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !57
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.thread
  %i.aq = phi ptr [ %i.am, %bb.m ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.ah, %.thread ]
  %i.ar = phi ptr [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.al, %bb.o ], [ %i.ag, %.thread ]
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.as = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread45 ; 4 uses

.thread45:                                        ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body17

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.as, ptr %0, align 8, !tbaa !94
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !95
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.au, ptr noundef nonnull %i.as)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 56) #25
  br label %.body17

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !96
  %i.ba = load i64, ptr %5, align 8, !tbaa !88
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !65
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bc(ptr noundef nonnull %i.bd)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #24
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i19 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit20, label %bb.t

bb.t:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #25
  br label %_ZN2cv8GMatDescD2Ev.exit20

_ZN2cv8GMatDescD2Ev.exit20:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %i.j, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.v

bb.v:                                             ; preds = %.body
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !86
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #25
  br label %_ZN2cv8GMatDescD2Ev.exit22

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, %.noexc.i.i.i.i.i14
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body17:                                          ; preds = %.thread45, %bb.q
  %i.bp = phi { ptr, i32 } [ %i.at, %.thread45 ], [ %i.ay, %bb.q ]
  %i.bq = load i64, ptr %5, align 8, !tbaa !88
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !65
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bs(ptr noundef nonnull %i.bt)
          to label %.loopexit unwind label %bb.x

bb.x:                                             ; preds = %.body17
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #24
  unreachable

.loopexit:                                        ; preds = %.body17, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %i.bp, %.body17 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i24 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.y

bb.y:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #25
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %bb.y, %.loopexit, %bb.v, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.v ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI15GOCLCmpNEScalarEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::function.18", align 8  ; 12 uses
  %2 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %3 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %4 = alloca %"class.cv::GOCLKernel", align 8    ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN2cv4gapi3ocl7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !427
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !noalias !427
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @_ZN2cv6detail13OCLCallHelperI15GOCLCmpNEScalarSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE4callERNS_11GOCLContextE, ptr %1, align 8, !tbaa !65, !noalias !427
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.d, align 8, !tbaa !69, !noalias !427
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.e, align 8, !tbaa !40, !noalias !427
  invoke void @_ZN2cv10GOCLKernelC1ERKSt8functionIFvRNS_11GOCLContextEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !427 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i1.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !427 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.k, null
  br i1 %.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit3.i:                ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !427
  br label %.body

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !427
  %i.o = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %.noexc unwind label %bb.aa    ; 5 uses

end_hunk_10
begin_hunk_11_@_ZN2cv14GKernelPackage13includeHelperI15GOCLCmpNEScalarEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv:bb.a
  call void @_ZNSt4pairIN2cv4gapi8GBackendENS0_11GKernelImplEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #23
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.af
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.dh, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ai ], [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  call void @_ZN2cv11GKernelImplD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.body
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn, %bb.aj ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN2cv4gapi8GBackendD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn13.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpNEScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpNEScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI15GOCLCmpNEScalarSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE4callERNS_11GOCLContextE(ptr noundef nonnull align 8 dereferenceable(80) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail13OCLCallHelperI15GOCLCmpNEScalarSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSC_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI15GOCLCmpNEScalarSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSC_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %4 = alloca %"class.cv::UMat", align 8          ; 7 uses
  %5 = alloca %"class.cv::Scalar_", align 16      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0), !noalias !432
  call void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull align 8 dereferenceable(184) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN2cv11GOCLContext5inValEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 1)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !111, !noalias !433
  store <2 x double> %i.c, ptr %5, align 16, !tbaa !111, !alias.scope !433
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.f = load <2 x double>, ptr %i.d, align 8, !tbaa !111, !noalias !433
  store <2 x double> %i.f, ptr %i.e, align 16, !tbaa !111, !alias.scope !433
  %i.g = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext7outMatREi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.h, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.i, align 4, !tbaa !79
  store i32 17432576, ptr %1, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %4, ptr %i.j, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1056833530, ptr %2, align 8, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %5, ptr %i.l, align 8, !tbaa !82
  store i64 17179869185, ptr %i.k, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.n, align 8
  store i32 34209792, ptr %3, align 8, !tbaa !81
  store ptr %i.g, ptr %i.m, align 8, !tbaa !82
  invoke void @_ZN2cv7compareERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 5)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.e:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpNEScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %5 = alloca [1 x %"class.cv::util::variant"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.c = load ptr, ptr %1, align 8, !tbaa !94     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef 1, i64 noundef %i.g) #26
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !88
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !50
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !89, !noalias !438 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !85, !noalias !438 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.r = icmp ugt i64 %i.q, 9223372036854775804
  br i1 %i.r, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !58

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc10 unwind label %bb.u

.noexc10:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #27
          to label %.noexc11 unwind label %bb.u

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !90, !noalias !438 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.l, align 8, !tbaa !90, !noalias !438
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.noexc11, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc11 ], [ %i.p, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc11 ], [ %i.o, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i, %.noexc11 ], [ %i.n, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 5 uses
  %i.u = phi ptr [ %i.s, %.noexc11 ], [ null, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 8 uses
  %i.v = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 10 uses
  %i.w = icmp sgt i64 %i.v, 4
  br i1 %i.w, label %bb.h, label %bb.i, !prof !91

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.t, i64 %i.v, i1 false), !noalias !438
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %.thread43, label %bb.j

.thread43:                                        ; preds = %bb.i
  %i.y = load i32, ptr %i.t, align 4, !tbaa !57, !noalias !438
  store i32 %i.y, ptr %i.u, align 4, !tbaa !57, !noalias !438
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread43, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !86
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ad) #25
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 1, ptr %5, align 8, !tbaa !88
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ae, align 8
  %.sroa.6.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx28, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i12 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i12, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ah = getelementptr inbounds i8, ptr null, i64 %i.v ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !86
  br label %bb.p

bb.l:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.aj = icmp ugt i64 %i.v, 9223372036854775804
  br i1 %i.aj, label %.noexc.i.i.i.i.i14, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, !prof !58

.noexc.i.i.i.i.i14:                               ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc15 unwind label %bb.w

.noexc15:                                         ; preds = %.noexc.i.i.i.i.i14
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13: ; preds = %bb.l
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #27
          to label %.noexc16 unwind label %bb.w   ; 5 uses

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !85
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !89
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.v ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.am, ptr %i.an, align 8, !tbaa !86
  %6 = icmp samesign ugt i64 %i.v, 4
  br i1 %6, label %bb.m, label %bb.n, !prof !115

bb.m:                                             ; preds = %.noexc16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.u, i64 %i.v, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc16
  %i.ao = icmp eq i64 %i.v, 4
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.u, align 4, !tbaa !57
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !57
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.thread
  %i.aq = phi ptr [ %i.am, %bb.m ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.ah, %.thread ]
  %i.ar = phi ptr [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.al, %bb.o ], [ %i.ag, %.thread ]
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.as = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread45 ; 4 uses

.thread45:                                        ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body17

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.as, ptr %0, align 8, !tbaa !94
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !95
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.au, ptr noundef nonnull %i.as)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 56) #25
  br label %.body17

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !96
  %i.ba = load i64, ptr %5, align 8, !tbaa !88
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !65
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bc(ptr noundef nonnull %i.bd)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #24
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i19 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit20, label %bb.t

bb.t:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #25
  br label %_ZN2cv8GMatDescD2Ev.exit20

_ZN2cv8GMatDescD2Ev.exit20:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %i.j, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.v

bb.v:                                             ; preds = %.body
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !86
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #25
  br label %_ZN2cv8GMatDescD2Ev.exit22

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, %.noexc.i.i.i.i.i14
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body17:                                          ; preds = %.thread45, %bb.q
  %i.bp = phi { ptr, i32 } [ %i.at, %.thread45 ], [ %i.ay, %bb.q ]
  %i.bq = load i64, ptr %5, align 8, !tbaa !88
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !65
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bs(ptr noundef nonnull %i.bt)
          to label %.loopexit unwind label %bb.x

bb.x:                                             ; preds = %.body17
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #24
  unreachable

.loopexit:                                        ; preds = %.body17, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %i.bp, %.body17 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i24 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.y

bb.y:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #25
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %bb.y, %.loopexit, %bb.v, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.v ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI7GOCLAndEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::function.18", align 8  ; 12 uses
  %2 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %3 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %4 = alloca %"class.cv::GOCLKernel", align 8    ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN2cv4gapi3ocl7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !441
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !noalias !441
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @_ZN2cv6detail13OCLCallHelperI7GOCLAndSt5tupleIJNS_4GMatES4_EES3_IJS4_EEE4callERNS_11GOCLContextE, ptr %1, align 8, !tbaa !65, !noalias !441
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.d, align 8, !tbaa !69, !noalias !441
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.e, align 8, !tbaa !40, !noalias !441
  invoke void @_ZN2cv10GOCLKernelC1ERKSt8functionIFvRNS_11GOCLContextEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !441 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i1.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !441 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.k, null
  br i1 %.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit3.i:                ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !441
  br label %.body

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !441
  %i.o = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %.noexc unwind label %bb.aa    ; 5 uses

end_hunk_11
begin_hunk_12_@_ZN2cv14GKernelPackage13includeHelperI12GOCLAbsDiffCEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv:bb.a
  call void @_ZNSt4pairIN2cv4gapi8GBackendENS0_11GKernelImplEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #23
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.af
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.dh, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ai ], [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  call void @_ZN2cv11GKernelImplD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.body
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn, %bb.aj ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN2cv4gapi8GBackendD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn13.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core9GAbsDiffCESt5tupleIJNS_4GMatENS_7GScalarEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core9GAbsDiffCESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI12GOCLAbsDiffCSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE4callERNS_11GOCLContextE(ptr noundef nonnull align 8 dereferenceable(80) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail13OCLCallHelperI12GOCLAbsDiffCSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSC_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI12GOCLAbsDiffCSt5tupleIJNS_4GMatENS_7GScalarEEES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSC_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %4 = alloca %"class.cv::UMat", align 8          ; 7 uses
  %5 = alloca %"class.cv::Scalar_", align 16      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0), !noalias !536
  call void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull align 8 dereferenceable(184) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN2cv11GOCLContext5inValEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 1)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !111, !noalias !537
  store <2 x double> %i.c, ptr %5, align 16, !tbaa !111, !alias.scope !537
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.f = load <2 x double>, ptr %i.d, align 8, !tbaa !111, !noalias !537
  store <2 x double> %i.f, ptr %i.e, align 16, !tbaa !111, !alias.scope !537
  %i.g = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext7outMatREi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.h, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.i, align 4, !tbaa !79
  store i32 17432576, ptr %1, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %4, ptr %i.j, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1056833530, ptr %2, align 8, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %5, ptr %i.l, align 8, !tbaa !82
  store i64 17179869185, ptr %i.k, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.n, align 8
  store i32 34209792, ptr %3, align 8, !tbaa !81
  store ptr %i.g, ptr %i.m, align 8, !tbaa !82
  invoke void @_ZN2cv7absdiffERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.e:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core9GAbsDiffCESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.024 = alloca [24 x i8], align 8          ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 10 uses
  %5 = alloca [1 x %"class.cv::util::variant"], align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.024)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.c = load ptr, ptr %1, align 8, !tbaa !94     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef 1, i64 noundef %i.g) #26
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !88
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !50
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.024, ptr noundef nonnull align 8 dereferenceable(17) %4, i64 17, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !89, !noalias !540 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !85, !noalias !540 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.r = icmp ugt i64 %i.q, 9223372036854775804
  br i1 %i.r, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !58

.noexc.i.i.i.i:                                   ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc10 unwind label %bb.u

.noexc10:                                         ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #27
          to label %.noexc11 unwind label %bb.u

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !90, !noalias !540 ; 2 uses
  %.pre1.i = load ptr, ptr %i.l, align 8, !tbaa !90, !noalias !540
  %.pre2.i = ptrtoint ptr %.pre1.i to i64
  %.pre3.i = ptrtoint ptr %.pre.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.noexc11, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %.pre-phi4.i = phi i64 [ %.pre3.i, %.noexc11 ], [ %i.p, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre2.i, %.noexc11 ], [ %i.o, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %i.t = phi ptr [ %.pre.i, %.noexc11 ], [ %i.n, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 5 uses
  %i.u = phi ptr [ %i.s, %.noexc11 ], [ null, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 8 uses
  %i.v = sub i64 %.pre-phi.i, %.pre-phi4.i        ; 10 uses
  %i.w = icmp sgt i64 %i.v, 4
  br i1 %i.w, label %bb.h, label %bb.i, !prof !91

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.t, i64 %i.v, i1 false), !noalias !540
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %.thread38, label %bb.j

.thread38:                                        ; preds = %bb.i
  %i.y = load i32, ptr %i.t, align 4, !tbaa !57, !noalias !540
  store i32 %i.y, ptr %i.u, align 4, !tbaa !57, !noalias !540
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread38, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !86
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ad) #25
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 1, ptr %5, align 8, !tbaa !88
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ae, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.024, i64 17, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.pre-phi.i, %.pre-phi4.i
  br i1 %.not.i.i.i.i.i.i.i, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ah = getelementptr inbounds i8, ptr null, i64 %i.v ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !86
  br label %bb.p

bb.l:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.aj = icmp ugt i64 %i.v, 9223372036854775804
  br i1 %i.aj, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !58

.noexc.i.i.i.i.i:                                 ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc12 unwind label %bb.w

.noexc12:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #27
          to label %.noexc13 unwind label %bb.w   ; 5 uses

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !85
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !89
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.v ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.am, ptr %i.an, align 8, !tbaa !86
  %6 = icmp samesign ugt i64 %i.v, 4
  br i1 %6, label %bb.m, label %bb.n, !prof !115

bb.m:                                             ; preds = %.noexc13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.u, i64 %i.v, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc13
  %i.ao = icmp eq i64 %i.v, 4
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.u, align 4, !tbaa !57
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !57
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.thread
  %i.aq = phi ptr [ %i.am, %bb.m ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.ah, %.thread ]
  %i.ar = phi ptr [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.al, %bb.o ], [ %i.ag, %.thread ]
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.as = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread40 ; 4 uses

.thread40:                                        ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body14

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.as, ptr %0, align 8, !tbaa !94
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !95
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.au, ptr noundef nonnull %i.as)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 56) #25
  br label %.body14

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !96
  %i.ba = load i64, ptr %5, align 8, !tbaa !88
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !65
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bc(ptr noundef nonnull %i.bd)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #24
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i16 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i16, label %_ZN2cv8GMatDescD2Ev.exit17, label %bb.t

bb.t:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #25
  br label %_ZN2cv8GMatDescD2Ev.exit17

_ZN2cv8GMatDescD2Ev.exit17:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.024)
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %i.j, %bb.e ]
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i18, label %_ZN2cv8GMatDescD2Ev.exit19, label %bb.v

bb.v:                                             ; preds = %.body
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !86
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #25
  br label %_ZN2cv8GMatDescD2Ev.exit19

_ZN2cv8GMatDescD2Ev.exit19:                       ; preds = %.body, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN2cv8GMatDescD2Ev.exit22

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body14:                                          ; preds = %.thread40, %bb.q
  %i.bp = phi { ptr, i32 } [ %i.at, %.thread40 ], [ %i.ay, %bb.q ]
  %i.bq = load i64, ptr %5, align 8, !tbaa !88
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !65
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bs(ptr noundef nonnull %i.bt)
          to label %.loopexit unwind label %bb.x

bb.x:                                             ; preds = %.body14
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #24
  unreachable

.loopexit:                                        ; preds = %.body14, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %i.bp, %.body14 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i21 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.y

bb.y:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #25
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %bb.y, %.loopexit, %_ZN2cv8GMatDescD2Ev.exit19
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZN2cv8GMatDescD2Ev.exit19 ], [ %.pn, %.loopexit ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.024)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI7GOCLSumEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::function.18", align 8  ; 12 uses
  %2 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %3 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %4 = alloca %"class.cv::GOCLKernel", align 8    ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN2cv4gapi3ocl7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !543
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !noalias !543
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @_ZN2cv6detail13OCLCallHelperI7GOCLSumSt5tupleIJNS_4GMatEEES3_IJNS_7GScalarEEEE4callERNS_11GOCLContextE, ptr %1, align 8, !tbaa !65, !noalias !543
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.d, align 8, !tbaa !69, !noalias !543
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.e, align 8, !tbaa !40, !noalias !543
  invoke void @_ZN2cv10GOCLKernelC1ERKSt8functionIFvRNS_11GOCLContextEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !543 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i1.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !543 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.k, null
  br i1 %.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit3.i:                ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !543
  br label %.body

bb.h:                                             ; preds = %bb.c, %bb.b
end_hunk_12
begin_hunk_13_@_ZN2cv6detail13OCLCallHelperI15GOCLThresholdOTSt5tupleIJNS_4GMatENS_7GScalarEiEES3_IJS4_S5_EEE9call_implIJLi0ELi1ELi2EEJLi0ELi1EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSC_IJXspT0_EEEE:bb.a
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN2cv4util8any_castIiEEPT_PNS0_3anyE.exit.thread.i.i.i.i
  unreachable

bb.e:                                             ; preds = %_ZN2cv4util8any_castIiEEPT_PNS0_3anyE.exit.thread.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body

bb.f:                                             ; preds = %_ZN2cv4util8any_castIiEEPT_PNS0_3anyE.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !57
  %i.r = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext7outMatREi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN2cv11GOCLContext7outValREi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 1)
          to label %_ZN2cv6detail11ocl_get_outINS_7GScalarEE3getERNS_11GOCLContextEi.exit unwind label %bb.k ; 2 uses

_ZN2cv6detail11ocl_get_outINS_7GScalarEE3getERNS_11GOCLContextEi.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.t, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.u, align 4, !tbaa !79
  store i32 17432576, ptr %1, align 8, !tbaa !81
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %4, ptr %i.v, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.x, align 8
  store i32 34209792, ptr %2, align 8, !tbaa !81
  store ptr %i.r, ptr %i.w, align 8, !tbaa !82
  %i.y = invoke noundef double @_ZN2cv9thresholdERKNS_11_InputArrayERKNS_12_OutputArrayEddi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef %i.c, double noundef %i.c, i32 noundef %i.q)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZN2cv6detail11ocl_get_outINS_7GScalarEE3getERNS_11GOCLContextEi.exit
  store double %i.y, ptr %i.s, align 8, !tbaa !111
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.i:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZN2cv6detail11ocl_get_outINS_7GScalarEE3getERNS_11GOCLContextEi.exit, %bb.g, %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.e, %bb.j, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.ac, %bb.k ], [ %i.ab, %bb.j ], [ %i.o, %bb.e ]
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GThresholdOTESt5tupleIJNS_4GMatENS_7GScalarEiEES5_IJS6_S7_EEE15getOutMeta_implIJLi0ELi1ELi2EEJLi0ELi1EEEESt6vectorINS_4util7variantIJNSD_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISL_EERKSN_RKSC_INS_4GArgESaISQ_EENS0_3SeqIJXspT_EEEENSV_IJXspT0_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %4 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.030 = alloca [24 x i8], align 8          ; 5 uses
  %5 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %6 = alloca [2 x %"class.cv::util::variant"], align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.030)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.c = load ptr, ptr %1, align 8, !tbaa !94     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %.invoke

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !88
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.b

bb.b:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %4, align 8, !tbaa !50
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75
  %i.m = load ptr, ptr %2, align 8, !tbaa !76     ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4                   ; 2 uses
  %.not.i.i.i13 = icmp ugt i64 %i.q, 2
  br i1 %.not.i.i.i13, label %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i, label %.invoke

.invoke:                                          ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, %bb.a
  %i.r = phi i64 [ 1, %bb.a ], [ 2, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ]
  %i.s = phi i64 [ %i.g, %bb.a ], [ %i.q, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.r, i64 noundef %i.s) #26
          to label %.cont unwind label %bb.w

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i:     ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !48   ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.i.i.i

_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.i.i.i: ; preds = %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  %i.w = call ptr @__dynamic_cast(ptr nonnull %i.u, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implIiEE, i64 0) #23
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %bb.g

_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i: ; preds = %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.i.i.i, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %3, align 8, !tbaa !50
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  unreachable

bb.f:                                             ; preds = %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body

bb.g:                                             ; preds = %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.030, ptr noundef nonnull align 8 dereferenceable(17) %5, i64 17, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !89, !noalias !633 ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !85, !noalias !633 ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = icmp ugt i64 %i.ae, 9223372036854775804
  br i1 %i.af, label %.noexc.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i, !prof !58

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc17 unwind label %bb.w

.noexc17:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #27
          to label %.noexc18 unwind label %bb.w

.noexc18:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.y, align 8, !tbaa !90, !noalias !633 ; 2 uses
  %.pre2.i.i = load ptr, ptr %i.z, align 8, !tbaa !90, !noalias !633
  %.pre3.i.i = ptrtoint ptr %.pre2.i.i to i64
  %.pre4.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.i

bb.i:                                             ; preds = %.noexc18, %bb.g
  %.pre-phi5.i.i = phi i64 [ %.pre4.i.i, %.noexc18 ], [ %i.ad, %bb.g ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre3.i.i, %.noexc18 ], [ %i.ac, %bb.g ] ; 2 uses
  %i.ah = phi ptr [ %.pre.i.i, %.noexc18 ], [ %i.ab, %bb.g ] ; 5 uses
  %i.ai = phi ptr [ %i.ag, %.noexc18 ], [ null, %bb.g ] ; 8 uses
  %i.aj = sub i64 %.pre-phi.i.i, %.pre-phi5.i.i   ; 10 uses
  %i.ak = icmp sgt i64 %i.aj, 4
  br i1 %i.ak, label %bb.j, label %bb.k, !prof !91

bb.j:                                             ; preds = %bb.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ai, ptr align 4 %i.ah, i64 %i.aj, i1 false), !noalias !633
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.al = icmp eq i64 %i.aj, 4
  br i1 %i.al, label %.thread46, label %bb.l

.thread46:                                        ; preds = %bb.k
  %i.am = load i32, ptr %i.ah, align 4, !tbaa !57, !noalias !633
  store i32 %i.am, ptr %i.ai, align 4, !tbaa !57, !noalias !633
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not.i.i.i.i19 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.thread46, %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !86
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.ah to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ar) #25
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 1, ptr %6, align 8, !tbaa !88
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.as, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.030, i64 17, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.pre-phi.i.i, %.pre-phi5.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %.thread, label %bb.n

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.av = getelementptr inbounds i8, ptr null, i64 %i.aj ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !86
  br label %bb.r

bb.n:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ax = icmp ugt i64 %i.aj, 9223372036854775804
  br i1 %i.ax, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !58

.noexc.i.i.i.i.i:                                 ; preds = %bb.n
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc20 unwind label %bb.y

.noexc20:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.n
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #27
          to label %.noexc21 unwind label %bb.y   ; 5 uses

.noexc21:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !85
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !89
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aj ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !86
  %7 = icmp samesign ugt i64 %i.aj, 4
  br i1 %7, label %bb.o, label %bb.p, !prof !115

bb.o:                                             ; preds = %.noexc21
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr align 4 %i.ai, i64 %i.aj, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %.noexc21
  %i.bc = icmp eq i64 %i.aj, 4
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bd = load i32, ptr %i.ai, align 4, !tbaa !57
  store i32 %i.bd, ptr %i.ay, align 4, !tbaa !57
  br label %bb.r

bb.r:                                             ; preds = %.thread, %bb.o, %bb.p, %bb.q
  %i.be = phi ptr [ %i.ba, %bb.o ], [ %i.ba, %bb.p ], [ %i.ba, %bb.q ], [ %i.av, %.thread ]
  %i.bf = phi ptr [ %i.az, %bb.o ], [ %i.az, %bb.p ], [ %i.az, %bb.q ], [ %i.au, %.thread ]
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !89
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 2, ptr %i.bg, align 8, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.bh = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #27
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread48 ; 4 uses

.thread48:                                        ; preds = %bb.r
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body22

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 112
  store ptr %i.bh, ptr %0, align 8, !tbaa !94
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 112
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !95
  %i.bm = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %6, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bh)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 112) #25
  br label %.body22

bb.t:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !96
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !88
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !65
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 64
  invoke void %i.bs(ptr noundef nonnull %i.bt)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #24
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.t
  %i.bw = load i64, ptr %6, align 8, !tbaa !88
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !65
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 8
  invoke void %i.by(ptr noundef nonnull %i.bz)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit.1 unwind label %bb.u

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit.1: ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_Head_baseILm0EN2cv8GMatDescELb0EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit.1
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.ae) #25
  br label %_ZNSt10_Head_baseILm0EN2cv8GMatDescELb0EED2Ev.exit

_ZNSt10_Head_baseILm0EN2cv8GMatDescELb0EED2Ev.exit: ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit.1, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.030)
  ret void

bb.w:                                             ; preds = %.invoke, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.w, %bb.f, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.ca, %bb.w ], [ %i.x, %bb.f ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit25, label %bb.x

bb.x:                                             ; preds = %.body
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !86
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ch) #25
  br label %_ZN2cv8GMatDescD2Ev.exit25

bb.y:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body22:                                          ; preds = %.thread48, %bb.s
  %i.cj = phi { ptr, i32 } [ %i.bi, %.thread48 ], [ %i.bn, %bb.s ]
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !88
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !65
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 64
  invoke void %i.cn(ptr noundef nonnull %i.co)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit27 unwind label %bb.z

bb.z:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit27, %.body22
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #24
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit27: ; preds = %.body22
  %i.cr = load i64, ptr %6, align 8, !tbaa !88
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !65
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 8
  invoke void %i.ct(ptr noundef nonnull %i.cu)
          to label %.loopexit unwind label %bb.z

.loopexit:                                        ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit27, %bb.y
  %.pn = phi { ptr, i32 } [ %i.ci, %bb.y ], [ %i.cj, %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit27 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.not.i.i.i.i.i28 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit25, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.ae) #25
  br label %_ZN2cv8GMatDescD2Ev.exit25

_ZN2cv8GMatDescD2Ev.exit25:                       ; preds = %bb.aa, %.loopexit, %bb.x, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.x ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.030)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI11GOCLInRangeEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::function.18", align 8  ; 12 uses
  %2 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %3 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %4 = alloca %"class.cv::GOCLKernel", align 8    ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN2cv4gapi3ocl7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !636
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !noalias !636
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @_ZN2cv6detail13OCLCallHelperI11GOCLInRangeSt5tupleIJNS_4GMatENS_7GScalarES5_EES3_IJS4_EEE4callERNS_11GOCLContextE, ptr %1, align 8, !tbaa !65, !noalias !636
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.d, align 8, !tbaa !69, !noalias !636
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.e, align 8, !tbaa !40, !noalias !636
  invoke void @_ZN2cv10GOCLKernelC1ERKSt8functionIFvRNS_11GOCLContextEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !636 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i1.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !636 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.k, null
  br i1 %.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit3.i, label %bb.f

end_hunk_13
begin_hunk_14_@_ZN2cv6detail13OCLCallHelperI11GOCLInRangeSt5tupleIJNS_4GMatENS_7GScalarES5_EES3_IJS4_EEE9call_implIJLi0ELi1ELi2EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSC_IJXspT0_EEEE:bb.a
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN2cv11GOCLContext5inValEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 2)
          to label %bb.c unwind label %bb.g       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !111, !noalias !645
  store <2 x double> %i.h, ptr %7, align 16, !tbaa !111, !alias.scope !645
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load <2 x double>, ptr %i.i, align 8, !tbaa !111, !noalias !645
  store <2 x double> %i.k, ptr %i.j, align 16, !tbaa !111, !alias.scope !645
  %i.l = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext7outMatREi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.m, align 8, !tbaa !78
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.n, align 4, !tbaa !79
  store i32 17432576, ptr %1, align 8, !tbaa !81
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %5, ptr %i.o, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1056833530, ptr %2, align 8, !tbaa !81
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %6, ptr %i.q, align 8, !tbaa !82
  store i64 17179869185, ptr %i.p, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 -1056833530, ptr %3, align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %7, ptr %i.s, align 8, !tbaa !82
  store i64 17179869185, ptr %i.r, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.u, align 8
  store i32 34209792, ptr %4, align 8, !tbaa !81
  store ptr %i.l, ptr %i.t, align 8, !tbaa !82
  invoke void @_ZN2cv7inRangeERKNS_11_InputArrayES2_S2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.f:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.w, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.v, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN2cv7inRangeERKNS_11_InputArrayES2_S2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core8GInRangeESt5tupleIJNS_4GMatENS_7GScalarES7_EES6_E15getOutMeta_implIJLi0ELi1ELi2EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %4 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 5 uses
  %5 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %6 = alloca [1 x %"class.cv::util::variant"], align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.c = load ptr, ptr %1, align 8, !tbaa !94     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %.invoke

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !88
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.b

bb.b:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %4, align 8, !tbaa !50
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %.not.i.i.i12.not = icmp eq i64 %i.f, 112
  br i1 %.not.i.i.i12.not, label %.invoke, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i13

.invoke:                                          ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, %bb.a
  %i.k = phi i64 [ 1, %bb.a ], [ 2, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.k, i64 noundef %i.g) #26
          to label %.cont unwind label %bb.w

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i13: ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.m = load i64, ptr %i.l, align 8, !tbaa !88
  %.not.i.i14 = icmp eq i64 %i.m, 2
  br i1 %.not.i.i14, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit18, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !50
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit18: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i13
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7.0..sroa_idx, i64 9, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89, !noalias !650 ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !85, !noalias !650 ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit18
  %i.v = icmp ugt i64 %i.u, 9223372036854775804
  br i1 %i.v, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !58

.noexc.i.i.i.i.i:                                 ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc19 unwind label %bb.w

.noexc19:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #27
          to label %.noexc20 unwind label %bb.w

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !90, !noalias !650 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.p, align 8, !tbaa !90, !noalias !650
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.i

bb.i:                                             ; preds = %.noexc20, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit18
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc20 ], [ %i.t, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit18 ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc20 ], [ %i.s, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit18 ] ; 2 uses
  %i.x = phi ptr [ %.pre.i.i, %.noexc20 ], [ %i.r, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit18 ] ; 5 uses
  %i.y = phi ptr [ %i.w, %.noexc20 ], [ null, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit18 ] ; 8 uses
  %i.z = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 10 uses
  %i.aa = icmp sgt i64 %i.z, 4
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !91

bb.j:                                             ; preds = %bb.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.y, ptr align 4 %i.x, i64 %i.z, i1 false), !noalias !650
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ab = icmp eq i64 %i.z, 4
  br i1 %i.ab, label %.thread55, label %bb.l

.thread55:                                        ; preds = %bb.k
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !57, !noalias !650
  store i32 %i.ac, ptr %i.y, align 4, !tbaa !57, !noalias !650
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.thread55, %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !86
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.x to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ah) #25
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 1, ptr %6, align 8, !tbaa !88
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.ai, align 8
  %.sroa.6.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 1, ptr %.sroa.6.0..sroa_idx37, align 4
  %.sroa.7.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7.0..sroa_idx39, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7, i64 9, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i21 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i21, label %.thread, label %bb.n

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.al = getelementptr inbounds i8, ptr null, i64 %i.z ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  store ptr %i.al, ptr %i.am, align 8, !tbaa !86
  br label %bb.r

bb.n:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.an = icmp ugt i64 %i.z, 9223372036854775804
  br i1 %i.an, label %.noexc.i.i.i.i.i23, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i22, !prof !58

.noexc.i.i.i.i.i23:                               ; preds = %bb.n
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc24 unwind label %bb.y

.noexc24:                                         ; preds = %.noexc.i.i.i.i.i23
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i22: ; preds = %bb.n
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #27
          to label %.noexc25 unwind label %bb.y   ; 5 uses

.noexc25:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i22
  store ptr %i.ao, ptr %i.aj, align 8, !tbaa !85
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !89
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.z ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !86
  %7 = icmp samesign ugt i64 %i.z, 4
  br i1 %7, label %bb.o, label %bb.p, !prof !115

bb.o:                                             ; preds = %.noexc25
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr align 4 %i.y, i64 %i.z, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %.noexc25
  %i.as = icmp eq i64 %i.z, 4
  br i1 %i.as, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.at = load i32, ptr %i.y, align 4, !tbaa !57
  store i32 %i.at, ptr %i.ao, align 4, !tbaa !57
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %.thread
  %i.au = phi ptr [ %i.aq, %bb.o ], [ %i.aq, %bb.p ], [ %i.aq, %bb.q ], [ %i.al, %.thread ]
  %i.av = phi ptr [ %i.ap, %bb.o ], [ %i.ap, %bb.p ], [ %i.ap, %bb.q ], [ %i.ak, %.thread ]
  store ptr %i.au, ptr %i.av, align 8, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.aw = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread57 ; 4 uses

.thread57:                                        ; preds = %bb.r
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body26

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %i.aw, ptr %0, align 8, !tbaa !94
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !95
  %i.bb = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %6, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.aw)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 56) #25
  br label %.body26

bb.t:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !96
  %i.be = load i64, ptr %6, align 8, !tbaa !88
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !65
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  invoke void %i.bg(ptr noundef nonnull %i.bh)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #24
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.not.i.i.i.i28 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit29, label %bb.v

bb.v:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.u) #25
  br label %_ZN2cv8GMatDescD2Ev.exit29

_ZN2cv8GMatDescD2Ev.exit29:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void

bb.w:                                             ; preds = %.invoke, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.w, %bb.g, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.bk, %bb.w ], [ %i.n, %bb.g ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i30, label %_ZN2cv8GMatDescD2Ev.exit31, label %bb.x

bb.x:                                             ; preds = %.body
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !86
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #25
  br label %_ZN2cv8GMatDescD2Ev.exit31

bb.y:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i22, %.noexc.i.i.i.i.i23
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body26:                                          ; preds = %.thread57, %bb.s
  %i.bt = phi { ptr, i32 } [ %i.ax, %.thread57 ], [ %i.bc, %bb.s ]
  %i.bu = load i64, ptr %6, align 8, !tbaa !88
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !65
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8
  invoke void %i.bw(ptr noundef nonnull %i.bx)
          to label %.loopexit unwind label %bb.z

bb.z:                                             ; preds = %.body26
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #24
  unreachable

.loopexit:                                        ; preds = %.body26, %bb.y
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.y ], [ %i.bt, %.body26 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.not.i.i.i.i33 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i33, label %_ZN2cv8GMatDescD2Ev.exit31, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.u) #25
  br label %_ZN2cv8GMatDescD2Ev.exit31

_ZN2cv8GMatDescD2Ev.exit31:                       ; preds = %bb.aa, %.loopexit, %bb.x, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.x ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI10GOCLSplit3EENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::function.18", align 8  ; 12 uses
  %2 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %3 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %4 = alloca %"class.cv::GOCLKernel", align 8    ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN2cv4gapi3ocl7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !653
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !noalias !653
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @_ZN2cv6detail13OCLCallHelperI10GOCLSplit3St5tupleIJNS_4GMatEEES3_IJS4_S4_S4_EEE4callERNS_11GOCLContextE, ptr %1, align 8, !tbaa !65, !noalias !653
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.d, align 8, !tbaa !69, !noalias !653
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.e, align 8, !tbaa !40, !noalias !653
  invoke void @_ZN2cv10GOCLKernelC1ERKSt8functionIFvRNS_11GOCLContextEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !653 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i1.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !653 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.k, null
  br i1 %.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit3.i:                ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !653
  br label %.body

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !653
  %i.o = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %.noexc unwind label %bb.aa    ; 5 uses

end_hunk_14
begin_hunk_15_@_ZN2cv6detail13OCLCallHelperI8GOCLCropSt5tupleIJNS_4GMatENS_5Rect_IiEEEES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSD_IJXspT0_EEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0), !noalias !739
  call void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %5, ptr noundef nonnull align 8 dereferenceable(184) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.d = load ptr, ptr %0, align 8, !tbaa !76     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  %.not.i.i.i.i = icmp ugt i64 %i.h, 1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef 1, i64 noundef %i.h) #26
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i.i:    ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN2cv4util8any_castINS_5Rect_IiEEEEPT_PNS0_3anyE.exit.thread.i.i.i.i, label %_ZN2cv4util8any_castINS_5Rect_IiEEEEPT_PNS0_3anyE.exit.i.i.i.i

_ZN2cv4util8any_castINS_5Rect_IiEEEEPT_PNS0_3anyE.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i.i
  %i.l = call ptr @__dynamic_cast(ptr nonnull %i.j, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implINS_5Rect_IiEEEE, i64 0) #23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZN2cv4util8any_castINS_5Rect_IiEEEEPT_PNS0_3anyE.exit.thread.i.i.i.i, label %bb.e

_ZN2cv4util8any_castINS_5Rect_IiEEEEPT_PNS0_3anyE.exit.thread.i.i.i.i: ; preds = %_ZN2cv4util8any_castINS_5Rect_IiEEEEPT_PNS0_3anyE.exit.i.i.i.i, %_ZNSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %4, align 8, !tbaa !50
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN2cv4util8any_castINS_5Rect_IiEEEEPT_PNS0_3anyE.exit.thread.i.i.i.i
  unreachable

bb.d:                                             ; preds = %_ZN2cv4util8any_castINS_5Rect_IiEEEEPT_PNS0_3anyE.exit.thread.i.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.e:                                             ; preds = %_ZN2cv4util8any_castINS_5Rect_IiEEEEPT_PNS0_3anyE.exit.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load <2 x i64>, ptr %i.n, align 4, !tbaa !57
  %i.p = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext7outMatREi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store <2 x i64> %i.o, ptr %1, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZN2cv4UMatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 8 dereferenceable(184) %5, ptr noundef nonnull align 4 dereferenceable(16) %1)
          to label %.noexc12 unwind label %bb.j

.noexc12:                                         ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.r, align 8
  store i32 34209792, ptr %3, align 8, !tbaa !81
  store ptr %i.p, ptr %i.q, align 8, !tbaa !82
  invoke void @_ZNK2cv4UMat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %.noexc12
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

bb.h:                                             ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.i:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.f, %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.g, %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.t, %bb.i ], [ %i.u, %bb.j ], [ %i.s, %bb.g ]
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn
}

declare void @_ZN2cv4UMatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core5GCropESt5tupleIJNS_4GMatENS_5Rect_IiEEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSD_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISL_EERKSN_RKSC_INS_4GArgESaISQ_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 8 uses
  %5 = alloca [1 x %"class.cv::util::variant"], align 8 ; 18 uses
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = load ptr, ptr %2, align 8, !tbaa !76     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef 1, i64 noundef %i.g) #26
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i:     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN2cv4util8any_castINS_5Rect_IiEEEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv4util8any_castINS_5Rect_IiEEEEPKT_PKNS0_3anyE.exit.i.i.i

_ZN2cv4util8any_castINS_5Rect_IiEEEEPKT_PKNS0_3anyE.exit.i.i.i: ; preds = %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  %i.k = call ptr @__dynamic_cast(ptr nonnull %i.i, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implINS_5Rect_IiEEEE, i64 0) #23 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN2cv4util8any_castINS_5Rect_IiEEEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %bb.e

_ZN2cv4util8any_castINS_5Rect_IiEEEEPKT_PKNS0_3anyE.exit.thread.i.i.i: ; preds = %_ZN2cv4util8any_castINS_5Rect_IiEEEEPKT_PKNS0_3anyE.exit.i.i.i, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %3, align 8, !tbaa !50
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN2cv4util8any_castINS_5Rect_IiEEEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  unreachable

bb.d:                                             ; preds = %_ZN2cv4util8any_castINS_5Rect_IiEEEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body

bb.e:                                             ; preds = %_ZN2cv4util8any_castINS_5Rect_IiEEEEPKT_PKNS0_3anyE.exit.i.i.i
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !57
  %i.m = load i64, ptr %4, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load i8, ptr %.sroa.6.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89, !noalias !744 ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !85, !noalias !744 ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp ugt i64 %i.u, 9223372036854775804
  br i1 %i.v, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !58

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc12 unwind label %bb.u

.noexc12:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #27
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !90, !noalias !744 ; 2 uses
  %.pre2.i.i = load ptr, ptr %i.p, align 8, !tbaa !90, !noalias !744
  %.pre3.i.i = ptrtoint ptr %.pre2.i.i to i64
  %.pre4.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.noexc13, %bb.e
  %.pre-phi5.i.i = phi i64 [ %.pre4.i.i, %.noexc13 ], [ %i.t, %bb.e ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre3.i.i, %.noexc13 ], [ %i.s, %bb.e ] ; 2 uses
  %i.x = phi ptr [ %.pre.i.i, %.noexc13 ], [ %i.r, %bb.e ] ; 5 uses
  %i.y = phi ptr [ %i.w, %.noexc13 ], [ null, %bb.e ] ; 8 uses
  %i.z = sub i64 %.pre-phi.i.i, %.pre-phi5.i.i    ; 10 uses
  %i.aa = icmp sgt i64 %i.z, 4
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !91

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.y, ptr align 4 %i.x, i64 %i.z, i1 false), !noalias !744
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ab = icmp eq i64 %i.z, 4
  br i1 %i.ab, label %.thread49, label %bb.j

.thread49:                                        ; preds = %bb.i
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !57, !noalias !744
  store i32 %i.ac, ptr %i.y, align 4, !tbaa !57, !noalias !744
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i14 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread49, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !86
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.x to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ah) #25
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 1, ptr %5, align 8, !tbaa !88
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.m, ptr %i.ai, align 8
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.5.0..sroa_idx30, align 8
  %.sroa.6.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 %i.n, ptr %.sroa.6.0..sroa_idx32, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i15 = icmp eq i64 %.pre-phi.i.i, %.pre-phi5.i.i
  br i1 %.not.i.i.i.i.i.i.i15, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.al = getelementptr inbounds i8, ptr null, i64 %i.z ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  store ptr %i.al, ptr %i.am, align 8, !tbaa !86
  br label %bb.p

bb.l:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.an = icmp ugt i64 %i.z, 9223372036854775804
  br i1 %i.an, label %.noexc.i.i.i.i.i17, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i16, !prof !58

.noexc.i.i.i.i.i17:                               ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc18 unwind label %bb.w

.noexc18:                                         ; preds = %.noexc.i.i.i.i.i17
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i16: ; preds = %bb.l
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #27
          to label %.noexc19 unwind label %bb.w   ; 5 uses

.noexc19:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i16
  store ptr %i.ao, ptr %i.aj, align 8, !tbaa !85
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !89
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.z ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !86
  %6 = icmp samesign ugt i64 %i.z, 4
  br i1 %6, label %bb.m, label %bb.n, !prof !115

bb.m:                                             ; preds = %.noexc19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr align 4 %i.y, i64 %i.z, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc19
  %i.as = icmp eq i64 %i.z, 4
  br i1 %i.as, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.at = load i32, ptr %i.y, align 4, !tbaa !57
  store i32 %i.at, ptr %i.ao, align 4, !tbaa !57
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.thread
  %i.au = phi ptr [ %i.aq, %bb.m ], [ %i.aq, %bb.n ], [ %i.aq, %bb.o ], [ %i.al, %.thread ]
  %i.av = phi ptr [ %i.ap, %bb.m ], [ %i.ap, %bb.n ], [ %i.ap, %bb.o ], [ %i.ak, %.thread ]
  store ptr %i.au, ptr %i.av, align 8, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.aw = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread51 ; 4 uses

.thread51:                                        ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body20

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.aw, ptr %0, align 8, !tbaa !94
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !95
  %i.bb = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.aw)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 56) #25
  br label %.body20

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !96
  %i.be = load i64, ptr %5, align 8, !tbaa !88
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !65
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bg(ptr noundef nonnull %i.bh)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #24
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i22 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i22, label %_ZN2cv8GMatDescD2Ev.exit23, label %bb.t

bb.t:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.u) #25
  br label %_ZN2cv8GMatDescD2Ev.exit23

_ZN2cv8GMatDescD2Ev.exit23:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.b
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bk, %bb.u ], [ %i.l, %bb.d ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit25, label %bb.v

bb.v:                                             ; preds = %.body
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !86
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #25
  br label %_ZN2cv8GMatDescD2Ev.exit25

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i16, %.noexc.i.i.i.i.i17
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body20:                                          ; preds = %.thread51, %bb.q
  %i.bt = phi { ptr, i32 } [ %i.ax, %.thread51 ], [ %i.bc, %bb.q ]
  %i.bu = load i64, ptr %5, align 8, !tbaa !88
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !65
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bw(ptr noundef nonnull %i.bx)
          to label %.loopexit unwind label %bb.x

bb.x:                                             ; preds = %.body20
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #24
  unreachable

.loopexit:                                        ; preds = %.body20, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.w ], [ %i.bt, %.body20 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i27 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i27, label %_ZN2cv8GMatDescD2Ev.exit25, label %bb.y

bb.y:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.u) #25
  br label %_ZN2cv8GMatDescD2Ev.exit25

_ZN2cv8GMatDescD2Ev.exit25:                       ; preds = %bb.y, %.loopexit, %bb.v, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.v ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.y ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI13GOCLConcatHorEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::function.18", align 8  ; 12 uses
  %2 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %3 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %4 = alloca %"class.cv::GOCLKernel", align 8    ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN2cv4gapi3ocl7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !747
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !noalias !747
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @_ZN2cv6detail13OCLCallHelperI13GOCLConcatHorSt5tupleIJNS_4GMatES4_EES3_IJS4_EEE4callERNS_11GOCLContextE, ptr %1, align 8, !tbaa !65, !noalias !747
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.d, align 8, !tbaa !69, !noalias !747
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.e, align 8, !tbaa !40, !noalias !747
  invoke void @_ZN2cv10GOCLKernelC1ERKSt8functionIFvRNS_11GOCLContextEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !747 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i1.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !747 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.k, null
  br i1 %.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit3.i:                ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !747
  br label %.body

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !747
  %i.o = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %.noexc unwind label %bb.aa    ; 5 uses

.noexc:                                           ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_10GOCLKernelEEE, i64 16), ptr %i.o, align 8, !tbaa !50
end_hunk_15
begin_hunk_16_@_ZN2cv14GKernelPackage13includeHelperI13GOCLConcatHorEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv:bb.a
  br label %bb.aj

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %_ZSt9make_pairIRN2cv4gapi8GBackendERNS0_11GKernelImplEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.ah:                                            ; preds = %.noexc22
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.aj
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.ah
  %i.dm = load i64, ptr %i.aj, align 8, !tbaa !45
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.ag
  %.pn13 = phi { ptr, i32 } [ %i.di, %bb.ag ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.dj, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZNSt4pairIN2cv4gapi8GBackendENS0_11GKernelImplEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #23
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.af
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.dh, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ai ], [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  call void @_ZN2cv11GKernelImplD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.body
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn, %bb.aj ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN2cv4gapi8GBackendD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn13.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core10GConcatHorESt5tupleIJNS_4GMatES6_EES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core10GConcatHorESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI13GOCLConcatHorSt5tupleIJNS_4GMatES4_EES3_IJS4_EEE4callERNS_11GOCLContextE(ptr noundef nonnull align 8 dereferenceable(80) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail13OCLCallHelperI13GOCLConcatHorSt5tupleIJNS_4GMatES4_EES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSB_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI13GOCLConcatHorSt5tupleIJNS_4GMatES4_EES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSB_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %4 = alloca %"class.cv::UMat", align 8          ; 7 uses
  %5 = alloca %"class.cv::UMat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0), !noalias !750
  call void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull align 8 dereferenceable(184) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.b = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %5, ptr noundef nonnull align 8 dereferenceable(184) %i.b)
          to label %_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit unwind label %bb.d

_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit: ; preds = %.noexc
  %i.c = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext7outMatREi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !79
  store i32 17432576, ptr %1, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %4, ptr %i.f, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.g, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.h, align 4, !tbaa !79
  store i32 17432576, ptr %2, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %5, ptr %i.i, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.k, align 8
  store i32 34209792, ptr %3, align 8, !tbaa !81
  store ptr %i.c, ptr %i.j, align 8, !tbaa !82
  invoke void @_ZN2cv7hconcatERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.d:                                             ; preds = %.noexc, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %5) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn
}

declare void @_ZN2cv7hconcatERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core10GConcatHorESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.7 = alloca [12 x i8], align 4            ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 9 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 6 uses
  %5 = alloca [1 x %"class.cv::util::variant"], align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !123, !noalias !757
  %i.c = load i64, ptr %3, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(5) %.sroa.7.0..sroa_idx, i64 5, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !89, !noalias !758 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !85, !noalias !758 ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.j, 9223372036854775804
  br i1 %i.k, label %.noexc.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !58

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #27
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !90, !noalias !758 ; 2 uses
  %.pre3.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !90, !noalias !758
  %.pre4.i.i.i = ptrtoint ptr %.pre3.i.i.i to i64
  %.pre5.i.i.i = ptrtoint ptr %.pre.i.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %bb.b
  %.pre-phi6.i.i.i = phi i64 [ %.pre5.i.i.i, %.noexc13 ], [ %i.i, %bb.b ] ; 2 uses
  %.pre-phi.i.i.i = phi i64 [ %.pre4.i.i.i, %.noexc13 ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %.pre.i.i.i, %.noexc13 ], [ %i.g, %bb.b ] ; 3 uses
  %i.n = phi ptr [ %i.l, %.noexc13 ], [ null, %bb.b ] ; 8 uses
  %i.o = sub i64 %.pre-phi.i.i.i, %.pre-phi6.i.i.i ; 10 uses
  %i.p = icmp sgt i64 %i.o, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !91

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.n, ptr align 4 %i.m, i64 %i.o, i1 false), !noalias !758
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.q = icmp eq i64 %i.o, 4
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.m, align 4, !tbaa !57, !noalias !758
  store i32 %i.r, ptr %i.n, align 4, !tbaa !57, !noalias !758
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.s = add nsw i32 %.sroa.5.0.copyload, %i.b
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !85   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !86
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #25
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !85
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.h, %bb.i
  %i.aa = phi ptr [ %i.m, %bb.h ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !86
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #25
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 1, ptr %5, align 8, !tbaa !88
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.c, ptr %i.ag, align 8
  %.sroa.5.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.s, ptr %.sroa.5.0..sroa_idx28, align 8
  %.sroa.7.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %5, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.sroa.7.0..sroa_idx30, ptr noundef nonnull align 4 dereferenceable(5) %.sroa.7, i64 5, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.pre-phi.i.i.i, %.pre-phi6.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aj = getelementptr inbounds i8, ptr null, i64 %i.o ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !86
  br label %bb.o

bb.k:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.al = icmp ugt i64 %i.o, 9223372036854775804
  br i1 %i.al, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !58

.noexc.i.i.i.i.i:                                 ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc16 unwind label %bb.x

.noexc16:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27
          to label %.noexc17 unwind label %bb.x   ; 5 uses

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !85
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !89
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.o ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !86
  %6 = icmp samesign ugt i64 %i.o, 4
  br i1 %6, label %bb.l, label %bb.m, !prof !115

bb.l:                                             ; preds = %.noexc17
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.am, ptr align 4 %i.n, i64 %i.o, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc17
  %i.aq = icmp eq i64 %i.o, 4
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = load i32, ptr %i.n, align 4, !tbaa !57
  store i32 %i.ar, ptr %i.am, align 4, !tbaa !57
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.thread
  %i.as = phi ptr [ %i.ao, %bb.l ], [ %i.ao, %bb.m ], [ %i.ao, %bb.n ], [ %i.aj, %.thread ]
  %i.at = phi ptr [ %i.an, %bb.l ], [ %i.an, %bb.m ], [ %i.an, %bb.n ], [ %i.ai, %.thread ]
  store ptr %i.as, ptr %i.at, align 8, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.au = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread46 ; 4 uses

.thread46:                                        ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.au, ptr %0, align 8, !tbaa !94
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !95
  %i.az = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.au)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 56) #25
  br label %.body

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !96
  %i.bc = load i64, ptr %5, align 8, !tbaa !88
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !65
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.be(ptr noundef nonnull %i.bf)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #24
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i18 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i18, label %_ZN2cv8GMatDescD2Ev.exit19, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.j) #25
  br label %_ZN2cv8GMatDescD2Ev.exit19

_ZN2cv8GMatDescD2Ev.exit19:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void

bb.t:                                             ; preds = %bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit21

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i20, label %_ZN2cv8GMatDescD2Ev.exit21, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !86
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #25
  br label %_ZN2cv8GMatDescD2Ev.exit21

_ZN2cv8GMatDescD2Ev.exit21:                       ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.t ], [ %i.bj, %bb.u ], [ %i.bj, %bb.v ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i22, label %_ZN2cv8GMatDescD2Ev.exit23, label %bb.w

bb.w:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit21
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !86
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #25
  br label %_ZN2cv8GMatDescD2Ev.exit23

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread46, %bb.p
  %i.bz = phi { ptr, i32 } [ %i.av, %.thread46 ], [ %i.ba, %bb.p ]
  %i.ca = load i64, ptr %5, align 8, !tbaa !88
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !65
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.cc(ptr noundef nonnull %i.cd)
          to label %.loopexit unwind label %bb.y

bb.y:                                             ; preds = %.body
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #24
  unreachable

.loopexit:                                        ; preds = %.body, %bb.x
  %.pn10 = phi { ptr, i32 } [ %i.by, %bb.x ], [ %i.bz, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i25 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i25, label %_ZN2cv8GMatDescD2Ev.exit23, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.j) #25
  br label %_ZN2cv8GMatDescD2Ev.exit23

_ZN2cv8GMatDescD2Ev.exit23:                       ; preds = %bb.z, %.loopexit, %bb.w, %_ZN2cv8GMatDescD2Ev.exit21
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %.pn, %_ZN2cv8GMatDescD2Ev.exit21 ], [ %.pn10, %.loopexit ], [ %.pn10, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI14GOCLConcatVertEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::function.18", align 8  ; 12 uses
  %2 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %3 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %4 = alloca %"class.cv::GOCLKernel", align 8    ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN2cv4gapi3ocl7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !761
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !noalias !761
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @_ZN2cv6detail13OCLCallHelperI14GOCLConcatVertSt5tupleIJNS_4GMatES4_EES3_IJS4_EEE4callERNS_11GOCLContextE, ptr %1, align 8, !tbaa !65, !noalias !761
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.d, align 8, !tbaa !69, !noalias !761
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.e, align 8, !tbaa !40, !noalias !761
  invoke void @_ZN2cv10GOCLKernelC1ERKSt8functionIFvRNS_11GOCLContextEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !761 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i1.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !761 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.k, null
  br i1 %.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i unwind label %bb.g ; 0 uses
end_hunk_16
begin_hunk_17_@_ZN2cv14GKernelPackage13includeHelperI14GOCLConcatVertEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv:bb.a
  br label %bb.aj

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %_ZSt9make_pairIRN2cv4gapi8GBackendERNS0_11GKernelImplEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.ah:                                            ; preds = %.noexc22
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.aj
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.ah
  %i.dm = load i64, ptr %i.aj, align 8, !tbaa !45
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.ag
  %.pn13 = phi { ptr, i32 } [ %i.di, %bb.ag ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.dj, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZNSt4pairIN2cv4gapi8GBackendENS0_11GKernelImplEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #23
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.af
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.dh, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ai ], [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  call void @_ZN2cv11GKernelImplD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.body
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn, %bb.aj ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN2cv4gapi8GBackendD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn13.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core11GConcatVertESt5tupleIJNS_4GMatES6_EES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core11GConcatVertESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI14GOCLConcatVertSt5tupleIJNS_4GMatES4_EES3_IJS4_EEE4callERNS_11GOCLContextE(ptr noundef nonnull align 8 dereferenceable(80) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail13OCLCallHelperI14GOCLConcatVertSt5tupleIJNS_4GMatES4_EES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSB_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI14GOCLConcatVertSt5tupleIJNS_4GMatES4_EES3_IJS4_EEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSB_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %4 = alloca %"class.cv::UMat", align 8          ; 7 uses
  %5 = alloca %"class.cv::UMat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0), !noalias !764
  call void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull align 8 dereferenceable(184) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.b = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %5, ptr noundef nonnull align 8 dereferenceable(184) %i.b)
          to label %_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit unwind label %bb.d

_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit: ; preds = %.noexc
  %i.c = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext7outMatREi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !79
  store i32 17432576, ptr %1, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %4, ptr %i.f, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.g, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.h, align 4, !tbaa !79
  store i32 17432576, ptr %2, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %5, ptr %i.i, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.k, align 8
  store i32 34209792, ptr %3, align 8, !tbaa !81
  store ptr %i.c, ptr %i.j, align 8, !tbaa !82
  invoke void @_ZN2cv7vconcatERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.d:                                             ; preds = %.noexc, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %_ZN2cv6detail10ocl_get_inINS_4GMatEE3getERNS_11GOCLContextEi.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %5) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn
}

declare void @_ZN2cv7vconcatERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core11GConcatVertESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.027 = alloca [12 x i8], align 8          ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 9 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 6 uses
  %5 = alloca [1 x %"class.cv::util::variant"], align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.027)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !124, !noalias !771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.027, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load i8, ptr %.sroa.7.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !89, !noalias !772 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !85, !noalias !772 ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.j, 9223372036854775804
  br i1 %i.k, label %.noexc.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !58

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #27
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !90, !noalias !772 ; 2 uses
  %.pre3.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !90, !noalias !772
  %.pre4.i.i.i = ptrtoint ptr %.pre3.i.i.i to i64
  %.pre5.i.i.i = ptrtoint ptr %.pre.i.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %bb.b
  %.pre-phi6.i.i.i = phi i64 [ %.pre5.i.i.i, %.noexc13 ], [ %i.i, %bb.b ] ; 2 uses
  %.pre-phi.i.i.i = phi i64 [ %.pre4.i.i.i, %.noexc13 ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %.pre.i.i.i, %.noexc13 ], [ %i.g, %bb.b ] ; 3 uses
  %i.n = phi ptr [ %i.l, %.noexc13 ], [ null, %bb.b ] ; 8 uses
  %i.o = sub i64 %.pre-phi.i.i.i, %.pre-phi6.i.i.i ; 10 uses
  %i.p = icmp sgt i64 %i.o, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !91

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.n, ptr align 4 %i.m, i64 %i.o, i1 false), !noalias !772
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.q = icmp eq i64 %i.o, 4
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.m, align 4, !tbaa !57, !noalias !772
  store i32 %i.r, ptr %i.n, align 4, !tbaa !57, !noalias !772
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.s = add nsw i32 %.sroa.5.0.copyload, %i.b
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !85   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !86
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #25
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !85
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.h, %bb.i
  %i.aa = phi ptr [ %i.m, %bb.h ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !86
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #25
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 1, ptr %5, align 8, !tbaa !88
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ag, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.027, i64 12, i1 false)
  %.sroa.5.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %i.s, ptr %.sroa.5.0..sroa_idx28, align 4
  %.sroa.7.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 %i.c, ptr %.sroa.7.0..sroa_idx30, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.pre-phi.i.i.i, %.pre-phi6.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aj = getelementptr inbounds i8, ptr null, i64 %i.o ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !86
  br label %bb.o

bb.k:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.al = icmp ugt i64 %i.o, 9223372036854775804
  br i1 %i.al, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !58

.noexc.i.i.i.i.i:                                 ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc16 unwind label %bb.x

.noexc16:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27
          to label %.noexc17 unwind label %bb.x   ; 5 uses

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !85
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !89
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.o ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !86
  %6 = icmp samesign ugt i64 %i.o, 4
  br i1 %6, label %bb.l, label %bb.m, !prof !115

bb.l:                                             ; preds = %.noexc17
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.am, ptr align 4 %i.n, i64 %i.o, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc17
  %i.aq = icmp eq i64 %i.o, 4
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = load i32, ptr %i.n, align 4, !tbaa !57
  store i32 %i.ar, ptr %i.am, align 4, !tbaa !57
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.thread
  %i.as = phi ptr [ %i.ao, %bb.l ], [ %i.ao, %bb.m ], [ %i.ao, %bb.n ], [ %i.aj, %.thread ]
  %i.at = phi ptr [ %i.an, %bb.l ], [ %i.an, %bb.m ], [ %i.an, %bb.n ], [ %i.ai, %.thread ]
  store ptr %i.as, ptr %i.at, align 8, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.au = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread46 ; 4 uses

.thread46:                                        ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.au, ptr %0, align 8, !tbaa !94
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !95
  %i.az = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.au)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 56) #25
  br label %.body

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !96
  %i.bc = load i64, ptr %5, align 8, !tbaa !88
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !65
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.be(ptr noundef nonnull %i.bf)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #24
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i18 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i18, label %_ZN2cv8GMatDescD2Ev.exit19, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.j) #25
  br label %_ZN2cv8GMatDescD2Ev.exit19

_ZN2cv8GMatDescD2Ev.exit19:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.027)
  ret void

bb.t:                                             ; preds = %bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit21

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i20, label %_ZN2cv8GMatDescD2Ev.exit21, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !86
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #25
  br label %_ZN2cv8GMatDescD2Ev.exit21

_ZN2cv8GMatDescD2Ev.exit21:                       ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.t ], [ %i.bj, %bb.u ], [ %i.bj, %bb.v ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i22, label %_ZN2cv8GMatDescD2Ev.exit23, label %bb.w

bb.w:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit21
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !86
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #25
  br label %_ZN2cv8GMatDescD2Ev.exit23

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread46, %bb.p
  %i.bz = phi { ptr, i32 } [ %i.av, %.thread46 ], [ %i.ba, %bb.p ]
  %i.ca = load i64, ptr %5, align 8, !tbaa !88
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !65
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.cc(ptr noundef nonnull %i.cd)
          to label %.loopexit unwind label %bb.y

bb.y:                                             ; preds = %.body
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #24
  unreachable

.loopexit:                                        ; preds = %.body, %bb.x
  %.pn10 = phi { ptr, i32 } [ %i.by, %bb.x ], [ %i.bz, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i.i25 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i25, label %_ZN2cv8GMatDescD2Ev.exit23, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.j) #25
  br label %_ZN2cv8GMatDescD2Ev.exit23

_ZN2cv8GMatDescD2Ev.exit23:                       ; preds = %bb.z, %.loopexit, %bb.w, %_ZN2cv8GMatDescD2Ev.exit21
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %.pn, %_ZN2cv8GMatDescD2Ev.exit21 ], [ %.pn10, %.loopexit ], [ %.pn10, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.027)
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI7GOCLLUTEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::function.18", align 8  ; 12 uses
  %2 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %3 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %4 = alloca %"class.cv::GOCLKernel", align 8    ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN2cv4gapi3ocl7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !775
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !noalias !775
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @_ZN2cv6detail13OCLCallHelperI7GOCLLUTSt5tupleIJNS_4GMatENS_3MatEEES3_IJS4_EEE4callERNS_11GOCLContextE, ptr %1, align 8, !tbaa !65, !noalias !775
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.d, align 8, !tbaa !69, !noalias !775
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.e, align 8, !tbaa !40, !noalias !775
  invoke void @_ZN2cv10GOCLKernelC1ERKSt8functionIFvRNS_11GOCLContextEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !775 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i1.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !775 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.k, null
  br i1 %.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i unwind label %bb.g ; 0 uses
end_hunk_17
begin_hunk_18_@_ZN2cv14GKernelPackage13includeHelperI13GOCLTransposeEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv:bb.a
  %.not.i.i32 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i32, label %.body, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = invoke noundef zeroext i1 %i.cz(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %.body unwind label %bb.ac     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  call void @__clang_call_terminate(ptr %i.dc) #24
  unreachable

.body:                                            ; preds = %bb.ab, %bb.aa, %_ZNSt14_Function_baseD2Ev.exit3.i
  %.pn = phi { ptr, i32 } [ %i.j, %_ZNSt14_Function_baseD2Ev.exit3.i ], [ %i.cx, %bb.ab ], [ %i.cx, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.ak

bb.ad:                                            ; preds = %_ZN2cv10GOCLKernelD2Ev.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.ae:                                            ; preds = %.noexc18
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.aa
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.ae
  %i.dh = load i64, ptr %i.aa, align 8, !tbaa !45
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.ad
  %.pn11 = phi { ptr, i32 } [ %i.dd, %bb.ad ], [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %i.de, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.aj

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %_ZSt9make_pairIRN2cv4gapi8GBackendERNS0_11GKernelImplEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.ah:                                            ; preds = %.noexc22
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.ak
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.ah
  %i.do = load i64, ptr %i.ak, align 8, !tbaa !45
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.ag
  %.pn13 = phi { ptr, i32 } [ %i.dk, %bb.ag ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.dl, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZNSt4pairIN2cv4gapi8GBackendENS0_11GKernelImplEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #23
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.af
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.dj, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ai ], [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  call void @_ZN2cv11GKernelImplD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.body
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn, %bb.aj ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN2cv4gapi8GBackendD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn13.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core10GTransposeESt5tupleIJNS_4GMatEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core10GTransposeESt5tupleIJNS_4GMatEEES6_E15getOutMeta_implIJLi0EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI13GOCLTransposeSt5tupleIJNS_4GMatEEES5_E4callERNS_11GOCLContextE(ptr noundef nonnull align 8 dereferenceable(80) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail13OCLCallHelperI13GOCLTransposeSt5tupleIJNS_4GMatEEES5_E9call_implIJLi0EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSA_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCLCallHelperI13GOCLTransposeSt5tupleIJNS_4GMatEEES5_E9call_implIJLi0EEJLi0EEEEvRNS_11GOCLContextENS0_3SeqIJXspT_EEEENSA_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %2 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %3 = alloca %"class.cv::UMat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0), !noalias !802
  call void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %3, ptr noundef nonnull align 8 dereferenceable(184) %i.a)
  %i.b = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv11GOCLContext7outMatREi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.d, align 4, !tbaa !79
  store i32 17432576, ptr %1, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %3, ptr %i.e, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.g, align 8
  store i32 34209792, ptr %2, align 8, !tbaa !81
  store ptr %i.b, ptr %i.f, align 8, !tbaa !82
  invoke void @_ZN2cv9transposeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.h
}

declare void @_ZN2cv9transposeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core10GTransposeESt5tupleIJNS_4GMatEEES6_E15getOutMeta_implIJLi0EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 9 uses
  %4 = alloca [1 x %"class.cv::util::variant"], align 8 ; 18 uses
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !124, !noalias !807 ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !123, !noalias !807 ; 2 uses
  %i.e = load i64, ptr %3, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load i8, ptr %.sroa.6.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89, !noalias !808 ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !85, !noalias !808 ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.m, 9223372036854775804
  br i1 %i.n, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !58

.noexc.i.i.i.i.i:                                 ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #27
          to label %.noexc8 unwind label %bb.q

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.g, align 8, !tbaa !90, !noalias !808 ; 2 uses
  %.pre2.i.i = load ptr, ptr %i.h, align 8, !tbaa !90, !noalias !808
  %.pre3.i.i = ptrtoint ptr %.pre2.i.i to i64
  %.pre4.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %.noexc8, %bb.a
  %.pre-phi5.i.i = phi i64 [ %.pre4.i.i, %.noexc8 ], [ %i.l, %bb.a ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre3.i.i, %.noexc8 ], [ %i.k, %bb.a ] ; 2 uses
  %i.p = phi ptr [ %.pre.i.i, %.noexc8 ], [ %i.j, %bb.a ] ; 5 uses
  %i.q = phi ptr [ %i.o, %.noexc8 ], [ null, %bb.a ] ; 8 uses
  %i.r = sub i64 %.pre-phi.i.i, %.pre-phi5.i.i    ; 10 uses
  %i.s = icmp sgt i64 %i.r, 4
  br i1 %i.s, label %bb.d, label %bb.e, !prof !91

bb.d:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.q, ptr align 4 %i.p, i64 %i.r, i1 false), !noalias !808
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = icmp eq i64 %i.r, 4
  br i1 %i.t, label %.thread38, label %bb.f

.thread38:                                        ; preds = %bb.e
  %i.u = load i32, ptr %i.p, align 4, !tbaa !57, !noalias !808
  store i32 %i.u, ptr %i.q, align 4, !tbaa !57, !noalias !808
  %.sroa.2.0.insert.ext.i39 = zext i32 %i.d to i64
  %.sroa.2.0.insert.shift.i40 = shl nuw i64 %.sroa.2.0.insert.ext.i39, 32
  %.sroa.0.0.insert.ext.i41 = zext i32 %i.c to i64
  %.sroa.0.0.insert.insert.i42 = or disjoint i64 %.sroa.2.0.insert.shift.i40, %.sroa.0.0.insert.ext.i41
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.2.0.insert.ext.i = zext i32 %i.d to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.c to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.thread38, %bb.f
  %.sroa.0.0.insert.insert.i44 = phi i64 [ %.sroa.0.0.insert.insert.i42, %.thread38 ], [ %.sroa.0.0.insert.insert.i, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !86
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.p to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.z) #25
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.f, %bb.g
  %.sroa.0.0.insert.insert.i45 = phi i64 [ %.sroa.0.0.insert.insert.i, %bb.f ], [ %.sroa.0.0.insert.insert.i44, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i64 1, ptr %4, align 8, !tbaa !88
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.e, ptr %i.aa, align 8
  %.sroa.5.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.sroa.0.0.insert.insert.i45, ptr %.sroa.5.0..sroa_idx22, align 8
  %.sroa.6.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 %i.f, ptr %.sroa.6.0..sroa_idx24, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i9 = icmp eq i64 %.pre-phi.i.i, %.pre-phi5.i.i
  br i1 %.not.i.i.i.i.i.i.i9, label %.thread, label %bb.h

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ad = getelementptr inbounds i8, ptr null, i64 %i.r ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !86
  br label %bb.l

bb.h:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.af = icmp ugt i64 %i.r, 9223372036854775804
  br i1 %i.af, label %.noexc.i.i.i.i.i11, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i10, !prof !58

.noexc.i.i.i.i.i11:                               ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc12 unwind label %bb.s

.noexc12:                                         ; preds = %.noexc.i.i.i.i.i11
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i10: ; preds = %bb.h
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #27
          to label %.noexc13 unwind label %bb.s   ; 5 uses

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i10
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !85
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !89
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.r ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !86
  %5 = icmp samesign ugt i64 %i.r, 4
  br i1 %5, label %bb.i, label %bb.j, !prof !115

bb.i:                                             ; preds = %.noexc13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ag, ptr align 4 %i.q, i64 %i.r, i1 false)
  br label %bb.l

bb.j:                                             ; preds = %.noexc13
  %i.ak = icmp eq i64 %i.r, 4
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = load i32, ptr %i.q, align 4, !tbaa !57
  store i32 %i.al, ptr %i.ag, align 4, !tbaa !57
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %.thread
  %i.am = phi ptr [ %i.ai, %bb.i ], [ %i.ai, %bb.j ], [ %i.ai, %bb.k ], [ %i.ad, %.thread ]
  %i.an = phi ptr [ %i.ah, %bb.i ], [ %i.ah, %bb.j ], [ %i.ah, %bb.k ], [ %i.ac, %.thread ]
  store ptr %i.am, ptr %i.an, align 8, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ao = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread46 ; 4 uses

.thread46:                                        ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.ao, ptr %0, align 8, !tbaa !94
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !95
  %i.at = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %4, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ao)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 56) #25
  br label %.body

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.av, align 8, !tbaa !96
  %i.aw = load i64, ptr %4, align 8, !tbaa !88
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !65
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void %i.ay(ptr noundef nonnull %i.az)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #24
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %.not.i.i.i.i14 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.p

bb.p:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.m) #25
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.p
  ret void

bb.q:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %i.g, align 8, !tbaa !85  ; 3 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i16, label %_ZN2cv8GMatDescD2Ev.exit17, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !86
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #25
  br label %_ZN2cv8GMatDescD2Ev.exit17

bb.s:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i10, %.noexc.i.i.i.i.i11
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread46, %bb.m
  %i.bk = phi { ptr, i32 } [ %i.ap, %.thread46 ], [ %i.au, %bb.m ]
  %i.bl = load i64, ptr %4, align 8, !tbaa !88
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr @constinit.9, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !65
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void %i.bn(ptr noundef nonnull %i.bo)
          to label %.loopexit unwind label %bb.t

bb.t:                                             ; preds = %.body
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #24
  unreachable

.loopexit:                                        ; preds = %.body, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.s ], [ %i.bk, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %.not.i.i.i.i19 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit17, label %bb.u

bb.u:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.m) #25
  br label %_ZN2cv8GMatDescD2Ev.exit17

_ZN2cv8GMatDescD2Ev.exit17:                       ; preds = %bb.u, %.loopexit, %bb.r, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.r ], [ %i.bc, %bb.q ], [ %.pn, %.loopexit ], [ %.pn, %bb.u ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI7GOCLBGREENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::function.18", align 8  ; 12 uses
  %2 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %3 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %4 = alloca %"class.cv::GOCLKernel", align 8    ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN2cv4gapi3ocl7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !811
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !noalias !811
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @_ZN2cv6detail13OCLCallHelperI7GOCLBGRSt5tupleIJNS_6GFrameEEES3_IJNS_4GMatEEEE4callERNS_11GOCLContextE, ptr %1, align 8, !tbaa !65, !noalias !811
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.d, align 8, !tbaa !69, !noalias !811
  store ptr @_ZNSt17_Function_handlerIFvRN2cv11GOCLContextEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.e, align 8, !tbaa !40, !noalias !811
  invoke void @_ZN2cv10GOCLKernelC1ERKSt8functionIFvRNS_11GOCLContextEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !811 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i1.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !811 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.k, null
  br i1 %.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit3.i:                ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !811
  br label %.body

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !811
  %i.o = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %.noexc unwind label %bb.aa    ; 5 uses

.noexc:                                           ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_10GOCLKernelEEE, i64 16), ptr %i.o, align 8, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 24, i1 false)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !69
end_hunk_18
