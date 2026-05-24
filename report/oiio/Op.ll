inline.NumInlined: 1842
inline.NumDeleted: 874
begin_hunk_0_@_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !24

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZNK16OpenColorIO_v2_56OpData21getSimplerReplacementERSt6vectorISt10shared_ptrIS0_ESaIS3_EE(ptr nonnull readnone align 8 captures(none) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_56OpData6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(168) %0)
  %i.f = load ptr, ptr %1, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(168) %1)
  %i.j = icmp eq i32 %i.e, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.j, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNK16OpenColorIO_v2_56OpData5getIDB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr @_ZN16OpenColorIO_v2_511METADATA_IDE, align 8, !tbaa !25
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK16OpenColorIO_v2_518FormatMetadataImpl23getAttributeValueStringB5cxx11EPKc(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef %i.b) #23
  ret ptr %i.c
}

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK16OpenColorIO_v2_518FormatMetadataImpl23getAttributeValueStringB5cxx11EPKc(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_56OpData5setIDERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %1, align 8, !tbaa !27
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImpl5setIDEPKc(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef %i.b) #23
  ret void
}

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_518FormatMetadataImpl5setIDEPKc(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNK16OpenColorIO_v2_56OpData7getNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr @_ZN16OpenColorIO_v2_513METADATA_NAMEE, align 8, !tbaa !25
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK16OpenColorIO_v2_518FormatMetadataImpl23getAttributeValueStringB5cxx11EPKc(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef %i.b) #23
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_56OpData7setNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %1, align 8, !tbaa !27
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImpl7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef %i.b) #23
  ret void
}

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_518FormatMetadataImpl7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_6OpDataES2_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN16OpenColorIO_v2_511GetTypeNameENS_6OpData4TypeE(i32 noundef %0) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i32 %0, 14
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.15)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #23
  resume { ptr, i32 } %i.c

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN16OpenColorIO_v2_511GetTypeNameENS_6OpData4TypeE, i64 %i.d
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_52Op14canCombineWithERSt10shared_ptrIKS0_E(ptr nonnull readnone align 8 captures(none) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress noreturn uwtable
define hidden void @_ZNK16OpenColorIO_v2_52Op11combineWithERNS_10OpRcPtrVecERSt10shared_ptrIKS0_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull readnone align 8 captures(none) %1, ptr nonnull readnone align 8 captures(none) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.16, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.b = load ptr, ptr %0, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = load ptr, ptr %4, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !31
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.e, i64 noundef %i.g)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.17, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.j = load ptr, ptr %4, align 8, !tbaa !27     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %i.m = load i64, ptr %i.k, align 8, !tbaa !23
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.18, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.q, ptr %5, align 8, !tbaa !38, !alias.scope !39
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !31, !alias.scope !39
  store i8 0, ptr %i.q, align 8, !tbaa !23, !alias.scope !39
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %7 = load ptr, ptr %6, align 8, !tbaa !40, !noalias !39 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %7, null
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !noalias !39 ; 2 uses
  %8 = icmp ugt ptr %7, %i.t
  %.08.i.i.i = select i1 %8, ptr %7, ptr %i.t     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44, !noalias !39 ; 2 uses
  %i.w = ptrtoint ptr %.08.i.i.i to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.v, i64 noundef %i.y)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %5, align 8, !tbaa !27, !alias.scope !39 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.q
  br i1 %i.ac, label %.body.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !23, !alias.scope !39
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #26
  br label %.body.thread

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.ag = load ptr, ptr %5, align 8, !tbaa !27
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef %i.ag)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %bb.m unwind label %bb.j

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

bb.i:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !23
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.h ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ], [ %i.aj, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.l

bb.j:                                             ; preds = %bb.f, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %.0 = phi i1 [ false, %bb.f ], [ true, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 2 uses
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aq = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.q
  br i1 %i.ar, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.j
  %i.as = load i64, ptr %i.q, align 8, !tbaa !23
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.k, label %bb.l

.body.thread:                                     ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.k

.body:                                            ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %.body.thread, %.body
  %.pn922 = phi { ptr, i32 } [ %i.aa, %.body.thread ], [ %i.ap, %.body ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ]
  call void @__cxa_free_exception(ptr %i.p) #23
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %.body, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %bb.g
  %.pn9.pn = phi { ptr, i32 } [ %.pn922, %bb.k ], [ %i.ap, %.body ], [ %i.ah, %bb.g ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ]
  %i.au = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.au, ptr %3, align 8, !tbaa !7
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aw = getelementptr i8, ptr %i.au, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %3, i64 %i.ax
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.az, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !27 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !23
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.az, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bg) #23
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bh) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn9.pn

bb.m:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #7 align 2

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_52Op8validateEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(168) %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_52Op9isDynamicEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_52Op18hasDynamicPropertyENS_19DynamicPropertyTypeE(ptr nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #0 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress noreturn uwtable
define hidden void @_ZNK16OpenColorIO_v2_52Op18getDynamicPropertyENS_19DynamicPropertyTypeE(ptr dead_on_unwind noalias readnone sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr nonnull readnone align 8 captures(none) %1, i32 %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_52Op22getIdentityReplacementEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.15") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.9", align 8 ; 13 uses
  %3 = alloca %"class.OpenColorIO_v2_5::OpRcPtrVec", align 8 ; 11 uses
  %4 = alloca %"class.std::shared_ptr.12", align 8 ; 9 uses
  %5 = alloca %"class.std::shared_ptr.23", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::allocator", align 1    ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.9") align 8 %2, ptr noundef nonnull align 8 dereferenceable(168) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_510OpRcPtrVec25validateDynamicPropertiesEv:bb.a
  br i1 %.not.i.i.i.i57, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.iz = load i32, ptr %i.ix, align 4, !tbaa !3
  %i.ja = add nsw i32 %i.iz, 1
  store i32 %i.ja, ptr %i.ix, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit58

bb.bz:                                            ; preds = %bb.bx
  %i.jb = atomicrmw volatile add ptr %i.ix, i32 1 acq_rel, align 4 ; 0 uses
  %.pre237 = load ptr, ptr %24, align 8, !tbaa !245
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit58

_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit58: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55, %bb.by, %bb.bz
  %i.jc = phi ptr [ %i.iv, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55 ], [ %i.iv, %bb.by ], [ %.pre237, %bb.bz ] ; 4 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !7
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 160
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = invoke noundef zeroext i1 %i.jf(ptr noundef nonnull align 8 dereferenceable(24) %i.jc, i32 noundef 3)
          to label %.noexc unwind label %bb.hu, !inline_history !286

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit58
  br i1 %i.jg, label %bb.ca, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_33DynamicPropertyGradingPrimaryImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.exit

bb.ca:                                            ; preds = %.noexc
  %i.jh = load ptr, ptr %16, align 8, !tbaa !287
  %.not.i = icmp eq ptr %i.jh, null
  br i1 %.not.i, label %bb.cb, label %bb.ct

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.ji = load ptr, ptr %i.jc, align 8, !tbaa !7
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 168
  %i.jk = load ptr, ptr %i.jj, align 8
  invoke void %i.jk(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %i.jc, i32 noundef 3)
          to label %.noexc59 unwind label %bb.hu, !inline_history !286

.noexc59:                                         ; preds = %bb.cb
  %i.jl = load ptr, ptr %10, align 8, !tbaa !290, !noalias !293 ; 2 uses
  %i.jm = icmp eq ptr %i.jl, null
  br i1 %i.jm, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_533DynamicPropertyGradingPrimaryImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i, label %bb.cc

bb.cc:                                            ; preds = %.noexc59
  %i.jn = call ptr @__dynamic_cast(ptr nonnull %i.jl, ptr nonnull @_ZTIN16OpenColorIO_v2_515DynamicPropertyE, ptr nonnull @_ZTIN16OpenColorIO_v2_533DynamicPropertyGradingPrimaryImplE, i64 0) #23, !noalias !293 ; 4 uses
  %.not.not.i.i = icmp eq ptr %i.jn, null
  br i1 %.not.not.i.i, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_533DynamicPropertyGradingPrimaryImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jo = load ptr, ptr %i.v, align 8, !tbaa !21, !noalias !293 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i.i.i, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_533DynamicPropertyGradingPrimaryImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 3 uses
  %i.jq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23, !noalias !293
  %.not.i.i.i.i.i.i = icmp eq i8 %i.jq, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jr = load i32, ptr %i.jp, align 4, !tbaa !3, !noalias !293
  %i.js = add nsw i32 %i.jr, 1
  store i32 %i.js, ptr %i.jp, align 4, !tbaa !3, !noalias !293
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_533DynamicPropertyGradingPrimaryImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i

bb.cg:                                            ; preds = %bb.ce
  %i.jt = atomicrmw volatile add ptr %i.jp, i32 1 acq_rel, align 4, !noalias !293 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_533DynamicPropertyGradingPrimaryImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_533DynamicPropertyGradingPrimaryImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i: ; preds = %bb.cg, %bb.cf, %bb.cd, %bb.cc, %.noexc59
  %.sroa.0.0.i = phi ptr [ %i.jn, %bb.cf ], [ %i.jn, %bb.cd ], [ %i.jn, %bb.cg ], [ null, %bb.cc ], [ null, %.noexc59 ]
  %.sroa.6.0.i = phi ptr [ %i.jo, %bb.cf ], [ null, %bb.cd ], [ %i.jo, %bb.cg ], [ null, %bb.cc ], [ null, %.noexc59 ]
  store ptr %.sroa.0.0.i, ptr %16, align 8, !tbaa !296
  %i.ju = load ptr, ptr %i.w, align 8, !tbaa !21  ; 8 uses
  store ptr %.sroa.6.0.i, ptr %i.w, align 8, !tbaa !21
  %.not.i.i.i.i10.i = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i.i10.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_533DynamicPropertyGradingPrimaryImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ch

bb.ch:                                            ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_533DynamicPropertyGradingPrimaryImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8 ; 4 uses
  %i.jw = load atomic i64, ptr %i.jv acquire, align 8 ; 2 uses
  %i.jx = icmp eq i64 %i.jw, 4294967297
  %i.jy = trunc i64 %i.jw to i32                  ; 2 uses
  br i1 %i.jx, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store i32 0, ptr %i.jv, align 8, !tbaa !12
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 12
  store i32 0, ptr %i.jz, align 4, !tbaa !14
  %i.ka = load ptr, ptr %i.ju, align 8, !tbaa !7
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(16) %i.ju) #23, !inline_history !297
  %i.kd = load ptr, ptr %i.ju, align 8, !tbaa !7
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(16) %i.ju) #23, !inline_history !297
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_533DynamicPropertyGradingPrimaryImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.cj:                                            ; preds = %bb.ch
  %i.kg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i11.i = icmp eq i8 %i.kg, 0
  br i1 %.not.i.i.i.i.i11.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kh = add nsw i32 %i.jy, -1
  store i32 %i.kh, ptr %i.jv, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.cl:                                            ; preds = %bb.cj
  %i.ki = atomicrmw volatile add ptr %i.jv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.cl, %bb.ck
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.jy, %bb.ck ], [ %i.ki, %bb.cl ]
  %i.kj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.kj, label %bb.cm, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_533DynamicPropertyGradingPrimaryImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !24

