Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dl_costs?download=true
inline.NumInlined: 58
inline.NumDeleted: 30
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

$__clang_call_terminate = comdat any

@.str = private unnamed_addr constant [8 x i8] c"instr: \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"  time: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ms\00", align 1

@_ZN7datalog5costsC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN7datalog5costsC2Ev
@_ZN7datalog16accounted_objectD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN7datalog16accounted_objectD2Ev
@_ZN7datalog13cost_recorderC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN7datalog13cost_recorderC2Ev
@_ZN7datalog13cost_recorderD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN7datalog13cost_recorderD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN7datalog5costsC2Ev(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store i32 0, ptr %0, align 4, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK7datalog5costs5emptyEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %.not = icmp eq i32 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %.not1 = icmp eq i32 %i.c, 0
  %i.d = select i1 %.not, i1 %.not1, i1 false
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN7datalog5costs5resetEv(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 8)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  store i32 0, ptr %0, align 4, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @_ZNK7datalog5costsmiERKS0_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4, !tbaa !11
  %.sroa.4.0..0.2.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..0.2.sroa_idx, align 4, !tbaa !11
  %i.a = load i32, ptr %1, align 4, !tbaa !9
  %i.b = sub i32 %.sroa.0.0.copyload, %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = sub i32 %.sroa.4.0.copyload, %i.d
  %.sroa.4.0.insert.ext = zext i32 %i.e to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.b to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN7datalog5costspLERKS0_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load <2 x i32>, ptr %1, align 4, !tbaa !11
  %i.b = load <2 x i32>, ptr %0, align 4, !tbaa !11
  %i.c = add <2 x i32> %i.b, %i.a
  store <2 x i32> %i.c, ptr %0, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK7datalog5costs17passes_thresholdsERNS_7contextE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(3028) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = tail call noundef i32 @_ZNK7datalog7context33dl_profile_milliseconds_thresholdEv(ptr noundef nonnull align 8 dereferenceable(3028) %1)
  %i.c = icmp uge i32 %i.a, %i.b
  ret i1 %i.c
}

declare noundef i32 @_ZNK7datalog7context33dl_profile_milliseconds_thresholdEv(ptr noundef nonnull align 8 dereferenceable(3028)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK7datalog5costs6outputERSo(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 7) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !10
  %i.d = zext i32 %i.c to i64
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.d) ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.1, i64 noundef 8) ; 0 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !9
  %i.h = zext i32 %i.g to i64
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.h)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.2, i64 noundef 2) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN7datalog16accounted_objectD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(33) dereferenceable(33) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 656
  invoke void @_ZN7datalog12rule_manager7dec_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.d, ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #11
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

declare void @_ZN7datalog12rule_manager7dec_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7datalog16accounted_object28set_accounting_parent_objectERNS_7contextEPNS_4ruleE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(3028) %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 656
  tail call void @_ZN7datalog12rule_manager7dec_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.d, ptr noundef nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !18
  store ptr %2, ptr %i.a, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 656
  tail call void @_ZN7datalog12rule_manager7inc_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.e, ptr noundef %2)
  ret void
}

declare void @_ZN7datalog12rule_manager7inc_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN7datalog16accounted_object13process_costsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(33) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.d, align 4, !tbaa !10
  %1 = bitcast i64 %i.b to <2 x i32>
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %0, %bb.b ], [ %i.i, %bb.c ]    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 2 uses
  %i.f = load <2 x i32>, ptr %i.e, align 4, !tbaa !11
  %i.g = add <2 x i32> %i.f, %1
  store <2 x i32> %i.g, ptr %i.e, align 4, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !36

.loopexit:                                        ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK7datalog16accounted_object14get_total_costERNS_5costsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(33) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 8)) %1) local_unnamed_addr #2 align 2 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load <2 x i32>, ptr %i.b, align 8, !tbaa !11 ; 2 uses
  store <2 x i32> %i.d, ptr %1, align 4, !tbaa !11
  %i.e = load <2 x i32>, ptr %i.c, align 8, !tbaa !11
  %i.f = add <2 x i32> %i.e, %i.d
  store <2 x i32> %i.f, ptr %1, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK7datalog16accounted_object24passes_output_thresholdsERNS_7contextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(3028) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !9
  %i.e = add i32 %i.d, %i.b
  %i.f = tail call noundef i32 @_ZNK7datalog7context33dl_profile_milliseconds_thresholdEv(ptr noundef nonnull align 8 dereferenceable(3028) %1)
  %i.g = icmp uge i32 %i.e, %i.f
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK7datalog16accounted_object14output_profileERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !9
  %i.g = add i32 %i.f, %i.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !10
  %i.j = add i32 %i.i, %i.d
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 7) ; 0 uses
  %i.l = zext i32 %i.j to i64
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.l) ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.1, i64 noundef 8) ; 0 uses
  %i.o = zext i32 %i.g to i64
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef %i.o)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.2, i64 noundef 2) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7datalog13cost_recorderC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZN9stopwatch5startEv.exit:
  store ptr null, ptr %0, align 8, !tbaa !23
  %i.a = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.a, i8 0, i64 17, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #12
  store i64 %i.d, ptr %i.a, align 8, !tbaa !25
  store i8 1, ptr %i.c, align 8, !tbaa !29
  ret void
}

