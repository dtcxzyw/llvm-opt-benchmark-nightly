Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/c_converter?download=true
inline.NumInlined: 663
inline.NumDeleted: 233
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::set" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<unsigned long, unsigned long, std::_Identity<unsigned long>, std::less<unsigned long>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<unsigned long, unsigned long, std::_Identity<unsigned long>, std::less<unsigned long>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%class.LogStream = type { ptr, %class.StringStreamBuffer, %class.DummyStreamBuffer, %"class.std::basic_ostream", %"class.std::basic_ostream", %class.StreamProxy, %class.StreamProxy }
%class.StringStreamBuffer = type <{ %"class.std::basic_streambuf", %"class.std::function", i32, [256 x i8], [4 x i8] }>
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%class.DummyStreamBuffer = type { %"class.std::basic_streambuf" }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%class.StreamProxy = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.core::vector3d.3" = type { double, double, double }
%"class.video::SColor" = type { i32 }
%"class.core::aabbox3d" = type { %"class.core::vector3d", %"class.core::vector3d" }
%"class.core::vector3d" = type { float, float, float }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<core::aabbox3d<float>, std::allocator<core::aabbox3d<float>>>::_Vector_impl" }
%"struct.std::_Vector_base<core::aabbox3d<float>, std::allocator<core::aabbox3d<float>>>::_Vector_impl" = type { %"struct.std::_Vector_base<core::aabbox3d<float>, std::allocator<core::aabbox3d<float>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<core::aabbox3d<float>, std::allocator<core::aabbox3d<float>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN13BaseExceptionD2Ev = comdat any

$_ZNSt3setImSt4lessImESaImEED2Ev = comdat any

$_ZN8LuaErrorD0Ev = comdat any

$_ZNK13BaseException4whatEv = comdat any

$__clang_call_terminate = comdat any

$_ZN13BaseExceptionD0Ev = comdat any

$_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZTI8LuaError = comdat any

$_ZTS8LuaError = comdat any

$_ZTI8ModError = comdat any

$_ZTS8ModError = comdat any

$_ZTI13BaseException = comdat any

$_ZTS13BaseException = comdat any

$_ZTV8LuaError = comdat any

$_ZTV13BaseException = comdat any

@.str = private unnamed_addr constant [9 x i8] c"Invalid \00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"vector coordinate x\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" (value is nil).\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"vector coordinate y\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" (expected \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" got \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c").\00", align 1
@_ZTI8LuaError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS8LuaError, ptr @_ZTI8ModError }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS8LuaError = linkonce_odr dso_local constant [10 x i8] c"8LuaError\00", comdat, align 1
@_ZTI8ModError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS8ModError, ptr @_ZTI13BaseException }, comdat, align 8
@_ZTS8ModError = linkonce_odr dso_local constant [10 x i8] c"8ModError\00", comdat, align 1
@_ZTI13BaseException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13BaseException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTS13BaseException = linkonce_odr dso_local constant [16 x i8] c"13BaseException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@.str.7 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c" value for 'x' (NaN or infinity)\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c" value for 'y' (NaN or infinity)\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"vector coordinate z\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c" value for 'z' (NaN or infinity)\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"ARGB color\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"color component R\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"color component G\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"color component B\00", align 1
@_ZZ18check_field_or_nilP9lua_StateiiPKcE11warned_msgs = internal thread_local global %"class.std::set" zeroinitializer, align 8
@_ZGVZ18check_field_or_nilP9lua_StateiiPKcE11warned_msgs = internal thread_local unnamed_addr global i1 false, align 1
@__dso_handle = external hidden global i8
@.str.20 = private unnamed_addr constant [15 x i8] c"Invalid field \00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c").\0A\00", align 1
@errorstream = external thread_local local_unnamed_addr global %class.LogStream, align 8
@.str.22 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@_ZTV8LuaError = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI8LuaError, ptr @_ZN13BaseExceptionD2Ev, ptr @_ZN8LuaErrorD0Ev, ptr @_ZNK13BaseException4whatEv] }, comdat, align 8
@_ZTV13BaseException = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI13BaseException, ptr @_ZN13BaseExceptionD2Ev, ptr @_ZN13BaseExceptionD0Ev, ptr @_ZNK13BaseException4whatEv] }, comdat, align 8
@.str.23 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"z\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z8push_v3fP9lua_StateN4core8vector3dIfEE(ptr noundef %0, <2 x float> %1, float %2) local_unnamed_addr #0 {
bb.a:
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef -10000, i32 noundef 8)
  %i.a = fpext nsz <2 x float> %1 to <2 x double> ; 2 uses
  %i.b = extractelement <2 x double> %i.a, i64 0
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.b)
  %i.c = extractelement <2 x double> %i.a, i64 1
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.c)
  %i.d = fpext nsz float %2 to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.d)
  tail call void @lua_call(ptr noundef %0, i32 noundef 3, i32 noundef 1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @lua_rawgeti(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_pushnumber(ptr noundef, double noundef) local_unnamed_addr #2

declare void @lua_call(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z8push_v2fP9lua_StateN4core8vector2dIfEE(ptr noundef %0, <2 x float> %1) local_unnamed_addr #0 {
bb.a:
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef -10000, i32 noundef 10)
  %i.a = fpext nsz <2 x float> %1 to <2 x double> ; 2 uses
  %i.b = extractelement <2 x double> %i.a, i64 0
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.b)
  %i.c = extractelement <2 x double> %i.a, i64 1
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.c)
  tail call void @lua_call(ptr noundef %0, i32 noundef 2, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_Z10read_v2s16P9lua_Statei(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call nsz <2 x float> @_Z8read_v2fP9lua_Statei(ptr noundef %0, i32 noundef %1)
  %i.b = fptosi <2 x float> %i.a to <2 x i16>
  %.sroa.0.0.insert.insert.i = bitcast <2 x i16> %i.b to i32
  ret i32 %.sroa.0.0.insert.insert.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local <2 x float> @_Z8read_v2fP9lua_Statei(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call fastcc void @_ZL11read_v2_auxP9lua_Statei(ptr noundef %0, i32 noundef %1)
  %i.a = tail call i32 @lua_type(ptr noundef %0, i32 noundef -2)
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !12
  store i64 2334106421097295433, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 8, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.e, align 8, !tbaa !16
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.1, i64 noundef 19)
          to label %.noexc32 unwind label %bb.h   ; 6 uses

.noexc32:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !12, !alias.scope !60
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %.noexc32
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !15   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc32
  store ptr %i.h, ptr %3, align 8, !tbaa !17, !alias.scope !60
  %i.o = load i64, ptr %i.i, align 8, !tbaa !16
  store i64 %i.o, ptr %i.g, align 8, !tbaa !16, !alias.scope !60
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.p = phi i64 [ %i.l, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.p, ptr %i.r, align 8, !tbaa !15, !alias.scope !60
  store ptr %i.i, ptr %i.f, align 8, !tbaa !17
  store i64 0, ptr %i.q, align 8, !tbaa !15
  store i8 0, ptr %i.i, align 8, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.s = load i64, ptr %i.r, align 8, !tbaa !15, !noalias !61
  %i.t = and i64 %i.s, -16
  %i.u = icmp eq i64 %i.t, 4611686018427387888
  br i1 %i.u, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i33

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #23
          to label %.noexc37 unwind label %bb.i

.noexc37:                                         ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i33: ; preds = %bb.c
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.2, i64 noundef 16)
          to label %.noexc38 unwind label %bb.i   ; 6 uses

.noexc38:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i33
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !12, !alias.scope !61
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !17   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

bb.e:                                             ; preds = %.noexc38
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !15 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %.noexc38
  store ptr %i.x, ptr %2, align 8, !tbaa !17, !alias.scope !61
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !16
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !16, !alias.scope !61
  %.phi.trans.insert.i35 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.pre.i36 = load i64, ptr %.phi.trans.insert.i35, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.e
  %i.af = phi i64 [ %i.ab, %bb.e ], [ %.pre.i36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !15, !alias.scope !61
  store ptr %i.y, ptr %i.v, align 8, !tbaa !17
  store i64 0, ptr %i.ag, align 8, !tbaa !15
  store i8 0, ptr %i.y, align 8, !tbaa !16
  %i.ai = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.g
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.f
  %i.ak = load i64, ptr %i.g, align 8, !tbaa !16
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  %i.am = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.c
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !16
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.aq = load ptr, ptr %2, align 8, !tbaa !17
  %i.ar = load i64, ptr %i.ah, align 8, !tbaa !15
  invoke void @_Z14log_deprecatedP9lua_StateSt17basic_string_viewIcSt11char_traitsIcEEib(ptr noundef %0, i64 %i.ar, ptr %i.aq, i32 noundef 1, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.as = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.w
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.g
  %i.au = load i64, ptr %i.w, align 8, !tbaa !16
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.k

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i33, %bb.d
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.g
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.i
  %i.ba = load i64, ptr %i.g, align 8, !tbaa !16
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.h ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.ax, %bb.i ]
  %i.bc = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.c
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
end_hunk_0
begin_hunk_1_@_Z8read_v2fP9lua_Statei:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i60: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.bn, ptr %7, align 8, !tbaa !12
  store i64 2334106421097295433, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 8, ptr %i.bo, align 8, !tbaa !15
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 0, ptr %i.bp, align 8, !tbaa !16
  %i.bq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.3, i64 noundef 19)
          to label %.noexc65 unwind label %bb.r   ; 6 uses

.noexc65:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i60
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.br, ptr %6, align 8, !tbaa !12, !alias.scope !62
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !17 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 5 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

bb.l:                                             ; preds = %.noexc65
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !15 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 16
  call void @llvm.assume(i1 %i.bx)
  %i.by = add nuw nsw i64 %i.bw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.br, ptr noundef nonnull align 8 dereferenceable(1) %i.bt, i64 %i.by, i1 false)
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %.noexc65
  store ptr %i.bs, ptr %6, align 8, !tbaa !17, !alias.scope !62
  %i.bz = load i64, ptr %i.bt, align 8, !tbaa !16
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !16, !alias.scope !62
  %.phi.trans.insert.i62 = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.pre.i63 = load i64, ptr %.phi.trans.insert.i62, align 8, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.l
  %i.ca = phi i64 [ %i.bw, %bb.l ], [ %.pre.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !15, !alias.scope !62
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !17
  store i64 0, ptr %i.cb, align 8, !tbaa !15
  store i8 0, ptr %i.bt, align 8, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !15, !noalias !63
  %i.ce = and i64 %i.cd, -16
  %i.cf = icmp eq i64 %i.ce, 4611686018427387888
  br i1 %i.cf, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i67

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #23
          to label %.noexc71 unwind label %bb.s

.noexc71:                                         ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i67: ; preds = %bb.m
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, i64 noundef 16)
          to label %.noexc72 unwind label %bb.s   ; 6 uses

.noexc72:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i67
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ch, ptr %5, align 8, !tbaa !12, !alias.scope !63
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !17 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 5 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

bb.o:                                             ; preds = %.noexc72
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !15 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 16
  call void @llvm.assume(i1 %i.cn)
  %i.co = add nuw nsw i64 %i.cm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ch, ptr noundef nonnull align 8 dereferenceable(1) %i.cj, i64 %i.co, i1 false)
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %.noexc72
  store ptr %i.ci, ptr %5, align 8, !tbaa !17, !alias.scope !63
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !16
  store i64 %i.cp, ptr %i.ch, align 8, !tbaa !16, !alias.scope !63
  %.phi.trans.insert.i69 = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.pre.i70 = load i64, ptr %.phi.trans.insert.i69, align 8, !tbaa !15
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.o
  %i.cq = phi i64 [ %i.cm, %bb.o ], [ %.pre.i70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.cq, ptr %i.cs, align 8, !tbaa !15, !alias.scope !63
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !17
  store i64 0, ptr %i.cr, align 8, !tbaa !15
  store i8 0, ptr %i.cj, align 8, !tbaa !16
  %i.ct = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.br
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.p
  %i.cv = load i64, ptr %i.br, align 8, !tbaa !16
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  %i.cx = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.bn
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.cz = load i64, ptr %i.bn, align 8, !tbaa !16
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.db = load ptr, ptr %5, align 8, !tbaa !17
  %i.dc = load i64, ptr %i.cs, align 8, !tbaa !15
  invoke void @_Z14log_deprecatedP9lua_StateSt17basic_string_viewIcSt11char_traitsIcEEib(ptr noundef %0, i64 %i.dc, ptr %i.db, i32 noundef 1, i1 noundef zeroext true)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.dd = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.ch
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.q
  %i.df = load i64, ptr %i.ch, align 8, !tbaa !16
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.u

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i60
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i67, %bb.n
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.br
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.s
  %i.dl = load i64, ptr %i.br, align 8, !tbaa !16
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.r
  %.pn25 = phi { ptr, i32 } [ %i.dh, %bb.r ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.di, %bb.s ]
  %i.dn = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.bn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.dp = load i64, ptr %i.bn, align 8, !tbaa !16
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.ch
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.t
  %i.du = load i64, ptr %i.ch, align 8, !tbaa !16
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %.pn28 = phi { ptr, i32 } [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.dr, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.v

bb.u:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %i.dw = call nsz double @lua_tonumber(ptr noundef %0, i32 noundef -2)
  %i.dx = call nsz double @lua_tonumber(ptr noundef %0, i32 noundef -1)
  %i.dy = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %i.dx, i64 1
  %i.ea = fptrunc nsz <2 x double> %i.dz to <2 x float>
  call void @lua_settop(ptr noundef %0, i32 noundef -3)
  ret <2 x float> %i.ea

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ]
  resume { ptr, i32 } %.pn28.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10push_v2s16P9lua_StateN4core8vector2dIsEE(ptr noundef %0, i32 %1) local_unnamed_addr #3 {
bb.a:
  %.sroa.0.0.extract.trunc = zext i32 %1 to i64
  %sext = shl i64 %.sroa.0.0.extract.trunc, 48
  %i.a = ashr i32 %1, 16
  %i.b = sext i32 %i.a to i64
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef -10000, i32 noundef 10)
  %i.c = ashr exact i64 %sext, 48
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.c)
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.b)
  tail call void @lua_call(ptr noundef %0, i32 noundef 2, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10push_v2s32P9lua_StateN4core8vector2dIiEE(ptr noundef %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef -10000, i32 noundef 10)
  %i.a = shl i64 %1, 32
  %i.b = ashr exact i64 %i.a, 32
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.b)
  %i.c = ashr i64 %1, 32
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.c)
  tail call void @lua_call(ptr noundef %0, i32 noundef 2, i32 noundef 1)
  ret void
}

