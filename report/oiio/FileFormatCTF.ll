inline.NumInlined: 2807
inline.NumDeleted: 1170
begin_hunk_0_@_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_521CTFReaderTransformEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E:bb.a
_ZNSt10shared_ptrIN16OpenColorIO_v2_521CTFReaderTransformEltEEC2INS0_16XmlReaderElementEEERKS_IT_EPS1_.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521CTFReaderTransformEltEEC2INS0_16XmlReaderElementEEERKS_IT_EPS1_.exit.thread

_ZNSt10shared_ptrIN16OpenColorIO_v2_521CTFReaderTransformEltEEC2INS0_16XmlReaderElementEEERKS_IT_EPS1_.exit.thread: ; preds = %bb.f, %bb.e, %bb.c, %_ZNSt10shared_ptrIN16OpenColorIO_v2_521CTFReaderTransformEltEEC2INS0_16XmlReaderElementEEERKS_IT_EPS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !88
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !192
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !192
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !90

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_521CTFReaderTransformEltELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !88
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !192
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !192
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !90

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK16OpenColorIO_v2_521CTFReaderTransformElt12getTransformEv(ptr noundef nonnull align 8 dereferenceable(97)) local_unnamed_addr #11

declare noundef i32 @_ZNK16OpenColorIO_v2_521XmlReaderElementStack4sizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper16SupportedElementEPKcRSt10shared_ptrINS_16XmlReaderElementEES3_S3_Rb(ptr noundef %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %4) unnamed_addr #2 align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !19
  %i.b = icmp ne i8 %i.a, 0
  %i.c = icmp ne ptr %2, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %2, align 1, !tbaa !19
  %.not17 = icmp eq i8 %i.d, 0
  br i1 %.not17, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %4, align 1, !tbaa !227
  %.not18 = icmp eq ptr %3, null
  br i1 %.not18, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %char0 = load i8, ptr %3, align 1
  %.not19 = icmp eq i8 %char0, 0
  br i1 %.not19, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = load ptr, ptr %1, align 8, !tbaa !82     ; 2 uses
  %.not20 = icmp eq ptr %i.g, null
  br i1 %.not20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %i.i, ptr noundef nonnull %3)
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h, %bb.g, %bb.c, %bb.b, %bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.f, %bb.h, %bb.i
  %.0 = phi i1 [ false, %bb.i ], [ true, %bb.h ], [ true, %bb.f ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper11AddOpReaderENS_14CTFReaderOpElt4TypeEPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef range(i32 0, 18) %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %4 = alloca %"class.std::shared_ptr.23", align 8 ; 4 uses
  %5 = alloca %"class.std::shared_ptr.32", align 8 ; 7 uses
  %6 = alloca %"class.std::shared_ptr.23", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::shared_ptr.23", align 8 ; 8 uses
  %9 = alloca %"class.std::shared_ptr.29", align 8 ; 9 uses
  %10 = alloca %"class.std::shared_ptr.50", align 16 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::shared_ptr.23", align 16 ; 4 uses
  store ptr %2, ptr %i.b, align 8, !tbaa !193
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.f = tail call noundef i32 @_ZNK16OpenColorIO_v2_521XmlReaderElementStack4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %.not = icmp eq i32 %i.f, 1
  br i1 %.not, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.46, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !193  ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !30
  %i.p = or i32 %i.o, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.m, i32 noundef %i.p)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.af

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #26
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.i, i64 noundef %i.q)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %bb.c, %bb.d
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.47, i64 noundef 33)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.t = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_521XmlReaderElementStack5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.e unwind label %bb.ag

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_ZNK16OpenColorIO_v2_521XmlReaderElementStack4backEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.23") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.h unwind label %bb.ag

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val28 = load i32, ptr %i.u, align 8, !tbaa !80
  store i32 %.val28, ptr %i.c, align 4, !tbaa !3
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !378)
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.w, ptr %7, align 8, !tbaa !13, !alias.scope !384
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !16, !alias.scope !384
  store i8 0, ptr %i.w, align 8, !tbaa !19, !alias.scope !384
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !323, !noalias !384 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !384 ; 2 uses
  %i.ac = icmp ugt ptr %i.z, %i.ab
  %.08.i.i.i = select i1 %i.ac, ptr %i.z, ptr %i.ab ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !325, !noalias !384 ; 2 uses
  %i.af = ptrtoint ptr %.08.i.i.i to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.ae, i64 noundef %i.ah)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %7, align 8, !tbaa !29, !alias.scope !384 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.w
  br i1 %i.al, label %.body, label %.body.sink.split

