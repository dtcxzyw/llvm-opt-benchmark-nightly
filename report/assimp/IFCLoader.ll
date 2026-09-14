Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCLoader?download=true
inline.NumInlined: 2494
inline.NumDeleted: 1209
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp6Logger5debugIJPKcRA28_S2_EEEvDpOT_:bb.a
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #28
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull %i.a, i64 noundef %i.i)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit unwind label %bb.d ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #28
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit: ; preds = %bb.b, %bb.c
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA28_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(28) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.l = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.l)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %3, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.r, ptr %4, align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.t = getelementptr i8, ptr %i.r, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %4, i64 %i.u
  store ptr %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #28
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ae) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.g:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.h:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %3, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.h
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.g
  %.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.ag, %bb.h ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA28_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(28) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(28) %3) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(28) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !170
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !170
  store i8 0, ptr %i.c, align 8, !alias.scope !170
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !170 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !170 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !170 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !170 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !170
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #32
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #28
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #28
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(392) %2, ptr noundef %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %14 = alloca %"class.std::unique_ptr.268", align 8 ; 9 uses
  %15 = alloca %class.aiMatrix4x4t, align 16      ; 21 uses
  %16 = alloca %class.aiMatrix4x4t, align 16      ; 21 uses
  %17 = alloca %"class.std::set.131", align 8     ; 11 uses
  %18 = alloca %class.aiMatrix4x4t, align 8       ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::allocator", align 1   ; 5 uses
  %22 = alloca %"class.std::set.131", align 8     ; 12 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %33 = alloca %"class.std::map.231", align 8     ; 12 uses
  %34 = alloca %struct.aiString, align 4          ; 6 uses
  %35 = alloca %"class.std::vector.240", align 8  ; 13 uses
  %36 = alloca %"class.std::unique_ptr.268", align 8 ; 9 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::vector.240", align 8  ; 12 uses
  %39 = alloca %class.aiMatrix4x4t.76, align 4    ; 5 uses
  %40 = alloca %class.aiMatrix4x4t, align 16      ; 12 uses
  %41 = alloca %"class.std::unique_ptr.268", align 8 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !12, !align !13 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 192 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !12, !align !198
  %i.m = load i8, ptr %i.l, align 4, !range !14, !noundef !12
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.b, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA50_KcEEEvDpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %1, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.r, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x38IfcSpaceE, i64 -1) #28
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA50_KcEEEvDpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.t, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA50_KcEEEvDpOT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  store ptr @.str, ptr %i.g, align 8
  call void @_ZN6Assimp6Logger12verboseDebugIJPKcRA50_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(50) @.str.60)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA50_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA50_KcEEEvDpOT_.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0116 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ true, %bb.d ]
  %i.v = load ptr, ptr %i.k, align 8, !nonnull !12, !align !198
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i8, ptr %i.w, align 2, !range !14, !noundef !12
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA50_KcEEEvDpOT_.exit
  %i.z = load ptr, ptr %1, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %i.ab
  %i.ad = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.ac, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x313IfcAnnotationE, i64 -1) #28
  %.not148 = icmp eq ptr %i.ad, null
  br i1 %.not148, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.ae, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA55_KcEEEvDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  store ptr @.str, ptr %i.f, align 8
  call void @_ZN6Assimp6Logger12verboseDebugIJPKcRA55_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(55) @.str.61)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA55_KcEEEvDpOT_.exit

bb.h:                                             ; preds = %bb.e, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA50_KcEEEvDpOT_.exit
  %i.ag = call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #29 ; 21 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.ag)
          to label %bb.i unwind label %bb.ar

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #28
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %1, i64 %i.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !noalias !199 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 7 uses
  store ptr %i.an, ptr %31, align 8, !alias.scope !199
  %i.ao = icmp eq ptr %i.am, null
  br i1 %i.ao, label %.noexc.i, label %bb.j

.noexc.i:                                         ; preds = %bb.i
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #30
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ap = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28, !noalias !199
  store i64 %i.ap, ptr %i.e, align 8, !noalias !199
  %i.aq = icmp ugt i64 %i.ap, 15
  br i1 %i.aq, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.j
  %i.ar = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.ar, ptr %31, align 8, !alias.scope !199
  %i.as = load i64, ptr %i.e, align 8, !noalias !199
  store i64 %i.as, ptr %i.an, align 8, !alias.scope !199
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.j
  %i.at = phi ptr [ %i.ar, %.noexc.i.i ], [ %i.an, %bb.j ] ; 2 uses
  switch i64 %i.ap, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.au = load i8, ptr %i.am, align 1
  store i8 %i.au, ptr %i.at, align 1
  br label %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit

bb.l:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %i.am, i64 %i.ap, i1 false)
  br label %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit

_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i, %bb.k, %bb.l
  %i.av = load i64, ptr %i.e, align 8, !noalias !199 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  store i64 %i.av, ptr %i.aw, align 8, !alias.scope !199
  %i.ax = load ptr, ptr %31, align 8, !alias.scope !199
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28, !noalias !199
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.az = load i64, ptr %i.aw, align 8, !noalias !200
  %i.ba = icmp eq i64 %i.az, 4611686018427387903
  br i1 %i.ba, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.m:                                             ; preds = %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #30
          to label %.noexc unwind label %bb.as

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit
  %i.bb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.62, i64 noundef 1)
          to label %.noexc179 unwind label %bb.as ; 6 uses