bb.cm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ju) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_533DynamicPropertyGradingPrimaryImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN16OpenColorIO_v2_533DynamicPropertyGradingPrimaryImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.cm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ci, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_533DynamicPropertyGradingPrimaryImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i
  %i.kk = load ptr, ptr %i.v, align 8, !tbaa !21  ; 8 uses
  %.not.i.i12.i = icmp eq ptr %i.kk, null
  br i1 %.not.i.i12.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_533DynamicPropertyGradingPrimaryImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8 ; 4 uses
  %i.km = load atomic i64, ptr %i.kl acquire, align 8 ; 2 uses
  %i.kn = icmp eq i64 %i.km, 4294967297
  %i.ko = trunc i64 %i.km to i32                  ; 2 uses
  br i1 %i.kn, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  store i32 0, ptr %i.kl, align 8, !tbaa !12
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 12
  store i32 0, ptr %i.kp, align 4, !tbaa !14
  %i.kq = load ptr, ptr %i.kk, align 8, !tbaa !7
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(16) %i.kk) #23, !inline_history !298
  %i.kt = load ptr, ptr %i.kk, align 8, !tbaa !7
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %i.kv = load ptr, ptr %i.ku, align 8
  call void %i.kv(ptr noundef nonnull align 8 dereferenceable(16) %i.kk) #23, !inline_history !298
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.cp:                                            ; preds = %bb.cn
  %i.kw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i13.i = icmp eq i8 %i.kw, 0
  br i1 %.not.i.i.i13.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.kx = add nsw i32 %i.ko, -1
  store i32 %i.kx, ptr %i.kl, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i

bb.cr:                                            ; preds = %bb.cp
  %i.ky = atomicrmw volatile add ptr %i.kl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i: ; preds = %bb.cr, %bb.cq
  %.0.i.i.i.i15.i = phi i32 [ %i.ko, %bb.cq ], [ %i.ky, %bb.cr ]
  %i.kz = icmp eq i32 %.0.i.i.i.i15.i, 1
  br i1 %i.kz, label %bb.cs, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !24

bb.cs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kk) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.cs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i, %bb.co, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_533DynamicPropertyGradingPrimaryImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_33DynamicPropertyGradingPrimaryImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.exit

bb.ct:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %11)
          to label %.noexc60 unwind label %bb.hu

.noexc60:                                         ; preds = %bb.ct
  %i.la = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.40, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.cu ; 0 uses

bb.cu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc60
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc60
  %i.lc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.44, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.i unwind label %bb.cu ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  store ptr %i.i, ptr %12, align 8, !tbaa !38, !alias.scope !305
  store i64 0, ptr %i.j, align 8, !tbaa !31, !alias.scope !305
  store i8 0, ptr %i.i, align 8, !tbaa !23, !alias.scope !305
  %i.ld = load ptr, ptr %i.k, align 8, !tbaa !40, !noalias !305 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ld, null
  %28 = load ptr, ptr %i.l, align 8, !noalias !305 ; 2 uses
  %29 = icmp ugt ptr %i.ld, %28
  %.08.i.i.i.i = select i1 %29, ptr %i.ld, ptr %28 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i17.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i17.i, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.i
  %i.le = load ptr, ptr %i.m, align 8, !tbaa !44, !noalias !305 ; 2 uses
  %i.lf = ptrtoint ptr %.08.i.i.i.i to i64
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = sub i64 %i.lf, %i.lg
  %i.li = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef %i.le, i64 noundef %i.lh)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.cw ; 0 uses

bb.cw:                                            ; preds = %bb.cx, %bb.cv
  %i.lj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lk = load ptr, ptr %12, align 8, !tbaa !27, !alias.scope !305 ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.i
  br i1 %i.ll, label %.body.i, label %.body.i.sink.split

bb.cx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.cw

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i: ; preds = %bb.cx, %bb.cv
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  %i.lm = load ptr, ptr %12, align 8, !tbaa !27   ; 2 uses
  %i.ln = icmp eq ptr %i.lm, %i.i
  br i1 %i.ln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.cy
  %i.lo = load i64, ptr %i.i, align 8, !tbaa !23
  %i.lp = add i64 %i.lo, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  store ptr %i.o, ptr %11, align 8, !tbaa !7
  %i.lq = load i64, ptr %i.q, align 8
  %i.lr = getelementptr inbounds i8, ptr %11, i64 %i.lq
  store ptr %i.p, ptr %i.lr, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.r, align 8, !tbaa !7
  %i.ls = load ptr, ptr %i.n, align 8, !tbaa !27  ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.s
  br i1 %i.lt, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.lu = load i64, ptr %i.s, align 8, !tbaa !23
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lv) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.r, align 8, !tbaa !7
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.t) #23
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.u) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_33DynamicPropertyGradingPrimaryImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.exit

bb.cz:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  %i.lw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lx = load ptr, ptr %12, align 8, !tbaa !27   ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.i
  br i1 %i.ly, label %.body.i, label %.body.i.sink.split

.body.i.sink.split:                               ; preds = %bb.cz, %bb.cw
  %.sink321 = phi ptr [ %i.lk, %bb.cw ], [ %i.lx, %bb.cz ]
  %.pn.i.ph = phi { ptr, i32 } [ %i.lj, %bb.cw ], [ %i.lw, %bb.cz ]
  %i.lz = load i64, ptr %i.i, align 8, !tbaa !23
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %.sink321, i64 noundef %i.ma) #26
  br label %.body.i

.body.i:                                          ; preds = %.body.i.sink.split, %bb.cz, %bb.cw
  %.pn.i = phi { ptr, i32 } [ %i.lj, %bb.cw ], [ %i.lw, %bb.cz ], [ %.pn.i.ph, %.body.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.da

bb.da:                                            ; preds = %.body.i, %bb.cu
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.lb, %bb.cu ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %.body

_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_33DynamicPropertyGradingPrimaryImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.exit: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %.noexc
  %i.mb = load ptr, ptr %i.h, align 8, !tbaa !21  ; 8 uses
  %.not.i.i61 = icmp eq ptr %i.mb, null
  br i1 %.not.i.i61, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit65, label %bb.db

bb.db:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_33DynamicPropertyGradingPrimaryImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.exit
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8 ; 4 uses
  %i.md = load atomic i64, ptr %i.mc acquire, align 8 ; 2 uses
  %i.me = icmp eq i64 %i.md, 4294967297
  %i.mf = trunc i64 %i.md to i32                  ; 2 uses
  br i1 %i.me, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  store i32 0, ptr %i.mc, align 8, !tbaa !12
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mb, i64 12
  store i32 0, ptr %i.mg, align 4, !tbaa !14
  %i.mh = load ptr, ptr %i.mb, align 8, !tbaa !7
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.mj = load ptr, ptr %i.mi, align 8
  call void %i.mj(ptr noundef nonnull align 8 dereferenceable(16) %i.mb) #23, !inline_history !262
  %i.mk = load ptr, ptr %i.mb, align 8, !tbaa !7
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  %i.mm = load ptr, ptr %i.ml, align 8
  call void %i.mm(ptr noundef nonnull align 8 dereferenceable(16) %i.mb) #23, !inline_history !262
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit65

bb.dd:                                            ; preds = %bb.db
  %i.mn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i62 = icmp eq i8 %i.mn, 0
  br i1 %.not.i.i.i62, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.mo = add nsw i32 %i.mf, -1
  store i32 %i.mo, ptr %i.mc, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i63

bb.df:                                            ; preds = %bb.dd
  %i.mp = atomicrmw volatile add ptr %i.mc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i63

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i63: ; preds = %bb.df, %bb.de
  %.0.i.i.i.i64 = phi i32 [ %i.mf, %bb.de ], [ %i.mp, %bb.df ]
  %i.mq = icmp eq i32 %.0.i.i.i.i64, 1
  br i1 %i.mq, label %bb.dg, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit65, !prof !24

bb.dg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i63
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mb) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit65

_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit65: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_33DynamicPropertyGradingPrimaryImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.exit, %bb.dc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i63, %bb.dg
  %i.mr = load ptr, ptr %20, align 16, !tbaa !245 ; 3 uses
  store ptr %i.mr, ptr %25, align 8, !tbaa !245
  %i.ms = load ptr, ptr %i.d, align 8, !tbaa !21  ; 3 uses
  store ptr %i.ms, ptr %i.x, align 8, !tbaa !21
  %.not.i.i.i66 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i66, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit68, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit65
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 3 uses
  %i.mu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i67 = icmp eq i8 %i.mu, 0
  br i1 %.not.i.i.i.i67, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.mv = load i32, ptr %i.mt, align 4, !tbaa !3
  %i.mw = add nsw i32 %i.mv, 1
  store i32 %i.mw, ptr %i.mt, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit68

bb.dj:                                            ; preds = %bb.dh
  %i.mx = atomicrmw volatile add ptr %i.mt, i32 1 acq_rel, align 4 ; 0 uses
  %.pre238 = load ptr, ptr %25, align 8, !tbaa !245
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit68

