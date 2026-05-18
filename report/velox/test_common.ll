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
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !844
  store <6 x i8> <i8 0, i8 0, i8 2, i8 2, i8 1, i8 1>, ptr %i.ab, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !845
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.ag = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.o unwind label %bb.bs      ; 3 uses

bb.o:                                             ; preds = %bb.n
  store ptr %i.ag, ptr %15, align 8, !tbaa !94
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ag, ptr noundef nonnull align 4 dereferenceable(24) @constinit.51, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !98
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
  %i.ak = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #25
          to label %.noexc148 unwind label %bb.bu ; 6 uses

.noexc148:                                        ; preds = %bb.r
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 1, ptr %i.al, align 8, !tbaa !67, !noalias !911
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 1, ptr %i.am, align 4, !tbaa !69, !noalias !911
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ak, align 8, !tbaa !32, !noalias !911
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  invoke void @_ZN5arrow15DictionaryArrayC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_5ArrayEES9_(ptr noundef nonnull align 8 dereferenceable(72) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.s unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i, !noalias !911

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i: ; preds = %.noexc148
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 88) #23, !noalias !911
  br label %.body149

bb.s:                                             ; preds = %.noexc148
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  store ptr %i.ak, ptr %i.ap, align 8, !tbaa !66, !alias.scope !911
  store ptr %i.an, ptr %16, align 16, !tbaa !914, !alias.scope !911
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %i.aq = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #25
          to label %.noexc152 unwind label %bb.bv ; 6 uses

.noexc152:                                        ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 1, ptr %i.ar, align 8, !tbaa !67, !noalias !916
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 1, ptr %i.as, align 4, !tbaa !69, !noalias !916
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.aq, align 8, !tbaa !32, !noalias !916
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  invoke void @_ZN5arrow15DictionaryArrayC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_5ArrayEES9_(ptr noundef nonnull align 8 dereferenceable(72) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.t unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i151, !noalias !916

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i151: ; preds = %.noexc152
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 88) #23, !noalias !916
  br label %.body153

bb.t:                                             ; preds = %.noexc152
  %i.av = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  store ptr %i.aq, ptr %i.av, align 8, !tbaa !66, !alias.scope !916
  store ptr %i.at, ptr %17, align 16, !tbaa !914, !alias.scope !916
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !919)
  %i.aw = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #25
          to label %.noexc157 unwind label %bb.bw ; 6 uses

.noexc157:                                        ; preds = %bb.t
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 1, ptr %i.ax, align 8, !tbaa !67, !noalias !919
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 1, ptr %i.ay, align 4, !tbaa !69, !noalias !919
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.aw, align 8, !tbaa !32, !noalias !919
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  invoke void @_ZN5arrow15DictionaryArrayC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_5ArrayEES9_(ptr noundef nonnull align 8 dereferenceable(72) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.u unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i156, !noalias !919

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i156: ; preds = %.noexc157
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 88) #23, !noalias !919
  br label %.body158

bb.u:                                             ; preds = %.noexc157
  %i.bb = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  store ptr %i.aw, ptr %i.bb, align 8, !tbaa !66, !alias.scope !919
  store ptr %i.az, ptr %18, align 16, !tbaa !914, !alias.scope !919
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.bc = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !66 ; 2 uses
  %i.bf = load <2 x ptr>, ptr %8, align 16, !tbaa !79
  store <2 x ptr> %i.bf, ptr %20, align 16, !tbaa !79
  %.not.i.i.i161 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i161, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit163, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i162 = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i162, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit163

bb.x:                                             ; preds = %bb.v
  %i.bk = atomicrmw volatile add ptr %i.bg, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit163

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit163: ; preds = %bb.u, %bb.w, %bb.x
  invoke void @_ZN5arrow4listESt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.8") align 8 %19, ptr noundef nonnull %20)
          to label %bb.y unwind label %bb.bx

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit163
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !66 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.bm, align 8, !tbaa !67
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !69
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #22, !inline_history !206
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #22, !inline_history !206
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i164 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i164, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i = phi i32 [ %i.bp, %bb.ac ], [ %i.bz, %bb.ad ]
  %i.ca = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ca, label %bb.ae, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #22
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.y, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.cb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.af unwind label %bb.by

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @_ZN5arrow13ArrayFromJSONERKSt10shared_ptrINS_8DataTypeEESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.5") align 8 %21, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 27, ptr nonnull @.str.39)
          to label %bb.ag unwind label %bb.by

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.cc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev()
          to label %bb.ah unwind label %bb.bz

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN5arrow13ArrayFromJSONERKSt10shared_ptrINS_8DataTypeEESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.5") align 8 %22, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 21, ptr nonnull @.str.40)
          to label %bb.ai unwind label %bb.bz

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
end_hunk_0
begin_hunk_1_@_ZN5arrow3ipc4test14MakeDictionaryEPSt10shared_ptrINS_11RecordBatchEE:_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.5
  %i.bgd = load ptr, ptr %i.bfu, align 8, !tbaa !32
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bgd, i64 24
  %i.bgf = load ptr, ptr %i.bge, align 8
  call void %i.bgf(ptr noundef nonnull align 8 dereferenceable(16) %i.bfu) #22, !inline_history !206
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit540

bb.th:                                            ; preds = %bb.tf
  %i.bgg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i537 = icmp eq i8 %i.bgg, 0
  br i1 %.not.i.i.i537, label %bb.tj, label %bb.ti

bb.ti:                                            ; preds = %bb.th
  %i.bgh = add nsw i32 %i.bfy, -1
  store i32 %i.bgh, ptr %i.bfv, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i538

bb.tj:                                            ; preds = %bb.th
  %i.bgi = atomicrmw volatile add ptr %i.bfv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i538

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i538: ; preds = %bb.tj, %bb.ti
  %.0.i.i.i.i539 = phi i32 [ %i.bfy, %bb.ti ], [ %i.bgi, %bb.tj ]
  %i.bgj = icmp eq i32 %.0.i.i.i.i539, 1
  br i1 %i.bgj, label %bb.tk, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit540, !prof !71

bb.tk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i538
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bfu) #22
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit540

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit540: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit535, %bb.tg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i538, %bb.tk
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.bgk = load ptr, ptr %i.bb, align 8, !tbaa !66 ; 8 uses
  %.not.i.i541 = icmp eq ptr %i.bgk, null
  br i1 %.not.i.i541, label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit545, label %bb.tl

bb.tl:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit540
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bgk, i64 8 ; 4 uses
  %i.bgm = load atomic i64, ptr %i.bgl acquire, align 8 ; 2 uses
  %i.bgn = icmp eq i64 %i.bgm, 4294967297
  %i.bgo = trunc i64 %i.bgm to i32                ; 2 uses
  br i1 %i.bgn, label %bb.tm, label %bb.tn

bb.tm:                                            ; preds = %bb.tl
  store i32 0, ptr %i.bgl, align 8, !tbaa !67
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgk, i64 12
  store i32 0, ptr %i.bgp, align 4, !tbaa !69
  %i.bgq = load ptr, ptr %i.bgk, align 8, !tbaa !32
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgq, i64 16
  %i.bgs = load ptr, ptr %i.bgr, align 8
  call void %i.bgs(ptr noundef nonnull align 8 dereferenceable(16) %i.bgk) #22, !inline_history !955
  %i.bgt = load ptr, ptr %i.bgk, align 8, !tbaa !32
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgt, i64 24
  %i.bgv = load ptr, ptr %i.bgu, align 8
  call void %i.bgv(ptr noundef nonnull align 8 dereferenceable(16) %i.bgk) #22, !inline_history !955
  br label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit545

bb.tn:                                            ; preds = %bb.tl
  %i.bgw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i542 = icmp eq i8 %i.bgw, 0
  br i1 %.not.i.i.i542, label %bb.tp, label %bb.to

bb.to:                                            ; preds = %bb.tn
  %i.bgx = add nsw i32 %i.bgo, -1
  store i32 %i.bgx, ptr %i.bgl, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i543

bb.tp:                                            ; preds = %bb.tn
  %i.bgy = atomicrmw volatile add ptr %i.bgl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i543

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i543: ; preds = %bb.tp, %bb.to
  %.0.i.i.i.i544 = phi i32 [ %i.bgo, %bb.to ], [ %i.bgy, %bb.tp ]
  %i.bgz = icmp eq i32 %.0.i.i.i.i544, 1
  br i1 %i.bgz, label %bb.tq, label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit545, !prof !71

bb.tq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i543
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bgk) #22
  br label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit545

_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit545: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit540, %bb.tm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i543, %bb.tq
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.bha = load ptr, ptr %i.av, align 8, !tbaa !66 ; 8 uses
  %.not.i.i546 = icmp eq ptr %i.bha, null
  br i1 %.not.i.i546, label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit550, label %bb.tr

