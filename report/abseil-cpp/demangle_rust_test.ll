Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/demangle_rust_test?download=true
inline.NumInlined: 4939
inline.NumDeleted: 500
begin_hunk_0_@_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_138DemangleRust_FunctionAtCrateLevel_Test8TestBodyEv:bb.a

bb.bv:                                            ; preds = %bb.bu
  %i.iy = icmp eq i64 %i.iv, 0
  br i1 %i.iy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i81.i82, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i79.i80

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i79.i80: ; preds = %bb.bv
  %i.iz = load ptr, ptr %10, align 8, !tbaa !36, !noalias !86
  %bcmp.i.i.i80.i81 = call i32 @bcmp(ptr %i.iz, ptr nonnull %i.it, i64 %i.iv), !noalias !86
  %i.ja = icmp eq i32 %bcmp.i.i.i80.i81, 0
  br i1 %i.ja, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i81.i82, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i78.i56

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i81.i82: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i79.i80, %bb.bv
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultESA_SA_RKSC_RKSD_.exit84.i61 unwind label %bb.bx

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i78.i56: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i79.i80, %bb.bu
  invoke void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENS_15AssertionResultES9_S9_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.166, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultESA_SA_RKSC_RKSD_.exit84.i61 unwind label %bb.bx

_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultESA_SA_RKSC_RKSD_.exit84.i61: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i78.i56, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i81.i82
  %i.jb = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.jd = icmp eq ptr %i.jb, %i.jc
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i62: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultESA_SA_RKSC_RKSD_.exit84.i61
  %i.je = load i64, ptr %i.jc, align 8, !tbaa !38
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.jf) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i63: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultESA_SA_RKSC_RKSD_.exit84.i61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.jg = load i8, ptr %9, align 8, !tbaa !32, !range !43, !noundef !44
  %i.jh = trunc nuw i8 %i.jg to i1
  br i1 %i.jh, label %bb.ch, label %bb.by

bb.bw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit72.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i31
  %.pn22.pn.pn.i32 = phi { ptr, i32 } [ %.pn22.pn.i38, %_ZN7testing7MessageD2Ev.exit72.i37 ], [ %i.hl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i31 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.ck

bb.bx:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i78.i56, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i81.i82
  %i.ji = landingpad { ptr, i32 }
          cleanup
  %i.jj = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.jl = icmp eq ptr %i.jj, %i.jk
  br i1 %i.jl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i57: ; preds = %bb.bx
  %i.jm = load i64, ptr %i.jk, align 8, !tbaa !38
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jn) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i58: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.cj

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i63
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.bz unwind label %bb.cd

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.jo = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !41 ; 2 uses
  %.not.i.i91.i66 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i91.i66, label %_ZNK7testing15AssertionResult15failure_messageEv.exit92.i67, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !36
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit92.i67

_ZNK7testing15AssertionResult15failure_messageEv.exit92.i67: ; preds = %bb.ca, %bb.bz
  %i.jr = phi ptr [ %i.jq, %bb.ca ], [ @.str.175, %bb.bz ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 94, ptr noundef %i.jr)
          to label %bb.cb unwind label %bb.ce

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit92.i67
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.cc unwind label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  %i.js = load ptr, ptr %11, align 8, !tbaa !40   ; 3 uses
  %.not.i.i93.i71 = icmp eq ptr %i.js, null
  br i1 %.not.i.i93.i71, label %_ZN7testing7MessageD2Ev.exit95.i73, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94.i72

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94.i72: ; preds = %bb.cc
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !11
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(128) %i.js) #15, !inline_history !72
  br label %_ZN7testing7MessageD2Ev.exit95.i73

_ZN7testing7MessageD2Ev.exit95.i73:               ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94.i72, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.ch

bb.cd:                                            ; preds = %bb.by
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit98.i64

bb.ce:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit92.i67
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cb
  %i.jy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #15
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.pn26.i68 = phi { ptr, i32 } [ %i.jy, %bb.cf ], [ %i.jx, %bb.ce ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  %i.jz = load ptr, ptr %11, align 8, !tbaa !40   ; 3 uses
  %.not.i.i96.i69 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i96.i69, label %_ZN7testing7MessageD2Ev.exit98.i64, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97.i70

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97.i70: ; preds = %bb.cg
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !11
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(128) %i.jz) #15, !inline_history !72
  br label %_ZN7testing7MessageD2Ev.exit98.i64

_ZN7testing7MessageD2Ev.exit98.i64:               ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97.i70, %bb.cg, %bb.cd
  %.pn26.pn.i65 = phi { ptr, i32 } [ %i.jw, %bb.cd ], [ %.pn26.i68, %bb.cg ], [ %.pn26.i68, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97.i70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #15
  br label %bb.cj

bb.ch:                                            ; preds = %_ZN7testing7MessageD2Ev.exit95.i73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i63
  %i.kd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !41 ; 4 uses
  %.not.i.i99.i74 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i99.i74, label %_ZN7testing15AssertionResultD2Ev.exit103.i77, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !36 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 16 ; 2 uses
  %i.kh = icmp eq ptr %i.kf, %i.kg
  br i1 %i.kh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101.i76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100.i75: ; preds = %bb.ci
  %i.ki = load i64, ptr %i.kg, align 8, !tbaa !38
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.kj) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101.i76

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101.i76: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100.i75
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit103.i77

