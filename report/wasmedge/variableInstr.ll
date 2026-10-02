Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/variableInstr?download=true
inline.NumInlined: 69
inline.NumDeleted: 43
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.cxx20::expected" = type { %"struct.cxx20::detail::expected_move_assign_base" }
%"struct.cxx20::detail::expected_move_assign_base" = type { %"struct.cxx20::detail::expected_copy_assign_base" }
%"struct.cxx20::detail::expected_copy_assign_base" = type { %"struct.cxx20::detail::expected_move_base" }
%"struct.cxx20::detail::expected_move_base" = type { %"struct.cxx20::detail::expected_copy_base" }
%"struct.cxx20::detail::expected_copy_base" = type { %"struct.cxx20::detail::expected_operations_base" }
%"struct.cxx20::detail::expected_operations_base" = type { %"struct.cxx20::detail::expected_view_base" }
%"struct.cxx20::detail::expected_view_base" = type { %"struct.cxx20::detail::expected_storage_base" }
%"struct.cxx20::detail::expected_storage_base" = type { i8, %union.anon }
%union.anon = type { %"class.cxx20::unexpected" }
%"class.cxx20::unexpected" = type { %"class.WasmEdge::ErrCode" }
%"class.WasmEdge::ErrCode" = type { %"union.WasmEdge::ErrCode::InnerT" }
%"union.WasmEdge::ErrCode::InnerT" = type { i32 }

$__clang_call_terminate = comdat any

@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8WasmEdge8Executor8Executor13runLocalGetOpERNS_7Runtime12StackManagerEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(328) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne i32 %3, 0
  tail call void @llvm.assume(i1 %i.a)
  %i.b = zext i32 %3 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 5 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !13     ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %i.i = ashr exact i64 %i.h, 4                   ; 3 uses
  %i.j = icmp uge i64 %i.i, %i.b
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub nuw nsw i64 %i.i, %i.b
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  %.not.i.i = icmp eq ptr %i.d, %i.n
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 16 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !16
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.p, ptr %i.c, align 8, !tbaa !12
  br label %_ZN8WasmEdge7Runtime12StackManager4pushIRNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %i.h, 9223372036854775792
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #11
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.r = ashr exact i64 %i.h, 3                   ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.i
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 576460752303423487)
  %i.u = select i1 %i.s, i64 576460752303423487, i64 %i.t ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #12
          to label %.noexc2 unwind label %bb.e    ; 5 uses

.noexc2:                                          ; preds = %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.x, ptr noundef nonnull align 16 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !16
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc2, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i ], [ %i.w, %.noexc2 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.e, %.noexc2 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !16, !alias.scope !26
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc2
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.w, %.noexc2 ], [ %i.z, %.lr.ph.i.i.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.h) #13
  store ptr %i.w, ptr %2, align 8, !tbaa !13
  store ptr %i.aa, ptr %i.c, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ab, ptr %i.m, align 8, !tbaa !14
  br label %_ZN8WasmEdge7Runtime12StackManager4pushIRNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit

_ZN8WasmEdge7Runtime12StackManager4pushIRNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit: ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i, %bb.b
  store i64 1, ptr %0, align 4
  ret void

bb.e:                                             ; preds = %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.d
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #14
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_ZNK8WasmEdge8Executor8Executor13runLocalSetOpERNS_7Runtime12StackManagerEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(328) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %2, i32 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 3 uses
  %.sroa.0.0.copyload.i = load i128, ptr %i.c, align 16, !tbaa !15
  store ptr %i.c, ptr %i.a, align 8, !tbaa !12
  %i.d = add i32 %3, -1                           ; 2 uses
  %i.e = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = zext i32 %i.d to i64                     ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !13     ; 2 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  %i.l = icmp uge i64 %i.k, %i.f
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub nuw nsw i64 %i.k, %i.f
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.m
  store i128 %.sroa.0.0.copyload.i, ptr %i.n, align 16, !tbaa !15
  store i64 1, ptr %0, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_ZNK8WasmEdge8Executor8Executor13runLocalTeeOpERNS_7Runtime12StackManagerEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(328) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, i32 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.d = icmp ne i32 %3, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = zext i32 %3 to i64                       ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !13     ; 2 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 4                   ; 2 uses
  %i.k = icmp uge i64 %i.j, %i.e
  tail call void @llvm.assume(i1 %i.k)
  %i.l = sub nuw nsw i64 %i.j, %i.e
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, ptr noundef nonnull align 16 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !16
  store i64 1, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8WasmEdge8Executor8Executor14runGlobalGetOpERNS_7Runtime12StackManagerEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef ptr @_ZNK8WasmEdge8Executor8Executor16getGlobInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !16
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.c, align 8, !tbaa !12
  br label %_ZN8WasmEdge7Runtime12StackManager4pushIRNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %2, align 8, !tbaa !13     ; 5 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775792
  br i1 %i.m, label %bb.e, label %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #11
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.n = ashr exact i64 %i.l, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 576460752303423487)
  %i.r = select i1 %i.p, i64 576460752303423487, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #12
          to label %.noexc5 unwind label %bb.g    ; 5 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.u, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !16
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc5, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %.noexc5 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %.noexc5 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !16, !alias.scope !34
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc5
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.t, %.noexc5 ], [ %i.w, %.lr.ph.i.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #13
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i
  store ptr %i.t, ptr %2, align 8, !tbaa !13
  store ptr %i.x, ptr %i.c, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.r
  store ptr %i.y, ptr %i.e, align 8, !tbaa !14
  br label %_ZN8WasmEdge7Runtime12StackManager4pushIRNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit

_ZN8WasmEdge7Runtime12StackManager4pushIRNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_.exit: ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i, %bb.c
  store i64 1, ptr %0, align 4
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.e, %bb.a
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #14
  unreachable
}

declare noundef ptr @_ZNK8WasmEdge8Executor8Executor16getGlobInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8WasmEdge8Executor8Executor14runGlobalSetOpERNS_7Runtime12StackManagerEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef ptr @_ZNK8WasmEdge8Executor8Executor16getGlobInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i = load i128, ptr %i.d, align 16, !tbaa !15
  store ptr %i.d, ptr %i.b, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i128 %.sroa.0.0.copyload.i, ptr %i.e, align 16, !tbaa !15
  store i64 1, ptr %0, align 4
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #14
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noreturn }
attributes #12 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !17}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTSN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE", !9, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!12 = !{!11, !10, i64 8}
!13 = !{!11, !10, i64 0}
!14 = !{!11, !10, i64 16}
!15 = !{!5, !5, i64 0}
!16 = !{i64 0, i64 16, !15}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!10, !10, i64 0}
!23 = distinct !{!23, i1 false, !"_ZSt19__relocate_object_aIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESD_SaISD_EEvPT_PT0_RT1_"}
!24 = distinct !{!24, !23, !"_ZSt19__relocate_object_aIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESD_SaISD_EEvPT_PT0_RT1_: argument 0"}
!25 = distinct !{!25, !23, !"_ZSt19__relocate_object_aIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESD_SaISD_EEvPT_PT0_RT1_: argument 1"}
!26 = !{!24, !25}
!31 = distinct !{!31, i1 false, !"_ZSt19__relocate_object_aIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESD_SaISD_EEvPT_PT0_RT1_"}
!32 = distinct !{!32, !31, !"_ZSt19__relocate_object_aIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESD_SaISD_EEvPT_PT0_RT1_: argument 0"}
!33 = distinct !{!33, !31, !"_ZSt19__relocate_object_aIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESD_SaISD_EEvPT_PT0_RT1_: argument 1"}
!34 = !{!32, !33}
end_hunk_0
