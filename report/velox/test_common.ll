inline.NumInlined: 8285
inline.NumDeleted: 2143
begin_hunk_0_@_ZNSt12__shared_ptrIN5arrow16SparseUnionArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc4test14MakeDictionaryEPSt10shared_ptrINS_11RecordBatchEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.5:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.arrow::Result", align 8     ; 13 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::vector.154", align 8   ; 15 uses
  %4 = alloca %"class.std::shared_ptr.8", align 16 ; 12 uses
  %5 = alloca %"class.std::shared_ptr.5", align 8 ; 10 uses
  %6 = alloca %"class.std::shared_ptr.5", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.8", align 16 ; 9 uses
  %8 = alloca %"class.std::shared_ptr.8", align 16 ; 10 uses
  %9 = alloca %"class.std::shared_ptr.8", align 16 ; 9 uses
  %10 = alloca %"class.std::shared_ptr.5", align 8 ; 8 uses
  %11 = alloca %"class.std::shared_ptr.5", align 8 ; 8 uses
  %12 = alloca %"class.std::shared_ptr.5", align 8 ; 8 uses
  %13 = alloca %"class.std::vector.142", align 8  ; 9 uses
  %14 = alloca %"class.std::vector.135", align 8  ; 9 uses
  %15 = alloca %"class.std::vector.142", align 8  ; 9 uses
  %16 = alloca %"class.std::shared_ptr.161", align 16 ; 7 uses
  %17 = alloca %"class.std::shared_ptr.161", align 16 ; 7 uses
  %18 = alloca %"class.std::shared_ptr.161", align 16 ; 7 uses
  %19 = alloca %"class.std::shared_ptr.8", align 16 ; 9 uses
  %20 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %21 = alloca %"class.std::shared_ptr.5", align 8 ; 7 uses
  %22 = alloca %"class.std::shared_ptr.5", align 8 ; 8 uses
  %23 = alloca %"class.std::shared_ptr.49", align 8 ; 9 uses
  %24 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %25 = alloca %"class.std::shared_ptr.5", align 16 ; 7 uses
  %26 = alloca %"class.std::shared_ptr.167", align 8 ; 7 uses
  %27 = alloca %"class.std::shared_ptr.161", align 8 ; 7 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %28 = alloca %"class.std::shared_ptr.8", align 8 ; 8 uses
  %29 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %30 = alloca %"class.std::shared_ptr.8", align 16 ; 8 uses
  %31 = alloca %"class.std::shared_ptr.5", align 8 ; 7 uses
  %32 = alloca %"class.std::shared_ptr.5", align 8 ; 7 uses
  %33 = alloca %"class.std::shared_ptr.161", align 16 ; 7 uses
  %34 = alloca %"class.std::vector", align 8      ; 13 uses
  %35 = alloca [5 x %"class.std::shared_ptr.14"], align 16 ; 27 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %37 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %38 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %40 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %41 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %43 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %44 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %46 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %47 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %49 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %50 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %51 = alloca %"class.std::vector.23", align 8   ; 13 uses
  %52 = alloca [5 x %"class.std::shared_ptr.5"], align 16 ; 24 uses
  %53 = alloca %"class.std::shared_ptr.8", align 16 ; 8 uses
  %54 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  %55 = alloca %"class.std::shared_ptr.8", align 16 ; 8 uses
  %56 = alloca %"class.std::shared_ptr.5", align 8 ; 7 uses
  %57 = alloca %"class.std::shared_ptr.14", align 16 ; 9 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %59 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %60 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %61 = alloca %"class.std::shared_ptr.5", align 8 ; 8 uses
  %62 = alloca %"class.std::shared_ptr.161", align 8 ; 6 uses
  %63 = alloca %"class.std::shared_ptr.55", align 16 ; 7 uses
  %64 = alloca %"class.std::shared_ptr.2", align 8 ; 4 uses
  %65 = alloca %"class.std::vector", align 8      ; 11 uses
  %66 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %67 = alloca %"class.std::vector.23", align 8   ; 11 uses
  %68 = alloca %"class.std::shared_ptr.58", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 6, ptr %i.c, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.i = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.j, ptr %i.h, align 8, !tbaa !907
  store ptr %i.i, ptr %3, align 8
  store i32 0, ptr %i.e, align 8
  store ptr %i.i, ptr %i.f, align 8
  store i32 6, ptr %i.g, align 8
  store i64 -5, ptr %i.i, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4utf8Ev()
          to label %bb.a unwind label %bb.bl      ; 2 uses

bb.a:                                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.5
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !66   ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.k, align 8, !tbaa !79
  store <2 x ptr> %i.o, ptr %4, align 16, !tbaa !79
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN5arrow13ArrayFromJSONERKSt10shared_ptrINS_8DataTypeEESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.5") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 21, ptr nonnull @.str.35)
          to label %bb.e unwind label %bb.bm

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN5arrow13ArrayFromJSONERKSt10shared_ptrINS_8DataTypeEESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.5") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 27, ptr nonnull @.str.36)
          to label %bb.f unwind label %bb.bn

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.u = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev()
          to label %bb.g unwind label %bb.bo

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5arrow10dictionaryERKSt10shared_ptrINS_8DataTypeEES4_b(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.8") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext false)
          to label %bb.h unwind label %bb.bo

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.v = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.i unwind label %bb.bp

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5arrow10dictionaryERKSt10shared_ptrINS_8DataTypeEES4_b(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.8") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.bp

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.w = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev()
          to label %bb.k unwind label %bb.bq

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5arrow10dictionaryERKSt10shared_ptrINS_8DataTypeEES4_b(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.8") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext false)
          to label %bb.l unwind label %bb.bq

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.x = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.m unwind label %bb.br      ; 3 uses

bb.m:                                             ; preds = %bb.l
  store ptr %i.x, ptr %13, align 8, !tbaa !94
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.x, ptr noundef nonnull align 4 dereferenceable(24) @constinit.50, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.ab = invoke noalias noundef nonnull dereferenceable(6) ptr @_Znwm(i64 noundef 6) #25
          to label %bb.n unwind label %_ZNSt12_Vector_baseIaSaIaEED2Ev.exit.i ; 3 uses

_ZNSt12_Vector_baseIaSaIaEED2Ev.exit.i:           ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.m
  store ptr %i.ab, ptr %14, align 8, !tbaa !842
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 6 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !844
  store <6 x i8> <i8 0, i8 0, i8 2, i8 2, i8 1, i8 1>, ptr %i.ab, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !845
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.af = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.o unwind label %bb.bs      ; 3 uses

bb.o:                                             ; preds = %bb.n
  store ptr %i.af, ptr %15, align 8, !tbaa !94
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.af, ptr noundef nonnull align 4 dereferenceable(24) @constinit.51, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !98
  invoke void @_ZN5arrow15ArrayFromVectorINS_9Int32TypeEiEEvRKSt6vectorIbSaIbEERKS2_IT0_SaIS7_EEPSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull %10)
          to label %bb.p unwind label %bb.bt

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN5arrow15ArrayFromVectorINS_8Int8TypeEaEEvRKSt6vectorIbSaIbEERKS2_IT0_SaIS7_EEPSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull %11)
          to label %bb.q unwind label %bb.bt

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN5arrow15ArrayFromVectorINS_9Int32TypeEiEEvRKSt6vectorIbSaIbEERKS2_IT0_SaIS7_EEPSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull %12)
          to label %bb.r unwind label %bb.bt

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.aj = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #25
          to label %.noexc148 unwind label %bb.bu ; 6 uses

.noexc148:                                        ; preds = %bb.r
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 1, ptr %i.ak, align 8, !tbaa !67, !noalias !911
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 1, ptr %i.al, align 4, !tbaa !69, !noalias !911
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.aj, align 8, !tbaa !32, !noalias !911
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  invoke void @_ZN5arrow15DictionaryArrayC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_5ArrayEES9_(ptr noundef nonnull align 8 dereferenceable(72) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.s unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i, !noalias !911

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i: ; preds = %.noexc148
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 88) #23, !noalias !911
  br label %.body149

bb.s:                                             ; preds = %.noexc148
  %i.ao = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !66, !alias.scope !911
  store ptr %i.am, ptr %16, align 16, !tbaa !914, !alias.scope !911
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %i.ap = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #25
          to label %.noexc152 unwind label %bb.bv ; 6 uses

.noexc152:                                        ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 1, ptr %i.aq, align 8, !tbaa !67, !noalias !916
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 1, ptr %i.ar, align 4, !tbaa !69, !noalias !916
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ap, align 8, !tbaa !32, !noalias !916
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  invoke void @_ZN5arrow15DictionaryArrayC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_5ArrayEES9_(ptr noundef nonnull align 8 dereferenceable(72) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.t unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i151, !noalias !916

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i151: ; preds = %.noexc152
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 88) #23, !noalias !916
  br label %.body153

bb.t:                                             ; preds = %.noexc152
  %i.au = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  store ptr %i.ap, ptr %i.au, align 8, !tbaa !66, !alias.scope !916
  store ptr %i.as, ptr %17, align 16, !tbaa !914, !alias.scope !916
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !919)
  %i.av = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #25
          to label %.noexc157 unwind label %bb.bw ; 6 uses

.noexc157:                                        ; preds = %bb.t
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 1, ptr %i.aw, align 8, !tbaa !67, !noalias !919
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 1, ptr %i.ax, align 4, !tbaa !69, !noalias !919
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.av, align 8, !tbaa !32, !noalias !919
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  invoke void @_ZN5arrow15DictionaryArrayC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_5ArrayEES9_(ptr noundef nonnull align 8 dereferenceable(72) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.u unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i156, !noalias !919

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i156: ; preds = %.noexc157
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 88) #23, !noalias !919
  br label %.body158

bb.u:                                             ; preds = %.noexc157
  %i.ba = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  store ptr %i.av, ptr %i.ba, align 8, !tbaa !66, !alias.scope !919
  store ptr %i.ay, ptr %18, align 16, !tbaa !914, !alias.scope !919
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.bb = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !66 ; 2 uses
  %i.be = load <2 x ptr>, ptr %8, align 16, !tbaa !79
  store <2 x ptr> %i.be, ptr %20, align 16, !tbaa !79
  %.not.i.i.i161 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i161, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit163, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i162 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i162, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit163

bb.x:                                             ; preds = %bb.v
  %i.bj = atomicrmw volatile add ptr %i.bf, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit163

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit163: ; preds = %bb.u, %bb.w, %bb.x
  invoke void @_ZN5arrow4listESt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.8") align 8 %19, ptr noundef nonnull %20)
          to label %bb.y unwind label %bb.bx

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit163
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !66 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.bl, align 8, !tbaa !67
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !69
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #22, !inline_history !206
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #22, !inline_history !206
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i164 = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i164, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i = phi i32 [ %i.bo, %bb.ac ], [ %i.by, %bb.ad ]
  %i.bz = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bz, label %bb.ae, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #22
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.y, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.ca = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.af unwind label %bb.by

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @_ZN5arrow13ArrayFromJSONERKSt10shared_ptrINS_8DataTypeEESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.5") align 8 %21, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 27, ptr nonnull @.str.39)
          to label %bb.ag unwind label %bb.by

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.cb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev()
          to label %bb.ah unwind label %bb.bz

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN5arrow13ArrayFromJSONERKSt10shared_ptrINS_8DataTypeEESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.5") align 8 %22, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 21, ptr nonnull @.str.40)
          to label %bb.ai unwind label %bb.bz

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
end_hunk_0
begin_hunk_1_@_ZN5arrow3ipc4test14MakeDictionaryEPSt10shared_ptrINS_11RecordBatchEE:_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.5
  %i.bgc = load ptr, ptr %i.bft, align 8, !tbaa !32
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bgc, i64 24
  %i.bge = load ptr, ptr %i.bgd, align 8
  call void %i.bge(ptr noundef nonnull align 8 dereferenceable(16) %i.bft) #22, !inline_history !206
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit540