bb.k:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.k, %bb.i
  %i.an = load ptr, ptr %7, align 8, !tbaa !29
  store ptr %i.an, ptr %i.d, align 8, !tbaa !193
  call void @llvm.experimental.noalias.scope.decl(metadata !385)
  store ptr null, ptr %5, align 8, !tbaa !220, !alias.scope !385
  %i.ao = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #27
          to label %.noexc33 unwind label %bb.ah  ; 6 uses

.noexc33:                                         ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 1, ptr %i.ap, align 8, !tbaa !86, !noalias !385
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 1, ptr %i.aq, align 4, !tbaa !88, !noalias !385
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517XmlReaderDummyEltESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ao, align 8, !tbaa !11, !noalias !385
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN16OpenColorIO_v2_517XmlReaderDummyEltEJRPKcSt10shared_ptrINS0_16XmlReaderElementEEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_EEvPT_DpOT0_(ptr noundef nonnull %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.l unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517XmlReaderDummyEltESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i, !noalias !385

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517XmlReaderDummyEltESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i: ; preds = %.noexc33
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 136) #28, !noalias !385
  br label %.body34

bb.l:                                             ; preds = %.noexc33
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.ar, ptr %4, align 8, !tbaa !82
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.at, align 8, !tbaa !85
  store ptr %i.ao, ptr %i.au, align 8, !tbaa !85
  store ptr null, ptr %5, align 8, !tbaa !220
  invoke void @_ZN16OpenColorIO_v2_521XmlReaderElementStack9push_backESt10shared_ptrINS_16XmlReaderElementEE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull %4)
          to label %bb.m unwind label %bb.ai

bb.m:                                             ; preds = %bb.l
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !85 ; 8 uses
  %.not.i.i36 = icmp eq ptr %i.av, null
  br i1 %.not.i.i36, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4294967297
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.aw, align 8, !tbaa !86
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !88
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !11
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #26, !inline_history !209
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !11
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #26, !inline_history !209
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.az, %bb.q ], [ %i.bj, %bb.r ]
  %i.bk = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bk, label %bb.s, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !90

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.m, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.s
  %i.bl = load ptr, ptr %i.at, align 8, !tbaa !85 ; 8 uses
  %.not.i.i37 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i37, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bm, align 8, !tbaa !86
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !88
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !11
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #26, !inline_history !223
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !11
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #26, !inline_history !223
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i38 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i38, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39

bb.x:                                             ; preds = %bb.v
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i40 = phi i32 [ %i.bp, %bb.w ], [ %i.bz, %bb.x ]
  %i.ca = icmp eq i32 %.0.i.i.i.i40, 1
  br i1 %i.ca, label %bb.y, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !90

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39, %bb.y
  %i.cb = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.w
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cd = load i64, ptr %i.w, align 8, !tbaa !19
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !85 ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit45, label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 4 uses
  %i.ci = load atomic i64, ptr %i.ch acquire, align 8 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 4294967297
  %i.ck = trunc i64 %i.ci to i32                  ; 2 uses
  br i1 %i.cj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ch, align 8, !tbaa !86
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  store i32 0, ptr %i.cl, align 4, !tbaa !88
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !11
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #26, !inline_history !209
  %i.cp = load ptr, ptr %i.cg, align 8, !tbaa !11
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #26, !inline_history !209
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit45

bb.ab:                                            ; preds = %bb.z
  %i.cs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i42 = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i42, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ct = add nsw i32 %i.ck, -1
  store i32 %i.ct, ptr %i.ch, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43