bb.tr:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit545
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bha, i64 8 ; 4 uses
  %i.bhc = load atomic i64, ptr %i.bhb acquire, align 8 ; 2 uses
  %i.bhd = icmp eq i64 %i.bhc, 4294967297
  %i.bhe = trunc i64 %i.bhc to i32                ; 2 uses
  br i1 %i.bhd, label %bb.ts, label %bb.tt

bb.ts:                                            ; preds = %bb.tr
  store i32 0, ptr %i.bhb, align 8, !tbaa !67
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bha, i64 12
  store i32 0, ptr %i.bhf, align 4, !tbaa !69
  %i.bhg = load ptr, ptr %i.bha, align 8, !tbaa !32
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bhg, i64 16
  %i.bhi = load ptr, ptr %i.bhh, align 8
  call void %i.bhi(ptr noundef nonnull align 8 dereferenceable(16) %i.bha) #22, !inline_history !955
  %i.bhj = load ptr, ptr %i.bha, align 8, !tbaa !32
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bhj, i64 24
  %i.bhl = load ptr, ptr %i.bhk, align 8
  call void %i.bhl(ptr noundef nonnull align 8 dereferenceable(16) %i.bha) #22, !inline_history !955
  br label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit550

bb.tt:                                            ; preds = %bb.tr
  %i.bhm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i547 = icmp eq i8 %i.bhm, 0
  br i1 %.not.i.i.i547, label %bb.tv, label %bb.tu

bb.tu:                                            ; preds = %bb.tt
  %i.bhn = add nsw i32 %i.bhe, -1
  store i32 %i.bhn, ptr %i.bhb, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i548

bb.tv:                                            ; preds = %bb.tt
  %i.bho = atomicrmw volatile add ptr %i.bhb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i548

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i548: ; preds = %bb.tv, %bb.tu
  %.0.i.i.i.i549 = phi i32 [ %i.bhe, %bb.tu ], [ %i.bho, %bb.tv ]
  %i.bhp = icmp eq i32 %.0.i.i.i.i549, 1
  br i1 %i.bhp, label %bb.tw, label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit550, !prof !71

bb.tw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i548
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bha) #22
  br label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit550

_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit550: ; preds = %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit545, %bb.ts, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i548, %bb.tw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.bhq = load ptr, ptr %i.ap, align 8, !tbaa !66 ; 8 uses
  %.not.i.i551 = icmp eq ptr %i.bhq, null
  br i1 %.not.i.i551, label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit555, label %bb.tx

bb.tx:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit550
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhq, i64 8 ; 4 uses
  %i.bhs = load atomic i64, ptr %i.bhr acquire, align 8 ; 2 uses
  %i.bht = icmp eq i64 %i.bhs, 4294967297
  %i.bhu = trunc i64 %i.bhs to i32                ; 2 uses
  br i1 %i.bht, label %bb.ty, label %bb.tz

bb.ty:                                            ; preds = %bb.tx
  store i32 0, ptr %i.bhr, align 8, !tbaa !67
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhq, i64 12
  store i32 0, ptr %i.bhv, align 4, !tbaa !69
  %i.bhw = load ptr, ptr %i.bhq, align 8, !tbaa !32
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhw, i64 16
  %i.bhy = load ptr, ptr %i.bhx, align 8
  call void %i.bhy(ptr noundef nonnull align 8 dereferenceable(16) %i.bhq) #22, !inline_history !955
  %i.bhz = load ptr, ptr %i.bhq, align 8, !tbaa !32
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhz, i64 24
  %i.bib = load ptr, ptr %i.bia, align 8
  call void %i.bib(ptr noundef nonnull align 8 dereferenceable(16) %i.bhq) #22, !inline_history !955
  br label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit555

bb.tz:                                            ; preds = %bb.tx
  %i.bic = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i552 = icmp eq i8 %i.bic, 0
  br i1 %.not.i.i.i552, label %bb.ub, label %bb.ua

bb.ua:                                            ; preds = %bb.tz
  %i.bid = add nsw i32 %i.bhu, -1
  store i32 %i.bid, ptr %i.bhr, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i553

bb.ub:                                            ; preds = %bb.tz
  %i.bie = atomicrmw volatile add ptr %i.bhr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i553

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i553: ; preds = %bb.ub, %bb.ua
  %.0.i.i.i.i554 = phi i32 [ %i.bhu, %bb.ua ], [ %i.bie, %bb.ub ]
  %i.bif = icmp eq i32 %.0.i.i.i.i554, 1
  br i1 %i.bif, label %bb.uc, label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit555, !prof !71

bb.uc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i553
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bhq) #22
  br label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit555

_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit555: ; preds = %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit550, %bb.ty, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i553, %bb.uc
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.big = load ptr, ptr %15, align 8, !tbaa !94  ; 3 uses
  %.not.i.i.i556 = icmp eq ptr %i.big, null
  br i1 %.not.i.i.i556, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ud

bb.ud:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit555
  %i.bih = load ptr, ptr %i.ai, align 8, !tbaa !97
  %i.bii = ptrtoint ptr %i.bih to i64
  %i.bij = ptrtoint ptr %i.big to i64
  %i.bik = sub i64 %i.bii, %i.bij
  call void @_ZdlPvm(ptr noundef nonnull %i.big, i64 noundef %i.bik) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit555, %bb.ud
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.bil = load ptr, ptr %14, align 8, !tbaa !842 ; 3 uses
  %.not.i.i.i557 = icmp eq ptr %i.bil, null
  br i1 %.not.i.i.i557, label %_ZNSt6vectorIaSaIaEED2Ev.exit, label %bb.ue

bb.ue:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bim = load ptr, ptr %i.ae, align 8, !tbaa !844
  %i.bin = ptrtoint ptr %i.bim to i64
  %i.bio = ptrtoint ptr %i.bil to i64
  %i.bip = sub i64 %i.bin, %i.bio
  call void @_ZdlPvm(ptr noundef nonnull %i.bil, i64 noundef %i.bip) #23
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

_ZNSt6vectorIaSaIaEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ue
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.biq = load ptr, ptr %13, align 8, !tbaa !94  ; 3 uses
  %.not.i.i.i559 = icmp eq ptr %i.biq, null
  br i1 %.not.i.i.i559, label %_ZNSt6vectorIiSaIiEED2Ev.exit560, label %bb.uf

bb.uf:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit
  %i.bir = load ptr, ptr %i.z, align 8, !tbaa !97
  %i.bis = ptrtoint ptr %i.bir to i64
  %i.bit = ptrtoint ptr %i.biq to i64
  %i.biu = sub i64 %i.bis, %i.bit
  call void @_ZdlPvm(ptr noundef nonnull %i.biq, i64 noundef %i.biu) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit560

_ZNSt6vectorIiSaIiEED2Ev.exit560:                 ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit, %bb.uf
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.biv = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.biw = load ptr, ptr %i.biv, align 8, !tbaa !66 ; 8 uses
  %.not.i.i561 = icmp eq ptr %i.biw, null
  br i1 %.not.i.i561, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit565, label %bb.ug

bb.ug:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit560
  %i.bix = getelementptr inbounds nuw i8, ptr %i.biw, i64 8 ; 4 uses
  %i.biy = load atomic i64, ptr %i.bix acquire, align 8 ; 2 uses
  %i.biz = icmp eq i64 %i.biy, 4294967297
  %i.bja = trunc i64 %i.biy to i32                ; 2 uses
  br i1 %i.biz, label %bb.uh, label %bb.ui

bb.uh:                                            ; preds = %bb.ug
  store i32 0, ptr %i.bix, align 8, !tbaa !67
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.biw, i64 12
  store i32 0, ptr %i.bjb, align 4, !tbaa !69
  %i.bjc = load ptr, ptr %i.biw, align 8, !tbaa !32
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bjc, i64 16
  %i.bje = load ptr, ptr %i.bjd, align 8
  call void %i.bje(ptr noundef nonnull align 8 dereferenceable(16) %i.biw) #22, !inline_history !70
  %i.bjf = load ptr, ptr %i.biw, align 8, !tbaa !32
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bjf, i64 24
  %i.bjh = load ptr, ptr %i.bjg, align 8
  call void %i.bjh(ptr noundef nonnull align 8 dereferenceable(16) %i.biw) #22, !inline_history !70
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit565

bb.ui:                                            ; preds = %bb.ug
  %i.bji = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i562 = icmp eq i8 %i.bji, 0
  br i1 %.not.i.i.i562, label %bb.uk, label %bb.uj

bb.uj:                                            ; preds = %bb.ui
  %i.bjj = add nsw i32 %i.bja, -1
  store i32 %i.bjj, ptr %i.bix, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i563