.noexc179:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 7 uses
  store ptr %i.bc, ptr %30, align 8, !alias.scope !200
  %i.bd = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 5 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.n:                                             ; preds = %.noexc179
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bh = load i64, ptr %i.bg, align 8            ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bj, i1 false)
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc179
  store ptr %i.bd, ptr %30, align 8, !alias.scope !200
  %i.bk = load i64, ptr %i.be, align 8
  store i64 %i.bk, ptr %i.bc, align 8, !alias.scope !200
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %i.bl = phi i64 [ %i.bh, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
bb.fm:                                            ; preds = %bb.ek, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit352, %bb.ei, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit313
  %.sroa.0438.8 = phi ptr [ %.sroa.0438.7999, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit313 ], [ %.sroa.0438.7999, %bb.ei ], [ %.sroa.0438.14, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit352 ], [ %.sroa.0438.7999, %bb.ek ] ; 2 uses
  %.sroa.18448.8 = phi ptr [ %.sroa.18448.71000, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit313 ], [ %.sroa.18448.71000, %bb.ei ], [ %.sroa.18448.14, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit352 ], [ %.sroa.18448.71000, %bb.ek ] ; 2 uses
  %.sroa.38.8 = phi ptr [ %.sroa.38.71001, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit313 ], [ %.sroa.38.71001, %bb.ei ], [ %.sroa.38.14, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit352 ], [ %.sroa.38.71001, %bb.ek ] ; 2 uses
  %i.abk = load ptr, ptr %.sroa.0432.01002, align 8 ; 2 uses
  %.not515 = icmp eq ptr %i.abk, %.sroa.03.0.i.i260
  br i1 %.not515, label %._crit_edge1004, label %bb.eg, !llvm.loop !190

._crit_edge1004:                                  ; preds = %.lr.ph.i.i.i.i.i248, %bb.br, %bb.fm, %bb.bt, %..loopexit_crit_edge21.i.i.i.i.i252, %.loopexit547
  %.sroa.0438.7.lcssa = phi ptr [ %.sroa.0438.8, %bb.fm ], [ null, %bb.bt ], [ null, %.loopexit547 ], [ null, %..loopexit_crit_edge21.i.i.i.i.i252 ], [ null, %bb.br ], [ null, %.lr.ph.i.i.i.i.i248 ] ; 13 uses
  %.sroa.18448.7.lcssa = phi ptr [ %.sroa.18448.8, %bb.fm ], [ null, %bb.bt ], [ null, %.loopexit547 ], [ null, %..loopexit_crit_edge21.i.i.i.i.i252 ], [ null, %bb.br ], [ null, %.lr.ph.i.i.i.i.i248 ] ; 13 uses
  %.sroa.38.7.lcssa = phi ptr [ %.sroa.38.8, %bb.fm ], [ null, %bb.bt ], [ null, %.loopexit547 ], [ null, %..loopexit_crit_edge21.i.i.i.i.i252 ], [ null, %bb.br ], [ null, %.lr.ph.i.i.i.i.i248 ] ; 13 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 4 uses
  store ptr %3, ptr %i.abl, align 8
  %.not157 = icmp eq ptr %3, null
  br i1 %.not157, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %._crit_edge1004
  %i.abm = getelementptr inbounds nuw i8, ptr %2, i64 328
  store ptr %35, ptr %i.abm, align 8
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %._crit_edge1004
  br i1 %.0116, label %bb.ju, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.abn = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.abo = load i8, ptr %i.abn, align 8, !range !14, !noundef !12
  %i.abp = trunc nuw i8 %i.abo to i1
  br i1 %i.abp, label %bb.fq, label %_ZN12_GLOBAL__N_128ProcessProductRepresentationERKN6Assimp3IFC10Schema_2x310IfcProductEP6aiNodeRSt6vectorIS7_SaIS7_EERNS1_14ConversionDataE.exit

bb.fq:                                            ; preds = %bb.fp
  %i.abq = load ptr, ptr %1, align 8
  %i.abr = getelementptr i8, ptr %i.abq, i64 -24
  %i.abs = load i64, ptr %i.abr, align 8
  %i.abt = getelementptr inbounds i8, ptr %1, i64 %i.abs
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 8
  %i.abv = load i64, ptr %i.abu, align 8
  %i.abw = invoke noundef i32 @_ZN6Assimp3IFC16ProcessMaterialsEmjRNS0_14ConversionDataEb(i64 noundef %i.abv, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(392) %2, i1 noundef zeroext false)
          to label %.noexc361 unwind label %bb.jt ; 2 uses

.noexc361:                                        ; preds = %bb.fq
  %i.abx = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  %i.aby = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  store i32 0, ptr %i.aby, align 8
  %i.abz = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  store ptr null, ptr %i.abz, align 8
  %i.aca = getelementptr inbounds nuw i8, ptr %22, i64 24
  store ptr %i.aby, ptr %i.aca, align 8
  %i.acb = getelementptr inbounds nuw i8, ptr %22, i64 32
  store ptr %i.aby, ptr %i.acb, align 8
  %i.acc = getelementptr inbounds nuw i8, ptr %22, i64 40
  store i64 0, ptr %i.acc, align 8
  %i.acd = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x324IfcProductRepresentationEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.abx)
          to label %bb.fr unwind label %bb.fx     ; 2 uses

bb.fr:                                            ; preds = %.noexc361
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 96 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acd, i64 104 ; 2 uses
  %i.acg = load ptr, ptr %i.acf, align 8          ; 2 uses
  %i.ach = load ptr, ptr %i.ace, align 8          ; 2 uses
  %i.aci = ptrtoint ptr %i.acg to i64
  %i.acj = ptrtoint ptr %i.ach to i64
  %i.ack = sub i64 %i.aci, %i.acj                 ; 3 uses
  %i.acl = ashr exact i64 %i.ack, 3               ; 2 uses
  %i.acm = icmp ugt i64 %i.acl, 1152921504606846975
  br i1 %i.acm, label %bb.fs, label %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i

bb.fs:                                            ; preds = %bb.fr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #30
          to label %.noexc.i360 unwind label %bb.fy

.noexc.i360:                                      ; preds = %bb.fs
  unreachable

_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i: ; preds = %bb.fr
  %.not.i.i.i.i.i353 = icmp eq ptr %i.acg, %i.ach
  br i1 %.not.i.i.i.i.i353, label %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i, label %bb.ft

bb.ft:                                            ; preds = %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.acn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ack) #29
          to label %.noexc48.i unwind label %bb.fy ; 5 uses

.noexc48.i:                                       ; preds = %bb.ft
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 %i.ack ; 2 uses
  store ptr null, ptr %i.acn, align 8
  %i.acp = getelementptr i8, ptr %i.acn, i64 8    ; 3 uses
  %i.acq = add nsw i64 %i.acl, -1                 ; 2 uses
  %i.acr = icmp eq i64 %i.acq, 0
  br i1 %i.acr, label %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i, label %_ZSt6fill_nIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc48.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.acq, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.acp, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false)
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acp, i64 %.idx.i.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i

