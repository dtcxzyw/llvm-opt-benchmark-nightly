Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_error-98c9860d04c4aeed.polars_error.be07a98e21519244-cgu.1?download=true
inline.NumInlined: 86
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [80 x i8] c"/rustc/48cc71ee88cd0f11217eced958b9930970da998b/library/core/src/str/pattern.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00\E5\05\00\00\14\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00\E5\05\00\00!\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00\D9\05\00\00!\00\00\00" }>, align 8
@4 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsgjwxzEoLG5s_12polars_error, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCsh8eZTKRCwoO_3std2io5errorNtB2_5ErrorNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt }>, align 8
@6 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@_RNvNtCsgjwxzEoLG5s_12polars_error5abort11ABORT_STATE = global [8 x i8] zeroinitializer, align 8
@7 = private unnamed_addr constant [15 x i8] c"__POLARS_ABORT_", align 1
@8 = private unnamed_addr constant [33 x i8] c"crates/polars-error/src/abort.rs\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c" \00\00\00\00\00\00\00/\00\00\00\09\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c" \00\00\00\00\00\00\00\94\00\00\00\0D\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c" \00\00\00\00\00\00\00u\00\00\00\09\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c" \00\00\00\00\00\00\00s\00\00\00\09\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c" \00\00\00\00\00\00\00q\00\00\00\09\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c" \00\00\00\00\00\00\00a\00\00\00\05\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0EBM_, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRNtNtCsh8eZTKRCwoO_3std5panic13PanicHookInfoEE9call_once6vtableBa_, ptr @_RNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0B5_, ptr @_RNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0B5_ }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c" \00\00\00\00\00\00\00Q\00\00\00\0A\00\00\00" }>, align 8
@17 = private unnamed_addr constant [30 x i8] c"__POLARS_ABORT_OOC_OUT_OF_DISK", align 1
@18 = private unnamed_addr constant [33 x i8] c"__POLARS_ABORT_KEYBOARD_INTERRUPT", align 1
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00i\04\00\00$\00\00\00" }>, align 8

; Function Attrs: inlinehint norecurse nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB7_6AtomicyE10try_updateNCNvNtCsgjwxzEoLG5s_12polars_error5abort28polars_abort_ooc_out_of_disk0EB1d_() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7 {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCsgjwxzEoLG5s_12polars_error5abort11ABORT_STATE monotonic, align 8, !dbg !15
  br label %bb.b, !dbg !21

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.06.0 = phi i64 [ %i.a, %bb.a ], [ %.sroa.01.0.i, %bb.c ], !dbg !23 ; 3 uses
  %.not.i = icmp ugt i64 %.sroa.06.0, 3, !dbg !24
  br i1 %.not.i, label %bb.c, label %bb.d, !dbg !33

bb.c:                                             ; preds = %bb.b
  %i.b = or i64 %.sroa.06.0, 2, !dbg !24
  %i.c = cmpxchg weak ptr @_RNvNtCsgjwxzEoLG5s_12polars_error5abort11ABORT_STATE, i64 %.sroa.06.0, i64 %i.b release monotonic, align 8, !dbg !34 ; 2 uses
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.c, 1, !dbg !39
  %.sroa.01.0.i = extractvalue { i64, i1 } %i.c, 0, !dbg !39
  br i1 %.sroa.18.0.in.i, label %bb.d, label %bb.b, !dbg !40

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void, !dbg !41
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0EBM_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !42 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !dbg !45     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !45
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !45, !nonnull !14, !align !46, !noundef !14 ; 5 uses
  %i.b = load ptr, ptr %.val1, align 8, !dbg !47, !invariant.load !14 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null, !dbg !47
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !47

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.b(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.e, !dbg !47

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 8, !dbg !50
  %i.d = load i64, ptr %i.c, align 8, !dbg !50, !range !68, !invariant.load !14 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !69
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtCsh8eZTKRCwoO_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtB4_6marker4SendNtB2N_4SyncEL_EECsgjwxzEoLG5s_12polars_error.exit, label %bb.d, !dbg !69

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 16, !dbg !50
  %i.g = load i64, ptr %i.f, align 8, !dbg !71, !range !79, !invariant.load !14
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #19, !dbg !80
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtCsh8eZTKRCwoO_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtB4_6marker4SendNtB2N_4SyncEL_EECsgjwxzEoLG5s_12polars_error.exit, !dbg !93

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 8, !dbg !94
  %i.j = load i64, ptr %i.i, align 8, !dbg !94, !range !68, !invariant.load !14 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !98
  br i1 %i.k, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDG0_INtNtNtCscgRAwXFJnXP_4core3ops8function2FnTRL1_INtNtCsh8eZTKRCwoO_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtBS_6marker4SendNtB2v_4SyncEL_ENtNtBQ_4drop4Drop4dropCsgjwxzEoLG5s_12polars_error.exit4.i, label %bb.f, !dbg !98

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 16, !dbg !94
  %i.m = load i64, ptr %i.l, align 8, !dbg !99, !range !79, !invariant.load !14
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #19, !dbg !102
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDG0_INtNtNtCscgRAwXFJnXP_4core3ops8function2FnTRL1_INtNtCsh8eZTKRCwoO_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtBS_6marker4SendNtB2v_4SyncEL_ENtNtBQ_4drop4Drop4dropCsgjwxzEoLG5s_12polars_error.exit4.i, !dbg !107

_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDG0_INtNtNtCscgRAwXFJnXP_4core3ops8function2FnTRL1_INtNtCsh8eZTKRCwoO_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtBS_6marker4SendNtB2v_4SyncEL_ENtNtBQ_4drop4Drop4dropCsgjwxzEoLG5s_12polars_error.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h, !dbg !47

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtCsh8eZTKRCwoO_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtB4_6marker4SendNtB2N_4SyncEL_EECsgjwxzEoLG5s_12polars_error.exit: ; preds = %bb.c, %bb.d
  ret void, !dbg !45
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsgjwxzEoLG5s_12polars_error(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !108 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !dbg !109, !nonnull !14, !noundef !14 ; 4 uses
  %i.a = ptrtoint ptr %.val to i64, !dbg !110
  %i.b = and i64 %i.a, 3, !dbg !128
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std2io5error14repr_bitpacked4ReprECsgjwxzEoLG5s_12polars_error.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std2io5error14repr_bitpacked4ReprECsgjwxzEoLG5s_12polars_error.exit
    i64 1, label %bb.c
  ], !dbg !130, !prof !131

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.val, inttoptr (i64 180388626432 to ptr), !dbg !132
  tail call void @llvm.assume(i1 %i.c), !dbg !139
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std2io5error14repr_bitpacked4ReprECsgjwxzEoLG5s_12polars_error.exit, !dbg !140

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val, i64 -1, !dbg !141 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8, !dbg !148 ; 5 uses
  %i.e = getelementptr i8, ptr %.val, i64 7, !dbg !148
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !148, !nonnull !14, !align !46, !noundef !14 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !dbg !153, !invariant.load !14 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null, !dbg !153
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d, !dbg !153

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g, !dbg !153

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8, !dbg !158
  %i.h = load i64, ptr %i.g, align 8, !dbg !158, !range !68, !invariant.load !14 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !166
  br i1 %i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECsgjwxzEoLG5s_12polars_error.exit.i.i.i, label %bb.f, !dbg !166

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16, !dbg !158
  %i.k = load i64, ptr %i.j, align 8, !dbg !168, !range !79, !invariant.load !14
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #19, !dbg !173
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECsgjwxzEoLG5s_12polars_error.exit.i.i.i, !dbg !178

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8, !dbg !179
  %i.n = load i64, ptr %i.m, align 8, !dbg !179, !range !68, !invariant.load !14 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0, !dbg !183
  br i1 %i.o, label %bb.i, label %bb.h, !dbg !183

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16, !dbg !179
  %i.q = load i64, ptr %i.p, align 8, !dbg !184, !range !79, !invariant.load !14
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #19, !dbg !187
  br label %bb.i, !dbg !192

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #19, !dbg !193
  resume { ptr, i32 } %i.l, !dbg !148

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECsgjwxzEoLG5s_12polars_error.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #19, !dbg !202
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std2io5error14repr_bitpacked4ReprECsgjwxzEoLG5s_12polars_error.exit, !dbg !208

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std2io5error14repr_bitpacked4ReprECsgjwxzEoLG5s_12polars_error.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECsgjwxzEoLG5s_12polars_error.exit.i.i.i
  ret void, !dbg !109
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0B5_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #2 !dbg !209 {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCsgjwxzEoLG5s_12polars_error5abort11ABORT_STATE monotonic, align 8, !dbg !211
  %.not = icmp ult i64 %i.a, 4, !dbg !215
  br i1 %.not, label %bb.c, label %bb.b, !dbg !215

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !dbg !217, !nonnull !14, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !217
  %i.d = load ptr, ptr %i.c, align 8, !dbg !217, !nonnull !14, !align !46, !noundef !14
  %i.e = tail call noundef i8 @_RNvNtCsgjwxzEoLG5s_12polars_error5abort19decode_polars_abort(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d), !dbg !223
  %.not2 = icmp eq i8 %i.e, 2, !dbg !224
  br i1 %.not2, label %bb.c, label %bb.d, !dbg !230

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = load ptr, ptr %0, align 8, !dbg !232, !nonnull !14, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !232
  %i.h = load ptr, ptr %i.g, align 8, !dbg !232, !nonnull !14, !align !46, !noundef !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40, !dbg !236
  %i.j = load ptr, ptr %i.i, align 8, !dbg !236, !invariant.load !14, !nonnull !14
  tail call void %i.j(ptr noundef nonnull %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) #20, !dbg !236
  br label %bb.d, !dbg !237

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void, !dbg !238
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsgjwxzEoLG5s_12polars_error(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !239 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader, !dbg !244

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !14 ; 4 uses
  %i.h = icmp samesign ult i64 %i.g, 4
  %i.i = getelementptr i8, ptr %i.e, i64 %i.g     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.09.us = phi i16 [ %i.w, %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.us, i1 true), !dbg !245 ; 2 uses
  %i.l = zext nneg i16 %i.k to i64, !dbg !252
end_hunk_0
begin_hunk_1_@_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsgjwxzEoLG5s_12polars_error:bb.a
  br i1 %i.x, label %.loopexit, label %.preheader.split.us, !dbg !331

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.09 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09, i1 true), !dbg !245 ; 2 uses
  %i.z = zext nneg i16 %i.y to i64, !dbg !252
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z, !dbg !254
  %i.ab = getelementptr i8, ptr %i.aa, i64 1, !dbg !254 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273), !dbg !276
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278), !dbg !276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !280
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g, !dbg !283
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4, !dbg !332 ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad, !dbg !339
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit, !dbg !339

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.04.030.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.08.029.i = phi ptr [ %i.ag, %bb.c ], [ %i.e, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.030.i, align 1, !dbg !341, !alias.scope !273, !noalias !278
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.08.029.i, align 1, !dbg !349, !alias.scope !278, !noalias !273
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.013.0.copyload.i, !dbg !357
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit.thread.loopexit8, !dbg !357

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.030.i, i64 4, !dbg !359 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.029.i, i64 4, !dbg !361
  %i.ah = icmp ult ptr %i.af, %i.ad, !dbg !339
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit, !dbg !339

_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit.thread6: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !327
  br label %.loopexit, !dbg !276

_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit.thread.loopexit8: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !327
  br label %bb.d, !dbg !276

_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.015.0.copyload.i = load i32, ptr %i.ad, align 1, !dbg !363, !alias.scope !273, !noalias !278
  %.sroa.017.0.copyload.i = load i32, ptr %i.j, align 1, !dbg !370, !alias.scope !278, !noalias !273
  %i.ai = icmp eq i32 %.sroa.015.0.copyload.i, %.sroa.017.0.copyload.i, !dbg !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !327
  br i1 %i.ai, label %.loopexit, label %bb.d, !dbg !276

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit.thread6, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit.thread6 ], [ false, %bb.a ], [ false, %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ], !dbg !380
  ret i1 %.sroa.03.0, !dbg !381

bb.d:                                             ; preds = %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit.thread.loopexit8, %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y, !dbg !328
  %i.ak = xor i16 %i.aj, -1, !dbg !329
  %i.al = and i16 %.sroa.0.09, %i.ak, !dbg !330   ; 2 uses
  %i.am = icmp eq i16 %i.al, 0, !dbg !331
  br i1 %i.am, label %.loopexit, label %.preheader.split, !dbg !331
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRNtNtCsh8eZTKRCwoO_3std5panic13PanicHookInfoEE9call_once6vtableBa_(ptr nofree noundef readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !382 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !387, !nonnull !14, !noundef !14 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !387
  %i.d = load ptr, ptr %i.c, align 8, !dbg !387, !nonnull !14, !align !46, !noundef !14 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388), !dbg !387
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391), !dbg !387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !393
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8, !noalias !393
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394), !dbg !397
  %i.f = load atomic i64, ptr @_RNvNtCsgjwxzEoLG5s_12polars_error5abort11ABORT_STATE monotonic, align 8, !dbg !400, !noalias !404
  %.not.i.i = icmp ult i64 %i.f, 4, !dbg !406
  br i1 %.not.i.i, label %bb.c, label %bb.b, !dbg !406

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !dbg !407, !alias.scope !409, !noalias !410, !nonnull !14, !noundef !14
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !407
  %i.i = load ptr, ptr %i.h, align 8, !dbg !407, !alias.scope !409, !noalias !410, !nonnull !14, !align !46, !noundef !14
  %i.j = invoke noundef i8 @_RNvNtCsgjwxzEoLG5s_12polars_error5abort19decode_polars_abort(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
          to label %.noexc.i unwind label %bb.d, !dbg !411, !noalias !391

.noexc.i:                                         ; preds = %bb.b
  %.not2.i.i = icmp eq i8 %i.j, 2, !dbg !412
  br i1 %.not2.i.i, label %bb.c, label %_RNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0B5_.exit.i, !dbg !414

bb.c:                                             ; preds = %.noexc.i, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !415
  %i.l = load ptr, ptr %i.k, align 8, !dbg !415, !invariant.load !14, !alias.scope !388, !noalias !417, !nonnull !14
  invoke void %i.l(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) #20
          to label %_RNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0B5_.exit.i unwind label %bb.d, !dbg !415, !inline_history !418

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0EBM_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #21
          to label %common.resume.i unwind label %bb.j, !dbg !397

_RNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0B5_.exit.i: ; preds = %bb.c, %.noexc.i
  %i.n = load ptr, ptr %i.d, align 8, !dbg !419, !invariant.load !14, !alias.scope !388, !noalias !422 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null, !dbg !419
  br i1 %.not.i.i.i, label %bb.f, label %bb.e, !dbg !419

bb.e:                                             ; preds = %_RNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0B5_.exit.i
  invoke void %i.n(ptr noundef nonnull %i.b)
          to label %bb.f unwind label %bb.h, !dbg !419, !noalias !425

bb.f:                                             ; preds = %bb.e, %_RNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0B5_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !426
  %i.p = load i64, ptr %i.o, align 8, !dbg !426, !range !68, !invariant.load !14, !alias.scope !388, !noalias !422 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0, !dbg !430
  br i1 %i.q, label %_RNvYNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRNtNtCsh8eZTKRCwoO_3std5panic13PanicHookInfoEE9call_onceB8_.exit, label %bb.g, !dbg !430

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !426
  %i.s = load i64, ptr %i.r, align 8, !dbg !431, !range !79, !invariant.load !14, !alias.scope !388, !noalias !422
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef range(i64 1, -9223372036854775808) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #19, !dbg !434, !noalias !425
  br label %_RNvYNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRNtNtCsh8eZTKRCwoO_3std5panic13PanicHookInfoEE9call_onceB8_.exit, !dbg !439

bb.h:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !440
  %i.v = load i64, ptr %i.u, align 8, !dbg !440, !range !68, !invariant.load !14, !alias.scope !388, !noalias !422 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0, !dbg !444
  br i1 %i.w, label %common.resume.i, label %bb.i, !dbg !444

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !440
  %i.y = load i64, ptr %i.x, align 8, !dbg !445, !range !79, !invariant.load !14, !alias.scope !388, !noalias !422
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #19, !dbg !448, !noalias !425
  br label %common.resume.i, !dbg !453

common.resume.i:                                  ; preds = %bb.i, %bb.h, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.m, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !397

bb.j:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #22, !dbg !397
  unreachable, !dbg !397

_RNvYNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRNtNtCsh8eZTKRCwoO_3std5panic13PanicHookInfoEE9call_onceB8_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !397
  ret void, !dbg !387
}

