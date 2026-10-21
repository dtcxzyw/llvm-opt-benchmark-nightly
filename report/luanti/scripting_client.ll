Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/scripting_client?download=true
inline.NumInlined: 119
inline.NumDeleted: 56
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

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
%class.StackUnroller = type <{ ptr, i32, [4 x i8] }>

$_ZN13StackUnrollerD2Ev = comdat any

$_ZN17ScriptApiSecurity18modNamesAreTrustedEv = comdat any

$_ZN17ScriptApiSecurityD1Ev = comdat any

$_ZN17ScriptApiSecurityD0Ev = comdat any

$_ZTv0_n24_N17ScriptApiSecurityD1Ev = comdat any

$_ZTv0_n24_N17ScriptApiSecurityD0Ev = comdat any

$_ZN21ScriptApiClientCommonD1Ev = comdat any

$_ZN21ScriptApiClientCommonD0Ev = comdat any

$_ZTv0_n24_N21ScriptApiClientCommonD1Ev = comdat any

$_ZTv0_n24_N21ScriptApiClientCommonD0Ev = comdat any

$_ZN15ScriptApiClientD1Ev = comdat any

$_ZN15ScriptApiClientD0Ev = comdat any

$_ZTv0_n24_N15ScriptApiClientD1Ev = comdat any

$_ZTv0_n24_N15ScriptApiClientD0Ev = comdat any

$_ZN20ScriptApiModChannelsD1Ev = comdat any

$_ZN20ScriptApiModChannelsD0Ev = comdat any

$_ZTv0_n24_N20ScriptApiModChannelsD1Ev = comdat any

$_ZTv0_n24_N20ScriptApiModChannelsD0Ev = comdat any

$_ZN15ClientScripting18modNamesAreTrustedEv = comdat any

$_ZN15ClientScripting17checkPathInternalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbPb = comdat any

$_ZN15ClientScriptingD1Ev = comdat any

$_ZN15ClientScriptingD0Ev = comdat any

$_ZThn16_N15ClientScriptingD1Ev = comdat any

$_ZThn16_N15ClientScriptingD0Ev = comdat any

$_ZThn24_N15ClientScriptingD1Ev = comdat any

$_ZThn24_N15ClientScriptingD0Ev = comdat any

$_ZThn32_N15ClientScriptingD1Ev = comdat any

$_ZThn32_N15ClientScriptingD0Ev = comdat any

$_ZTv0_n24_N15ClientScriptingD1Ev = comdat any

$_ZTv0_n24_N15ClientScriptingD0Ev = comdat any

$_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE = comdat any

$_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_ = comdat any

$_ZTI17ScriptApiSecurity = comdat any

$_ZTS17ScriptApiSecurity = comdat any

$_ZTI21ScriptApiClientCommon = comdat any

$_ZTS21ScriptApiClientCommon = comdat any

$_ZTI15ScriptApiClient = comdat any

$_ZTS15ScriptApiClient = comdat any

$_ZTI20ScriptApiModChannels = comdat any

$_ZTS20ScriptApiModChannels = comdat any