_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZSt6fill_nIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc48.i, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %.sroa.14.0.i = phi ptr [ %i.aco, %_ZSt6fill_nIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.aco, %.noexc48.i ], [ null, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ] ; 2 uses
  %.sroa.0145.0.i = phi ptr [ %i.acn, %_ZSt6fill_nIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.acn, %.noexc48.i ], [ null, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ] ; 13 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.acs, %_ZSt6fill_nIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.acp, %.noexc48.i ], [ null, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ] ; 8 uses
  %i.act = load ptr, ptr %i.ace, align 8          ; 2 uses
  %i.acu = load ptr, ptr %i.acf, align 8
  %i.acv = ptrtoint ptr %i.acu to i64
  %i.acw = ptrtoint ptr %i.act to i64
  %i.acx = sub i64 %i.acv, %i.acw
  %i.acy = ashr exact i64 %i.acx, 3               ; 2 uses
  %i.acz = icmp sgt i64 %i.acy, 0
  br i1 %i.acz, label %.lr.ph.i.i.i.i.i.i, label %.loopexit194.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i, %.noexc49.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.add, %.noexc49.i ], [ %i.acy, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.adc, %.noexc49.i ], [ %.sroa.0145.0.i, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i ] ; 2 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.adb, %.noexc49.i ], [ %i.act, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i ] ; 2 uses
  %i.ada = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcRepresentationEEcvPKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %.0910.i.i.i.i.i.i)
          to label %.noexc49.i unwind label %.loopexit.split-lp184.loopexit.split-lp.loopexit.i

.noexc49.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.ada, ptr %.0811.i.i.i.i.i.i, align 8
  %i.adb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.adc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  %i.add = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ade = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ade, label %.lr.ph.i.i.i.i.i.i, label %.loopexit194.i, !llvm.loop !191

.loopexit194.i:                                   ; preds = %.noexc49.i, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i
  %i.adf = ptrtoint ptr %.sroa.0145.0.i to i64    ; 2 uses
  %.not.i.i.i354 = icmp eq ptr %.sroa.0145.0.i, %.0.i.i.i.i.i.i
  br i1 %.not.i.i.i354, label %._crit_edge291.i, label %bb.fu

bb.fu:                                            ; preds = %.loopexit194.i
  %i.adg = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.adh = sub i64 %i.adg, %i.adf                 ; 2 uses
  %i.adi = ashr exact i64 %i.adh, 3
  %i.adj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.adi, i1 true)
  %i.adk = shl nuw nsw i64 %i.adj, 1
  %i.adl = xor i64 %i.adk, 126
  invoke fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_T0_T1_(ptr %.sroa.0145.0.i, ptr %.0.i.i.i.i.i.i, i64 noundef %i.adl)
          to label %.noexc52.i unwind label %.loopexit.split-lp184.loopexit.split-lp.loopexit.split-lp.i

.noexc52.i:                                       ; preds = %bb.fu
  %i.adm = icmp sgt i64 %i.adh, 128
  br i1 %i.adm, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %.noexc52.i
  %i.adn = getelementptr inbounds nuw i8, ptr %.sroa.0145.0.i, i64 128 ; 3 uses
  invoke fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_T0_(ptr %.sroa.0145.0.i, ptr nonnull %i.adn)
          to label %.noexc53.i unwind label %.loopexit.split-lp184.loopexit.split-lp.loopexit.split-lp.i

.noexc53.i:                                       ; preds = %bb.fv
  %.not6.i.i.i.i.i = icmp eq ptr %i.adn, %.0.i.i.i.i.i.i
  br i1 %.not6.i.i.i.i.i, label %.lr.ph290.i, label %.lr.ph.i.i.i.i.i359

.lr.ph.i.i.i.i.i359:                              ; preds = %.noexc53.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_.exit.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.ady, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_.exit.i.i.i.i.i ], [ %i.adn, %.noexc53.i ] ; 5 uses
  %i.ado = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8 ; 3 uses
  %.sroa.0.06.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i.i, i64 -8 ; 2 uses
  %i.adp = load ptr, ptr %.sroa.0.06.i.i.i.i.i.i, align 8
  %i.adq = invoke fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.ado)
          to label %.noexc54.i unwind label %.loopexit.split-lp184.loopexit.i

.noexc54.i:                                       ; preds = %.lr.ph.i.i.i.i.i359
  %i.adr = invoke fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.adp)
          to label %.noexc55.i unwind label %.loopexit.split-lp184.loopexit.i

.noexc55.i:                                       ; preds = %.noexc54.i
  %i.ads = icmp slt i32 %i.adq, %i.adr
  br i1 %i.ads, label %.lr.ph.i.i.i.i.i51.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i51.i:                             ; preds = %.noexc55.i, %.noexc57.i
  %.sroa.0.08.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %.noexc57.i ], [ %.sroa.0.06.i.i.i.i.i.i, %.noexc55.i ] ; 4 uses
  %.sroa.03.07.i.i.i.i.i.i = phi ptr [ %.sroa.0.08.i.i.i.i.i.i, %.noexc57.i ], [ %.sroa.0.07.i.i.i.i.i, %.noexc55.i ]
  %i.adt = load ptr, ptr %.sroa.0.08.i.i.i.i.i.i, align 8
  store ptr %i.adt, ptr %.sroa.03.07.i.i.i.i.i.i, align 8
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.adu = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8
  %i.adv = invoke fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.ado)
          to label %.noexc56.i unwind label %.loopexit183.i

.noexc56.i:                                       ; preds = %.lr.ph.i.i.i.i.i51.i
  %i.adw = invoke fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.adu)
          to label %.noexc57.i unwind label %.loopexit183.i

.noexc57.i:                                       ; preds = %.noexc56.i
  %i.adx = icmp slt i32 %i.adv, %i.adw
  br i1 %i.adx, label %.lr.ph.i.i.i.i.i51.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_.exit.i.i.i.i.i, !llvm.loop !5

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_.exit.i.i.i.i.i: ; preds = %.noexc57.i, %.noexc55.i
  %.sroa.03.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i, %.noexc55.i ], [ %.sroa.0.08.i.i.i.i.i.i, %.noexc57.i ]
  store ptr %i.ado, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8
  %i.ady = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i50.i = icmp eq ptr %i.ady, %.0.i.i.i.i.i.i
  br i1 %.not.i.i.i.i50.i, label %.lr.ph290.i, label %.lr.ph.i.i.i.i.i359, !llvm.loop !192

bb.fw:                                            ; preds = %.noexc52.i
  invoke fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_T0_(ptr %.sroa.0145.0.i, ptr %.0.i.i.i.i.i.i)
          to label %.lr.ph290.i unwind label %.loopexit.split-lp184.loopexit.split-lp.loopexit.split-lp.i