_ZN7testing15AssertionResultD2Ev.exit103.i77:     ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101.i76, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %"_ZZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_138DemangleRust_FunctionAtCrateLevel_Test8TestBodyEvENK3$_1clEv.exit"

bb.cj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit98.i64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i58
  %.pn26.pn.pn.i59 = phi { ptr, i32 } [ %.pn26.pn.i65, %_ZN7testing7MessageD2Ev.exit98.i64 ], [ %i.ji, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i58 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.bw, %bb.bh
  %.pn26.pn.pn.pn.i5 = phi { ptr, i32 } [ %.pn26.pn.pn.i59, %bb.cj ], [ %.pn22.pn.pn.i32, %bb.bw ], [ %.pn.pn.pn.i4, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %common.resume

"_ZZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_138DemangleRust_FunctionAtCrateLevel_Test8TestBodyEvENK3$_1clEv.exit": ; preds = %_ZN7testing15AssertionResultD2Ev.exit.i23, %_ZN7testing15AssertionResultD2Ev.exit69.i50, %_ZN7testing15AssertionResultD2Ev.exit103.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_118ResultOfDemanglingB5cxx11EPKcm(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.c = add i64 %2, 1                            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !45
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.c, i8 noundef signext 126)
  %i.e = load ptr, ptr %3, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %2
  store i8 127, ptr %i.f, align 1, !tbaa !38
  %i.g = load ptr, ptr %3, align 8, !tbaa !36
  %i.h = invoke noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal26DemangleRustSymbolEncodingEPKcPcm(ptr noundef %1, ptr noundef nonnull %i.g, i64 noundef %2)
          to label %bb.a unwind label %6

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  br i1 %i.h, label %bb.b, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef nonnull align 1 dereferenceable(12) @.str.160, i64 12, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 12, ptr %i.j, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.k, align 4, !tbaa !38
  br label %bb.t

6:                                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %3, align 8, !tbaa !36     ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !38
  %.not = icmp eq i8 %i.n, 127
  br i1 %.not, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37, !noalias !93
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.q, ptr %5, align 8, !tbaa !45, !alias.scope !93
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %i.p) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15, !noalias !93
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !46, !noalias !93
  %i.r = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.r, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.c
  %i.s = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc15 unwind label %bb.l   ; 2 uses

.noexc15:                                         ; preds = %.noexc10.i.i
  store ptr %i.s, ptr %5, align 8, !tbaa !36, !alias.scope !93
  %i.t = load i64, ptr %i.b, align 8, !tbaa !46, !noalias !93
  store i64 %i.t, ptr %i.q, align 8, !tbaa !38, !alias.scope !93
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc15, %bb.c
  %i.u = phi ptr [ %i.s, %.noexc15 ], [ %i.q, %bb.c ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.v = load i8, ptr %i.l, align 1, !tbaa !38
  store i8 %i.v, ptr %i.u, align 1, !tbaa !38
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull align 1 %i.l, i64 %spec.select.i.i.i, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.w = load i64, ptr %i.b, align 8, !tbaa !46, !noalias !93 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !37, !alias.scope !93
  %i.y = load ptr, ptr %5, align 8, !tbaa !36, !alias.scope !93
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15, !noalias !93
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.170, i64 noundef 26)
          to label %.noexc16 unwind label %bb.m   ; 6 uses

.noexc16:                                         ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !45, !alias.scope !94
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 5 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %.noexc16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !37 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.ai, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc16
  store ptr %i.ac, ptr %4, align 8, !tbaa !36, !alias.scope !94
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !38
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !38, !alias.scope !94
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !37
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %i.ak = phi i64 [ %i.ag, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !37, !alias.scope !94
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !36
  store i64 0, ptr %i.al, align 8, !tbaa !37
  store i8 0, ptr %i.ad, align 8, !tbaa !38
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.an = load i64, ptr %i.am, align 8, !tbaa !37, !noalias !95
  %i.ao = add i64 %i.an, -4611686018427387901
  %i.ap = icmp ult i64 %i.ao, 3
  br i1 %i.ap, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.172) #18
          to label %.noexc20 unwind label %bb.n

.noexc20:                                         ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.h
  %i.aq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.171, i64 noundef 3)
          to label %.noexc21 unwind label %bb.n   ; 6 uses

.noexc21:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !45, !alias.scope !95
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !36 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

