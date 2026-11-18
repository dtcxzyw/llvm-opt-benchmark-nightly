Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CGLTFMeshFileLoader?download=true
inline.NumInlined: 12819
inline.NumDeleted: 6981
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 100
begin_hunk_0_@_ZZN10tiniergltf7readGlbEPKcmRKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_EEEN6Stream9readChunkEv:bb.a
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.h:                                             ; preds = %_ZZN10tiniergltf7readGlbEPKcmRKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_EEEN6Stream10readUint32Ev.exit
  %i.x = icmp ult i32 %i.s, 4
  br i1 %i.x, label %bb.i, label %_ZZN10tiniergltf7readGlbEPKcmRKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_EEEN6Stream10readUint32Ev.exit11

bb.i:                                             ; preds = %bb.h
  %i.y = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull @.str.45)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZZN10tiniergltf7readGlbEPKcmRKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_EEEN6Stream10readUint32Ev.exit11: ; preds = %bb.h
  %i.aa = load i32, ptr %i.t, align 1
  %i.ab = add i32 %i.b, -8                        ; 3 uses
  store i32 %i.ab, ptr %i.a, align 8, !tbaa !571
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.ac, ptr %1, align 8, !tbaa !572
  %i.ad = icmp ult i32 %i.ab, %i.r
  br i1 %i.ad, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZZN10tiniergltf7readGlbEPKcmRKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_EEEN6Stream10readUint32Ev.exit11
  %i.ae = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull @.str.45)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.o:                                             ; preds = %_ZZN10tiniergltf7readGlbEPKcmRKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_EEEN6Stream10readUint32Ev.exit11
  %i.ag = sub nuw i32 %i.ab, %i.r
  store i32 %i.ag, ptr %i.a, align 8, !tbaa !571
  %i.ah = zext i32 %i.r to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah
  store ptr %i.ai, ptr %1, align 8, !tbaa !572
  store i32 %i.aa, ptr %0, align 8, !tbaa !574
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.aj, align 8, !tbaa !568
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.r, ptr %i.ak, align 8, !tbaa !569
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !93, !range !80, !noundef !81
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !61     ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = icmp eq ptr %i.d, %i.e
  %i.g = load ptr, ptr %1, align 8, !tbaa !61     ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.i, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !59   ; 3 uses
  %i.l = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !318

bb.d:                                             ; preds = %bb.c
  switch i64 %i.k, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.g, align 1, !tbaa !60
  store i8 %i.m, ptr %i.d, align 1, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr align 1 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.n = load i64, ptr %i.j, align 8, !tbaa !59   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !59
  %i.p = load ptr, ptr %0, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !60
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %0, align 8, !tbaa !61
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !59
  store i64 %i.t, ptr %i.r, align 8, !tbaa !59
  %i.u = load i64, ptr %i.h, align 8, !tbaa !60
  store i64 %i.u, ptr %i.e, align 8, !tbaa !60
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.v = load i64, ptr %i.e, align 8, !tbaa !60
  store ptr %i.g, ptr %0, align 8, !tbaa !61
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !59
  %i.z = load i64, ptr %i.h, align 8, !tbaa !60
  store i64 %i.z, ptr %i.e, align 8, !tbaa !60
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.d, ptr %1, align 8, !tbaa !61
  store i64 %i.v, ptr %i.h, align 8, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.h, ptr %1, align 8, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.aa = phi ptr [ %i.d, %bb.g ], [ %i.h, %bb.h ], [ %i.g, %bb.c ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !59
  store i8 0, ptr %i.aa, align 1, !tbaa !60
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !56
  %i.ad = load ptr, ptr %1, align 8, !tbaa !61    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false)
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  store ptr %i.ad, ptr %0, align 8, !tbaa !61
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !60
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !60
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !59
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !59
  store ptr %i.ae, ptr %1, align 8, !tbaa !61
  store i64 0, ptr %i.al, align 8, !tbaa !59
  store i8 0, ptr %i.ae, align 8, !tbaa !60
  store i8 1, ptr %i.a, align 8, !tbaa !93
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN10tiniergltfL8readJsonENS_4SpanIKcEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %1, i32 %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Json::CharReaderBuilder", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN4Json17CharReaderBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.a = invoke noundef ptr @_ZNK4Json17CharReaderBuilder13newCharReaderEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.b unwind label %bb.i       ; 7 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4Json5ValueC1ENS_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 0)
          to label %bb.c unwind label %bb.o

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !59
  store i8 0, ptr %i.b, align 8, !tbaa !60
  %i.d = zext i32 %2 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %1, ptr noundef %i.e, ptr noundef nonnull %0, ptr noundef nonnull %4)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.48, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
          to label %bb.p unwind label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4Json10CharReaderESt14default_deleteIS1_EED2Ev.exit27