.lr.ph290.i:                                      ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_.exit.i.i.i.i.i, %bb.fw, %.noexc53.i
  %42 = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %43 = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 2 uses
  %44 = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 2 uses
  %45 = getelementptr inbounds nuw i8, ptr %15, i64 80 ; 2 uses
  %46 = getelementptr inbounds nuw i8, ptr %15, i64 88 ; 2 uses
  %47 = getelementptr inbounds nuw i8, ptr %15, i64 120 ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.aea = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.aeb = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 3 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 3 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %16, i64 88
  %i.aee = getelementptr inbounds nuw i8, ptr %16, i64 120
  %i.aef = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.aeg = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.aeh = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.aei = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.aej = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.aek = getelementptr inbounds nuw i8, ptr %15, i64 72
  %.sroa.13152.0..sroa_idx153.i.i = getelementptr inbounds nuw i8, ptr %15, i64 96
  %.sroa.21164.0..sroa_idx165.i.i = getelementptr inbounds nuw i8, ptr %15, i64 104
  %.sroa.29176.0..sroa_idx177.i.i = getelementptr inbounds nuw i8, ptr %15, i64 112
  %i.ael = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 3 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %16, i64 96 ; 3 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %16, i64 112 ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.aet = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.aeu = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.aex = getelementptr inbounds nuw i8, ptr %i.ag, i64 1028
  %.sroa.1398.0..sroa_idx99.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 1044
  %.sroa.21110.0..sroa_idx111.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 1060
  %.sroa.29122.0..sroa_idx123.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 1076
  %i.aey = insertelement <2 x ptr> poison, ptr %i.aeq, i64 0
  %i.aez = shufflevector <2 x ptr> %i.aey, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.outer

.outer:                                           ; preds = %._crit_edge.i, %.lr.ph290.i
  %.sroa.0438.18.ph = phi ptr [ %.sroa.0438.21, %._crit_edge.i ], [ %.sroa.0438.7.lcssa, %.lr.ph290.i ] ; 2 uses
  %.sroa.18448.18.ph = phi ptr [ %.sroa.18448.21, %._crit_edge.i ], [ %.sroa.18448.7.lcssa, %.lr.ph290.i ] ; 2 uses
  %.sroa.38.18.ph = phi ptr [ %.sroa.38.21, %._crit_edge.i ], [ %.sroa.38.7.lcssa, %.lr.ph290.i ] ; 2 uses
  %.sroa.0141.0289.i.ph = phi ptr [ %i.afh, %._crit_edge.i ], [ %.sroa.0145.0.i, %.lr.ph290.i ]
  br label %bb.fz

._crit_edge.thread.i:                             ; preds = %bb.fz
  %.old.i = getelementptr inbounds nuw i8, ptr %.sroa.0141.0289.i, i64 8 ; 2 uses
  %.not156.old.i = icmp eq ptr %.old.i, %.0.i.i.i.i.i.i
  br i1 %.not156.old.i, label %._crit_edge291.i, label %bb.fz

bb.fx:                                            ; preds = %.noexc361
  %i.afa = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EED2Ev.exit69.i

bb.fy:                                            ; preds = %bb.ft, %bb.fs
  %i.afb = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EED2Ev.exit69.i

.loopexit183.i:                                   ; preds = %.noexc56.i, %.lr.ph.i.i.i.i.i51.i
  %lpad.loopexit185.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.loopexit.split-lp184.loopexit.i:                 ; preds = %.noexc54.i, %.lr.ph.i.i.i.i.i359
  %lpad.loopexit188.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.loopexit.split-lp184.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %lpad.loopexit191.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.loopexit.split-lp184.loopexit.split-lp.loopexit.split-lp.i: ; preds = %._crit_edge291.i, %bb.fw, %bb.fv, %bb.fu
  %.sroa.0438.16 = phi ptr [ %.sroa.0438.22, %._crit_edge291.i ], [ %.sroa.0438.7.lcssa, %bb.fv ], [ %.sroa.0438.7.lcssa, %bb.fw ], [ %.sroa.0438.7.lcssa, %bb.fu ]
  %.sroa.18448.16 = phi ptr [ %.sroa.18448.22, %._crit_edge291.i ], [ %.sroa.18448.7.lcssa, %bb.fv ], [ %.sroa.18448.7.lcssa, %bb.fw ], [ %.sroa.18448.7.lcssa, %bb.fu ]
  %.sroa.38.16 = phi ptr [ %.sroa.38.22, %._crit_edge291.i ], [ %.sroa.38.7.lcssa, %bb.fv ], [ %.sroa.38.7.lcssa, %bb.fw ], [ %.sroa.38.7.lcssa, %bb.fu ]
  %lpad.loopexit.split-lp192.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

bb.fz:                                            ; preds = %.outer, %._crit_edge.thread.i
  %.sroa.0141.0289.i = phi ptr [ %.old.i, %._crit_edge.thread.i ], [ %.sroa.0141.0289.i.ph, %.outer ] ; 3 uses
  %i.afc = load ptr, ptr %.sroa.0141.0289.i, align 8 ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 104
  %i.afe = load ptr, ptr %i.afd, align 8          ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afc, i64 112
  %i.afg = load ptr, ptr %i.aff, align 8          ; 2 uses
  %.not157285.i = icmp eq ptr %i.afe, %i.afg
  br i1 %.not157285.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.jo
  %i.afh = getelementptr inbounds nuw i8, ptr %.sroa.0141.0289.i, i64 8 ; 2 uses
  %.not156.i = icmp eq ptr %i.afh, %.0.i.i.i.i.i.i
  %or.cond.i = select i1 %.1.i, i1 true, i1 %.not156.i
  br i1 %or.cond.i, label %._crit_edge291.i, label %.outer

.lr.ph.i:                                         ; preds = %bb.fz, %bb.jo
  %.sroa.0438.19 = phi ptr [ %.sroa.0438.21, %bb.jo ], [ %.sroa.0438.18.ph, %bb.fz ] ; 15 uses
  %.sroa.18448.19 = phi ptr [ %.sroa.18448.21, %bb.jo ], [ %.sroa.18448.18.ph, %bb.fz ] ; 16 uses
  %.sroa.38.19 = phi ptr [ %.sroa.38.21, %bb.jo ], [ %.sroa.38.18.ph, %bb.fz ] ; 40 uses
  %.0287.i = phi i1 [ %.1.i, %bb.jo ], [ false, %bb.fz ] ; 3 uses
  %.sroa.0137.0286.i = phi ptr [ %i.aqc, %bb.jo ], [ %i.afe, %bb.fz ] ; 2 uses
  %i.afi = load ptr, ptr %.sroa.0137.0286.i, align 8 ; 3 uses
  %i.afj = icmp eq ptr %i.afi, null
  br i1 %i.afj, label %bb.ga, label %bb.gf