_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit68: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit65, %bb.di, %bb.dj
  %i.my = phi ptr [ %i.mr, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit65 ], [ %i.mr, %bb.di ], [ %.pre238, %bb.dj ] ; 4 uses
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !7
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 160
  %i.nb = load ptr, ptr %i.na, align 8
  %i.nc = invoke noundef zeroext i1 %i.nb(ptr noundef nonnull align 8 dereferenceable(24) %i.my, i32 noundef 4)
          to label %.noexc104.a unwind label %bb.hv, !inline_history !306

.noexc104.a:                                      ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit68
  br i1 %i.nc, label %bb.dk, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_34DynamicPropertyGradingRGBCurveImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.exit

bb.dk:                                            ; preds = %.noexc104.a
  %i.nd = load ptr, ptr %17, align 8, !tbaa !307
  %.not.i69 = icmp eq ptr %i.nd, null
  br i1 %.not.i69, label %bb.dl, label %bb.ed

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ne = load ptr, ptr %i.my, align 8, !tbaa !7
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 168
  %i.ng = load ptr, ptr %i.nf, align 8
  invoke void %i.ng(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %i.my, i32 noundef 4)
          to label %.noexc105 unwind label %bb.hv, !inline_history !306

.noexc105:                                        ; preds = %bb.dl
  %i.nh = load ptr, ptr %7, align 8, !tbaa !290, !noalias !310 ; 2 uses
  %i.ni = icmp eq ptr %i.nh, null
  br i1 %i.ni, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i, label %bb.dm

bb.dm:                                            ; preds = %.noexc105
  %i.nj = call ptr @__dynamic_cast(ptr nonnull %i.nh, ptr nonnull @_ZTIN16OpenColorIO_v2_515DynamicPropertyE, ptr nonnull @_ZTIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplE, i64 0) #23, !noalias !310 ; 4 uses
  %.not.not.i.i90 = icmp eq ptr %i.nj, null
  br i1 %.not.not.i.i90, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.nk = load ptr, ptr %i.ai, align 8, !tbaa !21, !noalias !310 ; 4 uses
  %.not.i.i.i.i.i91 = icmp eq ptr %i.nk, null
  br i1 %.not.i.i.i.i.i91, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8 ; 3 uses
  %i.nm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23, !noalias !310
  %.not.i.i.i.i.i.i92 = icmp eq i8 %i.nm, 0
  br i1 %.not.i.i.i.i.i.i92, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.nn = load i32, ptr %i.nl, align 4, !tbaa !3, !noalias !310
  %i.no = add nsw i32 %i.nn, 1
  store i32 %i.no, ptr %i.nl, align 4, !tbaa !3, !noalias !310
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i

bb.dq:                                            ; preds = %bb.do
  %i.np = atomicrmw volatile add ptr %i.nl, i32 1 acq_rel, align 4, !noalias !310 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i: ; preds = %bb.dq, %bb.dp, %bb.dn, %bb.dm, %.noexc105
  %.sroa.0.0.i93 = phi ptr [ %i.nj, %bb.dp ], [ %i.nj, %bb.dn ], [ %i.nj, %bb.dq ], [ null, %bb.dm ], [ null, %.noexc105 ]
  %.sroa.6.0.i94 = phi ptr [ %i.nk, %bb.dp ], [ null, %bb.dn ], [ %i.nk, %bb.dq ], [ null, %bb.dm ], [ null, %.noexc105 ]
  store ptr %.sroa.0.0.i93, ptr %17, align 8, !tbaa !313
  %i.nq = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 8 uses
  store ptr %.sroa.6.0.i94, ptr %i.aj, align 8, !tbaa !21
  %.not.i.i.i.i10.i95 = icmp eq ptr %i.nq, null
  br i1 %.not.i.i.i.i10.i95, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.dr

bb.dr:                                            ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8 ; 4 uses
  %i.ns = load atomic i64, ptr %i.nr acquire, align 8 ; 2 uses
  %i.nt = icmp eq i64 %i.ns, 4294967297
  %i.nu = trunc i64 %i.ns to i32                  ; 2 uses
  br i1 %i.nt, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  store i32 0, ptr %i.nr, align 8, !tbaa !12
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nq, i64 12
  store i32 0, ptr %i.nv, align 4, !tbaa !14
  %i.nw = load ptr, ptr %i.nq, align 8, !tbaa !7
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  %i.ny = load ptr, ptr %i.nx, align 8
  call void %i.ny(ptr noundef nonnull align 8 dereferenceable(16) %i.nq) #23, !inline_history !314
  %i.nz = load ptr, ptr %i.nq, align 8, !tbaa !7
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  %i.ob = load ptr, ptr %i.oa, align 8
  call void %i.ob(ptr noundef nonnull align 8 dereferenceable(16) %i.nq) #23, !inline_history !314
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.dt:                                            ; preds = %bb.dr
  %i.oc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i11.i96 = icmp eq i8 %i.oc, 0
  br i1 %.not.i.i.i.i.i11.i96, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.od = add nsw i32 %i.nu, -1
  store i32 %i.od, ptr %i.nr, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i97

bb.dv:                                            ; preds = %bb.dt
  %i.oe = atomicrmw volatile add ptr %i.nr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i97

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i97: ; preds = %bb.dv, %bb.du
  %.0.i.i.i.i.i.i.i98 = phi i32 [ %i.nu, %bb.du ], [ %i.oe, %bb.dv ]
  %i.of = icmp eq i32 %.0.i.i.i.i.i.i.i98, 1
  br i1 %i.of, label %bb.dw, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !24

bb.dw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i97
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nq) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.dw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i97, %bb.ds, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i
  %i.og = load ptr, ptr %i.ai, align 8, !tbaa !21 ; 8 uses
  %.not.i.i12.i99 = icmp eq ptr %i.og, null
  br i1 %.not.i.i12.i99, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i103, label %bb.dx

bb.dx:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8 ; 4 uses
  %i.oi = load atomic i64, ptr %i.oh acquire, align 8 ; 2 uses
  %i.oj = icmp eq i64 %i.oi, 4294967297
  %i.ok = trunc i64 %i.oi to i32                  ; 2 uses
  br i1 %i.oj, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  store i32 0, ptr %i.oh, align 8, !tbaa !12
  %i.ol = getelementptr inbounds nuw i8, ptr %i.og, i64 12
  store i32 0, ptr %i.ol, align 4, !tbaa !14
  %i.om = load ptr, ptr %i.og, align 8, !tbaa !7
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.oo = load ptr, ptr %i.on, align 8
  call void %i.oo(ptr noundef nonnull align 8 dereferenceable(16) %i.og) #23, !inline_history !315
  %i.op = load ptr, ptr %i.og, align 8, !tbaa !7
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %i.or = load ptr, ptr %i.oq, align 8
  call void %i.or(ptr noundef nonnull align 8 dereferenceable(16) %i.og) #23, !inline_history !315
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i103

bb.dz:                                            ; preds = %bb.dx
  %i.os = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i13.i100 = icmp eq i8 %i.os, 0
  br i1 %.not.i.i.i13.i100, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ot = add nsw i32 %i.ok, -1
  store i32 %i.ot, ptr %i.oh, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i101

bb.eb:                                            ; preds = %bb.dz
  %i.ou = atomicrmw volatile add ptr %i.oh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i101

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i101: ; preds = %bb.eb, %bb.ea
  %.0.i.i.i.i15.i102 = phi i32 [ %i.ok, %bb.ea ], [ %i.ou, %bb.eb ]
  %i.ov = icmp eq i32 %.0.i.i.i.i15.i102, 1
  br i1 %i.ov, label %bb.ec, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i103, !prof !24

bb.ec:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i101
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.og) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i103

_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i103: ; preds = %bb.ec, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i101, %bb.dy, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_34DynamicPropertyGradingRGBCurveImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.exit

bb.ed:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8)
          to label %.noexc106 unwind label %bb.hv

.noexc106:                                        ; preds = %bb.ed
  %i.ow = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.41, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i71 unwind label %bb.ee ; 0 uses

bb.ee:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i71, %.noexc106
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i71: ; preds = %.noexc106
  %i.oy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.44, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.i72 unwind label %bb.ee ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.i72: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i71
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  store ptr %i.y, ptr %9, align 8, !tbaa !38, !alias.scope !322
  store i64 0, ptr %i.z, align 8, !tbaa !31, !alias.scope !322
  store i8 0, ptr %i.y, align 8, !tbaa !23, !alias.scope !322
  %i.oz = load ptr, ptr %i.aa, align 8, !tbaa !40, !noalias !322 ; 3 uses
  %.not.i.not.i.i.i73 = icmp eq ptr %i.oz, null
  %30 = load ptr, ptr %i.ab, align 8, !noalias !322 ; 2 uses
  %31 = icmp ugt ptr %i.oz, %30
  %.08.i.i.i.i74 = select i1 %31, ptr %i.oz, ptr %30 ; 2 uses
  %.not5.i.i.i75 = icmp eq ptr %.08.i.i.i.i74, null
  %.not.i.i17.i76 = select i1 %.not.i.not.i.i.i73, i1 true, i1 %.not5.i.i.i75
  br i1 %.not.i.i17.i76, label %bb.eh, label %bb.ef

bb.ef:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.i72
  %i.pa = load ptr, ptr %i.ac, align 8, !tbaa !44, !noalias !322 ; 2 uses
  %i.pb = ptrtoint ptr %.08.i.i.i.i74 to i64
  %i.pc = ptrtoint ptr %i.pa to i64
  %i.pd = sub i64 %i.pb, %i.pc
  %i.pe = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.pa, i64 noundef %i.pd)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i81 unwind label %bb.eg ; 0 uses

bb.eg:                                            ; preds = %bb.eh, %bb.ef
  %i.pf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pg = load ptr, ptr %9, align 8, !tbaa !27, !alias.scope !322 ; 2 uses
  %i.ph = icmp eq ptr %i.pg, %i.y
  br i1 %i.ph, label %.body.i78, label %.body.i78.sink.split

bb.eh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.i72
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i81 unwind label %bb.eg

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i81: ; preds = %bb.eh, %bb.ef
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ei unwind label %bb.ej

