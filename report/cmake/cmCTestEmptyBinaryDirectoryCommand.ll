Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCTestEmptyBinaryDirectoryCommand?download=true
inline.NumInlined: 169
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.cmsys::SystemToolsManager" = type { i8 }
%"class.cm::enum_set" = type { %"class.std::bitset" }
%"class.std::bitset" = type { %"struct.std::_Base_bitset" }
%"struct.std::_Base_bitset" = type { i64 }
%"struct.std::pair" = type { %"class.std::basic_string_view", ptr }
%"class.std::basic_string_view" = type { i64, ptr }
%class.cmAlphaNum = type { ptr, %"class.std::basic_string_view", [32 x i8] }
%"class.cmsys::Directory" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.cmsys::Status" = type { i32, %union.anon.194 }
%union.anon.194 = type { i32 }
%class.cmListFileBacktrace = type { %class.cmConstStack }
%class.cmConstStack = type { %"class.std::shared_ptr" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }

$_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

@_ZN5cmsysL26SystemToolsManagerInstanceE = internal global %"class.cmsys::SystemToolsManager" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN12cmStateEnumsL16AllTargetDomainsE = internal global %"class.cm::enum_set" zeroinitializer, align 8
@.str = private unnamed_addr constant [42 x i8] c"called with incorrect number of arguments\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Did not remove the binary directory:\0A \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"\0Abecause:\0A \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"path too short\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"/CMakeCache.txt\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"path does not contain an existing CMakeCache.txt file\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cmCTestEmptyBinaryDirectoryCommand.cxx, ptr null }]

declare void @_ZN5cmsys18SystemToolsManagerC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN5cmsys18SystemToolsManagerD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z34cmCTestEmptyBinaryDirectoryCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatus(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [4 x %"struct.std::pair"], align 8  ; 15 uses
  %3 = alloca [3 x %"struct.std::pair"], align 8  ; 12 uses
  %4 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %5 = alloca %"class.cmsys::Directory", align 8  ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca [2 x %"struct.std::pair"], align 8  ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.cmsys::Status", align 8     ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %class.cmListFileBacktrace, align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = load ptr, ptr %0, align 8, !tbaa !53     ; 7 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.not = icmp eq i64 %i.g, 32                    ; 2 uses
  br i1 %.not, label %bb.d, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.h, ptr %11, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 41, ptr %i.a, align 8, !tbaa !11
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.b     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.i, ptr %11, align 8, !tbaa !58
  %i.j = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.i, ptr noundef nonnull align 1 dereferenceable(41) @.str, i64 41, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc
  %i.n = load ptr, ptr %11, align 8, !tbaa !58    ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.h
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.p = load i64, ptr %i.h, align 8, !tbaa !12
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  br label %bb.ax

bb.b:                                             ; preds = %.noexc.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.c:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %11, align 8, !tbaa !58    ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.h
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.c
  %i.v = load i64, ptr %i.h, align 8, !tbaa !12
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.b
  %.pn21 = phi { ptr, i32 } [ %i.r, %bb.b ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.s, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  br label %bb.ay

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  store ptr %i.x, ptr %12, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  store i64 0, ptr %i.y, align 8, !tbaa !59
  store i8 0, ptr %i.x, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !59
  %i.ab = icmp ult i64 %i.aa, 2
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.4, i64 noundef 14)
          to label %_ZN12_GLOBAL__N_120EmptyBinaryDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_.exit.thread48 unwind label %bb.as ; 0 uses

bb.f:                                             ; preds = %bb.d
  %i.ad = invoke noundef zeroext i1 @_ZN5cmsys11SystemTools10FileExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.noexc32 unwind label %bb.as

.noexc32:                                         ; preds = %bb.f
  br i1 %i.ad, label %bb.g, label %_ZN12_GLOBAL__N_120EmptyBinaryDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_.exit.thread

bb.g:                                             ; preds = %.noexc32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10, !noalias !60
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !58, !noalias !60
  %i.af = load i64, ptr %i.z, align 8, !tbaa !59, !noalias !60
  store i64 %i.af, ptr %7, align 8, !tbaa !11, !alias.scope !61, !noalias !60
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !62, !alias.scope !61, !noalias !60
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.ag, align 8, !tbaa !65, !alias.scope !61, !noalias !60
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 15, ptr %i.ah, align 8, !tbaa !11, !alias.scope !66, !noalias !60
  %.sroa.4.0..sroa_idx.i9.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr @.str.5, ptr %.sroa.4.0..sroa_idx.i9.i.i, align 8, !tbaa !62, !alias.scope !66, !noalias !60
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr null, ptr %i.ai, align 8, !tbaa !65, !alias.scope !66, !noalias !60
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull %7, i64 2)
          to label %.noexc33 unwind label %bb.as