@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ui\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"INIT\00", align 1
@infostream = external thread_local global %class.LogStream, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"SCRIPTAPI: Initialized client game modules\00", align 1
@_ZTV15ClientScripting = dso_local constant { [8 x ptr], [5 x ptr], [5 x ptr], [5 x ptr], [5 x ptr] } { [8 x ptr] [ptr inttoptr (i64 40 to ptr), ptr null, ptr @_ZTI15ClientScripting, ptr @_ZN15ClientScripting18modNamesAreTrustedEv, ptr @_ZN15ClientScripting17checkPathInternalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbPb, ptr @_ZN15ClientScriptingD1Ev, ptr @_ZN15ClientScriptingD0Ev, ptr @_ZN15ClientScripting16InitializeModApiEP9lua_Statei], [5 x ptr] [ptr inttoptr (i64 24 to ptr), ptr inttoptr (i64 -16 to ptr), ptr @_ZTI15ClientScripting, ptr @_ZThn16_N15ClientScriptingD1Ev, ptr @_ZThn16_N15ClientScriptingD0Ev], [5 x ptr] [ptr inttoptr (i64 16 to ptr), ptr inttoptr (i64 -24 to ptr), ptr @_ZTI15ClientScripting, ptr @_ZThn24_N15ClientScriptingD1Ev, ptr @_ZThn24_N15ClientScriptingD0Ev], [5 x ptr] [ptr inttoptr (i64 8 to ptr), ptr inttoptr (i64 -32 to ptr), ptr @_ZTI15ClientScripting, ptr @_ZThn32_N15ClientScriptingD1Ev, ptr @_ZThn32_N15ClientScriptingD0Ev], [5 x ptr] [ptr inttoptr (i64 -40 to ptr), ptr inttoptr (i64 -40 to ptr), ptr @_ZTI15ClientScripting, ptr @_ZTv0_n24_N15ClientScriptingD1Ev, ptr @_ZTv0_n24_N15ClientScriptingD0Ev] }, align 8
@_ZTT15ClientScripting = dso_local unnamed_addr constant [13 x ptr] [ptr getelementptr inbounds inrange(-24, 40) ({ [8 x ptr], [5 x ptr], [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTV15ClientScripting, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 32) ({ [7 x ptr], [5 x ptr] }, ptr @_ZTC15ClientScripting0_17ScriptApiSecurity, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [7 x ptr], [5 x ptr] }, ptr @_ZTC15ClientScripting0_17ScriptApiSecurity, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTC15ClientScripting16_21ScriptApiClientCommon, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTC15ClientScripting16_21ScriptApiClientCommon, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTC15ClientScripting24_15ScriptApiClient, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTC15ClientScripting24_15ScriptApiClient, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTC15ClientScripting32_20ScriptApiModChannels, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTC15ClientScripting32_20ScriptApiModChannels, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [8 x ptr], [5 x ptr], [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTV15ClientScripting, i32 0, i32 4, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [8 x ptr], [5 x ptr], [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTV15ClientScripting, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [8 x ptr], [5 x ptr], [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTV15ClientScripting, i32 0, i32 2, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [8 x ptr], [5 x ptr], [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTV15ClientScripting, i32 0, i32 3, i32 3)], align 8
@_ZTC15ClientScripting0_17ScriptApiSecurity = dso_local constant { [7 x ptr], [5 x ptr] } { [7 x ptr] [ptr inttoptr (i64 40 to ptr), ptr null, ptr @_ZTI17ScriptApiSecurity, ptr @_ZN17ScriptApiSecurity18modNamesAreTrustedEv, ptr @__cxa_pure_virtual, ptr @_ZN17ScriptApiSecurityD1Ev, ptr @_ZN17ScriptApiSecurityD0Ev], [5 x ptr] [ptr inttoptr (i64 -40 to ptr), ptr inttoptr (i64 -40 to ptr), ptr @_ZTI17ScriptApiSecurity, ptr @_ZTv0_n24_N17ScriptApiSecurityD1Ev, ptr @_ZTv0_n24_N17ScriptApiSecurityD0Ev] }, align 8
@_ZTI17ScriptApiSecurity = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTS17ScriptApiSecurity, i32 0, i32 1, ptr @_ZTI13ScriptApiBase, i64 -6141 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTS17ScriptApiSecurity = linkonce_odr dso_local constant [20 x i8] c"17ScriptApiSecurity\00", comdat, align 1
@_ZTI13ScriptApiBase = external constant ptr
@_ZTC15ClientScripting16_21ScriptApiClientCommon = dso_local constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 24 to ptr), ptr null, ptr @_ZTI21ScriptApiClientCommon, ptr @_ZN21ScriptApiClientCommonD1Ev, ptr @_ZN21ScriptApiClientCommonD0Ev], [5 x ptr] [ptr inttoptr (i64 -24 to ptr), ptr inttoptr (i64 -24 to ptr), ptr @_ZTI21ScriptApiClientCommon, ptr @_ZTv0_n24_N21ScriptApiClientCommonD1Ev, ptr @_ZTv0_n24_N21ScriptApiClientCommonD0Ev] }, align 8
@_ZTI21ScriptApiClientCommon = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTS21ScriptApiClientCommon, i32 0, i32 1, ptr @_ZTI13ScriptApiBase, i64 -6141 }, comdat, align 8
@_ZTS21ScriptApiClientCommon = linkonce_odr dso_local constant [24 x i8] c"21ScriptApiClientCommon\00", comdat, align 1
@_ZTC15ClientScripting24_15ScriptApiClient = dso_local constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 16 to ptr), ptr null, ptr @_ZTI15ScriptApiClient, ptr @_ZN15ScriptApiClientD1Ev, ptr @_ZN15ScriptApiClientD0Ev], [5 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr inttoptr (i64 -16 to ptr), ptr @_ZTI15ScriptApiClient, ptr @_ZTv0_n24_N15ScriptApiClientD1Ev, ptr @_ZTv0_n24_N15ScriptApiClientD0Ev] }, align 8
@_ZTI15ScriptApiClient = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTS15ScriptApiClient, i32 0, i32 1, ptr @_ZTI13ScriptApiBase, i64 -6141 }, comdat, align 8
@_ZTS15ScriptApiClient = linkonce_odr dso_local constant [18 x i8] c"15ScriptApiClient\00", comdat, align 1
@_ZTC15ClientScripting32_20ScriptApiModChannels = dso_local constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 8 to ptr), ptr null, ptr @_ZTI20ScriptApiModChannels, ptr @_ZN20ScriptApiModChannelsD1Ev, ptr @_ZN20ScriptApiModChannelsD0Ev], [5 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr), ptr @_ZTI20ScriptApiModChannels, ptr @_ZTv0_n24_N20ScriptApiModChannelsD1Ev, ptr @_ZTv0_n24_N20ScriptApiModChannelsD0Ev] }, align 8
@_ZTI20ScriptApiModChannels = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTS20ScriptApiModChannels, i32 0, i32 1, ptr @_ZTI13ScriptApiBase, i64 -6141 }, comdat, align 8
@_ZTS20ScriptApiModChannels = linkonce_odr dso_local constant [23 x i8] c"20ScriptApiModChannels\00", comdat, align 1
@_ZTI15ClientScripting = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTS15ClientScripting, i32 3, i32 5, ptr @_ZTI13ScriptApiBase, i64 -6141, ptr @_ZTI17ScriptApiSecurity, i64 2, ptr @_ZTI21ScriptApiClientCommon, i64 4098, ptr @_ZTI15ScriptApiClient, i64 6146, ptr @_ZTI20ScriptApiModChannels, i64 8194 }, align 8
@_ZTS15ClientScripting = dso_local constant [18 x i8] c"15ClientScripting\00", align 1
@_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE = linkonce_odr dso_local global { { { ptr } } } zeroinitializer, comdat, align 8
@_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE = linkonce_odr dso_local local_unnamed_addr global i64 0, comdat($_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE), align 8
@__dso_handle = external hidden global i8
@warningstream = external thread_local local_unnamed_addr global %class.LogStream, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"IO API called in client scripting\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE], section "llvm.metadata"