; Function Attrs: norecurse nounwind nonlazybind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvNtCsgjwxzEoLG5s_12polars_error5abort18unregister_catcher() unnamed_addr #4 personality ptr @rust_eh_personality !dbg !454 {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCsgjwxzEoLG5s_12polars_error5abort11ABORT_STATE monotonic, align 8, !dbg !455
  br label %bb.b, !dbg !463

bb.b:                                             ; preds = %bb.b, %bb.a
  %.sroa.06.0.i = phi i64 [ %i.a, %bb.a ], [ %.sroa.01.0.i.i, %bb.b ], !dbg !465 ; 3 uses
  %i.b = icmp ugt i64 %.sroa.06.0.i, 7, !dbg !466
  %i.c = add i64 %.sroa.06.0.i, -4, !dbg !466
  %.sroa.3.0.i.i = select i1 %i.b, i64 %i.c, i64 0, !dbg !466
  %i.d = cmpxchg weak ptr @_RNvNtCsgjwxzEoLG5s_12polars_error5abort11ABORT_STATE, i64 %.sroa.06.0.i, i64 %.sroa.3.0.i.i monotonic monotonic, align 8, !dbg !472 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.d, 1, !dbg !476
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.d, 0, !dbg !476
  br i1 %.sroa.18.0.in.i.i, label %_RINvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB7_6AtomicyE10try_updateNCNvNtCsgjwxzEoLG5s_12polars_error5abort18unregister_catcher0EB1d_.exit, label %bb.b, !dbg !477

_RINvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB7_6AtomicyE10try_updateNCNvNtCsgjwxzEoLG5s_12polars_error5abort18unregister_catcher0EB1d_.exit: ; preds = %bb.b
  ret void, !dbg !478
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvNtCsgjwxzEoLG5s_12polars_error5abort19decode_polars_abort(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 !dbg !479 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !480
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !487
  %i.d = load ptr, ptr %i.c, align 8, !dbg !487, !invariant.load !14, !nonnull !14 ; 2 uses
  call void %i.d(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %0) #20, !dbg !490
  %i.e = load i128, ptr %i.b, align 16, !dbg !491, !noundef !14
  %i.f = icmp eq i128 %i.e, -93652901832424836513689306266955195027, !dbg !503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !480
  br i1 %i.f, label %bb.d, label %bb.b, !dbg !504

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !505
  call void %i.d(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %0) #20, !dbg !509
  %i.g = load i128, ptr %i.a, align 16, !dbg !514, !noundef !14
  %i.h = icmp eq i128 %i.g, 135427364351662873412794615186891642915, !dbg !522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !505
  br i1 %i.h, label %bb.c, label %bb.f, !dbg !523

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !524
  br label %bb.d, !dbg !547

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sink = phi i64 [ 16, %bb.c ], [ 8, %bb.a ]
  %.sroa.03.0.in = phi ptr [ %i.i, %bb.c ], [ %0, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sink, !dbg !548
  %.sroa.03.0 = load ptr, ptr %.sroa.03.0.in, align 8, !dbg !548, !nonnull !14, !noundef !14 ; 3 uses
  %.sroa.5.0 = load i64, ptr %i.j, align 8, !dbg !548, !noundef !14 ; 3 uses
  %i.k = call fastcc noundef zeroext i1 @_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0, i64 noundef %.sroa.5.0) #20, !dbg !549
  br i1 %i.k, label %bb.e, label %bb.f, !dbg !555

bb.e:                                             ; preds = %bb.d
  %i.l = call fastcc noundef zeroext i1 @_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 33, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0, i64 noundef %.sroa.5.0) #20, !dbg !556
  br i1 %i.l, label %bb.f, label %bb.g, !dbg !558

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d, %bb.b
  %.sroa.0.0 = phi i8 [ 2, %bb.d ], [ 0, %bb.e ], [ 2, %bb.b ], [ 1, %bb.g ], !dbg !548
  ret i8 %.sroa.0.0, !dbg !559

bb.g:                                             ; preds = %bb.e
  %i.m = call fastcc noundef zeroext i1 @_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 30, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0, i64 noundef %.sroa.5.0) #20, !dbg !560
  br i1 %i.m, label %bb.f, label %bb.h, !dbg !562, !prof !563

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #23, !dbg !564
  unreachable, !dbg !564
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvNtCsgjwxzEoLG5s_12polars_error5abort20try_register_catcher() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !565 {
bb.a:
  %i.a = atomicrmw add ptr @_RNvNtCsgjwxzEoLG5s_12polars_error5abort11ABORT_STATE, i64 4 monotonic, align 8, !dbg !566 ; 3 uses
  %i.b = and i64 %i.a, 3, !dbg !571
  %i.c = icmp eq i64 %i.b, 0, !dbg !571
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !571

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtCsgjwxzEoLG5s_12polars_error5abort11ABORT_STATE monotonic, align 8, !dbg !573
  br label %bb.c, !dbg !579

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.i.i = phi i64 [ %i.d, %bb.b ], [ %.sroa.01.0.i.i.i, %bb.c ], !dbg !580 ; 3 uses
  %i.e = icmp ugt i64 %.sroa.06.0.i.i, 7, !dbg !581
  %i.f = add i64 %.sroa.06.0.i.i, -4, !dbg !581
  %.sroa.3.0.i.i.i = select i1 %i.e, i64 %i.f, i64 0, !dbg !581
  %i.g = cmpxchg weak ptr @_RNvNtCsgjwxzEoLG5s_12polars_error5abort11ABORT_STATE, i64 %.sroa.06.0.i.i, i64 %.sroa.3.0.i.i.i monotonic monotonic, align 8, !dbg !583 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.g, 1, !dbg !586
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.g, 0, !dbg !586
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvNtCsgjwxzEoLG5s_12polars_error5abort18unregister_catcher.exit, label %bb.c, !dbg !587

_RNvNtCsgjwxzEoLG5s_12polars_error5abort18unregister_catcher.exit: ; preds = %bb.c
  %i.h = and i64 %i.a, 1, !dbg !588
  %i.i = icmp eq i64 %i.h, 0, !dbg !588
  br i1 %i.i, label %bb.e, label %bb.d, !dbg !588

bb.d:                                             ; preds = %bb.e, %_RNvNtCsgjwxzEoLG5s_12polars_error5abort18unregister_catcher.exit, %bb.a
  %.sroa.0.0 = phi i8 [ 2, %bb.a ], [ 0, %_RNvNtCsgjwxzEoLG5s_12polars_error5abort18unregister_catcher.exit ], [ 1, %bb.e ], !dbg !589
  ret i8 %.sroa.0.0, !dbg !590

bb.e:                                             ; preds = %_RNvNtCsgjwxzEoLG5s_12polars_error5abort18unregister_catcher.exit
  %i.j = and i64 %i.a, 2, !dbg !591
  %i.k = icmp eq i64 %i.j, 0, !dbg !591
  br i1 %i.k, label %bb.f, label %bb.d, !dbg !591, !prof !592

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #23, !dbg !593
  unreachable, !dbg !593
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvNtCsgjwxzEoLG5s_12polars_error5abort27try_raise_polars_abort_slow() unnamed_addr #5 !dbg !594 {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCsgjwxzEoLG5s_12polars_error5abort11ABORT_STATE acquire, align 8, !dbg !595 ; 2 uses
  %i.b = and i64 %i.a, 1, !dbg !599
  %i.c = icmp eq i64 %i.b, 0, !dbg !599
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !599

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.a, 2, !dbg !601
  %i.e = icmp eq i64 %i.d, 0, !dbg !601
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !601

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNtCsh8eZTKRCwoO_3std9panicking11begin_panicReEB4_(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #23, !dbg !602
  unreachable, !dbg !602

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #23, !dbg !605
  unreachable, !dbg !605

bb.e:                                             ; preds = %bb.b
  tail call void @_RINvNtCsh8eZTKRCwoO_3std9panicking11begin_panicReEB4_(ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #23, !dbg !606
  unreachable, !dbg !606
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvNtCsgjwxzEoLG5s_12polars_error5abort28polars_abort_ooc_out_of_disk() unnamed_addr #6 !dbg !608 {
bb.a:
  tail call fastcc void @_RINvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB7_6AtomicyE10try_updateNCNvNtCsgjwxzEoLG5s_12polars_error5abort28polars_abort_ooc_out_of_disk0EB1d_() #20, !dbg !609
  tail call void @_RINvNtCsh8eZTKRCwoO_3std9panicking11begin_panicReEB4_(ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23, !dbg !612
  unreachable, !dbg !612
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !615 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 16               ; 5 uses
  %i.d = tail call { ptr, ptr } @_RNvNtCsh8eZTKRCwoO_3std9panicking9take_hook(), !dbg !616 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0, !dbg !616 ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1, !dbg !616 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8, !noalias !617
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8, !noalias !617
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !dbg !620
  %i.h = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #19, !dbg !636 ; 4 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !637
  br i1 %i.i, label %bb.b, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0E3newBK_.exit, !dbg !638, !prof !592

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #24
          to label %.noexc unwind label %bb.c, !dbg !639

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !639

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0EBM_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #21
          to label %common.resume unwind label %bb.d, !dbg !640

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #22, !dbg !641
  unreachable, !dbg !641

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.q, %bb.f ]
  resume { ptr, i32 } %common.resume.op, !dbg !642

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0E3newBK_.exit: ; preds = %bb.a
  store ptr %i.e, ptr %i.h, align 8, !dbg !643
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !643
  store ptr %i.f, ptr %i.l, align 8, !dbg !643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !645
  tail call void @_RNvNtCsh8eZTKRCwoO_3std9panicking8set_hook(ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @15), !dbg !646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !647
  call void @_RINvCs8kXw7nnhjzR_20signal_hook_registry8registerNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanisms_0EBR_(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(address) dereferenceable(48) %i.c, i32 noundef 2), !dbg !647
  call void @llvm.experimental.noalias.scope.decl(metadata !648), !dbg !651
  %i.m = load i64, ptr %i.c, align 16, !dbg !652, !range !658, !alias.scope !648, !noalias !659, !noundef !14
  %i.n = trunc nuw i64 %i.m to i1, !dbg !661
  br i1 %i.n, label %bb.e, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtCs8kXw7nnhjzR_20signal_hook_registry5SigIdNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE6unwrapCsgjwxzEoLG5s_12polars_error.exit, !dbg !661, !prof !592

bb.e:                                             ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0E3newBK_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !662, !noalias !663
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !662
  %i.p = load ptr, ptr %i.o, align 8, !dbg !662, !alias.scope !648, !noalias !659, !nonnull !14, !noundef !14
  store ptr %i.p, ptr %i.b, align 8, !dbg !662, !noalias !663
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24
          to label %bb.g unwind label %bb.f, !dbg !664, !noalias !663

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsgjwxzEoLG5s_12polars_error(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #21
          to label %common.resume unwind label %bb.h, !dbg !666, !noalias !663

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #22, !dbg !667, !noalias !663
  unreachable, !dbg !667

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtCs8kXw7nnhjzR_20signal_hook_registry5SigIdNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE6unwrapCsgjwxzEoLG5s_12polars_error.exit: ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0E3newBK_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !668
  ret void, !dbg !669
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 15, 34) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !670 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 19 uses
  %i.c = icmp ult i64 %1, %3, !dbg !672
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !672

_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread: ; preds = %.split.us.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i.preheader, %.lr.ph.split.us.i.i, %bb.bb, %bb.b, %bb.bd, %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.jq, %bb.bd ], [ %.sroa.0.025, %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %.sroa.014.5.i, %bb.bb ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i.preheader ], [ 0, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ], !dbg !673
  %i.d = trunc nuw i8 %.sroa.0.0 to i1, !dbg !674
  ret i1 %i.d, !dbg !674

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %1, %3, !dbg !675
  br i1 %i.e, label %bb.bd, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, !dbg !675

bb.c:                                             ; preds = %bb.a
  %i.f = icmp samesign ult i64 %1, 33, !dbg !696
  br i1 %i.f, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgjwxzEoLG5s_12polars_error.exit.i.i.lr.ph, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit, !dbg !696

_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit: ; preds = %bb.ar, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !697
  call void @_RNvMsu_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1), !dbg !698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701), !dbg !704
  %i.g = load i64, ptr %i.b, align 8, !dbg !705, !range !658, !alias.scope !701, !noalias !709, !noundef !14
  %i.h = trunc nuw i64 %i.g to i1, !dbg !711
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.h, label %bb.m, label %.preheader.i, !dbg !711

.preheader.i:                                     ; preds = %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.k = load i8, ptr %i.j, align 2, !range !712, !alias.scope !713, !noalias !716, !noundef !14
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i, !dbg !718

.lr.ph.i:                                         ; preds = %.preheader.i
  %.promoted.i = load i64, ptr %i.i, align 8, !alias.scope !701, !noalias !709 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !713, !noalias !716, !nonnull !14, !noundef !14 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !713, !noalias !716, !noundef !14 ; 14 uses
  %.promoted26.i = load i8, ptr %i.m, align 8, !alias.scope !713, !noalias !716 ; 2 uses
  %i.r = trunc nuw i8 %.promoted26.i to i1, !dbg !722
  %i.s = icmp eq i64 %.promoted.i, 0, !dbg !723
  br i1 %i.s, label %bb.f, label %bb.d, !dbg !723

bb.d:                                             ; preds = %.lr.ph.i
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.q, !dbg !737
  br i1 %.not.i.i.i.peel, label %bb.e, label %.split.i.i.i.peel, !dbg !737

.split.i.i.i.peel:                                ; preds = %bb.d
  %i.t = icmp eq i64 %.promoted.i, %i.q, !dbg !738
  br i1 %i.t, label %bb.f, label %.loopexit, !dbg !739

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %.promoted.i, !dbg !740
  %i.v = load i8, ptr %i.u, align 1, !dbg !740, !alias.scope !741, !noalias !744, !noundef !14
  %i.w = icmp sgt i8 %i.v, -65, !dbg !746
  br i1 %i.w, label %bb.f, label %.loopexit, !dbg !739

bb.f:                                             ; preds = %bb.e, %.split.i.i.i.peel, %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %.promoted.i, !dbg !751 ; 4 uses
  %i.y = icmp samesign eq i64 %.promoted.i, %i.q, !dbg !762
  br i1 %i.y, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.g, !dbg !781