.noexc33:                                         ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10, !noalias !60
  %i.aj = invoke noundef zeroext i1 @_ZN5cmsys11SystemTools10FileExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.noexc33
  br i1 %i.aj, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i64, ptr %i.y, align 8, !tbaa !59
  %i.al = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef %i.ak, ptr noundef nonnull @.str.6, i64 noundef 53)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i, %.noexc33
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  store i32 0, ptr %9, align 8, !tbaa !69
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i3.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.4.0..sroa_idx.i11.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.4.0..sroa_idx.i19.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.z, %bb.k
  %.048.i = phi i32 [ 0, %bb.k ], [ %i.cn, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  invoke void @_ZN5cmsys9DirectoryC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc.i28 unwind label %bb.x

.noexc.i28:                                       ; preds = %bb.l
  %i.av = invoke i64 @_ZN5cmsys9Directory4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef null)
          to label %.preheader.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader.i.i:                                   ; preds = %.noexc.i28, %.thread.i.i
  %.016.i.i = phi i64 [ %i.ci, %.thread.i.i ], [ 0, %.noexc.i28 ] ; 3 uses
  %i.aw = invoke noundef i64 @_ZNK5cmsys9Directory16GetNumberOfFilesEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult i64 %.016.i.i, %i.aw
  br i1 %.not.i.i, label %bb.n, label %.critedge32.i.i

bb.n:                                             ; preds = %bb.m
  %i.ax = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5cmsys9Directory11GetFileNameB5cxx11Em(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %.016.i.i)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !59
  switch i64 %i.az, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36.thread46.i.i [
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.i.i
    i64 14, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36.i.i
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i: ; preds = %bb.o
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !58
  %lhsc.i.i = load i8, ptr %i.ba, align 1
  %i.bb = icmp eq i8 %lhsc.i.i, 46
  br i1 %i.bb, label %.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36.thread46.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.i.i: ; preds = %bb.o
  %.pre.i.i = load ptr, ptr %i.ax, align 8, !tbaa !58
  %i.bc = load i16, ptr %.pre.i.i, align 1
  %i.bd = icmp ne i16 %i.bc, 11822
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36.thread46.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36.i.i: ; preds = %bb.o
  %.pre55.i.i = load ptr, ptr %i.ax, align 8, !tbaa !58 ; 2 uses
  %i.bg = load i64, ptr %.pre55.i.i, align 1
  %i.bh = xor i64 %i.bg, 7161078985368096067
  %i.bi = getelementptr i8, ptr %.pre55.i.i, i64 6
  %i.bj = load i64, ptr %i.bi, align 1
  %i.bk = xor i64 %i.bj, 8392585648223576929
  %i.bl = or i64 %i.bh, %i.bk
  %i.bm = icmp ne i64 %i.bl, 0
  %i.bn = zext i1 %i.bm to i32
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36.thread46.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %.preheader.i.i, %.critedge32.i.i, %.noexc.i28
  %lpad.loopexit.split-lp84 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36.thread46.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10, !noalias !70
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !58, !noalias !70
  %i.bq = load i64, ptr %i.z, align 8, !tbaa !59, !noalias !70
  store i64 %i.bq, ptr %3, align 8, !tbaa !11, !alias.scope !71, !noalias !70
  store ptr %i.bp, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !62, !alias.scope !71, !noalias !70
  store ptr null, ptr %i.an, align 8, !tbaa !65, !alias.scope !71, !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10, !noalias !70
  store i64 0, ptr %4, align 8, !noalias !70
  store i8 47, ptr %i.aq, align 8, !tbaa !12, !noalias !70
  store i64 1, ptr %i.ap, align 8, !tbaa !11, !noalias !70
  store ptr %i.aq, ptr %.sroa.4.0..sroa_idx.i3.i.i.i, align 8, !tbaa !62, !noalias !70
  store i64 1, ptr %i.ao, align 8, !tbaa !11, !alias.scope !72, !noalias !70
  store ptr %i.aq, ptr %.sroa.4.0..sroa_idx.i11.i.i.i, align 8, !tbaa !62, !alias.scope !72, !noalias !70
  store ptr null, ptr %i.ar, align 8, !tbaa !65, !alias.scope !72, !noalias !70
  %i.br = load ptr, ptr %i.ax, align 8, !tbaa !58, !noalias !70
  %i.bs = load i64, ptr %i.ay, align 8, !tbaa !59, !noalias !70
  store i64 %i.bs, ptr %i.as, align 8, !tbaa !11, !alias.scope !73, !noalias !70
  store ptr %i.br, ptr %.sroa.4.0..sroa_idx.i19.i.i.i, align 8, !tbaa !62, !alias.scope !73, !noalias !70
  store ptr null, ptr %i.at, align 8, !tbaa !65, !alias.scope !73, !noalias !70
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull %3, i64 3)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36.thread46.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10, !noalias !70
  %i.bt = invoke noundef zeroext i1 @_ZN5cmsys11SystemTools15FileIsDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  br i1 %i.bt, label %bb.r, label %.critedge.i.i

