inline.NumInlined: 444
inline.NumDeleted: 178
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.Assimp::Formatter::basic_formatter" = type { %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

$_ZN17DeadlyExportErrorC2IJRA43_KcEEEDpOT_ = comdat any

$_ZN17DeadlyExportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJERA43_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZN17DeadlyExportErrorD0Ev = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_ = comdat any

$_ZNSt6vectorIhSaIhEE6resizeEm = comdat any

$_ZN15DeadlyErrorBaseC2IJENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_ = comdat any

$_ZTI17DeadlyExportError = comdat any

$_ZTS17DeadlyExportError = comdat any

$_ZTI15DeadlyErrorBase = comdat any

$_ZTS15DeadlyErrorBase = comdat any

$_ZTV17DeadlyExportError = comdat any

@.str = private unnamed_addr constant [43 x i8] c"Requested size on property of unknown type\00", align 1
@_ZTI17DeadlyExportError = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17DeadlyExportError, ptr @_ZTI15DeadlyErrorBase }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17DeadlyExportError = linkonce_odr constant [20 x i8] c"17DeadlyExportError\00", comdat, align 1
@_ZTI15DeadlyErrorBase = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15DeadlyErrorBase, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTS15DeadlyErrorBase = linkonce_odr constant [18 x i8] c"15DeadlyErrorBase\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.1 = private unnamed_addr constant [43 x i8] c"Tried to dump property with invalid type '\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"'!\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"can't handle quotes in property string\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" {\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"a: \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"} \00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.11 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTV17DeadlyExportError = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17DeadlyExportError, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN17DeadlyExportErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.12 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@switch.table._ZN6Assimp3FBX17FBXExportProperty4sizeEv = private unnamed_addr constant [39 x i64] [i64 1, i64 1, i64 poison, i64 1, i64 poison, i64 poison, i64 1, i64 poison, i64 poison, i64 1, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 5, i64 5, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 1, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 13, i64 poison, i64 poison, i64 poison, i64 poison, i64 13], align 8

@_ZN6Assimp3FBX17FBXExportPropertyC1Eb = hidden unnamed_addr alias void (ptr, i1), ptr @_ZN6Assimp3FBX17FBXExportPropertyC2Eb
@_ZN6Assimp3FBX17FBXExportPropertyC1Es = hidden unnamed_addr alias void (ptr, i16), ptr @_ZN6Assimp3FBX17FBXExportPropertyC2Es
@_ZN6Assimp3FBX17FBXExportPropertyC1Ei = hidden unnamed_addr alias void (ptr, i32), ptr @_ZN6Assimp3FBX17FBXExportPropertyC2Ei
@_ZN6Assimp3FBX17FBXExportPropertyC1Ef = hidden unnamed_addr alias void (ptr, float), ptr @_ZN6Assimp3FBX17FBXExportPropertyC2Ef
@_ZN6Assimp3FBX17FBXExportPropertyC1Ed = hidden unnamed_addr alias void (ptr, double), ptr @_ZN6Assimp3FBX17FBXExportPropertyC2Ed
@_ZN6Assimp3FBX17FBXExportPropertyC1El = hidden unnamed_addr alias void (ptr, i64), ptr @_ZN6Assimp3FBX17FBXExportPropertyC2El
@_ZN6Assimp3FBX17FBXExportPropertyC1EPKcb = hidden unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN6Assimp3FBX17FBXExportPropertyC2EPKcb
@_ZN6Assimp3FBX17FBXExportPropertyC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb = hidden unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN6Assimp3FBX17FBXExportPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb
@_ZN6Assimp3FBX17FBXExportPropertyC1ERKSt6vectorIhSaIhEE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN6Assimp3FBX17FBXExportPropertyC2ERKSt6vectorIhSaIhEE
@_ZN6Assimp3FBX17FBXExportPropertyC1ERKSt6vectorIiSaIiEE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN6Assimp3FBX17FBXExportPropertyC2ERKSt6vectorIiSaIiEE
@_ZN6Assimp3FBX17FBXExportPropertyC1ERKSt6vectorIlSaIlEE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN6Assimp3FBX17FBXExportPropertyC2ERKSt6vectorIlSaIlEE
@_ZN6Assimp3FBX17FBXExportPropertyC1ERKSt6vectorIfSaIfEE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN6Assimp3FBX17FBXExportPropertyC2ERKSt6vectorIfSaIfEE
@_ZN6Assimp3FBX17FBXExportPropertyC1ERKSt6vectorIdSaIdEE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN6Assimp3FBX17FBXExportPropertyC2ERKSt6vectorIdSaIdEE
@_ZN6Assimp3FBX17FBXExportPropertyC1ERK12aiMatrix4x4tIfE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN6Assimp3FBX17FBXExportPropertyC2ERK12aiMatrix4x4tIfE

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX17FBXExportPropertyC2Eb(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 32)) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %1 to i8
  store i8 67, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #16 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.f, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i8 %i.a, i64 1, i1 false)
  store ptr %i.e, ptr %i.d, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX17FBXExportPropertyC2Es(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 32)) %0, i16 noundef signext %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 89, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #16 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.e, align 8
  store i16 %1, ptr %i.b, align 2
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX17FBXExportPropertyC2Ei(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 32)) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 73, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #16 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.e, align 8
  store i32 %1, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX17FBXExportPropertyC2Ef(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 32)) %0, float noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 70, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #16 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.e, align 8
  store float %1, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX17FBXExportPropertyC2Ed(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 32)) %0, double noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 68, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #16 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.e, align 8
  store double %1, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX17FBXExportPropertyC2El(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 32)) %0, i64 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 76, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #16 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.e, align 8
  store i64 %1, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX17FBXExportPropertyC2EPKcb(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef readonly captures(address_is_null) %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.b, ptr %3, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.8) #18
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %3, align 8
  %i.g = load i64, ptr %i.a, align 8
  store i64 %i.g, ptr %i.b, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %3, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.n = select i1 %2, i8 82, i8 83
  store i8 %i.n, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = load i64, ptr %i.k, align 8              ; 5 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %.noexc.i7, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i7:                                        ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
          to label %.noexc8 unwind label %bb.g