bb.ad:                                            ; preds = %bb.ab
  %i.cu = atomicrmw volatile add ptr %i.ch, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i44 = phi i32 [ %i.ck, %bb.ac ], [ %i.cu, %bb.ad ]
  %i.cv = icmp eq i32 %.0.i.i.i.i44, 1
  br i1 %i.cv, label %bb.ae, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit45, !prof !90

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit45

_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.cw = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cw, ptr %3, align 8, !tbaa !11
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.cy = getelementptr i8, ptr %i.cw, i64 -24
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = getelementptr inbounds i8, ptr %3, i64 %i.cz
  store ptr %i.cx, ptr %i.da, align 8, !tbaa !11
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.db, ptr %i.g, align 8, !tbaa !11
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dc, align 8, !tbaa !11
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !29 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit45
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !19
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #28
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dc, align 8, !tbaa !11
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dj) #26
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.dk, ptr %3, align 8, !tbaa !11
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dm = getelementptr i8, ptr %i.dk, i64 -24
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = getelementptr inbounds i8, ptr %3, i64 %i.dn
  store ptr %i.dl, ptr %i.do, align 8, !tbaa !11
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.dp, align 8, !tbaa !388
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.dq) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.dc

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30, %bb.d, %bb.c, %bb.b
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ag:                                            ; preds = %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ah:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body34

bb.ai:                                            ; preds = %bb.l
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #26
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  br label %.body34

.body34:                                          ; preds = %bb.ah, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517XmlReaderDummyEltESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i, %bb.ai
  %.pn22 = phi { ptr, i32 } [ %i.du, %bb.ai ], [ %i.dt, %bb.ah ], [ %i.as, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517XmlReaderDummyEltESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i ] ; 2 uses
  %i.dv = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.w
  br i1 %i.dw, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body34, %bb.j
  %.sink153 = phi ptr [ %i.ak, %bb.j ], [ %i.dv, %.body34 ]
  %.pn22.pn.ph = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %.pn22, %.body34 ]
  %i.dx = load i64, ptr %i.w, align 8, !tbaa !19
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %.sink153, i64 noundef %i.dy) #28
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body34, %bb.j
  %.pn22.pn = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %.pn22, %.body34 ], [ %.pn22.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  br label %bb.aj

bb.aj:                                            ; preds = %.body, %bb.ag
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %.body ], [ %i.ds, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %.pn22.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn, %bb.aj ], [ %i.dr, %bb.af ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.dd

bb.al:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @_ZNK16OpenColorIO_v2_521XmlReaderElementStack4backEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.23") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %15 = load ptr, ptr %8, align 8, !tbaa !82, !noalias !390, !nonnull !226, !noundef !226
  %16 = call ptr @__dynamic_cast(ptr nonnull %15, ptr nonnull @_ZTIN16OpenColorIO_v2_516XmlReaderElementE, ptr nonnull @_ZTIN16OpenColorIO_v2_521CTFReaderTransformEltE, i64 0) #26, !noalias !390 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %16) ]
  store ptr %16, ptr %9, align 8, !tbaa !214, !alias.scope !390
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !85, !noalias !390 ; 3 uses
  store ptr %i.eb, ptr %i.dz, align 8, !tbaa !85, !alias.scope !390
  %.not.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_521CTFReaderTransformEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 3 uses
  %i.ed = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !390
  %.not.i.i.i.i.i = icmp eq i8 %i.ed, 0
  br i1 %.not.i.i.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !3, !noalias !390
  %i.ef = add nsw i32 %i.ee, 1
  store i32 %i.ef, ptr %i.ec, align 4, !tbaa !3, !noalias !390
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_521CTFReaderTransformEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit

bb.ao:                                            ; preds = %bb.am
  %i.eg = atomicrmw volatile add ptr %i.ec, i32 1 acq_rel, align 4, !noalias !390 ; 0 uses
  %.pre = load ptr, ptr %9, align 8, !tbaa !214
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_521CTFReaderTransformEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_521CTFReaderTransformEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit: ; preds = %bb.al, %bb.an, %bb.ao
  %17 = phi ptr [ %16, %bb.al ], [ %16, %bb.an ], [ %.pre, %bb.ao ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.eh = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK16OpenColorIO_v2_521CTFReaderTransformElt10getVersionEv(ptr noundef nonnull align 8 dereferenceable(97) %17)
          to label %bb.ap unwind label %bb.az

bb.ap:                                            ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_521CTFReaderTransformEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit
  %18 = load ptr, ptr %9, align 8, !tbaa !214     ; 4 uses
  %i.ei = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_521CTFReaderTransformElt5isCLFEv(ptr noundef nonnull align 8 dereferenceable(97) %18)
          to label %bb.aq unwind label %bb.az

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN16OpenColorIO_v2_514CTFReaderOpElt9GetReaderENS0_4TypeERKNS_10CTFVersionEb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %10, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %i.eh, i1 noundef zeroext %i.ei)
          to label %bb.ar unwind label %bb.az

bb.ar:                                            ; preds = %bb.aq
  %i.ej = load ptr, ptr %10, align 16, !tbaa !253 ; 2 uses
  %.not124 = icmp eq ptr %i.ej, null
  br i1 %.not124, label %bb.as, label %bb.bo

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11)
          to label %bb.at unwind label %bb.ba

