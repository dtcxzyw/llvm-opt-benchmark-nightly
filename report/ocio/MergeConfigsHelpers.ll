Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/MergeConfigsHelpers?download=true
inline.NumInlined: 1443
inline.NumDeleted: 453
begin_hunk_0_@_ZN16OpenColorIO_v2_512ConfigMerger14CreateFromFileEPKc:bb.a
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !30
  %.not15 = icmp eq i8 %i.a, 0
  br i1 %.not15, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_520ExceptionMissingFileC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.32)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN16OpenColorIO_v2_520ExceptionMissingFileE, ptr nonnull @_ZN16OpenColorIO_v2_520ExceptionMissingFileD1Ev) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #25
  br label %bb.u

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN16OpenColorIO_v2_58Platform21CreateInputFileStreamEPKcSt13_Ios_Openmode(ptr dead_on_unwind nonnull writable sret(%"class.std::basic_ifstream") align 8 %2, ptr noundef nonnull %1, i32 noundef 12)
  %i.d = load ptr, ptr %2, align 8, !tbaa !39
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %2, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !79
  %i.j = and i32 %i.i, 5
  %.not28 = icmp eq i32 %i.j, 0
  br i1 %.not28, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.33, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.h
  %i.l = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1, i64 noundef %i.l)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.34, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22
  %i.o = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24
  %i.p = load ptr, ptr %4, align 8, !tbaa !49
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef %i.p)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #26
          to label %bb.v unwind label %bb.n

bb.k:                                             ; preds = %bb.r
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.l:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.o

bb.n:                                             ; preds = %bb.j, %bb.i
  %.0 = phi i1 [ false, %bb.j ], [ true, %bb.i ]  ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !49     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.y = load i64, ptr %i.w, align 8, !tbaa !30
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.o, label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn27 = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.o) #25
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.o, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn27, %bb.o ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.s, %bb.m ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.p ], [ %i.r, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.t

bb.r:                                             ; preds = %bb.f
  invoke void @_ZN16OpenColorIO_v2_512ConfigMerger4Impl4ReadERSiPKc(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.5") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %1)
          to label %bb.s unwind label %bb.k

bb.s:                                             ; preds = %bb.r
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.t:                                             ; preds = %bb.q, %bb.k
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.q ], [ %i.q, %bb.k ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.e
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.t ], [ %i.c, %bb.e ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn

bb.v:                                             ; preds = %bb.j
  unreachable
}

declare void @_ZN16OpenColorIO_v2_520ExceptionMissingFileC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_520ExceptionMissingFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11

declare void @_ZN16OpenColorIO_v2_58Platform21CreateInputFileStreamEPKcSt13_Ios_Openmode(ptr dead_on_unwind writable sret(%"class.std::basic_ifstream") align 8, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
define void @_ZNK16OpenColorIO_v2_512ConfigMerger18createEditableCopyEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.8") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_512ConfigMerger6CreateEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.8") align 8 %0)
  %i.a = load ptr, ptr %1, align 8, !tbaa !86
  %i.b = load ptr, ptr %0, align 8, !tbaa !83
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86
  %i.d = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN16OpenColorIO_v2_512ConfigMerger4ImplaSERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %bb.c unwind label %bb.b       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512ConfigMergerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(112) ptr @_ZN16OpenColorIO_v2_512ConfigMerger4ImplaSERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.0", align 16 ; 11 uses
  %3 = alloca %"class.std::shared_ptr.28", align 16 ; 8 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 9 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load <2 x i32>, ptr %i.d, align 8, !tbaa !40
  store <2 x i32> %i.f, ptr %i.e, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !99   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !89   ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEEEvPT_.exit.i.i.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEEEvPT_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.m, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !37
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #25, !inline_history !190
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #25, !inline_history !190
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEEEvPT_.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !40
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.p, %bb.f ], [ %i.z, %bb.g ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.h, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEEEvPT_.exit.i.i.i.i, !prof !41

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEEEvPT_.exit.i.i.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, %i.j
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEEEvPT_.exit.i.i.i.i
  store ptr %i.h, ptr %i.i, align 8, !tbaa !89
  br label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE5clearEv.exit

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE5clearEv.exit: ; preds = %bb.b, %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !89 ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !99 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp ugt i64 %i.ai, 9223372036854775792
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE5clearEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #26
  unreachable

bb.j:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE5clearEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !90
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !99
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp ult i64 %i.ap, %i.ai
  br i1 %i.aq, label %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.j
  %i.ar = ptrtoint ptr %i.h to i64
  %i.as = sub i64 %i.ar, %i.ao
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #23 ; 4 uses
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !99  ; 5 uses
  %i.av = load ptr, ptr %i.i, align 8, !tbaa !89  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.au, %i.av
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i21

.lr.ph.i.i.i.i21:                                 ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i21
  %.012.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i21 ], [ %i.at, %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i21 ], [ %i.au, %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE11_M_allocateEm.exit.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ax = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !31, !alias.scope !201
  store ptr null, ptr %i.aw, align 8, !tbaa !34, !alias.scope !201
  store <2 x ptr> %i.ax, ptr %.012.i.i.i.i, align 8, !tbaa !31, !alias.scope !200
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !52, !alias.scope !201
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i22 = icmp eq ptr %i.ay, %i.av
  br i1 %.not.i.i.i.i22, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i21, !llvm.loop !6

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i21, %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.au, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.ba = load ptr, ptr %i.ak, align 8, !tbaa !90
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.au to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.bd) #24
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.k, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.at, ptr %i.g, align 8, !tbaa !99
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store ptr %i.be, ptr %i.i, align 8, !tbaa !89
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ai
  store ptr %i.bf, ptr %i.ak, align 8, !tbaa !90
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !116
  %.pre63 = load ptr, ptr %i.ad, align 8, !tbaa !116
  br label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE7reserveEm.exit

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE7reserveEm.exit: ; preds = %bb.j, %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.bg = phi ptr [ %i.ae, %bb.j ], [ %.pre63, %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE13_M_deallocateEPS3_m.exit.i ] ; 2 uses
  %i.bh = phi ptr [ %i.af, %bb.j ], [ %.pre, %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE13_M_deallocateEPS3_m.exit.i ] ; 2 uses
  %.not5658 = icmp eq ptr %i.bh, %i.bg
  br i1 %.not5658, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE7reserveEm.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.u

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE7reserveEm.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !103 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !102 ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.bm, %i.bk
  br i1 %.not.i.i23, label %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE5clearEv.exit, label %.lr.ph.i.i.i.i24