bb.g:                                             ; preds = %bb.f
  %i.z = load i8, ptr %i.x, align 1, !dbg !782, !noalias !783, !noundef !14 ; 5 uses
  %i.aa = icmp sgt i8 %i.z, -1, !dbg !786
  br i1 %i.aa, label %bb.h, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit12.i.i.i.peel, !dbg !786

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit12.i.i.i.peel: ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1, !dbg !788
  %i.ac = and i8 %i.z, 31, !dbg !792
  %i.ad = zext nneg i8 %i.ac to i32, !dbg !792    ; 3 uses
  %i.ae = add nuw nsw i64 %.promoted.i, 1, !dbg !795
  %i.af = icmp samesign ne i64 %i.ae, %i.q, !dbg !795
  tail call void @llvm.assume(i1 %i.af), !dbg !799
  %i.ag = load i8, ptr %i.ab, align 1, !dbg !800, !noalias !783, !noundef !14
  %i.ah = shl nuw nsw i32 %i.ad, 6, !dbg !801
  %i.ai = and i8 %i.ag, 63, !dbg !805
  %i.aj = zext nneg i8 %i.ai to i32, !dbg !805    ; 2 uses
  %i.ak = or disjoint i32 %i.ah, %i.aj, !dbg !801
  %i.al = icmp samesign ugt i8 %i.z, -33, !dbg !806
  br i1 %i.al, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit14.i.i.i.peel, label %bb.i, !dbg !806

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit12.i.i.i.peel
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 2, !dbg !808
  %i.an = add nuw nsw i64 %.promoted.i, 2, !dbg !810
  %i.ao = icmp samesign ne i64 %i.an, %i.q, !dbg !810
  tail call void @llvm.assume(i1 %i.ao), !dbg !813
  %i.ap = load i8, ptr %i.am, align 1, !dbg !814, !noalias !783, !noundef !14
  %i.aq = shl nuw nsw i32 %i.aj, 6, !dbg !815
  %i.ar = and i8 %i.ap, 63, !dbg !818
  %i.as = zext nneg i8 %i.ar to i32, !dbg !818
  %i.at = or disjoint i32 %i.aq, %i.as, !dbg !815 ; 2 uses
  %i.au = shl nuw nsw i32 %i.ad, 12, !dbg !819
  %i.av = or disjoint i32 %i.at, %i.au, !dbg !821
  %i.aw = icmp samesign ugt i8 %i.z, -17, !dbg !822
  br i1 %i.aw, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit16.i.i.i.peel, label %bb.i, !dbg !822

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit14.i.i.i.peel
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 3, !dbg !823
  %i.ay = add nuw nsw i64 %.promoted.i, 3, !dbg !825
  %i.az = icmp samesign ne i64 %i.ay, %i.q, !dbg !825
  tail call void @llvm.assume(i1 %i.az), !dbg !828
  %i.ba = load i8, ptr %i.ax, align 1, !dbg !829, !noalias !783, !noundef !14
  %i.bb = shl nuw nsw i32 %i.ad, 18, !dbg !830
  %i.bc = and i32 %i.bb, 1835008, !dbg !830
  %i.bd = shl nuw nsw i32 %i.at, 6, !dbg !832
  %i.be = and i8 %i.ba, 63, !dbg !834
  %i.bf = zext nneg i8 %i.be to i32, !dbg !834
  %i.bg = or disjoint i32 %i.bd, %i.bf, !dbg !832
  %i.bh = or disjoint i32 %i.bg, %i.bc, !dbg !835
  br label %bb.i, !dbg !836

bb.h:                                             ; preds = %bb.g
  %i.bi = zext nneg i8 %i.z to i32, !dbg !837
  br label %bb.i, !dbg !838

bb.i:                                             ; preds = %bb.h, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit16.i.i.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit14.i.i.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.av, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit14.i.i.i.peel ], [ %i.bh, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit16.i.i.i.peel ], [ %i.ak, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit12.i.i.i.peel ], [ %i.bi, %bb.h ] ; 4 uses
  %i.bj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112, !dbg !841
  tail call void @llvm.assume(i1 %i.bj), !dbg !841
  br i1 %i.r, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.j, !dbg !858

bb.j:                                             ; preds = %bb.i
  %i.bk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128, !dbg !859
  br i1 %i.bk, label %bb.n, label %bb.k, !dbg !859

bb.k:                                             ; preds = %bb.j
  %i.bl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048, !dbg !865
  br i1 %i.bl, label %bb.n, label %bb.l, !dbg !865

bb.l:                                             ; preds = %bb.k
  %i.bm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536, !dbg !866
  %..i.i.peel = select i1 %i.bm, i64 3, i64 4, !dbg !867
  br label %bb.n, !dbg !867

bb.m:                                             ; preds = %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !868
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !868, !alias.scope !701, !noalias !709, !noundef !14 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, -1, !dbg !870
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !872
  %i.br = load ptr, ptr %i.bq, align 8, !dbg !872, !alias.scope !701, !noalias !709, !nonnull !14, !noundef !14 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !872
  %i.bt = load i64, ptr %i.bs, align 8, !dbg !872, !alias.scope !701, !noalias !709, !noundef !14 ; 14 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !872
  %i.bv = load ptr, ptr %i.bu, align 8, !dbg !872, !alias.scope !701, !noalias !709, !nonnull !14, !noundef !14 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !872
  %i.bx = load i64, ptr %i.bw, align 8, !dbg !872, !alias.scope !701, !noalias !709, !noundef !14 ; 12 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !873 ; 2 uses
  %i.bz = add nsw i64 %i.bx, -1, !dbg !876        ; 4 uses
  br i1 %i.bp, label %bb.s, label %bb.ae, !dbg !870

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.k ], [ %..i.i.peel, %bb.l ], [ 1, %bb.j ], !dbg !867
  %i.ca = add i64 %.sroa.01.0.i.i.peel, %.promoted.i, !dbg !878 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879), !dbg !880
  %i.cb = icmp eq i64 %i.ca, 0, !dbg !723
  br i1 %i.cb, label %bb.q, label %bb.o, !dbg !723

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i = icmp ult i64 %i.ca, %i.q, !dbg !737
  br i1 %.not.i.i.i, label %bb.p, label %.split.i.i.i, !dbg !737

.split.i.i.i:                                     ; preds = %bb.o
  %i.cc = icmp eq i64 %i.ca, %i.q, !dbg !738
  br i1 %i.cc, label %bb.q, label %.loopexit, !dbg !739

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ca, !dbg !740
  %i.ce = load i8, ptr %i.cd, align 1, !dbg !740, !alias.scope !741, !noalias !881, !noundef !14
  %i.cf = icmp sgt i8 %i.ce, -65, !dbg !746
  br i1 %i.cf, label %bb.q, label %.loopexit, !dbg !739

bb.q:                                             ; preds = %bb.p, %.split.i.i.i, %bb.n
  %i.cg = icmp samesign eq i64 %i.ca, %i.q, !dbg !762
  br i1 %i.cg, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.r, !dbg !781

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ca, !dbg !751
  %i.ci = load i8, ptr %i.ch, align 1, !dbg !782, !noalias !882, !noundef !14 ; 3 uses
  %i.cj = icmp sgt i8 %i.ci, -1, !dbg !786
  br i1 %i.cj, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit12.i.i.i, !dbg !786

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit12.i.i.i: ; preds = %bb.r
  %i.ck = add nuw nsw i64 %i.ca, 1, !dbg !795
  %i.cl = icmp samesign ne i64 %i.ck, %i.q, !dbg !795
  tail call void @llvm.assume(i1 %i.cl), !dbg !799
  %i.cm = icmp samesign ugt i8 %i.ci, -33, !dbg !806
  br i1 %i.cm, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit14.i.i.i, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !806

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit12.i.i.i
  %i.cn = add nuw nsw i64 %i.ca, 2, !dbg !810
  %i.co = icmp samesign ne i64 %i.cn, %i.q, !dbg !810
  tail call void @llvm.assume(i1 %i.co), !dbg !813
  %i.cp = icmp samesign ugt i8 %i.ci, -17, !dbg !822
  br i1 %i.cp, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit16.i.i.i, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !822

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit14.i.i.i
  %i.cq = add nuw nsw i64 %i.ca, 3, !dbg !825
  %i.cr = icmp samesign ne i64 %i.cq, %i.q, !dbg !825
  tail call void @llvm.assume(i1 %i.cr), !dbg !828
  br label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !836

.loopexit:                                        ; preds = %bb.p, %.split.i.i.i, %bb.e, %.split.i.i.i.peel
  %.lcssa143 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.e ], [ %i.ca, %.split.i.i.i ], [ %i.ca, %bb.p ]
  tail call void @_RNvNtCscgRAwXFJnXP_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.q, i64 noundef %.lcssa143, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #23, !dbg !883, !noalias !881
  unreachable, !dbg !883

bb.s:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884), !dbg !887
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888), !dbg !887
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890), !dbg !887
  %.promoted.i11 = load i64, ptr %i.by, align 8, !alias.scope !884, !noalias !892 ; 2 uses
  %i.cs = add i64 %.promoted.i11, %i.bz, !dbg !894 ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.bt, !dbg !897
  br i1 %i.ct, label %.lr.ph.i14, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !897

.lr.ph.i14:                                       ; preds = %bb.s
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !884, !noalias !892, !noundef !14
  %i.cw = load i64, ptr %i.i, align 8, !alias.scope !884, !noalias !892 ; 8 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !884, !noalias !892
  %umax49.i17 = tail call i64 @llvm.umax.i64(i64 %i.cw, i64 range(i64 0, -9223372036854775808) %i.bx)
  %i.cz = add i64 %i.cw, -1, !dbg !897
  %.first_iter = icmp ult i64 %i.cz, %i.bx
  %exitcond.not.i19262.not = icmp ult i64 %i.cw, %i.bx
  %invariant.op347 = sub i64 1, %i.cw, !dbg !897
  %.not265 = icmp eq i64 %i.cw, 0
  br label %bb.t, !dbg !897

bb.t:                                             ; preds = %bb.v, %.lr.ph.i14
  %i.da = phi i64 [ %.promoted.i11, %.lr.ph.i14 ], [ %i.dk, %bb.v ] ; 6 uses
  %i.db = phi i64 [ %i.cs, %.lr.ph.i14 ], [ %i.dl, %bb.v ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.db, !dbg !903
  %i.dd = load i8, ptr %i.dc, align 1, !dbg !904, !alias.scope !888, !noalias !905, !noundef !14
  %i.de = and i8 %i.dd, 63, !dbg !906
  %i.df = zext nneg i8 %i.de to i64, !dbg !910
  %i.dg = shl nuw i64 1, %i.df, !dbg !911
  %i.dh = and i64 %i.dg, %i.cv, !dbg !911
  %i.di = icmp eq i64 %i.dh, 0, !dbg !911
  br i1 %i.di, label %bb.u, label %.preheader89.preheader, !dbg !911

.preheader89.preheader:                           ; preds = %bb.t
  br i1 %exitcond.not.i19262.not, label %.lr.ph264, label %.preheader.preheader, !dbg !912

bb.u:                                             ; preds = %bb.t
  %i.dj = add i64 %i.da, %i.bx, !dbg !924
  br label %bb.v, !dbg !925

bb.v:                                             ; preds = %bb.ad, %bb.aa, %bb.u
  %i.dk = phi i64 [ %i.ed, %bb.ad ], [ %i.dj, %bb.u ], [ %i.dx, %bb.aa ] ; 2 uses
  %i.dl = add i64 %i.dk, %i.bz, !dbg !894         ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.bt, !dbg !897
  br i1 %i.dm, label %bb.t, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !897

.preheader89:                                     ; preds = %bb.ab
  %i.dn = add i64 %.sroa.02.0.i18263, 1, !dbg !926 ; 2 uses
  %exitcond.not.i19 = icmp eq i64 %i.dn, %umax49.i17, !dbg !934
  br i1 %exitcond.not.i19, label %.preheader.preheader, label %.lr.ph264, !dbg !912

.preheader.preheader:                             ; preds = %.preheader89, %.preheader89.preheader
  br i1 %.not265, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph267, !dbg !938

.lr.ph264:                                        ; preds = %.preheader89.preheader, %.preheader89
  %.sroa.02.0.i18263 = phi i64 [ %i.dn, %.preheader89 ], [ %i.cw, %.preheader89.preheader ] ; 4 uses
  %i.do = add i64 %.sroa.02.0.i18263, %i.da, !dbg !952 ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.bt, !dbg !954
  br i1 %i.dp, label %bb.ab, label %bb.ac, !dbg !954

.preheader:                                       ; preds = %bb.y
  %.not = icmp eq i64 %i.dq, 0, !dbg !955
  br i1 %.not, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph267, !dbg !938

.lr.ph267:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.2.0.i22266 = phi i64 [ %i.dq, %.preheader ], [ %i.cw, %.preheader.preheader ]
  %i.dq = add i64 %.sroa.2.0.i22266, -1, !dbg !957 ; 5 uses
  br i1 %.first_iter, label %bb.w, label %bb.x, !dbg !962

bb.w:                                             ; preds = %.lr.ph267
  %i.dr = add i64 %i.dq, %i.da, !dbg !964         ; 3 uses
  %i.ds = icmp ult i64 %i.dr, %i.bt, !dbg !965
  br i1 %i.ds, label %bb.y, label %bb.z, !dbg !965

bb.x:                                             ; preds = %.lr.ph267
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dq, i64 noundef range(i64 0, -9223372036854775808) %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #23, !dbg !962, !noalias !966
  unreachable, !dbg !962

bb.y:                                             ; preds = %bb.w
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.dq, !dbg !962
  %i.du = load i8, ptr %i.dt, align 1, !dbg !962, !alias.scope !890, !noalias !967, !noundef !14
  %i.dv = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.dr, !dbg !965
  %i.dw = load i8, ptr %i.dv, align 1, !dbg !965, !alias.scope !888, !noalias !905, !noundef !14
  %.not.i23 = icmp eq i8 %i.du, %i.dw, !dbg !962
  br i1 %.not.i23, label %.preheader, label %bb.aa, !dbg !962

bb.z:                                             ; preds = %bb.w
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dr, i64 noundef range(i64 0, -9223372036854775808) %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !dbg !965, !noalias !966
  unreachable, !dbg !965

bb.aa:                                            ; preds = %bb.y
  %i.dx = add i64 %i.da, %i.cy, !dbg !968
  br label %bb.v, !dbg !969

bb.ab:                                            ; preds = %.lr.ph264
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.02.0.i18263, !dbg !970
  %i.dz = load i8, ptr %i.dy, align 1, !dbg !970, !alias.scope !890, !noalias !967, !noundef !14
  %i.ea = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.do, !dbg !954
  %i.eb = load i8, ptr %i.ea, align 1, !dbg !954, !alias.scope !888, !noalias !905, !noundef !14
  %.not21.i21 = icmp eq i8 %i.dz, %i.eb, !dbg !970
  br i1 %.not21.i21, label %.preheader89, label %bb.ad, !dbg !970

bb.ac:                                            ; preds = %.lr.ph264
  %i.ec = add i64 %i.da, %i.cw, !dbg !971
  %umax.i20 = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.bt, i64 %i.ec), !dbg !971
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %umax.i20, i64 noundef range(i64 0, -9223372036854775808) %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23, !dbg !954, !noalias !966
  unreachable, !dbg !954

bb.ad:                                            ; preds = %bb.ab
  %.reass223.reass = add i64 %i.da, %invariant.op347
  %i.ed = add i64 %.reass223.reass, %.sroa.02.0.i18263, !dbg !972
  br label %bb.v, !dbg !973