bb.at:                                            ; preds = %bb.as
  %i.ek = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_521CTFReaderTransformElt5isCLFEv(ptr noundef nonnull align 8 dereferenceable(97) %18)
          to label %bb.au unwind label %bb.bb

bb.au:                                            ; preds = %bb.at
  %i.el = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 11 uses
  br i1 %i.ek, label %bb.av, label %bb.bc

bb.av:                                            ; preds = %bb.au
  %i.em = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull @.str.48, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50 unwind label %bb.bb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50: ; preds = %bb.av
  %i.en = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK16OpenColorIO_v2_521CTFReaderTransformElt13getCLFVersionEv(ptr noundef nonnull align 8 dereferenceable(97) %18)
          to label %bb.aw unwind label %bb.bb     ; 3 uses

bb.aw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !393
  %i.ep = zext i32 %i.eo to i64
  %i.eq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.el, i64 noundef %i.ep)
          to label %.noexc52 unwind label %bb.bb  ; 0 uses

.noexc52:                                         ; preds = %bb.aw
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 4 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !395
  %.not.i51 = icmp eq i32 %i.es, 0
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 3 uses
  %i.eu = load i32, ptr %i.et, align 4
  %.not10.i = icmp eq i32 %i.eu, 0
  %or.cond.i = select i1 %.not.i51, i1 %.not10.i, i1 false
  br i1 %or.cond.i, label %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit, label %bb.ax

bb.ax:                                            ; preds = %.noexc52
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull @.str.51, i64 noundef 1)
          to label %.noexc53 unwind label %bb.bb  ; 0 uses

.noexc53:                                         ; preds = %bb.ax
  %i.ew = load i32, ptr %i.er, align 4, !tbaa !395
  %i.ex = zext i32 %i.ew to i64
  %i.ey = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.el, i64 noundef %i.ex)
          to label %.noexc54 unwind label %bb.bb  ; 0 uses

.noexc54:                                         ; preds = %.noexc53
  %i.ez = load i32, ptr %i.et, align 4, !tbaa !396
  %.not11.i = icmp eq i32 %i.ez, 0
  br i1 %.not11.i, label %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit, label %bb.ay

bb.ay:                                            ; preds = %.noexc54
  %i.fa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull @.str.51, i64 noundef 1)
          to label %.noexc66.invoke unwind label %bb.bb ; 0 uses