.noexc8:                                          ; preds = %.noexc.i7
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6Assimp3FBX17FBXExportPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, label %.noexc10.i

.noexc10.i:                                       ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX17FBXExportPropertyC2ERKSt6vectorIfSaIfEE:bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader15, %.lr.ph
  %.011 = phi i64 [ %i.af, %.lr.ph ], [ %.011.ph, %.lr.ph.preheader15 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.011
  %i.ad = load float, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.011
  store float %i.ad, ptr %i.ae, align 4
  %i.af = add nuw i64 %.011, 1                    ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.v
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !14
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX17FBXExportPropertyC2ERKSt6vectorIdSaIdEE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 100, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %.noexc10

.noexc10:                                         ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #16 ; 5 uses
  store ptr %i.i, ptr %i.a, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.j, ptr %i.k, align 8
  store i8 0, ptr %i.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.m = add nsw i64 %i.g, -1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 0, i64 %i.m, i1 false)
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc10
  %i.n = phi ptr [ %i.i, %.noexc10 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.j, %.noexc10 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.i.i.i.i.i, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.q = load ptr, ptr %1, align 8                ; 4 uses
  %.not = icmp eq ptr %i.p, %i.q
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  %i.r = ptrtoaddr ptr %i.n to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3                   ; 4 uses
  %min.iters.check = icmp ult i64 %i.v, 6
  %i.w = sub i64 %i.r, %i.t
  %diff.check = icmp ult i64 %i.w, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.v, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x double>, ptr %i.x, align 8
  %wide.load14 = load <2 x double>, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x double> %wide.load, ptr %i.z, align 8
  store <2 x double> %wide.load14, ptr %i.aa, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader15

.lr.ph.preheader15:                               ; preds = %.lr.ph.preheader, %middle.block
  %.011.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader15, %.lr.ph
  %.011 = phi i64 [ %i.af, %.lr.ph ], [ %.011.ph, %.lr.ph.preheader15 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.011
  %i.ad = load double, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.011
  store double %i.ad, ptr %i.ae, align 8
  %i.af = add nuw i64 %.011, 1                    ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.v
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !16
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX17FBXExportPropertyC2ERK12aiMatrix4x4tIfE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 32)) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNK12aiMatrix4x4tIfEixEj.exit.3.3:
  store i8 100, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #16 ; 10 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load <4 x float>, ptr %1, align 4
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.k = load float, ptr %i.h, align 4
  %i.l = insertelement <2 x float> %i.j, float %i.k, i64 1
  %i.m = fpext <2 x float> %i.l to <2 x double>
  store <2 x double> %i.m, ptr %i.b, align 8
  %i.n = load <4 x float>, ptr %i.g, align 4
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.q = load float, ptr %i.f, align 4
  %i.r = insertelement <2 x float> %i.o, float %i.q, i64 1
  %i.s = fpext <2 x float> %i.r to <2 x double>
  store <2 x double> %i.s, ptr %i.p, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load <4 x float>, ptr %i.t, align 4
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load float, ptr %i.x, align 4
  %i.z = insertelement <2 x float> %i.v, float %i.y, i64 1
  %i.aa = fpext <2 x float> %i.z to <2 x double>
  store <2 x double> %i.aa, ptr %i.w, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ac = load <4 x float>, ptr %i.ab, align 4
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = insertelement <2 x float> %i.ad, float %i.ag, i64 1
  %i.ai = fpext <2 x float> %i.ah to <2 x double>
  store <2 x double> %i.ai, ptr %i.ae, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load <4 x float>, ptr %i.aj, align 4
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = insertelement <2 x float> %i.al, float %i.ao, i64 1
  %i.aq = fpext <2 x float> %i.ap to <2 x double>
  store <2 x double> %i.aq, ptr %i.am, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = load <4 x float>, ptr %i.ar, align 4
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = insertelement <2 x float> %i.at, float %i.aw, i64 1
  %i.ay = fpext <2 x float> %i.ax to <2 x double>
  store <2 x double> %i.ay, ptr %i.au, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ba = load <4 x float>, ptr %i.az, align 4
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.be = load float, ptr %i.bd, align 4
  %i.bf = insertelement <2 x float> %i.bb, float %i.be, i64 1
  %i.bg = fpext <2 x float> %i.bf to <2 x double>
  store <2 x double> %i.bg, ptr %i.bc, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bi = load <4 x float>, ptr %i.bh, align 4
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bm = load float, ptr %i.bl, align 4
  %i.bn = insertelement <2 x float> %i.bj, float %i.bm, i64 1
  %i.bo = fpext <2 x float> %i.bn to <2 x double>
  store <2 x double> %i.bo, ptr %i.bk, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp3FBX17FBXExportProperty4sizeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %switch.tableidx = add i8 %i.a, -67             ; 3 uses
  %1 = icmp ult i8 %switch.tableidx, 39
  br i1 %1, label %switch.hole_check, label %bb.b