bb.th:                                            ; preds = %bb.tf
  %i.bgf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i537 = icmp eq i8 %i.bgf, 0
  br i1 %.not.i.i.i537, label %bb.tj, label %bb.ti

bb.ti:                                            ; preds = %bb.th
  %i.bgg = add nsw i32 %i.bfx, -1
  store i32 %i.bgg, ptr %i.bfu, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i538

bb.tj:                                            ; preds = %bb.th
  %i.bgh = atomicrmw volatile add ptr %i.bfu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i538

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i538: ; preds = %bb.tj, %bb.ti
  %.0.i.i.i.i539 = phi i32 [ %i.bfx, %bb.ti ], [ %i.bgh, %bb.tj ]
  %i.bgi = icmp eq i32 %.0.i.i.i.i539, 1
  br i1 %i.bgi, label %bb.tk, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit540, !prof !71

bb.tk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i538
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bft) #22
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit540

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit540: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit535, %bb.tg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i538, %bb.tk
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.bgj = load ptr, ptr %i.ba, align 8, !tbaa !66 ; 8 uses
  %.not.i.i541 = icmp eq ptr %i.bgj, null
  br i1 %.not.i.i541, label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit545, label %bb.tl

bb.tl:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit540
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bgj, i64 8 ; 4 uses
  %i.bgl = load atomic i64, ptr %i.bgk acquire, align 8 ; 2 uses
  %i.bgm = icmp eq i64 %i.bgl, 4294967297
  %i.bgn = trunc i64 %i.bgl to i32                ; 2 uses
  br i1 %i.bgm, label %bb.tm, label %bb.tn

bb.tm:                                            ; preds = %bb.tl
  store i32 0, ptr %i.bgk, align 8, !tbaa !67
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgj, i64 12
  store i32 0, ptr %i.bgo, align 4, !tbaa !69
  %i.bgp = load ptr, ptr %i.bgj, align 8, !tbaa !32
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgp, i64 16
  %i.bgr = load ptr, ptr %i.bgq, align 8
  call void %i.bgr(ptr noundef nonnull align 8 dereferenceable(16) %i.bgj) #22, !inline_history !955
  %i.bgs = load ptr, ptr %i.bgj, align 8, !tbaa !32
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgs, i64 24
  %i.bgu = load ptr, ptr %i.bgt, align 8
  call void %i.bgu(ptr noundef nonnull align 8 dereferenceable(16) %i.bgj) #22, !inline_history !955
  br label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit545

bb.tn:                                            ; preds = %bb.tl
  %i.bgv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i542 = icmp eq i8 %i.bgv, 0
  br i1 %.not.i.i.i542, label %bb.tp, label %bb.to

bb.to:                                            ; preds = %bb.tn
  %i.bgw = add nsw i32 %i.bgn, -1
  store i32 %i.bgw, ptr %i.bgk, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i543

bb.tp:                                            ; preds = %bb.tn
  %i.bgx = atomicrmw volatile add ptr %i.bgk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i543

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i543: ; preds = %bb.tp, %bb.to
  %.0.i.i.i.i544 = phi i32 [ %i.bgn, %bb.to ], [ %i.bgx, %bb.tp ]
  %i.bgy = icmp eq i32 %.0.i.i.i.i544, 1
  br i1 %i.bgy, label %bb.tq, label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit545, !prof !71

bb.tq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i543
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bgj) #22
  br label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit545

_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit545: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit540, %bb.tm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i543, %bb.tq
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.bgz = load ptr, ptr %i.au, align 8, !tbaa !66 ; 8 uses
  %.not.i.i546 = icmp eq ptr %i.bgz, null
  br i1 %.not.i.i546, label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit550, label %bb.tr

bb.tr:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit545
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgz, i64 8 ; 4 uses
  %i.bhb = load atomic i64, ptr %i.bha acquire, align 8 ; 2 uses
  %i.bhc = icmp eq i64 %i.bhb, 4294967297
  %i.bhd = trunc i64 %i.bhb to i32                ; 2 uses
  br i1 %i.bhc, label %bb.ts, label %bb.tt

bb.ts:                                            ; preds = %bb.tr
  store i32 0, ptr %i.bha, align 8, !tbaa !67
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bgz, i64 12
  store i32 0, ptr %i.bhe, align 4, !tbaa !69
  %i.bhf = load ptr, ptr %i.bgz, align 8, !tbaa !32
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhf, i64 16
  %i.bhh = load ptr, ptr %i.bhg, align 8
  call void %i.bhh(ptr noundef nonnull align 8 dereferenceable(16) %i.bgz) #22, !inline_history !955
  %i.bhi = load ptr, ptr %i.bgz, align 8, !tbaa !32
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhi, i64 24
  %i.bhk = load ptr, ptr %i.bhj, align 8
  call void %i.bhk(ptr noundef nonnull align 8 dereferenceable(16) %i.bgz) #22, !inline_history !955
  br label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit550

bb.tt:                                            ; preds = %bb.tr
  %i.bhl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i547 = icmp eq i8 %i.bhl, 0
  br i1 %.not.i.i.i547, label %bb.tv, label %bb.tu

bb.tu:                                            ; preds = %bb.tt
  %i.bhm = add nsw i32 %i.bhd, -1
  store i32 %i.bhm, ptr %i.bha, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i548

bb.tv:                                            ; preds = %bb.tt
  %i.bhn = atomicrmw volatile add ptr %i.bha, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i548

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i548: ; preds = %bb.tv, %bb.tu
  %.0.i.i.i.i549 = phi i32 [ %i.bhd, %bb.tu ], [ %i.bhn, %bb.tv ]
  %i.bho = icmp eq i32 %.0.i.i.i.i549, 1
  br i1 %i.bho, label %bb.tw, label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit550, !prof !71

bb.tw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i548
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bgz) #22
  br label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit550

_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit550: ; preds = %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit545, %bb.ts, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i548, %bb.tw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.bhp = load ptr, ptr %i.ao, align 8, !tbaa !66 ; 8 uses
  %.not.i.i551 = icmp eq ptr %i.bhp, null
  br i1 %.not.i.i551, label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit555, label %bb.tx

bb.tx:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit550
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhp, i64 8 ; 4 uses
  %i.bhr = load atomic i64, ptr %i.bhq acquire, align 8 ; 2 uses
  %i.bhs = icmp eq i64 %i.bhr, 4294967297
  %i.bht = trunc i64 %i.bhr to i32                ; 2 uses
  br i1 %i.bhs, label %bb.ty, label %bb.tz

bb.ty:                                            ; preds = %bb.tx
  store i32 0, ptr %i.bhq, align 8, !tbaa !67
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bhp, i64 12
  store i32 0, ptr %i.bhu, align 4, !tbaa !69
  %i.bhv = load ptr, ptr %i.bhp, align 8, !tbaa !32
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhv, i64 16
  %i.bhx = load ptr, ptr %i.bhw, align 8
  call void %i.bhx(ptr noundef nonnull align 8 dereferenceable(16) %i.bhp) #22, !inline_history !955
  %i.bhy = load ptr, ptr %i.bhp, align 8, !tbaa !32
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhy, i64 24
  %i.bia = load ptr, ptr %i.bhz, align 8
  call void %i.bia(ptr noundef nonnull align 8 dereferenceable(16) %i.bhp) #22, !inline_history !955
  br label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit555

bb.tz:                                            ; preds = %bb.tx
  %i.bib = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i552 = icmp eq i8 %i.bib, 0
  br i1 %.not.i.i.i552, label %bb.ub, label %bb.ua

bb.ua:                                            ; preds = %bb.tz
  %i.bic = add nsw i32 %i.bht, -1
  store i32 %i.bic, ptr %i.bhq, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i553

bb.ub:                                            ; preds = %bb.tz
  %i.bid = atomicrmw volatile add ptr %i.bhq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i553

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i553: ; preds = %bb.ub, %bb.ua
  %.0.i.i.i.i554 = phi i32 [ %i.bht, %bb.ua ], [ %i.bid, %bb.ub ]
  %i.bie = icmp eq i32 %.0.i.i.i.i554, 1
  br i1 %i.bie, label %bb.uc, label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit555, !prof !71

bb.uc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i553
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bhp) #22
  br label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit555

_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit555: ; preds = %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit550, %bb.ty, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i553, %bb.uc
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.bif = load ptr, ptr %15, align 8, !tbaa !94  ; 3 uses
  %.not.i.i.i556 = icmp eq ptr %i.bif, null
  br i1 %.not.i.i.i556, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ud

bb.ud:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit555
  %i.big = load ptr, ptr %i.ah, align 8, !tbaa !97
  %i.bih = ptrtoint ptr %i.big to i64
  %i.bii = ptrtoint ptr %i.bif to i64
  %i.bij = sub i64 %i.bih, %i.bii
  call void @_ZdlPvm(ptr noundef nonnull %i.bif, i64 noundef %i.bij) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit555, %bb.ud
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.bik = load ptr, ptr %14, align 8, !tbaa !842 ; 3 uses
  %.not.i.i.i557 = icmp eq ptr %i.bik, null
  br i1 %.not.i.i.i557, label %_ZNSt6vectorIaSaIaEED2Ev.exit, label %bb.ue

bb.ue:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bil = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !844
  %i.bim = ptrtoint ptr %i.bil to i64
  %i.bin = ptrtoint ptr %i.bik to i64
  %i.bio = sub i64 %i.bim, %i.bin
  call void @_ZdlPvm(ptr noundef nonnull %i.bik, i64 noundef %i.bio) #23
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

_ZNSt6vectorIaSaIaEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ue
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.bip = load ptr, ptr %13, align 8, !tbaa !94  ; 3 uses
  %.not.i.i.i559 = icmp eq ptr %i.bip, null
  br i1 %.not.i.i.i559, label %_ZNSt6vectorIiSaIiEED2Ev.exit560, label %bb.uf

bb.uf:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit
  %i.biq = load ptr, ptr %i.z, align 8, !tbaa !97
  %i.bir = ptrtoint ptr %i.biq to i64
  %i.bis = ptrtoint ptr %i.bip to i64
  %i.bit = sub i64 %i.bir, %i.bis
  call void @_ZdlPvm(ptr noundef nonnull %i.bip, i64 noundef %i.bit) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit560

_ZNSt6vectorIiSaIiEED2Ev.exit560:                 ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit, %bb.uf
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.biu = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.biv = load ptr, ptr %i.biu, align 8, !tbaa !66 ; 8 uses
  %.not.i.i561 = icmp eq ptr %i.biv, null
  br i1 %.not.i.i561, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit565, label %bb.ug