declare noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN7datalog13cost_recorderD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !29, !range !30, !noundef !31
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN9stopwatch4stopEv.exit.i.i.i.i, label %_ZNK9stopwatch19get_current_secondsEv.exit.i.i

_ZN9stopwatch4stopEv.exit.i.i.i.i:                ; preds = %bb.b
  %i.g = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #12
  %.sroa.0.0.copyload.i2.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !25
  %i.h = sub i64 %i.g, %.sroa.0.0.copyload.i2.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !32
  %i.k = add nsw i64 %i.h, %i.j
  store i64 %i.k, ptr %i.i, align 8, !tbaa !32
  store i8 0, ptr %i.d, align 8, !tbaa !29
  %i.l = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #12
  store i64 %i.l, ptr %i.c, align 8, !tbaa !25
  store i8 1, ptr %i.d, align 8, !tbaa !29
  %.pre = load ptr, ptr %0, align 8, !tbaa !23
  br label %_ZNK9stopwatch19get_current_secondsEv.exit.i.i

_ZNK9stopwatch19get_current_secondsEv.exit.i.i:   ; preds = %_ZN9stopwatch4stopEv.exit.i.i.i.i, %bb.b
  %i.m = phi ptr [ %.pre, %_ZN9stopwatch4stopEv.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32
  %i.p = sdiv i64 %i.o, 1000000
  %i.q = sitofp i64 %i.p to double
  %i.r = fdiv nnan double %i.q, 1.000000e+03
  %i.s = fmul nnan double %i.r, 1.000000e+03
  %i.t = fptoui double %i.s to i64                ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN7datalog13cost_recorder6finishEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK9stopwatch19get_current_secondsEv.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !33
  %i.w = sub i64 %i.t, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 20 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !10
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !10
  %i.ac = load i32, ptr %i.y, align 4, !tbaa !9
  %i.ad = add i32 %i.ac, %i.x
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i8 0, ptr %i.ae, align 8, !tbaa !34
  br label %_ZN7datalog13cost_recorder6finishEv.exit

_ZN7datalog13cost_recorder6finishEv.exit:         ; preds = %_ZNK9stopwatch19get_current_secondsEv.exit.i.i, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.af, align 8, !tbaa !35
  store ptr null, ptr %0, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.t, ptr %i.ag, align 8, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %_ZN7datalog13cost_recorder6finishEv.exit, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_Z7deallocI9stopwatchEvPT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ai)
          to label %_Z7deallocI9stopwatchEvPT_.exit unwind label %bb.f

_Z7deallocI9stopwatchEvPT_.exit:                  ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #11
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN7datalog13cost_recorder5startEPNS_16accounted_objectE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((16, 17)) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !29, !range !30, !noundef !31
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN9stopwatch4stopEv.exit.i.i, label %_ZNK9stopwatch19get_current_secondsEv.exit

_ZN9stopwatch4stopEv.exit.i.i:                    ; preds = %bb.a
  %i.f = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #12
  %.sroa.0.0.copyload.i2.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.g = sub i64 %i.f, %.sroa.0.0.copyload.i2.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !32
  %i.j = add nsw i64 %i.g, %i.i
  store i64 %i.j, ptr %i.h, align 8, !tbaa !32
  store i8 0, ptr %i.c, align 8, !tbaa !29
  %i.k = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #12
  store i64 %i.k, ptr %i.b, align 8, !tbaa !25
  store i8 1, ptr %i.c, align 8, !tbaa !29
  br label %_ZNK9stopwatch19get_current_secondsEv.exit

_ZNK9stopwatch19get_current_secondsEv.exit:       ; preds = %bb.a, %_ZN9stopwatch4stopEv.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !32
  %i.n = sdiv i64 %i.m, 1000000
  %i.o = sitofp i64 %i.n to double
  %i.p = fdiv nnan double %i.o, 1.000000e+03
  %i.q = fmul nnan double %i.p, 1.000000e+03
  %i.r = fptoui double %i.q to i64                ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !23     ; 4 uses
end_hunk_0