bb.ei:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i81
  %i.pi = load ptr, ptr %9, align 8, !tbaa !27    ; 2 uses
  %i.pj = icmp eq ptr %i.pi, %i.y
  br i1 %i.pj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84: ; preds = %bb.ei
  %i.pk = load i64, ptr %i.y, align 8, !tbaa !23
  %i.pl = add i64 %i.pk, 1
  call void @_ZdlPvm(ptr noundef %i.pi, i64 noundef %i.pl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i85: ; preds = %bb.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  store ptr %i.o, ptr %8, align 8, !tbaa !7
  %i.pm = load i64, ptr %i.q, align 8
  %i.pn = getelementptr inbounds i8, ptr %8, i64 %i.pm
  store ptr %i.p, ptr %i.pn, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8, !tbaa !7
  %i.po = load ptr, ptr %i.ad, align 8, !tbaa !27 ; 2 uses
  %i.pp = icmp eq ptr %i.po, %i.af
  br i1 %i.pp, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i85
  %i.pq = load i64, ptr %i.af, align 8, !tbaa !23
  %i.pr = add i64 %i.pq, 1
  call void @_ZdlPvm(ptr noundef %i.po, i64 noundef %i.pr) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i87

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i86
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8, !tbaa !7
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #23
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ah) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_34DynamicPropertyGradingRGBCurveImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.exit

bb.ej:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i81
  %i.ps = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pt = load ptr, ptr %9, align 8, !tbaa !27    ; 2 uses
  %i.pu = icmp eq ptr %i.pt, %i.y
  br i1 %i.pu, label %.body.i78, label %.body.i78.sink.split

.body.i78.sink.split:                             ; preds = %bb.ej, %bb.eg
  %.sink324 = phi ptr [ %i.pg, %bb.eg ], [ %i.pt, %bb.ej ]
  %.pn.i79.ph = phi { ptr, i32 } [ %i.pf, %bb.eg ], [ %i.ps, %bb.ej ]
  %i.pv = load i64, ptr %i.y, align 8, !tbaa !23
  %i.pw = add i64 %i.pv, 1
  call void @_ZdlPvm(ptr noundef %.sink324, i64 noundef %i.pw) #26
  br label %.body.i78

.body.i78:                                        ; preds = %.body.i78.sink.split, %bb.ej, %bb.eg
  %.pn.i79 = phi { ptr, i32 } [ %i.pf, %bb.eg ], [ %i.ps, %bb.ej ], [ %.pn.i79.ph, %.body.i78.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ek

bb.ek:                                            ; preds = %.body.i78, %bb.ee
  %.pn.pn.i70 = phi { ptr, i32 } [ %.pn.i79, %.body.i78 ], [ %i.ox, %bb.ee ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.body

_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_34DynamicPropertyGradingRGBCurveImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.exit: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i87, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i103, %.noexc104.a
  %i.px = load ptr, ptr %i.x, align 8, !tbaa !21  ; 8 uses
  %.not.i.i109 = icmp eq ptr %i.px, null
  br i1 %.not.i.i109, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit113, label %bb.el

bb.el:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_34DynamicPropertyGradingRGBCurveImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.exit
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 8 ; 4 uses
  %i.pz = load atomic i64, ptr %i.py acquire, align 8 ; 2 uses
  %i.qa = icmp eq i64 %i.pz, 4294967297
  %i.qb = trunc i64 %i.pz to i32                  ; 2 uses
  br i1 %i.qa, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  store i32 0, ptr %i.py, align 8, !tbaa !12
  %i.qc = getelementptr inbounds nuw i8, ptr %i.px, i64 12
  store i32 0, ptr %i.qc, align 4, !tbaa !14
  %i.qd = load ptr, ptr %i.px, align 8, !tbaa !7
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qf = load ptr, ptr %i.qe, align 8
  call void %i.qf(ptr noundef nonnull align 8 dereferenceable(16) %i.px) #23, !inline_history !262
  %i.qg = load ptr, ptr %i.px, align 8, !tbaa !7
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  %i.qi = load ptr, ptr %i.qh, align 8
  call void %i.qi(ptr noundef nonnull align 8 dereferenceable(16) %i.px) #23, !inline_history !262
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit113

bb.en:                                            ; preds = %bb.el
  %i.qj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i110 = icmp eq i8 %i.qj, 0
  br i1 %.not.i.i.i110, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.qk = add nsw i32 %i.qb, -1
  store i32 %i.qk, ptr %i.py, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i111

bb.ep:                                            ; preds = %bb.en
  %i.ql = atomicrmw volatile add ptr %i.py, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i111

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i111: ; preds = %bb.ep, %bb.eo
  %.0.i.i.i.i112 = phi i32 [ %i.qb, %bb.eo ], [ %i.ql, %bb.ep ]
  %i.qm = icmp eq i32 %.0.i.i.i.i112, 1
  br i1 %i.qm, label %bb.eq, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit113, !prof !24

bb.eq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i111
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.px) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit113

_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit113: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_34DynamicPropertyGradingRGBCurveImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.exit, %bb.em, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i111, %bb.eq
  %i.qn = load ptr, ptr %20, align 16, !tbaa !245 ; 3 uses
  store ptr %i.qn, ptr %26, align 8, !tbaa !245
  %i.qo = load ptr, ptr %i.d, align 8, !tbaa !21  ; 3 uses
  store ptr %i.qo, ptr %i.ak, align 8, !tbaa !21
  %.not.i.i.i114 = icmp eq ptr %i.qo, null
  br i1 %.not.i.i.i114, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit116, label %bb.er

bb.er:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit113
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 8 ; 3 uses
  %i.qq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i115 = icmp eq i8 %i.qq, 0
  br i1 %.not.i.i.i.i115, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.qr = load i32, ptr %i.qp, align 4, !tbaa !3
  %i.qs = add nsw i32 %i.qr, 1
  store i32 %i.qs, ptr %i.qp, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit116

bb.et:                                            ; preds = %bb.er
  %i.qt = atomicrmw volatile add ptr %i.qp, i32 1 acq_rel, align 4 ; 0 uses
  %.pre239 = load ptr, ptr %26, align 8, !tbaa !245
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit116

_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit116: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit113, %bb.es, %bb.et
  %i.qu = phi ptr [ %i.qn, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit113 ], [ %i.qn, %bb.es ], [ %.pre239, %bb.et ] ; 4 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !7
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 160
  %i.qx = load ptr, ptr %i.qw, align 8
  %i.qy = invoke noundef zeroext i1 %i.qx(ptr noundef nonnull align 8 dereferenceable(24) %i.qu, i32 noundef 6)
          to label %.noexc152 unwind label %bb.hw, !inline_history !323

.noexc152:                                        ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit116
  br i1 %i.qy, label %bb.eu, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_34DynamicPropertyGradingHueCurveImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.exit

bb.eu:                                            ; preds = %.noexc152
  %i.qz = load ptr, ptr %18, align 8, !tbaa !324
  %.not.i117 = icmp eq ptr %i.qz, null
  br i1 %.not.i117, label %bb.ev, label %bb.fn

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ra = load ptr, ptr %i.qu, align 8, !tbaa !7
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 168
  %i.rc = load ptr, ptr %i.rb, align 8
  invoke void %i.rc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.qu, i32 noundef 6)
          to label %.noexc153 unwind label %bb.hw, !inline_history !323

.noexc153:                                        ; preds = %bb.ev
  %i.rd = load ptr, ptr %4, align 8, !tbaa !290, !noalias !327 ; 2 uses
  %i.re = icmp eq ptr %i.rd, null
  br i1 %i.re, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i, label %bb.ew

bb.ew:                                            ; preds = %.noexc153
  %i.rf = call ptr @__dynamic_cast(ptr nonnull %i.rd, ptr nonnull @_ZTIN16OpenColorIO_v2_515DynamicPropertyE, ptr nonnull @_ZTIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplE, i64 0) #23, !noalias !327 ; 4 uses
  %.not.not.i.i138 = icmp eq ptr %i.rf, null
  br i1 %.not.not.i.i138, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.rg = load ptr, ptr %i.av, align 8, !tbaa !21, !noalias !327 ; 4 uses
  %.not.i.i.i.i.i139 = icmp eq ptr %i.rg, null
  br i1 %.not.i.i.i.i.i139, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8 ; 3 uses
  %i.ri = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23, !noalias !327
  %.not.i.i.i.i.i.i140 = icmp eq i8 %i.ri, 0
  br i1 %.not.i.i.i.i.i.i140, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.rj = load i32, ptr %i.rh, align 4, !tbaa !3, !noalias !327
  %i.rk = add nsw i32 %i.rj, 1
  store i32 %i.rk, ptr %i.rh, align 4, !tbaa !3, !noalias !327
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i

bb.fa:                                            ; preds = %bb.ey
  %i.rl = atomicrmw volatile add ptr %i.rh, i32 1 acq_rel, align 4, !noalias !327 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i: ; preds = %bb.fa, %bb.ez, %bb.ex, %bb.ew, %.noexc153
  %.sroa.0.0.i141 = phi ptr [ %i.rf, %bb.ez ], [ %i.rf, %bb.ex ], [ %i.rf, %bb.fa ], [ null, %bb.ew ], [ null, %.noexc153 ]
  %.sroa.6.0.i142 = phi ptr [ %i.rg, %bb.ez ], [ null, %bb.ex ], [ %i.rg, %bb.fa ], [ null, %bb.ew ], [ null, %.noexc153 ]
  store ptr %.sroa.0.0.i141, ptr %18, align 8, !tbaa !330
  %i.rm = load ptr, ptr %i.aw, align 8, !tbaa !21 ; 8 uses
  store ptr %.sroa.6.0.i142, ptr %i.aw, align 8, !tbaa !21
  %.not.i.i.i.i10.i143 = icmp eq ptr %i.rm, null
  br i1 %.not.i.i.i.i10.i143, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.fb