bb.ug:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit560
  %i.biw = getelementptr inbounds nuw i8, ptr %i.biv, i64 8 ; 4 uses
  %i.bix = load atomic i64, ptr %i.biw acquire, align 8 ; 2 uses
  %i.biy = icmp eq i64 %i.bix, 4294967297
  %i.biz = trunc i64 %i.bix to i32                ; 2 uses
  br i1 %i.biy, label %bb.uh, label %bb.ui

bb.uh:                                            ; preds = %bb.ug
  store i32 0, ptr %i.biw, align 8, !tbaa !67
  %i.bja = getelementptr inbounds nuw i8, ptr %i.biv, i64 12
  store i32 0, ptr %i.bja, align 4, !tbaa !69
  %i.bjb = load ptr, ptr %i.biv, align 8, !tbaa !32
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bjb, i64 16
  %i.bjd = load ptr, ptr %i.bjc, align 8
  call void %i.bjd(ptr noundef nonnull align 8 dereferenceable(16) %i.biv) #22, !inline_history !70
  %i.bje = load ptr, ptr %i.biv, align 8, !tbaa !32
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bje, i64 24
  %i.bjg = load ptr, ptr %i.bjf, align 8
  call void %i.bjg(ptr noundef nonnull align 8 dereferenceable(16) %i.biv) #22, !inline_history !70
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit565

bb.ui:                                            ; preds = %bb.ug
  %i.bjh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i562 = icmp eq i8 %i.bjh, 0
  br i1 %.not.i.i.i562, label %bb.uk, label %bb.uj

bb.uj:                                            ; preds = %bb.ui
  %i.bji = add nsw i32 %i.biz, -1
  store i32 %i.bji, ptr %i.biw, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i563

bb.uk:                                            ; preds = %bb.ui
  %i.bjj = atomicrmw volatile add ptr %i.biw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i563

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i563: ; preds = %bb.uk, %bb.uj
  %.0.i.i.i.i564 = phi i32 [ %i.biz, %bb.uj ], [ %i.bjj, %bb.uk ]
  %i.bjk = icmp eq i32 %.0.i.i.i.i564, 1
  br i1 %i.bjk, label %bb.ul, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit565, !prof !71

bb.ul:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i563
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.biv) #22
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit565

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit565: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit560, %bb.uh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i563, %bb.ul
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.bjl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bjm = load ptr, ptr %i.bjl, align 8, !tbaa !66 ; 8 uses
  %.not.i.i566 = icmp eq ptr %i.bjm, null
  br i1 %.not.i.i566, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit570, label %bb.um

bb.um:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit565
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bjm, i64 8 ; 4 uses
  %i.bjo = load atomic i64, ptr %i.bjn acquire, align 8 ; 2 uses
  %i.bjp = icmp eq i64 %i.bjo, 4294967297
  %i.bjq = trunc i64 %i.bjo to i32                ; 2 uses
  br i1 %i.bjp, label %bb.un, label %bb.uo

bb.un:                                            ; preds = %bb.um
  store i32 0, ptr %i.bjn, align 8, !tbaa !67
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bjm, i64 12
  store i32 0, ptr %i.bjr, align 4, !tbaa !69
  %i.bjs = load ptr, ptr %i.bjm, align 8, !tbaa !32
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjs, i64 16
  %i.bju = load ptr, ptr %i.bjt, align 8
  call void %i.bju(ptr noundef nonnull align 8 dereferenceable(16) %i.bjm) #22, !inline_history !70
  %i.bjv = load ptr, ptr %i.bjm, align 8, !tbaa !32
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjv, i64 24
  %i.bjx = load ptr, ptr %i.bjw, align 8
  call void %i.bjx(ptr noundef nonnull align 8 dereferenceable(16) %i.bjm) #22, !inline_history !70
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit570

bb.uo:                                            ; preds = %bb.um
  %i.bjy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i567 = icmp eq i8 %i.bjy, 0
  br i1 %.not.i.i.i567, label %bb.uq, label %bb.up

bb.up:                                            ; preds = %bb.uo
  %i.bjz = add nsw i32 %i.bjq, -1
  store i32 %i.bjz, ptr %i.bjn, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i568

bb.uq:                                            ; preds = %bb.uo
  %i.bka = atomicrmw volatile add ptr %i.bjn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i568

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i568: ; preds = %bb.uq, %bb.up
  %.0.i.i.i.i569 = phi i32 [ %i.bjq, %bb.up ], [ %i.bka, %bb.uq ]
  %i.bkb = icmp eq i32 %.0.i.i.i.i569, 1
  br i1 %i.bkb, label %bb.ur, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit570, !prof !71

bb.ur:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i568
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bjm) #22
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit570

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit570: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit565, %bb.un, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i568, %bb.ur
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.bkc = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bkd = load ptr, ptr %i.bkc, align 8, !tbaa !66 ; 8 uses
  %.not.i.i571 = icmp eq ptr %i.bkd, null
  br i1 %.not.i.i571, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit575, label %bb.us

bb.us:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit570
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bkd, i64 8 ; 4 uses
  %i.bkf = load atomic i64, ptr %i.bke acquire, align 8 ; 2 uses
  %i.bkg = icmp eq i64 %i.bkf, 4294967297
  %i.bkh = trunc i64 %i.bkf to i32                ; 2 uses
  br i1 %i.bkg, label %bb.ut, label %bb.uu

bb.ut:                                            ; preds = %bb.us
  store i32 0, ptr %i.bke, align 8, !tbaa !67
  %i.bki = getelementptr inbounds nuw i8, ptr %i.bkd, i64 12
  store i32 0, ptr %i.bki, align 4, !tbaa !69
  %i.bkj = load ptr, ptr %i.bkd, align 8, !tbaa !32
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bkj, i64 16
  %i.bkl = load ptr, ptr %i.bkk, align 8
  call void %i.bkl(ptr noundef nonnull align 8 dereferenceable(16) %i.bkd) #22, !inline_history !70
  %i.bkm = load ptr, ptr %i.bkd, align 8, !tbaa !32
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bkm, i64 24
  %i.bko = load ptr, ptr %i.bkn, align 8
  call void %i.bko(ptr noundef nonnull align 8 dereferenceable(16) %i.bkd) #22, !inline_history !70
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit575

bb.uu:                                            ; preds = %bb.us
  %i.bkp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i572 = icmp eq i8 %i.bkp, 0
  br i1 %.not.i.i.i572, label %bb.uw, label %bb.uv

bb.uv:                                            ; preds = %bb.uu
  %i.bkq = add nsw i32 %i.bkh, -1
  store i32 %i.bkq, ptr %i.bke, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i573

bb.uw:                                            ; preds = %bb.uu
  %i.bkr = atomicrmw volatile add ptr %i.bke, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i573

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i573: ; preds = %bb.uw, %bb.uv
  %.0.i.i.i.i574 = phi i32 [ %i.bkh, %bb.uv ], [ %i.bkr, %bb.uw ]
  %i.bks = icmp eq i32 %.0.i.i.i.i574, 1
  br i1 %i.bks, label %bb.ux, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit575, !prof !71

bb.ux:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i573
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bkd) #22
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit575

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit575: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit570, %bb.ut, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i573, %bb.ux
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.bkt = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bku = load ptr, ptr %i.bkt, align 8, !tbaa !66 ; 8 uses
  %.not.i.i576 = icmp eq ptr %i.bku, null
  br i1 %.not.i.i576, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit580, label %bb.uy

bb.uy:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit575
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bku, i64 8 ; 4 uses
  %i.bkw = load atomic i64, ptr %i.bkv acquire, align 8 ; 2 uses
  %i.bkx = icmp eq i64 %i.bkw, 4294967297
  %i.bky = trunc i64 %i.bkw to i32                ; 2 uses
  br i1 %i.bkx, label %bb.uz, label %bb.va

bb.uz:                                            ; preds = %bb.uy
  store i32 0, ptr %i.bkv, align 8, !tbaa !67
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bku, i64 12
  store i32 0, ptr %i.bkz, align 4, !tbaa !69
  %i.bla = load ptr, ptr %i.bku, align 8, !tbaa !32
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bla, i64 16
  %i.blc = load ptr, ptr %i.blb, align 8
  call void %i.blc(ptr noundef nonnull align 8 dereferenceable(16) %i.bku) #22, !inline_history !206
  %i.bld = load ptr, ptr %i.bku, align 8, !tbaa !32
  %i.ble = getelementptr inbounds nuw i8, ptr %i.bld, i64 24
  %i.blf = load ptr, ptr %i.ble, align 8
  call void %i.blf(ptr noundef nonnull align 8 dereferenceable(16) %i.bku) #22, !inline_history !206
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit580
end_hunk_1
begin_hunk_2_@_ZN5arrow3ipc4test14MakeDictionaryEPSt10shared_ptrINS_11RecordBatchEE:_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.5
  %i.bng = atomicrmw volatile add ptr %i.bmt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i593

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i593: ; preds = %bb.vu, %bb.vt
  %.0.i.i.i.i594 = phi i32 [ %i.bmw, %bb.vt ], [ %i.bng, %bb.vu ]
  %i.bnh = icmp eq i32 %.0.i.i.i.i594, 1
  br i1 %i.bnh, label %bb.vv, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit595, !prof !71

bb.vv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i593
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bms) #22
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit595

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit595: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit590, %bb.vr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i593, %bb.vv
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bni = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bnj = load ptr, ptr %i.bni, align 8, !tbaa !66 ; 8 uses
  %.not.i.i596 = icmp eq ptr %i.bnj, null
  br i1 %.not.i.i596, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit600, label %bb.vw

bb.vw:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit595
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bnj, i64 8 ; 4 uses
  %i.bnl = load atomic i64, ptr %i.bnk acquire, align 8 ; 2 uses
  %i.bnm = icmp eq i64 %i.bnl, 4294967297
  %i.bnn = trunc i64 %i.bnl to i32                ; 2 uses
  br i1 %i.bnm, label %bb.vx, label %bb.vy

bb.vx:                                            ; preds = %bb.vw
  store i32 0, ptr %i.bnk, align 8, !tbaa !67
  %i.bno = getelementptr inbounds nuw i8, ptr %i.bnj, i64 12
  store i32 0, ptr %i.bno, align 4, !tbaa !69
  %i.bnp = load ptr, ptr %i.bnj, align 8, !tbaa !32
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bnp, i64 16
  %i.bnr = load ptr, ptr %i.bnq, align 8
  call void %i.bnr(ptr noundef nonnull align 8 dereferenceable(16) %i.bnj) #22, !inline_history !70
  %i.bns = load ptr, ptr %i.bnj, align 8, !tbaa !32
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bns, i64 24
  %i.bnu = load ptr, ptr %i.bnt, align 8
  call void %i.bnu(ptr noundef nonnull align 8 dereferenceable(16) %i.bnj) #22, !inline_history !70
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit600

bb.vy:                                            ; preds = %bb.vw
  %i.bnv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i597 = icmp eq i8 %i.bnv, 0
  br i1 %.not.i.i.i597, label %bb.wa, label %bb.vz

bb.vz:                                            ; preds = %bb.vy
  %i.bnw = add nsw i32 %i.bnn, -1
  store i32 %i.bnw, ptr %i.bnk, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i598

bb.wa:                                            ; preds = %bb.vy
  %i.bnx = atomicrmw volatile add ptr %i.bnk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i598

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i598: ; preds = %bb.wa, %bb.vz
  %.0.i.i.i.i599 = phi i32 [ %i.bnn, %bb.vz ], [ %i.bnx, %bb.wa ]
  %i.bny = icmp eq i32 %.0.i.i.i.i599, 1
  br i1 %i.bny, label %bb.wb, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit600, !prof !71

