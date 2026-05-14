inline.NumInlined: 1665
inline.NumDeleted: 778
begin_hunk_0_@_ZN6google8protobuf2io7Printer9ValueImplILb1EEaSEOS4_:bb.a
  store i8 0, ptr %i.u, align 1, !tbaa !26
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %i.f, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !23
  store i64 %i.x, ptr %i.v, align 8, !tbaa !23
  %i.y = load i64, ptr %i.l, align 8, !tbaa !26
  store i64 %i.y, ptr %i.i, align 8, !tbaa !26
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.z = load i64, ptr %i.i, align 8, !tbaa !26
  store ptr %i.k, ptr %i.f, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !23
  %i.ad = load i64, ptr %i.l, align 8, !tbaa !26
  store i64 %i.ad, ptr %i.i, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.h, ptr %i.g, align 8, !tbaa !27
  store i64 %i.z, ptr %i.l, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.l, ptr %i.g, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.ae = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.h, %bb.i ], [ %i.l, %bb.j ], [ %i.k, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.af, align 8, !tbaa !23
  store i8 0, ptr %i.ae, align 1, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !139, !range !128, !noundef !130
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.ah, ptr %i.ai, align 8, !tbaa !139
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEaSEOSB_ENUlOT_T0_E_clIRS7_St17integral_constantImLm0EEEEDaSE_SF_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !181    ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !137
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !27   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.g = icmp eq ptr %i.e, %i.f
  %i.h = load ptr, ptr %1, align 8, !tbaa !27     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.j = icmp eq ptr %i.h, %i.i                   ; 2 uses
  br i1 %i.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.j, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %.not21.i = icmp eq ptr %1, %i.a
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !86

bb.d:                                             ; preds = %bb.c
  switch i64 %i.l, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %i.h, align 1, !tbaa !26
  store i8 %i.n, ptr %i.e, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr align 1 %i.h, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.o = load i64, ptr %i.k, align 8, !tbaa !23   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !23
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !26
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %i.a, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !23
  store i64 %i.u, ptr %i.s, align 8, !tbaa !23
  %i.v = load i64, ptr %i.i, align 8, !tbaa !26
  store i64 %i.v, ptr %i.f, align 8, !tbaa !26
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.w = load i64, ptr %i.f, align 8, !tbaa !26
  store ptr %i.h, ptr %i.a, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !23
  %i.aa = load i64, ptr %i.i, align 8, !tbaa !26
  store i64 %i.aa, ptr %i.f, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.e, ptr %1, align 8, !tbaa !27
  store i64 %i.w, ptr %i.i, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.i, ptr %1, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.ab = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.e, %bb.g ], [ %i.i, %bb.h ], [ %i.h, %bb.c ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ac, align 8, !tbaa !23
  store i8 0, ptr %i.ab, align 1, !tbaa !26
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !170 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEE8_M_resetEv.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(33) %i.a, ptr noundef nonnull align 8 dereferenceable(33) %i.a, i32 noundef 3)
          to label %_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEE8_M_resetEv.exit.i unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #26
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEE8_M_resetEv.exit.i: ; preds = %bb.j, %bb.i
  store i8 -1, ptr %i.b, align 8, !tbaa !137
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !21
  %i.ai = load ptr, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.l:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEE8_M_resetEv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !23 ; 2 uses
  %i.an = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false)
  br label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEJS7_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEE8_M_resetEv.exit.i
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !27
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !26
  store i64 %i.ap, ptr %i.ad, align 8, !tbaa !26
  br label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEJS7_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit

_ZNSt8__detail9__variant9__emplaceILm0ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEJS7_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !23
  store ptr %i.aj, ptr %1, align 8, !tbaa !27
  store i64 0, ptr %i.aq, align 8, !tbaa !23
  store i8 0, ptr %i.aj, align 8, !tbaa !26
  store i8 0, ptr %i.b, align 8, !tbaa !137
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEJS7_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEaSEOSB_ENUlOT_T0_E_clIRSA_St17integral_constantImLm1EEEEDaSE_SF_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 16    ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !181    ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !137
  switch i8 %i.c, label %bb.g [
    i8 1, label %bb.b
    i8 0, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !184
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !170  ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFbvEEC2EOS1_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !186
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFbvEEC2EOS1_.exit.i

_ZNSt8functionIFbvEEC2EOS1_.exit.i:               ; preds = %bb.c, %bb.b
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %2, align 16, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !186
  store <16 x i8> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.a, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !187  ; 3 uses
  store ptr %i.k, ptr %i.i, align 16, !tbaa !187
  store ptr %i.h, ptr %i.j, align 8, !tbaa !187
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !187
  store ptr %i.m, ptr %i.d, align 8, !tbaa !187
  store ptr %i.f, ptr %i.l, align 8, !tbaa !187
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt8functionIFbvEEaSEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt8functionIFbvEEC2EOS1_.exit.i
  %i.n = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFbvEEaSEOS1_.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #26
  unreachable

_ZNSt8functionIFbvEEaSEOS1_.exit:                 ; preds = %_ZNSt8functionIFbvEEC2EOS1_.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEE8_M_resetEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.t = load i64, ptr %i.r, align 8, !tbaa !26
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #25
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEE8_M_resetEv.exit.i

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !170  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEE8_M_resetEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(33) %i.a, ptr noundef nonnull align 8 dereferenceable(33) %i.a, i32 noundef 3)
          to label %_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEE8_M_resetEv.exit.i unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #26
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEE8_M_resetEv.exit.i: ; preds = %bb.f, %bb.h, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  store i8 -1, ptr %i.b, align 8, !tbaa !137
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.a, i8 0, i64 24, i1 false)
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !184
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !184
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !170
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEE8_M_resetEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !186
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !170
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !170
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit

_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEE8_M_resetEv.exit.i, %bb.j
  store i8 1, ptr %i.b, align 8, !tbaa !137
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit, %_ZNSt8functionIFbvEEaSEOS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE14_M_move_assignEOS5_(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(65) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !147, !range !128, !noundef !130
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load i8, ptr %i.d, align 8, !range !128
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !166    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !169
  %i.j = load <2 x ptr>, ptr %1, align 8, !tbaa !188
  store <2 x ptr> %i.j, ptr %0, align 8, !tbaa !188
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !169
  store ptr %i.l, ptr %i.h, align 8, !tbaa !169
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = ptrtoint ptr %i.g to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.o) #25
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i

_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i:               ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !27   ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = icmp eq ptr %i.r, %i.s
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !27   ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.w = icmp eq ptr %i.u, %i.v                   ; 2 uses
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i
  br i1 %i.w, label %bb.d, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i
  br i1 %i.w, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !23   ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %.not21.i.i = icmp eq ptr %1, %0
  br i1 %.not21.i.i, label %_ZN6google8protobuf2io7Printer16AnnotationRecordaSEOS3_.exit, label %bb.e, !prof !86

bb.e:                                             ; preds = %bb.d
  switch i64 %i.y, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !26
  store i8 %i.aa, ptr %i.r, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.u, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ab = load i64, ptr %i.x, align 8, !tbaa !23  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !23
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !26
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !27
  br label %_ZN6google8protobuf2io7Printer16AnnotationRecordaSEOS3_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.u, ptr %i.p, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !23
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !23
  %i.ai = load i64, ptr %i.v, align 8, !tbaa !26
  store i64 %i.ai, ptr %i.s, align 8, !tbaa !26
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.aj = load i64, ptr %i.s, align 8, !tbaa !26
  store ptr %i.u, ptr %i.p, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.al, ptr %i.am, align 8, !tbaa !23
  %i.an = load i64, ptr %i.v, align 8, !tbaa !26
  store i64 %i.an, ptr %i.s, align 8, !tbaa !26
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.r, ptr %i.q, align 8, !tbaa !27
  store i64 %i.aj, ptr %i.v, align 8, !tbaa !26
  br label %_ZN6google8protobuf2io7Printer16AnnotationRecordaSEOS3_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.v, ptr %i.q, align 8, !tbaa !27
  br label %_ZN6google8protobuf2io7Printer16AnnotationRecordaSEOS3_.exit

_ZN6google8protobuf2io7Printer16AnnotationRecordaSEOS3_.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.h, %bb.i
  %i.ao = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.r, %bb.h ], [ %i.v, %bb.i ], [ %i.u, %bb.d ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 0, ptr %i.ap, align 8, !tbaa !23
  store i8 0, ptr %i.ao, align 1, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
end_hunk_0
begin_hunk_1_@_ZSt20__throw_length_errorPKc

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io7Printer3SubC2EOS3_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !21
  %i.b = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !27
  %i.i = load i64, ptr %i.c, align 8, !tbaa !26
  store i64 %i.i, ptr %i.a, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !23
  store ptr %i.c, ptr %1, align 8, !tbaa !27
  store i64 0, ptr %i.j, align 8, !tbaa !23
  store i8 0, ptr %i.c, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i8 -1, ptr %i.o, align 8, !tbaa !137
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !137
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.s, ptr %i.m, align 8, !tbaa !21
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !27   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !23   ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.t, ptr %i.m, align 8, !tbaa !27
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !26
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !26
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !23
  store ptr %i.u, ptr %i.n, align 8, !tbaa !27
  store i64 0, ptr %i.ab, align 8, !tbaa !23
  store i8 0, ptr %i.u, align 8, !tbaa !26
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.m, i8 0, i64 24, i1 false)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !184
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !184
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !170
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.m, ptr noundef nonnull align 8 dereferenceable(73) %i.n, i64 16, i1 false), !tbaa.struct !186
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !170
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !170
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i