declare void @lua_pushinteger(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10push_v2u32P9lua_StateN4core8vector2dIjEE(ptr noundef %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef -10000, i32 noundef 10)
  %i.a = and i64 %1, 4294967295
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.a)
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %.sroa.2.0.extract.shift)
  tail call void @lua_call(ptr noundef %0, i32 noundef 2, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i64 @_Z10read_v2s32P9lua_Statei(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call nsz <2 x float> @_Z8read_v2fP9lua_Statei(ptr noundef %0, i32 noundef %1)
  %i.b = fptosi <2 x float> %i.a to <2 x i32>
  %.sroa.0.0.insert.insert.i = bitcast <2 x i32> %i.b to i64
  ret i64 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL11read_v2_auxP9lua_Statei(ptr noundef %0, i32 noundef %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call i32 @lua_type(ptr noundef %0, i32 noundef %1) ; 2 uses
  %.not = icmp eq i32 %i.a, 5
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 40) #8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.22)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.4)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.c = invoke ptr @lua_typename(ptr noundef %0, i32 noundef 5)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.c)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.5)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.d = invoke ptr @lua_typename(ptr noundef %0, i32 noundef %i.a)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.d)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.6)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI8LuaError, ptr nonnull @_ZN13BaseExceptionD2Ev) #23
          to label %bb.v unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.m:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.o:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.p:                                             ; preds = %bb.i, %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.q:                                             ; preds = %bb.j
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i1 [ false, %bb.l ], [ true, %bb.k ]  ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.o = load i64, ptr %i.m, align 8, !tbaa !16
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %.pn = phi { ptr, i32 } [ %i.j, %bb.q ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.r ] ; 2 uses
  %.1 = phi i1 [ true, %bb.q ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.r ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !16
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.i, %bb.p ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.2 = phi i1 [ true, %bb.p ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.y = load i64, ptr %i.w, align 8, !tbaa !16
  %i.z = add i64 %i.y, 1
end_hunk_1
begin_hunk_2_@_Z9check_v2fP9lua_Statei:bb.a
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split271

bb.ay:                                            ; preds = %bb.av
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

bb.az:                                            ; preds = %bb.ax, %bb.aw
  %.0 = phi i1 [ false, %bb.ax ], [ true, %bb.aw ] ; 2 uses
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = load ptr, ptr %22, align 8, !tbaa !17   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %bb.az
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !16
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %bb.ay
  %.pn = phi { ptr, i32 } [ %i.el, %bb.ay ], [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ], [ %i.em, %bb.az ] ; 4 uses
  %.1 = phi i1 [ true, %bb.ay ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ], [ %.0, %bb.az ] ; 2 uses
  %i.es = load ptr, ptr %23, align 8, !tbaa !17   ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !16
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ew) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  %i.ex = load ptr, ptr %24, align 8, !tbaa !17   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.thread: ; preds = %bb.au
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fb = load ptr, ptr %24, align 8, !tbaa !17   ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %.sink.split271, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.thread
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !16
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #24
  br label %.sink.split271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %i.fg = load i64, ptr %i.ey, align 8, !tbaa !16
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fh) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #8
  br i1 %.1, label %.sink.split272, label %bb.bb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #8
  br i1 %.1, label %.sink.split272, label %bb.bb

.sink.split271:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.thread
  %.pn.pn.pn198.ph = phi { ptr, i32 } [ %i.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.thread ], [ %i.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.thread ], [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #8
  br label %.sink.split272

bb.ba:                                            ; preds = %bb.as
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.db, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.dd, i64 1
  ret <2 x float> %.sroa.0.4.vec.insert

.sink.split272:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156, %.sink.split271, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %.sink.split270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138, %.sink.split269, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %.sink.split
  %.sink = phi ptr [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ %i.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %i.b, %.sink.split ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %i.bb, %.sink.split269 ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ], [ %i.dh, %.sink.split270 ], [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ], [ %i.ej, %.sink.split271 ], [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156 ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ]
  %.pn93.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn85.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ %.pn80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %.pn93.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %.pn93.pn.pn.pn.pn.pn.pn162.ph, %.sink.split ], [ %.pn93.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %.pn85.pn.pn.pn.pn.pn.pn174.ph, %.sink.split269 ], [ %.pn85.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ], [ %.pn80.pn.pn186.ph, %.sink.split270 ], [ %.pn80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ], [ %.pn.pn.pn198.ph, %.sink.split271 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ]
  call void @__cxa_free_exception(ptr %.sink) #8
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split272, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %.pn93.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn85.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ %.pn93.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %.pn93.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %.pn85.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ], [ %.pn80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %.pn80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ], [ %.pn93.pn.pn.pn.pn.pn.pn.pn.ph, %.sink.split272 ]
  resume { ptr, i32 } %.pn93.pn.pn.pn.pn.pn.pn.pn

bb.bc:                                            ; preds = %bb.ax, %bb.ap, %bb.ad, %bb.l
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare ptr @lua_typename(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !12
  %i.d = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 %i.f, ptr %i.a, align 8, !tbaa !18
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.d ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !17
  %i.i = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.i, ptr %i.c, align 8, !tbaa !16
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN8ModErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !16
  store i8 %i.k, ptr %i.j, align 1, !tbaa !16
  br label %_ZN8ModErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN8ModErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #25
  unreachable

_ZN8ModErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.b, %bb.c
  %i.n = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !15
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV8LuaError, i64 16), ptr %0, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !16
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #8
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, float } @_Z8read_v3fP9lua_Statei(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.core::vector3d.3", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call fastcc void @_ZL8read_v3dP9lua_Statei(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %0, i32 noundef %1)
  %i.a = load <2 x double>, ptr %2, align 16, !tbaa !22
  %i.b = fptrunc nsz <2 x double> %i.a to <2 x float>
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load double, ptr %i.c, align 16, !tbaa !24
  %i.e = fptrunc nsz double %i.d to float
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.b, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.e, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL8read_v3dP9lua_Statei(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call fastcc void @_ZL11read_v3_auxP9lua_Statei(ptr noundef %1, i32 noundef %2)
  %i.a = tail call i32 @lua_type(ptr noundef %1, i32 noundef -3)
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !12
  store i64 2334106421097295433, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 8, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.e, align 8, !tbaa !16
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.1, i64 noundef 19)
          to label %.noexc46 unwind label %bb.h   ; 6 uses

.noexc46:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !12, !alias.scope !76
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %.noexc46
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !15   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc46
  store ptr %i.h, ptr %4, align 8, !tbaa !17, !alias.scope !76
  %i.o = load i64, ptr %i.i, align 8, !tbaa !16
  store i64 %i.o, ptr %i.g, align 8, !tbaa !16, !alias.scope !76
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.p = phi i64 [ %i.l, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.p, ptr %i.r, align 8, !tbaa !15, !alias.scope !76
  store ptr %i.i, ptr %i.f, align 8, !tbaa !17
  store i64 0, ptr %i.q, align 8, !tbaa !15
  store i8 0, ptr %i.i, align 8, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.s = load i64, ptr %i.r, align 8, !tbaa !15, !noalias !77
  %i.t = and i64 %i.s, -16
  %i.u = icmp eq i64 %i.t, 4611686018427387888
  br i1 %i.u, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #23
          to label %.noexc51 unwind label %bb.i

.noexc51:                                         ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47: ; preds = %bb.c
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, i64 noundef 16)
          to label %.noexc52 unwind label %bb.i   ; 6 uses

.noexc52:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !12, !alias.scope !77
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !17   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

bb.e:                                             ; preds = %.noexc52
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !15 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %.noexc52
  store ptr %i.x, ptr %3, align 8, !tbaa !17, !alias.scope !77
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !16
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !16, !alias.scope !77
  %.phi.trans.insert.i49 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.pre.i50 = load i64, ptr %.phi.trans.insert.i49, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %bb.e
  %i.af = phi i64 [ %i.ab, %bb.e ], [ %.pre.i50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !15, !alias.scope !77
  store ptr %i.y, ptr %i.v, align 8, !tbaa !17
  store i64 0, ptr %i.ag, align 8, !tbaa !15
  store i8 0, ptr %i.y, align 8, !tbaa !16
  %i.ai = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.g
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.f
  %i.ak = load i64, ptr %i.g, align 8, !tbaa !16
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  %i.am = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.c
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !16
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.aq = load ptr, ptr %3, align 8, !tbaa !17
  %i.ar = load i64, ptr %i.ah, align 8, !tbaa !15
  invoke void @_Z14log_deprecatedP9lua_StateSt17basic_string_viewIcSt11char_traitsIcEEib(ptr noundef %1, i64 %i.ar, ptr %i.aq, i32 noundef 1, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.as = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.w
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.g
  %i.au = load i64, ptr %i.w, align 8, !tbaa !16
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.k

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47, %bb.d
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.g
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.i
  %i.ba = load i64, ptr %i.g, align 8, !tbaa !16
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.h ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %i.ax, %bb.i ]
  %i.bc = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.c
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.be = load i64, ptr %i.c, align 8, !tbaa !16
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
end_hunk_2
begin_hunk_3_@_ZL11read_v3_auxP9lua_Statei:bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.o = load i64, ptr %i.m, align 8, !tbaa !16
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %.pn = phi { ptr, i32 } [ %i.j, %bb.q ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.r ] ; 2 uses
  %.1 = phi i1 [ true, %bb.q ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.r ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !16
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.i, %bb.p ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.2 = phi i1 [ true, %bb.p ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.y = load i64, ptr %i.w, align 8, !tbaa !16
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %i.h, %bb.o ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ] ; 2 uses
  %.3 = phi i1 [ true, %bb.o ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ] ; 2 uses
  %i.aa = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !16
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.g, %bb.n ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ] ; 2 uses
  %.4 = phi i1 [ true, %bb.n ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ] ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !16
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.m
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.f, %bb.m ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ] ; 4 uses
  %.5 = phi i1 [ true, %bb.m ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ] ; 2 uses
  %i.ak = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.an = load i64, ptr %i.al, align 8, !tbaa !16
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  %i.ap = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread: ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !16
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #24
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.ay = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.az) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br i1 %.5, label %bb.s, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br i1 %.5, label %bb.s, label %bb.t

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.thread
  %.pn.pn.pn.pn.pn.pn.pn56.ph = phi { ptr, i32 } [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn.pn.pn.pn.pn.pn.pn56 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %.pn.pn.pn.pn.pn.pn.pn56.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.b) #8
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn.pn.pn.pn.pn.pn.pn55 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn56, %bb.s ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn55