bb.fb:                                            ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 8 ; 4 uses
  %i.ro = load atomic i64, ptr %i.rn acquire, align 8 ; 2 uses
  %i.rp = icmp eq i64 %i.ro, 4294967297
  %i.rq = trunc i64 %i.ro to i32                  ; 2 uses
  br i1 %i.rp, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  store i32 0, ptr %i.rn, align 8, !tbaa !12
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rm, i64 12
  store i32 0, ptr %i.rr, align 4, !tbaa !14
  %i.rs = load ptr, ptr %i.rm, align 8, !tbaa !7
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  %i.ru = load ptr, ptr %i.rt, align 8
  call void %i.ru(ptr noundef nonnull align 8 dereferenceable(16) %i.rm) #23, !inline_history !331
  %i.rv = load ptr, ptr %i.rm, align 8, !tbaa !7
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 24
  %i.rx = load ptr, ptr %i.rw, align 8
  call void %i.rx(ptr noundef nonnull align 8 dereferenceable(16) %i.rm) #23, !inline_history !331
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fd:                                            ; preds = %bb.fb
  %i.ry = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i11.i144 = icmp eq i8 %i.ry, 0
  br i1 %.not.i.i.i.i.i11.i144, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.rz = add nsw i32 %i.rq, -1
  store i32 %i.rz, ptr %i.rn, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i145

bb.ff:                                            ; preds = %bb.fd
  %i.sa = atomicrmw volatile add ptr %i.rn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i145

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i145: ; preds = %bb.ff, %bb.fe
  %.0.i.i.i.i.i.i.i146 = phi i32 [ %i.rq, %bb.fe ], [ %i.sa, %bb.ff ]
  %i.sb = icmp eq i32 %.0.i.i.i.i.i.i.i146, 1
  br i1 %i.sb, label %bb.fg, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !24

bb.fg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i145
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rm) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.fg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i145, %bb.fc, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i
  %i.sc = load ptr, ptr %i.av, align 8, !tbaa !21 ; 8 uses
  %.not.i.i12.i147 = icmp eq ptr %i.sc, null
  br i1 %.not.i.i12.i147, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i151, label %bb.fh

bb.fh:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8 ; 4 uses
  %i.se = load atomic i64, ptr %i.sd acquire, align 8 ; 2 uses
  %i.sf = icmp eq i64 %i.se, 4294967297
  %i.sg = trunc i64 %i.se to i32                  ; 2 uses
  br i1 %i.sf, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  store i32 0, ptr %i.sd, align 8, !tbaa !12
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sc, i64 12
  store i32 0, ptr %i.sh, align 4, !tbaa !14
  %i.si = load ptr, ptr %i.sc, align 8, !tbaa !7
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %i.sk = load ptr, ptr %i.sj, align 8
  call void %i.sk(ptr noundef nonnull align 8 dereferenceable(16) %i.sc) #23, !inline_history !332
  %i.sl = load ptr, ptr %i.sc, align 8, !tbaa !7
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 24
  %i.sn = load ptr, ptr %i.sm, align 8
  call void %i.sn(ptr noundef nonnull align 8 dereferenceable(16) %i.sc) #23, !inline_history !332
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i151

bb.fj:                                            ; preds = %bb.fh
  %i.so = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i13.i148 = icmp eq i8 %i.so, 0
  br i1 %.not.i.i.i13.i148, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.sp = add nsw i32 %i.sg, -1
  store i32 %i.sp, ptr %i.sd, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i149

bb.fl:                                            ; preds = %bb.fj
  %i.sq = atomicrmw volatile add ptr %i.sd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i149

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i149: ; preds = %bb.fl, %bb.fk
  %.0.i.i.i.i15.i150 = phi i32 [ %i.sg, %bb.fk ], [ %i.sq, %bb.fl ]
  %i.sr = icmp eq i32 %.0.i.i.i.i15.i150, 1
  br i1 %i.sr, label %bb.fm, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i151, !prof !24

bb.fm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i149
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sc) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i151

_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i151: ; preds = %bb.fm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i149, %bb.fi, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_34DynamicPropertyGradingHueCurveImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.exit

bb.fn:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %.noexc154 unwind label %bb.hw

.noexc154:                                        ; preds = %bb.fn
  %i.ss = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.43, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i119 unwind label %bb.fo ; 0 uses

bb.fo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i119, %.noexc154
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i119: ; preds = %.noexc154
  %i.su = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.44, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.i120 unwind label %bb.fo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.i120: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i119
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  store ptr %i.al, ptr %6, align 8, !tbaa !38, !alias.scope !339
  store i64 0, ptr %i.am, align 8, !tbaa !31, !alias.scope !339
  store i8 0, ptr %i.al, align 8, !tbaa !23, !alias.scope !339
  %i.sv = load ptr, ptr %i.an, align 8, !tbaa !40, !noalias !339 ; 3 uses
  %.not.i.not.i.i.i121 = icmp eq ptr %i.sv, null
  %32 = load ptr, ptr %i.ao, align 8, !noalias !339 ; 2 uses
  %33 = icmp ugt ptr %i.sv, %32
  %.08.i.i.i.i122 = select i1 %33, ptr %i.sv, ptr %32 ; 2 uses
  %.not5.i.i.i123 = icmp eq ptr %.08.i.i.i.i122, null
  %.not.i.i17.i124 = select i1 %.not.i.not.i.i.i121, i1 true, i1 %.not5.i.i.i123
  br i1 %.not.i.i17.i124, label %bb.fr, label %bb.fp

bb.fp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.i120
  %i.sw = load ptr, ptr %i.ap, align 8, !tbaa !44, !noalias !339 ; 2 uses
  %i.sx = ptrtoint ptr %.08.i.i.i.i122 to i64
  %i.sy = ptrtoint ptr %i.sw to i64
  %i.sz = sub i64 %i.sx, %i.sy
  %i.ta = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.sw, i64 noundef %i.sz)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i129 unwind label %bb.fq ; 0 uses

bb.fq:                                            ; preds = %bb.fr, %bb.fp
  %i.tb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tc = load ptr, ptr %6, align 8, !tbaa !27, !alias.scope !339 ; 2 uses
  %i.td = icmp eq ptr %i.tc, %i.al
  br i1 %i.td, label %.body.i126, label %.body.i126.sink.split

bb.fr:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.i120
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i129 unwind label %bb.fq

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i129: ; preds = %bb.fr, %bb.fp
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.fs unwind label %bb.ft

bb.fs:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i129
  %i.te = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.tf = icmp eq ptr %i.te, %i.al
  br i1 %i.tf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132: ; preds = %bb.fs
  %i.tg = load i64, ptr %i.al, align 8, !tbaa !23
  %i.th = add i64 %i.tg, 1
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.th) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i133: ; preds = %bb.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  store ptr %i.o, ptr %5, align 8, !tbaa !7
  %i.ti = load i64, ptr %i.q, align 8
  %i.tj = getelementptr inbounds i8, ptr %5, i64 %i.ti
  store ptr %i.p, ptr %i.tj, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ar, align 8, !tbaa !7
  %i.tk = load ptr, ptr %i.aq, align 8, !tbaa !27 ; 2 uses
  %i.tl = icmp eq ptr %i.tk, %i.as
  br i1 %i.tl, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i133
  %i.tm = load i64, ptr %i.as, align 8, !tbaa !23
  %i.tn = add i64 %i.tm, 1
  call void @_ZdlPvm(ptr noundef %i.tk, i64 noundef %i.tn) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i135

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i134
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ar, align 8, !tbaa !7
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.at) #23
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.au) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_34DynamicPropertyGradingHueCurveImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.exit

bb.ft:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i129
  %i.to = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tp = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.tq = icmp eq ptr %i.tp, %i.al
  br i1 %i.tq, label %.body.i126, label %.body.i126.sink.split

.body.i126.sink.split:                            ; preds = %bb.ft, %bb.fq
  %.sink327 = phi ptr [ %i.tc, %bb.fq ], [ %i.tp, %bb.ft ]
  %.pn.i127.ph = phi { ptr, i32 } [ %i.tb, %bb.fq ], [ %i.to, %bb.ft ]
  %i.tr = load i64, ptr %i.al, align 8, !tbaa !23
  %i.ts = add i64 %i.tr, 1
  call void @_ZdlPvm(ptr noundef %.sink327, i64 noundef %i.ts) #26
  br label %.body.i126