bb.j:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread: ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.k:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]  ; 2 uses
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.o = load ptr, ptr %5, align 8, !tbaa !61     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.r = load i64, ptr %i.p, align 8, !tbaa !60
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = load ptr, ptr %6, align 8, !tbaa !61     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %6, align 8, !tbaa !61     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !60
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #31
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !60
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.ad) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.0, label %bb.l, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.0, label %bb.l, label %bb.n

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread
  %.pn.pn34.ph = phi { ptr, i32 } [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %.pn.pn34 = phi { ptr, i32 } [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %.pn.pn34.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.j) #30
  br label %bb.n

bb.m:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %4, align 8, !tbaa !61    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.b
  br i1 %i.af, label %_ZNSt10unique_ptrIN4Json10CharReaderESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.m
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !60
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #31
  br label %_ZNSt10unique_ptrIN4Json10CharReaderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4Json10CharReaderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #30, !inline_history !1221
  call void @_ZN4Json17CharReaderBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %bb.l, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn34, %bb.l ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %i.l, %bb.j ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ]
  %i.al = load ptr, ptr %4, align 8, !tbaa !61    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.b
  br i1 %i.am, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.n
  %i.an = load i64, ptr %i.b, align 8, !tbaa !60
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #31
  br label %.thread

.thread:                                          ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #30
  br label %_ZNKSt14default_deleteIN4Json10CharReaderEEclEPS1_.exit.i26

bb.o:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i25 = icmp eq ptr %i.a, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIN4Json10CharReaderESt14default_deleteIS1_EED2Ev.exit27, label %_ZNKSt14default_deleteIN4Json10CharReaderEEclEPS1_.exit.i26

_ZNKSt14default_deleteIN4Json10CharReaderEEclEPS1_.exit.i26: ; preds = %.thread, %bb.o
  %.pn.pn.pn.pn46 = phi { ptr, i32 } [ %.pn.pn.pn, %.thread ], [ %i.ap, %bb.o ]
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #30, !inline_history !1221
  br label %_ZNSt10unique_ptrIN4Json10CharReaderESt14default_deleteIS1_EED2Ev.exit27

_ZNSt10unique_ptrIN4Json10CharReaderESt14default_deleteIS1_EED2Ev.exit27: ; preds = %_ZNKSt14default_deleteIN4Json10CharReaderEEclEPS1_.exit.i26, %bb.o, %bb.i
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.k, %bb.i ], [ %i.ap, %bb.o ], [ %.pn.pn.pn.pn46, %_ZNKSt14default_deleteIN4Json10CharReaderEEclEPS1_.exit.i26 ]
  call void @_ZN4Json17CharReaderBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn.pn.pn.pn.pn