bb.wb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i598
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bnj) #22
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit600

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit600: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit595, %bb.vx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i598, %bb.wb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bnz = load ptr, ptr %i.l, align 8, !tbaa !66 ; 8 uses
  %.not.i.i601 = icmp eq ptr %i.bnz, null
  br i1 %.not.i.i601, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit605, label %bb.wc

bb.wc:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit600
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnz, i64 8 ; 4 uses
  %i.bob = load atomic i64, ptr %i.boa acquire, align 8 ; 2 uses
  %i.boc = icmp eq i64 %i.bob, 4294967297
  %i.bod = trunc i64 %i.bob to i32                ; 2 uses
  br i1 %i.boc, label %bb.wd, label %bb.we

bb.wd:                                            ; preds = %bb.wc
  store i32 0, ptr %i.boa, align 8, !tbaa !67
  %i.boe = getelementptr inbounds nuw i8, ptr %i.bnz, i64 12
  store i32 0, ptr %i.boe, align 4, !tbaa !69
  %i.bof = load ptr, ptr %i.bnz, align 8, !tbaa !32
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bof, i64 16
  %i.boh = load ptr, ptr %i.bog, align 8
  call void %i.boh(ptr noundef nonnull align 8 dereferenceable(16) %i.bnz) #22, !inline_history !206
  %i.boi = load ptr, ptr %i.bnz, align 8, !tbaa !32
  %i.boj = getelementptr inbounds nuw i8, ptr %i.boi, i64 24
  %i.bok = load ptr, ptr %i.boj, align 8
  call void %i.bok(ptr noundef nonnull align 8 dereferenceable(16) %i.bnz) #22, !inline_history !206
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit605

bb.we:                                            ; preds = %bb.wc
  %i.bol = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i602 = icmp eq i8 %i.bol, 0
  br i1 %.not.i.i.i602, label %bb.wg, label %bb.wf

bb.wf:                                            ; preds = %bb.we
  %i.bom = add nsw i32 %i.bod, -1
  store i32 %i.bom, ptr %i.boa, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i603

bb.wg:                                            ; preds = %bb.we
  %i.bon = atomicrmw volatile add ptr %i.boa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i603

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i603: ; preds = %bb.wg, %bb.wf
  %.0.i.i.i.i604 = phi i32 [ %i.bod, %bb.wf ], [ %i.bon, %bb.wg ]
  %i.boo = icmp eq i32 %.0.i.i.i.i604, 1
  br i1 %i.boo, label %bb.wh, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit605, !prof !71

bb.wh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i603
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bnz) #22
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit605

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit605: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit600, %bb.wd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i603, %bb.wh
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bop = load ptr, ptr %3, align 8, !tbaa !925  ; 2 uses
  %.not.i.i606 = icmp eq ptr %i.bop, null
  br i1 %.not.i.i606, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.wi

bb.wi:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit605
  %i.boq = load ptr, ptr %i.h, align 8, !tbaa !907 ; 2 uses
  %i.bor = ptrtoint ptr %i.boq to i64
  %i.bos = ptrtoint ptr %i.bop to i64
  %i.bot = sub i64 %i.bor, %i.bos                 ; 2 uses
  %i.bou = ashr exact i64 %i.bot, 3
  %i.bov = sub nsw i64 0, %i.bou
  %i.bow = getelementptr inbounds [8 x i8], ptr %i.boq, i64 %i.bov
  call void @_ZdlPvm(ptr noundef %i.bow, i64 noundef %i.bot) #23
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit605, %bb.wi
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret void

bb.wj:                                            ; preds = %bb.sm, %.body168
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.sm ], [ %eh.lpad-body169, %.body168 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #22
  br label %bb.wk

bb.wk:                                            ; preds = %bb.wj, %bb.bz
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wj ], [ %i.gp, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #22
  br label %bb.wl

bb.wl:                                            ; preds = %bb.wk, %bb.by
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wk ], [ %i.go, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.wm

bb.wm:                                            ; preds = %bb.wl, %bb.bx
  %.sink = phi ptr [ %19, %bb.wl ], [ %20, %bb.bx ]
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wl ], [ %i.gn, %bb.bx ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %.sink) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #22
  br label %.body158

.body158:                                         ; preds = %bb.bw, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i156, %bb.wm
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wm ], [ %i.gm, %bb.bw ], [ %i.az, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i156 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #22
  br label %.body153

.body153:                                         ; preds = %bb.bv, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i151, %.body158
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body158 ], [ %i.gl, %bb.bv ], [ %i.at, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i151 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #22
  br label %.body149

.body149:                                         ; preds = %bb.bu, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i, %.body153
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body153 ], [ %i.gk, %bb.bu ], [ %i.an, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.wn

bb.wn:                                            ; preds = %.body149, %bb.bt
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body149 ], [ %i.gj, %bb.bt ] ; 2 uses
  %i.box = load ptr, ptr %15, align 8, !tbaa !94  ; 3 uses
  %.not.i.i.i607 = icmp eq ptr %i.box, null
  br i1 %.not.i.i.i607, label %_ZNSt6vectorIiSaIiEED2Ev.exit608, label %bb.wo

bb.wo:                                            ; preds = %bb.wn
  %i.boy = load ptr, ptr %i.ah, align 8, !tbaa !97
  %i.boz = ptrtoint ptr %i.boy to i64
  %i.bpa = ptrtoint ptr %i.box to i64
  %i.bpb = sub i64 %i.boz, %i.bpa
  call void @_ZdlPvm(ptr noundef nonnull %i.box, i64 noundef %i.bpb) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit608

_ZNSt6vectorIiSaIiEED2Ev.exit608:                 ; preds = %bb.wo, %bb.wn, %bb.bs
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gi, %bb.bs ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wn ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.bpc = load ptr, ptr %14, align 8, !tbaa !842 ; 3 uses
  %.not.i.i.i609 = icmp eq ptr %i.bpc, null
  br i1 %.not.i.i.i609, label %.body, label %bb.wp

bb.wp:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit608
  %i.bpd = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !844
  %i.bpe = ptrtoint ptr %i.bpd to i64
  %i.bpf = ptrtoint ptr %i.bpc to i64
  %i.bpg = sub i64 %i.bpe, %i.bpf
  call void @_ZdlPvm(ptr noundef nonnull %i.bpc, i64 noundef %i.bpg) #23
  br label %.body

.body:                                            ; preds = %bb.wp, %_ZNSt6vectorIiSaIiEED2Ev.exit608, %_ZNSt12_Vector_baseIaSaIaEED2Ev.exit.i
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ac, %_ZNSt12_Vector_baseIaSaIaEED2Ev.exit.i ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wp ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit608 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.bph = load ptr, ptr %13, align 8, !tbaa !94  ; 3 uses
  %.not.i.i.i612 = icmp eq ptr %i.bph, null
  br i1 %.not.i.i.i612, label %_ZNSt6vectorIiSaIiEED2Ev.exit613, label %bb.wq

bb.wq:                                            ; preds = %.body
  %i.bpi = load ptr, ptr %i.z, align 8, !tbaa !97
  %i.bpj = ptrtoint ptr %i.bpi to i64
  %i.bpk = ptrtoint ptr %i.bph to i64
  %i.bpl = sub i64 %i.bpj, %i.bpk
  call void @_ZdlPvm(ptr noundef nonnull %i.bph, i64 noundef %i.bpl) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit613

_ZNSt6vectorIiSaIiEED2Ev.exit613:                 ; preds = %bb.wq, %.body, %bb.br
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gh, %bb.br ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #22
  br label %bb.wr

bb.wr:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit613, %bb.bq
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit613 ], [ %i.gg, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #22
  br label %bb.ws

bb.ws:                                            ; preds = %bb.wr, %bb.bp
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wr ], [ %i.gf, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #22
  br label %bb.wt

bb.wt:                                            ; preds = %bb.ws, %bb.bo
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ws ], [ %i.ge, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #22
  br label %bb.wu

bb.wu:                                            ; preds = %bb.wt, %bb.bn
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wt ], [ %i.gd, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  br label %bb.wv

bb.wv:                                            ; preds = %bb.wu, %bb.bm
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wu ], [ %i.gc, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22
  br label %bb.ww

bb.ww:                                            ; preds = %bb.wv, %bb.bl
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wv ], [ %i.gb, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bpm = load ptr, ptr %3, align 8, !tbaa !925  ; 2 uses
  %.not.i.i614 = icmp eq ptr %i.bpm, null
  br i1 %.not.i.i614, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit615, label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  %i.bpn = load ptr, ptr %i.h, align 8, !tbaa !907 ; 2 uses
  %i.bpo = ptrtoint ptr %i.bpn to i64
  %i.bpp = ptrtoint ptr %i.bpm to i64
  %i.bpq = sub i64 %i.bpo, %i.bpp                 ; 2 uses
  %i.bpr = ashr exact i64 %i.bpq, 3
  %i.bps = sub nsw i64 0, %i.bpr
  %i.bpt = getelementptr inbounds [8 x i8], ptr %i.bpn, i64 %i.bps
  call void @_ZdlPvm(ptr noundef %i.bpt, i64 noundef %i.bpq) #23
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit615

_ZNSt13_Bvector_baseISaIbEED2Ev.exit615:          ; preds = %bb.wx, %bb.ww
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  resume { ptr, i32 } %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN5arrow13ArrayFromJSONERKSt10shared_ptrINS_8DataTypeEESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.5") align 8, ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #1

declare void @_ZN5arrow10dictionaryERKSt10shared_ptrINS_8DataTypeEES4_b(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.8") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow15ArrayFromVectorINS_9Int32TypeEiEEvRKSt6vectorIbSaIbEERKS2_IT0_SaIS7_EEPSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.8", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977)
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev(), !noalias !977 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66, !noalias !977 ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.a, align 8, !tbaa !79, !noalias !977
  store <2 x ptr> %i.e, ptr %3, align 16, !tbaa !79, !alias.scope !977
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow10TypeTraitsINS_9Int32TypeEE14type_singletonEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31, !noalias !977
  %.not.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3, !noalias !977
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3, !noalias !977
  br label %_ZN5arrow10TypeTraitsINS_9Int32TypeEE14type_singletonEv.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4, !noalias !977 ; 0 uses
  br label %_ZN5arrow10TypeTraitsINS_9Int32TypeEE14type_singletonEv.exit

_ZN5arrow10TypeTraitsINS_9Int32TypeEE14type_singletonEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_ZN5arrow15ArrayFromVectorINS_9Int32TypeEiEEvRKSt10shared_ptrINS_8DataTypeEERKSt6vectorIbSaIbEERKS7_IT0_SaISC_EEPS2_INS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZN5arrow10TypeTraitsINS_9Int32TypeEE14type_singletonEv.exit
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !66   ; 8 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.l, align 8, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !69
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #22, !inline_history !206
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #22, !inline_history !206
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.o, %bb.i ], [ %i.y, %bb.j ]
  %i.z = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.z, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #22
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.l:                                             ; preds = %_ZN5arrow10TypeTraitsINS_9Int32TypeEE14type_singletonEv.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow15ArrayFromVectorINS_8Int8TypeEaEEvRKSt6vectorIbSaIbEERKS2_IT0_SaIS7_EEPSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.8", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev(), !noalias !980 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66, !noalias !980 ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.a, align 8, !tbaa !79, !noalias !980
  store <2 x ptr> %i.e, ptr %3, align 16, !tbaa !79, !alias.scope !980
  %.not.i.i.i.i = icmp eq ptr %i.d, null