bb.uk:                                            ; preds = %bb.ui
  %i.bjk = atomicrmw volatile add ptr %i.bix, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i563

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i563: ; preds = %bb.uk, %bb.uj
  %.0.i.i.i.i564 = phi i32 [ %i.bja, %bb.uj ], [ %i.bjk, %bb.uk ]
  %i.bjl = icmp eq i32 %.0.i.i.i.i564, 1
  br i1 %i.bjl, label %bb.ul, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit565, !prof !71

bb.ul:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i563
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.biw) #22
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit565

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit565: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit560, %bb.uh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i563, %bb.ul
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.bjm = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bjn = load ptr, ptr %i.bjm, align 8, !tbaa !66 ; 8 uses
  %.not.i.i566 = icmp eq ptr %i.bjn, null
  br i1 %.not.i.i566, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit570, label %bb.um

bb.um:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit565
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjn, i64 8 ; 4 uses
  %i.bjp = load atomic i64, ptr %i.bjo acquire, align 8 ; 2 uses
  %i.bjq = icmp eq i64 %i.bjp, 4294967297
  %i.bjr = trunc i64 %i.bjp to i32                ; 2 uses
  br i1 %i.bjq, label %bb.un, label %bb.uo

bb.un:                                            ; preds = %bb.um
  store i32 0, ptr %i.bjo, align 8, !tbaa !67
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjn, i64 12
  store i32 0, ptr %i.bjs, align 4, !tbaa !69
  %i.bjt = load ptr, ptr %i.bjn, align 8, !tbaa !32
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjt, i64 16
  %i.bjv = load ptr, ptr %i.bju, align 8
  call void %i.bjv(ptr noundef nonnull align 8 dereferenceable(16) %i.bjn) #22, !inline_history !70
  %i.bjw = load ptr, ptr %i.bjn, align 8, !tbaa !32
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjw, i64 24
  %i.bjy = load ptr, ptr %i.bjx, align 8
  call void %i.bjy(ptr noundef nonnull align 8 dereferenceable(16) %i.bjn) #22, !inline_history !70
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit570

bb.uo:                                            ; preds = %bb.um
  %i.bjz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i567 = icmp eq i8 %i.bjz, 0
  br i1 %.not.i.i.i567, label %bb.uq, label %bb.up

bb.up:                                            ; preds = %bb.uo
  %i.bka = add nsw i32 %i.bjr, -1
  store i32 %i.bka, ptr %i.bjo, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i568

bb.uq:                                            ; preds = %bb.uo
  %i.bkb = atomicrmw volatile add ptr %i.bjo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i568

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i568: ; preds = %bb.uq, %bb.up
  %.0.i.i.i.i569 = phi i32 [ %i.bjr, %bb.up ], [ %i.bkb, %bb.uq ]
  %i.bkc = icmp eq i32 %.0.i.i.i.i569, 1
  br i1 %i.bkc, label %bb.ur, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit570, !prof !71

bb.ur:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i568
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bjn) #22
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit570

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit570: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit565, %bb.un, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i568, %bb.ur
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.bkd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bke = load ptr, ptr %i.bkd, align 8, !tbaa !66 ; 8 uses
  %.not.i.i571 = icmp eq ptr %i.bke, null
  br i1 %.not.i.i571, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit575, label %bb.us

bb.us:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit570
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bke, i64 8 ; 4 uses
  %i.bkg = load atomic i64, ptr %i.bkf acquire, align 8 ; 2 uses
  %i.bkh = icmp eq i64 %i.bkg, 4294967297
  %i.bki = trunc i64 %i.bkg to i32                ; 2 uses
  br i1 %i.bkh, label %bb.ut, label %bb.uu

bb.ut:                                            ; preds = %bb.us
  store i32 0, ptr %i.bkf, align 8, !tbaa !67
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bke, i64 12
  store i32 0, ptr %i.bkj, align 4, !tbaa !69
  %i.bkk = load ptr, ptr %i.bke, align 8, !tbaa !32
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bkk, i64 16
  %i.bkm = load ptr, ptr %i.bkl, align 8
  call void %i.bkm(ptr noundef nonnull align 8 dereferenceable(16) %i.bke) #22, !inline_history !70
  %i.bkn = load ptr, ptr %i.bke, align 8, !tbaa !32
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkn, i64 24
  %i.bkp = load ptr, ptr %i.bko, align 8
  call void %i.bkp(ptr noundef nonnull align 8 dereferenceable(16) %i.bke) #22, !inline_history !70
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit575

bb.uu:                                            ; preds = %bb.us
  %i.bkq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i572 = icmp eq i8 %i.bkq, 0
  br i1 %.not.i.i.i572, label %bb.uw, label %bb.uv

bb.uv:                                            ; preds = %bb.uu
  %i.bkr = add nsw i32 %i.bki, -1
  store i32 %i.bkr, ptr %i.bkf, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i573

bb.uw:                                            ; preds = %bb.uu
  %i.bks = atomicrmw volatile add ptr %i.bkf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i573

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i573: ; preds = %bb.uw, %bb.uv
  %.0.i.i.i.i574 = phi i32 [ %i.bki, %bb.uv ], [ %i.bks, %bb.uw ]
  %i.bkt = icmp eq i32 %.0.i.i.i.i574, 1
  br i1 %i.bkt, label %bb.ux, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit575, !prof !71

bb.ux:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i573
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bke) #22
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit575

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit575: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit570, %bb.ut, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i573, %bb.ux
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.bku = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bkv = load ptr, ptr %i.bku, align 8, !tbaa !66 ; 8 uses
  %.not.i.i576 = icmp eq ptr %i.bkv, null
  br i1 %.not.i.i576, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit580, label %bb.uy

bb.uy:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit575
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bkv, i64 8 ; 4 uses
  %i.bkx = load atomic i64, ptr %i.bkw acquire, align 8 ; 2 uses
  %i.bky = icmp eq i64 %i.bkx, 4294967297
  %i.bkz = trunc i64 %i.bkx to i32                ; 2 uses
  br i1 %i.bky, label %bb.uz, label %bb.va

bb.uz:                                            ; preds = %bb.uy
  store i32 0, ptr %i.bkw, align 8, !tbaa !67
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bkv, i64 12
  store i32 0, ptr %i.bla, align 4, !tbaa !69
  %i.blb = load ptr, ptr %i.bkv, align 8, !tbaa !32
  %i.blc = getelementptr inbounds nuw i8, ptr %i.blb, i64 16
  %i.bld = load ptr, ptr %i.blc, align 8
  call void %i.bld(ptr noundef nonnull align 8 dereferenceable(16) %i.bkv) #22, !inline_history !206
  %i.ble = load ptr, ptr %i.bkv, align 8, !tbaa !32
  %i.blf = getelementptr inbounds nuw i8, ptr %i.ble, i64 24
  %i.blg = load ptr, ptr %i.blf, align 8
  call void %i.blg(ptr noundef nonnull align 8 dereferenceable(16) %i.bkv) #22, !inline_history !206
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit580
end_hunk_1
begin_hunk_2_@_ZN5arrow3ipc4test14MakeDictionaryEPSt10shared_ptrINS_11RecordBatchEE:_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.5
  %i.bnh = atomicrmw volatile add ptr %i.bmu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i593

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i593: ; preds = %bb.vu, %bb.vt
  %.0.i.i.i.i594 = phi i32 [ %i.bmx, %bb.vt ], [ %i.bnh, %bb.vu ]
  %i.bni = icmp eq i32 %.0.i.i.i.i594, 1
  br i1 %i.bni, label %bb.vv, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit595, !prof !71

bb.vv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i593
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bmt) #22
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit595

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit595: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit590, %bb.vr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i593, %bb.vv
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bnj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bnk = load ptr, ptr %i.bnj, align 8, !tbaa !66 ; 8 uses
  %.not.i.i596 = icmp eq ptr %i.bnk, null
  br i1 %.not.i.i596, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit600, label %bb.vw

bb.vw:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit595
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bnk, i64 8 ; 4 uses
  %i.bnm = load atomic i64, ptr %i.bnl acquire, align 8 ; 2 uses
  %i.bnn = icmp eq i64 %i.bnm, 4294967297
  %i.bno = trunc i64 %i.bnm to i32                ; 2 uses
  br i1 %i.bnn, label %bb.vx, label %bb.vy

bb.vx:                                            ; preds = %bb.vw
  store i32 0, ptr %i.bnl, align 8, !tbaa !67
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bnk, i64 12
  store i32 0, ptr %i.bnp, align 4, !tbaa !69
  %i.bnq = load ptr, ptr %i.bnk, align 8, !tbaa !32
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bnq, i64 16
  %i.bns = load ptr, ptr %i.bnr, align 8
  call void %i.bns(ptr noundef nonnull align 8 dereferenceable(16) %i.bnk) #22, !inline_history !70
  %i.bnt = load ptr, ptr %i.bnk, align 8, !tbaa !32
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bnt, i64 24
  %i.bnv = load ptr, ptr %i.bnu, align 8
  call void %i.bnv(ptr noundef nonnull align 8 dereferenceable(16) %i.bnk) #22, !inline_history !70
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit600