bb.p:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10tiniergltf4GlTFC2ERKN4Json5ValueERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSB_EEOSt8optionalISB_E(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.152", align 16  ; 5 uses
  %5 = alloca %"class.std::vector.22", align 16   ; 5 uses
  %6 = alloca %"class.std::vector", align 16      ; 5 uses
  %7 = alloca %"class.std::vector", align 16      ; 11 uses
  %8 = alloca %"class.std::vector.22", align 16   ; 11 uses
  %9 = alloca %"class.std::vector.47", align 16   ; 14 uses
  %10 = alloca %"class.Json::Value", align 8      ; 12 uses
  %11 = alloca %"class.std::vector.62", align 8   ; 14 uses
  %12 = alloca %"class.std::optional.31", align 8 ; 17 uses
  %13 = alloca %"class.std::vector.77", align 16  ; 14 uses
  %14 = alloca %"class.std::vector.92", align 16  ; 14 uses
  %15 = alloca %"class.std::vector.92", align 16  ; 14 uses
  %16 = alloca %"class.std::vector.107", align 8  ; 9 uses
  %17 = alloca %"class.std::vector.122", align 16 ; 14 uses
  %18 = alloca %"class.std::vector.137", align 16 ; 14 uses
  %19 = alloca %"class.std::vector.152", align 16 ; 11 uses
  %20 = alloca %"class.std::vector.167", align 16 ; 14 uses
  %21 = alloca %"class.std::vector.190", align 8  ; 9 uses
  %22 = alloca %"class.std::vector.205", align 8  ; 9 uses
  %23 = alloca %"class.std::vector.220", align 16 ; 14 uses
  %24 = alloca %class.anon.1167, align 8          ; 5 uses
  %25 = alloca %class.anon.1168, align 8          ; 7 uses
  %26 = alloca %class.anon.1171, align 8          ; 5 uses
  %27 = alloca %class.anon.1172, align 8          ; 5 uses
  %28 = alloca %class.anon.1173, align 8          ; 5 uses
  %29 = alloca %class.anon.1174, align 8          ; 5 uses
  %30 = alloca %class.anon.1175, align 8          ; 5 uses
  %31 = alloca %class.anon.1176, align 8          ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store i8 0, ptr %i.a, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  store i8 0, ptr %i.c, align 8, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.50)
          to label %bb.b unwind label %bb.n

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN10tiniergltf5AssetC2ERKN4Json5ValueE(ptr noundef nonnull align 8 dereferenceable(152) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_ZN10tiniergltfL2asINS_5AssetEEET_RKN4Json5ValueE.exit unwind label %bb.n

_ZN10tiniergltfL2asINS_5AssetEEET_RKN4Json5ValueE.exit: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  store i8 0, ptr %i.g, align 8, !tbaa !95
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 0, ptr %i.i, align 8, !tbaa !101
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  store i8 0, ptr %i.k, align 8, !tbaa !107
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  store i8 0, ptr %i.m, align 8, !tbaa !113
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  store i8 0, ptr %i.o, align 8, !tbaa !113
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  store i8 0, ptr %i.q, align 8, !tbaa !119
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  store i8 0, ptr %i.s, align 8, !tbaa !125
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 4 uses
  store i8 0, ptr %i.u, align 8, !tbaa !131
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 6 uses
  store i8 0, ptr %i.w, align 8, !tbaa !137
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  store i8 0, ptr %i.y, align 8, !tbaa !143
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  store i8 0, ptr %i.aa, align 8, !tbaa !264
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  store i8 0, ptr %i.ac, align 8, !tbaa !149
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  store i8 0, ptr %i.ae, align 8, !tbaa !155
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 4 uses
  store i8 0, ptr %i.ag, align 8, !tbaa !161
  %i.ah = invoke noundef zeroext i1 @_ZNK4Json5Value8isObjectEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.c unwind label %bb.hi

bb.c:                                             ; preds = %_ZN10tiniergltfL2asINS_5AssetEEET_RKN4Json5ValueE.exit
  br i1 %i.ah, label %_ZN10tiniergltfL5checkEb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull @.str.71)
          to label %.invoke unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ai) #30
  br label %.body

_ZN10tiniergltfL5checkEb.exit:                    ; preds = %bb.c
  %i.ak = invoke noundef zeroext i1 @_ZNK4Json5Value8isMemberEPKc(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.51)
          to label %bb.f unwind label %bb.hi