; Function Attrs: uwtable
define dso_local void @_ZN15ClientScriptingC2EP6Client(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 9), (16, 40)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.StackUnroller, align 8       ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.c, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g
  store ptr %i.e, ptr %i.h, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.i, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.l, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.j, i64 %i.p
  store ptr %i.n, ptr %i.q, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.t, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.r, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %i.ab, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %i.z, i64 %i.af
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !12
  %i.ah = load ptr, ptr %1, align 8               ; 2 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %i.ah, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %0, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ao = load ptr, ptr %i.an, align 8
  store ptr %i.ao, ptr %i.j, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8
  store ptr %i.aq, ptr %i.r, align 8, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.as = load ptr, ptr %i.ar, align 8
  store ptr %i.as, ptr %i.z, align 8, !tbaa !12
  %i.at = load ptr, ptr %0, align 8, !tbaa !12
  %i.au = getelementptr i8, ptr %i.at, i64 -24    ; 2 uses
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.av
  %i.ax = icmp eq ptr %2, null
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.az = select i1 %i.ax, ptr null, ptr %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !32
  %i.bb = load i64, ptr %i.au, align 8
  %i.bc = getelementptr inbounds i8, ptr %0, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.be = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bd) #18 ; 2 uses
  %.not.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.be) #19
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.a
  %i.bf = load ptr, ptr %0, align 8, !tbaa !12
  %i.bg = getelementptr i8, ptr %i.bf, i64 -24    ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %0, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 80 ; 6 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !33 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 88
  %i.bn = tail call i64 @pthread_self() #20
  store i64 %i.bn, ptr %i.bm, align 8, !tbaa !34
  br label %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit

_ZN11LockCheckerC2EPiPNSt6thread2idE.exit:        ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %bb.b
  %i.bo = add nsw i32 %i.bk, 1
  store i32 %i.bo, ptr %i.bj, align 4, !tbaa !33
  %i.bp = load i64, ptr %i.bg, align 8
  %i.bq = getelementptr inbounds i8, ptr %0, i64 %i.bp
  invoke void @_ZN13ScriptApiBase12realityCheckEv(ptr noundef nonnull align 8 dereferenceable(145) %i.bq)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.br = load ptr, ptr %0, align 8, !tbaa !12
  %i.bs = getelementptr i8, ptr %i.br, i64 -24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds i8, ptr %0, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 96
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !35 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %i.bw, ptr %3, align 8, !tbaa !37
  %i.bx = invoke i32 @lua_gettop(ptr noundef %i.bw)
          to label %bb.d unwind label %bb.x       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !38
  invoke void @_ZN17ScriptApiSecurity24initializeSecurityClientEv(ptr noundef nonnull align 8 dereferenceable(9) %0)
          to label %bb.e unwind label %bb.y