bb.ae:                                            ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974), !dbg !977
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978), !dbg !977
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980), !dbg !977
  %.promoted.i6 = load i64, ptr %i.by, align 8, !alias.scope !974, !noalias !982 ; 2 uses
  %i.ee = add i64 %.promoted.i6, %i.bz, !dbg !984 ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %i.bt, !dbg !986
  br i1 %i.ef, label %.lr.ph.i9, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !986

.lr.ph.i9:                                        ; preds = %bb.ae
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !974, !noalias !982, !noundef !14
  %i.ei = load i64, ptr %i.i, align 8, !alias.scope !974, !noalias !982 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !974, !noalias !982 ; 2 uses
  %i.el = sub i64 %i.bx, %i.ek
  %invariant.op = sub i64 1, %i.ei, !dbg !986
  br label %bb.af, !dbg !986

bb.af:                                            ; preds = %.sink.split.i, %.lr.ph.i9
  %i.em = phi i64 [ %.promoted.i6, %.lr.ph.i9 ], [ %.ph71.i, %.sink.split.i ] ; 6 uses
  %i.en = phi i64 [ %i.bo, %.lr.ph.i9 ], [ %.sink.i, %.sink.split.i ] ; 3 uses
  %i.eo = phi i64 [ %i.ee, %.lr.ph.i9 ], [ %i.ex, %.sink.split.i ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.eo, !dbg !989
  %i.eq = load i8, ptr %i.ep, align 1, !dbg !990, !alias.scope !978, !noalias !991, !noundef !14
  %i.er = and i8 %i.eq, 63, !dbg !992
  %i.es = zext nneg i8 %i.er to i64, !dbg !994
  %i.et = shl nuw i64 1, %i.es, !dbg !995
  %i.eu = and i64 %i.et, %i.eh, !dbg !995
  %i.ev = icmp eq i64 %i.eu, 0, !dbg !995
  br i1 %i.ev, label %bb.ag, label %bb.ah, !dbg !995

bb.ag:                                            ; preds = %bb.af
  %i.ew = add i64 %i.em, %i.bx, !dbg !996
  br label %.sink.split.i, !dbg !997

bb.ah:                                            ; preds = %bb.af
  %.sroa.0.0.i.i = tail call i64 @llvm.umax.i64(i64 %i.en, i64 %i.ei), !dbg !998 ; 4 uses
  %umax49.i = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 range(i64 0, -9223372036854775808) %i.bx), !dbg !999
  %exitcond.not.i258.not = icmp ult i64 %.sroa.0.0.i.i, %i.bx, !dbg !1000
  br i1 %exitcond.not.i258.not, label %.lr.ph.a, label %.preheader29.preheader, !dbg !1004

.sink.split.i:                                    ; preds = %bb.aq, %bb.an, %bb.ag
  %.sink.i = phi i64 [ %i.el, %bb.an ], [ 0, %bb.aq ], [ 0, %bb.ag ]
  %.ph71.i = phi i64 [ %i.fm, %bb.an ], [ %i.fs, %bb.aq ], [ %i.ew, %bb.ag ] ; 2 uses
  %i.ex = add i64 %.ph71.i, %i.bz, !dbg !984      ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.bt, !dbg !986
  br i1 %i.ey, label %bb.af, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !986

bb.ai:                                            ; preds = %bb.ao
  %i.ez = add i64 %.sroa.02.0.i259, 1, !dbg !1005 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ez, %umax49.i, !dbg !1000
  br i1 %exitcond.not.i, label %.preheader29.preheader, label %.lr.ph.a, !dbg !1004

.preheader29.preheader:                           ; preds = %bb.ai, %bb.ah
  %i.fa = icmp ult i64 %i.en, %i.ei, !dbg !1008
  br i1 %i.fa, label %.lr.ph261, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !1013

.lr.ph.a:                                         ; preds = %bb.ah, %bb.ai
  %.sroa.02.0.i259 = phi i64 [ %i.ez, %bb.ai ], [ %.sroa.0.0.i.i, %bb.ah ] ; 4 uses
  %i.fb = add i64 %.sroa.02.0.i259, %i.em, !dbg !1014 ; 2 uses
  %i.fc = icmp ult i64 %i.fb, %i.bt, !dbg !1015
  br i1 %i.fc, label %bb.ao, label %bb.ap, !dbg !1015

.preheader29:                                     ; preds = %bb.al
  %i.fd = icmp ult i64 %i.en, %i.fe, !dbg !1008
  br i1 %i.fd, label %.lr.ph261, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !1013

.lr.ph261:                                        ; preds = %.preheader29.preheader, %.preheader29
  %.sroa.2.0.i260 = phi i64 [ %i.fe, %.preheader29 ], [ %i.ei, %.preheader29.preheader ]
  %i.fe = add i64 %.sroa.2.0.i260, -1, !dbg !1016 ; 6 uses
  %i.ff = icmp ult i64 %i.fe, %i.bx, !dbg !1019
  br i1 %i.ff, label %bb.aj, label %bb.ak, !dbg !1019

bb.aj:                                            ; preds = %.lr.ph261
  %i.fg = add i64 %i.fe, %i.em, !dbg !1020        ; 3 uses
  %i.fh = icmp ult i64 %i.fg, %i.bt, !dbg !1021
  br i1 %i.fh, label %bb.al, label %bb.am, !dbg !1021

bb.ak:                                            ; preds = %.lr.ph261
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fe, i64 noundef range(i64 0, -9223372036854775808) %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #23, !dbg !1019, !noalias !1022
  unreachable, !dbg !1019

bb.al:                                            ; preds = %bb.aj
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.fe, !dbg !1019
  %i.fj = load i8, ptr %i.fi, align 1, !dbg !1019, !alias.scope !980, !noalias !1023, !noundef !14
  %i.fk = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.fg, !dbg !1021
  %i.fl = load i8, ptr %i.fk, align 1, !dbg !1021, !alias.scope !978, !noalias !991, !noundef !14
  %.not.i10 = icmp eq i8 %i.fj, %i.fl, !dbg !1019
  br i1 %.not.i10, label %.preheader29, label %bb.an, !dbg !1019

bb.am:                                            ; preds = %bb.aj
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fg, i64 noundef range(i64 0, -9223372036854775808) %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !dbg !1021, !noalias !1022
  unreachable, !dbg !1021

bb.an:                                            ; preds = %bb.al
  %i.fm = add i64 %i.em, %i.ek, !dbg !1024
  br label %.sink.split.i, !dbg !1025

bb.ao:                                            ; preds = %.lr.ph.a
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.02.0.i259, !dbg !1026
  %i.fo = load i8, ptr %i.fn, align 1, !dbg !1026, !alias.scope !980, !noalias !1023, !noundef !14
  %i.fp = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.fb, !dbg !1015
  %i.fq = load i8, ptr %i.fp, align 1, !dbg !1015, !alias.scope !978, !noalias !991, !noundef !14
  %.not21.i = icmp eq i8 %i.fo, %i.fq, !dbg !1026
  br i1 %.not21.i, label %bb.ai, label %bb.aq, !dbg !1026

bb.ap:                                            ; preds = %.lr.ph.a
  %i.fr = add i64 %i.em, %.sroa.0.0.i.i, !dbg !999
  %umax.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.bt, i64 %i.fr), !dbg !999
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef range(i64 0, -9223372036854775808) %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23, !dbg !1015, !noalias !1022
  unreachable, !dbg !1015

bb.aq:                                            ; preds = %bb.ao
  %.reass.reass = add i64 %i.em, %invariant.op
  %i.fs = add i64 %.reass.reass, %.sroa.02.0.i259, !dbg !1027
  br label %.sink.split.i, !dbg !1028

_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %.sink.split.i, %.preheader29.preheader, %.preheader29, %bb.v, %.preheader.preheader, %.preheader, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit16.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit14.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit12.i.i.i, %bb.r, %bb.f, %bb.ae, %bb.s, %bb.i, %bb.q, %.preheader.i
  %.sroa.0.025 = phi i8 [ 1, %.preheader ], [ 0, %bb.s ], [ 0, %.preheader.i ], [ 1, %bb.q ], [ 1, %.preheader.preheader ], [ 1, %bb.i ], [ 1, %.preheader29 ], [ 0, %bb.ae ], [ %.promoted26.i, %bb.f ], [ 1, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit16.i.i.i ], [ 1, %bb.r ], [ 1, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit12.i.i.i ], [ 1, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit14.i.i.i ], [ 0, %bb.v ], [ 0, %.sink.split.i ], [ 1, %.preheader29.preheader ], !dbg !1029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1030
  br label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, !dbg !1030

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgjwxzEoLG5s_12polars_error.exit.i.i.lr.ph: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031), !dbg !1034
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1036), !dbg !1034
  %i.ft = load i8, ptr %0, align 1, !dbg !1038, !alias.scope !1031, !noalias !1036, !noundef !14 ; 2 uses
  %i.fu = add nsw i64 %1, -1, !dbg !1043          ; 2 uses
  %i.fv = add nsw i64 %1, -4, !dbg !1045
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgjwxzEoLG5s_12polars_error.exit.i.i, !dbg !1049

bb.ar:                                            ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgjwxzEoLG5s_12polars_error.exit.i.i
  %i.fw = icmp ult i64 %i.fv, %5, !dbg !1063
  br i1 %i.fw, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgjwxzEoLG5s_12polars_error.exit.i.i, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit, !dbg !1049

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgjwxzEoLG5s_12polars_error.exit.i.i: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgjwxzEoLG5s_12polars_error.exit.i.i.lr.ph, %bb.ar
  %4 = phi i64 [ %1, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgjwxzEoLG5s_12polars_error.exit.i.i.lr.ph ], [ %5, %bb.ar ]
  %5 = add nsw i64 %4, -1, !dbg !1066             ; 9 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 %5, !dbg !1071
  %i.fy = load i8, ptr %i.fx, align 1, !dbg !1071, !alias.scope !1031, !noalias !1079, !noundef !14 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.fy, %i.ft, !dbg !1071
  br i1 %.not.i.not.i.i, label %bb.ar, label %bb.as, !dbg !1087

bb.as:                                            ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgjwxzEoLG5s_12polars_error.exit.i.i
  %i.fz = add nuw nsw i64 %1, 15, !dbg !1088      ; 3 uses
  %i.ga = icmp ult i64 %3, %i.fz, !dbg !1090
  br i1 %i.ga, label %.lr.ph.split.us.i.i, label %bb.at, !dbg !1090

.lr.ph.split.us.i.i:                              ; preds = %bb.as
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 15, 33) %1), !dbg !1091, !alias.scope !1113, !noalias !1114
  %i.gb = icmp eq i32 %bcmp.i.i.us23.i.i, 0, !dbg !1091
  br i1 %i.gb, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i.preheader, !dbg !1118

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.gc = add nsw i64 %3, -1, !dbg !1119          ; 2 uses
  %.not28.i.i268 = icmp ugt i64 %1, %i.gc, !dbg !1131
  br i1 %.not28.i.i268, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i, !dbg !1131

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i
  %i.gd = phi i64 [ %i.gg, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i ], [ %i.gc, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i.preheader ]
  %.pn.i269 = phi ptr [ %i.ge, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i.preheader ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.pn.i269, i64 1, !dbg !1132 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ge, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 15, 33) %1), !dbg !1091, !alias.scope !1113, !noalias !1114
  %i.gf = icmp eq i32 %bcmp.i.i.us.i.i, 0, !dbg !1091
  br i1 %i.gf, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i, !dbg !1118

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.gg = add nsw i64 %i.gd, -1, !dbg !1119       ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.gg, !dbg !1131
  br i1 %.not28.i.i, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i, !dbg !1131

bb.at:                                            ; preds = %bb.as
  %i.gh = insertelement <16 x i8> poison, i8 %i.ft, i64 0, !dbg !1137
  %i.gi = shufflevector <16 x i8> %i.gh, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !1137 ; 6 uses
  %i.gj = insertelement <16 x i8> poison, i8 %i.fy, i64 0, !dbg !1144
  %i.gk = shufflevector <16 x i8> %i.gj, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !1144 ; 6 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !1147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1157, !noalias !1113
  store ptr %2, ptr %i.a, align 8, !dbg !1159, !noalias !1113
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1159
  store i64 %3, ptr %i.gm, align 8, !dbg !1159, !noalias !1113
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1159
  store ptr %i.gl, ptr %i.gn, align 8, !dbg !1159, !noalias !1113
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !1159
  store i64 %i.fu, ptr %i.go, align 8, !dbg !1159, !noalias !1113
  %i.gp = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.gp, %3, !dbg !1160
  br i1 %.not.i, label %.lr.ph.i5, label %.preheader.i4, !dbg !1160

.preheader.i4:                                    ; preds = %bb.ax, %bb.at
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.at ], [ %.sroa.014.2.3.i, %bb.ax ], !dbg !1165 ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.at ], [ %i.ik, %bb.ax ], !dbg !1166 ; 2 uses
  %i.gq = add i64 %.sroa.06.0.lcssa.i, %i.fz, !dbg !1167
  %i.gr = icmp uge i64 %i.gq, %3, !dbg !1167
  %i.gs = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3100.i = select i1 %i.gr, i1 true, i1 %i.gs, !dbg !1167
  br i1 %or.cond3100.i, label %._crit_edge.i, label %.lr.ph102.i, !dbg !1167

.lr.ph.i5:                                        ; preds = %bb.at, %bb.ax
  %.sroa.06.098.i = phi i64 [ %i.ik, %bb.ax ], [ 0, %bb.at ] ; 6 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.098.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.gt, align 1, !dbg !1168, !alias.scope !1036, !noalias !1181
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %5, !dbg !1184
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.gu, align 1, !dbg !1188, !alias.scope !1036, !noalias !1181
  %i.gv = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.gi, !dbg !1195
  %i.gw = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.gk, !dbg !1204
  %i.gx = and <16 x i1> %i.gv, %i.gw, !dbg !1207
  %i.gy = bitcast <16 x i1> %i.gx to i16, !dbg !1214 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 16, !dbg !1215 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.gz, align 1, !dbg !1168, !alias.scope !1036, !noalias !1181
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %5, !dbg !1184
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.ha, align 1, !dbg !1188, !alias.scope !1036, !noalias !1181
  %i.hb = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.gi, !dbg !1195
  %i.hc = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.gk, !dbg !1204
  %i.hd = and <16 x i1> %i.hb, %i.hc, !dbg !1207
  %i.he = bitcast <16 x i1> %i.hd to i16, !dbg !1214 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gt, i64 32, !dbg !1215 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.hf, align 1, !dbg !1168, !alias.scope !1036, !noalias !1181
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %5, !dbg !1184
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.hg, align 1, !dbg !1188, !alias.scope !1036, !noalias !1181
  %i.hh = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.gi, !dbg !1195
  %i.hi = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.gk, !dbg !1204
  %i.hj = and <16 x i1> %i.hh, %i.hi, !dbg !1207
  %i.hk = bitcast <16 x i1> %i.hj to i16, !dbg !1214 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gt, i64 48, !dbg !1215 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.hl, align 1, !dbg !1168, !alias.scope !1036, !noalias !1181
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %5, !dbg !1184
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.hm, align 1, !dbg !1188, !alias.scope !1036, !noalias !1181
  %i.hn = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.gi, !dbg !1195
  %i.ho = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.gk, !dbg !1204
  %i.hp = and <16 x i1> %i.hn, %i.ho, !dbg !1207
  %i.hq = bitcast <16 x i1> %i.hp to i16, !dbg !1214 ; 2 uses
  %i.hr = icmp eq i16 %i.gy, 0, !dbg !1217
  br i1 %i.hr, label %.preheader91.1.i, label %bb.ay, !dbg !1217