bb.f:                                             ; preds = %_ZN10tiniergltfL5checkEb.exit
  br i1 %i.ak, label %bb.g, label %_ZN10tiniergltfL5checkEb.exit97

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.al = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.51)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN10tiniergltf5asVecINS_8AccessorEEESt6vectorIT_SaIS3_EERKN4Json5ValueE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %7, ptr noundef nonnull align 8 dereferenceable(40) %i.al)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.am = load i8, ptr %i.a, align 8, !tbaa !79, !range !80, !noundef !81
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
end_hunk_0
begin_hunk_1_@_ZN10tiniergltf4GlTFC2ERKN4Json5ValueERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSB_EEOSt8optionalISB_E:bb.a
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.cf = load ptr, ptr %i.f, align 8, !tbaa !226 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !227 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !99
  %i.ck = load <2 x ptr>, ptr %9, align 16, !tbaa !97
  store <2 x ptr> %i.ck, ptr %i.f, align 8, !tbaa !97
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cm = load ptr, ptr %i.cl, align 16, !tbaa !99
  store ptr %i.cm, ptr %i.ci, align 8, !tbaa !99
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.cf, %i.ch
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN10tiniergltf10BufferViewES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ac, %_ZSt8_DestroyIN10tiniergltf10BufferViewEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.cw, %_ZSt8_DestroyIN10tiniergltf10BufferViewEEvPT_.exit.i.i.i.i.i.i ], [ %i.cf, %bb.ac ] ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !93, !range !80, !noundef !81
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.ad, label %_ZSt8_DestroyIN10tiniergltf10BufferViewEEvPT_.exit.i.i.i.i.i.i

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40
  store i8 0, ptr %i.cn, align 8, !tbaa !93
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !61 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZSt8_DestroyIN10tiniergltf10BufferViewEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ad
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !60
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #31
  br label %_ZSt8_DestroyIN10tiniergltf10BufferViewEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN10tiniergltf10BufferViewEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cw, %i.ch
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN10tiniergltf10BufferViewES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPN10tiniergltf10BufferViewES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN10tiniergltf10BufferViewEEvPT_.exit.i.i.i.i.i.i, %bb.ac
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt8optionalISt6vectorIN10tiniergltf10BufferViewESaIS2_EEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPN10tiniergltf10BufferViewES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  %i.cx = ptrtoint ptr %i.cj to i64
  %i.cy = ptrtoint ptr %i.cf to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.cz) #31
  br label %_ZNSt8optionalISt6vectorIN10tiniergltf10BufferViewESaIS2_EEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit

bb.af:                                            ; preds = %bb.ab
  %i.da = load <2 x ptr>, ptr %9, align 16, !tbaa !97
  store <2 x ptr> %i.da, ptr %i.f, align 8, !tbaa !97
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dd = load ptr, ptr %i.dc, align 16, !tbaa !99
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !99
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.g, align 8, !tbaa !95
  br label %_ZNSt8optionalISt6vectorIN10tiniergltf10BufferViewESaIS2_EEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit

_ZNSt8optionalISt6vectorIN10tiniergltf10BufferViewESaIS2_EEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit: ; preds = %_ZSt8_DestroyIPN10tiniergltf10BufferViewES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.ae, %bb.af
  %i.de = load ptr, ptr %9, align 16, !tbaa !226  ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !227 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.de, %i.dg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN10tiniergltf10BufferViewES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt8optionalISt6vectorIN10tiniergltf10BufferViewESaIS2_EEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, %_ZSt8_DestroyIN10tiniergltf10BufferViewEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dq, %_ZSt8_DestroyIN10tiniergltf10BufferViewEEvPT_.exit.i.i.i ], [ %i.de, %_ZNSt8optionalISt6vectorIN10tiniergltf10BufferViewESaIS2_EEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit ] ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !93, !range !80, !noundef !81
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.ag, label %_ZSt8_DestroyIN10tiniergltf10BufferViewEEvPT_.exit.i.i.i

bb.ag:                                            ; preds = %.lr.ph.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  store i8 0, ptr %i.dh, align 8, !tbaa !93
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !61 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZSt8_DestroyIN10tiniergltf10BufferViewEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ag
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !60
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #31
  br label %_ZSt8_DestroyIN10tiniergltf10BufferViewEEvPT_.exit.i.i.i

_ZSt8_DestroyIN10tiniergltf10BufferViewEEvPT_.exit.i.i.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dq, %i.dg
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN10tiniergltf10BufferViewES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPN10tiniergltf10BufferViewES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN10tiniergltf10BufferViewEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 16, !tbaa !226
  br label %_ZSt8_DestroyIPN10tiniergltf10BufferViewES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN10tiniergltf10BufferViewES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN10tiniergltf10BufferViewES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt8optionalISt6vectorIN10tiniergltf10BufferViewESaIS2_EEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit
  %i.dr = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN10tiniergltf10BufferViewES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.de, %_ZNSt8optionalISt6vectorIN10tiniergltf10BufferViewESaIS2_EEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN10tiniergltf10BufferViewESaIS1_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZSt8_DestroyIPN10tiniergltf10BufferViewES1_EvT_S3_RSaIT0_E.exit.i
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dt = load ptr, ptr %i.ds, align 16, !tbaa !99
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dw) #31
  br label %_ZNSt6vectorIN10tiniergltf10BufferViewESaIS1_EED2Ev.exit