bb.vy:                                            ; preds = %bb.vw
  %i.bnw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i597 = icmp eq i8 %i.bnw, 0
  br i1 %.not.i.i.i597, label %bb.wa, label %bb.vz

bb.vz:                                            ; preds = %bb.vy
  %i.bnx = add nsw i32 %i.bno, -1
  store i32 %i.bnx, ptr %i.bnl, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i598

bb.wa:                                            ; preds = %bb.vy
  %i.bny = atomicrmw volatile add ptr %i.bnl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i598

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i598: ; preds = %bb.wa, %bb.vz
  %.0.i.i.i.i599 = phi i32 [ %i.bno, %bb.vz ], [ %i.bny, %bb.wa ]
  %i.bnz = icmp eq i32 %.0.i.i.i.i599, 1
  br i1 %i.bnz, label %bb.wb, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit600, !prof !71

bb.wb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i598
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bnk) #22
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit600

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit600: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit595, %bb.vx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i598, %bb.wb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.boa = load ptr, ptr %i.l, align 8, !tbaa !66 ; 8 uses
  %.not.i.i601 = icmp eq ptr %i.boa, null
  br i1 %.not.i.i601, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit605, label %bb.wc

bb.wc:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit600
  %i.bob = getelementptr inbounds nuw i8, ptr %i.boa, i64 8 ; 4 uses
  %i.boc = load atomic i64, ptr %i.bob acquire, align 8 ; 2 uses
  %i.bod = icmp eq i64 %i.boc, 4294967297
  %i.boe = trunc i64 %i.boc to i32                ; 2 uses
  br i1 %i.bod, label %bb.wd, label %bb.we

bb.wd:                                            ; preds = %bb.wc
  store i32 0, ptr %i.bob, align 8, !tbaa !67
  %i.bof = getelementptr inbounds nuw i8, ptr %i.boa, i64 12
  store i32 0, ptr %i.bof, align 4, !tbaa !69
  %i.bog = load ptr, ptr %i.boa, align 8, !tbaa !32
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bog, i64 16
  %i.boi = load ptr, ptr %i.boh, align 8
  call void %i.boi(ptr noundef nonnull align 8 dereferenceable(16) %i.boa) #22, !inline_history !206
  %i.boj = load ptr, ptr %i.boa, align 8, !tbaa !32
  %i.bok = getelementptr inbounds nuw i8, ptr %i.boj, i64 24
  %i.bol = load ptr, ptr %i.bok, align 8
  call void %i.bol(ptr noundef nonnull align 8 dereferenceable(16) %i.boa) #22, !inline_history !206
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit605

bb.we:                                            ; preds = %bb.wc
  %i.bom = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i602 = icmp eq i8 %i.bom, 0
  br i1 %.not.i.i.i602, label %bb.wg, label %bb.wf

bb.wf:                                            ; preds = %bb.we
  %i.bon = add nsw i32 %i.boe, -1
  store i32 %i.bon, ptr %i.bob, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i603

bb.wg:                                            ; preds = %bb.we
  %i.boo = atomicrmw volatile add ptr %i.bob, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i603

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i603: ; preds = %bb.wg, %bb.wf
  %.0.i.i.i.i604 = phi i32 [ %i.boe, %bb.wf ], [ %i.boo, %bb.wg ]
  %i.bop = icmp eq i32 %.0.i.i.i.i604, 1
  br i1 %i.bop, label %bb.wh, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit605, !prof !71

bb.wh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i603
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.boa) #22
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit605

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit605: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit600, %bb.wd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i603, %bb.wh
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.boq = load ptr, ptr %3, align 8, !tbaa !925  ; 2 uses
  %.not.i.i606 = icmp eq ptr %i.boq, null
  br i1 %.not.i.i606, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.wi

bb.wi:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit605
  %i.bor = load ptr, ptr %i.h, align 8, !tbaa !907 ; 2 uses
  %i.bos = ptrtoint ptr %i.bor to i64
  %i.bot = ptrtoint ptr %i.boq to i64
  %i.bou = sub i64 %i.bos, %i.bot                 ; 2 uses
  %i.bov = ashr exact i64 %i.bou, 3
  %i.bow = sub nsw i64 0, %i.bov
  %i.box = getelementptr inbounds [8 x i8], ptr %i.bor, i64 %i.bow
  call void @_ZdlPvm(ptr noundef %i.box, i64 noundef %i.bou) #23
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
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wj ], [ %i.gq, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #22
  br label %bb.wl

bb.wl:                                            ; preds = %bb.wk, %bb.by
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wk ], [ %i.gp, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.wm

bb.wm:                                            ; preds = %bb.wl, %bb.bx
  %.sink = phi ptr [ %19, %bb.wl ], [ %20, %bb.bx ]
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wl ], [ %i.go, %bb.bx ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %.sink) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #22
  br label %.body158

.body158:                                         ; preds = %bb.bw, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i156, %bb.wm
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wm ], [ %i.gn, %bb.bw ], [ %i.ba, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i156 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #22
  br label %.body153

.body153:                                         ; preds = %bb.bv, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i151, %.body158
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body158 ], [ %i.gm, %bb.bv ], [ %i.au, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i151 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #22
  br label %.body149

.body149:                                         ; preds = %bb.bu, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i, %.body153
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body153 ], [ %i.gl, %bb.bu ], [ %i.ao, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.wn

bb.wn:                                            ; preds = %.body149, %bb.bt
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body149 ], [ %i.gk, %bb.bt ] ; 2 uses
  %i.boy = load ptr, ptr %15, align 8, !tbaa !94  ; 3 uses
  %.not.i.i.i607 = icmp eq ptr %i.boy, null
  br i1 %.not.i.i.i607, label %_ZNSt6vectorIiSaIiEED2Ev.exit608, label %bb.wo

bb.wo:                                            ; preds = %bb.wn
  %i.boz = load ptr, ptr %i.ai, align 8, !tbaa !97
  %i.bpa = ptrtoint ptr %i.boz to i64
  %i.bpb = ptrtoint ptr %i.boy to i64
  %i.bpc = sub i64 %i.bpa, %i.bpb
  call void @_ZdlPvm(ptr noundef nonnull %i.boy, i64 noundef %i.bpc) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit608

_ZNSt6vectorIiSaIiEED2Ev.exit608:                 ; preds = %bb.wo, %bb.wn, %bb.bs
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gj, %bb.bs ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wn ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.bpd = load ptr, ptr %14, align 8, !tbaa !842 ; 3 uses
  %.not.i.i.i609 = icmp eq ptr %i.bpd, null
  br i1 %.not.i.i.i609, label %.body, label %bb.wp

bb.wp:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit608
  %i.bpe = load ptr, ptr %i.ae, align 8, !tbaa !844
  %i.bpf = ptrtoint ptr %i.bpe to i64
  %i.bpg = ptrtoint ptr %i.bpd to i64
  %i.bph = sub i64 %i.bpf, %i.bpg
  call void @_ZdlPvm(ptr noundef nonnull %i.bpd, i64 noundef %i.bph) #23
  br label %.body

.body:                                            ; preds = %bb.wp, %_ZNSt6vectorIiSaIiEED2Ev.exit608, %_ZNSt12_Vector_baseIaSaIaEED2Ev.exit.i
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ac, %_ZNSt12_Vector_baseIaSaIaEED2Ev.exit.i ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wp ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit608 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.bpi = load ptr, ptr %13, align 8, !tbaa !94  ; 3 uses
  %.not.i.i.i612 = icmp eq ptr %i.bpi, null
  br i1 %.not.i.i.i612, label %_ZNSt6vectorIiSaIiEED2Ev.exit613, label %bb.wq

bb.wq:                                            ; preds = %.body
  %i.bpj = load ptr, ptr %i.z, align 8, !tbaa !97
  %i.bpk = ptrtoint ptr %i.bpj to i64
  %i.bpl = ptrtoint ptr %i.bpi to i64
  %i.bpm = sub i64 %i.bpk, %i.bpl
  call void @_ZdlPvm(ptr noundef nonnull %i.bpi, i64 noundef %i.bpm) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit613

