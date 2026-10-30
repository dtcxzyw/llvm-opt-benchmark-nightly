Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/cfg-be3bb60c55bf578b.cfg.327ef00847a80928-cgu.2?download=true
inline.NumInlined: 101
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@1 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @0, [24 x i8] zeroinitializer }>, align 8
@2 = private unnamed_addr constant [22 x i8] c"crates/cfg/src/lib.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\15\00\00\00\00\00\00\00\B5\00\00\00L\00\00\00" }>, align 8
@_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols5true_10SYMBOL_STR = external global { ptr, i64 }
@_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols6false_10SYMBOL_STR = external global { ptr, i64 }
@_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL = external local_unnamed_addr global { { { i64 } } }
@4 = private unnamed_addr constant [40 x i8] c"cannot remove `true` or `false` from cfg", align 1
@5 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsl_NtCsaMQbKjKCVRW_12tracing_core5fieldNtNtCshzWfHUSfYae_4core3fmt9ArgumentsNtB5_5Value6record }>, align 8
@6 = private unnamed_addr constant [38 x i8] c"cannot insert `true` or `false` to cfg", align 1
@7 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNvMs0_Cs4kMRW8zVVbM_3cfgNtBc_10CfgOptions5check0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtNtBc_8cfg_expr7CfgAtomEE9call_once6vtableBc_, ptr @_RNCNvMs0_Cs4kMRW8zVVbM_3cfgNtB7_10CfgOptions5check0B7_, ptr @_RNCNvMs0_Cs4kMRW8zVVbM_3cfgNtB7_10CfgOptions5check0B7_ }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\15\00\00\00\00\00\00\00\B6\00\00\00\18\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\15\00\00\00\00\00\00\00\B7\00\00\00\19\00\00\00" }>, align 8
@_RNvNvMs0_Cs4kMRW8zVVbM_3cfgNtB7_10CfgOptions10apply_diff10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvMs0_Cs4kMRW8zVVbM_3cfgNtB9_10CfgOptions10apply_diff10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvMs0_Cs4kMRW8zVVbM_3cfgNtB7_10CfgOptions15insert_any_atom10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvMs0_Cs4kMRW8zVVbM_3cfgNtB9_10CfgOptions15insert_any_atom10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@10 = private unnamed_addr constant [30 x i8] c"event crates/cfg/src/lib.rs:83", align 1
@11 = private unnamed_addr constant [3 x i8] c"cfg", align 1
@12 = private unnamed_addr constant [7 x i8] c"message", align 1
@13 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @12, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsaMQbKjKCVRW_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest, ptr @_RNvXs_NtCsaMQbKjKCVRW_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata, ptr @_RNvYNtNtCsaMQbKjKCVRW_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCs4kMRW8zVVbM_3cfg }>, align 8
@15 = private unnamed_addr constant [21 x i8] c"crates/cfg/src/lib.rs", align 1
@_RNvNvNvMs0_Cs4kMRW8zVVbM_3cfgNtB9_10CfgOptions10apply_diff10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00S\00\00\00", ptr @10, [8 x i8] c"\1E\00\00\00\00\00\00\00", ptr @11, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @13, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvMs0_Cs4kMRW8zVVbM_3cfgNtB7_10CfgOptions10apply_diff10___CALLSITE, ptr @14, ptr @11, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @15, [9 x i8] c"\15\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@16 = private unnamed_addr constant [30 x i8] c"event crates/cfg/src/lib.rs:93", align 1
@_RNvNvNvMs0_Cs4kMRW8zVVbM_3cfgNtB9_10CfgOptions15insert_any_atom10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00]\00\00\00", ptr @16, [8 x i8] c"\1E\00\00\00\00\00\00\00", ptr @11, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @13, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvMs0_Cs4kMRW8zVVbM_3cfgNtB7_10CfgOptions15insert_any_atom10___CALLSITE, ptr @14, ptr @11, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @15, [9 x i8] c"\15\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@17 = private unnamed_addr constant [7 x i8] c"enable ", align 1
@18 = private unnamed_addr constant [2 x i8] c"; ", align 1
@19 = private unnamed_addr constant [2 x i8] c", ", align 1
@20 = private unnamed_addr constant [5 x i8] c" and ", align 1
@21 = private unnamed_addr constant [8 x i8] c"disable ", align 1
@22 = private unnamed_addr constant [2 x i8] c"is", align 1
@23 = private unnamed_addr constant [3 x i8] c"are", align 1
@24 = private unnamed_addr constant [13 x i8] c"\01 \C0\08 enabled\00", align 1
@25 = private unnamed_addr constant [14 x i8] c"\01 \C0\09 disabled\00", align 1
@26 = private unnamed_addr constant [10 x i8] c"CfgOptions", align 1
@27 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECs4kMRW8zVVbM_3cfg, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs4kMRW8zVVbM_3cfg }>, align 8
@28 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -654675508425364404 to ptr), ptr inttoptr (i64 7626636266285069727 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs4kMRW8zVVbM_3cfg.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs4kMRW8zVVbM_3cfg.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEEB1j_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEEB1j_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEEB1f_(ptr captures(address) %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %cond = icmp eq i64 %.8.val, 0
  br i1 %cond, label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_.exit4, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.a = icmp eq i64 %i.c, %.8.val
  br i1 %i.a, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.0.i1 ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  %.val8.i = load ptr, ptr %i.b, align 8, !alias.scope !12, !noundef !4
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val9.i = load ptr, ptr %i.d, align 8, !alias.scope !12
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEBF_(ptr %.val8.i, ptr %.val9.i)
          to label %bb.b unwind label %bb.d, !noalias !12

bb.c:                                             ; preds = %.lr.ph3
  %i.e = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.f = icmp eq i64 %i.e, %.8.val
  br i1 %i.f, label %.body, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.c, %.8.val
  br i1 %i.h, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.e, %bb.c ], [ %i.c, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.1.i2 ; 2 uses
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !12, !noundef !4
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val7.i = load ptr, ptr %i.j, align 8, !alias.scope !12
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEBF_(ptr %.val.i, ptr %.val7.i) #18
          to label %bb.c unwind label %bb.e, !noalias !12

bb.e:                                             ; preds = %.lr.ph3
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17, !noalias !12
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %i.l = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef 8) #19
  resume { ptr, i32 } %i.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEBG_.exit: ; preds = %bb.b
  %i.m = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef 8) #19
  br label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_.exit4