_ZNSt6vectorIN10tiniergltf10BufferViewESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN10tiniergltf10BufferViewES1_EvT_S3_RSaIT0_E.exit.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !227
  %i.dz = load ptr, ptr %i.f, align 8, !tbaa !226
  %.not534 = icmp eq ptr %i.dy, %i.dz
  br i1 %.not534, label %bb.ai, label %_ZN10tiniergltfL5checkEb.exit105

bb.ai:                                            ; preds = %_ZNSt6vectorIN10tiniergltf10BufferViewESaIS1_EED2Ev.exit
  %i.ea = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull @.str.71)
          to label %.invoke unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ea) #30
  br label %.body

bb.ak:                                            ; preds = %bb.aa, %bb.z
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %.body

_ZN10tiniergltfL5checkEb.exit105:                 ; preds = %_ZNSt6vectorIN10tiniergltf10BufferViewESaIS1_EED2Ev.exit, %bb.y
  %i.ed = invoke noundef zeroext i1 @_ZNK4Json5Value8isMemberEPKc(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.54)
          to label %bb.al unwind label %bb.hi

bb.al:                                            ; preds = %_ZN10tiniergltfL5checkEb.exit105
  br i1 %i.ed, label %bb.am, label %bb.br

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.ee = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.54)
          to label %bb.an unwind label %bb.bh

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4Json5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(40) %i.ee)
          to label %bb.ao unwind label %bb.bh

bb.ao:                                            ; preds = %bb.an
  %i.ef = invoke noundef zeroext i1 @_ZNK4Json5Value7isArrayEv(ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %bb.ap unwind label %bb.bi

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.ef, label %_ZN10tiniergltfL5checkEb.exit109, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eg = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, ptr noundef nonnull @.str.71)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.eg, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
          to label %.noexc106 unwind label %bb.bi

.noexc106:                                        ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.eg) #30
  br label %.body107

_ZN10tiniergltfL5checkEb.exit109:                 ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.ei = invoke noundef i32 @_ZNK4Json5Value4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %bb.at unwind label %.loopexit.split-lp577.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %_ZN10tiniergltfL5checkEb.exit109
  %i.ej = zext i32 %i.ei to i64
  invoke void @_ZNSt6vectorIN10tiniergltf6BufferESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.ej)
          to label %.preheader575 unwind label %.loopexit.split-lp577.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader575:                                    ; preds = %bb.at
  %i.ek = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 9 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 8 uses
  %i.er = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.es = invoke noundef i32 @_ZNK4Json5Value4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %bb.au unwind label %.loopexit.split-lp577.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %.preheader575
  %.not1005 = icmp eq i32 %i.es, 0
  br i1 %.not1005, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.et = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 0)
          to label %bb.aw unwind label %.loopexit.split-lp577.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  store i8 0, ptr %i.ek, align 8, !tbaa !93
  %i.eu = load i8, ptr %i.el, align 8, !tbaa !93, !range !80, !noundef !81
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.ax, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit.peel

bb.ax:                                            ; preds = %bb.aw
  store ptr %i.em, ptr %12, align 8, !tbaa !56
  %i.ew = load ptr, ptr %3, align 8, !tbaa !61    ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.en
  br i1 %i.ex, label %bb.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.peel: ; preds = %bb.ax
  store ptr %i.ew, ptr %12, align 8, !tbaa !61
  %i.ey = load i64, ptr %i.en, align 8, !tbaa !60
  store i64 %i.ey, ptr %i.em, align 8, !tbaa !60
  %.pre = load i64, ptr %i.eo, align 8, !tbaa !59
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.peel