_ZNSt6vectorIiSaIiEED2Ev.exit613:                 ; preds = %bb.wq, %.body, %bb.br
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gi, %bb.br ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wq ]
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
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit613 ], [ %i.gh, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #22
  br label %bb.ws

bb.ws:                                            ; preds = %bb.wr, %bb.bp
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wr ], [ %i.gg, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #22
  br label %bb.wt

bb.wt:                                            ; preds = %bb.ws, %bb.bo
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ws ], [ %i.gf, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #22
  br label %bb.wu

bb.wu:                                            ; preds = %bb.wt, %bb.bn
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wt ], [ %i.ge, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  br label %bb.wv

bb.wv:                                            ; preds = %bb.wu, %bb.bm
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wu ], [ %i.gd, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22
  br label %bb.ww

bb.ww:                                            ; preds = %bb.wv, %bb.bl
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wv ], [ %i.gc, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bpn = load ptr, ptr %3, align 8, !tbaa !925  ; 2 uses
  %.not.i.i614 = icmp eq ptr %i.bpn, null
  br i1 %.not.i.i614, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit615, label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  %i.bpo = load ptr, ptr %i.h, align 8, !tbaa !907 ; 2 uses
  %i.bpp = ptrtoint ptr %i.bpo to i64
  %i.bpq = ptrtoint ptr %i.bpn to i64
  %i.bpr = sub i64 %i.bpp, %i.bpq                 ; 2 uses
  %i.bps = ashr exact i64 %i.bpr, 3
  %i.bpt = sub nsw i64 0, %i.bps
  %i.bpu = getelementptr inbounds [8 x i8], ptr %i.bpo, i64 %i.bpt
  call void @_ZdlPvm(ptr noundef %i.bpu, i64 noundef %i.bpr) #23
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
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !844
  store <6 x i8> <i8 0, i8 0, i8 2, i8 2, i8 1, i8 1>, ptr %i.x, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !845
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.ac = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.o unwind label %bb.jq      ; 3 uses

bb.o:                                             ; preds = %bb.n
  store ptr %i.ac, ptr %14, align 8, !tbaa !94
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ac, ptr noundef nonnull align 4 dereferenceable(24) @constinit.51, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !98
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
  %i.ag = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #25
          to label %.noexc77 unwind label %bb.js  ; 6 uses

.noexc77:                                         ; preds = %bb.r
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 1, ptr %i.ah, align 8, !tbaa !67, !noalias !983
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 1, ptr %i.ai, align 4, !tbaa !69, !noalias !983
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ag, align 8, !tbaa !32, !noalias !983
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  invoke void @_ZN5arrow15DictionaryArrayC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_5ArrayEES9_(ptr noundef nonnull align 8 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.s unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i, !noalias !983

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i: ; preds = %.noexc77
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 88) #23, !noalias !983
  br label %.body78

bb.s:                                             ; preds = %.noexc77
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store ptr %i.ag, ptr %i.al, align 8, !tbaa !66, !alias.scope !983
  store ptr %i.aj, ptr %15, align 16, !tbaa !914, !alias.scope !983
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !986)
  %i.am = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #25
          to label %.noexc81 unwind label %bb.jt  ; 6 uses

.noexc81:                                         ; preds = %bb.s
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 1, ptr %i.an, align 8, !tbaa !67, !noalias !986
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 1, ptr %i.ao, align 4, !tbaa !69, !noalias !986
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.am, align 8, !tbaa !32, !noalias !986
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  invoke void @_ZN5arrow15DictionaryArrayC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_5ArrayEES9_(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.t unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i80, !noalias !986

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i80: ; preds = %.noexc81
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 88) #23, !noalias !986
  br label %.body82

bb.t:                                             ; preds = %.noexc81
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  store ptr %i.am, ptr %i.ar, align 8, !tbaa !66, !alias.scope !986
  store ptr %i.ap, ptr %16, align 16, !tbaa !914, !alias.scope !986
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !989)
  %i.as = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #25
          to label %.noexc86 unwind label %bb.ju  ; 6 uses

.noexc86:                                         ; preds = %bb.t
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 1, ptr %i.at, align 8, !tbaa !67, !noalias !989
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 1, ptr %i.au, align 4, !tbaa !69, !noalias !989
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.as, align 8, !tbaa !32, !noalias !989
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  invoke void @_ZN5arrow15DictionaryArrayC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_5ArrayEES9_(ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %._crit_edge.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i85, !noalias !989

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i85: ; preds = %.noexc86
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 88) #23, !noalias !989
  br label %.body87

._crit_edge.i.i:                                  ; preds = %.noexc86
  %i.ax = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !66, !alias.scope !989
  store ptr %i.av, ptr %17, align 16, !tbaa !914, !alias.scope !989
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.ay = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.ay, ptr %21, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ay, ptr noundef nonnull align 1 dereferenceable(5) @.str.43, i64 5, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 5, ptr %i.az, align 8, !tbaa !30
  %i.ba = getelementptr inbounds nuw i8, ptr %21, i64 21
  store i8 0, ptr %i.ba, align 1, !tbaa !31
  %i.bb = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !66 ; 2 uses
  %i.be = load <2 x ptr>, ptr %6, align 16, !tbaa !79
  store <2 x ptr> %i.be, ptr %22, align 16, !tbaa !79
  %.not.i.i.i91 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i91, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i92 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i92, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93

bb.w:                                             ; preds = %bb.u
  %i.bj = atomicrmw volatile add ptr %i.bf, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93: ; preds = %._crit_edge.i.i, %bb.v, %bb.w
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow5fieldENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEbS6_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.14") align 8 %20, ptr noundef nonnull %21, ptr noundef nonnull %22, i1 noundef zeroext true, ptr noundef nonnull %23)
          to label %._crit_edge.i.i94 unwind label %bb.jv

._crit_edge.i.i94:                                ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93
  %i.bk = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.bl, ptr %24, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bl, ptr noundef nonnull align 1 dereferenceable(5) @.str.44, i64 5, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 5, ptr %i.bm, align 8, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %24, i64 21
  store i8 0, ptr %i.bn, align 1, !tbaa !31
  %i.bo = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !66 ; 2 uses
  %i.br = load <2 x ptr>, ptr %7, align 16, !tbaa !79
  store <2 x ptr> %i.br, ptr %25, align 16, !tbaa !79
  %.not.i.i.i98 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i98, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit100, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i.i94
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 3 uses
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i99 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i.i99, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit100

bb.z:                                             ; preds = %bb.x
  %i.bw = atomicrmw volatile add ptr %i.bs, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit100

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit100: ; preds = %._crit_edge.i.i94, %bb.y, %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow5fieldENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEbS6_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.14") align 8 %i.bk, ptr noundef nonnull %24, ptr noundef nonnull %25, i1 noundef zeroext true, ptr noundef nonnull %26)
          to label %._crit_edge.i.i101 unwind label %bb.jw

._crit_edge.i.i101:                               ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit100
  %i.bx = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.by, ptr %27, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.by, ptr noundef nonnull align 1 dereferenceable(5) @.str.45, i64 5, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 5, ptr %i.bz, align 8, !tbaa !30
  %i.ca = getelementptr inbounds nuw i8, ptr %27, i64 21
  store i8 0, ptr %i.ca, align 1, !tbaa !31
  %i.cb = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !66 ; 2 uses
  %i.ce = load <2 x ptr>, ptr %8, align 16, !tbaa !79
  store <2 x ptr> %i.ce, ptr %28, align 16, !tbaa !79
  %.not.i.i.i105 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i105, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit107, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i.i101
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 3 uses
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i106 = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i106, label %bb.ac, label %bb.ab

end_hunk_3
begin_hunk_4_@_ZN5arrow3ipc4test18MakeDictionaryFlatEPSt10shared_ptrINS_11RecordBatchEE:_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.5
  %i.vu = load ptr, ptr %i.vl, align 8, !tbaa !32
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 24
  %i.vw = load ptr, ptr %i.vv, align 8
  call void %i.vw(ptr noundef nonnull align 8 dereferenceable(16) %i.vl) #22, !inline_history !286
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit218

bb.gh:                                            ; preds = %bb.gf
  %i.vx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i215 = icmp eq i8 %i.vx, 0
  br i1 %.not.i.i.i215, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.vy = add nsw i32 %i.vp, -1
  store i32 %i.vy, ptr %i.vm, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i216

bb.gj:                                            ; preds = %bb.gh
  %i.vz = atomicrmw volatile add ptr %i.vm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i216

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i216: ; preds = %bb.gj, %bb.gi
  %.0.i.i.i.i217 = phi i32 [ %i.vp, %bb.gi ], [ %i.vz, %bb.gj ]
  %i.wa = icmp eq i32 %.0.i.i.i.i217, 1
  br i1 %i.wa, label %bb.gk, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit218, !prof !71

bb.gk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i216
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vl) #22
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit218

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit218: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit213, %bb.gg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i216, %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.wb = load ptr, ptr %i.ax, align 8, !tbaa !66 ; 8 uses
  %.not.i.i219 = icmp eq ptr %i.wb, null
  br i1 %.not.i.i219, label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.gl