bb.ga:                                            ; preds = %.lr.ph.i
  %i.afk = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.gb unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.gb:                                            ; preds = %bb.ga
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.afk, ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.gc unwind label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  invoke void @__cxa_throw(ptr nonnull %i.afk, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.gi unwind label %bb.gd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.ga
  %i.afl = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %.0.i.i = phi i1 [ false, %bb.gc ], [ true, %bb.gb ] ; 2 uses
  %i.afm = landingpad { ptr, i32 }
          catch ptr null                          ; 4 uses
  %i.afn = load ptr, ptr %20, align 8             ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.afp = icmp eq ptr %i.afn, %i.afo
  br i1 %i.afp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.gd
  %i.afq = load i64, ptr %i.afo, align 8
  %i.afr = add i64 %i.afq, 1
  call void @_ZdlPvm(ptr noundef %i.afn, i64 noundef %i.afr) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br i1 %.0.i.i, label %bb.ge, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br i1 %.0.i.i, label %bb.ge, label %.body.i

bb.ge:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn10.i.i = phi { ptr, i32 } [ %i.afl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.afm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.afm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.afk) #28
  br label %.body.i

bb.gf:                                            ; preds = %.lr.ph.i
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afi, i64 32 ; 2 uses
  %i.aft = load ptr, ptr %i.afs, align 8          ; 2 uses
  %.not.i.i.i.i355 = icmp eq ptr %i.aft, null
  br i1 %.not.i.i.i.i355, label %bb.gg, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i.i

bb.gg:                                            ; preds = %bb.gf
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.afi)
          to label %.noexc59.i unwind label %.loopexit158.i

.noexc59.i:                                       ; preds = %bb.gg
  %.pre.i.i.i.i = load ptr, ptr %i.afs, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i.i

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i.i:      ; preds = %.noexc59.i, %bb.gf
  %i.afu = phi ptr [ %.pre.i.i.i.i, %.noexc59.i ], [ %i.aft, %bb.gf ]
  %i.afv = call ptr @__dynamic_cast(ptr nonnull %i.afu, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x321IfcRepresentationItemE, i64 -1) #28 ; 4 uses
  %i.afw = icmp eq ptr %i.afv, null
  br i1 %i.afw, label %bb.gh, label %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x321IfcRepresentationItemEEcvRKS4_Ev.exit.i

bb.gh:                                            ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i.i
  invoke void @__cxa_bad_cast() #30
          to label %.noexc60.i unwind label %.loopexit.split-lp159.i

.noexc60.i:                                       ; preds = %bb.gh
  unreachable

bb.gi:                                            ; preds = %bb.gc
  unreachable

_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x321IfcRepresentationItemEEcvRKS4_Ev.exit.i: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i.i
  %i.afx = load ptr, ptr %i.afv, align 8
  %i.afy = getelementptr i8, ptr %i.afx, i64 -24
  %i.afz = load i64, ptr %i.afy, align 8
  %i.aga = getelementptr inbounds i8, ptr %i.afv, i64 %i.afz
  %i.agb = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.aga, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x313IfcMappedItemE, i64 -1) #28 ; 5 uses
  %.not.i356 = icmp eq ptr %i.agb, null
  br i1 %.not.i356, label %bb.jm, label %bb.gj

bb.gj:                                            ; preds = %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x321IfcRepresentationItemEEcvRKS4_Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.agc = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #29
          to label %.noexc64.i unwind label %bb.jl ; 6 uses

.noexc64.i:                                       ; preds = %bb.gj
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.agc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61.i unwind label %bb.hi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61.i: ; preds = %.noexc64.i
  store ptr %i.agc, ptr %14, align 8
  store i32 13, ptr %i.agc, align 4
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.agd, ptr noundef nonnull align 1 dereferenceable(13) @.str.82, i64 13, i1 false)
  %i.age = getelementptr inbounds nuw i8, ptr %i.agc, i64 17
  store i8 0, ptr %i.age, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  store double 1.000000e+00, ptr %15, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %42, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %43, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %44, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %45, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %46, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %47, align 8
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agb, i64 40
  %i.agg = load ptr, ptr %i.agf, align 8          ; 3 uses
  %i.agh = icmp eq ptr %i.agg, null
  br i1 %i.agh, label %bb.gk, label %bb.gp

bb.gk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61.i
  %i.agi = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.gl unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i127.i

bb.gl:                                            ; preds = %bb.gk
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.agi, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.gm unwind label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  invoke void @__cxa_throw(ptr nonnull %i.agi, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.gs unwind label %bb.gn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i127.i: ; preds = %bb.gk
  %i.agj = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.go

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %.0.i130.i = phi i1 [ false, %bb.gm ], [ true, %bb.gl ] ; 2 uses
  %i.agk = landingpad { ptr, i32 }
          catch ptr null                          ; 4 uses
  %i.agl = load ptr, ptr %4, align 8              ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.agn = icmp eq ptr %i.agl, %i.agm
  br i1 %i.agn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i132.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131.i: ; preds = %bb.gn
  %i.ago = load i64, ptr %i.agm, align 8
  %i.agp = add i64 %i.ago, 1
  call void @_ZdlPvm(ptr noundef %i.agl, i64 noundef %i.agp) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.0.i130.i, label %bb.go, label %.body135.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i132.i: ; preds = %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.0.i130.i, label %bb.go, label %.body135.i

bb.go:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i132.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i127.i
  %.pn10.i128.i = phi { ptr, i32 } [ %i.agj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i127.i ], [ %i.agk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i132.i ], [ %i.agk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131.i ]
  call void @__cxa_free_exception(ptr %i.agi) #28
  br label %.body135.i

bb.gp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61.i
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agg, i64 32 ; 2 uses
  %i.agr = load ptr, ptr %i.agq, align 8          ; 2 uses
  %.not.i.i.i124.i = icmp eq ptr %i.agr, null
  br i1 %.not.i.i.i124.i, label %bb.gq, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i125.i

bb.gq:                                            ; preds = %bb.gp
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.agg)
          to label %.noexc133.i unwind label %.loopexit163.i