bb.ay:                                            ; preds = %bb.ax
  %i.ez = load i64, ptr %i.eo, align 8, !tbaa !59 ; 3 uses
  %i.fa = icmp ult i64 %i.ez, 16
  call void @llvm.assume(i1 %i.fa)
  %i.fb = add nuw nsw i64 %i.ez, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.em, ptr noundef nonnull align 8 dereferenceable(1) %i.en, i64 %i.fb, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.peel

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.peel: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.peel
  %i.fc = phi i64 [ %i.ez, %bb.ay ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.peel ]
  store i64 %i.fc, ptr %i.ep, align 8, !tbaa !59
  store ptr %i.en, ptr %3, align 8, !tbaa !61
  store i64 0, ptr %i.eo, align 8, !tbaa !59
  store i8 0, ptr %i.en, align 8, !tbaa !60
  store i8 1, ptr %i.ek, align 8, !tbaa !93
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit.peel

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit.peel: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.peel, %bb.aw
  %i.fd = load ptr, ptr %i.eq, align 8, !tbaa !225 ; 3 uses
  %i.fe = load ptr, ptr %i.er, align 8, !tbaa !105
  %.not.i.peel = icmp eq ptr %i.fd, %i.fe
  br i1 %.not.i.peel, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit.peel
  invoke void @_ZN10tiniergltf6BufferC2ERKN4Json5ValueERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSB_EEOSt8optionalISB_E(ptr noundef nonnull align 8 dereferenceable(80) %i.fd, ptr noundef nonnull align 8 dereferenceable(40) %i.et, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %12)
          to label %.noexc114.peel unwind label %.loopexit.split-lp786.loopexit.split-lp.loopexit.split-lp

.noexc114.peel:                                   ; preds = %bb.az
  %i.ff = load ptr, ptr %i.eq, align 8, !tbaa !225
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 80
  store ptr %i.fg, ptr %i.eq, align 8, !tbaa !225
  br label %_ZNSt6vectorIN10tiniergltf6BufferESaIS1_EE12emplace_backIJRN4Json5ValueERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSE_EESt8optionalISE_EEEERS1_DpOT_.exit.peel

bb.ba:                                            ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit.peel
  invoke void @_ZNSt6vectorIN10tiniergltf6BufferESaIS1_EE17_M_realloc_insertIJRN4Json5ValueERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSE_EESt8optionalISE_EEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.fd, ptr noundef nonnull align 8 dereferenceable(40) %i.et, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %12)
          to label %_ZNSt6vectorIN10tiniergltf6BufferESaIS1_EE12emplace_backIJRN4Json5ValueERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSE_EESt8optionalISE_EEEERS1_DpOT_.exit.peel unwind label %.loopexit.split-lp786.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN10tiniergltf6BufferESaIS1_EE12emplace_backIJRN4Json5ValueERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSE_EESt8optionalISE_EEEERS1_DpOT_.exit.peel: ; preds = %bb.ba, %.noexc114.peel
  %i.fh = load i8, ptr %i.ek, align 8, !tbaa !93, !range !80, !noundef !81
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.bb, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.peel

bb.bb:                                            ; preds = %_ZNSt6vectorIN10tiniergltf6BufferESaIS1_EE12emplace_backIJRN4Json5ValueERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSE_EESt8optionalISE_EEEERS1_DpOT_.exit.peel
  store i8 0, ptr %i.ek, align 8, !tbaa !93
  %i.fj = load ptr, ptr %12, align 8, !tbaa !61   ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.em
  br i1 %i.fk, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.peel: ; preds = %bb.bb
  %i.fl = load i64, ptr %i.em, align 8, !tbaa !60
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #31
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.peel

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.peel: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.peel, %_ZNSt6vectorIN10tiniergltf6BufferESaIS1_EE12emplace_backIJRN4Json5ValueERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSE_EESt8optionalISE_EEEERS1_DpOT_.exit.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.peel, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %.056 = phi i32 [ %i.gg, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit ], [ 1, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.peel ] ; 3 uses
  %i.fn = invoke noundef i32 @_ZNK4Json5Value4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %bb.bd unwind label %.loopexit.split-lp577.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bc
  %i.fo = icmp ult i32 %.056, %i.fn
  br i1 %i.fo, label %bb.bj, label %.loopexit

.loopexit:                                        ; preds = %bb.bd, %bb.au
  %i.fp = load ptr, ptr %i.eq, align 8, !tbaa !225
  %i.fq = load ptr, ptr %11, align 8, !tbaa !224
  %.not535 = icmp eq ptr %i.fp, %i.fq
  br i1 %.not535, label %bb.be, label %_ZN10tiniergltfL5checkEb.exit113

bb.be:                                            ; preds = %.loopexit
  %i.fr = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noundef nonnull @.str.71)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @__cxa_throw(ptr nonnull %i.fr, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
          to label %.noexc110 unwind label %.loopexit.split-lp577.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc110:                                        ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fr) #30
  br label %.body111