bb.b:                                             ; preds = %switch.hole_check, %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZN17DeadlyExportErrorC2IJRA43_KcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(43) @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI17DeadlyExportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #17
  resume { ptr, i32 } %i.c

switch.hole_check:                                ; preds = %bb.a
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 283472134731, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %bb.e, label %bb.b

bb.e:                                             ; preds = %switch.hole_check
  %2 = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6Assimp3FBX17FBXExportProperty4sizeEv, i64 %2
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = add i64 %switch.load, %i.h
  %i.k = sub i64 %i.j, %i.i
  ret i64 %i.k
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyExportErrorC2IJRA43_KcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(43) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA43_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 1 dereferenceable(43) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %2, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #19
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #17
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyExportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #17
  resume { ptr, i32 } %i.o
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX17FBXExportProperty10DumpBinaryERNS_12StreamWriterILb0ELb0EEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = load i8, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 66 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = add i64 %i.c, 1                          ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 75 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 25 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %.not.i.i = icmp ult i64 %i.d, %i.k
  br i1 %.not.i.i, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU1Eh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.d)
  %.pre.i.i = load i64, ptr %i.b, align 8
  %.pre2.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU1Eh.exit

_ZN6Assimp12StreamWriterILb0ELb0EE5PutU1Eh.exit:  ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %.pre2.i.i, %bb.b ], [ %i.h, %bb.a ]
  %i.m = phi i64 [ %.pre.i.i, %bb.b ], [ %i.c, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  store i8 %i.a, ptr %i.n, align 1
  %i.o = load i64, ptr %i.b, align 8              ; 12 uses
  %i.p = add i64 %i.o, 1                          ; 12 uses
  store i64 %i.p, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 15 uses
  %i.s = load i8, ptr %0, align 8
  switch i8 %i.s, label %bb.al [
    i8 67, label %bb.c
    i8 89, label %bb.e
    i8 73, label %bb.g
    i8 70, label %bb.i
    i8 68, label %bb.k
    i8 76, label %bb.m
    i8 83, label %bb.o
    i8 82, label %bb.o
    i8 105, label %bb.r
    i8 108, label %bb.w
    i8 102, label %bb.ab
    i8 100, label %bb.ag
  ]

bb.c:                                             ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU1Eh.exit
  %i.t = load i8, ptr %i.r, align 1
  %i.u = add i64 %i.o, 2                          ; 2 uses
  %i.v = load ptr, ptr %i.f, align 8
  %i.w = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %.not.i.i72 = icmp ult i64 %i.u, %i.z
  br i1 %.not.i.i72, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU1Eh.exit75, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.u)
  %.pre.i.i73 = load i64, ptr %i.b, align 8
  %.pre2.i.i74 = load ptr, ptr %i.e, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU1Eh.exit75