bb.gl:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit218
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 8 ; 4 uses
  %i.wd = load atomic i64, ptr %i.wc acquire, align 8 ; 2 uses
  %i.we = icmp eq i64 %i.wd, 4294967297
  %i.wf = trunc i64 %i.wd to i32                  ; 2 uses
  br i1 %i.we, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  store i32 0, ptr %i.wc, align 8, !tbaa !67
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wb, i64 12
  store i32 0, ptr %i.wg, align 4, !tbaa !69
  %i.wh = load ptr, ptr %i.wb, align 8, !tbaa !32
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 16
  %i.wj = load ptr, ptr %i.wi, align 8
  call void %i.wj(ptr noundef nonnull align 8 dereferenceable(16) %i.wb) #22, !inline_history !955
  %i.wk = load ptr, ptr %i.wb, align 8, !tbaa !32
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 24
  %i.wm = load ptr, ptr %i.wl, align 8
  call void %i.wm(ptr noundef nonnull align 8 dereferenceable(16) %i.wb) #22, !inline_history !955
  br label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.gn:                                            ; preds = %bb.gl
  %i.wn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i220 = icmp eq i8 %i.wn, 0
  br i1 %.not.i.i.i220, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.wo = add nsw i32 %i.wf, -1
  store i32 %i.wo, ptr %i.wc, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i221

bb.gp:                                            ; preds = %bb.gn
  %i.wp = atomicrmw volatile add ptr %i.wc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i221

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i221: ; preds = %bb.gp, %bb.go
  %.0.i.i.i.i222 = phi i32 [ %i.wf, %bb.go ], [ %i.wp, %bb.gp ]
  %i.wq = icmp eq i32 %.0.i.i.i.i222, 1
  br i1 %i.wq, label %bb.gq, label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.gq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i221
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wb) #22
  br label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit218, %bb.gm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i221, %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.wr = load ptr, ptr %i.ar, align 8, !tbaa !66 ; 8 uses
  %.not.i.i223 = icmp eq ptr %i.wr, null
  br i1 %.not.i.i223, label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit227, label %bb.gr

bb.gr:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 8 ; 4 uses
  %i.wt = load atomic i64, ptr %i.ws acquire, align 8 ; 2 uses
  %i.wu = icmp eq i64 %i.wt, 4294967297
  %i.wv = trunc i64 %i.wt to i32                  ; 2 uses
  br i1 %i.wu, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  store i32 0, ptr %i.ws, align 8, !tbaa !67
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wr, i64 12
  store i32 0, ptr %i.ww, align 4, !tbaa !69
  %i.wx = load ptr, ptr %i.wr, align 8, !tbaa !32
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 16
  %i.wz = load ptr, ptr %i.wy, align 8
  call void %i.wz(ptr noundef nonnull align 8 dereferenceable(16) %i.wr) #22, !inline_history !955
  %i.xa = load ptr, ptr %i.wr, align 8, !tbaa !32
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 24
  %i.xc = load ptr, ptr %i.xb, align 8
  call void %i.xc(ptr noundef nonnull align 8 dereferenceable(16) %i.wr) #22, !inline_history !955
  br label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit227

bb.gt:                                            ; preds = %bb.gr
  %i.xd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i224 = icmp eq i8 %i.xd, 0
  br i1 %.not.i.i.i224, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.xe = add nsw i32 %i.wv, -1
  store i32 %i.xe, ptr %i.ws, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i225

bb.gv:                                            ; preds = %bb.gt
  %i.xf = atomicrmw volatile add ptr %i.ws, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i225

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i225: ; preds = %bb.gv, %bb.gu
  %.0.i.i.i.i226 = phi i32 [ %i.wv, %bb.gu ], [ %i.xf, %bb.gv ]
  %i.xg = icmp eq i32 %.0.i.i.i.i226, 1
  br i1 %i.xg, label %bb.gw, label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit227, !prof !71

bb.gw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i225
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wr) #22
  br label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit227

_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit227: ; preds = %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.gs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i225, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.xh = load ptr, ptr %i.al, align 8, !tbaa !66 ; 8 uses
  %.not.i.i228 = icmp eq ptr %i.xh, null
  br i1 %.not.i.i228, label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit232, label %bb.gx

bb.gx:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit227
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 8 ; 4 uses
  %i.xj = load atomic i64, ptr %i.xi acquire, align 8 ; 2 uses
  %i.xk = icmp eq i64 %i.xj, 4294967297
  %i.xl = trunc i64 %i.xj to i32                  ; 2 uses
  br i1 %i.xk, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  store i32 0, ptr %i.xi, align 8, !tbaa !67
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xh, i64 12
  store i32 0, ptr %i.xm, align 4, !tbaa !69
  %i.xn = load ptr, ptr %i.xh, align 8, !tbaa !32
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 16
  %i.xp = load ptr, ptr %i.xo, align 8
  call void %i.xp(ptr noundef nonnull align 8 dereferenceable(16) %i.xh) #22, !inline_history !955
  %i.xq = load ptr, ptr %i.xh, align 8, !tbaa !32
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 24
  %i.xs = load ptr, ptr %i.xr, align 8
  call void %i.xs(ptr noundef nonnull align 8 dereferenceable(16) %i.xh) #22, !inline_history !955
  br label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit232

bb.gz:                                            ; preds = %bb.gx
  %i.xt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i229 = icmp eq i8 %i.xt, 0
  br i1 %.not.i.i.i229, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.xu = add nsw i32 %i.xl, -1
  store i32 %i.xu, ptr %i.xi, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i230

bb.hb:                                            ; preds = %bb.gz
  %i.xv = atomicrmw volatile add ptr %i.xi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i230

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i230: ; preds = %bb.hb, %bb.ha
  %.0.i.i.i.i231 = phi i32 [ %i.xl, %bb.ha ], [ %i.xv, %bb.hb ]
  %i.xw = icmp eq i32 %.0.i.i.i.i231, 1
  br i1 %i.xw, label %bb.hc, label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit232, !prof !71

bb.hc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i230
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xh) #22
  br label %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit232

_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit232: ; preds = %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit227, %bb.gy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i230, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.xx = load ptr, ptr %14, align 8, !tbaa !94   ; 3 uses
  %.not.i.i.i233 = icmp eq ptr %i.xx, null
  br i1 %.not.i.i.i233, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.hd

bb.hd:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit232
  %i.xy = load ptr, ptr %i.ae, align 8, !tbaa !97
  %i.xz = ptrtoint ptr %i.xy to i64
  %i.ya = ptrtoint ptr %i.xx to i64
  %i.yb = sub i64 %i.xz, %i.ya
  call void @_ZdlPvm(ptr noundef nonnull %i.xx, i64 noundef %i.yb) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit232, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.yc = load ptr, ptr %13, align 8, !tbaa !842  ; 3 uses
  %.not.i.i.i234 = icmp eq ptr %i.yc, null
  br i1 %.not.i.i.i234, label %_ZNSt6vectorIaSaIaEED2Ev.exit, label %bb.he

bb.he:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.yd = load ptr, ptr %i.aa, align 8, !tbaa !844
  %i.ye = ptrtoint ptr %i.yd to i64
  %i.yf = ptrtoint ptr %i.yc to i64
  %i.yg = sub i64 %i.ye, %i.yf
  call void @_ZdlPvm(ptr noundef nonnull %i.yc, i64 noundef %i.yg) #23
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

_ZNSt6vectorIaSaIaEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.yh = load ptr, ptr %12, align 8, !tbaa !94   ; 3 uses
  %.not.i.i.i236 = icmp eq ptr %i.yh, null
  br i1 %.not.i.i.i236, label %_ZNSt6vectorIiSaIiEED2Ev.exit237, label %bb.hf

bb.hf:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit
  %i.yi = load ptr, ptr %i.v, align 8, !tbaa !97
  %i.yj = ptrtoint ptr %i.yi to i64
  %i.yk = ptrtoint ptr %i.yh to i64
  %i.yl = sub i64 %i.yj, %i.yk
  call void @_ZdlPvm(ptr noundef nonnull %i.yh, i64 noundef %i.yl) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit237

_ZNSt6vectorIiSaIiEED2Ev.exit237:                 ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit, %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.ym = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !66 ; 8 uses
  %.not.i.i238 = icmp eq ptr %i.yn, null
  br i1 %.not.i.i238, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242, label %bb.hg

bb.hg:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit237
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 8 ; 4 uses
  %i.yp = load atomic i64, ptr %i.yo acquire, align 8 ; 2 uses
  %i.yq = icmp eq i64 %i.yp, 4294967297
  %i.yr = trunc i64 %i.yp to i32                  ; 2 uses
  br i1 %i.yq, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  store i32 0, ptr %i.yo, align 8, !tbaa !67
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yn, i64 12
  store i32 0, ptr %i.ys, align 4, !tbaa !69
  %i.yt = load ptr, ptr %i.yn, align 8, !tbaa !32
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 16
  %i.yv = load ptr, ptr %i.yu, align 8
  call void %i.yv(ptr noundef nonnull align 8 dereferenceable(16) %i.yn) #22, !inline_history !70
  %i.yw = load ptr, ptr %i.yn, align 8, !tbaa !32
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 24
  %i.yy = load ptr, ptr %i.yx, align 8
  call void %i.yy(ptr noundef nonnull align 8 dereferenceable(16) %i.yn) #22, !inline_history !70
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242