_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_.exit4: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEBG_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg(ptr %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = ptrtoint ptr %.0.val to i64
  %i.d = and i64 %i.c, 1
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %_RNvXs3_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.0.val, i64 -1    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.f = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs4kMRW8zVVbM_3cfg(ptr noundef nonnull %i.e)
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  %i.i = load atomic i64, ptr %i.h acquire, align 8
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d, !prof !5

bb.c:                                             ; preds = %bb.b
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXs3_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop.exit

_RNvXs3_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop.exit: ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEBF_(ptr %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = icmp eq ptr %.0.val, null
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.h = ptrtoint ptr %.8.val to i64
  %i.i = and i64 %i.h, 1
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %.8.val, i64 -1    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs4kMRW8zVVbM_3cfg(ptr noundef nonnull %i.j)
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 %i.l ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.m, ptr %i.f, align 8
  %i.n = load atomic i64, ptr %i.m acquire, align 8
  %i.o = icmp eq i64 %i.n, 2
  br i1 %i.o, label %bb.d, label %bb.e, !prof !5

bb.d:                                             ; preds = %bb.c
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.m, ptr %i.e, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit

bb.f:                                             ; preds = %bb.a
  %i.p = ptrtoint ptr %.0.val to i64
  %i.q = and i64 %i.p, 1
  %.not.i.i.i4 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i4, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit7, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.0.val, i64 -1    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs4kMRW8zVVbM_3cfg(ptr noundef nonnull %i.r)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.t ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.u, ptr %i.d, align 8
  %i.v = load atomic i64, ptr %i.u acquire, align 8
  %i.w = icmp eq i64 %i.v, 2
  br i1 %i.w, label %bb.h, label %.noexc5, !prof !5

bb.h:                                             ; preds = %.noexc
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %.noexc5 unwind label %bb.i

.noexc5:                                          ; preds = %bb.h, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.u, ptr %i.c, align 8
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc6 unwind label %bb.i

.noexc6:                                          ; preds = %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit7

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit: ; preds = %bb.l, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit7, %bb.e, %bb.b
  ret void

bb.i:                                             ; preds = %.noexc5, %bb.h, %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg(ptr nonnull %.8.val) #18
          to label %bb.n unwind label %bb.m

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit7: ; preds = %.noexc6, %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.y = ptrtoint ptr %.8.val to i64
  %i.z = and i64 %i.y, 1
  %.not.i.i.i8 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i8, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit7
  %i.aa = getelementptr i8, ptr %.8.val, i64 -1   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %i.ab = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs4kMRW8zVVbM_3cfg(ptr noundef nonnull %i.aa)
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 %i.ac ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ad, ptr %i.b, align 8
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8
  %i.af = icmp eq i64 %i.ae, 2
  br i1 %i.af, label %bb.k, label %bb.l, !prof !5

bb.k:                                             ; preds = %bb.j
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ad, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit

bb.m:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