.body.i126:                                       ; preds = %.body.i126.sink.split, %bb.ft, %bb.fq
  %.pn.i127 = phi { ptr, i32 } [ %i.tb, %bb.fq ], [ %i.to, %bb.ft ], [ %.pn.i127.ph, %.body.i126.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.fu

bb.fu:                                            ; preds = %.body.i126, %bb.fo
  %.pn.pn.i118 = phi { ptr, i32 } [ %.pn.i127, %.body.i126 ], [ %i.st, %bb.fo ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.body

_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_34DynamicPropertyGradingHueCurveImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.exit: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i135, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i151, %.noexc152
  %i.tt = load ptr, ptr %i.ak, align 8, !tbaa !21 ; 8 uses
  %.not.i.i157 = icmp eq ptr %i.tt, null
  br i1 %.not.i.i157, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161, label %bb.fv

bb.fv:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_34DynamicPropertyGradingHueCurveImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.exit
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 8 ; 4 uses
  %i.tv = load atomic i64, ptr %i.tu acquire, align 8 ; 2 uses
  %i.tw = icmp eq i64 %i.tv, 4294967297
  %i.tx = trunc i64 %i.tv to i32                  ; 2 uses
  br i1 %i.tw, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  store i32 0, ptr %i.tu, align 8, !tbaa !12
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tt, i64 12
  store i32 0, ptr %i.ty, align 4, !tbaa !14
  %i.tz = load ptr, ptr %i.tt, align 8, !tbaa !7
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  %i.ub = load ptr, ptr %i.ua, align 8
  call void %i.ub(ptr noundef nonnull align 8 dereferenceable(16) %i.tt) #23, !inline_history !262
  %i.uc = load ptr, ptr %i.tt, align 8, !tbaa !7
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 24
  %i.ue = load ptr, ptr %i.ud, align 8
  call void %i.ue(ptr noundef nonnull align 8 dereferenceable(16) %i.tt) #23, !inline_history !262
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161

bb.fx:                                            ; preds = %bb.fv
  %i.uf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i158.a = icmp eq i8 %i.uf, 0
  br i1 %.not.i.i.i158.a, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ug = add nsw i32 %i.tx, -1
  store i32 %i.ug, ptr %i.tu, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i159

bb.fz:                                            ; preds = %bb.fx
  %i.uh = atomicrmw volatile add ptr %i.tu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i159

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i159: ; preds = %bb.fz, %bb.fy
  %.0.i.i.i.i160 = phi i32 [ %i.tx, %bb.fy ], [ %i.uh, %bb.fz ]
  %i.ui = icmp eq i32 %.0.i.i.i.i160, 1
  br i1 %i.ui, label %bb.ga, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161, !prof !24

bb.ga:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i159
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tt) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161

_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_34DynamicPropertyGradingHueCurveImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.exit, %bb.fw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i159, %bb.ga
  %i.uj = load ptr, ptr %20, align 16, !tbaa !245 ; 3 uses
  store ptr %i.uj, ptr %27, align 8, !tbaa !245
  %i.uk = load ptr, ptr %i.d, align 8, !tbaa !21  ; 3 uses
  store ptr %i.uk, ptr %i.ax, align 8, !tbaa !21
  %.not.i.i.i162 = icmp eq ptr %i.uk, null
  br i1 %.not.i.i.i162, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit164, label %bb.gb

bb.gb:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 8 ; 3 uses
  %i.um = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i163 = icmp eq i8 %i.um, 0
  br i1 %.not.i.i.i.i163, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.un = load i32, ptr %i.ul, align 4, !tbaa !3
  %i.uo = add nsw i32 %i.un, 1
  store i32 %i.uo, ptr %i.ul, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit164

bb.gd:                                            ; preds = %bb.gb
  %i.up = atomicrmw volatile add ptr %i.ul, i32 1 acq_rel, align 4 ; 0 uses
  %.pre240 = load ptr, ptr %27, align 8, !tbaa !245
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit164

_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit164: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161, %bb.gc, %bb.gd
  %i.uq = phi ptr [ %i.uj, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161 ], [ %i.uj, %bb.gc ], [ %.pre240, %bb.gd ] ; 4 uses
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !7
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 160
  %i.ut = load ptr, ptr %i.us, align 8
  %i.uu = invoke noundef zeroext i1 %i.ut(ptr noundef nonnull align 8 dereferenceable(24) %i.uq, i32 noundef 5)
          to label %.noexc200 unwind label %bb.hx, !inline_history !340

.noexc200:                                        ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit164
  br i1 %i.uu, label %bb.ge, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_30DynamicPropertyGradingToneImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.exit

bb.ge:                                            ; preds = %.noexc200
  %i.uv = load ptr, ptr %19, align 8, !tbaa !341
  %.not.i165 = icmp eq ptr %i.uv, null
  br i1 %.not.i165, label %bb.gf, label %bb.gx

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.uw = load ptr, ptr %i.uq, align 8, !tbaa !7
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 168
  %i.uy = load ptr, ptr %i.ux, align 8
  invoke void %i.uy(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %i.uq, i32 noundef 5)
          to label %.noexc201 unwind label %bb.hx, !inline_history !340

.noexc201:                                        ; preds = %bb.gf
  %i.uz = load ptr, ptr %1, align 8, !tbaa !290, !noalias !344 ; 2 uses
  %i.va = icmp eq ptr %i.uz, null
  br i1 %i.va, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i, label %bb.gg

bb.gg:                                            ; preds = %.noexc201
  %i.vb = call ptr @__dynamic_cast(ptr nonnull %i.uz, ptr nonnull @_ZTIN16OpenColorIO_v2_515DynamicPropertyE, ptr nonnull @_ZTIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplE, i64 0) #23, !noalias !344 ; 4 uses
  %.not.not.i.i186 = icmp eq ptr %i.vb, null
  br i1 %.not.not.i.i186, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.vc = load ptr, ptr %i.bi, align 8, !tbaa !21, !noalias !344 ; 4 uses
  %.not.i.i.i.i.i187 = icmp eq ptr %i.vc, null
  br i1 %.not.i.i.i.i.i187, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 8 ; 3 uses
  %i.ve = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23, !noalias !344
  %.not.i.i.i.i.i.i188 = icmp eq i8 %i.ve, 0
  br i1 %.not.i.i.i.i.i.i188, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.vf = load i32, ptr %i.vd, align 4, !tbaa !3, !noalias !344
  %i.vg = add nsw i32 %i.vf, 1
  store i32 %i.vg, ptr %i.vd, align 4, !tbaa !3, !noalias !344
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i

bb.gk:                                            ; preds = %bb.gi
  %i.vh = atomicrmw volatile add ptr %i.vd, i32 1 acq_rel, align 4, !noalias !344 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i: ; preds = %bb.gk, %bb.gj, %bb.gh, %bb.gg, %.noexc201
  %.sroa.0.0.i189 = phi ptr [ %i.vb, %bb.gj ], [ %i.vb, %bb.gh ], [ %i.vb, %bb.gk ], [ null, %bb.gg ], [ null, %.noexc201 ]
  %.sroa.6.0.i190 = phi ptr [ %i.vc, %bb.gj ], [ null, %bb.gh ], [ %i.vc, %bb.gk ], [ null, %bb.gg ], [ null, %.noexc201 ]
  store ptr %.sroa.0.0.i189, ptr %19, align 8, !tbaa !347
  %i.vi = load ptr, ptr %i.bj, align 8, !tbaa !21 ; 8 uses
  store ptr %.sroa.6.0.i190, ptr %i.bj, align 8, !tbaa !21
  %.not.i.i.i.i10.i191 = icmp eq ptr %i.vi, null
  br i1 %.not.i.i.i.i10.i191, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.gl

bb.gl:                                            ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 8 ; 4 uses
  %i.vk = load atomic i64, ptr %i.vj acquire, align 8 ; 2 uses
  %i.vl = icmp eq i64 %i.vk, 4294967297
  %i.vm = trunc i64 %i.vk to i32                  ; 2 uses
  br i1 %i.vl, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  store i32 0, ptr %i.vj, align 8, !tbaa !12
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vi, i64 12
  store i32 0, ptr %i.vn, align 4, !tbaa !14
  %i.vo = load ptr, ptr %i.vi, align 8, !tbaa !7
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 16
  %i.vq = load ptr, ptr %i.vp, align 8
  call void %i.vq(ptr noundef nonnull align 8 dereferenceable(16) %i.vi) #23, !inline_history !348
  %i.vr = load ptr, ptr %i.vi, align 8, !tbaa !7
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 24
  %i.vt = load ptr, ptr %i.vs, align 8
  call void %i.vt(ptr noundef nonnull align 8 dereferenceable(16) %i.vi) #23, !inline_history !348
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.gn:                                            ; preds = %bb.gl
  %i.vu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i11.i192 = icmp eq i8 %i.vu, 0
  br i1 %.not.i.i.i.i.i11.i192, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.vv = add nsw i32 %i.vm, -1
  store i32 %i.vv, ptr %i.vj, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i193

bb.gp:                                            ; preds = %bb.gn
  %i.vw = atomicrmw volatile add ptr %i.vj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i193

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i193: ; preds = %bb.gp, %bb.go
  %.0.i.i.i.i.i.i.i194 = phi i32 [ %i.vm, %bb.go ], [ %i.vw, %bb.gp ]
  %i.vx = icmp eq i32 %.0.i.i.i.i.i.i.i194, 1
  br i1 %i.vx, label %bb.gq, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !24

bb.gq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i193
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vi) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.gq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i193, %bb.gm, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit.i
  %i.vy = load ptr, ptr %i.bi, align 8, !tbaa !21 ; 8 uses
  %.not.i.i12.i195 = icmp eq ptr %i.vy, null
  br i1 %.not.i.i12.i195, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i199, label %bb.gr

bb.gr:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 8 ; 4 uses
  %i.wa = load atomic i64, ptr %i.vz acquire, align 8 ; 2 uses
  %i.wb = icmp eq i64 %i.wa, 4294967297
  %i.wc = trunc i64 %i.wa to i32                  ; 2 uses
  br i1 %i.wb, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  store i32 0, ptr %i.vz, align 8, !tbaa !12
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vy, i64 12
  store i32 0, ptr %i.wd, align 4, !tbaa !14
  %i.we = load ptr, ptr %i.vy, align 8, !tbaa !7
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 16
  %i.wg = load ptr, ptr %i.wf, align 8
  call void %i.wg(ptr noundef nonnull align 8 dereferenceable(16) %i.vy) #23, !inline_history !349
  %i.wh = load ptr, ptr %i.vy, align 8, !tbaa !7
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 24
  %i.wj = load ptr, ptr %i.wi, align 8
  call void %i.wj(ptr noundef nonnull align 8 dereferenceable(16) %i.vy) #23, !inline_history !349
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i199

bb.gt:                                            ; preds = %bb.gr
  %i.wk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i13.i196 = icmp eq i8 %i.wk, 0
  br i1 %.not.i.i.i13.i196, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.wl = add nsw i32 %i.wc, -1
  store i32 %i.wl, ptr %i.vz, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i197

bb.gv:                                            ; preds = %bb.gt
  %i.wm = atomicrmw volatile add ptr %i.vz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i197

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i197: ; preds = %bb.gv, %bb.gu
  %.0.i.i.i.i15.i198 = phi i32 [ %i.wc, %bb.gu ], [ %i.wm, %bb.gv ]
  %i.wn = icmp eq i32 %.0.i.i.i.i15.i198, 1
  br i1 %i.wn, label %bb.gw, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i199, !prof !24

bb.gw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i197
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vy) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i199

_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i199: ; preds = %bb.gw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i197, %bb.gs, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_30DynamicPropertyGradingToneImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.exit

bb.gx:                                            ; preds = %bb.ge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %.noexc202 unwind label %bb.hx

.noexc202:                                        ; preds = %bb.gx
  %i.wo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.42, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i167 unwind label %bb.gy ; 0 uses