bb.hi:                                            ; preds = %bb.hg
  %i.yz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i239 = icmp eq i8 %i.yz, 0
  br i1 %.not.i.i.i239, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.za = add nsw i32 %i.yr, -1
  store i32 %i.za, ptr %i.yo, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i240

bb.hk:                                            ; preds = %bb.hi
  %i.zb = atomicrmw volatile add ptr %i.yo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i240

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i240: ; preds = %bb.hk, %bb.hj
  %.0.i.i.i.i241 = phi i32 [ %i.yr, %bb.hj ], [ %i.zb, %bb.hk ]
  %i.zc = icmp eq i32 %.0.i.i.i.i241, 1
  br i1 %i.zc, label %bb.hl, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242, !prof !71

bb.hl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i240
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yn) #22
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit237, %bb.hh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i240, %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.zd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !66 ; 8 uses
  %.not.i.i243 = icmp eq ptr %i.ze, null
  br i1 %.not.i.i243, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247, label %bb.hm

bb.hm:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 8 ; 4 uses
  %i.zg = load atomic i64, ptr %i.zf acquire, align 8 ; 2 uses
  %i.zh = icmp eq i64 %i.zg, 4294967297
  %i.zi = trunc i64 %i.zg to i32                  ; 2 uses
  br i1 %i.zh, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  store i32 0, ptr %i.zf, align 8, !tbaa !67
  %i.zj = getelementptr inbounds nuw i8, ptr %i.ze, i64 12
  store i32 0, ptr %i.zj, align 4, !tbaa !69
  %i.zk = load ptr, ptr %i.ze, align 8, !tbaa !32
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
  %i.zm = load ptr, ptr %i.zl, align 8
  call void %i.zm(ptr noundef nonnull align 8 dereferenceable(16) %i.ze) #22, !inline_history !70
  %i.zn = load ptr, ptr %i.ze, align 8, !tbaa !32
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 24
  %i.zp = load ptr, ptr %i.zo, align 8
  call void %i.zp(ptr noundef nonnull align 8 dereferenceable(16) %i.ze) #22, !inline_history !70
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247

bb.ho:                                            ; preds = %bb.hm
  %i.zq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i244 = icmp eq i8 %i.zq, 0
  br i1 %.not.i.i.i244, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.zr = add nsw i32 %i.zi, -1
  store i32 %i.zr, ptr %i.zf, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i245

bb.hq:                                            ; preds = %bb.ho
  %i.zs = atomicrmw volatile add ptr %i.zf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i245

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i245: ; preds = %bb.hq, %bb.hp
  %.0.i.i.i.i246 = phi i32 [ %i.zi, %bb.hp ], [ %i.zs, %bb.hq ]
  %i.zt = icmp eq i32 %.0.i.i.i.i246, 1
  br i1 %i.zt, label %bb.hr, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247, !prof !71

bb.hr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i245
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ze) #22
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit242, %bb.hn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i245, %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.zu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !66 ; 8 uses
  %.not.i.i248 = icmp eq ptr %i.zv, null
  br i1 %.not.i.i248, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit252, label %bb.hs

bb.hs:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 8 ; 4 uses
  %i.zx = load atomic i64, ptr %i.zw acquire, align 8 ; 2 uses
  %i.zy = icmp eq i64 %i.zx, 4294967297
  %i.zz = trunc i64 %i.zx to i32                  ; 2 uses
  br i1 %i.zy, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  store i32 0, ptr %i.zw, align 8, !tbaa !67
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zv, i64 12
  store i32 0, ptr %i.aaa, align 4, !tbaa !69
  %i.aab = load ptr, ptr %i.zv, align 8, !tbaa !32
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 16
  %i.aad = load ptr, ptr %i.aac, align 8
  call void %i.aad(ptr noundef nonnull align 8 dereferenceable(16) %i.zv) #22, !inline_history !70
  %i.aae = load ptr, ptr %i.zv, align 8, !tbaa !32
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 24
  %i.aag = load ptr, ptr %i.aaf, align 8
  call void %i.aag(ptr noundef nonnull align 8 dereferenceable(16) %i.zv) #22, !inline_history !70
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit252

bb.hu:                                            ; preds = %bb.hs
  %i.aah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i249 = icmp eq i8 %i.aah, 0
  br i1 %.not.i.i.i249, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.aai = add nsw i32 %i.zz, -1
  store i32 %i.aai, ptr %i.zw, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i250

bb.hw:                                            ; preds = %bb.hu
  %i.aaj = atomicrmw volatile add ptr %i.zw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i250

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i250: ; preds = %bb.hw, %bb.hv
  %.0.i.i.i.i251 = phi i32 [ %i.zz, %bb.hv ], [ %i.aaj, %bb.hw ]
  %i.aak = icmp eq i32 %.0.i.i.i.i251, 1
  br i1 %i.aak, label %bb.hx, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit252, !prof !71

bb.hx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i250
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.zv) #22
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit252

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit252: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247, %bb.ht, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i250, %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.aal = load ptr, ptr %i.cc, align 8, !tbaa !66 ; 8 uses
  %.not.i.i253 = icmp eq ptr %i.aal, null
  br i1 %.not.i.i253, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit257, label %bb.hy

bb.hy:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit252
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 8 ; 4 uses
  %i.aan = load atomic i64, ptr %i.aam acquire, align 8 ; 2 uses
  %i.aao = icmp eq i64 %i.aan, 4294967297
  %i.aap = trunc i64 %i.aan to i32                ; 2 uses
  br i1 %i.aao, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  store i32 0, ptr %i.aam, align 8, !tbaa !67
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aal, i64 12
  store i32 0, ptr %i.aaq, align 4, !tbaa !69
  %i.aar = load ptr, ptr %i.aal, align 8, !tbaa !32
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 16
  %i.aat = load ptr, ptr %i.aas, align 8
  call void %i.aat(ptr noundef nonnull align 8 dereferenceable(16) %i.aal) #22, !inline_history !206
  %i.aau = load ptr, ptr %i.aal, align 8, !tbaa !32
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 24
  %i.aaw = load ptr, ptr %i.aav, align 8
  call void %i.aaw(ptr noundef nonnull align 8 dereferenceable(16) %i.aal) #22, !inline_history !206
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit257

end_hunk_4
begin_hunk_5_@_ZN5arrow3ipc4test18MakeDictionaryFlatEPSt10shared_ptrINS_11RecordBatchEE:_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.5
bb.jr:                                            ; preds = %bb.q, %bb.p, %bb.o
  %i.aev = landingpad { ptr, i32 }
          cleanup
  br label %bb.kg

bb.js:                                            ; preds = %bb.r
  %i.aew = landingpad { ptr, i32 }
          cleanup
  br label %.body78

bb.jt:                                            ; preds = %bb.s
  %i.aex = landingpad { ptr, i32 }
          cleanup
  br label %.body82

bb.ju:                                            ; preds = %bb.t
  %i.aey = landingpad { ptr, i32 }
          cleanup
  br label %.body87

bb.jv:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93
  %i.aez = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289

bb.jw:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit100
  %i.afa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286

bb.jx:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit107
  %i.afb = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit320

bb.jy:                                            ; preds = %bb.ad
  %i.afc = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit320.loopexit

bb.jz:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2
  %i.afd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %30) #22
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %19) #22
  br label %.loopexit320.loopexit

.loopexit320.loopexit:                            ; preds = %bb.jz, %bb.jy
  %.pn = phi { ptr, i32 } [ %i.afd, %bb.jz ], [ %i.afc, %bb.jy ]
  %i.afe = getelementptr inbounds nuw i8, ptr %20, i64 32
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.afe) #22
  %i.aff = getelementptr inbounds nuw i8, ptr %20, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.aff) #22
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %20) #22
  br label %.loopexit320