.preheader91.1.i:                                 ; preds = %bb.ay, %.lr.ph.i5
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i5 ], [ %i.ip, %bb.ay ], !dbg !1221 ; 3 uses
  %i.hs = icmp eq i16 %i.he, 0, !dbg !1217
  br i1 %i.hs, label %.preheader91.2.i, label %bb.au, !dbg !1217

bb.au:                                            ; preds = %.preheader91.1.i
  %i.ht = or disjoint i64 %.sroa.06.098.i, 16, !dbg !1222
  %i.hu = trunc nuw i8 %.sroa.014.2.i to i1, !dbg !1223
  %i.hv = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsgjwxzEoLG5s_12polars_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ht, i16 noundef %i.he, i1 noundef zeroext %i.hu) #20, !dbg !1224
  %i.hw = zext i1 %i.hv to i8, !dbg !1225
  %i.hx = or i8 %.sroa.014.2.i, %i.hw, !dbg !1225
  br label %.preheader91.2.i, !dbg !1226

.preheader91.2.i:                                 ; preds = %bb.au, %.preheader91.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader91.1.i ], [ %i.hx, %bb.au ], !dbg !1221 ; 3 uses
  %i.hy = icmp eq i16 %i.hk, 0, !dbg !1217
  br i1 %i.hy, label %.preheader91.3.i, label %bb.av, !dbg !1217

bb.av:                                            ; preds = %.preheader91.2.i
  %i.hz = or disjoint i64 %.sroa.06.098.i, 32, !dbg !1222
  %i.ia = trunc nuw i8 %.sroa.014.2.1.i to i1, !dbg !1223
  %i.ib = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsgjwxzEoLG5s_12polars_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.hz, i16 noundef %i.hk, i1 noundef zeroext %i.ia) #20, !dbg !1224
  %i.ic = zext i1 %i.ib to i8, !dbg !1225
  %i.id = or i8 %.sroa.014.2.1.i, %i.ic, !dbg !1225
  br label %.preheader91.3.i, !dbg !1226

.preheader91.3.i:                                 ; preds = %bb.av, %.preheader91.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader91.2.i ], [ %i.id, %bb.av ], !dbg !1221 ; 3 uses
  %i.ie = icmp eq i16 %i.hq, 0, !dbg !1217
  br i1 %i.ie, label %bb.ax, label %bb.aw, !dbg !1217

bb.aw:                                            ; preds = %.preheader91.3.i
  %i.if = or disjoint i64 %.sroa.06.098.i, 48, !dbg !1222
  %i.ig = trunc nuw i8 %.sroa.014.2.2.i to i1, !dbg !1223
  %i.ih = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsgjwxzEoLG5s_12polars_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.if, i16 noundef %i.hq, i1 noundef zeroext %i.ig) #20, !dbg !1224
  %i.ii = zext i1 %i.ih to i8, !dbg !1225
  %i.ij = or i8 %.sroa.014.2.2.i, %i.ii, !dbg !1225
  br label %bb.ax, !dbg !1226

bb.ax:                                            ; preds = %bb.aw, %.preheader91.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader91.3.i ], [ %i.ij, %bb.aw ], !dbg !1221 ; 2 uses
  %i.ik = add i64 %.sroa.06.098.i, 64, !dbg !1227 ; 3 uses
  %i.il = add i64 %i.ik, %i.gp, !dbg !1160
  %i.im = icmp uge i64 %i.il, %3, !dbg !1160
  %i.in = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.im, i1 true, i1 %i.in, !dbg !1160
  br i1 %or.cond.i, label %.preheader.i4, label %.lr.ph.i5, !dbg !1160

bb.ay:                                            ; preds = %.lr.ph.i5
  %i.io = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsgjwxzEoLG5s_12polars_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.098.i, i16 noundef %i.gy, i1 noundef zeroext false) #20, !dbg !1224
  %i.ip = zext i1 %i.io to i8, !dbg !1225
  br label %.preheader91.1.i, !dbg !1226

._crit_edge.i:                                    ; preds = %bb.az, %.preheader.i4
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i4 ], [ %.sroa.014.4.i, %bb.az ], !dbg !1165 ; 2 uses
  %.lcssa.i = phi i1 [ %i.gs, %.preheader.i4 ], [ %i.jj, %bb.az ]
  %i.iq = sub nuw i64 %3, %i.fu, !dbg !1228
  %i.ir = add i64 %i.iq, -16, !dbg !1228          ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 %i.ir, !dbg !1229 ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.is, align 1, !dbg !1233, !alias.scope !1036, !noalias !1237
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %5, !dbg !1240
  %.sroa.02.0.copyload.i59.i = load <16 x i8>, ptr %i.it, align 1, !dbg !1242, !alias.scope !1036, !noalias !1237
  %i.iu = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i, %i.gi, !dbg !1246
  %i.iv = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i, %i.gk, !dbg !1248
  %i.iw = and <16 x i1> %i.iu, %i.iv, !dbg !1250
  %i.ix = bitcast <16 x i1> %i.iw to i16, !dbg !1252 ; 2 uses
  %i.iy = icmp eq i16 %i.ix, 0, !dbg !1262
  br i1 %i.iy, label %bb.bb, label %bb.bc, !dbg !1262

.lr.ph102.i:                                      ; preds = %.preheader.i4, %bb.az
  %.sroa.06.1101.i = phi i64 [ %i.jg, %bb.az ], [ %.sroa.06.0.lcssa.i, %.preheader.i4 ] ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1101.i, !dbg !1264 ; 2 uses
  %.sroa.0.0.copyload.i60.i = load <16 x i8>, ptr %i.iz, align 1, !dbg !1267, !alias.scope !1036, !noalias !1271
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %5, !dbg !1274
  %.sroa.02.0.copyload.i61.i = load <16 x i8>, ptr %i.ja, align 1, !dbg !1276, !alias.scope !1036, !noalias !1271
  %i.jb = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i, %i.gi, !dbg !1280
  %i.jc = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i, %i.gk, !dbg !1282
  %i.jd = and <16 x i1> %i.jb, %i.jc, !dbg !1284
  %i.je = bitcast <16 x i1> %i.jd to i16, !dbg !1286 ; 2 uses
  %i.jf = icmp eq i16 %i.je, 0, !dbg !1289
  br i1 %i.jf, label %bb.az, label %bb.ba, !dbg !1289

bb.az:                                            ; preds = %bb.ba, %.lr.ph102.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph102.i ], [ %i.jl, %bb.ba ], !dbg !1221 ; 2 uses
  %i.jg = add i64 %.sroa.06.1101.i, 16, !dbg !1291 ; 2 uses
  %i.jh = add i64 %i.jg, %i.fz, !dbg !1167
  %i.ji = icmp uge i64 %i.jh, %3, !dbg !1167
  %i.jj = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.ji, %i.jj, !dbg !1167
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph102.i, !dbg !1167

bb.ba:                                            ; preds = %.lr.ph102.i
  %i.jk = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsgjwxzEoLG5s_12polars_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1101.i, i16 noundef %i.je, i1 noundef zeroext false) #20, !dbg !1292
  %i.jl = zext i1 %i.jk to i8, !dbg !1293
  br label %bb.az, !dbg !1294

bb.bb:                                            ; preds = %bb.bc, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.jo, %bb.bc ], !dbg !1221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1295, !noalias !1113
  br label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, !dbg !1296

bb.bc:                                            ; preds = %._crit_edge.i
  %i.jm = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsgjwxzEoLG5s_12polars_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ir, i16 noundef %i.ix, i1 noundef zeroext %.lcssa.i) #20, !dbg !1297
  %i.jn = zext i1 %i.jm to i8, !dbg !1298
  %i.jo = or i8 %.sroa.014.3.lcssa.i, %i.jn, !dbg !1298
  br label %bb.bb, !dbg !1299