bb.gy:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i167, %.noexc202
  %i.wp = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i167: ; preds = %.noexc202
  %i.wq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.44, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.i168 unwind label %bb.gy ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.i168: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i167
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  store ptr %i.ay, ptr %3, align 8, !tbaa !38, !alias.scope !356
  store i64 0, ptr %i.az, align 8, !tbaa !31, !alias.scope !356
  store i8 0, ptr %i.ay, align 8, !tbaa !23, !alias.scope !356
  %i.wr = load ptr, ptr %i.ba, align 8, !tbaa !40, !noalias !356 ; 3 uses
  %.not.i.not.i.i.i169 = icmp eq ptr %i.wr, null
  %34 = load ptr, ptr %i.bb, align 8, !noalias !356 ; 2 uses
  %35 = icmp ugt ptr %i.wr, %34
  %.08.i.i.i.i170 = select i1 %35, ptr %i.wr, ptr %34 ; 2 uses
  %.not5.i.i.i171 = icmp eq ptr %.08.i.i.i.i170, null
  %.not.i.i17.i172 = select i1 %.not.i.not.i.i.i169, i1 true, i1 %.not5.i.i.i171
  br i1 %.not.i.i17.i172, label %bb.hb, label %bb.gz

bb.gz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.i168
  %i.ws = load ptr, ptr %i.bc, align 8, !tbaa !44, !noalias !356 ; 2 uses
  %i.wt = ptrtoint ptr %.08.i.i.i.i170 to i64
  %i.wu = ptrtoint ptr %i.ws to i64
  %i.wv = sub i64 %i.wt, %i.wu
  %i.ww = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.ws, i64 noundef %i.wv)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i177 unwind label %bb.ha ; 0 uses

bb.ha:                                            ; preds = %bb.hb, %bb.gz
  %i.wx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wy = load ptr, ptr %3, align 8, !tbaa !27, !alias.scope !356 ; 2 uses
  %i.wz = icmp eq ptr %i.wy, %i.ay
  br i1 %i.wz, label %.body.i174, label %.body.i174.sink.split

bb.hb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.i168
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i177 unwind label %bb.ha

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i177: ; preds = %bb.hb, %bb.gz
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.hc unwind label %bb.hd

bb.hc:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i177
  %i.xa = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.xb = icmp eq ptr %i.xa, %i.ay
  br i1 %i.xb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i180: ; preds = %bb.hc
  %i.xc = load i64, ptr %i.ay, align 8, !tbaa !23
  %i.xd = add i64 %i.xc, 1
  call void @_ZdlPvm(ptr noundef %i.xa, i64 noundef %i.xd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i181: ; preds = %bb.hc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  store ptr %i.o, ptr %2, align 8, !tbaa !7
  %i.xe = load i64, ptr %i.q, align 8
  %i.xf = getelementptr inbounds i8, ptr %2, i64 %i.xe
  store ptr %i.p, ptr %i.xf, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.be, align 8, !tbaa !7
  %i.xg = load ptr, ptr %i.bd, align 8, !tbaa !27 ; 2 uses
  %i.xh = icmp eq ptr %i.xg, %i.bf
  br i1 %i.xh, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i181
  %i.xi = load i64, ptr %i.bf, align 8, !tbaa !23
  %i.xj = add i64 %i.xi, 1
  call void @_ZdlPvm(ptr noundef %i.xg, i64 noundef %i.xj) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i183

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i183: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i182
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.be, align 8, !tbaa !7
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bg) #23
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bh) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_30DynamicPropertyGradingToneImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.exit

bb.hd:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i177
  %i.xk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xl = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.xm = icmp eq ptr %i.xl, %i.ay
  br i1 %i.xm, label %.body.i174, label %.body.i174.sink.split

.body.i174.sink.split:                            ; preds = %bb.hd, %bb.ha
  %.sink330 = phi ptr [ %i.wy, %bb.ha ], [ %i.xl, %bb.hd ]
  %.pn.i175.ph = phi { ptr, i32 } [ %i.wx, %bb.ha ], [ %i.xk, %bb.hd ]
  %i.xn = load i64, ptr %i.ay, align 8, !tbaa !23
  %i.xo = add i64 %i.xn, 1
  call void @_ZdlPvm(ptr noundef %.sink330, i64 noundef %i.xo) #26
  br label %.body.i174

.body.i174:                                       ; preds = %.body.i174.sink.split, %bb.hd, %bb.ha
  %.pn.i175 = phi { ptr, i32 } [ %i.wx, %bb.ha ], [ %i.xk, %bb.hd ], [ %.pn.i175.ph, %.body.i174.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.he

bb.he:                                            ; preds = %.body.i174, %bb.gy
  %.pn.pn.i166 = phi { ptr, i32 } [ %.pn.i175, %.body.i174 ], [ %i.wp, %bb.gy ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_30DynamicPropertyGradingToneImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.exit: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i183, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i199, %.noexc200
  %i.xp = load ptr, ptr %i.ax, align 8, !tbaa !21 ; 8 uses
  %.not.i.i205 = icmp eq ptr %i.xp, null
  br i1 %.not.i.i205, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit209, label %bb.hf

bb.hf:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_30DynamicPropertyGradingToneImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.exit
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 8 ; 4 uses
  %i.xr = load atomic i64, ptr %i.xq acquire, align 8 ; 2 uses
  %i.xs = icmp eq i64 %i.xr, 4294967297
  %i.xt = trunc i64 %i.xr to i32                  ; 2 uses
  br i1 %i.xs, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  store i32 0, ptr %i.xq, align 8, !tbaa !12
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xp, i64 12
  store i32 0, ptr %i.xu, align 4, !tbaa !14
  %i.xv = load ptr, ptr %i.xp, align 8, !tbaa !7
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 16
  %i.xx = load ptr, ptr %i.xw, align 8
  call void %i.xx(ptr noundef nonnull align 8 dereferenceable(16) %i.xp) #23, !inline_history !262
  %i.xy = load ptr, ptr %i.xp, align 8, !tbaa !7
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 24
  %i.ya = load ptr, ptr %i.xz, align 8
  call void %i.ya(ptr noundef nonnull align 8 dereferenceable(16) %i.xp) #23, !inline_history !262
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit209

bb.hh:                                            ; preds = %bb.hf
  %i.yb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i206 = icmp eq i8 %i.yb, 0
  br i1 %.not.i.i.i206, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.yc = add nsw i32 %i.xt, -1
  store i32 %i.yc, ptr %i.xq, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i207

bb.hj:                                            ; preds = %bb.hh
  %i.yd = atomicrmw volatile add ptr %i.xq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i207

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i207: ; preds = %bb.hj, %bb.hi
  %.0.i.i.i.i208 = phi i32 [ %i.xt, %bb.hi ], [ %i.yd, %bb.hj ]
  %i.ye = icmp eq i32 %.0.i.i.i.i208, 1
  br i1 %i.ye, label %bb.hk, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit209, !prof !24

bb.hk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i207
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xp) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit209

_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit209: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_30DynamicPropertyGradingToneImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.exit, %bb.hg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i207, %bb.hk
  %i.yf = load ptr, ptr %i.d, align 8, !tbaa !21  ; 8 uses
  %.not.i.i210 = icmp eq ptr %i.yf, null
  br i1 %.not.i.i210, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit214, label %bb.hl

bb.hl:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit209
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 8 ; 4 uses
  %i.yh = load atomic i64, ptr %i.yg acquire, align 8 ; 2 uses
  %i.yi = icmp eq i64 %i.yh, 4294967297
  %i.yj = trunc i64 %i.yh to i32                  ; 2 uses
  br i1 %i.yi, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  store i32 0, ptr %i.yg, align 8, !tbaa !12
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yf, i64 12
  store i32 0, ptr %i.yk, align 4, !tbaa !14
  %i.yl = load ptr, ptr %i.yf, align 8, !tbaa !7
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  %i.yn = load ptr, ptr %i.ym, align 8
  call void %i.yn(ptr noundef nonnull align 8 dereferenceable(16) %i.yf) #23, !inline_history !262
  %i.yo = load ptr, ptr %i.yf, align 8, !tbaa !7
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 24
  %i.yq = load ptr, ptr %i.yp, align 8
  call void %i.yq(ptr noundef nonnull align 8 dereferenceable(16) %i.yf) #23, !inline_history !262
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit214

bb.hn:                                            ; preds = %bb.hl
  %i.yr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i211 = icmp eq i8 %i.yr, 0
  br i1 %.not.i.i.i211, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.ys = add nsw i32 %i.yj, -1
  store i32 %i.ys, ptr %i.yg, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i212

bb.hp:                                            ; preds = %bb.hn
  %i.yt = atomicrmw volatile add ptr %i.yg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i212

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i212: ; preds = %bb.hp, %bb.ho
  %.0.i.i.i.i213 = phi i32 [ %i.yj, %bb.ho ], [ %i.yt, %bb.hp ]
  %i.yu = icmp eq i32 %.0.i.i.i.i213, 1
  br i1 %i.yu, label %bb.hq, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit214, !prof !24

bb.hq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i212
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yf) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit214

_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit214: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit209, %bb.hm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i212, %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  %i.yv = getelementptr inbounds nuw i8, ptr %.sroa.0215.0235, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.yv, %i.c
  br i1 %.not, label %._crit_edge, label %bb.ar

bb.hr:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit35
  %i.yw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.hs:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit42
  %i.yx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ht:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit50
  %i.yy = landingpad { ptr, i32 }
          cleanup
  br label %.body

end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_510OpRcPtrVec25validateDynamicPropertiesEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_25DynamicPropertyDoubleImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE(ptr noundef nonnull readonly captures(none) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1, i32 noundef range(i32 0, 3) %2) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 8   ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !245    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %2)
  br i1 %i.e, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !357
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %switch.lookup

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.g = load ptr, ptr %0, align 8, !tbaa !245    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i32 noundef %2)
  %i.k = load ptr, ptr %3, align 8, !tbaa !290, !noalias !360 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_525DynamicPropertyDoubleImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call ptr @__dynamic_cast(ptr nonnull %i.k, ptr nonnull @_ZTIN16OpenColorIO_v2_515DynamicPropertyE, ptr nonnull @_ZTIN16OpenColorIO_v2_525DynamicPropertyDoubleImplE, i64 0) #23, !noalias !360 ; 4 uses
  %.not.not.i = icmp eq ptr %i.m, null
  br i1 %.not.not.i, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_525DynamicPropertyDoubleImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21, !noalias !360 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_525DynamicPropertyDoubleImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23, !noalias !360
  %.not.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3, !noalias !360
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !3, !noalias !360
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_525DynamicPropertyDoubleImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit

bb.h:                                             ; preds = %bb.f
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4, !noalias !360 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_525DynamicPropertyDoubleImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_525DynamicPropertyDoubleImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.g, %bb.h
  %.sroa.0.0 = phi ptr [ %i.m, %bb.g ], [ %i.m, %bb.e ], [ %i.m, %bb.h ], [ null, %bb.d ], [ null, %bb.c ]
  %.sroa.6.0 = phi ptr [ %i.o, %bb.g ], [ null, %bb.e ], [ %i.o, %bb.h ], [ null, %bb.d ], [ null, %bb.c ]
  store ptr %.sroa.0.0, ptr %1, align 8, !tbaa !363
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21   ; 8 uses
  store ptr %.sroa.6.0, ptr %i.u, align 8, !tbaa !21
  %.not.i.i.i.i10 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i10, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_525DynamicPropertyDoubleImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.w, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !14
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #23, !inline_history !364
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #23, !inline_history !364
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i11 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i11, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi i32 [ %i.z, %bb.l ], [ %i.aj, %bb.m ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.n, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !24

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.j, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_525DynamicPropertyDoubleImplENS0_15DynamicPropertyEESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !21 ; 8 uses
  %.not.i.i12 = icmp eq ptr %i.am, null
  br i1 %.not.i.i12, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.an, align 8, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !14
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #23, !inline_history !365
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #23, !inline_history !365
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i13 = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i13, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = add nsw i32 %i.aq, -1
  store i32 %i.az, ptr %i.an, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14

bb.s:                                             ; preds = %bb.q
  %i.ba = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i15 = phi i32 [ %i.aq, %bb.r ], [ %i.ba, %bb.s ]
  %i.bb = icmp eq i32 %.0.i.i.i.i15, 1
  br i1 %i.bb, label %bb.t, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !24

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.ab

switch.lookup:                                    ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.bc = zext nneg i32 %2 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_25DynamicPropertyDoubleImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE, i64 %i.bc
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.bd = zext nneg i32 %2 to i64
  %switch.gep35 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN16OpenColorIO_v2_512_GLOBAL__N_123ValidateDynamicPropertyINS_25DynamicPropertyDoubleImplEEEvSt10shared_ptrINS_2OpEERS3_IT_ENS_19DynamicPropertyTypeE.9, i64 %i.bd
  %switch.load36 = load i64, ptr %switch.gep35, align 8
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %switch.load, i64 noundef %switch.load36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %switch.lookup, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %switch.lookup
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.44, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.bh, ptr %5, align 8, !tbaa !38, !alias.scope !372
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !31, !alias.scope !372
  store i8 0, ptr %i.bh, align 8, !tbaa !23, !alias.scope !372
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %7 = load ptr, ptr %6, align 8, !tbaa !40, !noalias !372 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %7, null
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !372 ; 2 uses
  %8 = icmp ugt ptr %7, %i.bk
  %.08.i.i.i = select i1 %8, ptr %7, ptr %i.bk    ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i19 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i19, label %bb.x, label %bb.v

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !44, !noalias !372 ; 2 uses
  %i.bn = ptrtoint ptr %.08.i.i.i to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.bm, i64 noundef %i.bp)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.x, %bb.v
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %5, align 8, !tbaa !27, !alias.scope !372 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bh
  br i1 %i.bt, label %.body, label %.body.sink.split

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.w

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.x, %bb.v
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bv = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bh
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.bx = load i64, ptr %i.bh, align 8, !tbaa !23
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bz = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bz, ptr %4, align 8, !tbaa !7
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cb = getelementptr i8, ptr %i.bz, i64 -24
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds i8, ptr %4, i64 %i.cc
  store ptr %i.ca, ptr %i.cd, align 8, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ce, align 8, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !27 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !23
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ce, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cl) #23
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cm) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.ab

bb.z:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.bh
  br i1 %i.cp, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.z, %bb.w
  %.sink = phi ptr [ %i.bs, %bb.w ], [ %i.co, %bb.z ]
  %.pn.ph = phi { ptr, i32 } [ %i.br, %bb.w ], [ %i.cn, %bb.z ]
  %i.cq = load i64, ptr %i.bh, align 8, !tbaa !23
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cr) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.z, %bb.w
  %.pn = phi { ptr, i32 } [ %i.br, %bb.w ], [ %i.cn, %bb.z ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.aa

bb.aa:                                            ; preds = %.body, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bf, %bb.u ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn.pn

bb.ab:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_510OpRcPtrVec10getCacheIDB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(144) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = load ptr, ptr %1, align 8, !tbaa !250    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !250  ; 2 uses
  %.not18 = icmp eq ptr %i.a, %i.c
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br label %bb.e

._crit_edge:                                      ; preds = %bb.m, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !38, !alias.scope !379
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !31, !alias.scope !379
  store i8 0, ptr %i.f, align 8, !tbaa !23, !alias.scope !379
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %5 = load ptr, ptr %4, align 8, !tbaa !40, !noalias !379 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %5, null
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noalias !379 ; 2 uses
  %6 = icmp ugt ptr %5, %i.i
  %.08.i.i.i = select i1 %6, ptr %5, ptr %i.i     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44, !noalias !379 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !27, !alias.scope !379 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.f
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.f, align 8, !tbaa !23, !alias.scope !379
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #26
  br label %.body

bb.d:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

bb.e:                                             ; preds = %.lr.ph, %bb.m
  %.sroa.015.019 = phi ptr [ %i.a, %.lr.ph ], [ %i.av, %bb.m ] ; 3 uses
  %i.v = load ptr, ptr %.sroa.015.019, align 8, !tbaa !245 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  br i1 %i.z, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.aa = load ptr, ptr %.sroa.015.019, align 8, !tbaa !245 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !31
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.22, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i
  %i.ah = load ptr, ptr %3, align 8, !tbaa !27
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !31
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.ah, i64 noundef %i.ai)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.l ; 0 uses

bb.j:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.e
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.ap = load i64, ptr %i.e, align 8, !tbaa !23
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.h
  %i.ar = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.e
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.at = load i64, ptr %i.e, align 8, !tbaa !23
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %.pn = phi { ptr, i32 } [ %i.al, %bb.k ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.am, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.av, %i.c
  br i1 %.not, label %._crit_edge, label %bb.e

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.aw = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aw, ptr %2, align 8, !tbaa !7
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ay = getelementptr i8, ptr %i.aw, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %2, i64 %i.az
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bb, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !27 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !23
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bb, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bi) #23
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_2OpE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.d = load ptr, ptr %2, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !31
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.d, i64 noundef %i.f)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !23
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret ptr %0

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.b
  %i.q = load i64, ptr %i.o, align 8, !tbaa !23
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_514SerializeOpVecB5cxx11ERKNS_10OpRcPtrVecEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(144) %1, i32 noundef %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %._crit_edge.i.i.lr.ph

._crit_edge.i.i.lr.ph:                            ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 17
  br label %._crit_edge.i.i

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !38, !alias.scope !386
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !31, !alias.scope !386
  store i8 0, ptr %i.q, align 8, !tbaa !23, !alias.scope !386
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %9 = load ptr, ptr %8, align 8, !tbaa !40, !noalias !386 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %9, null
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !noalias !386 ; 2 uses
  %10 = icmp ugt ptr %9, %i.t
  %.08.i.i.i = select i1 %10, ptr %9, ptr %i.t    ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44, !noalias !386 ; 2 uses
  %i.w = ptrtoint ptr %.08.i.i.i to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.v, i64 noundef %i.y)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !27, !alias.scope !386 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.q
  br i1 %i.ac, label %.body33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !23, !alias.scope !386
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #26
  br label %.body33

bb.d:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43
  %.073 = phi i64 [ 0, %._crit_edge.i.i.lr.ph ], [ %i.bz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43 ] ; 3 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !59
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %.073 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %i.h, ptr %6, align 8, !tbaa !38
  store i8 32, ptr %i.h, align 8, !tbaa !23
  store i64 1, ptr %i.i, align 8, !tbaa !31
  store i8 0, ptr %i.p, align 1, !tbaa !23
  invoke void @_ZN8pystring3mulERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ai = load ptr, ptr %5, align 8, !tbaa !27
  %i.aj = load i64, ptr %i.j, align 8, !tbaa !31
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.ai, i64 noundef %i.aj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.j ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.e
  %i.al = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.k
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.an = load i64, ptr %i.k, align 8, !tbaa !23
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ap = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.h
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = load i64, ptr %i.h, align 8, !tbaa !23
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.23, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %.073)
          to label %_ZNSolsEm.exit unwind label %bb.h ; 3 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.24, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31: ; preds = %_ZNSolsEm.exit
  %i.aw = load ptr, ptr %i.ah, align 8, !tbaa !245 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  invoke void %i.az(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %.noexc32 unwind label %bb.h, !inline_history !387

.noexc32:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.ba = load ptr, ptr %3, align 8, !tbaa !27
  %i.bb = load i64, ptr %i.l, align 8, !tbaa !31
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef %i.ba, i64 noundef %i.bb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.f ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %.noexc32
  %i.bd = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.m
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.bf = load i64, ptr %i.m, align 8, !tbaa !23
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.f:                                             ; preds = %.noexc32
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.m
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.f
  %i.bk = load i64, ptr %i.m, align 8, !tbaa !23
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.22, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.bn = load ptr, ptr %i.ah, align 8, !tbaa !245 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 112
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36
  %i.br = load ptr, ptr %7, align 8, !tbaa !27
  %i.bs = load i64, ptr %i.n, align 8, !tbaa !31
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.br, i64 noundef %i.bs)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit38 unwind label %bb.l ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit38: ; preds = %bb.g
  %i.bu = load ptr, ptr %7, align 8, !tbaa !27    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.o
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit38
  %i.bw = load i64, ptr %i.o, align 8, !tbaa !23
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.25, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.bz = add nuw i64 %.073, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %._crit_edge.i.i, !llvm.loop !388

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body33

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.j:                                             ; preds = %bb.e
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.k
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.j
  %i.cf = load i64, ptr %i.k, align 8, !tbaa !23
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.i
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.i ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.cc, %bb.j ]
  %i.ch = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.h
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.cj = load i64, ptr %i.h, align 8, !tbaa !23
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

end_hunk_2