bb.bh:                                            ; preds = %bb.an, %bb.am
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bi:                                            ; preds = %bb.ar, %bb.ao
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body107

.loopexit.split-lp577.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bc, %bb.bj, %bb.av, %.preheader575, %bb.bf, %_ZN10tiniergltfL5checkEb.exit109, %bb.at
  %lpad.loopexit.split-lp1254 = landingpad { ptr, i32 }
          cleanup
  br label %.body111

bb.bj:                                            ; preds = %bb.bd
  %i.fv = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef %.056)
          to label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit unwind label %.loopexit.split-lp577.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit: ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  store i8 0, ptr %i.ek, align 8, !tbaa !93
  %i.fw = load ptr, ptr %i.eq, align 8, !tbaa !225 ; 3 uses
  %i.fx = load ptr, ptr %i.er, align 8, !tbaa !105
  %.not.i = icmp eq ptr %i.fw, %i.fx
  br i1 %.not.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit
  invoke void @_ZN10tiniergltf6BufferC2ERKN4Json5ValueERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSB_EEOSt8optionalISB_E(ptr noundef nonnull align 8 dereferenceable(80) %i.fw, ptr noundef nonnull align 8 dereferenceable(40) %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %12)
          to label %.noexc114 unwind label %.loopexit.split-lp786.loopexit.split-lp.loopexit.split-lp

.noexc114:                                        ; preds = %bb.bk
  %i.fy = load ptr, ptr %i.eq, align 8, !tbaa !225
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 80
  store ptr %i.fz, ptr %i.eq, align 8, !tbaa !225
  br label %_ZNSt6vectorIN10tiniergltf6BufferESaIS1_EE12emplace_backIJRN4Json5ValueERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSE_EESt8optionalISE_EEEERS1_DpOT_.exit

bb.bl:                                            ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit
  invoke void @_ZNSt6vectorIN10tiniergltf6BufferESaIS1_EE17_M_realloc_insertIJRN4Json5ValueERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSE_EESt8optionalISE_EEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.fw, ptr noundef nonnull align 8 dereferenceable(40) %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %12)
          to label %_ZNSt6vectorIN10tiniergltf6BufferESaIS1_EE12emplace_backIJRN4Json5ValueERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSE_EESt8optionalISE_EEEERS1_DpOT_.exit unwind label %.loopexit.split-lp786.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN10tiniergltf6BufferESaIS1_EE12emplace_backIJRN4Json5ValueERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSE_EESt8optionalISE_EEEERS1_DpOT_.exit: ; preds = %bb.bl, %.noexc114
  %i.ga = load i8, ptr %i.ek, align 8, !tbaa !93, !range !80, !noundef !81
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.bm, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.bm:                                            ; preds = %_ZNSt6vectorIN10tiniergltf6BufferESaIS1_EE12emplace_backIJRN4Json5ValueERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSE_EESt8optionalISE_EEEERS1_DpOT_.exit
  store i8 0, ptr %i.ek, align 8, !tbaa !93
  %i.gc = load ptr, ptr %12, align 8, !tbaa !61   ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.em
  br i1 %i.gd, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.bm
  %i.ge = load i64, ptr %i.em, align 8, !tbaa !60
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #31
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.bm, %_ZNSt6vectorIN10tiniergltf6BufferESaIS1_EE12emplace_backIJRN4Json5ValueERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSE_EESt8optionalISE_EEEERS1_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %i.gg = add nuw i32 %.056, 1
  br label %bb.bc, !llvm.loop !1222

.loopexit.split-lp786.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bl, %bb.bk, %bb.az, %bb.ba
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.gh = load i8, ptr %i.ek, align 8, !tbaa !93, !range !80, !noundef !81
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.bn, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit118

bb.bn:                                            ; preds = %.loopexit.split-lp786.loopexit.split-lp.loopexit.split-lp
  store i8 0, ptr %i.ek, align 8, !tbaa !93
  %i.gj = load ptr, ptr %12, align 8, !tbaa !61   ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.em
  br i1 %i.gk, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i116: ; preds = %bb.bn
  %i.gl = load i64, ptr %i.em, align 8, !tbaa !60
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #31
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit118

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit118: ; preds = %bb.bn, %.loopexit.split-lp786.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %.body111