bb.bd:                                            ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1), !dbg !1300
  %i.jp = icmp eq i32 %bcmp, 0, !dbg !1300
  %i.jq = zext i1 %i.jp to i8, !dbg !1300
  br label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, !dbg !1304
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsgjwxzEoLG5s_12polars_error(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsh8eZTKRCwoO_3std2io5errorNtB2_5ErrorNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #7

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #14

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCsh8eZTKRCwoO_3std9panicking11begin_panicReEB4_(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvNtCsh8eZTKRCwoO_3std9panicking9take_hook() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsh8eZTKRCwoO_3std9panicking8set_hook(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvCs8kXw7nnhjzR_20signal_hook_registry8registerNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanisms_0EBR_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 16 captures(address) dereferenceable(48), i32 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { inlinehint norecurse nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { norecurse nounwind nonlazybind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9MrPpZx4smZ_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { inlinehint }
attributes #21 = { cold }
attributes #22 = { cold noreturn nounwind }
attributes #23 = { noinline noreturn }
attributes #24 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.dbg.cu = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{!"rustc version 1.96.0-nightly (48cc71ee8 2026-03-31)"}
!5 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !6, producer: "clang LLVM (rustc version 1.96.0-nightly (48cc71ee8 2026-03-31))", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "crates/polars-error/src/lib.rs/@/polars_error.be07a98e21519244-cgu.1", directory: "/opt-bench/work/pola-rs/polars")
!7 = distinct !DISubprogram(name: "try_update<polars_error::abort::polars_abort_ooc_out_of_disk::{closure_env#0}>", linkageName: "_RINvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB7_6AtomicyE10try_updateNCNvNtCsgjwxzEoLG5s_12polars_error5abort28polars_abort_ooc_out_of_disk0EB1d_", scope: !9, file: !8, line: 3405, type: !13, scopeLine: 3405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!8 = !DIFile(filename: "library/core/src/sync/atomic.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "0fa055d022a09bf85eb4fa0bc0114101")
!9 = !DINamespace(name: "Atomic", scope: !10)
!10 = !DINamespace(name: "atomic", scope: !11)
!11 = !DINamespace(name: "sync", scope: !12)
!12 = !DINamespace(name: "core", scope: null)
!13 = !DISubroutineType(cc: DW_CC_nocall, types: !14)
!14 = !{}
!15 = !DILocation(line: 3904, column: 24, scope: !16, inlinedAt: !17)
!16 = distinct !DISubprogram(name: "atomic_load<u64>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic11atomic_loadyECsgjwxzEoLG5s_12polars_error", scope: !10, file: !8, line: 3900, type: !13, scopeLine: 3900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!17 = distinct !DILocation(line: 2870, column: 26, scope: !18, inlinedAt: !20)
!18 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicyE4load", scope: !9, file: !8, line: 2868, type: !19, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!19 = !DISubroutineType(types: !14)
!20 = !DILocation(line: 3411, column: 37, scope: !7)
!21 = !DILocation(line: 3412, column: 17, scope: !22)
!22 = distinct !DILexicalBlock(scope: !7, file: !8, line: 3411, column: 17)
!23 = !DILocation(line: 0, scope: !7)
!24 = !DILocation(line: 89, column: 16, scope: !25, inlinedAt: !31)
!25 = distinct !DILexicalBlock(scope: !27, file: !26, line: 88, column: 13)
!26 = !DIFile(filename: "crates/polars-error/src/abort.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "f7aca53d2585ecaa802ee7b46b631ba8")
!27 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtCsgjwxzEoLG5s_12polars_error5abort28polars_abort_ooc_out_of_disk0B5_", scope: !28, file: !26, line: 87, type: !13, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!28 = !DINamespace(name: "polars_abort_ooc_out_of_disk", scope: !29)
!29 = !DINamespace(name: "abort", scope: !30)
!30 = !DINamespace(name: "polars_error", scope: null)
!31 = distinct !DILocation(line: 3412, column: 40, scope: !32)
!32 = distinct !DILexicalBlock(scope: !22, file: !8, line: 3412, column: 48)
!33 = !DILocation(line: 3412, column: 27, scope: !32)
!34 = !DILocation(line: 4063, column: 17, scope: !35, inlinedAt: !36)
!35 = distinct !DISubprogram(name: "atomic_compare_exchange_weak<u64>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic28atomic_compare_exchange_weakyECsgjwxzEoLG5s_12polars_error", scope: !10, file: !8, line: 4034, type: !13, scopeLine: 4034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!36 = distinct !DILocation(line: 3130, column: 21, scope: !37, inlinedAt: !38)
!37 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicyE21compare_exchange_weak", scope: !9, file: !8, line: 3123, type: !19, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!38 = !DILocation(line: 3413, column: 32, scope: !32)
!39 = !DILocation(line: 0, scope: !35, inlinedAt: !36)
!40 = !DILocation(line: 3413, column: 21, scope: !32)
!41 = !DILocation(line: 3419, column: 14, scope: !7)
!42 = distinct !DISubprogram(name: "drop_in_place<polars_error::abort::register_polars_abort_mechanism::{closure_env#0}>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0EBM_", scope: !44, file: !43, line: 810, type: !19, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!43 = !DIFile(filename: "library/core/src/ptr/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "e257ba3fa91f9f150d8872ddddab6def")
!44 = !DINamespace(name: "ptr", scope: !12)
!45 = !DILocation(line: 810, column: 1, scope: !42)
!46 = !{i64 8}
!47 = !DILocation(line: 810, column: 1, scope: !48, inlinedAt: !49)
!48 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<(dyn core::ops::function::Fn<(&std::panic::PanicHookInfo), Output=()> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtCsh8eZTKRCwoO_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtB4_6marker4SendNtB2N_4SyncEL_EECsgjwxzEoLG5s_12polars_error", scope: !44, file: !43, line: 810, type: !13, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!49 = distinct !DILocation(line: 810, column: 1, scope: !42)
!50 = !DILocation(line: 457, column: 14, scope: !51, inlinedAt: !54)
!51 = distinct !DISubprogram(name: "size_of_val_raw<(dyn core::ops::function::Fn<(&std::panic::PanicHookInfo), Output=()> + core::marker::Send + core::marker::Sync)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem15size_of_val_rawDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtCsh8eZTKRCwoO_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtB4_6marker4SendNtB2g_4SyncEL_ECsgjwxzEoLG5s_12polars_error", scope: !53, file: !52, line: 455, type: !19, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!52 = !DIFile(filename: "library/core/src/mem/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "f117990a17890c376e3a360d512003aa")
!53 = !DINamespace(name: "mem", scope: !12)
!54 = distinct !DILocation(line: 255, column: 43, scope: !55, inlinedAt: !60)
!55 = distinct !DISubprogram(name: "for_value_raw<(dyn core::ops::function::Fn<(&std::panic::PanicHookInfo), Output=()> + core::marker::Send + core::marker::Sync)>", linkageName: "_RINvMNtNtCscgRAwXFJnXP_4core5alloc6layoutNtB3_6Layout13for_value_rawDG0_INtNtNtB7_3ops8function2FnTRL1_INtNtCsh8eZTKRCwoO_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtB7_6marker4SendNtB2C_4SyncEL_ECsgjwxzEoLG5s_12polars_error", scope: !57, file: !56, line: 253, type: !19, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!56 = !DIFile(filename: "library/core/src/alloc/layout.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "e9b0fa2b5eccd748fb6b1e11a9156468")
!57 = !DINamespace(name: "Layout", scope: !58)
!58 = !DINamespace(name: "layout", scope: !59)
!59 = !DINamespace(name: "alloc", scope: !12)
!60 = distinct !DILocation(line: 1919, column: 26, scope: !61, inlinedAt: !67)
!61 = distinct !DILexicalBlock(scope: !63, file: !62, line: 1916, column: 9)
!62 = !DIFile(filename: "library/alloc/src/boxed.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "c2c961396e00891ae9e97f5dc112a35a")
!63 = distinct !DISubprogram(name: "drop<(dyn core::ops::function::Fn<(&std::panic::PanicHookInfo), Output=()> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDG0_INtNtNtCscgRAwXFJnXP_4core3ops8function2FnTRL1_INtNtCsh8eZTKRCwoO_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtBS_6marker4SendNtB2v_4SyncEL_ENtNtBQ_4drop4Drop4dropCsgjwxzEoLG5s_12polars_error", scope: !64, file: !62, line: 1913, type: !13, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!64 = !DINamespace(name: "{impl#10}", scope: !65)
!65 = !DINamespace(name: "boxed", scope: !66)
!66 = !DINamespace(name: "alloc", scope: null)
!67 = distinct !DILocation(line: 810, column: 1, scope: !48, inlinedAt: !49)
!68 = !{i64 0, i64 -9223372036854775808}
!69 = !DILocation(line: 1920, column: 16, scope: !70, inlinedAt: !67)
!70 = distinct !DILexicalBlock(scope: !61, file: !62, line: 1919, column: 13)
!71 = !DILocation(line: 596, column: 14, scope: !72, inlinedAt: !73)
!72 = distinct !DISubprogram(name: "align_of_val_raw<(dyn core::ops::function::Fn<(&std::panic::PanicHookInfo), Output=()> + core::marker::Send + core::marker::Sync)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem16align_of_val_rawDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtCsh8eZTKRCwoO_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtB4_6marker4SendNtB2h_4SyncEL_ECsgjwxzEoLG5s_12polars_error", scope: !53, file: !52, line: 594, type: !19, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!73 = distinct !DILocation(line: 125, column: 30, scope: !74, inlinedAt: !78)
!74 = distinct !DISubprogram(name: "of_val_raw<(dyn core::ops::function::Fn<(&std::panic::PanicHookInfo), Output=()> + core::marker::Send + core::marker::Sync)>", linkageName: "_RINvMNtNtCscgRAwXFJnXP_4core3mem9alignmentNtB3_9Alignment10of_val_rawDG0_INtNtNtB7_3ops8function2FnTRL1_INtNtCsh8eZTKRCwoO_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtB7_6marker4SendNtB2D_4SyncEL_ECsgjwxzEoLG5s_12polars_error", scope: !76, file: !75, line: 123, type: !19, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!75 = !DIFile(filename: "library/core/src/mem/alignment.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "04a3a61c673b016abd85a06a152fa744")
!76 = !DINamespace(name: "Alignment", scope: !77)
!77 = !DINamespace(name: "alignment", scope: !53)
!78 = distinct !DILocation(line: 255, column: 68, scope: !55, inlinedAt: !60)
!79 = !{i64 1, i64 536870913}
!80 = !DILocation(line: 128, column: 14, scope: !81, inlinedAt: !84)
!81 = distinct !DISubprogram(name: "dealloc_nonnull", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc5alloc15dealloc_nonnull", scope: !83, file: !82, line: 127, type: !19, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!82 = !DIFile(filename: "library/alloc/src/alloc.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "860ce4ea2346d0773913a27b0b87ad79")
!83 = !DINamespace(name: "alloc", scope: !66)
!84 = distinct !DILocation(line: 229, column: 22, scope: !85, inlinedAt: !87)
!85 = distinct !DISubprogram(name: "deallocate_impl_runtime", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global23deallocate_impl_runtime", scope: !86, file: !82, line: 219, type: !19, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!86 = !DINamespace(name: "Global", scope: !83)
!87 = distinct !DILocation(line: 344, column: 9, scope: !88, inlinedAt: !89)
!88 = distinct !DISubprogram(name: "deallocate_impl", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global15deallocate_impl", scope: !86, file: !82, line: 343, type: !19, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!89 = distinct !DILocation(line: 462, column: 23, scope: !90, inlinedAt: !92)
!90 = distinct !DISubprogram(name: "deallocate", linkageName: "_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate", scope: !91, file: !82, line: 460, type: !13, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!91 = !DINamespace(name: "{impl#1}", scope: !83)
!92 = distinct !DILocation(line: 1921, column: 24, scope: !70, inlinedAt: !67)
!93 = !DILocation(line: 1920, column: 13, scope: !70, inlinedAt: !67)
!94 = !DILocation(line: 457, column: 14, scope: !51, inlinedAt: !95)
!95 = distinct !DILocation(line: 255, column: 43, scope: !55, inlinedAt: !96)
end_hunk_1
begin_hunk_2_@llvm.umax.i64
!879 = !{!714}
!880 = !DILocation(line: 1174, column: 28, scope: !706, inlinedAt: !708)
!881 = !{!717, !714, !710, !702}
!882 = !{!784, !717, !714, !710, !702}
!883 = !DILocation(line: 543, column: 21, scope: !729, inlinedAt: !731)
!884 = !{!885}
!885 = distinct !{!885, !886, !"_RINvMsx_NtNtCscgRAwXFJnXP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgjwxzEoLG5s_12polars_error: argument 1"}
!886 = distinct !{!886, !"_RINvMsx_NtNtCscgRAwXFJnXP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgjwxzEoLG5s_12polars_error"}
!887 = !DILocation(line: 1185, column: 30, scope: !871, inlinedAt: !708)
!888 = !{!889}
!889 = distinct !{!889, !886, !"_RINvMsx_NtNtCscgRAwXFJnXP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgjwxzEoLG5s_12polars_error: argument 2"}
!890 = !{!891}
!891 = distinct !{!891, !886, !"_RINvMsx_NtNtCscgRAwXFJnXP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgjwxzEoLG5s_12polars_error: argument 3"}
!892 = !{!893, !889, !891}
!893 = distinct !{!893, !886, !"_RINvMsx_NtNtCscgRAwXFJnXP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgjwxzEoLG5s_12polars_error: argument 0"}
!894 = !DILocation(line: 1472, column: 48, scope: !895, inlinedAt: !896)
!895 = distinct !DILexicalBlock(scope: !877, file: !240, line: 1467, column: 9)
!896 = distinct !DILocation(line: 1185, column: 30, scope: !871, inlinedAt: !708)
!897 = !DILocation(line: 219, column: 12, scope: !898, inlinedAt: !900)
!898 = distinct !DISubprogram(name: "get<u8>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexShE3getCsgjwxzEoLG5s_12polars_error", scope: !899, file: !256, line: 218, type: !19, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!899 = !DINamespace(name: "{impl#2}", scope: !258)
!900 = distinct !DILocation(line: 576, column: 15, scope: !901, inlinedAt: !902)
!901 = distinct !DISubprogram(name: "get<u8, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSh3getjECsgjwxzEoLG5s_12polars_error", scope: !270, file: !269, line: 572, type: !19, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!902 = distinct !DILocation(line: 1472, column: 44, scope: !895, inlinedAt: !896)
!903 = !DILocation(line: 221, column: 27, scope: !898, inlinedAt: !900)
!904 = !DILocation(line: 1473, column: 23, scope: !895, inlinedAt: !896)
!905 = !{!893, !885, !891}
!906 = !DILocation(line: 1452, column: 27, scope: !907, inlinedAt: !908)
!907 = distinct !DISubprogram(name: "byteset_contains", linkageName: "_RNvMsx_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_14TwoWaySearcher16byteset_contains", scope: !875, file: !240, line: 1451, type: !19, scopeLine: 1451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!908 = distinct !DILocation(line: 1485, column: 22, scope: !909, inlinedAt: !896)
!909 = distinct !DILexicalBlock(scope: !895, file: !240, line: 1472, column: 13)
!910 = !DILocation(line: 1452, column: 26, scope: !907, inlinedAt: !908)
!911 = !DILocation(line: 1485, column: 17, scope: !909, inlinedAt: !896)
!912 = !DILocation(line: 781, column: 12, scope: !913, inlinedAt: !917)
!913 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCsgjwxzEoLG5s_12polars_error", scope: !915, file: !914, line: 780, type: !19, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!914 = !DIFile(filename: "library/core/src/iter/range.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7915aa40df45185604e056d6562b6895")
!915 = !DINamespace(name: "{impl#5}", scope: !916)
!916 = !DINamespace(name: "range", scope: !290)
!917 = distinct !DILocation(line: 866, column: 14, scope: !918, inlinedAt: !920)
!918 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error", scope: !919, file: !914, line: 865, type: !19, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!919 = !DINamespace(name: "{impl#6}", scope: !916)
!920 = distinct !DILocation(line: 1496, column: 22, scope: !921, inlinedAt: !896)
!921 = !DILexicalBlockFile(scope: !922, file: !240, discriminator: 2)
!922 = distinct !DILexicalBlock(scope: !923, file: !240, line: 1496, column: 13)
!923 = distinct !DILexicalBlock(scope: !909, file: !240, line: 1494, column: 13)
!924 = !DILocation(line: 1486, column: 17, scope: !909, inlinedAt: !896)
!925 = !DILocation(line: 1487, column: 21, scope: !909, inlinedAt: !896)
!926 = !DILocation(line: 898, column: 17, scope: !927, inlinedAt: !929)
!927 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !928, file: !247, line: 886, type: !19, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!928 = !DINamespace(name: "{impl#11}", scope: !249)
!929 = distinct !DILocation(line: 214, column: 28, scope: !930, inlinedAt: !932)
!930 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !931, file: !914, line: 212, type: !19, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!931 = !DINamespace(name: "{impl#43}", scope: !916)
!932 = distinct !DILocation(line: 784, column: 35, scope: !933, inlinedAt: !917)
!933 = distinct !DILexicalBlock(scope: !913, file: !914, line: 782, column: 13)
!934 = !DILocation(line: 1917, column: 50, scope: !935, inlinedAt: !937)
!935 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !936, file: !683, line: 1917, type: !19, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!936 = !DINamespace(name: "{impl#58}", scope: !686)
!937 = distinct !DILocation(line: 781, column: 12, scope: !913, inlinedAt: !917)
!938 = !DILocation(line: 823, column: 12, scope: !939, inlinedAt: !940)
!939 = distinct !DISubprogram(name: "spec_next_back<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCsgjwxzEoLG5s_12polars_error", scope: !915, file: !914, line: 822, type: !19, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!940 = distinct !DILocation(line: 988, column: 14, scope: !941, inlinedAt: !943)
!941 = distinct !DISubprogram(name: "next_back<usize>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits12double_ended19DoubleEndedIterator9next_backCsgjwxzEoLG5s_12polars_error", scope: !942, file: !914, line: 987, type: !19, scopeLine: 987, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!942 = !DINamespace(name: "{impl#7}", scope: !916)
!943 = distinct !DILocation(line: 53, column: 19, scope: !944, inlinedAt: !948)
!944 = distinct !DISubprogram(name: "next<core::ops::range::Range<usize>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error", scope: !946, file: !945, line: 52, type: !19, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!945 = !DIFile(filename: "library/core/src/iter/adapters/rev.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "c0b51c2e2801a373cd0b2d2d78a81982")
!946 = !DINamespace(name: "{impl#1}", scope: !947)
!947 = !DINamespace(name: "rev", scope: !289)
!948 = distinct !DILocation(line: 1508, column: 22, scope: !949, inlinedAt: !896)
!949 = !DILexicalBlockFile(scope: !950, file: !240, discriminator: 2)
!950 = distinct !DILexicalBlock(scope: !951, file: !240, line: 1508, column: 13)
!951 = distinct !DILexicalBlock(scope: !923, file: !240, line: 1507, column: 13)
!952 = !DILocation(line: 1497, column: 42, scope: !953, inlinedAt: !896)
!953 = distinct !DILexicalBlock(scope: !922, file: !240, line: 1496, column: 13)
!954 = !DILocation(line: 1497, column: 33, scope: !953, inlinedAt: !896)
!955 = !DILocation(line: 1917, column: 50, scope: !935, inlinedAt: !956)
!956 = distinct !DILocation(line: 823, column: 12, scope: !939, inlinedAt: !940)
!957 = !DILocation(line: 1077, column: 17, scope: !958, inlinedAt: !959)
!958 = distinct !DISubprogram(name: "unchecked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_sub", scope: !928, file: !247, line: 1065, type: !19, scopeLine: 1065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!959 = distinct !DILocation(line: 220, column: 28, scope: !960, inlinedAt: !961)
!960 = distinct !DISubprogram(name: "backward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step18backward_unchecked", scope: !931, file: !914, line: 218, type: !19, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!961 = distinct !DILocation(line: 825, column: 33, scope: !939, inlinedAt: !940)
!962 = !DILocation(line: 1509, column: 20, scope: !963, inlinedAt: !896)
!963 = distinct !DILexicalBlock(scope: !950, file: !240, line: 1508, column: 13)
!964 = !DILocation(line: 1509, column: 42, scope: !963, inlinedAt: !896)
!965 = !DILocation(line: 1509, column: 33, scope: !963, inlinedAt: !896)
!966 = !{!893, !885, !889, !891}
!967 = !{!893, !885, !889}
!968 = !DILocation(line: 1510, column: 21, scope: !963, inlinedAt: !896)
!969 = !DILocation(line: 1511, column: 25, scope: !963, inlinedAt: !896)
!970 = !DILocation(line: 1497, column: 20, scope: !953, inlinedAt: !896)
!971 = !DILocation(line: 1496, column: 13, scope: !922, inlinedAt: !896)
!972 = !DILocation(line: 1498, column: 21, scope: !953, inlinedAt: !896)
!973 = !DILocation(line: 1499, column: 25, scope: !953, inlinedAt: !896)
!974 = !{!975}
!975 = distinct !{!975, !976, !"_RINvMsx_NtNtCscgRAwXFJnXP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgjwxzEoLG5s_12polars_error: argument 1"}
!976 = distinct !{!976, !"_RINvMsx_NtNtCscgRAwXFJnXP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgjwxzEoLG5s_12polars_error"}
!977 = !DILocation(line: 1191, column: 30, scope: !871, inlinedAt: !708)
!978 = !{!979}
!979 = distinct !{!979, !976, !"_RINvMsx_NtNtCscgRAwXFJnXP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgjwxzEoLG5s_12polars_error: argument 2"}
!980 = !{!981}
!981 = distinct !{!981, !976, !"_RINvMsx_NtNtCscgRAwXFJnXP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgjwxzEoLG5s_12polars_error: argument 3"}
!982 = !{!983, !979, !981}
!983 = distinct !{!983, !976, !"_RINvMsx_NtNtCscgRAwXFJnXP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgjwxzEoLG5s_12polars_error: argument 0"}
!984 = !DILocation(line: 1472, column: 48, scope: !895, inlinedAt: !985)
!985 = distinct !DILocation(line: 1191, column: 30, scope: !871, inlinedAt: !708)
!986 = !DILocation(line: 219, column: 12, scope: !898, inlinedAt: !987)
!987 = distinct !DILocation(line: 576, column: 15, scope: !901, inlinedAt: !988)
!988 = distinct !DILocation(line: 1472, column: 44, scope: !895, inlinedAt: !985)
!989 = !DILocation(line: 221, column: 27, scope: !898, inlinedAt: !987)
!990 = !DILocation(line: 1473, column: 23, scope: !895, inlinedAt: !985)
!991 = !{!983, !975, !981}
!992 = !DILocation(line: 1452, column: 27, scope: !907, inlinedAt: !993)
!993 = distinct !DILocation(line: 1485, column: 22, scope: !909, inlinedAt: !985)
!994 = !DILocation(line: 1452, column: 26, scope: !907, inlinedAt: !993)
!995 = !DILocation(line: 1485, column: 17, scope: !909, inlinedAt: !985)
!996 = !DILocation(line: 1486, column: 17, scope: !909, inlinedAt: !985)
!997 = !DILocation(line: 1487, column: 21, scope: !909, inlinedAt: !985)
!998 = !DILocation(line: 1495, column: 20, scope: !909, inlinedAt: !985)
!999 = !DILocation(line: 1496, column: 13, scope: !922, inlinedAt: !985)
!1000 = !DILocation(line: 1917, column: 50, scope: !935, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 781, column: 12, scope: !913, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 866, column: 14, scope: !918, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 1496, column: 22, scope: !921, inlinedAt: !985)
!1004 = !DILocation(line: 781, column: 12, scope: !913, inlinedAt: !1002)
!1005 = !DILocation(line: 898, column: 17, scope: !927, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 214, column: 28, scope: !930, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 784, column: 35, scope: !933, inlinedAt: !1002)
!1008 = !DILocation(line: 1917, column: 50, scope: !935, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 823, column: 12, scope: !939, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 988, column: 14, scope: !941, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 53, column: 19, scope: !944, inlinedAt: !1012)
!1012 = distinct !DILocation(line: 1508, column: 22, scope: !949, inlinedAt: !985)
!1013 = !DILocation(line: 823, column: 12, scope: !939, inlinedAt: !1010)
!1014 = !DILocation(line: 1497, column: 42, scope: !953, inlinedAt: !985)
!1015 = !DILocation(line: 1497, column: 33, scope: !953, inlinedAt: !985)
!1016 = !DILocation(line: 1077, column: 17, scope: !958, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 220, column: 28, scope: !960, inlinedAt: !1018)
!1018 = distinct !DILocation(line: 825, column: 33, scope: !939, inlinedAt: !1010)
!1019 = !DILocation(line: 1509, column: 20, scope: !963, inlinedAt: !985)
!1020 = !DILocation(line: 1509, column: 42, scope: !963, inlinedAt: !985)
!1021 = !DILocation(line: 1509, column: 33, scope: !963, inlinedAt: !985)
!1022 = !{!983, !975, !979, !981}
!1023 = !{!983, !975, !979}
!1024 = !DILocation(line: 1510, column: 21, scope: !963, inlinedAt: !985)
!1025 = !DILocation(line: 1511, column: 25, scope: !963, inlinedAt: !985)
!1026 = !DILocation(line: 1497, column: 20, scope: !953, inlinedAt: !985)
!1027 = !DILocation(line: 1498, column: 21, scope: !953, inlinedAt: !985)
!1028 = !DILocation(line: 1499, column: 25, scope: !953, inlinedAt: !985)
!1029 = !DILocation(line: 0, scope: !706, inlinedAt: !708)
!1030 = !DILocation(line: 1009, column: 67, scope: !670)
!1031 = !{!1032}
!1032 = distinct !{!1032, !1033, !"_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains: argument 0"}
!1033 = distinct !{!1033, !"_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains"}
!1034 = !DILocation(line: 1004, column: 43, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !670, file: !240, line: 1004, column: 73)
!1036 = !{!1037}
!1037 = distinct !{!1037, !1033, !"_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains: argument 1"}
!1038 = !DILocation(line: 1800, column: 23, scope: !1039, inlinedAt: !1042)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !240, line: 1792, column: 5)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !240, line: 1791, column: 5)
!1041 = distinct !DISubprogram(name: "simd_contains", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains", scope: !242, file: !240, line: 1790, type: !19, scopeLine: 1790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1042 = distinct !DILocation(line: 1004, column: 43, scope: !1035)
!1043 = !DILocation(line: 1801, column: 28, scope: !1044, inlinedAt: !1042)
!1044 = distinct !DILexicalBlock(scope: !1039, file: !240, line: 1800, column: 5)
!1045 = !DILocation(line: 2399, column: 13, scope: !1046, inlinedAt: !1047)
!1046 = distinct !DISubprogram(name: "saturating_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj14saturating_sub", scope: !928, file: !247, line: 2398, type: !19, scopeLine: 2398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1047 = distinct !DILocation(line: 1811, column: 27, scope: !1048, inlinedAt: !1042)
!1048 = distinct !DILexicalBlock(scope: !1044, file: !240, line: 1801, column: 5)
!1049 = !DILocation(line: 823, column: 12, scope: !1050, inlinedAt: !1051)
!1050 = distinct !DISubprogram(name: "spec_next_back<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCsgjwxzEoLG5s_12polars_error", scope: !915, file: !914, line: 822, type: !19, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1051 = distinct !DILocation(line: 988, column: 14, scope: !1052, inlinedAt: !1053)
!1052 = distinct !DISubprogram(name: "next_back<usize>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits12double_ended19DoubleEndedIterator9next_backCsgjwxzEoLG5s_12polars_error", scope: !942, file: !914, line: 987, type: !19, scopeLine: 987, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1053 = distinct !DILocation(line: 237, column: 34, scope: !1054, inlinedAt: !1060)
!1054 = distinct !DILexicalBlock(scope: !1056, file: !1055, line: 237, column: 46)
!1055 = !DIFile(filename: "library/core/src/iter/traits/double_ended.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "44f20493a76f1796bc2878d611fe77c6")
!1056 = distinct !DILexicalBlock(scope: !1057, file: !1055, line: 236, column: 9)
!1057 = distinct !DISubprogram(name: "try_rfold<core::ops::range::Range<usize>, (), core::iter::traits::double_ended::DoubleEndedIterator::rfind::check::{closure_env#0}<usize, core::str::pattern::simd_contains::{closure_env#0}>, core::ops::control_flow::ControlFlow<usize, ()>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsgjwxzEoLG5s_12polars_error", scope: !1058, file: !1055, line: 230, type: !19, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1058 = !DINamespace(name: "DoubleEndedIterator", scope: !1059)
!1059 = !DINamespace(name: "double_ended", scope: !296)
!1060 = distinct !DILocation(line: 378, column: 14, scope: !1061, inlinedAt: !1062)
!1061 = distinct !DISubprogram(name: "rfind<core::ops::range::Range<usize>, core::str::pattern::simd_contains::{closure_env#0}>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfindNCNvNtNtBa_3str7pattern13simd_contains0ECsgjwxzEoLG5s_12polars_error", scope: !1058, file: !1055, line: 366, type: !19, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1062 = distinct !DILocation(line: 1811, column: 60, scope: !1048, inlinedAt: !1042)
!1063 = !DILocation(line: 1917, column: 50, scope: !1064, inlinedAt: !1065)
!1064 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !936, file: !683, line: 1917, type: !19, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1065 = distinct !DILocation(line: 823, column: 12, scope: !1050, inlinedAt: !1051)
!1066 = !DILocation(line: 1077, column: 17, scope: !1067, inlinedAt: !1068)
!1067 = distinct !DISubprogram(name: "unchecked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_sub", scope: !928, file: !247, line: 1065, type: !19, scopeLine: 1065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1068 = distinct !DILocation(line: 220, column: 28, scope: !1069, inlinedAt: !1070)
!1069 = distinct !DISubprogram(name: "backward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step18backward_unchecked", scope: !931, file: !914, line: 218, type: !19, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1070 = distinct !DILocation(line: 825, column: 33, scope: !1050, inlinedAt: !1051)
!1071 = !DILocation(line: 1811, column: 73, scope: !1072, inlinedAt: !1074)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !240, line: 1811, column: 73)
!1073 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains0CsgjwxzEoLG5s_12polars_error", scope: !241, file: !240, line: 1811, type: !13, scopeLine: 1811, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1074 = distinct !DILocation(line: 374, column: 20, scope: !1075, inlinedAt: !1078)
!1075 = distinct !DISubprogram(name: "{closure#0}<usize, core::str::pattern::simd_contains::{closure_env#0}>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgjwxzEoLG5s_12polars_error", scope: !1076, file: !1055, line: 373, type: !19, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1076 = !DINamespace(name: "check", scope: !1077)
!1077 = !DINamespace(name: "rfind", scope: !1058)
!1078 = distinct !DILocation(line: 238, column: 21, scope: !1054, inlinedAt: !1060)
!1079 = !{!1080, !1082, !1084, !1086, !1037}
!1080 = distinct !{!1080, !1081, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains0CsgjwxzEoLG5s_12polars_error: argument 0"}
!1081 = distinct !{!1081, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains0CsgjwxzEoLG5s_12polars_error"}
!1082 = distinct !{!1082, !1083, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgjwxzEoLG5s_12polars_error: argument 0"}
!1083 = distinct !{!1083, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgjwxzEoLG5s_12polars_error"}
!1084 = distinct !{!1084, !1085, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsgjwxzEoLG5s_12polars_error: argument 0"}
!1085 = distinct !{!1085, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsgjwxzEoLG5s_12polars_error"}
!1086 = distinct !{!1086, !1085, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsgjwxzEoLG5s_12polars_error: argument 1"}
!1087 = !DILocation(line: 238, column: 21, scope: !1054, inlinedAt: !1060)
!1088 = !DILocation(line: 1821, column: 25, scope: !1089, inlinedAt: !1042)
!1089 = distinct !DILexicalBlock(scope: !1048, file: !240, line: 1804, column: 5)
!1090 = !DILocation(line: 1821, column: 8, scope: !1089, inlinedAt: !1042)
!1091 = !DILocation(line: 158, column: 13, scope: !1092, inlinedAt: !1095)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !677, line: 157, column: 13)
!1093 = distinct !DISubprogram(name: "equal_same_length<u8, u8>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCsgjwxzEoLG5s_12polars_error", scope: !1094, file: !677, line: 152, type: !19, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1094 = !DINamespace(name: "{impl#5}", scope: !680)
!1095 = distinct !DILocation(line: 25, column: 22, scope: !1096, inlinedAt: !1098)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !677, line: 21, column: 9)
!1097 = distinct !DISubprogram(name: "eq<u8, u8>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCsgjwxzEoLG5s_12polars_error", scope: !679, file: !677, line: 20, type: !19, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1098 = distinct !DILocation(line: 2124, column: 13, scope: !1099, inlinedAt: !1100)
!1099 = distinct !DISubprogram(name: "eq<[u8], [u8]>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCsgjwxzEoLG5s_12polars_error", scope: !685, file: !683, line: 2123, type: !19, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1100 = distinct !DILocation(line: 1822, column: 60, scope: !1101, inlinedAt: !1102)
!1101 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss_0CsgjwxzEoLG5s_12polars_error", scope: !241, file: !240, line: 1822, type: !13, scopeLine: 1822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1102 = distinct !DILocation(line: 2911, column: 20, scope: !1103, inlinedAt: !1106)
!1103 = distinct !DISubprogram(name: "{closure#0}<&[u8], core::str::pattern::simd_contains::{closure_env#1}>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error", scope: !1104, file: !293, line: 2910, type: !13, scopeLine: 2910, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1104 = !DINamespace(name: "check", scope: !1105)
!1105 = !DINamespace(name: "any", scope: !294)
!1106 = distinct !DILocation(line: 2509, column: 21, scope: !1107, inlinedAt: !1110)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !293, line: 2508, column: 41)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !293, line: 2507, column: 9)
!1109 = distinct !DISubprogram(name: "try_fold<core::slice::iter::Windows<u8>, (), core::iter::traits::iterator::Iterator::any::check::{closure_env#0}<&[u8], core::str::pattern::simd_contains::{closure_env#1}>, core::ops::control_flow::ControlFlow<(), ()>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsgjwxzEoLG5s_12polars_error", scope: !294, file: !293, line: 2501, type: !19, scopeLine: 2501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1110 = distinct !DILocation(line: 2915, column: 14, scope: !1111, inlinedAt: !1112)
!1111 = distinct !DISubprogram(name: "any<core::slice::iter::Windows<u8>, core::str::pattern::simd_contains::{closure_env#1}>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator3anyNCNvNtNtBa_3str7pattern13simd_containss_0ECsgjwxzEoLG5s_12polars_error", scope: !294, file: !293, line: 2903, type: !19, scopeLine: 2903, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1112 = distinct !DILocation(line: 1822, column: 52, scope: !1089, inlinedAt: !1042)
!1113 = !{!1032, !1037}
!1114 = !{!1115, !1117}
!1115 = distinct !{!1115, !1116, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsgjwxzEoLG5s_12polars_error: argument 0"}
!1116 = distinct !{!1116, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsgjwxzEoLG5s_12polars_error"}
!1117 = distinct !{!1117, !1116, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsgjwxzEoLG5s_12polars_error: argument 1"}
!1118 = !DILocation(line: 2509, column: 21, scope: !1107, inlinedAt: !1110)
!1119 = !DILocation(line: 573, column: 27, scope: !1120, inlinedAt: !1121)
!1120 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgjwxzEoLG5s_12polars_error", scope: !266, file: !256, line: 567, type: !19, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1121 = distinct !DILocation(line: 19, column: 15, scope: !1122, inlinedAt: !1125)
!1122 = !DILexicalBlockFile(scope: !1123, file: !256, discriminator: 2)
!1123 = distinct !DISubprogram(name: "index<u8, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range9RangeFromjEE5indexCsgjwxzEoLG5s_12polars_error", scope: !1124, file: !256, line: 18, type: !19, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1124 = !DINamespace(name: "{impl#0}", scope: !258)
!1125 = distinct !DILocation(line: 1361, column: 29, scope: !1126, inlinedAt: !1130)
!1126 = distinct !DILexicalBlock(scope: !1128, file: !1127, line: 1360, column: 13)
!1127 = !DIFile(filename: "library/core/src/slice/iter.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "f33ab2e22fe09095bf73c41c52bd166c")
!1128 = distinct !DISubprogram(name: "next<u8>", linkageName: "_RNvXsY_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error", scope: !1129, file: !1127, line: 1356, type: !19, scopeLine: 1356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1129 = !DINamespace(name: "{impl#62}", scope: !320)
!1130 = distinct !DILocation(line: 2508, column: 34, scope: !1107, inlinedAt: !1110)
!1131 = !DILocation(line: 1357, column: 12, scope: !1128, inlinedAt: !1130)
!1132 = !DILocation(line: 89, column: 24, scope: !1133, inlinedAt: !1135)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !256, line: 87, column: 5)
!1134 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECsgjwxzEoLG5s_12polars_error", scope: !258, file: !256, line: 82, type: !19, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1135 = distinct !DILocation(line: 574, column: 15, scope: !1136, inlinedAt: !1121)
!1136 = distinct !DILexicalBlock(scope: !1120, file: !256, line: 573, column: 13)
!1137 = !DILocation(line: 153, column: 18, scope: !1138, inlinedAt: !1143)
!1138 = distinct !DISubprogram(name: "splat<u8, 16>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core9core_simd6vectorINtB2_4SimdhKj10_E5splatCsgjwxzEoLG5s_12polars_error", scope: !1140, file: !1139, line: 151, type: !19, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1139 = !DIFile(filename: "library/core/src/../../portable-simd/crates/core_simd/src/vector.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "e9007a8fc0e081f1d4ddc6b9e6405748")
!1140 = !DINamespace(name: "Simd", scope: !1141)
!1141 = !DINamespace(name: "vector", scope: !1142)
!1142 = !DINamespace(name: "core_simd", scope: !12)
!1143 = distinct !DILocation(line: 1825, column: 30, scope: !1089, inlinedAt: !1042)
!1144 = !DILocation(line: 153, column: 18, scope: !1138, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 1826, column: 31, scope: !1146, inlinedAt: !1042)
!1146 = distinct !DILexicalBlock(scope: !1089, file: !240, line: 1825, column: 5)
!1147 = !DILocation(line: 89, column: 24, scope: !1148, inlinedAt: !1150)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !256, line: 87, column: 5)
!1149 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECsgjwxzEoLG5s_12polars_error", scope: !258, file: !256, line: 82, type: !19, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1150 = distinct !DILocation(line: 574, column: 15, scope: !1151, inlinedAt: !1153)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !256, line: 573, column: 13)
!1152 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgjwxzEoLG5s_12polars_error", scope: !266, file: !256, line: 567, type: !19, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1153 = distinct !DILocation(line: 19, column: 15, scope: !1154, inlinedAt: !1155)
!1154 = distinct !DISubprogram(name: "index<u8, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range9RangeFromjEE5indexCsgjwxzEoLG5s_12polars_error", scope: !1124, file: !256, line: 18, type: !19, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1155 = distinct !DILocation(line: 1829, column: 33, scope: !1156, inlinedAt: !1042)
!1156 = distinct !DILexicalBlock(scope: !1146, file: !240, line: 1826, column: 5)
!1157 = !DILocation(line: 1832, column: 9, scope: !1158, inlinedAt: !1042)
!1158 = distinct !DILexicalBlock(scope: !1156, file: !240, line: 1829, column: 5)
!1159 = !DILocation(line: 1833, column: 5, scope: !1158, inlinedAt: !1042)
!1160 = !DILocation(line: 1878, column: 11, scope: !1161, inlinedAt: !1042)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !240, line: 1874, column: 5)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !240, line: 1873, column: 5)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !240, line: 1857, column: 5)
!1164 = distinct !DILexicalBlock(scope: !1158, file: !240, line: 1832, column: 5)
!1165 = !DILocation(line: 1874, column: 22, scope: !1162, inlinedAt: !1042)
!1166 = !DILocation(line: 0, scope: !1163, inlinedAt: !1042)
!1167 = !DILocation(line: 1891, column: 11, scope: !1161, inlinedAt: !1042)
!1168 = !DILocation(line: 552, column: 14, scope: !1169, inlinedAt: !1170)
!1169 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECsgjwxzEoLG5s_12polars_error", scope: !44, file: !43, line: 531, type: !19, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1170 = distinct !DILocation(line: 1809, column: 9, scope: !1171, inlinedAt: !1173)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !43, line: 1801, column: 5)
!1172 = distinct !DISubprogram(name: "read_unaligned<core::core_simd::vector::Simd<u8, 16>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr14read_unalignedINtNtNtB4_9core_simd6vector4SimdhKj10_EECsgjwxzEoLG5s_12polars_error", scope: !44, file: !43, line: 1800, type: !19, scopeLine: 1800, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1173 = distinct !DILocation(line: 1212, column: 18, scope: !1174, inlinedAt: !1175)
!1174 = distinct !DISubprogram(name: "read_unaligned<core::core_simd::vector::Simd<u8, 16>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPINtNtNtB6_9core_simd6vector4SimdhKj10_E14read_unalignedCsgjwxzEoLG5s_12polars_error", scope: !335, file: !334, line: 1207, type: !19, scopeLine: 1207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1175 = distinct !DILocation(line: 1860, column: 76, scope: !1176, inlinedAt: !1177)
!1176 = distinct !DISubprogram(name: "{closure#3}", linkageName: "_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CsgjwxzEoLG5s_12polars_error", scope: !241, file: !240, line: 1857, type: !19, scopeLine: 1857, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1177 = distinct !DILocation(line: 1881, column: 24, scope: !1178, inlinedAt: !1042)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !240, line: 1880, column: 9)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !240, line: 1880, column: 9)
!1180 = distinct !DILexicalBlock(scope: !1161, file: !240, line: 1879, column: 9)
!1181 = !{!1182, !1032}
!1182 = distinct !{!1182, !1183, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CsgjwxzEoLG5s_12polars_error: argument 0"}
!1183 = distinct !{!1183, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CsgjwxzEoLG5s_12polars_error"}
!1184 = !DILocation(line: 863, column: 18, scope: !1185, inlinedAt: !1186)
!1185 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPh3addCsgjwxzEoLG5s_12polars_error", scope: !335, file: !334, line: 829, type: !19, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1186 = distinct !DILocation(line: 1863, column: 40, scope: !1187, inlinedAt: !1177)
!1187 = distinct !DILexicalBlock(scope: !1176, file: !240, line: 1860, column: 9)
!1188 = !DILocation(line: 552, column: 14, scope: !1169, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 1809, column: 9, scope: !1190, inlinedAt: !1192)
!1190 = !DILexicalBlockFile(scope: !1191, file: !43, discriminator: 2)
!1191 = distinct !DILexicalBlock(scope: !1172, file: !43, line: 1801, column: 5)
!1192 = distinct !DILocation(line: 1212, column: 18, scope: !1193, inlinedAt: !1194)
!1193 = !DILexicalBlockFile(scope: !1174, file: !334, discriminator: 2)
!1194 = distinct !DILocation(line: 1863, column: 81, scope: !1187, inlinedAt: !1177)
!1195 = !DILocation(line: 31, column: 52, scope: !1196, inlinedAt: !1202)
!1196 = distinct !DISubprogram(name: "simd_eq<16>", linkageName: "_RNvXs2_NtNtNtNtCscgRAwXFJnXP_4core9core_simd4simd3cmp2eqINtNtBb_6vector4SimdhKj10_ENtB5_13SimdPartialEq7simd_eqCsgjwxzEoLG5s_12polars_error", scope: !1198, file: !1197, line: 28, type: !19, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1197 = !DIFile(filename: "library/core/src/../../portable-simd/crates/core_simd/src/simd/cmp/eq.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7685cb03cbca8e20bb043063063cbb87")
!1198 = !DINamespace(name: "{impl#4}", scope: !1199)
!1199 = !DINamespace(name: "eq", scope: !1200)
!1200 = !DINamespace(name: "cmp", scope: !1201)
!1201 = !DINamespace(name: "simd", scope: !1142)
!1202 = distinct !DILocation(line: 1865, column: 32, scope: !1203, inlinedAt: !1177)
!1203 = distinct !DILexicalBlock(scope: !1187, file: !240, line: 1862, column: 9)
!1204 = !DILocation(line: 31, column: 52, scope: !1196, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 1866, column: 31, scope: !1206, inlinedAt: !1177)
!1206 = distinct !DILexicalBlock(scope: !1203, file: !240, line: 1865, column: 9)
!1207 = !DILocation(line: 481, column: 23, scope: !1208, inlinedAt: !1212)
!1208 = distinct !DISubprogram(name: "bitand<i8, 16>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core9core_simd5masksINtB5_4MaskaKj10_ENtNtNtB9_3ops3bit6BitAnd6bitandCsgjwxzEoLG5s_12polars_error", scope: !1210, file: !1209, line: 479, type: !19, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1209 = !DIFile(filename: "library/core/src/../../portable-simd/crates/core_simd/src/masks.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "9d00f8d04957d898984aa5da18e7e089")
!1210 = !DINamespace(name: "{impl#9}", scope: !1211)
!1211 = !DINamespace(name: "masks", scope: !1142)
!1212 = distinct !DILocation(line: 1867, column: 29, scope: !1213, inlinedAt: !1177)
!1213 = distinct !DILexicalBlock(scope: !1206, file: !240, line: 1866, column: 9)
!1214 = !DILocation(line: 1881, column: 13, scope: !1178, inlinedAt: !1042)
!1215 = !DILocation(line: 863, column: 18, scope: !1185, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 1860, column: 51, scope: !1176, inlinedAt: !1177)
!1217 = !DILocation(line: 1885, column: 16, scope: !1218, inlinedAt: !1042)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !240, line: 1884, column: 13)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !240, line: 1883, column: 9)
!1220 = distinct !DILexicalBlock(scope: !1180, file: !240, line: 1883, column: 9)
!1221 = !DILocation(line: 0, scope: !1162, inlinedAt: !1042)
!1222 = !DILocation(line: 1886, column: 38, scope: !1218, inlinedAt: !1042)
!1223 = !DILocation(line: 1886, column: 64, scope: !1218, inlinedAt: !1042)
!1224 = !DILocation(line: 1886, column: 27, scope: !1218, inlinedAt: !1042)
!1225 = !DILocation(line: 1886, column: 17, scope: !1218, inlinedAt: !1042)
!1226 = !DILocation(line: 1885, column: 13, scope: !1218, inlinedAt: !1042)
!1227 = !DILocation(line: 1889, column: 9, scope: !1180, inlinedAt: !1042)
!1228 = !DILocation(line: 1903, column: 13, scope: !1161, inlinedAt: !1042)
!1229 = !DILocation(line: 863, column: 18, scope: !1185, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 1860, column: 51, scope: !1176, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 1904, column: 16, scope: !1232, inlinedAt: !1042)
!1232 = distinct !DILexicalBlock(scope: !1161, file: !240, line: 1903, column: 5)
!1233 = !DILocation(line: 552, column: 14, scope: !1169, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 1809, column: 9, scope: !1171, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 1212, column: 18, scope: !1174, inlinedAt: !1236)
!1236 = distinct !DILocation(line: 1860, column: 76, scope: !1176, inlinedAt: !1231)
!1237 = !{!1238, !1032}
!1238 = distinct !{!1238, !1239, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CsgjwxzEoLG5s_12polars_error: argument 0"}
!1239 = distinct !{!1239, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CsgjwxzEoLG5s_12polars_error"}
!1240 = !DILocation(line: 863, column: 18, scope: !1185, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 1863, column: 40, scope: !1187, inlinedAt: !1231)
!1242 = !DILocation(line: 552, column: 14, scope: !1169, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 1809, column: 9, scope: !1190, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 1212, column: 18, scope: !1193, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 1863, column: 81, scope: !1187, inlinedAt: !1231)
!1246 = !DILocation(line: 31, column: 52, scope: !1196, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 1865, column: 32, scope: !1203, inlinedAt: !1231)
!1248 = !DILocation(line: 31, column: 52, scope: !1196, inlinedAt: !1249)
!1249 = distinct !DILocation(line: 1866, column: 31, scope: !1206, inlinedAt: !1231)
!1250 = !DILocation(line: 481, column: 23, scope: !1208, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 1867, column: 29, scope: !1213, inlinedAt: !1231)
!1252 = !DILocation(line: 314, column: 39, scope: !1253, inlinedAt: !1257)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !1209, line: 311, column: 13)
!1254 = distinct !DISubprogram(name: "to_bitmask_impl<i8, u16, 16, 16>", linkageName: "_RINvNvMs0_NtNtCscgRAwXFJnXP_4core9core_simd5masksINtB8_4MaskpKpE10to_bitmask15to_bitmask_implatKj10_KB1w_ECsgjwxzEoLG5s_12polars_error", scope: !1255, file: !1209, line: 305, type: !19, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1255 = !DINamespace(name: "to_bitmask", scope: !1256)
!1256 = !DINamespace(name: "{impl#2}", scope: !1211)
!1257 = distinct !DILocation(line: 326, column: 22, scope: !1258, inlinedAt: !1260)
!1258 = distinct !DISubprogram(name: "to_bitmask<i8, 16>", linkageName: "_RNvMs0_NtNtCscgRAwXFJnXP_4core9core_simd5masksINtB5_4MaskaKj10_E10to_bitmaskCsgjwxzEoLG5s_12polars_error", scope: !1259, file: !1209, line: 299, type: !13, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1259 = !DINamespace(name: "Mask", scope: !1211)
!1260 = distinct !DILocation(line: 1868, column: 25, scope: !1261, inlinedAt: !1231)
!1261 = distinct !DILexicalBlock(scope: !1213, file: !240, line: 1867, column: 9)
!1262 = !DILocation(line: 1905, column: 8, scope: !1263, inlinedAt: !1042)
!1263 = distinct !DILexicalBlock(scope: !1232, file: !240, line: 1904, column: 5)
!1264 = !DILocation(line: 863, column: 18, scope: !1185, inlinedAt: !1265)
!1265 = distinct !DILocation(line: 1860, column: 51, scope: !1176, inlinedAt: !1266)
!1266 = distinct !DILocation(line: 1892, column: 20, scope: !1161, inlinedAt: !1042)
!1267 = !DILocation(line: 552, column: 14, scope: !1169, inlinedAt: !1268)
!1268 = distinct !DILocation(line: 1809, column: 9, scope: !1171, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 1212, column: 18, scope: !1174, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 1860, column: 76, scope: !1176, inlinedAt: !1266)
!1271 = !{!1272, !1032}
!1272 = distinct !{!1272, !1273, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CsgjwxzEoLG5s_12polars_error: argument 0"}
!1273 = distinct !{!1273, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CsgjwxzEoLG5s_12polars_error"}
!1274 = !DILocation(line: 863, column: 18, scope: !1185, inlinedAt: !1275)
!1275 = distinct !DILocation(line: 1863, column: 40, scope: !1187, inlinedAt: !1266)
!1276 = !DILocation(line: 552, column: 14, scope: !1169, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 1809, column: 9, scope: !1190, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 1212, column: 18, scope: !1193, inlinedAt: !1279)
!1279 = distinct !DILocation(line: 1863, column: 81, scope: !1187, inlinedAt: !1266)
!1280 = !DILocation(line: 31, column: 52, scope: !1196, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 1865, column: 32, scope: !1203, inlinedAt: !1266)
!1282 = !DILocation(line: 31, column: 52, scope: !1196, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 1866, column: 31, scope: !1206, inlinedAt: !1266)
!1284 = !DILocation(line: 481, column: 23, scope: !1208, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 1867, column: 29, scope: !1213, inlinedAt: !1266)
!1286 = !DILocation(line: 314, column: 39, scope: !1253, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 326, column: 22, scope: !1258, inlinedAt: !1288)
!1288 = distinct !DILocation(line: 1868, column: 25, scope: !1261, inlinedAt: !1266)
!1289 = !DILocation(line: 1893, column: 12, scope: !1290, inlinedAt: !1042)
!1290 = distinct !DILexicalBlock(scope: !1161, file: !240, line: 1892, column: 9)
!1291 = !DILocation(line: 1896, column: 9, scope: !1290, inlinedAt: !1042)
!1292 = !DILocation(line: 1894, column: 23, scope: !1290, inlinedAt: !1042)
!1293 = !DILocation(line: 1894, column: 13, scope: !1290, inlinedAt: !1042)
!1294 = !DILocation(line: 1893, column: 9, scope: !1290, inlinedAt: !1042)
!1295 = !DILocation(line: 1910, column: 1, scope: !1158, inlinedAt: !1042)
!1296 = !DILocation(line: 1910, column: 2, scope: !1041, inlinedAt: !1042)
!1297 = !DILocation(line: 1906, column: 19, scope: !1263, inlinedAt: !1042)
!1298 = !DILocation(line: 1906, column: 9, scope: !1263, inlinedAt: !1042)
!1299 = !DILocation(line: 1905, column: 5, scope: !1263, inlinedAt: !1042)
!1300 = !DILocation(line: 158, column: 13, scope: !1301, inlinedAt: !1303)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !677, line: 157, column: 13)
!1302 = distinct !DISubprogram(name: "equal_same_length<u8, u8>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCsgjwxzEoLG5s_12polars_error", scope: !1094, file: !677, line: 152, type: !19, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!1303 = !DILocation(line: 25, column: 22, scope: !676, inlinedAt: !681)
!1304 = !DILocation(line: 22, column: 9, scope: !676, inlinedAt: !681)
end_hunk_2
