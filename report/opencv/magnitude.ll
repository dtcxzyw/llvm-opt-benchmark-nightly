Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/magnitude?download=true
inline.NumInlined: 140
inline.NumDeleted: 68
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }

$_ZNSt12__shared_ptrIN2cv3hfs7orutils5ImageIiEELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIN2cv3hfs7orutils5ImageIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN2cv3hfs7orutils11MemoryBlockIiED2Ev = comdat any

$_ZN2cv3hfs7orutils5ImageIiED0Ev = comdat any

$_ZN2cv3hfs7orutils11MemoryBlockIiED0Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIiEELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIiEELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIiEELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIiEELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZN2cv3hfs7orutils11MemoryBlockIhED2Ev = comdat any

$_ZN2cv3hfs7orutils5ImageIhED0Ev = comdat any

$_ZN2cv3hfs7orutils11MemoryBlockIhED0Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIhEELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIhEELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIhEELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIhEELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZTVN2cv3hfs7orutils5ImageIiEE = comdat any

$_ZTIN2cv3hfs7orutils5ImageIiEE = comdat any

$_ZTSN2cv3hfs7orutils5ImageIiEE = comdat any

$_ZTIN2cv3hfs7orutils11MemoryBlockIiEE = comdat any

$_ZTSN2cv3hfs7orutils11MemoryBlockIiEE = comdat any

$_ZTVN2cv3hfs7orutils11MemoryBlockIiEE = comdat any

$_ZTVSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIiEELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIiEELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIiEELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTVN2cv3hfs7orutils5ImageIhEE = comdat any

$_ZTIN2cv3hfs7orutils5ImageIhEE = comdat any

$_ZTSN2cv3hfs7orutils5ImageIhEE = comdat any

$_ZTIN2cv3hfs7orutils11MemoryBlockIhEE = comdat any

$_ZTSN2cv3hfs7orutils11MemoryBlockIhEE = comdat any

$_ZTVN2cv3hfs7orutils11MemoryBlockIhEE = comdat any

$_ZTVSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIhEELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIhEELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIhEELN9__gnu_cxx12_Lock_policyE2EE = comdat any

@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVN2cv3hfs7orutils5ImageIiEE = linkonce_odr hidden constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN2cv3hfs7orutils5ImageIiEE, ptr @_ZN2cv3hfs7orutils11MemoryBlockIiED2Ev, ptr @_ZN2cv3hfs7orutils5ImageIiED0Ev] }, comdat, align 8
@_ZTIN2cv3hfs7orutils5ImageIiEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hfs7orutils5ImageIiEE, ptr @_ZTIN2cv3hfs7orutils11MemoryBlockIiEE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN2cv3hfs7orutils5ImageIiEE = linkonce_odr hidden constant [27 x i8] c"N2cv3hfs7orutils5ImageIiEE\00", comdat, align 1
@_ZTIN2cv3hfs7orutils11MemoryBlockIiEE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN2cv3hfs7orutils11MemoryBlockIiEE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN2cv3hfs7orutils11MemoryBlockIiEE = linkonce_odr hidden constant [34 x i8] c"N2cv3hfs7orutils11MemoryBlockIiEE\00", comdat, align 1
@_ZTVN2cv3hfs7orutils11MemoryBlockIiEE = linkonce_odr hidden constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN2cv3hfs7orutils11MemoryBlockIiEE, ptr @_ZN2cv3hfs7orutils11MemoryBlockIiED2Ev, ptr @_ZN2cv3hfs7orutils11MemoryBlockIiED0Ev] }, comdat, align 8
@_ZTVSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIiEELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIiEELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIiEELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIiEELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIiEELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIiEELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIiEELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIiEELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIiEELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [78 x i8] c"St15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIiEELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN2cv3hfs7orutils5ImageIhEE = linkonce_odr hidden constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN2cv3hfs7orutils5ImageIhEE, ptr @_ZN2cv3hfs7orutils11MemoryBlockIhED2Ev, ptr @_ZN2cv3hfs7orutils5ImageIhED0Ev] }, comdat, align 8
@_ZTIN2cv3hfs7orutils5ImageIhEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3hfs7orutils5ImageIhEE, ptr @_ZTIN2cv3hfs7orutils11MemoryBlockIhEE }, comdat, align 8
@_ZTSN2cv3hfs7orutils5ImageIhEE = linkonce_odr hidden constant [27 x i8] c"N2cv3hfs7orutils5ImageIhEE\00", comdat, align 1
@_ZTIN2cv3hfs7orutils11MemoryBlockIhEE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN2cv3hfs7orutils11MemoryBlockIhEE }, comdat, align 8
@_ZTSN2cv3hfs7orutils11MemoryBlockIhEE = linkonce_odr hidden constant [34 x i8] c"N2cv3hfs7orutils11MemoryBlockIhEE\00", comdat, align 1
@_ZTVN2cv3hfs7orutils11MemoryBlockIhEE = linkonce_odr hidden constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN2cv3hfs7orutils11MemoryBlockIhEE, ptr @_ZN2cv3hfs7orutils11MemoryBlockIhED2Ev, ptr @_ZN2cv3hfs7orutils11MemoryBlockIhED0Ev] }, comdat, align 8
@_ZTVSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIhEELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIhEELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIhEELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIhEELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIhEELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIhEELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIhEELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIhEELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIhEELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [78 x i8] c"St15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIhEELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1