_ZN10tiniergltfL5checkEb.exit113:                 ; preds = %.loopexit
  %i.gn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8optionalISt6vectorIN10tiniergltf6BufferESaIS2_EEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %11) #30 ; 0 uses
  %i.go = load ptr, ptr %11, align 8, !tbaa !224  ; 3 uses
  %i.gp = load ptr, ptr %i.eq, align 8, !tbaa !225 ; 2 uses
  %.not4.i.i.i119 = icmp eq ptr %i.go, %i.gp
  br i1 %.not4.i.i.i119, label %_ZSt8_DestroyIPN10tiniergltf6BufferES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i120

.lr.ph.i.i.i120:                                  ; preds = %_ZN10tiniergltfL5checkEb.exit113, %_ZSt8_DestroyIN10tiniergltf6BufferEEvPT_.exit.i.i.i
  %.05.i.i.i121 = phi ptr [ %i.hf, %_ZSt8_DestroyIN10tiniergltf6BufferEEvPT_.exit.i.i.i ], [ %i.go, %_ZN10tiniergltfL5checkEb.exit113 ] ; 6 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.05.i.i.i121, i64 48
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !61 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.05.i.i.i121, i64 64 ; 2 uses
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i120
  %i.gu = load i64, ptr %i.gs, align 8, !tbaa !60
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.05.i.i.i121, i64 40 ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 8, !tbaa !93, !range !80, !noundef !81
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %bb.bo, label %_ZSt8_DestroyIN10tiniergltf6BufferEEvPT_.exit.i.i.i

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %.05.i.i.i121, i64 8
  store i8 0, ptr %i.gw, align 8, !tbaa !93
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !61 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.05.i.i.i121, i64 24 ; 2 uses
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %_ZSt8_DestroyIN10tiniergltf6BufferEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i125: ; preds = %bb.bo
  %i.hd = load i64, ptr %i.hb, align 8, !tbaa !60
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.he) #31
  br label %_ZSt8_DestroyIN10tiniergltf6BufferEEvPT_.exit.i.i.i

_ZSt8_DestroyIN10tiniergltf6BufferEEvPT_.exit.i.i.i: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %.05.i.i.i121, i64 80 ; 2 uses
  %.not.i.i.i122 = icmp eq ptr %i.hf, %i.gp
  br i1 %.not.i.i.i122, label %_ZSt8_DestroyIPN10tiniergltf6BufferES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i120, !llvm.loop !10

_ZSt8_DestroyIPN10tiniergltf6BufferES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN10tiniergltf6BufferEEvPT_.exit.i.i.i
  %.pr.i123 = load ptr, ptr %11, align 8, !tbaa !224
  br label %_ZSt8_DestroyIPN10tiniergltf6BufferES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN10tiniergltf6BufferES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN10tiniergltf6BufferES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZN10tiniergltfL5checkEb.exit113
  %i.hg = phi ptr [ %.pr.i123, %_ZSt8_DestroyIPN10tiniergltf6BufferES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.go, %_ZN10tiniergltfL5checkEb.exit113 ] ; 3 uses
  %.not.i.i1.i124 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i1.i124, label %_ZNSt6vectorIN10tiniergltf6BufferESaIS1_EED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZSt8_DestroyIPN10tiniergltf6BufferES1_EvT_S3_RSaIT0_E.exit.i
  %i.hh = load ptr, ptr %i.er, align 8, !tbaa !105
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hg to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hk) #31
  br label %_ZNSt6vectorIN10tiniergltf6BufferESaIS1_EED2Ev.exit

_ZNSt6vectorIN10tiniergltf6BufferESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN10tiniergltf6BufferES1_EvT_S3_RSaIT0_E.exit.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.br

.body111:                                         ; preds = %.loopexit.split-lp577.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bg, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit118
  %.pn84.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit118 ], [ %i.fs, %bb.bg ], [ %lpad.loopexit.split-lp1254, %.loopexit.split-lp577.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN10tiniergltf6BufferESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %.body107

.body107:                                         ; preds = %bb.bi, %bb.as, %.body111
  %.pn84.pn.pn = phi { ptr, i32 } [ %.pn84.pn, %.body111 ], [ %i.fu, %bb.bi ], [ %i.eh, %bb.as ]
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #30
end_hunk_1