end_hunk_2
begin_hunk_3_@_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow14PrimitiveArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !69
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !227
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !227
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN5arrow26all_dictionary_index_typesEv() local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc4test18MakeDictionaryFlatEPSt10shared_ptrINS_11RecordBatchEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.5:
  %2 = alloca %"class.std::vector.154", align 8   ; 13 uses
  %3 = alloca %"class.std::shared_ptr.8", align 16 ; 11 uses
  %4 = alloca %"class.std::shared_ptr.5", align 8 ; 8 uses
  %5 = alloca %"class.std::shared_ptr.5", align 8 ; 7 uses
  %6 = alloca %"class.std::shared_ptr.8", align 16 ; 8 uses
  %7 = alloca %"class.std::shared_ptr.8", align 16 ; 8 uses
  %8 = alloca %"class.std::shared_ptr.8", align 16 ; 8 uses
  %9 = alloca %"class.std::shared_ptr.5", align 8 ; 8 uses
  %10 = alloca %"class.std::shared_ptr.5", align 8 ; 8 uses
  %11 = alloca %"class.std::shared_ptr.5", align 8 ; 8 uses
  %12 = alloca %"class.std::vector.142", align 8  ; 9 uses
  %13 = alloca %"class.std::vector.135", align 8  ; 9 uses
  %14 = alloca %"class.std::vector.142", align 8  ; 9 uses
  %15 = alloca %"class.std::shared_ptr.161", align 16 ; 7 uses
  %16 = alloca %"class.std::shared_ptr.161", align 16 ; 7 uses
  %17 = alloca %"class.std::shared_ptr.161", align 16 ; 7 uses
  %18 = alloca %"class.std::shared_ptr.2", align 16 ; 7 uses
  %19 = alloca %"class.std::vector", align 8      ; 8 uses
  %20 = alloca [3 x %"class.std::shared_ptr.14"], align 16 ; 19 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %22 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %23 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %25 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %26 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %28 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %29 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %30 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %31 = alloca %"class.std::vector.23", align 8   ; 12 uses
  %32 = alloca [3 x %"class.std::shared_ptr.5"], align 16 ; 16 uses
  %33 = alloca %"class.std::shared_ptr.55", align 16 ; 7 uses
  %34 = alloca %"class.std::shared_ptr.2", align 16 ; 4 uses
  %35 = alloca %"class.std::vector.23", align 8   ; 11 uses
  %36 = alloca %"class.std::shared_ptr.58", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.f, ptr %i.d, align 8, !tbaa !907
  store ptr %i.e, ptr %2, align 8
  store i32 0, ptr %i.a, align 8
  store ptr %i.e, ptr %i.b, align 8
  store i32 6, ptr %i.c, align 8
  store i64 -5, ptr %i.e, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.g = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4utf8Ev()
          to label %bb.a unwind label %bb.jj      ; 2 uses

bb.a:                                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.5
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66   ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.g, align 8, !tbaa !79
  store <2 x ptr> %i.k, ptr %3, align 16, !tbaa !79
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !3
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZN5arrow13ArrayFromJSONERKSt10shared_ptrINS_8DataTypeEESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.5") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 21, ptr nonnull @.str.35)
          to label %bb.e unwind label %bb.jk

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN5arrow13ArrayFromJSONERKSt10shared_ptrINS_8DataTypeEESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.5") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 28, ptr nonnull @.str.49)
          to label %bb.f unwind label %bb.jl

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.q = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev()
          to label %bb.g unwind label %bb.jm

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5arrow10dictionaryERKSt10shared_ptrINS_8DataTypeEES4_b(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.8") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext false)
          to label %bb.h unwind label %bb.jm

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.r = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.i unwind label %bb.jn

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5arrow10dictionaryERKSt10shared_ptrINS_8DataTypeEES4_b(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.8") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext false)
          to label %bb.j unwind label %bb.jn

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.s = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev()
          to label %bb.k unwind label %bb.jo

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5arrow10dictionaryERKSt10shared_ptrINS_8DataTypeEES4_b(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.8") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext false)
          to label %bb.l unwind label %bb.jo

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.t = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.m unwind label %bb.jp      ; 3 uses

bb.m:                                             ; preds = %bb.l
  store ptr %i.t, ptr %12, align 8, !tbaa !94
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.t, ptr noundef nonnull align 4 dereferenceable(24) @constinit.50, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.u, ptr %i.w, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.x = invoke noalias noundef nonnull dereferenceable(6) ptr @_Znwm(i64 noundef 6) #25
          to label %bb.n unwind label %_ZNSt12_Vector_baseIaSaIaEED2Ev.exit.i ; 3 uses

_ZNSt12_Vector_baseIaSaIaEED2Ev.exit.i:           ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.m
  store ptr %i.x, ptr %13, align 8, !tbaa !842
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 6 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.z, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !844
  store <6 x i8> <i8 0, i8 0, i8 2, i8 2, i8 1, i8 1>, ptr %i.x, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !845
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.ab = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.o unwind label %bb.jq      ; 3 uses

bb.o:                                             ; preds = %bb.n
  store ptr %i.ab, ptr %14, align 8, !tbaa !94
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ab, ptr noundef nonnull align 4 dereferenceable(24) @constinit.51, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !98
  invoke void @_ZN5arrow15ArrayFromVectorINS_9Int32TypeEiEEvRKSt6vectorIbSaIbEERKS2_IT0_SaIS7_EEPSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull %9)
          to label %bb.p unwind label %bb.jr

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN5arrow15ArrayFromVectorINS_8Int8TypeEaEEvRKSt6vectorIbSaIbEERKS2_IT0_SaIS7_EEPSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull %10)
          to label %bb.q unwind label %bb.jr

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN5arrow15ArrayFromVectorINS_9Int32TypeEiEEvRKSt6vectorIbSaIbEERKS2_IT0_SaIS7_EEPSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull %11)
          to label %bb.r unwind label %bb.jr

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !983)
  %i.af = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #25
          to label %.noexc77 unwind label %bb.js  ; 6 uses

.noexc77:                                         ; preds = %bb.r
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 1, ptr %i.ag, align 8, !tbaa !67, !noalias !983
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 1, ptr %i.ah, align 4, !tbaa !69, !noalias !983
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.af, align 8, !tbaa !32, !noalias !983
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  invoke void @_ZN5arrow15DictionaryArrayC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_5ArrayEES9_(ptr noundef nonnull align 8 dereferenceable(72) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.s unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i, !noalias !983

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i: ; preds = %.noexc77
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 88) #23, !noalias !983
  br label %.body78

bb.s:                                             ; preds = %.noexc77
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store ptr %i.af, ptr %i.ak, align 8, !tbaa !66, !alias.scope !983
  store ptr %i.ai, ptr %15, align 16, !tbaa !914, !alias.scope !983
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !986)
  %i.al = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #25
          to label %.noexc81 unwind label %bb.jt  ; 6 uses

.noexc81:                                         ; preds = %bb.s
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 1, ptr %i.am, align 8, !tbaa !67, !noalias !986
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 1, ptr %i.an, align 4, !tbaa !69, !noalias !986
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.al, align 8, !tbaa !32, !noalias !986
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  invoke void @_ZN5arrow15DictionaryArrayC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_5ArrayEES9_(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.t unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i80, !noalias !986

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i80: ; preds = %.noexc81
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 88) #23, !noalias !986
  br label %.body82

bb.t:                                             ; preds = %.noexc81
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  store ptr %i.al, ptr %i.aq, align 8, !tbaa !66, !alias.scope !986
  store ptr %i.ao, ptr %16, align 16, !tbaa !914, !alias.scope !986
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !989)
  %i.ar = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #25
          to label %.noexc86 unwind label %bb.ju  ; 6 uses

.noexc86:                                         ; preds = %bb.t
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 1, ptr %i.as, align 8, !tbaa !67, !noalias !989
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 1, ptr %i.at, align 4, !tbaa !69, !noalias !989
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ar, align 8, !tbaa !32, !noalias !989
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  invoke void @_ZN5arrow15DictionaryArrayC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_5ArrayEES9_(ptr noundef nonnull align 8 dereferenceable(72) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %._crit_edge.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i85, !noalias !989

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i85: ; preds = %.noexc86
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef 88) #23, !noalias !989
  br label %.body87

._crit_edge.i.i:                                  ; preds = %.noexc86
  %i.aw = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  store ptr %i.ar, ptr %i.aw, align 8, !tbaa !66, !alias.scope !989
  store ptr %i.au, ptr %17, align 16, !tbaa !914, !alias.scope !989
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.ax = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.ax, ptr %21, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ax, ptr noundef nonnull align 1 dereferenceable(5) @.str.43, i64 5, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 5, ptr %i.ay, align 8, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %21, i64 21
  store i8 0, ptr %i.az, align 1, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !66 ; 2 uses
  %i.bd = load <2 x ptr>, ptr %6, align 16, !tbaa !79
  store <2 x ptr> %i.bd, ptr %22, align 16, !tbaa !79
  %.not.i.i.i91 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i91, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i92 = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i92, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93

bb.w:                                             ; preds = %bb.u
  %i.bi = atomicrmw volatile add ptr %i.be, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93: ; preds = %._crit_edge.i.i, %bb.v, %bb.w
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow5fieldENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEbS6_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.14") align 8 %20, ptr noundef nonnull %21, ptr noundef nonnull %22, i1 noundef zeroext true, ptr noundef nonnull %23)
          to label %._crit_edge.i.i94 unwind label %bb.jv

._crit_edge.i.i94:                                ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93
  %i.bj = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.bk, ptr %24, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bk, ptr noundef nonnull align 1 dereferenceable(5) @.str.44, i64 5, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 5, ptr %i.bl, align 8, !tbaa !30
  %i.bm = getelementptr inbounds nuw i8, ptr %24, i64 21
  store i8 0, ptr %i.bm, align 1, !tbaa !31
  %i.bn = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !66 ; 2 uses
  %i.bq = load <2 x ptr>, ptr %7, align 16, !tbaa !79
  store <2 x ptr> %i.bq, ptr %25, align 16, !tbaa !79
  %.not.i.i.i98 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i98, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit100, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i.i94
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i99 = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i99, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit100

bb.z:                                             ; preds = %bb.x
  %i.bv = atomicrmw volatile add ptr %i.br, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit100

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit100: ; preds = %._crit_edge.i.i94, %bb.y, %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow5fieldENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEbS6_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.14") align 8 %i.bj, ptr noundef nonnull %24, ptr noundef nonnull %25, i1 noundef zeroext true, ptr noundef nonnull %26)
          to label %._crit_edge.i.i101 unwind label %bb.jw