bb.j:                                             ; preds = %.noexc21
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !37 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %.noexc21
  store ptr %i.as, ptr %0, align 8, !tbaa !36, !alias.scope !95
  %i.az = load i64, ptr %i.at, align 8, !tbaa !38
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !38, !alias.scope !95
  %.phi.trans.insert.i18 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.pre.i19 = load i64, ptr %.phi.trans.insert.i18, align 8, !tbaa !37
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.j
  %i.ba = phi i64 [ %i.aw, %bb.j ], [ %.pre.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !37, !alias.scope !95
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !36
  store i64 0, ptr %i.bb, align 8, !tbaa !37
  store i8 0, ptr %i.at, align 8, !tbaa !38
  %i.bd = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ab
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.k
  %i.bf = load i64, ptr %i.ab, align 8, !tbaa !38
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  %i.bh = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.q
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bj = load i64, ptr %i.q, align 8, !tbaa !38
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.t

bb.l:                                             ; preds = %.noexc10.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.m:                                             ; preds = %bb.f
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.i
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.ab
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.n
  %i.bq = load i64, ptr %i.ab, align 8, !tbaa !38
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.m ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.bn, %bb.n ] ; 2 uses
  %i.bs = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.q
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.bu = load i64, ptr %i.q, align 8, !tbaa !38
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.l ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.u

bb.o:                                             ; preds = %bb.b
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bw, ptr %0, align 8, !tbaa !45
  %i.bx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.bx, ptr %i.a, align 8, !tbaa !46
  %i.by = icmp ugt i64 %i.bx, 15
  br i1 %i.by, label %.noexc.i33, label %._crit_edge.i.i32

.noexc.i33:                                       ; preds = %bb.o
  %i.bz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc35 unwind label %bb.s   ; 2 uses

.noexc35:                                         ; preds = %.noexc.i33
  store ptr %i.bz, ptr %0, align 8, !tbaa !36
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !46
  store i64 %i.ca, ptr %i.bw, align 8, !tbaa !38
  br label %._crit_edge.i.i32

._crit_edge.i.i32:                                ; preds = %.noexc35, %bb.o
  %i.cb = phi ptr [ %i.bz, %.noexc35 ], [ %i.bw, %bb.o ] ; 2 uses
  switch i64 %i.bx, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i32
  %i.cc = load i8, ptr %i.l, align 1, !tbaa !38
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !38
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cb, ptr nonnull align 1 %i.l, i64 %i.bx, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i32
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !37
  %i.cf = load ptr, ptr %0, align 8, !tbaa !36
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store i8 0, ptr %i.cg, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.t

bb.s:                                             ; preds = %.noexc.i33
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %._crit_edge.i.i
  %i.ci = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.d
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.t
  %i.ck = load i64, ptr %i.d, align 8, !tbaa !38
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void

bb.u:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %6
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ %i.ch, %bb.s ], [ %7, %6 ]
  %i.cm = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.d
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.u
  %i.co = load i64, ptr %i.d, align 8, !tbaa !38
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #0

declare void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENS_15AssertionResultES9_S9_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.b = load ptr, ptr %4, align 8, !tbaa !42, !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !100
  store ptr %i.b, ptr %i.a, align 8, !tbaa !42, !noalias !101
  invoke void @_ZN7testing13PrintToStringIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !100
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %6, align 8, !tbaa !36     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.f = load i64, ptr %i.d, align 8, !tbaa !38
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.h = load ptr, ptr %5, align 8, !tbaa !36     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !38
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void

bb.d:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.e:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %6, align 8, !tbaa !36     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !38
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.d
  %.pn = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.n, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.t = load ptr, ptr %5, align 8, !tbaa !36     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.w = load i64, ptr %i.u, align 8, !tbaa !38
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  resume { ptr, i32 } %.pn
}

declare void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !37
  invoke void @_ZN7testing8internal13PrintStringToESt17basic_string_viewIcSt11char_traitsIcEEPSo(i64 %i.d, ptr %i.b, ptr noundef nonnull %i.a)
          to label %_ZN7testing8internal21UniversalTersePrinterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5PrintERKS7_PSo.exit unwind label %bb.e

_ZN7testing8internal21UniversalTersePrinterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5PrintERKS7_PSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !45, !alias.scope !108
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !37, !alias.scope !108
  store i8 0, ptr %i.e, align 8, !tbaa !38, !alias.scope !108
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48, !noalias !108 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !noalias !108 ; 2 uses
  %i.k = icmp ugt ptr %i.h, %i.j
  %.08.i.i.i = select i1 %i.k, ptr %i.h, ptr %i.j ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5PrintERKS7_PSo.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49, !noalias !108 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !36, !alias.scope !108 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.e
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.e, align 8, !tbaa !38, !alias.scope !108
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #16
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5PrintERKS7_PSo.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %2, align 8, !tbaa !11
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %2, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !11
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ad, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !38
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #16
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ad, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #15
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.al, ptr %2, align 8, !tbaa !11
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.an = getelementptr i8, ptr %i.al, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
end_hunk_0