bb.az:                                            ; preds = %bb.aq, %bb.ap, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_521CTFReaderTransformEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.ba:                                            ; preds = %bb.as
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bb:                                            ; preds = %.noexc66.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74, %bb.bh, %bb.bg, %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit, %bb.bf, %.noexc64, %bb.be, %bb.bd, %bb.bc, %bb.ay, %.noexc53, %bb.ax, %bb.aw, %bb.av, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50, %bb.at
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bc:                                            ; preds = %bb.au
  %i.fe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull @.str.49, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58 unwind label %bb.bb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58: ; preds = %bb.bc
  %i.ff = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK16OpenColorIO_v2_521CTFReaderTransformElt10getVersionEv(ptr noundef nonnull align 8 dereferenceable(97) %18)
          to label %bb.bd unwind label %bb.bb     ; 3 uses

bb.bd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !393
  %i.fh = zext i32 %i.fg to i64
  %i.fi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.el, i64 noundef %i.fh)
          to label %.noexc63 unwind label %bb.bb  ; 0 uses

.noexc63:                                         ; preds = %bb.bd
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 4 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !395
  %.not.i59 = icmp eq i32 %i.fk, 0
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 3 uses
  %i.fm = load i32, ptr %i.fl, align 4
  %.not10.i60 = icmp eq i32 %i.fm, 0
  %or.cond.i61 = select i1 %.not.i59, i1 %.not10.i60, i1 false
  br i1 %or.cond.i61, label %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit, label %bb.be

bb.be:                                            ; preds = %.noexc63
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull @.str.51, i64 noundef 1)
          to label %.noexc64 unwind label %bb.bb  ; 0 uses

.noexc64:                                         ; preds = %bb.be
  %i.fo = load i32, ptr %i.fj, align 4, !tbaa !395
  %i.fp = zext i32 %i.fo to i64
  %i.fq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.el, i64 noundef %i.fp)
          to label %.noexc65 unwind label %bb.bb  ; 0 uses

.noexc65:                                         ; preds = %.noexc64
  %i.fr = load i32, ptr %i.fl, align 4, !tbaa !396
  %.not11.i62 = icmp eq i32 %i.fr, 0
  br i1 %.not11.i62, label %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit, label %bb.bf

bb.bf:                                            ; preds = %.noexc65
  %i.fs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull @.str.51, i64 noundef 1)
          to label %.noexc66.invoke unwind label %bb.bb ; 0 uses

.noexc66.invoke:                                  ; preds = %bb.bf, %bb.ay
  %.sink.in = phi ptr [ %i.et, %bb.ay ], [ %i.fl, %bb.bf ]
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !396
  %i.ft = zext i32 %.sink to i64
  %i.fu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.el, i64 noundef %i.ft)
          to label %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit unwind label %bb.bb ; 0 uses

_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit: ; preds = %.noexc66.invoke, %.noexc65, %.noexc63, %.noexc54, %.noexc52
  %i.fv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.fw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, ptr noundef nonnull @.str.50, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70 unwind label %bb.bb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70: ; preds = %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit
  %i.fx = load ptr, ptr %i.b, align 8, !tbaa !193 ; 3 uses
  %.not.i71 = icmp eq ptr %i.fx, null
  br i1 %.not.i71, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70
  %i.fy = load ptr, ptr %i.fv, align 8, !tbaa !11
  %i.fz = getelementptr i8, ptr %i.fy, i64 -24
  %i.ga = load i64, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds i8, ptr %i.fv, i64 %i.ga ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !30
  %i.ge = or i32 %i.gd, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.gb, i32 noundef %i.ge)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74 unwind label %bb.bb