bb.r:                                             ; preds = %bb.q
  %i.bu = invoke noundef zeroext i1 @_ZN5cmsys11SystemTools13FileIsSymlinkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  br i1 %i.bu, label %.critedge.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = invoke i64 @_ZN5cmsys11SystemTools16RemoveADirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.w unwind label %bb.v

bb.u:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36.thread46.i.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

.critedge.i.i:                                    ; preds = %bb.s, %bb.q
  %i.bx = invoke i64 @_ZN5cmsys11SystemTools10RemoveFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %.critedge.i.i, %bb.t, %bb.r, %bb.p
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %6, align 8, !tbaa !58    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.au
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.v
  %i.cb = load i64, ptr %i.au, align 8, !tbaa !12
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

bb.w:                                             ; preds = %.critedge.i.i, %bb.t
  %storemerge.i.i = phi i64 [ %i.bv, %bb.t ], [ %i.bx, %.critedge.i.i ] ; 2 uses
  %i.cd = and i64 %storemerge.i.i, 4294967295
  %.not52.i.i = icmp eq i64 %i.cd, 0
  %i.ce = load ptr, ptr %6, align 8, !tbaa !58    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.au
  br i1 %i.cf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i38.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i.i: ; preds = %bb.w
  %i.cg = load i64, ptr %i.au, align 8, !tbaa !12
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #11
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i38.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i38.i.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br i1 %.not52.i.i, label %.thread.i.i, label %.loopexit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i38.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i
  %i.ci = add nuw i64 %.016.i.i, 1
  br label %.preheader.i.i, !llvm.loop !37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.u
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.bw, %bb.u ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.by, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %.loopexit.split-lp.i.i

.critedge32.i.i:                                  ; preds = %bb.m
  %i.cj = invoke i64 @_ZN5cmsys11SystemTools16RemoveADirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.loopexit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.pn29.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %lpad.loopexit.split-lp84, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5cmsys9DirectoryD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %.body.i