._crit_edge.i.i101:                               ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit100
  %i.bw = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.bx, ptr %27, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bx, ptr noundef nonnull align 1 dereferenceable(5) @.str.45, i64 5, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 5, ptr %i.by, align 8, !tbaa !30
  %i.bz = getelementptr inbounds nuw i8, ptr %27, i64 21
  store i8 0, ptr %i.bz, align 1, !tbaa !31
  %i.ca = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !66 ; 2 uses
  %i.cd = load <2 x ptr>, ptr %8, align 16, !tbaa !79
  store <2 x ptr> %i.cd, ptr %28, align 16, !tbaa !79
  %.not.i.i.i105 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i105, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit107, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i.i101
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 3 uses
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i106 = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i.i106, label %bb.ac, label %bb.ab

end_hunk_3
begin_hunk_4_@_ZN5arrow3ipc4test18MakeDictionaryFlatEPSt10shared_ptrINS_11RecordBatchEE:_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.5
  %i.vt = load ptr, ptr %i.vk, align 8, !tbaa !32
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 24
  %i.vv = load ptr, ptr %i.vu, align 8
  call void %i.vv(ptr noundef nonnull align 8 dereferenceable(16) %i.vk) #22, !inline_history !286
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit218

bb.gh:                                            ; preds = %bb.gf
  %i.vw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i215 = icmp eq i8 %i.vw, 0
  br i1 %.not.i.i.i215, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.vx = add nsw i32 %i.vo, -1
  store i32 %i.vx, ptr %i.vl, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i216

bb.gj:                                            ; preds = %bb.gh
  %i.vy = atomicrmw volatile add ptr %i.vl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i216

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i216: ; preds = %bb.gj, %bb.gi
  %.0.i.i.i.i217 = phi i32 [ %i.vo, %bb.gi ], [ %i.vy, %bb.gj ]
  %i.vz = icmp eq i32 %.0.i.i.i.i217, 1
  br i1 %i.vz, label %bb.gk, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit218, !prof !71

bb.gk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i216
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vk) #22
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit218

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit218: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit213, %bb.gg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i216, %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.wa = load ptr, ptr %i.aw, align 8, !tbaa !66 ; 8 uses
  %.not.i.i219 = icmp eq ptr %i.wa, null
  br i1 %.not.i.i219, label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.gl

bb.gl:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit218
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 8 ; 4 uses
  %i.wc = load atomic i64, ptr %i.wb acquire, align 8 ; 2 uses
  %i.wd = icmp eq i64 %i.wc, 4294967297
  %i.we = trunc i64 %i.wc to i32                  ; 2 uses
  br i1 %i.wd, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  store i32 0, ptr %i.wb, align 8, !tbaa !67
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wa, i64 12
  store i32 0, ptr %i.wf, align 4, !tbaa !69
  %i.wg = load ptr, ptr %i.wa, align 8, !tbaa !32
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 16
  %i.wi = load ptr, ptr %i.wh, align 8
  call void %i.wi(ptr noundef nonnull align 8 dereferenceable(16) %i.wa) #22, !inline_history !955
  %i.wj = load ptr, ptr %i.wa, align 8, !tbaa !32
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 24
  %i.wl = load ptr, ptr %i.wk, align 8
  call void %i.wl(ptr noundef nonnull align 8 dereferenceable(16) %i.wa) #22, !inline_history !955
  br label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.gn:                                            ; preds = %bb.gl
  %i.wm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i220 = icmp eq i8 %i.wm, 0
  br i1 %.not.i.i.i220, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.wn = add nsw i32 %i.we, -1
  store i32 %i.wn, ptr %i.wb, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i221

bb.gp:                                            ; preds = %bb.gn
  %i.wo = atomicrmw volatile add ptr %i.wb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i221

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i221: ; preds = %bb.gp, %bb.go
  %.0.i.i.i.i222 = phi i32 [ %i.we, %bb.go ], [ %i.wo, %bb.gp ]
  %i.wp = icmp eq i32 %.0.i.i.i.i222, 1
  br i1 %i.wp, label %bb.gq, label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.gq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i221
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wa) #22
  br label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit218, %bb.gm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i221, %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.wq = load ptr, ptr %i.aq, align 8, !tbaa !66 ; 8 uses
  %.not.i.i223 = icmp eq ptr %i.wq, null
  br i1 %.not.i.i223, label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit227, label %bb.gr

bb.gr:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 8 ; 4 uses
  %i.ws = load atomic i64, ptr %i.wr acquire, align 8 ; 2 uses
  %i.wt = icmp eq i64 %i.ws, 4294967297
  %i.wu = trunc i64 %i.ws to i32                  ; 2 uses
  br i1 %i.wt, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  store i32 0, ptr %i.wr, align 8, !tbaa !67
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wq, i64 12
  store i32 0, ptr %i.wv, align 4, !tbaa !69
  %i.ww = load ptr, ptr %i.wq, align 8, !tbaa !32
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 16
  %i.wy = load ptr, ptr %i.wx, align 8
  call void %i.wy(ptr noundef nonnull align 8 dereferenceable(16) %i.wq) #22, !inline_history !955
  %i.wz = load ptr, ptr %i.wq, align 8, !tbaa !32
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 24
  %i.xb = load ptr, ptr %i.xa, align 8
  call void %i.xb(ptr noundef nonnull align 8 dereferenceable(16) %i.wq) #22, !inline_history !955
  br label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit227

bb.gt:                                            ; preds = %bb.gr
  %i.xc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i224 = icmp eq i8 %i.xc, 0
  br i1 %.not.i.i.i224, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.xd = add nsw i32 %i.wu, -1
  store i32 %i.xd, ptr %i.wr, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i225

bb.gv:                                            ; preds = %bb.gt
  %i.xe = atomicrmw volatile add ptr %i.wr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i225

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i225: ; preds = %bb.gv, %bb.gu
  %.0.i.i.i.i226 = phi i32 [ %i.wu, %bb.gu ], [ %i.xe, %bb.gv ]
  %i.xf = icmp eq i32 %.0.i.i.i.i226, 1
  br i1 %i.xf, label %bb.gw, label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit227, !prof !71

bb.gw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i225
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wq) #22
  br label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit227

_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit227: ; preds = %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.gs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i225, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.xg = load ptr, ptr %i.ak, align 8, !tbaa !66 ; 8 uses
  %.not.i.i228 = icmp eq ptr %i.xg, null
  br i1 %.not.i.i228, label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit232, label %bb.gx

bb.gx:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit227
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 8 ; 4 uses
  %i.xi = load atomic i64, ptr %i.xh acquire, align 8 ; 2 uses
  %i.xj = icmp eq i64 %i.xi, 4294967297
  %i.xk = trunc i64 %i.xi to i32                  ; 2 uses
  br i1 %i.xj, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  store i32 0, ptr %i.xh, align 8, !tbaa !67
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xg, i64 12
  store i32 0, ptr %i.xl, align 4, !tbaa !69
  %i.xm = load ptr, ptr %i.xg, align 8, !tbaa !32
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 16
  %i.xo = load ptr, ptr %i.xn, align 8
  call void %i.xo(ptr noundef nonnull align 8 dereferenceable(16) %i.xg) #22, !inline_history !955
  %i.xp = load ptr, ptr %i.xg, align 8, !tbaa !32
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 24
  %i.xr = load ptr, ptr %i.xq, align 8
  call void %i.xr(ptr noundef nonnull align 8 dereferenceable(16) %i.xg) #22, !inline_history !955
  br label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit232

bb.gz:                                            ; preds = %bb.gx
  %i.xs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i229 = icmp eq i8 %i.xs, 0
  br i1 %.not.i.i.i229, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.xt = add nsw i32 %i.xk, -1
  store i32 %i.xt, ptr %i.xh, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i230

bb.hb:                                            ; preds = %bb.gz
  %i.xu = atomicrmw volatile add ptr %i.xh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i230

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i230: ; preds = %bb.hb, %bb.ha
  %.0.i.i.i.i231 = phi i32 [ %i.xk, %bb.ha ], [ %i.xu, %bb.hb ]
  %i.xv = icmp eq i32 %.0.i.i.i.i231, 1
  br i1 %i.xv, label %bb.hc, label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit232, !prof !71

bb.hc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i230
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xg) #22
  br label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit232

_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit232: ; preds = %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit227, %bb.gy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i230, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.xw = load ptr, ptr %14, align 8, !tbaa !94   ; 3 uses
  %.not.i.i.i233 = icmp eq ptr %i.xw, null
  br i1 %.not.i.i.i233, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.hd

bb.hd:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit232
  %i.xx = load ptr, ptr %i.ad, align 8, !tbaa !97
  %i.xy = ptrtoint ptr %i.xx to i64
  %i.xz = ptrtoint ptr %i.xw to i64
  %i.ya = sub i64 %i.xy, %i.xz
  call void @_ZdlPvm(ptr noundef nonnull %i.xw, i64 noundef %i.ya) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit232, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.yb = load ptr, ptr %13, align 8, !tbaa !842  ; 3 uses
  %.not.i.i.i234 = icmp eq ptr %i.yb, null
  br i1 %.not.i.i.i234, label %_ZNSt6vectorIaSaIaEED2Ev.exit, label %bb.he

bb.he:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.yc = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !844
  %i.yd = ptrtoint ptr %i.yc to i64
  %i.ye = ptrtoint ptr %i.yb to i64
  %i.yf = sub i64 %i.yd, %i.ye
  call void @_ZdlPvm(ptr noundef nonnull %i.yb, i64 noundef %i.yf) #23
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

_ZNSt6vectorIaSaIaEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.yg = load ptr, ptr %12, align 8, !tbaa !94   ; 3 uses
  %.not.i.i.i236 = icmp eq ptr %i.yg, null
  br i1 %.not.i.i.i236, label %_ZNSt6vectorIiSaIiEED2Ev.exit237, label %bb.hf

bb.hf:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit
  %i.yh = load ptr, ptr %i.v, align 8, !tbaa !97
  %i.yi = ptrtoint ptr %i.yh to i64
  %i.yj = ptrtoint ptr %i.yg to i64
  %i.yk = sub i64 %i.yi, %i.yj
  call void @_ZdlPvm(ptr noundef nonnull %i.yg, i64 noundef %i.yk) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit237

_ZNSt6vectorIiSaIiEED2Ev.exit237:                 ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit, %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.yl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !66 ; 8 uses
  %.not.i.i238 = icmp eq ptr %i.ym, null
  br i1 %.not.i.i238, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242, label %bb.hg

bb.hg:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit237
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 8 ; 4 uses
  %i.yo = load atomic i64, ptr %i.yn acquire, align 8 ; 2 uses
  %i.yp = icmp eq i64 %i.yo, 4294967297
  %i.yq = trunc i64 %i.yo to i32                  ; 2 uses
  br i1 %i.yp, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  store i32 0, ptr %i.yn, align 8, !tbaa !67
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ym, i64 12
  store i32 0, ptr %i.yr, align 4, !tbaa !69
  %i.ys = load ptr, ptr %i.ym, align 8, !tbaa !32
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 16
  %i.yu = load ptr, ptr %i.yt, align 8
  call void %i.yu(ptr noundef nonnull align 8 dereferenceable(16) %i.ym) #22, !inline_history !70
  %i.yv = load ptr, ptr %i.ym, align 8, !tbaa !32
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 24
  %i.yx = load ptr, ptr %i.yw, align 8
  call void %i.yx(ptr noundef nonnull align 8 dereferenceable(16) %i.ym) #22, !inline_history !70
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242

bb.hi:                                            ; preds = %bb.hg
  %i.yy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i239 = icmp eq i8 %i.yy, 0
  br i1 %.not.i.i.i239, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.yz = add nsw i32 %i.yq, -1
  store i32 %i.yz, ptr %i.yn, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i240