.loopexit320:                                     ; preds = %.loopexit320.loopexit, %bb.jx
  %i.afg = phi i1 [ false, %bb.jx ], [ true, %.loopexit320.loopexit ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.afb, %bb.jx ], [ %.pn, %.loopexit320.loopexit ] ; 2 uses
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %29) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %28) #22
  %i.afh = load ptr, ptr %27, align 8, !tbaa !25  ; 2 uses
  %i.afi = icmp eq ptr %i.afh, %i.by
  br i1 %i.afi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284: ; preds = %.loopexit320
  %i.afj = load i64, ptr %i.by, align 8, !tbaa !31
  %i.afk = add i64 %i.afj, 1
  call void @_ZdlPvm(ptr noundef %i.afh, i64 noundef %i.afk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286: ; preds = %.loopexit320, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284, %bb.jw
  %.045 = phi ptr [ %i.bk, %bb.jw ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284 ], [ %i.bx, %.loopexit320 ] ; 2 uses
  %.241 = phi i1 [ false, %bb.jw ], [ %i.afg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284 ], [ %i.afg, %.loopexit320 ] ; 2 uses
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.afa, %bb.jw ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284 ], [ %.pn.pn, %.loopexit320 ] ; 2 uses
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %26) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %25) #22
  %i.afl = load ptr, ptr %24, align 8, !tbaa !25  ; 2 uses
  %i.afm = icmp eq ptr %i.afl, %i.bl
  br i1 %i.afm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286
  %i.afn = load i64, ptr %i.bl, align 8, !tbaa !31
  %i.afo = add i64 %i.afn, 1
  call void @_ZdlPvm(ptr noundef %i.afl, i64 noundef %i.afo) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287, %bb.jv
  %.247 = phi ptr [ %20, %bb.jv ], [ %.045, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287 ], [ %.045, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286 ] ; 2 uses
  %.443 = phi i1 [ false, %bb.jv ], [ %.241, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287 ], [ %.241, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286 ]
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aez, %bb.jv ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286 ]
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %23) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #22
  %i.afp = load ptr, ptr %21, align 8, !tbaa !25  ; 2 uses
  %i.afq = icmp eq ptr %i.afp, %i.ay
  br i1 %i.afq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289
  %i.afr = load i64, ptr %i.ay, align 8, !tbaa !31
  %i.afs = add i64 %i.afr, 1
  call void @_ZdlPvm(ptr noundef %i.afp, i64 noundef %i.afs) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290
  %i.aft = icmp eq ptr %20, %.247
  %or.cond = select i1 %.443, i1 true, i1 %i.aft
  br i1 %or.cond, label %.loopexit319, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, %.preheader
  %i.afu = phi ptr [ %i.afv, %.preheader ], [ %.247, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292 ]
  %i.afv = getelementptr inbounds i8, ptr %i.afu, i64 -16 ; 3 uses
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.afv) #22
  %i.afw = icmp eq ptr %i.afv, %20
  br i1 %i.afw, label %.loopexit319, label %.preheader

.loopexit319:                                     ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.kf

bb.ka:                                            ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2INS0_15DictionaryArrayEvEERKS_IT_E.exit158
  %i.afx = landingpad { ptr, i32 }
          cleanup
  %i.afy = getelementptr inbounds nuw i8, ptr %32, i64 32
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.afy) #22
  %i.afz = getelementptr inbounds nuw i8, ptr %32, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.afz) #22
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %32) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %bb.ke

bb.kb:                                            ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5ArrayEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.aga = landingpad { ptr, i32 }
          cleanup
  br label %bb.kd

bb.kc:                                            ; preds = %.loopexit
  %i.agb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %36) #22
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %35) #22
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %bb.kb
  %.pn56 = phi { ptr, i32 } [ %i.agb, %bb.kc ], [ %i.aga, %bb.kb ]
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %34) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %31) #22
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %bb.ka
  %.pn56.pn = phi { ptr, i32 } [ %.pn56, %bb.kd ], [ %i.afx, %bb.ka ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #22
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %.loopexit319
  %.pn56.pn.pn = phi { ptr, i32 } [ %.pn56.pn, %bb.ke ], [ %.pn.pn.pn.pn.pn.pn, %.loopexit319 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #22
  br label %.body87

.body87:                                          ; preds = %bb.ju, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i85, %bb.kf
  %.pn56.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn, %bb.kf ], [ %i.aey, %bb.ju ], [ %i.aw, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #22
  br label %.body82

.body82:                                          ; preds = %bb.jt, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i80, %.body87
  %.pn56.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn, %.body87 ], [ %i.aex, %bb.jt ], [ %i.aq, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i80 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @_ZNSt12__shared_ptrIN5arrow15DictionaryArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #22
  br label %.body78

.body78:                                          ; preds = %bb.js, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i, %.body82
  %.pn56.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn.pn, %.body82 ], [ %i.aew, %bb.js ], [ %i.ak, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.kg

bb.kg:                                            ; preds = %.body78, %bb.jr
  %.pn56.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn.pn.pn, %.body78 ], [ %i.aev, %bb.jr ] ; 2 uses
  %i.agc = load ptr, ptr %14, align 8, !tbaa !94  ; 3 uses
  %.not.i.i.i293 = icmp eq ptr %i.agc, null
  br i1 %.not.i.i.i293, label %_ZNSt6vectorIiSaIiEED2Ev.exit294, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.agd = load ptr, ptr %i.ae, align 8, !tbaa !97
  %i.age = ptrtoint ptr %i.agd to i64
  %i.agf = ptrtoint ptr %i.agc to i64
  %i.agg = sub i64 %i.age, %i.agf
  call void @_ZdlPvm(ptr noundef nonnull %i.agc, i64 noundef %i.agg) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit294

_ZNSt6vectorIiSaIiEED2Ev.exit294:                 ; preds = %bb.kh, %bb.kg, %bb.jq
  %.pn56.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aeu, %bb.jq ], [ %.pn56.pn.pn.pn.pn.pn.pn, %bb.kg ], [ %.pn56.pn.pn.pn.pn.pn.pn, %bb.kh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.agh = load ptr, ptr %13, align 8, !tbaa !842 ; 3 uses
  %.not.i.i.i295 = icmp eq ptr %i.agh, null
  br i1 %.not.i.i.i295, label %.body, label %bb.ki

bb.ki:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit294
  %i.agi = load ptr, ptr %i.aa, align 8, !tbaa !844
  %i.agj = ptrtoint ptr %i.agi to i64
  %i.agk = ptrtoint ptr %i.agh to i64
  %i.agl = sub i64 %i.agj, %i.agk
  call void @_ZdlPvm(ptr noundef nonnull %i.agh, i64 noundef %i.agl) #23
  br label %.body

.body:                                            ; preds = %bb.ki, %_ZNSt6vectorIiSaIiEED2Ev.exit294, %_ZNSt12_Vector_baseIaSaIaEED2Ev.exit.i
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.y, %_ZNSt12_Vector_baseIaSaIaEED2Ev.exit.i ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn, %bb.ki ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit294 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.agm = load ptr, ptr %12, align 8, !tbaa !94  ; 3 uses
  %.not.i.i.i298 = icmp eq ptr %i.agm, null
  br i1 %.not.i.i.i298, label %_ZNSt6vectorIiSaIiEED2Ev.exit299, label %bb.kj

bb.kj:                                            ; preds = %.body
  %i.agn = load ptr, ptr %i.v, align 8, !tbaa !97
  %i.ago = ptrtoint ptr %i.agn to i64
  %i.agp = ptrtoint ptr %i.agm to i64
  %i.agq = sub i64 %i.ago, %i.agp
  call void @_ZdlPvm(ptr noundef nonnull %i.agm, i64 noundef %i.agq) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit299

_ZNSt6vectorIiSaIiEED2Ev.exit299:                 ; preds = %bb.kj, %.body, %bb.jp
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aet, %bb.jp ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn, %bb.kj ]
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
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit299 ], [ %i.aes, %bb.jo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #22
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kk, %bb.jn
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.kk ], [ %i.aer, %bb.jn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #22
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.jm
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.kl ], [ %i.aeq, %bb.jm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  br label %bb.kn

bb.kn:                                            ; preds = %bb.km, %bb.jl
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.km ], [ %i.aep, %bb.jl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %bb.jk
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.kn ], [ %i.aeo, %bb.jk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #22
  br label %bb.kp

bb.kp:                                            ; preds = %bb.ko, %bb.jj
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ko ], [ %i.aen, %bb.jj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.agr = load ptr, ptr %2, align 8, !tbaa !925  ; 2 uses
  %.not.i.i300 = icmp eq ptr %i.agr, null
  br i1 %.not.i.i300, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit301, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.ags = load ptr, ptr %i.d, align 8, !tbaa !907 ; 2 uses
  %i.agt = ptrtoint ptr %i.ags to i64
  %i.agu = ptrtoint ptr %i.agr to i64
  %i.agv = sub i64 %i.agt, %i.agu                 ; 2 uses
  %i.agw = ashr exact i64 %i.agv, 3
  %i.agx = sub nsw i64 0, %i.agw
  %i.agy = getelementptr inbounds [8 x i8], ptr %i.ags, i64 %i.agx
  call void @_ZdlPvm(ptr noundef %i.agy, i64 noundef %i.agv) #23
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