bb.e:                                             ; preds = %bb.d
  invoke void @lua_getfield(ptr noundef %i.bw, i32 noundef -10002, ptr noundef nonnull @.str)
          to label %bb.f unwind label %bb.y

bb.f:                                             ; preds = %bb.e
  %i.bz = invoke i32 @lua_gettop(ptr noundef %i.bw)
          to label %bb.g unwind label %bb.y

bb.g:                                             ; preds = %bb.f
  invoke void @lua_createtable(ptr noundef %i.bw, i32 noundef 0, i32 noundef 0)
          to label %bb.h unwind label %bb.y

bb.h:                                             ; preds = %bb.g
  invoke void @lua_setfield(ptr noundef %i.bw, i32 noundef -2, ptr noundef nonnull @.str.1)
          to label %bb.i unwind label %bb.y

bb.i:                                             ; preds = %bb.h
  %i.ca = load ptr, ptr %0, align 8, !tbaa !12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void %i.cc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.bw, i32 noundef %i.bz)
          to label %bb.j unwind label %bb.y

bb.j:                                             ; preds = %bb.i
  invoke void @lua_settop(ptr noundef %i.bw, i32 noundef -2)
          to label %bb.k unwind label %bb.y

bb.k:                                             ; preds = %bb.j
  invoke void @lua_pushstring(ptr noundef %i.bw, ptr noundef nonnull @.str.2)
          to label %bb.l unwind label %bb.y

bb.l:                                             ; preds = %bb.k
  invoke void @lua_setfield(ptr noundef %i.bw, i32 noundef -10002, ptr noundef nonnull @.str.3)
          to label %bb.m unwind label %bb.y

bb.m:                                             ; preds = %bb.l
  %.not.i = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not.i, label %_ZTW10infostream.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.m, %bb.n
  %i.cd = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !51, !nonnull !52, !align !53 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !12
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.ce)
          to label %.noexc23 unwind label %bb.y, !inline_history !0

.noexc23:                                         ; preds = %_ZTW10infostream.exit
  %.v.i = select i1 %i.ch, i64 976, i64 984
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.v.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.4, ptr %i.a, align 8, !tbaa !54
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.o unwind label %bb.y       ; 0 uses

bb.o:                                             ; preds = %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !55 ; 5 uses
  %.not.i25 = icmp eq ptr %i.ck, null
  br i1 %.not.i25, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !12
  %i.cm = getelementptr i8, ptr %i.cl, i64 -24
  %i.cn = load i64, ptr %i.cm, align 8            ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.ck, i64 %i.cn
end_hunk_0
begin_hunk_1_@_ZN15ClientScripting15on_camera_readyEP6Camera
define dso_local void @_ZN15ClientScripting15on_camera_readyEP6Camera(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  tail call void @_ZN9LuaCamera6createEP9lua_StateP6Camera(ptr noundef %i.f, ptr noundef %1)
  ret void
}

declare void @_ZN9LuaCamera6createEP9lua_StateP6Camera(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15ClientScripting16on_minimap_readyEP7Minimap(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  tail call void @_ZN10LuaMinimap6createEP9lua_StateP7Minimap(ptr noundef %i.f, ptr noundef %1)
  ret void
}

declare void @_ZN10LuaMinimap6createEP9lua_StateP7Minimap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN17ScriptApiSecurity18modNamesAreTrustedEv(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17ScriptApiSecurityD1Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #21
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17ScriptApiSecurityD0Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #21
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N17ScriptApiSecurityD1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #21
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N17ScriptApiSecurityD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #21
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21ScriptApiClientCommonD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN13ScriptApiBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.a) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21ScriptApiClientCommonD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN13ScriptApiBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.a) #18, !inline_history !76
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #22
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N21ScriptApiClientCommonD1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZN13ScriptApiBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.e) #18, !inline_history !76
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N21ScriptApiClientCommonD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZN13ScriptApiBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.e) #18, !inline_history !82
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 160) #22, !inline_history !83
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN15ScriptApiClientD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN13ScriptApiBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.a) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN15ScriptApiClientD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN13ScriptApiBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.a) #18, !inline_history !77
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #22
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N15ScriptApiClientD1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZN13ScriptApiBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.e) #18, !inline_history !77
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N15ScriptApiClientD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZN13ScriptApiBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.e) #18, !inline_history !84
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 160) #22, !inline_history !85
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20ScriptApiModChannelsD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN13ScriptApiBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.a) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20ScriptApiModChannelsD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN13ScriptApiBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.a) #18, !inline_history !78
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #22
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N20ScriptApiModChannelsD1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZN13ScriptApiBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.e) #18, !inline_history !78
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N20ScriptApiModChannelsD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZN13ScriptApiBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.e) #18, !inline_history !86
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 160) #22, !inline_history !87
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN15ClientScripting18modNamesAreTrustedEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN15ClientScripting17checkPathInternalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbPb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i, label %_ZTW13warningstream.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.b, %bb.a
  %i.a = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51, !nonnull !52, !align !53 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !88
  %.v.i = select i1 %i.e, i64 976, i64 984
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %.v.i ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55   ; 5 uses
  %.not.i1.a = icmp eq ptr %i.g, null
  br i1 %.not.i1.a, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %4