.noexc133.i:                                      ; preds = %bb.gq
  %.pre.i.i.i126.i = load ptr, ptr %i.agq, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i125.i

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i125.i:   ; preds = %.noexc133.i, %bb.gp
  %i.ags = phi ptr [ %.pre.i.i.i126.i, %.noexc133.i ], [ %i.agr, %bb.gp ]
  %i.agt = call ptr @__dynamic_cast(ptr nonnull %i.ags, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x334IfcCartesianTransformationOperatorE, i64 -1) #28 ; 2 uses
  %i.agu = icmp eq ptr %i.agt, null
  br i1 %i.agu, label %bb.gr, label %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x334IfcCartesianTransformationOperatorEEdeEv.exit.i

bb.gr:                                            ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i125.i
  invoke void @__cxa_bad_cast() #30
          to label %.noexc134.i unwind label %.loopexit.split-lp164.i

.noexc134.i:                                      ; preds = %bb.gr
  unreachable

bb.gs:                                            ; preds = %bb.gm
  unreachable

_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x334IfcCartesianTransformationOperatorEEdeEv.exit.i: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i125.i
  invoke void @_ZN6Assimp3IFC24ConvertTransformOperatorER12aiMatrix4x4tIdERKNS0_10Schema_2x334IfcCartesianTransformationOperatorE(ptr noundef nonnull align 8 dereferenceable(128) %15, ptr noundef nonnull align 8 dereferenceable(104) %i.agt)
          to label %bb.gt unwind label %.loopexit163.i

bb.gt:                                            ; preds = %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x334IfcCartesianTransformationOperatorEEdeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  store double 1.000000e+00, ptr %16, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.adz, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.aea, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aeb, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.aec, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aed, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.aee, align 8
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agb, i64 32 ; 2 uses
  %i.agw = load ptr, ptr %i.agv, align 8          ; 3 uses
  %i.agx = icmp eq ptr %i.agw, null
  br i1 %i.agx, label %bb.gu, label %bb.gz

bb.gu:                                            ; preds = %bb.gt
  %i.agy = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.gv unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i113.i

bb.gv:                                            ; preds = %bb.gu
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.agy, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.gw unwind label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  invoke void @__cxa_throw(ptr nonnull %i.agy, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.hc unwind label %bb.gx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i113.i: ; preds = %bb.gu
  %i.agz = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.gy

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %.0.i116.i = phi i1 [ false, %bb.gw ], [ true, %bb.gv ] ; 2 uses
  %i.aha = landingpad { ptr, i32 }
          catch ptr null                          ; 4 uses
  %i.ahb = load ptr, ptr %6, align 8              ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ahd = icmp eq ptr %i.ahb, %i.ahc
  br i1 %i.ahd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i118.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117.i: ; preds = %bb.gx
  %i.ahe = load i64, ptr %i.ahc, align 8
  %i.ahf = add i64 %i.ahe, 1
  call void @_ZdlPvm(ptr noundef %i.ahb, i64 noundef %i.ahf) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %.0.i116.i, label %bb.gy, label %.body121.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i118.i: ; preds = %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %.0.i116.i, label %bb.gy, label %.body121.i

bb.gy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i118.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i113.i
  %.pn10.i114.i = phi { ptr, i32 } [ %i.agz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i113.i ], [ %i.aha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i118.i ], [ %i.aha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117.i ]
  call void @__cxa_free_exception(ptr %i.agy) #28
  br label %.body121.i

bb.gz:                                            ; preds = %bb.gt
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agw, i64 32 ; 2 uses
  %i.ahh = load ptr, ptr %i.ahg, align 8          ; 2 uses
  %.not.i.i.i110.i = icmp eq ptr %i.ahh, null
  br i1 %.not.i.i.i110.i, label %bb.ha, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i111.i

bb.ha:                                            ; preds = %bb.gz
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.agw)
          to label %.noexc119.i unwind label %.loopexit168.i

.noexc119.i:                                      ; preds = %bb.ha
  %.pre.i.i.i112.i = load ptr, ptr %i.ahg, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i111.i

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i111.i:   ; preds = %.noexc119.i, %bb.gz
  %i.ahi = phi ptr [ %.pre.i.i.i112.i, %.noexc119.i ], [ %i.ahh, %bb.gz ]
  %i.ahj = call ptr @__dynamic_cast(ptr nonnull %i.ahi, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x320IfcRepresentationMapE, i64 -1) #28 ; 2 uses
  %i.ahk = icmp eq ptr %i.ahj, null
  br i1 %i.ahk, label %bb.hb, label %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x320IfcRepresentationMapEEptEv.exit123.i

bb.hb:                                            ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i111.i
  invoke void @__cxa_bad_cast() #30
          to label %.noexc120.i unwind label %.loopexit.split-lp169.i

.noexc120.i:                                      ; preds = %bb.hb
  unreachable

bb.hc:                                            ; preds = %bb.gw
  unreachable

_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x320IfcRepresentationMapEEptEv.exit123.i: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i111.i
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahj, i64 16
  %i.ahm = load ptr, ptr %i.ahl, align 8
  invoke void @_ZN6Assimp3IFC20ConvertAxisPlacementER12aiMatrix4x4tIdERKNS_4STEP7EXPRESS8DataTypeERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(128) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.ahm, ptr noundef nonnull align 8 dereferenceable(392) %2)
          to label %bb.hd unwind label %.loopexit168.i