bb.hk:                                            ; preds = %bb.hi
  %i.za = atomicrmw volatile add ptr %i.yn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i240

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i240: ; preds = %bb.hk, %bb.hj
  %.0.i.i.i.i241 = phi i32 [ %i.yq, %bb.hj ], [ %i.za, %bb.hk ]
  %i.zb = icmp eq i32 %.0.i.i.i.i241, 1
  br i1 %i.zb, label %bb.hl, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242, !prof !71

bb.hl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i240
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ym) #22
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit237, %bb.hh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i240, %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.zc = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !66 ; 8 uses
  %.not.i.i243 = icmp eq ptr %i.zd, null
  br i1 %.not.i.i243, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247, label %bb.hm

bb.hm:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 8 ; 4 uses
  %i.zf = load atomic i64, ptr %i.ze acquire, align 8 ; 2 uses
  %i.zg = icmp eq i64 %i.zf, 4294967297
  %i.zh = trunc i64 %i.zf to i32                  ; 2 uses
  br i1 %i.zg, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  store i32 0, ptr %i.ze, align 8, !tbaa !67
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zd, i64 12
  store i32 0, ptr %i.zi, align 4, !tbaa !69
  %i.zj = load ptr, ptr %i.zd, align 8, !tbaa !32
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 16
  %i.zl = load ptr, ptr %i.zk, align 8
  call void %i.zl(ptr noundef nonnull align 8 dereferenceable(16) %i.zd) #22, !inline_history !70
  %i.zm = load ptr, ptr %i.zd, align 8, !tbaa !32
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 24
  %i.zo = load ptr, ptr %i.zn, align 8
  call void %i.zo(ptr noundef nonnull align 8 dereferenceable(16) %i.zd) #22, !inline_history !70
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247

bb.ho:                                            ; preds = %bb.hm
  %i.zp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i244 = icmp eq i8 %i.zp, 0
  br i1 %.not.i.i.i244, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.zq = add nsw i32 %i.zh, -1
  store i32 %i.zq, ptr %i.ze, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i245

bb.hq:                                            ; preds = %bb.ho
  %i.zr = atomicrmw volatile add ptr %i.ze, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i245

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i245: ; preds = %bb.hq, %bb.hp
  %.0.i.i.i.i246 = phi i32 [ %i.zh, %bb.hp ], [ %i.zr, %bb.hq ]
  %i.zs = icmp eq i32 %.0.i.i.i.i246, 1
  br i1 %i.zs, label %bb.hr, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247, !prof !71

bb.hr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i245
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.zd) #22
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242, %bb.hn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i245, %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.zt = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !66 ; 8 uses
  %.not.i.i248 = icmp eq ptr %i.zu, null
  br i1 %.not.i.i248, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit252, label %bb.hs

bb.hs:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 8 ; 4 uses
  %i.zw = load atomic i64, ptr %i.zv acquire, align 8 ; 2 uses
  %i.zx = icmp eq i64 %i.zw, 4294967297
  %i.zy = trunc i64 %i.zw to i32                  ; 2 uses
  br i1 %i.zx, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  store i32 0, ptr %i.zv, align 8, !tbaa !67
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zu, i64 12
  store i32 0, ptr %i.zz, align 4, !tbaa !69
  %i.aaa = load ptr, ptr %i.zu, align 8, !tbaa !32
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 16
  %i.aac = load ptr, ptr %i.aab, align 8
  call void %i.aac(ptr noundef nonnull align 8 dereferenceable(16) %i.zu) #22, !inline_history !70
  %i.aad = load ptr, ptr %i.zu, align 8, !tbaa !32
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 24
  %i.aaf = load ptr, ptr %i.aae, align 8
  call void %i.aaf(ptr noundef nonnull align 8 dereferenceable(16) %i.zu) #22, !inline_history !70
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit252

bb.hu:                                            ; preds = %bb.hs
  %i.aag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i249 = icmp eq i8 %i.aag, 0
  br i1 %.not.i.i.i249, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.aah = add nsw i32 %i.zy, -1
  store i32 %i.aah, ptr %i.zv, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i250

bb.hw:                                            ; preds = %bb.hu
  %i.aai = atomicrmw volatile add ptr %i.zv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i250

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i250: ; preds = %bb.hw, %bb.hv
  %.0.i.i.i.i251 = phi i32 [ %i.zy, %bb.hv ], [ %i.aai, %bb.hw ]
  %i.aaj = icmp eq i32 %.0.i.i.i.i251, 1
  br i1 %i.aaj, label %bb.hx, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit252, !prof !71

bb.hx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i250
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.zu) #22
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit252

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit252: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247, %bb.ht, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i250, %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.aak = load ptr, ptr %i.cb, align 8, !tbaa !66 ; 8 uses
  %.not.i.i253 = icmp eq ptr %i.aak, null
  br i1 %.not.i.i253, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit257, label %bb.hy

bb.hy:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit252
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 8 ; 4 uses
  %i.aam = load atomic i64, ptr %i.aal acquire, align 8 ; 2 uses
  %i.aan = icmp eq i64 %i.aam, 4294967297
  %i.aao = trunc i64 %i.aam to i32                ; 2 uses
  br i1 %i.aan, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  store i32 0, ptr %i.aal, align 8, !tbaa !67
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aak, i64 12
  store i32 0, ptr %i.aap, align 4, !tbaa !69
  %i.aaq = load ptr, ptr %i.aak, align 8, !tbaa !32
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 16
  %i.aas = load ptr, ptr %i.aar, align 8
  call void %i.aas(ptr noundef nonnull align 8 dereferenceable(16) %i.aak) #22, !inline_history !206
  %i.aat = load ptr, ptr %i.aak, align 8, !tbaa !32
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 24
  %i.aav = load ptr, ptr %i.aau, align 8
  call void %i.aav(ptr noundef nonnull align 8 dereferenceable(16) %i.aak) #22, !inline_history !206
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit257

end_hunk_4
begin_hunk_5_@_ZN5arrow3ipc4test18MakeDictionaryFlatEPSt10shared_ptrINS_11RecordBatchEE:_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.5
bb.jr:                                            ; preds = %bb.q, %bb.p, %bb.o
  %i.aeu = landingpad { ptr, i32 }
          cleanup
  br label %bb.kg

bb.js:                                            ; preds = %bb.r
  %i.aev = landingpad { ptr, i32 }
          cleanup
  br label %.body78

bb.jt:                                            ; preds = %bb.s
  %i.aew = landingpad { ptr, i32 }
          cleanup
  br label %.body82

bb.ju:                                            ; preds = %bb.t
  %i.aex = landingpad { ptr, i32 }
          cleanup
  br label %.body87

bb.jv:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93
  %i.aey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289

bb.jw:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit100
  %i.aez = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286

bb.jx:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit107
  %i.afa = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit320

bb.jy:                                            ; preds = %bb.ad
  %i.afb = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit320.loopexit

bb.jz:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2
  %i.afc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %30) #22
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %19) #22
  br label %.loopexit320.loopexit

.loopexit320.loopexit:                            ; preds = %bb.jz, %bb.jy
  %.pn = phi { ptr, i32 } [ %i.afc, %bb.jz ], [ %i.afb, %bb.jy ]
  %i.afd = getelementptr inbounds nuw i8, ptr %20, i64 32
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.afd) #22
  %i.afe = getelementptr inbounds nuw i8, ptr %20, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.afe) #22
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %20) #22
  br label %.loopexit320

.loopexit320:                                     ; preds = %.loopexit320.loopexit, %bb.jx
  %i.aff = phi i1 [ false, %bb.jx ], [ true, %.loopexit320.loopexit ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.afa, %bb.jx ], [ %.pn, %.loopexit320.loopexit ] ; 2 uses
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %29) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %28) #22
  %i.afg = load ptr, ptr %27, align 8, !tbaa !25  ; 2 uses
  %i.afh = icmp eq ptr %i.afg, %i.bx
  br i1 %i.afh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284: ; preds = %.loopexit320
  %i.afi = load i64, ptr %i.bx, align 8, !tbaa !31
  %i.afj = add i64 %i.afi, 1
  call void @_ZdlPvm(ptr noundef %i.afg, i64 noundef %i.afj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286: ; preds = %.loopexit320, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284, %bb.jw
  %.045 = phi ptr [ %i.bj, %bb.jw ], [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284 ], [ %i.bw, %.loopexit320 ] ; 2 uses
  %.241 = phi i1 [ false, %bb.jw ], [ %i.aff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284 ], [ %i.aff, %.loopexit320 ] ; 2 uses
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aez, %bb.jw ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284 ], [ %.pn.pn, %.loopexit320 ] ; 2 uses
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %26) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %25) #22
  %i.afk = load ptr, ptr %24, align 8, !tbaa !25  ; 2 uses
  %i.afl = icmp eq ptr %i.afk, %i.bk
  br i1 %i.afl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286
  %i.afm = load i64, ptr %i.bk, align 8, !tbaa !31
  %i.afn = add i64 %i.afm, 1
  call void @_ZdlPvm(ptr noundef %i.afk, i64 noundef %i.afn) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287, %bb.jv
  %.247 = phi ptr [ %20, %bb.jv ], [ %.045, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287 ], [ %.045, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286 ] ; 2 uses
  %.443 = phi i1 [ false, %bb.jv ], [ %.241, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287 ], [ %.241, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286 ]
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aey, %bb.jv ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286 ]
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %23) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #22
  %i.afo = load ptr, ptr %21, align 8, !tbaa !25  ; 2 uses
  %i.afp = icmp eq ptr %i.afo, %i.ax
  br i1 %i.afp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289
  %i.afq = load i64, ptr %i.ax, align 8, !tbaa !31
  %i.afr = add i64 %i.afq, 1
  call void @_ZdlPvm(ptr noundef %i.afo, i64 noundef %i.afr) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290
  %i.afs = icmp eq ptr %20, %.247
  %or.cond = select i1 %.443, i1 true, i1 %i.afs
  br i1 %or.cond, label %.loopexit319, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, %.preheader
  %i.aft = phi ptr [ %i.afu, %.preheader ], [ %.247, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292 ]
  %i.afu = getelementptr inbounds i8, ptr %i.aft, i64 -16 ; 3 uses
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.afu) #22
  %i.afv = icmp eq ptr %i.afu, %20
  br i1 %i.afv, label %.loopexit319, label %.preheader

.loopexit319:                                     ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.kf

bb.ka:                                            ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2INS0_15DictionaryArrayEvEERKS_IT_E.exit158
  %i.afw = landingpad { ptr, i32 }
          cleanup
  %i.afx = getelementptr inbounds nuw i8, ptr %32, i64 32
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.afx) #22
  %i.afy = getelementptr inbounds nuw i8, ptr %32, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.afy) #22
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %32) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %bb.ke

bb.kb:                                            ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.afz = landingpad { ptr, i32 }
          cleanup
  br label %bb.kd