_ZN6Assimp12StreamWriterILb0ELb0EE5PutU1Eh.exit75: ; preds = %bb.c, %bb.d
  %i.aa = phi ptr [ %.pre2.i.i74, %bb.d ], [ %i.w, %bb.c ]
  %i.ab = phi i64 [ %.pre.i.i73, %bb.d ], [ %i.p, %bb.c ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  store i8 %i.t, ptr %i.ac, align 1
  br label %.loopexit.sink.split

bb.e:                                             ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU1Eh.exit
  %i.ad = load i16, ptr %i.r, align 2
  %i.ae = add i64 %i.o, 3                         ; 2 uses
  %i.af = load ptr, ptr %i.f, align 8
  %i.ag = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %.not.i.i76 = icmp ult i64 %i.ae, %i.aj
  br i1 %.not.i.i76, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI2Es.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ae)
  %.pre.i.i77 = load i64, ptr %i.b, align 8
  %.pre2.i.i78 = load ptr, ptr %i.e, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI2Es.exit

_ZN6Assimp12StreamWriterILb0ELb0EE5PutI2Es.exit:  ; preds = %bb.e, %bb.f
  %i.ak = phi ptr [ %.pre2.i.i78, %bb.f ], [ %i.ag, %bb.e ]
  %i.al = phi i64 [ %.pre.i.i77, %bb.f ], [ %i.p, %bb.e ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  store i16 %i.ad, ptr %i.am, align 1
  br label %.loopexit.sink.split

bb.g:                                             ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU1Eh.exit
  %i.an = load i32, ptr %i.r, align 4
  %i.ao = add i64 %i.o, 5                         ; 2 uses
  %i.ap = load ptr, ptr %i.f, align 8
  %i.aq = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %.not.i.i79 = icmp ult i64 %i.ao, %i.at
  br i1 %.not.i.i79, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI4Ei.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ao)
  %.pre.i.i80 = load i64, ptr %i.b, align 8
  %.pre2.i.i81 = load ptr, ptr %i.e, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI4Ei.exit

_ZN6Assimp12StreamWriterILb0ELb0EE5PutI4Ei.exit:  ; preds = %bb.g, %bb.h
  %i.au = phi ptr [ %.pre2.i.i81, %bb.h ], [ %i.aq, %bb.g ]
  %i.av = phi i64 [ %.pre.i.i80, %bb.h ], [ %i.p, %bb.g ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  store i32 %i.an, ptr %i.aw, align 1
  br label %.loopexit.sink.split

bb.i:                                             ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU1Eh.exit
  %i.ax = load float, ptr %i.r, align 4
  %i.ay = add i64 %i.o, 5                         ; 2 uses
  %i.az = load ptr, ptr %i.f, align 8
  %i.ba = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %.not.i.i82 = icmp ult i64 %i.ay, %i.bd
  br i1 %.not.i.i82, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutF4Ef.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ay)
  %.pre.i.i83 = load i64, ptr %i.b, align 8
  %.pre2.i.i84 = load ptr, ptr %i.e, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutF4Ef.exit

end_hunk_1