bb.hd:                                            ; preds = %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x320IfcRepresentationMapEEptEv.exit123.i
  %48 = load <2 x double>, ptr %16, align 16      ; 4 uses
  %49 = load <2 x double>, ptr %i.ael, align 16   ; 4 uses
  %i.ahn = load <2 x double>, ptr %i.aem, align 16 ; 4 uses
  %i.aho = load <2 x double>, ptr %i.aen, align 16 ; 4 uses
  %50 = load <2 x double>, ptr %i.aeo, align 16   ; 4 uses
  %51 = load <2 x double>, ptr %i.aeb, align 16   ; 4 uses
  %52 = load <2 x double>, ptr %i.aec, align 16   ; 4 uses
  %53 = load <2 x double>, ptr %i.aep, align 16   ; 4 uses
  %i.ahp = load <2 x double>, ptr %42, align 8
  %54 = load <2 x double>, ptr %15, align 16
  %55 = load <2 x double>, ptr %i.aef, align 16
  %i.ahq = load <2 x double>, ptr %i.aeg, align 8
  %56 = shufflevector <2 x double> %i.ahp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %57 = fmul <2 x double> %56, %49
  %58 = shufflevector <2 x double> %54, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %59 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %48, <2 x double> %58, <2 x double> %57)
  %60 = shufflevector <2 x double> %55, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %61 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahn, <2 x double> %60, <2 x double> %59)
  %62 = shufflevector <2 x double> %i.ahq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %63 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aho, <2 x double> %62, <2 x double> %61)
  %i.ahr = fmul <2 x double> %56, %51
  %i.ahs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %50, <2 x double> %58, <2 x double> %i.ahr)
  %i.aht = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %52, <2 x double> %60, <2 x double> %i.ahs)
  %i.ahu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %53, <2 x double> %62, <2 x double> %i.aht)
  store <2 x double> %63, ptr %16, align 16
  store <2 x double> %i.ahu, ptr %i.aeo, align 16
  %64 = load <2 x double>, ptr %43, align 8
  %65 = load <2 x double>, ptr %i.aeh, align 16
  %66 = load <2 x double>, ptr %44, align 16
  %67 = load <2 x double>, ptr %i.aei, align 8
  %68 = shufflevector <2 x double> %64, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ahv = fmul <2 x double> %68, %49
  %i.ahw = shufflevector <2 x double> %65, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ahx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %48, <2 x double> %i.ahw, <2 x double> %i.ahv)
  %69 = shufflevector <2 x double> %66, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ahy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahn, <2 x double> %69, <2 x double> %i.ahx)
  %70 = shufflevector <2 x double> %67, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ahz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aho, <2 x double> %70, <2 x double> %i.ahy)
  %71 = fmul <2 x double> %68, %51
  %72 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %50, <2 x double> %i.ahw, <2 x double> %71)
  %i.aia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %52, <2 x double> %69, <2 x double> %72)
  %i.aib = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %53, <2 x double> %70, <2 x double> %i.aia)
  store <2 x double> %i.ahz, ptr %i.ael, align 16
  store <2 x double> %i.aib, ptr %i.aeb, align 16
  %73 = load <2 x double>, ptr %i.aek, align 8
  %74 = load <2 x double>, ptr %i.aej, align 16
  %75 = load <2 x double>, ptr %45, align 16
  %76 = load <2 x double>, ptr %46, align 8
  %77 = shufflevector <2 x double> %73, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aic = fmul <2 x double> %77, %49
  %i.aid = shufflevector <2 x double> %74, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aie = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %48, <2 x double> %i.aid, <2 x double> %i.aic)
  %78 = shufflevector <2 x double> %75, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aif = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahn, <2 x double> %78, <2 x double> %i.aie)
  %79 = shufflevector <2 x double> %76, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aig = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aho, <2 x double> %79, <2 x double> %i.aif)
  %80 = fmul <2 x double> %77, %51
  %81 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %50, <2 x double> %i.aid, <2 x double> %80)
  %i.aih = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %52, <2 x double> %78, <2 x double> %81)
  %i.aii = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %53, <2 x double> %79, <2 x double> %i.aih)
  store <2 x double> %i.aig, ptr %i.aem, align 16
  store <2 x double> %i.aii, ptr %i.aec, align 16
  %82 = load <2 x double>, ptr %.sroa.21164.0..sroa_idx165.i.i, align 8
  %83 = load <2 x double>, ptr %.sroa.13152.0..sroa_idx153.i.i, align 16
  %84 = load <2 x double>, ptr %.sroa.29176.0..sroa_idx177.i.i, align 16
  %.sroa.35185.0.copyload187.i.i = load double, ptr %47, align 8
  %85 = shufflevector <2 x double> %82, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aij = fmul <2 x double> %85, %49
  %i.aik = shufflevector <2 x double> %83, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ail = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %48, <2 x double> %i.aik, <2 x double> %i.aij)
  %86 = shufflevector <2 x double> %84, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aim = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahn, <2 x double> %86, <2 x double> %i.ail)
  %87 = insertelement <2 x double> poison, double %.sroa.35185.0.copyload187.i.i, i64 0
  %88 = shufflevector <2 x double> %87, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %89 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aho, <2 x double> %88, <2 x double> %i.aim)
  %i.ain = fmul <2 x double> %85, %51
  %i.aio = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %50, <2 x double> %i.aik, <2 x double> %i.ain)
  %i.aip = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %52, <2 x double> %86, <2 x double> %i.aio)
  %i.aiq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %53, <2 x double> %88, <2 x double> %i.aip)
  store <2 x double> %89, ptr %i.aen, align 16
  store <2 x double> %i.aiq, ptr %i.aep, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  store i32 0, ptr %i.aeq, align 8
  store ptr null, ptr %i.aer, align 8
  store <2 x ptr> %i.aez, ptr %i.aes, align 8
  store i64 0, ptr %i.aet, align 8
  %i.air = load ptr, ptr %i.abl, align 8          ; 3 uses
  %.not.i.i357 = icmp eq ptr %i.air, null
  br i1 %.not.i.i357, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 8
  %i.ait = load ptr, ptr %i.ais, align 8
  %i.aiu = load ptr, ptr %i.air, align 8
  %i.aiv = ptrtoint ptr %i.ait to i64
  %i.aiw = ptrtoint ptr %i.aiu to i64
  %i.aix = sub i64 %i.aiv, %i.aiw
  %i.aiy = sdiv exact i64 %i.aix, 88
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %i.aiz = phi i64 [ %i.aiy, %bb.he ], [ 0, %bb.hd ] ; 3 uses
  %i.aja = load ptr, ptr %i.aeu, align 8
  %.not55.i.i = icmp eq ptr %i.aja, null
  br i1 %.not55.i.i, label %bb.hn, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %18, ptr noundef nonnull align 16 dereferenceable(128) %16, i64 128, i1 false)
  %i.ajb = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN12aiMatrix4x4tIdE7InverseEv(ptr noundef nonnull align 8 dereferenceable(128) %18)
          to label %bb.hh unwind label %bb.hj     ; 0 uses

bb.hh:                                            ; preds = %bb.hg
  %i.ajc = load ptr, ptr %i.aeu, align 8          ; 2 uses
  %i.ajd = load ptr, ptr %i.ajc, align 8          ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajc, i64 8
  %i.ajf = load ptr, ptr %i.aje, align 8          ; 2 uses
  %.not189199.i.i = icmp eq ptr %i.ajd, %i.ajf
  br i1 %.not189199.i.i, label %._crit_edge.i.i358, label %.lr.ph.i.i

._crit_edge.i.i358:                               ; preds = %bb.hk, %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %bb.hn