.loopexit.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i38.i.i, %.critedge32.i.i
  %.sroa.6.2.in.in.i.i = phi i64 [ %i.cj, %.critedge32.i.i ], [ %storemerge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i38.i.i ] ; 2 uses
  call void @_ZN5cmsys9DirectoryD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  store i64 %.sroa.6.2.in.in.i.i, ptr %9, align 8
  %i.ck = and i64 %.sroa.6.2.in.in.i.i, 4294967295
  %i.cl = icmp eq i64 %i.ck, 0                    ; 2 uses
  br i1 %i.cl, label %.loopexit33.i, label %bb.y

bb.x:                                             ; preds = %bb.y, %bb.l
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.y:                                             ; preds = %.loopexit.i
  invoke void @_ZN5cmsys11SystemTools5DelayEj(i32 noundef 100)
          to label %bb.z unwind label %bb.x

bb.z:                                             ; preds = %bb.y
  %i.cn = add nuw nsw i32 %.048.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cn, 5
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.l, !llvm.loop !38

.critedge.i:                                      ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  invoke void @_ZNK5cmsys6Status9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 4 dereferenceable(8) %9)
          to label %bb.aa unwind label %bb.ag

bb.aa:                                            ; preds = %.critedge.i
  %i.co = load ptr, ptr %12, align 8, !tbaa !58   ; 6 uses
  %i.cp = icmp eq ptr %i.co, %i.x
  %i.cq = load ptr, ptr %10, align 8, !tbaa !58   ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr                ; 2 uses
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.aa
  br i1 %i.cs, label %bb.ab, label %.thread.i26.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i29: ; preds = %bb.aa
  br i1 %i.cs, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !59 ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.cv)
  switch i64 %i.cu, label %bb.ad [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cw = load i8, ptr %i.cq, align 1, !tbaa !12
  store i8 %i.cw, ptr %i.co, align 1, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cq, i64 %i.cu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.cx = load i64, ptr %i.ct, align 8, !tbaa !59 ; 2 uses
  store i64 %i.cx, ptr %i.y, align 8, !tbaa !59
  %i.cy = load ptr, ptr %12, align 8, !tbaa !58
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store i8 0, ptr %i.cz, align 1, !tbaa !12
  %.pre.i25.i = load ptr, ptr %10, align 8, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i26.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  store ptr %i.cq, ptr %12, align 8, !tbaa !58
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.db = load <2 x i64>, ptr %i.da, align 8, !tbaa !12
  store <2 x i64> %i.db, ptr %i.y, align 8, !tbaa !12
  br label %bb.af

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i29
  %i.dc = load i64, ptr %i.x, align 8, !tbaa !12
  store ptr %i.cq, ptr %12, align 8, !tbaa !58
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.de = load <2 x i64>, ptr %i.dd, align 8, !tbaa !12
  store <2 x i64> %i.de, ptr %i.y, align 8, !tbaa !12
  %.not.i24.i = icmp eq ptr %i.co, null
  br i1 %.not.i24.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.co, ptr %10, align 8, !tbaa !58
  store i64 %i.dc, ptr %i.cr, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i26.i
  store ptr %i.cr, ptr %10, align 8, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.af, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.df = phi ptr [ %.pre.i25.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.co, %bb.ae ], [ %i.cr, %bb.af ]
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.dg, align 8, !tbaa !59
  store i8 0, ptr %i.df, align 1, !tbaa !12
  %i.dh = load ptr, ptr %10, align 8, !tbaa !58   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !12
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %.loopexit33.i

bb.ag:                                            ; preds = %.critedge.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %.body.i

.loopexit33.i:                                    ; preds = %.loopexit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i

.body.i:                                          ; preds = %bb.ag, %bb.x, %.loopexit.split-lp.i.i
  %.pn21.i = phi { ptr, i32 } [ %i.dm, %bb.ag ], [ %i.cm, %bb.x ], [ %.pn29.i.i, %.loopexit.split-lp.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %bb.ah

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i: ; preds = %.loopexit33.i, %bb.i
  %.219.i = phi i1 [ %i.cl, %.loopexit33.i ], [ false, %bb.i ]
  %i.dn = load ptr, ptr %8, align 8, !tbaa !58    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZN12_GLOBAL__N_120EmptyBinaryDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !12
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #11
  br label %_ZN12_GLOBAL__N_120EmptyBinaryDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_.exit

bb.ah:                                            ; preds = %.body.i, %bb.j
  %.pn21.pn.i = phi { ptr, i32 } [ %.pn21.i, %.body.i ], [ %i.am, %bb.j ]
  %i.ds = load ptr, ptr %8, align 8, !tbaa !58    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i: ; preds = %bb.ah
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !12
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %.body

_ZN12_GLOBAL__N_120EmptyBinaryDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br i1 %.219.i, label %_ZN12_GLOBAL__N_120EmptyBinaryDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_.exit.thread, label %_ZN12_GLOBAL__N_120EmptyBinaryDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_.exit.thread48

_ZN12_GLOBAL__N_120EmptyBinaryDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_.exit.thread48: ; preds = %bb.e, %_ZN12_GLOBAL__N_120EmptyBinaryDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_.exit
  %i.dx = load ptr, ptr %1, align 8, !tbaa !85, !nonnull !86, !align !87 ; 2 uses
  %i.dy = invoke noundef ptr @_ZNK10cmMakefile12GetMessengerEv(ptr noundef nonnull align 8 dereferenceable(2952) %i.dx)
          to label %bb.ai unwind label %bb.as

bb.ai:                                            ; preds = %_ZN12_GLOBAL__N_120EmptyBinaryDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_.exit.thread48
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  %i.dz = load ptr, ptr %0, align 8, !tbaa !53    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10, !noalias !88
  store i64 38, ptr %2, align 8, !tbaa !11, !alias.scope !89, !noalias !88
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.2, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !62, !alias.scope !89, !noalias !88
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.ea, align 8, !tbaa !65, !alias.scope !89, !noalias !88
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !58, !noalias !88
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !59, !noalias !88
  store i64 %i.ee, ptr %i.eb, align 8, !tbaa !11, !alias.scope !90, !noalias !88
  %.sroa.4.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ec, ptr %.sroa.4.0..sroa_idx.i11.i, align 8, !tbaa !62, !alias.scope !90, !noalias !88
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.ef, align 8, !tbaa !65, !alias.scope !90, !noalias !88
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 11, ptr %i.eg, align 8, !tbaa !11, !alias.scope !91, !noalias !88
  %.sroa.4.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @.str.3, ptr %.sroa.4.0..sroa_idx.i19.i, align 8, !tbaa !62, !alias.scope !91, !noalias !88
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr null, ptr %i.eh, align 8, !tbaa !65, !alias.scope !91, !noalias !88
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ej = load ptr, ptr %12, align 8, !tbaa !58, !noalias !88
  %i.ek = load i64, ptr %i.y, align 8, !tbaa !59, !noalias !88
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !11, !alias.scope !92, !noalias !88
  %.sroa.4.0..sroa_idx.i27.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.ej, ptr %.sroa.4.0..sroa_idx.i27.i, align 8, !tbaa !62, !alias.scope !92, !noalias !88
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr null, ptr %i.el, align 8, !tbaa !65, !alias.scope !92, !noalias !88
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull %2, i64 4)
          to label %bb.aj unwind label %bb.at

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  invoke void @_ZNK10cmMakefile12GetBacktraceEv(ptr dead_on_unwind nonnull writable sret(%class.cmListFileBacktrace) align 8 %14, ptr noundef nonnull align 8 dereferenceable(2952) %i.dx)
          to label %bb.ak unwind label %bb.au

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNK11cmMessenger14DisplayMessageE11MessageTypeN13cmDiagnostics18DiagnosticCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK19cmListFileBacktrace(ptr noundef nonnull align 8 dereferenceable(216) %i.dy, i32 noundef 1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.al unwind label %bb.av

bb.al:                                            ; preds = %bb.ak
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !15 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i, label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 4 uses
  %i.ep = load atomic i64, ptr %i.eo acquire, align 8 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 4294967297
end_hunk_0
