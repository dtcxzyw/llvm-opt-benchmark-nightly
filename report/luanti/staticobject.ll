Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/staticobject?download=true
inline.NumInlined: 423
inline.NumDeleted: 201
begin_hunk_0
%struct.StaticObject = type { i8, %"class.core::vector3d", %"class.std::__cxx11::basic_string" }
%"class.core::vector3d" = type { float, float, float }

$_ZN13BaseExceptionD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN18SerializationErrorD0Ev = comdat any

$_ZNK13BaseException4whatEv = comdat any

$_ZN13BaseExceptionD0Ev = comdat any

$_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_ = comdat any

$_ZNSt6vectorI12StaticObjectSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZNSt8_Rb_treeItSt4pairIKt12StaticObjectESt10_Select1stIS3_ESt4lessItESaIS3_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS3_ESB_ = comdat any

$_ZNSt8_Rb_treeItSt4pairIKt12StaticObjectESt10_Select1stIS3_ESt4lessItESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E = comdat any

$_ZNSt6vectorI12StaticObjectSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EE = comdat any

$_ZTI18SerializationError = comdat any

$_ZTS18SerializationError = comdat any

$_ZTI13BaseException = comdat any

$_ZTS13BaseException = comdat any

$_ZTV18SerializationError = comdat any

$_ZTV13BaseException = comdat any

@errorstream = external thread_local global %class.LogStream, align 8
@.str = private unnamed_addr constant [32 x i8] c"StaticObjectList::serialize(): \00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"too many objects (\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c") in list, \00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"not writing them to disk.\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"StaticObjectList::deSerialize(): \00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"deserializing objects while \00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c" active objects already exist (not cleared). \00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c" stored objects _were_ cleared\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1
@_ZTI18SerializationError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS18SerializationError, ptr @_ZTI13BaseException }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS18SerializationError = linkonce_odr dso_local constant [21 x i8] c"18SerializationError\00", comdat, align 1
@_ZTI13BaseException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13BaseException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTS13BaseException = linkonce_odr dso_local constant [16 x i8] c"13BaseException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTV18SerializationError = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI18SerializationError, ptr @_ZN13BaseExceptionD2Ev, ptr @_ZN18SerializationErrorD0Ev, ptr @_ZNK13BaseException4whatEv] }, comdat, align 8
@_ZTV13BaseException = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI13BaseException, ptr @_ZN13BaseExceptionD2Ev, ptr @_ZN13BaseExceptionD0Ev, ptr @_ZNK13BaseException4whatEv] }, comdat, align 8
@.str.10 = private unnamed_addr constant [66 x i8] c"StaticObjectList::serialize(): object has excessive static data (\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"), deleting it.\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN12StaticObjectC1EPK18ServerActiveObjectRKN4core8vector3dIfEE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN12StaticObjectC2EPK18ServerActiveObjectRKN4core8vector3dIfEE

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12StaticObjectC2EPK18ServerActiveObjectRKN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 1), (4, 16)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i32 %i.b(ptr noundef nonnull align 8 dereferenceable(10) %1)
  %i.d = trunc i32 %i.c to i8
  store i8 %i.d, ptr %0, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !81
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.h, align 8, !tbaa !23
  store i8 0, ptr %i.g, align 8, !tbaa !24
  %i.i = load ptr, ptr %1, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(324) %1, ptr noundef nonnull %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.g
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.g, align 8, !tbaa !24
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK12StaticObject9serializeERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [12 x i8], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i8 %i.c, ptr %i.b, align 1, !tbaa !24
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.e, align 4, !tbaa !21 ; 2 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 4, !tbaa !21 ; 2 uses
  %i.f = fcmp nsz olt float %.sroa.28.0.copyload, f0xCA03126C
  %i.g = select i1 %i.f, float f0xCA03126C, float %.sroa.28.0.copyload ; 2 uses
  %i.h = fcmp nsz olt float %i.g, f0x4A03126C
  %i.i = select i1 %i.h, float %i.g, float f0x4A03126C
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.j = fcmp nsz olt <2 x float> %.sroa.07.0.copyload, splat (float f0xCA03126C)
  %i.k = select <2 x i1> %i.j, <2 x float> splat (float f0xCA03126C), <2 x float> %.sroa.07.0.copyload ; 2 uses
  %i.l = fcmp nsz olt <2 x float> %i.k, splat (float f0x4A03126C)
  %i.m = select <2 x i1> %i.l, <2 x float> %i.k, <2 x float> splat (float f0x4A03126C)
  %i.n = fmul nsz <2 x float> %i.m, splat (float 1.000000e+03)
  %i.o = fptosi <2 x float> %i.n to <2 x i32>
  %i.p = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %i.o)
  store <2 x i32> %i.p, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = fmul nsz float %i.i, 1.000000e+03
  %i.s = fptosi float %i.r to i32
  %i.t = call noundef i32 @llvm.bswap.i32(i32 %i.s)
  store i32 %i.t, ptr %i.q, align 8
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 12) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !23
  call void @_Z17serializeString16B5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i64 %i.y, ptr %i.w)
  %i.z = load ptr, ptr %2, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !23
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.z, i64 noundef %i.ab)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.ad = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !24
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.b:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.b
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !24
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.ai
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_Z17serializeString16B5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12StaticObject11deSerializeERSih(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 zeroext %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i8 0, ptr %i.b, align 1
  %i.c = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !11
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %1, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !34
  %i.j = and i32 %i.i, 2
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_Z6readU8RSi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z6readU8RSi.exit:                                ; preds = %bb.a
  %i.k = load i8, ptr %i.b, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  store i8 %i.k, ptr %0, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  %i.l = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 12) ; 0 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !11
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %1, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !34
  %i.s = and i32 %i.r, 2
  %.not.i5 = icmp eq i32 %i.s, 0
  br i1 %.not.i5, label %_Z11readV3F1000RSi.exit, label %bb.c