bb.u:                                             ; preds = %bb.a
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef %1)
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef -10000, i32 noundef 7)
  tail call void @lua_insert(ptr noundef %0, i32 noundef -2)
  tail call void @lua_call(ptr noundef %0, i32 noundef 1, i32 noundef 3)
  ret void

bb.v:                                             ; preds = %bb.l
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10push_ARGB8P9lua_StateN5video6SColorE(ptr noundef %0, i32 %1) local_unnamed_addr #3 {
bb.a:
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 4)
  %i.a = lshr i32 %1, 24
  %i.b = zext nneg i32 %i.a to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.b)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.12)
  %i.c = lshr i32 %1, 16
  %i.d = and i32 %i.c, 255
  %i.e = zext nneg i32 %i.d to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.e)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.13)
  %i.f = lshr i32 %1, 8
  %i.g = and i32 %i.f, 255
  %i.h = zext nneg i32 %i.g to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.h)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.14)
  %i.i = and i32 %1, 255
  %i.j = zext nneg i32 %i.i to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.j)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.15)
  ret void
}

declare void @lua_createtable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_setfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12pushFloatPosP9lua_StateN4core8vector3dIfEE(ptr noundef %0, <2 x float> %1, float %2) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.a = fdiv nsz float %.sroa.0.0.vec.extract, 1.000000e+01
  %i.b = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.c = insertelement <2 x float> %i.b, float %2, i64 1
  %i.d = fdiv nsz <2 x float> %i.c, splat (float 1.000000e+01)
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef -10000, i32 noundef 8)
  %i.e = fpext nsz float %i.a to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.e)
  %i.f = fpext nsz <2 x float> %i.d to <2 x double> ; 2 uses
  %i.g = extractelement <2 x double> %i.f, i64 0
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.g)
  %i.h = extractelement <2 x double> %i.f, i64 1
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.h)
  tail call void @lua_call(ptr noundef %0, i32 noundef 3, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, float } @_Z13checkFloatPosP9lua_Statei(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { <2 x float>, float } @_Z9check_v3fP9lua_Statei(ptr noundef %0, i32 noundef %1) ; 2 uses
  %.fca.0.extract3 = extractvalue { <2 x float>, float } %i.a, 0
  %.fca.1.extract4 = extractvalue { <2 x float>, float } %i.a, 1
  %i.b = fmul nsz <2 x float> %.fca.0.extract3, splat (float 1.000000e+01)
  %i.c = fmul nsz float %.fca.1.extract4, 1.000000e+01
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.b, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.c, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %0, i48 %1) local_unnamed_addr #3 {
bb.a:
  %.sroa.0.0.extract.trunc = zext i48 %1 to i64
  %.sroa.2.0.extract.shift = lshr i48 %1, 16
  %.sroa.2.0.extract.trunc = zext nneg i48 %.sroa.2.0.extract.shift to i64
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef -10000, i32 noundef 8)
  %sext = shl i64 %.sroa.0.0.extract.trunc, 48
  %i.a = ashr exact i64 %sext, 48
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.a)
  %sext5 = shl i64 %.sroa.2.0.extract.trunc, 48
  %i.b = ashr exact i64 %sext5, 48
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.b)
  %i.c = ashr i48 %1, 32
  %i.d = sext i48 %i.c to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.d)
  tail call void @lua_call(ptr noundef %0, i32 noundef 3, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i48 @_Z10read_v3s16P9lua_Statei(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.core::vector3d.3", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call fastcc void @_ZL8read_v3dP9lua_Statei(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %0, i32 noundef %1)
  %.sroa.02.0.copyload = load double, ptr %2, align 8, !tbaa !22 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.a = fcmp nsz ogt double %.sroa.02.0.copyload, 0.000000e+00
  %i.b = select nsz i1 %i.a, double 5.000000e-01, double -5.000000e-01
  %i.c = fadd nsz double %.sroa.02.0.copyload, %i.b
  %i.d = fptosi double %i.c to i16
  %i.e = load <2 x double>, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !22 ; 2 uses
  %i.f = fcmp nsz ogt <2 x double> %i.e, zeroinitializer
  %i.g = select <2 x i1> %i.f, <2 x double> splat (double 5.000000e-01), <2 x double> splat (double -5.000000e-01)
  %i.h = fadd nsz <2 x double> %i.e, %i.g
  %i.i = fptosi <2 x double> %i.h to <2 x i16>
  %i.j = zext <2 x i16> %i.i to <2 x i48>
  %i.k = shl nuw <2 x i48> %i.j, <i48 16, i48 32>
  %.sroa.2.0.insert.insert.i = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.k)
  %.sroa.0.0.insert.ext.i = zext i16 %i.d to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i48 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress uwtable
define dso_local i48 @_Z11check_v3s16P9lua_Statei(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::allocator", align 1   ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::allocator", align 1   ; 5 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::allocator", align 1   ; 5 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"class.std::allocator", align 1   ; 5 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %37 = alloca %"class.std::allocator", align 1   ; 5 uses
  tail call fastcc void @_ZL11read_v3_auxP9lua_Statei(ptr noundef %0, i32 noundef %1), !noalias !86
  %i.a = tail call i32 @lua_type(ptr noundef %0, i32 noundef -3), !noalias !86 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 3
  br i1 %.not.i, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 40) #8, !noalias !86 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8, !noalias !86
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.thread.i, !noalias !86

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.1)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.thread.i, !noalias !86

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.4)
          to label %bb.e unwind label %bb.m, !noalias !86