@_ZN2cv3hfs9MagnitudeC1Eii = hidden unnamed_addr alias void (ptr, i32, i32), ptr @_ZN2cv3hfs9MagnitudeC2Eii
@_ZN2cv3hfs9MagnitudeD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2cv3hfs9MagnitudeD2Ev

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3hfs9MagnitudeC2Eii(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 80)) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %i.e = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #15
          to label %bb.b unwind label %bb.dc      ; 10 uses

bb.b:                                             ; preds = %bb.a
  %.sroa.9.0.insert.ext149 = zext i32 %2 to i64   ; 2 uses
  %.sroa.9.0.insert.shift150 = shl nuw i64 %.sroa.9.0.insert.ext149, 32
  %.sroa.0124.0.insert.ext134 = zext i32 %1 to i64 ; 2 uses
  %.sroa.0124.0.insert.insert136 = or disjoint i64 %.sroa.9.0.insert.shift150, %.sroa.0124.0.insert.ext134 ; 6 uses
  %3 = shl nuw i64 %.sroa.0124.0.insert.ext134, 32
  %sext.i = mul i64 %3, %.sroa.9.0.insert.ext149  ; 2 uses
  %i.f = ashr exact i64 %sext.i, 32               ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv3hfs7orutils11MemoryBlockIiEE, i64 16), ptr %i.e, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 %i.f, ptr %i.g, align 8, !tbaa !10
  %i.h = icmp ugt i64 %i.f, 4611686018427387903
  %i.i = ashr exact i64 %sext.i, 30
  %i.j = select i1 %i.h, i64 -1, i64 %i.i         ; 3 uses
  %i.k = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #15
          to label %bb.c unwind label %bb.dd      ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !15
  %i.m = load i64, ptr %i.g, align 8, !tbaa !10
  %i.n = shl i64 %i.m, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.k, i8 0, i64 %i.n, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv3hfs7orutils5ImageIiEE, i64 16), ptr %i.e, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.0124.0.insert.insert136, ptr %i.o, align 8
  %i.p = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #15
          to label %bb.h unwind label %bb.d       ; 11 uses

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #16 ; 0 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(32) %i.e) #16, !inline_history !16
  invoke void @__cxa_rethrow() #17
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #18
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 7 uses
  store i32 1, ptr %i.z, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 12 ; 2 uses
  store i32 1, ptr %i.aa, align 4, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv3hfs7orutils5ImageIiEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.p, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.e, ptr %i.ab, align 8, !tbaa !20
  store ptr %i.e, ptr %0, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.ad
  br i1 %.not.i.i.i.i, label %_ZN2cv3PtrINS_3hfs7orutils5ImageIiEEEaSERKS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 2, ptr %i.z, align 8, !tbaa !29
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.af = atomicrmw volatile add ptr %i.z, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !27
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.ag = phi ptr [ %.pr.pre.i.i.i.i, %bb.k ], [ %i.ad, %bb.j ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ah, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !19
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #16, !inline_history !30
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #16, !inline_history !30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i9.i.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i9.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !29
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i = phi i32 [ %i.ak, %bb.o ], [ %i.au, %bb.p ]
  %i.av = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.av, label %bb.q, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !31

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #16
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.p, ptr %i.ac, align 8, !tbaa !27
  br label %_ZN2cv3PtrINS_3hfs7orutils5ImageIiEEEaSERKS5_.exit

_ZN2cv3PtrINS_3hfs7orutils5ImageIiEEEaSERKS5_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, %bb.h
  %i.aw = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN2cv3PtrINS_3hfs7orutils5ImageIiEEEaSERKS5_.exit
  store i32 0, ptr %i.z, align 8, !tbaa !17
  store i32 0, ptr %i.aa, align 4, !tbaa !19
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #16, !inline_history !32
  %i.bc = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #16, !inline_history !32
  br label %_ZNSt12__shared_ptrIN2cv3hfs7orutils5ImageIiEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %_ZN2cv3PtrINS_3hfs7orutils5ImageIiEEEaSERKS5_.exit
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = add nsw i32 %i.ay, -1
  store i32 %i.bg, ptr %i.z, align 8, !tbaa !29
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bh = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i = phi i32 [ %i.ay, %bb.t ], [ %i.bh, %bb.u ]
  %i.bi = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bi, label %bb.v, label %_ZNSt12__shared_ptrIN2cv3hfs7orutils5ImageIiEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !31

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #16
  br label %_ZNSt12__shared_ptrIN2cv3hfs7orutils5ImageIiEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv3hfs7orutils5ImageIiEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.v
  %i.bj = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #15
          to label %bb.w unwind label %bb.de      ; 10 uses

bb.w:                                             ; preds = %_ZNSt12__shared_ptrIN2cv3hfs7orutils5ImageIiEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv3hfs7orutils11MemoryBlockIiEE, i64 16), ptr %i.bj, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  store i64 %i.f, ptr %i.bk, align 8, !tbaa !10
  %i.bl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #15
          to label %bb.x unwind label %bb.df      ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !15
  %i.bn = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.bo = shl i64 %i.bn, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bl, i8 0, i64 %i.bo, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv3hfs7orutils5ImageIiEE, i64 16), ptr %i.bj, align 8, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store i64 %.sroa.0124.0.insert.insert136, ptr %i.bp, align 8
  %i.bq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #15
          to label %bb.ac unwind label %bb.y      ; 11 uses

bb.y:                                             ; preds = %bb.x
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
end_hunk_0