bb.hi:                                            ; preds = %.noexc64.i
  %i.ajg = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZdlPvm(ptr noundef nonnull %i.agc, i64 noundef 1144) #32
  br label %bb.jj

.loopexit163.i:                                   ; preds = %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x334IfcCartesianTransformationOperatorEEdeEv.exit.i, %bb.gq
  %lpad.loopexit165.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body135.i

.loopexit.split-lp164.i:                          ; preds = %bb.gr
  %lpad.loopexit.split-lp166.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body135.i

.loopexit168.i:                                   ; preds = %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x320IfcRepresentationMapEEptEv.exit123.i, %bb.ha
  %lpad.loopexit170.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body121.i

.loopexit.split-lp169.i:                          ; preds = %bb.hb
  %lpad.loopexit.split-lp171.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body121.i

bb.hj:                                            ; preds = %bb.hg
  %i.ajh = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.hm

.lr.ph.i.i:                                       ; preds = %bb.hh, %bb.hk
  %.sroa.0138.0200.i.i = phi ptr [ %i.aji, %bb.hk ], [ %i.ajd, %bb.hh ] ; 2 uses
  invoke void @_ZN6Assimp3IFC11TempOpening9TransformERK12aiMatrix4x4tIdE(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0138.0200.i.i, ptr noundef nonnull align 8 dereferenceable(128) %18)
          to label %bb.hk unwind label %bb.hl

bb.hk:                                            ; preds = %.lr.ph.i.i
  %i.aji = getelementptr inbounds nuw i8, ptr %.sroa.0138.0200.i.i, i64 88 ; 2 uses
  %.not189.i.i = icmp eq ptr %i.aji, %i.ajf
  br i1 %.not189.i.i, label %._crit_edge.i.i358, label %.lr.ph.i.i

bb.hl:                                            ; preds = %.lr.ph.i.i
  %i.ajj = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hj
  %.pn63.i.i = phi { ptr, i32 } [ %i.ajj, %bb.hl ], [ %i.ajh, %bb.hj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %.body95.i

bb.hn:                                            ; preds = %._crit_edge.i.i358, %bb.hf
  %i.ajk = load ptr, ptr %i.agb, align 8
  %i.ajl = getelementptr i8, ptr %i.ajk, i64 -24
  %i.ajm = load i64, ptr %i.ajl, align 8
  %i.ajn = getelementptr inbounds i8, ptr %i.agb, i64 %i.ajm
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 8
  %i.ajp = load i64, ptr %i.ajo, align 8
  %i.ajq = invoke noundef i32 @_ZN6Assimp3IFC16ProcessMaterialsEmjRNS0_14ConversionDataEb(i64 noundef %i.ajp, i32 noundef %i.abw, ptr noundef nonnull align 8 dereferenceable(392) %2, i1 noundef zeroext false)
          to label %bb.ho unwind label %bb.if

bb.ho:                                            ; preds = %bb.hn
  %i.ajr = load ptr, ptr %i.agv, align 8          ; 3 uses
  %i.ajs = icmp eq ptr %i.ajr, null
  br i1 %i.ajs, label %bb.hp, label %bb.hu

bb.hp:                                            ; preds = %bb.ho
  %i.ajt = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.hq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i100.i

bb.hq:                                            ; preds = %bb.hp
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ajt, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.hr unwind label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  invoke void @__cxa_throw(ptr nonnull %i.ajt, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.hw unwind label %bb.hs

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i100.i: ; preds = %bb.hp
  %i.aju = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.ht

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %.0.i103.i = phi i1 [ false, %bb.hr ], [ true, %bb.hq ] ; 2 uses
  %i.ajv = landingpad { ptr, i32 }
          catch ptr null                          ; 4 uses
  %i.ajw = load ptr, ptr %8, align 8              ; 2 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ajy = icmp eq ptr %i.ajw, %i.ajx
  br i1 %i.ajy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i105.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104.i: ; preds = %bb.hs
  %i.ajz = load i64, ptr %i.ajx, align 8
  %i.aka = add i64 %i.ajz, 1
  call void @_ZdlPvm(ptr noundef %i.ajw, i64 noundef %i.aka) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %.0.i103.i, label %bb.ht, label %.body95.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i105.i: ; preds = %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %.0.i103.i, label %bb.ht, label %.body95.i

bb.ht:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i105.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i100.i
  %.pn10.i101.i = phi { ptr, i32 } [ %i.aju, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i100.i ], [ %i.ajv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i105.i ], [ %i.ajv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104.i ]
  call void @__cxa_free_exception(ptr %i.ajt) #28
  br label %.body95.i

bb.hu:                                            ; preds = %bb.ho
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajr, i64 32 ; 2 uses
  %i.akc = load ptr, ptr %i.akb, align 8          ; 2 uses
  %.not.i.i.i97.i = icmp eq ptr %i.akc, null
  br i1 %.not.i.i.i97.i, label %bb.hv, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i98.i

bb.hv:                                            ; preds = %bb.hu
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ajr)
          to label %.noexc106.i unwind label %.loopexit173.i

.noexc106.i:                                      ; preds = %bb.hv
  %.pre.i.i.i99.i = load ptr, ptr %i.akb, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i98.i

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i98.i:    ; preds = %.noexc106.i, %bb.hu
  %i.akd = phi ptr [ %.pre.i.i.i99.i, %.noexc106.i ], [ %i.akc, %bb.hu ]
  %i.ake = call ptr @__dynamic_cast(ptr nonnull %i.akd, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x320IfcRepresentationMapE, i64 -1) #28 ; 2 uses
  %i.akf = icmp eq ptr %i.ake, null
  br i1 %i.akf, label %.invoke.i, label %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x320IfcRepresentationMapEEptEv.exit.i

bb.hw:                                            ; preds = %bb.hr
  unreachable

_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x320IfcRepresentationMapEEptEv.exit.i: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i98.i
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ake, i64 32
  %i.akh = load ptr, ptr %i.akg, align 8          ; 3 uses
  %i.aki = icmp eq ptr %i.akh, null
  br i1 %i.aki, label %bb.hx, label %bb.ic

bb.hx:                                            ; preds = %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x320IfcRepresentationMapEEptEv.exit.i
  %i.akj = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.hy unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i87.i

bb.hy:                                            ; preds = %bb.hx
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.akj, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.hz unwind label %bb.ia

bb.hz:                                            ; preds = %bb.hy
end_hunk_1