bb.e:                                             ; preds = %bb.d
  %i.c = invoke ptr @lua_typename(ptr noundef %0, i32 noundef 3)
          to label %bb.f unwind label %bb.n, !noalias !86

bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.c)
          to label %bb.g unwind label %bb.n, !noalias !86

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.5)
          to label %bb.h unwind label %bb.o, !noalias !86

bb.h:                                             ; preds = %bb.g
  %i.d = invoke ptr @lua_typename(ptr noundef %0, i32 noundef %i.a)
          to label %bb.i unwind label %bb.p, !noalias !86

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.d)
          to label %bb.j unwind label %bb.p, !noalias !86

bb.j:                                             ; preds = %bb.i
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.6)
          to label %bb.k unwind label %bb.q, !noalias !86

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.r, !noalias !86

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI8LuaError, ptr nonnull @_ZN13BaseExceptionD2Ev) #23
          to label %bb.cb unwind label %bb.r, !noalias !86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.thread.i: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

bb.m:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.i

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i

bb.o:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i

bb.p:                                             ; preds = %bb.i, %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.i

bb.q:                                             ; preds = %bb.j
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.r:                                             ; preds = %bb.l, %bb.k
  %.060.i = phi i1 [ false, %bb.l ], [ true, %bb.k ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !17, !noalias !86 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
end_hunk_3