.lr.ph.i.i.i.i24:                                 ; preds = %._crit_edge, %_ZSt8_DestroyISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i25 = phi ptr [ %i.ce, %_ZSt8_DestroyISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEEvPT_.exit.i.i.i.i ], [ %i.bk, %._crit_edge ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i25, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !34 ; 8 uses
  %.not.i.i.i.i.i.i.i26 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i.i26, label %_ZSt8_DestroyISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bp, align 8, !tbaa !36
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !37
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !39
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #25, !inline_history !194
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !39
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #25, !inline_history !194
  br label %_ZSt8_DestroyISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEEvPT_.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i.i.i.i.i27 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i.i.i27, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !40
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i28

bb.p:                                             ; preds = %bb.n
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i28

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i28: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i.i.i29 = phi i32 [ %i.bs, %bb.o ], [ %i.cc, %bb.p ]
  %i.cd = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i29, 1
  br i1 %i.cd, label %bb.q, label %_ZSt8_DestroyISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEEvPT_.exit.i.i.i.i, !prof !41

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i28
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #25
  br label %_ZSt8_DestroyISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEEvPT_.exit.i.i.i.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i28, %bb.m, %.lr.ph.i.i.i.i24
  %i.ce = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i25, i64 16 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.ce, %i.bm
  br i1 %.not.i.i.i.i30, label %_ZSt8_DestroyIPSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i24, !llvm.loop !4

_ZSt8_DestroyIPSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEEvPT_.exit.i.i.i.i
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !102
  br label %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE5clearEv.exit

_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE5clearEv.exit: ; preds = %._crit_edge, %_ZSt8_DestroyIPSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !102 ; 2 uses
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !103 ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck                    ; 4 uses
  %i.cm = icmp ugt i64 %i.cl, 9223372036854775792
  br i1 %i.cm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE5clearEv.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #26
  unreachable

bb.s:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE5clearEv.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !115
  %i.cp = load ptr, ptr %i.bj, align 8, !tbaa !103
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = icmp ult i64 %i.cs, %i.cl
  br i1 %i.ct, label %_ZNSt12_Vector_baseISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.s
  %i.cu = ptrtoint ptr %i.bk to i64
  %i.cv = sub i64 %i.cu, %i.cr
  %i.cw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #23 ; 4 uses
  %i.cx = load ptr, ptr %i.bj, align 8, !tbaa !103 ; 5 uses
  %i.cy = load ptr, ptr %i.bl, align 8, !tbaa !102 ; 2 uses
  %.not10.i.i.i.i31 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not10.i.i.i.i31, label %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i32

.lr.ph.i.i.i.i32:                                 ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i32
  %.012.i.i.i.i33 = phi ptr [ %i.dc, %.lr.ph.i.i.i.i32 ], [ %i.cw, %_ZNSt12_Vector_baseISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i34 = phi ptr [ %i.db, %.lr.ph.i.i.i.i32 ], [ %i.cx, %_ZNSt12_Vector_baseISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE11_M_allocateEm.exit.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.cz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i34, i64 8
  %i.da = load <2 x ptr>, ptr %.0911.i.i.i.i34, align 8, !tbaa !31, !alias.scope !203
  store ptr null, ptr %i.cz, align 8, !tbaa !34, !alias.scope !203
  store <2 x ptr> %i.da, ptr %.012.i.i.i.i33, align 8, !tbaa !31, !alias.scope !202
  store ptr null, ptr %.0911.i.i.i.i34, align 8, !tbaa !118, !alias.scope !203
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i34, i64 16 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i33, i64 16
  %.not.i.i.i.i35 = icmp eq ptr %i.db, %i.cy
  br i1 %.not.i.i.i.i35, label %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i32, !llvm.loop !7

_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %.lr.ph.i.i.i.i32, %_ZNSt12_Vector_baseISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE11_M_allocateEm.exit.i
  %.not.i8.i36 = icmp eq ptr %i.cx, null
  br i1 %.not.i8.i36, label %_ZNSt12_Vector_baseISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE13_M_deallocateEPS4_m.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %i.dd = load ptr, ptr %i.cn, align 8, !tbaa !115
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.cx to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dg) #24
  br label %_ZNSt12_Vector_baseISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.t, %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.cw, ptr %i.bj, align 8, !tbaa !103
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cv
  store ptr %i.dh, ptr %i.bl, align 8, !tbaa !102
  %i.di = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cl
  store ptr %i.di, ptr %i.cn, align 8, !tbaa !115
  %.pre64 = load ptr, ptr %i.cf, align 8, !tbaa !119
  %.pre65 = load ptr, ptr %i.cg, align 8, !tbaa !119
  br label %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE7reserveEm.exit

_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE7reserveEm.exit: ; preds = %bb.s, %_ZNSt12_Vector_baseISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE13_M_deallocateEPS4_m.exit.i
  %i.dj = phi ptr [ %i.ch, %bb.s ], [ %.pre65, %_ZNSt12_Vector_baseISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE13_M_deallocateEPS4_m.exit.i ] ; 2 uses
  %i.dk = phi ptr [ %i.ci, %bb.s ], [ %.pre64, %_ZNSt12_Vector_baseISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE13_M_deallocateEPS4_m.exit.i ] ; 2 uses
  %.not5760 = icmp eq ptr %i.dk, %i.dj
  br i1 %.not5760, label %.loopexit, label %.lr.ph62

.lr.ph62:                                         ; preds = %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE7reserveEm.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.af

bb.u:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.053.059 = phi ptr [ %i.bh, %.lr.ph ], [ %i.eo, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.dn = load ptr, ptr %.sroa.053.059, align 8, !tbaa !52
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  call void @_ZN16OpenColorIO_v2_523ConfigMergingParameters6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.0") align 8 %2)
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !23, !noalias !204
  %i.dp = load ptr, ptr %2, align 16, !tbaa !52, !alias.scope !204
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !23, !noalias !204
  %i.dr = invoke noundef nonnull align 8 dereferenceable(276) ptr @_ZN16OpenColorIO_v2_523ConfigMergingParameters4ImplaSERKS1_(ptr noundef nonnull align 8 dereferenceable(276) %i.dq, ptr noundef nonnull align 8 dereferenceable(276) %i.do)
          to label %_ZNK16OpenColorIO_v2_523ConfigMergingParameters18createEditableCopyEv.exit unwind label %bb.v, !noalias !204 ; 0 uses

common.resume:                                    ; preds = %bb.ae, %bb.au, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.ds, %bb.v ], [ %i.ep, %bb.ae ], [ %i.gf, %bb.au ]
  resume { ptr, i32 } %common.resume.op

bb.v:                                             ; preds = %bb.u
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #25
  br label %common.resume

_ZNK16OpenColorIO_v2_523ConfigMergingParameters18createEditableCopyEv.exit: ; preds = %bb.u
  %i.dt = load ptr, ptr %i.i, align 8, !tbaa !89  ; 5 uses
  %i.du = load ptr, ptr %i.ak, align 8, !tbaa !90
  %.not.i.i37 = icmp eq ptr %i.dt, %i.du
  br i1 %.not.i.i37, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNK16OpenColorIO_v2_523ConfigMergingParameters18createEditableCopyEv.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr null, ptr %i.dv, align 8, !tbaa !34
  %i.dw = load <2 x ptr>, ptr %2, align 16, !tbaa !31
  store ptr null, ptr %i.bi, align 8, !tbaa !34
  store <2 x ptr> %i.dw, ptr %i.dt, align 8, !tbaa !31
  store ptr null, ptr %2, align 16, !tbaa !52
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store ptr %i.dx, ptr %i.i, align 8, !tbaa !89
  br label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE9push_backEOS3_.exit

bb.x:                                             ; preds = %_ZNK16OpenColorIO_v2_523ConfigMergingParameters18createEditableCopyEv.exit
  invoke void @_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %i.dt, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE9push_backEOS3_.exit unwind label %bb.ae

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.w, %bb.x
  %i.dy = load ptr, ptr %i.bi, align 8, !tbaa !34 ; 8 uses
  %.not.i.i38 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i38, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE9push_backEOS3_.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 4 uses
  %i.ea = load atomic i64, ptr %i.dz acquire, align 8 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 4294967297
  %i.ec = trunc i64 %i.ea to i32                  ; 2 uses
  br i1 %i.eb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.dz, align 8, !tbaa !36
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  store i32 0, ptr %i.ed, align 4, !tbaa !37
  %i.ee = load ptr, ptr %i.dy, align 8, !tbaa !39
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #25, !inline_history !2
  %i.eh = load ptr, ptr %i.dy, align 8, !tbaa !39
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #25, !inline_history !2
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.ek = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i = icmp eq i8 %i.ek, 0
  br i1 %.not.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.el = add nsw i32 %i.ec, -1
  store i32 %i.el, ptr %i.dz, align 8, !tbaa !40
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.em = atomicrmw volatile add ptr %i.dz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i = phi i32 [ %i.ec, %bb.ab ], [ %i.em, %bb.ac ]
  %i.en = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.en, label %bb.ad, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !41

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #25
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersEESaIS3_EE9push_backEOS3_.exit, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.053.059, i64 16 ; 2 uses
  %.not56 = icmp eq ptr %i.eo, %i.bg
  br i1 %.not56, label %._crit_edge, label %bb.u

bb.ae:                                            ; preds = %bb.x
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_523ConfigMergingParametersELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume

bb.af:                                            ; preds = %.lr.ph62, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.049.061 = phi ptr [ %i.dk, %.lr.ph62 ], [ %i.ge, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.eq = load ptr, ptr %.sroa.049.061, align 8, !tbaa !118
  call void @_ZNK16OpenColorIO_v2_56Config18createEditableCopyEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.eq)
  %i.er = load <2 x ptr>, ptr %4, align 16, !tbaa !31
  %i.es = load ptr, ptr %4, align 16, !tbaa !44
  store ptr null, ptr %i.dm, align 8, !tbaa !34
  store <2 x ptr> %i.er, ptr %3, align 16, !tbaa !31
  store ptr null, ptr %4, align 16, !tbaa !44
  %i.et = load ptr, ptr %i.bl, align 8, !tbaa !102 ; 5 uses
  %i.eu = load ptr, ptr %i.cn, align 8, !tbaa !115
  %.not.i.i39 = icmp eq ptr %i.et, %i.eu
  br i1 %.not.i.i39, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %i.es, ptr %i.et, align 8, !tbaa !118
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  store ptr null, ptr %i.ev, align 8, !tbaa !34
  %i.ew = load ptr, ptr %i.dl, align 8, !tbaa !34
  store ptr null, ptr %i.dl, align 8, !tbaa !34
  store ptr %i.ew, ptr %i.ev, align 8, !tbaa !34
  store ptr null, ptr %3, align 16, !tbaa !118
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store ptr %i.ex, ptr %i.bl, align 8, !tbaa !102
  br label %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE9push_backEOS4_.exit

bb.ah:                                            ; preds = %bb.af
  invoke void @_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr %i.et, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE9push_backEOS4_.exit unwind label %bb.au

_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.ag, %bb.ah
  %i.ey = load ptr, ptr %i.dl, align 8, !tbaa !34 ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE9push_backEOS4_.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 4 uses
  %i.fa = load atomic i64, ptr %i.ez acquire, align 8 ; 2 uses
end_hunk_0