_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i: ; preds = %bb.f, %bb.e, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i
  %i.al = load i8, ptr %i.p, align 8, !tbaa !137
  store i8 %i.al, ptr %i.o, align 8, !tbaa !137
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !21
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !27 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.at = load i64, ptr %i.as, align 8, !tbaa !23 ; 2 uses
  %i.au = icmp ult i64 %i.at, 16
  tail call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !27
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !26
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !26
  br label %_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit

_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !23
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !23
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !27
  store i64 0, ptr %i.ax, align 8, !tbaa !23
  store i8 0, ptr %i.aq, align 8, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !139, !range !128, !noundef !130
  store i8 %i.bc, ptr %i.ba, align 8, !tbaa !139
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 0, ptr %i.be, align 8, !tbaa !147
  %i.bf = load i8, ptr %i.bd, align 8, !tbaa !147, !range !128, !noundef !130
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.h, label %_ZNSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEEC2EOS5_.exit

bb.h:                                             ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bj = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !188
  store <2 x ptr> %i.bj, ptr %i.bi, align 8, !tbaa !188
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !169
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !169
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bh, i8 0, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !21
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !27 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 5 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !23 ; 2 uses
  %i.bv = icmp ult i64 %i.bu, 16
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i64 %i.bu, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.br, i64 %i.bw, i1 false)
  br label %_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !27
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !26
  store i64 %i.bx, ptr %i.bp, align 8, !tbaa !26
  br label %_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !23
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !23
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !27
  store i64 0, ptr %i.by, align 8, !tbaa !23
  store i8 0, ptr %i.br, align 8, !tbaa !26
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cd = load i64, ptr %i.cc, align 8
  store i64 %i.cd, ptr %i.cb, align 8
  store i8 1, ptr %i.be, align 8, !tbaa !147
  br label %_ZNSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEEC2EOS5_.exit

_ZNSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEEC2EOS5_.exit: ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit, %_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(184) ptr @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_EEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4.i.sroa.0 = alloca <16 x i8>, align 16  ; 4 uses
  %.sroa.4 = alloca %union.anon, align 8          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.e = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23   ; 4 uses
  %i.j = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.f, ptr %1, align 8, !tbaa !27
  store i64 0, ptr %i.l, align 8, !tbaa !23
  store i8 0, ptr %i.f, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !21
  %i.n = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b
  %i.o = load i64, ptr %i.f, align 8, !tbaa !26
  store i64 %i.o, ptr %.sroa.4, align 8, !tbaa !26
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.f, ptr %1, align 8, !tbaa !27
  store i64 0, ptr %i.p, align 8, !tbaa !23
  store i8 0, ptr %i.f, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.b, align 8, !tbaa !27
  %.sroa.4.0..sroa.4.16. = load i64, ptr %.sroa.4, align 8, !tbaa !26
  store i64 %.sroa.4.0..sroa.4.16., ptr %i.q, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread
  %i.r = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.sroa.0)
  %i.t = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !23   ; 3 uses
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.sroa.4.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.y, i1 false)
  store ptr %i.u, ptr %2, align 8, !tbaa !27
  store i64 0, ptr %i.w, align 8, !tbaa !23
  store i8 0, ptr %i.u, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.aa = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 16 dereferenceable(1) %.sroa.4.i.sroa.0, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ab = load i64, ptr %i.u, align 8, !tbaa !26
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !23
  store ptr %i.u, ptr %2, align 8, !tbaa !27
  store i64 0, ptr %.phi.trans.insert.i.i, align 8, !tbaa !23
  store i8 0, ptr %i.u, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !26, !alias.scope !190
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i
  %.sink.i = phi ptr [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  %i.ad = phi i64 [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sink.i, ptr %i.ae, align 8, !tbaa !21, !alias.scope !193
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !23, !alias.scope !190
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 0, ptr %i.ag, align 8, !tbaa !137, !alias.scope !190
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 0, ptr %i.aj, align 8, !tbaa !23
  store i8 0, ptr %i.ai, align 8, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i8 0, ptr %i.ak, align 8, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.0)
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i8 0, ptr %i.al, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 184 ; 2 uses
  store ptr %i.an, ptr %i.a, align 8, !tbaa !115
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.pre9 = load ptr, ptr %i.a, align 8, !tbaa !172
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8
  %i.ao = phi ptr [ %.pre9, %bb.c ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -184
  ret ptr %i.ap
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.3 = alloca { i64, %union.anon }, align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !114    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775736
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 184                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 50127021939428129)
  %i.l = select i1 %i.j, i64 50127021939428129, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.l, 184
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28
  br label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  %i.s = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !23   ; 5 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  %.sroa.3.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.3.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.w, ptr %.sroa.3, align 16, !tbaa !23
  store ptr %i.t, ptr %2, align 8, !tbaa !27
  store i64 0, ptr %i.z, align 8, !tbaa !23
  store i8 0, ptr %i.t, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store ptr %i.aa, ptr %i.r, align 8, !tbaa !21
  %i.ab = add nuw nsw i64 %i.w, 1
  %.sroa.3.8..sroa_idx65 = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.3.8..sroa_idx65, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load <2 x i64>, ptr %.phi.trans.insert, align 8, !tbaa !26
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !23
  store <2 x i64> %i.ad, ptr %.sroa.3, align 16, !tbaa !26
  store ptr %i.t, ptr %2, align 8, !tbaa !27
  store i64 0, ptr %i.ac, align 8, !tbaa !23
  store i8 0, ptr %i.t, align 8, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.s, ptr %i.r, align 8, !tbaa !27
  %.sroa.3.8..sroa_idx66 = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 8
  %.sroa.3.8..sroa.3.16. = load i64, ptr %.sroa.3.8..sroa_idx66, align 8, !tbaa !26
  store i64 %.sroa.3.8..sroa.3.16., ptr %i.ae, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread
  %i.af = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !23
  store i64 0, ptr %.sroa.3, align 16, !tbaa !23
  %i.ah = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 3 uses
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !23 ; 3 uses
  %i.an = add nuw nsw i64 %i.am, 1
  store ptr %i.ai, ptr %3, align 8, !tbaa !27
  store i64 0, ptr %i.al, align 8, !tbaa !23
  %i.ao = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.ao)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.an, i1 false)
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ap = load i64, ptr %i.ai, align 8, !tbaa !26
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !23
  store ptr %i.ai, ptr %3, align 8, !tbaa !27
  store i64 0, ptr %.phi.trans.insert.i.i, align 8, !tbaa !23
  store i64 %i.ap, ptr %i.ak, align 8, !tbaa !26, !alias.scope !195
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i
  %.sink.i = phi ptr [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  %i.aq = phi i64 [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  store i8 0, ptr %i.ai, align 8, !tbaa !26
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %.sink.i, ptr %i.ar, align 8, !tbaa !21, !alias.scope !198
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !23, !alias.scope !195
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store i8 0, ptr %i.at, align 8, !tbaa !137, !alias.scope !195
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 88 ; 2 uses
  store ptr %i.av, ptr %i.au, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  store i64 0, ptr %i.aw, align 8, !tbaa !23
  store i8 0, ptr %i.av, align 8, !tbaa !26
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  store i8 0, ptr %i.ax, align 8, !tbaa !139
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  store i8 0, ptr %i.ay, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %i.c, %bb.d ] ; 3 uses
  tail call void @_ZN6google8protobuf2io7Printer3SubC2EOS3_(ptr noundef nonnull align 8 dereferenceable(184) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(184) %.0911.i.i.i) #24
  tail call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.0911.i.i.i) #24
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 184 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 184 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.az, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !189

_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %bb.d
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.ba, %.lr.ph.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 184 ; 2 uses
  %.not10.i.i.i31 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i31, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37, label %.lr.ph.i.i.i32

.lr.ph.i.i.i32:                                   ; preds = %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i32
  %.012.i.i.i33 = phi ptr [ %i.bd, %.lr.ph.i.i.i32 ], [ %i.bb, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i34 = phi ptr [ %i.bc, %.lr.ph.i.i.i32 ], [ %1, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 3 uses
  tail call void @_ZN6google8protobuf2io7Printer3SubC2EOS3_(ptr noundef nonnull align 8 dereferenceable(184) %.012.i.i.i33, ptr noundef nonnull align 8 dereferenceable(184) %.0911.i.i.i34) #24
  tail call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.0911.i.i.i34) #24
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i34, i64 184 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i33, i64 184 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bc, %i.b
  br i1 %.not.i.i.i35, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37, label %.lr.ph.i.i.i32, !llvm.loop !189

_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37: ; preds = %.lr.ph.i.i.i32, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i36 = phi ptr [ %i.bb, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.bd, %.lr.ph.i.i.i32 ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i38 = icmp eq ptr %i.c, null
  br i1 %.not.i38, label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !118
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bh) #25
  br label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37, %bb.e
  store ptr %i.q, ptr %0, align 8, !tbaa !114
  store ptr %.0.lcssa.i.i.i36, ptr %i.a, align 8, !tbaa !115
  %i.bi = getelementptr inbounds nuw [184 x i8], ptr %i.q, i64 %i.l
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !118
  ret void
}

end_hunk_1