4:                                                ; preds = %_ZTW13warningstream.exit
  %5 = load ptr, ptr %i.g, align 8, !tbaa !12
  %6 = getelementptr i8, ptr %5, i64 -24
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds i8, ptr %i.g, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %10 = load i32, ptr %9, align 8, !tbaa !62
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_.exit, label %12

12:                                               ; preds = %4
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %.pre.i5.i = load ptr, ptr %i.f, align 8, !tbaa !55
  br label %_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_.exit

_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_.exit: ; preds = %4, %12
  %13 = phi ptr [ %.pre.i5.i, %12 ], [ %i.g, %4 ]
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.5, i64 noundef 33) ; 0 uses
  %.pr = load ptr, ptr %i.f, align 8, !tbaa !55   ; 5 uses
  %.not.i1 = icmp eq ptr %.pr, null
  br i1 %.not.i1, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.c

bb.c:                                             ; preds = %_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_.exit
  %i.h = load ptr, ptr %.pr, align 8, !tbaa !12
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.pr, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !62
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !55 ; 2 uses
  %.pre = load ptr, ptr %.pre.i, align 8, !tbaa !12
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre2 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = phi i64 [ %.pre2, %bb.d ], [ %i.j, %bb.c ]
  %i.p = phi ptr [ %.pre.i, %bb.d ], [ %.pr, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.f, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt16__throw_bad_castv() #19
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load i8, ptr %i.t, align 8, !tbaa !74
  %.not.i1.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i1.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 67
  %i.w = load i8, ptr %i.v, align 1, !tbaa !75
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.s)
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  %15 = tail call noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(570) %i.s, i8 noundef signext 10), !inline_history !89
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i = phi i8 [ %i.w, %bb.g ], [ %15, %bb.h ]
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i8 noundef signext %.0.i.i.i)
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %16) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZTW13warningstream.exit, %_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN15ClientScriptingD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN13ScriptApiBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.a) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN15ClientScriptingD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN13ScriptApiBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.a) #18, !inline_history !79
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #22
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N15ClientScriptingD1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN13ScriptApiBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.a) #18, !inline_history !79
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N15ClientScriptingD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN13ScriptApiBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.b) #18, !inline_history !80
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 noundef 192) #22, !inline_history !81
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn24_N15ClientScriptingD1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN13ScriptApiBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.a) #18, !inline_history !79
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn24_N15ClientScriptingD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN13ScriptApiBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.b) #18, !inline_history !80
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 noundef 192) #22, !inline_history !81
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn32_N15ClientScriptingD1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN13ScriptApiBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.a) #18, !inline_history !79
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn32_N15ClientScriptingD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN13ScriptApiBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.b) #18, !inline_history !80
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 noundef 192) #22, !inline_history !81
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N15ClientScriptingD1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  tail call void @_ZN13ScriptApiBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.e) #18, !inline_history !79
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N15ClientScriptingD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  tail call void @_ZN13ScriptApiBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.e) #18, !inline_history !80
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 noundef 192) #22, !inline_history !81
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @__cxx_global_var_init() #8 section ".text.startup" comdat($_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev, ptr nonnull @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, ptr nonnull @__dso_handle) #18 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !92     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit

_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #18, !inline_history !90
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #10

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

declare void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = load ptr, ptr %0, align 8, !tbaa !55     ; 9 uses
  %.not.i = icmp eq ptr %i.c, null                ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN11StreamProxylsIPKcEERS_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !62
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !55
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %.pre.i, %bb.d ], [ %i.c, %bb.c ]
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.6, i64 noundef 6) ; 0 uses
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN11StreamProxylsIPKcEERS_OT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.c, i64 %i.o
end_hunk_1