bb.bh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70
  %i.gf = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fx) #26
  %i.gg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, ptr noundef nonnull %i.fx, i64 noundef %i.gf)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74 unwind label %bb.bb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74: ; preds = %bb.bg, %bb.bh
  %i.gh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, ptr noundef nonnull @.str.36, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.bb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.gi = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.gi, ptr %12, align 8, !tbaa !13, !alias.scope !403
  %i.gj = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.gj, align 8, !tbaa !16, !alias.scope !403
  store i8 0, ptr %i.gi, align 8, !tbaa !19, !alias.scope !403
  %i.gk = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !323, !noalias !403 ; 3 uses
  %.not.i.not.i.i77 = icmp eq ptr %i.gl, null
  %i.gm = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.gn = load ptr, ptr %i.gm, align 8, !noalias !403 ; 2 uses
  %i.go = icmp ugt ptr %i.gl, %i.gn
  %.08.i.i.i78 = select i1 %i.go, ptr %i.gl, ptr %i.gn ; 2 uses
  %.not5.i.i79 = icmp eq ptr %.08.i.i.i78, null
  %.not.i.i80 = select i1 %.not.i.not.i.i77, i1 true, i1 %.not5.i.i79
  br i1 %.not.i.i80, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.gp = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !325, !noalias !403 ; 2 uses
  %i.gr = ptrtoint ptr %.08.i.i.i78 to i64
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef %i.gq, i64 noundef %i.gt)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit86 unwind label %bb.bj ; 0 uses

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %i.gv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gw = load ptr, ptr %12, align 8, !tbaa !29, !alias.scope !403 ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.gi
  br i1 %i.gx, label %.body84, label %.body84.sink.split

bb.bk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.gy = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.gy)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit86 unwind label %bb.bj

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit86: ; preds = %bb.bk, %bb.bi
  invoke fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.unreachable unwind label %bb.bl

.unreachable:                                     ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit86
  unreachable

bb.bl:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit86
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ha = load ptr, ptr %12, align 8, !tbaa !29   ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.gi
  br i1 %i.hb, label %.body84, label %.body84.sink.split

.body84.sink.split:                               ; preds = %bb.bl, %bb.bj
  %.sink156 = phi ptr [ %i.gw, %bb.bj ], [ %i.ha, %bb.bl ]
  %.pn.ph = phi { ptr, i32 } [ %i.gv, %bb.bj ], [ %i.gz, %bb.bl ]
  %i.hc = load i64, ptr %i.gi, align 8, !tbaa !19
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %.sink156, i64 noundef %i.hd) #28
  br label %.body84

.body84:                                          ; preds = %.body84.sink.split, %bb.bl, %bb.bj
  %.pn = phi { ptr, i32 } [ %i.gv, %bb.bj ], [ %i.gz, %bb.bl ], [ %.pn.ph, %.body84.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.bm

bb.bm:                                            ; preds = %.body84, %bb.bb
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body84 ], [ %i.fd, %bb.bb ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11) #26
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.ba
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bm ], [ %i.fc, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.da

bb.bo:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.he = load ptr, ptr %i.b, align 8, !tbaa !193 ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.hf, ptr %13, align 8, !tbaa !13
  %i.hg = icmp eq ptr %i.he, null
  br i1 %i.hg, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.45) #29
          to label %.noexc96 unwind label %bb.cx

.noexc96:                                         ; preds = %bb.bp
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.hh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.he) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.hh, ptr %i.a, align 8, !tbaa !69
  %i.hi = icmp ugt i64 %i.hh, 15
  br i1 %i.hi, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.bq
  %i.hj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc97 unwind label %bb.cx  ; 2 uses

.noexc97:                                         ; preds = %.noexc.i
  store ptr %i.hj, ptr %13, align 8, !tbaa !29
  %i.hk = load i64, ptr %i.a, align 8, !tbaa !69
  store i64 %i.hk, ptr %i.hf, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc97, %bb.bq
  %i.hl = phi ptr [ %i.hj, %.noexc97 ], [ %i.hf, %bb.bq ] ; 2 uses
  switch i64 %i.hh, label %bb.bs [
    i64 1, label %bb.br
    i64 0, label %bb.bt
  ]

bb.br:                                            ; preds = %._crit_edge.i.i
  %i.hm = load i8, ptr %i.he, align 1, !tbaa !19
  store i8 %i.hm, ptr %i.hl, align 1, !tbaa !19
  br label %bb.bt

bb.bs:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hl, ptr nonnull align 1 %i.he, i64 %i.hh, i1 false)
  br label %bb.bt

end_hunk_0