bb.c:                                             ; preds = %_Z6readU8RSi.exit
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z11readV3F1000RSi.exit:                          ; preds = %_Z6readU8RSi.exit
  %.0.copyload.i.i.i.i.i = load i32, ptr %i.a, align 4
  %4 = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i)
  %5 = sitofp nsz i32 %4 to float
  %6 = fdiv nsz float %5, 1.000000e+03
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %6, i64 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %7 = load <2 x i32>, ptr %i.t, align 4
  %8 = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %7)
  %9 = sitofp <2 x i32> %8 to <2 x float>
  %10 = fdiv nsz <2 x float> %9, splat (float 1.000000e+03) ; 2 uses
  %11 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i, <2 x float> %10, <2 x i32> <i32 0, i32 2>
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x float> %11, ptr %i.u, align 4, !tbaa !21
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %12 = extractelement <2 x float> %10, i64 1
  store float %12, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_Z19deSerializeString16B5cxx11RSi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25   ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  %i.z = load ptr, ptr %3, align 8, !tbaa !25     ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ab = icmp eq ptr %i.z, %i.aa                 ; 2 uses
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_Z11readV3F1000RSi.exit
  br i1 %i.ab, label %bb.d, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_Z11readV3F1000RSi.exit
  br i1 %i.ab, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !23 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  switch i64 %i.ad, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.af = load i8, ptr %i.z, align 1, !tbaa !24
  store i8 %i.af, ptr %i.w, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.z, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !23 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !23
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !24
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.z, ptr %i.v, align 8, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = load <2 x i64>, ptr %i.al, align 8, !tbaa !24
  store <2 x i64> %i.am, ptr %i.ak, align 8, !tbaa !24
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.an = load i64, ptr %i.x, align 8, !tbaa !24
  store ptr %i.z, ptr %i.v, align 8, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load <2 x i64>, ptr %i.ao, align 8, !tbaa !24
  store <2 x i64> %i.aq, ptr %i.ap, align 8, !tbaa !24
  %.not.i6 = icmp eq ptr %i.w, null
  br i1 %.not.i6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.w, ptr %3, align 8, !tbaa !25
  store i64 %i.an, ptr %i.aa, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.aa, ptr %3, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.ar = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.w, %bb.g ], [ %i.aa, %bb.h ]
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !23
  store i8 0, ptr %i.ar, align 1, !tbaa !24
  %i.at = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !24
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

declare void @_Z19deSerializeString16B5cxx11RSi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local void @_ZN16StaticObjectList9serializeERSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %2 = alloca %struct.StaticObject, align 8       ; 8 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36
  %.not48 = icmp eq ptr %i.i, %i.k
  br i1 %.not48, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %.not4150 = icmp eq ptr %i.m, %i.n
  br i1 %.not4150, label %._crit_edge54, label %.lr.ph53

.lr.ph53:                                         ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.e

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.036.049 = phi ptr [ %.sroa.036.1, %bb.d ], [ %i.i, %bb.a ] ; 3 uses
  %i.p = tail call fastcc noundef zeroext i1 @"_ZZN16StaticObjectList9serializeERSoENK3$_0clER12StaticObject"(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.036.049)
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.q = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.r = ptrtoint ptr %.sroa.036.049 to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t
  %i.v = tail call ptr @_ZNSt6vectorI12StaticObjectSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.u)
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.036.049, i64 48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.036.1 = phi ptr [ %i.v, %bb.b ], [ %i.w, %bb.c ] ; 2 uses
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !36
  %.not = icmp eq ptr %.sroa.036.1, %i.x
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !82

._crit_edge54:                                    ; preds = %bb.g, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  store i8 0, ptr %i.h, align 1, !tbaa !24
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.h, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.aa = load ptr, ptr %0, align 8, !tbaa !45
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 48
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !46
  %i.ah = add i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = icmp ugt i64 %i.ah, 65535
  br i1 %i.ai, label %bb.h, label %bb.s

bb.e:                                             ; preds = %.lr.ph53, %bb.g
  %.sroa.032.051 = phi ptr [ %i.m, %.lr.ph53 ], [ %i.al, %bb.g ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 40
  %i.ak = tail call fastcc noundef zeroext i1 @"_ZZN16StaticObjectList9serializeERSoENK3$_0clER12StaticObject"(ptr noundef nonnull align 8 dereferenceable(48) %i.aj)
  %i.al = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.032.051) #25 ; 2 uses
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.032.051, ptr noundef nonnull align 8 dereferenceable(32) %i.n) #24 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !25 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 72 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !24
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #23
  br label %_ZNSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorIS5_E.exit

_ZNSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorIS5_E.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 88) #23
  %i.at = load i64, ptr %i.o, align 8, !tbaa !46
  %i.au = add i64 %i.at, -1
  store i64 %i.au, ptr %i.o, align 8, !tbaa !46
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZNSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorIS5_E.exit
  %.not41 = icmp eq ptr %i.al, %i.n
  br i1 %.not41, label %._crit_edge54, label %bb.e, !llvm.loop !83

bb.h:                                             ; preds = %._crit_edge54
  %.not.i = icmp eq ptr @_ZTH11errorstream, null
end_hunk_0