bb.kc:                                            ; preds = %.loopexit
  %i.aga = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %36) #22
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %35) #22
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %bb.kb
  %.pn56 = phi { ptr, i32 } [ %i.aga, %bb.kc ], [ %i.afz, %bb.kb ]
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %34) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %31) #22
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %bb.ka
  %.pn56.pn = phi { ptr, i32 } [ %.pn56, %bb.kd ], [ %i.afw, %bb.ka ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #22
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %.loopexit319
  %.pn56.pn.pn = phi { ptr, i32 } [ %.pn56.pn, %bb.ke ], [ %.pn.pn.pn.pn.pn.pn, %.loopexit319 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #22
  br label %.body87

.body87:                                          ; preds = %bb.ju, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i85, %bb.kf
  %.pn56.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn, %bb.kf ], [ %i.aex, %bb.ju ], [ %i.av, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #22
  br label %.body82

.body82:                                          ; preds = %bb.jt, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i80, %.body87
  %.pn56.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn, %.body87 ], [ %i.aew, %bb.jt ], [ %i.ap, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i80 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #22
  br label %.body78

.body78:                                          ; preds = %bb.js, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i, %.body82
  %.pn56.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn.pn, %.body82 ], [ %i.aev, %bb.js ], [ %i.aj, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.kg

bb.kg:                                            ; preds = %.body78, %bb.jr
  %.pn56.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn.pn.pn, %.body78 ], [ %i.aeu, %bb.jr ] ; 2 uses
  %i.agb = load ptr, ptr %14, align 8, !tbaa !94  ; 3 uses
  %.not.i.i.i293 = icmp eq ptr %i.agb, null
  br i1 %.not.i.i.i293, label %_ZNSt6vectorIiSaIiEED2Ev.exit294, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.agc = load ptr, ptr %i.ad, align 8, !tbaa !97
  %i.agd = ptrtoint ptr %i.agc to i64
  %i.age = ptrtoint ptr %i.agb to i64
  %i.agf = sub i64 %i.agd, %i.age
  call void @_ZdlPvm(ptr noundef nonnull %i.agb, i64 noundef %i.agf) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit294

_ZNSt6vectorIiSaIiEED2Ev.exit294:                 ; preds = %bb.kh, %bb.kg, %bb.jq
  %.pn56.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aet, %bb.jq ], [ %.pn56.pn.pn.pn.pn.pn.pn, %bb.kg ], [ %.pn56.pn.pn.pn.pn.pn.pn, %bb.kh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.agg = load ptr, ptr %13, align 8, !tbaa !842 ; 3 uses
  %.not.i.i.i295 = icmp eq ptr %i.agg, null
  br i1 %.not.i.i.i295, label %.body, label %bb.ki

bb.ki:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit294
  %i.agh = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !844
  %i.agi = ptrtoint ptr %i.agh to i64
  %i.agj = ptrtoint ptr %i.agg to i64
  %i.agk = sub i64 %i.agi, %i.agj
  call void @_ZdlPvm(ptr noundef nonnull %i.agg, i64 noundef %i.agk) #23
  br label %.body

.body:                                            ; preds = %bb.ki, %_ZNSt6vectorIiSaIiEED2Ev.exit294, %_ZNSt12_Vector_baseIaSaIaEED2Ev.exit.i
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.y, %_ZNSt12_Vector_baseIaSaIaEED2Ev.exit.i ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn, %bb.ki ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit294 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.agl = load ptr, ptr %12, align 8, !tbaa !94  ; 3 uses
  %.not.i.i.i298 = icmp eq ptr %i.agl, null
  br i1 %.not.i.i.i298, label %_ZNSt6vectorIiSaIiEED2Ev.exit299, label %bb.kj

bb.kj:                                            ; preds = %.body
  %i.agm = load ptr, ptr %i.v, align 8, !tbaa !97
  %i.agn = ptrtoint ptr %i.agm to i64
  %i.ago = ptrtoint ptr %i.agl to i64
  %i.agp = sub i64 %i.agn, %i.ago
  call void @_ZdlPvm(ptr noundef nonnull %i.agl, i64 noundef %i.agp) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit299

_ZNSt6vectorIiSaIiEED2Ev.exit299:                 ; preds = %bb.kj, %.body, %bb.jp
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aes, %bb.jp ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn, %bb.kj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #22
  br label %bb.kk

bb.kk:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit299, %bb.jo
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit299 ], [ %i.aer, %bb.jo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #22
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kk, %bb.jn
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.kk ], [ %i.aeq, %bb.jn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #22
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.jm
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.kl ], [ %i.aep, %bb.jm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  br label %bb.kn

bb.kn:                                            ; preds = %bb.km, %bb.jl
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.km ], [ %i.aeo, %bb.jl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %bb.jk
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.kn ], [ %i.aen, %bb.jk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #22
  br label %bb.kp

bb.kp:                                            ; preds = %bb.ko, %bb.jj
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ko ], [ %i.aem, %bb.jj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.agq = load ptr, ptr %2, align 8, !tbaa !925  ; 2 uses
  %.not.i.i300 = icmp eq ptr %i.agq, null
  br i1 %.not.i.i300, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit301, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.agr = load ptr, ptr %i.d, align 8, !tbaa !907 ; 2 uses
  %i.ags = ptrtoint ptr %i.agr to i64
  %i.agt = ptrtoint ptr %i.agq to i64
  %i.agu = sub i64 %i.ags, %i.agt                 ; 2 uses
  %i.agv = ashr exact i64 %i.agu, 3
  %i.agw = sub nsw i64 0, %i.agv
  %i.agx = getelementptr inbounds [8 x i8], ptr %i.agr, i64 %i.agw
  call void @_ZdlPvm(ptr noundef %i.agx, i64 noundef %i.agu) #23
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit301

_ZNSt13_Bvector_baseISaIbEED2Ev.exit301:          ; preds = %bb.kq, %bb.kp
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc4test20MakeNestedDictionaryEPSt10shared_ptrINS_11RecordBatchEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.5", align 8 ; 10 uses
  %3 = alloca %"class.std::shared_ptr.5", align 8 ; 8 uses
  %4 = alloca %"class.arrow::Result.127", align 8 ; 13 uses
  %5 = alloca %"class.std::shared_ptr.8", align 8 ; 7 uses
  %6 = alloca %"class.std::shared_ptr.5", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.5", align 16 ; 7 uses
  %8 = alloca %"class.arrow::Result.176", align 8 ; 13 uses
  %9 = alloca %"class.std::shared_ptr.5", align 8 ; 7 uses
  %10 = alloca %"class.std::shared_ptr.49", align 8 ; 4 uses
  %11 = alloca %"class.std::shared_ptr.164", align 8 ; 6 uses
  %12 = alloca %"class.arrow::Result.127", align 8 ; 13 uses
  %13 = alloca %"class.std::shared_ptr.8", align 8 ; 7 uses
  %14 = alloca %"class.std::shared_ptr.5", align 8 ; 7 uses
  %15 = alloca %"class.std::shared_ptr.5", align 8 ; 7 uses
  %16 = alloca %"class.std::shared_ptr.5", align 16 ; 8 uses
  %17 = alloca %"class.arrow::Result.127", align 8 ; 13 uses
  %18 = alloca %"class.std::shared_ptr.8", align 8 ; 7 uses
  %19 = alloca %"class.std::shared_ptr.5", align 8 ; 7 uses
  %20 = alloca %"class.std::shared_ptr.5", align 16 ; 10 uses
  %21 = alloca %"class.arrow::Result.127", align 8 ; 13 uses
  %22 = alloca %"class.std::shared_ptr.8", align 8 ; 7 uses
  %23 = alloca %"class.std::shared_ptr.5", align 8 ; 7 uses
  %24 = alloca %"class.std::shared_ptr.5", align 8 ; 8 uses
  %25 = alloca %"class.arrow::Result.180", align 8 ; 13 uses
  %26 = alloca %"class.std::vector.23", align 8   ; 11 uses
  %27 = alloca [2 x %"class.std::shared_ptr.5"], align 16 ; 13 uses
  %28 = alloca %"class.std::vector", align 8      ; 11 uses
  %29 = alloca [2 x %"class.std::shared_ptr.14"], align 16 ; 15 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %31 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %32 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %34 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %35 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %36 = alloca %"class.std::shared_ptr.49", align 8 ; 4 uses
  %37 = alloca %"class.std::shared_ptr.20", align 16 ; 8 uses
  %38 = alloca %"class.arrow::Result.176", align 8 ; 13 uses
  %39 = alloca %"class.std::shared_ptr.5", align 8 ; 7 uses
  %40 = alloca %"class.std::shared_ptr.49", align 8 ; 4 uses
  %41 = alloca %"class.std::shared_ptr.164", align 8 ; 6 uses
  %42 = alloca %"class.arrow::Result.127", align 8 ; 13 uses
  %43 = alloca %"class.std::shared_ptr.8", align 8 ; 7 uses
  %44 = alloca %"class.std::shared_ptr.5", align 8 ; 7 uses
  %45 = alloca %"class.std::shared_ptr.5", align 8 ; 7 uses
  %46 = alloca %"class.std::shared_ptr.5", align 8 ; 8 uses
  %47 = alloca %"class.arrow::Result.180", align 8 ; 13 uses
  %48 = alloca %"class.std::vector.23", align 8   ; 11 uses
  %49 = alloca [2 x %"class.std::shared_ptr.5"], align 16 ; 13 uses
  %50 = alloca %"class.std::vector", align 8      ; 11 uses
  %51 = alloca [2 x %"class.std::shared_ptr.14"], align 16 ; 15 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %53 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %54 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %56 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %57 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %58 = alloca %"class.std::shared_ptr.49", align 8 ; 4 uses
  %59 = alloca %"class.std::shared_ptr.20", align 8 ; 6 uses
  %60 = alloca %"class.arrow::Result.127", align 8 ; 13 uses
  %61 = alloca %"class.std::shared_ptr.8", align 8 ; 7 uses
  %62 = alloca %"class.std::shared_ptr.5", align 8 ; 7 uses
  %63 = alloca %"class.std::shared_ptr.5", align 8 ; 7 uses
  %64 = alloca %"class.std::shared_ptr.5", align 16 ; 8 uses
  %65 = alloca %"class.std::shared_ptr.2", align 16 ; 7 uses
  %66 = alloca %"class.std::vector", align 8      ; 8 uses
  %67 = alloca [3 x %"class.std::shared_ptr.14"], align 16 ; 19 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %69 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %70 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %72 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %73 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %75 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %76 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %77 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %78 = alloca %"class.std::shared_ptr.55", align 16 ; 7 uses
  %79 = alloca %"class.std::shared_ptr.2", align 16 ; 4 uses
  %80 = alloca %"class.std::vector.23", align 8   ; 8 uses
  %81 = alloca [3 x %"class.std::shared_ptr.5"], align 16 ; 16 uses
  %82 = alloca %"class.std::shared_ptr.58", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4utf8Ev()
  call void @_ZN5arrow13ArrayFromJSONERKSt10shared_ptrINS_8DataTypeEESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.5") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 21, ptr nonnull @.str.35)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.b = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int64Ev()
          to label %bb.b unwind label %bb.v

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5arrow13ArrayFromJSONERKSt10shared_ptrINS_8DataTypeEESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.5") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 23, ptr nonnull @.str.52)
          to label %bb.c unwind label %bb.v

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.c = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.d unwind label %bb.w

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %2, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !99
  invoke void @_ZN5arrow10dictionaryERKSt10shared_ptrINS_8DataTypeEES4_b(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.8") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.w

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.g = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.f unwind label %bb.x

bb.f:                                             ; preds = %bb.e
end_hunk_5
