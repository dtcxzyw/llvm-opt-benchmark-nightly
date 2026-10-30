Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/cfg-be3bb60c55bf578b.cfg.327ef00847a80928-cgu.7?download=true
inline.NumInlined: 94
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [68 x i8] c"internal error: entered unreachable code: disjunction in conjunction", align 1
@1 = private unnamed_addr constant [22 x i8] c"crates/cfg/src/dnf.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\15\00\00\00\00\00\00\00\9D\00\00\00$\00\00\00" }>, align 8
@3 = private unnamed_addr constant [57 x i8] c"6internal error: entered unreachable code: non-literal \C0\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\15\00\00\00\00\00\00\00\C3\00\00\002\00\00\00" }>, align 8
@5 = private unnamed_addr constant [54 x i8] c"3internal error: entered unreachable code: non-atom \C0\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\15\00\00\00\00\00\00\00\C1\00\00\00\16\00\00\00" }>, align 8
@7 = private unnamed_addr constant [4 x i8] c"all(", align 1
@8 = private unnamed_addr constant [1 x i8] c")", align 1
@9 = private unnamed_addr constant [2 x i8] c", ", align 1
@10 = private unnamed_addr constant [4 x i8] c"not(", align 1
@11 = private unnamed_addr constant [9 x i8] c"<invalid>", align 1
@12 = private unnamed_addr constant [4 x i8] c"any(", align 1
@13 = private unnamed_addr constant [7 x i8] c"Invalid", align 1
@14 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtB6_5Debug3fmtBA_ }>, align 8
@15 = private unnamed_addr constant [4 x i8] c"Atom", align 1
@16 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtB6_5Debug3fmtB1a_ }>, align 8
@17 = private unnamed_addr constant [3 x i8] c"All", align 1
@18 = private unnamed_addr constant [3 x i8] c"Any", align 1
@19 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtB6_5Debug3fmtB19_ }>, align 8
@20 = private unnamed_addr constant [3 x i8] c"Not", align 1

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg3dnf7LiteralEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs4kMRW8zVVbM_3cfg3dnf7LiteralENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4kMRW8zVVbM_3cfg3dnf7LiteralENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs4kMRW8zVVbM_3cfg3dnf7LiteralEEB1j_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4kMRW8zVVbM_3cfg3dnf7LiteralENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs4kMRW8zVVbM_3cfg3dnf7LiteralEEB1j_.exit: ; preds = %bb.b
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
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEEB1j_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1j_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1j_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1f_(ptr captures(address) %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %cond = icmp eq i64 %.8.val, 0
  br i1 %cond, label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_.exit4, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.a = icmp eq i64 %i.c, %.8.val
  br i1 %i.a, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.0.i1
  %i.c = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.b)
          to label %bb.b unwind label %bb.d, !inline_history !13

bb.c:                                             ; preds = %.lr.ph3
  %i.d = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.e = icmp eq i64 %i.d, %.8.val
  br i1 %i.e, label %.body, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = icmp eq i64 %i.c, %.8.val
  br i1 %i.g, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.d, %bb.c ], [ %i.c, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.h) #15
          to label %bb.c unwind label %bb.e, !inline_history !13

bb.e:                                             ; preds = %.lr.ph3
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14, !noalias !16, !inline_history !13
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %i.j = mul nuw nsw i64 %.8.val, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef 8) #16
  resume { ptr, i32 } %i.f

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBG_.exit: ; preds = %bb.b
  %i.k = mul nuw nsw i64 %.8.val, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef 8) #16
  br label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_.exit4

_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_.exit4: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBG_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4kMRW8zVVbM_3cfg14InactiveReasonEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEEB1c_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #15
          to label %common.resume unwind label %bb.h

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEEB1c_.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEEB1c_.exit2 unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEEB1c_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEEB1c_.exit2: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEEB1c_.exit
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.h:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable
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
  br i1 %i.j, label %bb.c, label %bb.d, !prof !4

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
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg3dnf11ConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs4kMRW8zVVbM_3cfg3dnf7LiteralENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg3dnf7LiteralEEB1c_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4kMRW8zVVbM_3cfg3dnf7LiteralENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs4kMRW8zVVbM_3cfg3dnf7LiteralEEB1j_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs4kMRW8zVVbM_3cfg3dnf7LiteralEEB1j_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg3dnf7LiteralEEB1c_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4kMRW8zVVbM_3cfg3dnf7LiteralENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg3dnf7DnfExprEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs4kMRW8zVVbM_3cfg3dnf11ConjunctionENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg3dnf11ConjunctionEEB1c_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4kMRW8zVVbM_3cfg3dnf11ConjunctionENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs4kMRW8zVVbM_3cfg3dnf11ConjunctionEEB1j_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs4kMRW8zVVbM_3cfg3dnf11ConjunctionEEB1j_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg3dnf11ConjunctionEEB1c_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4kMRW8zVVbM_3cfg3dnf11ConjunctionENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
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
  br i1 %i.o, label %bb.d, label %bb.e, !prof !4

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
  br i1 %i.w, label %bb.h, label %.noexc5, !prof !4

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
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg(ptr nonnull %.8.val) #15
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
  br i1 %i.af, label %bb.k, label %bb.l, !prof !4

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
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.n:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !6
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_.exit
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !25, !nonnull !6, !noundef !6 ; 3 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1e_.exit unwind label %bb.c, !noalias !25, !inline_history !19

common.resume:                                    ; preds = %.body14, %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.ae, %.body14 ], [ %i.p, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 24, i64 noundef 8) #16, !noalias !25
  br label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1e_.exit: ; preds = %bb.b
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 24, i64 noundef 8) #16, !noalias !25
  br label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_.exit

_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_.exit: ; preds = %bb.j, %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1f_.exit8, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1f_.exit, %bb.d, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1e_.exit, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.f, align 8
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEBF_(ptr %.val, ptr %.val1)
  br label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !26, !nonnull !6, !noundef !6 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !26, !noundef !6 ; 6 uses
  %cond = icmp eq i64 %i.j, 0
  br i1 %cond, label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph27

bb.f:                                             ; preds = %.lr.ph27
  %i.k = icmp eq i64 %i.m, %i.j
  br i1 %i.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1f_.exit, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.e, %bb.f
  %.sroa.0.0.i26 = phi i64 [ %i.m, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.0.0.i26
  %i.m = add nuw i64 %.sroa.0.0.i26, 1            ; 4 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l)
          to label %bb.f unwind label %bb.h, !noalias !26, !inline_history !22

bb.g:                                             ; preds = %.lr.ph29
  %i.n = add nuw i64 %.sroa.0.1.i28, 1            ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.j
  br i1 %i.o, label %.body, label %.lr.ph29

bb.h:                                             ; preds = %.lr.ph27
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq i64 %i.m, %i.j
  br i1 %i.q, label %.body, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.h, %bb.g
  %.sroa.0.1.i28 = phi i64 [ %i.n, %bb.g ], [ %i.m, %bb.h ] ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.0.1.i28
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #15
          to label %bb.g unwind label %bb.i, !noalias !26, !inline_history !22

bb.i:                                             ; preds = %.lr.ph29
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14, !noalias !26, !inline_history !22
  unreachable

.body:                                            ; preds = %bb.g, %bb.h
  %i.t = mul nuw nsw i64 %i.j, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef 8) #16, !noalias !26
  br label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1f_.exit: ; preds = %bb.f
  %i.u = mul nuw nsw i64 %i.j, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef 8) #16, !noalias !26
  br label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_.exit

bb.j:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !27, !nonnull !6, !noundef !6 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !27, !noundef !6 ; 6 uses
  %cond30 = icmp eq i64 %i.y, 0
  br i1 %cond30, label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %i.z = icmp eq i64 %i.ab, %i.y
  br i1 %i.z, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1f_.exit8, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %.sroa.0.0.i1223 = phi i64 [ %i.ab, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %.sroa.0.0.i1223
  %i.ab = add nuw i64 %.sroa.0.0.i1223, 1         ; 4 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa)
          to label %bb.k unwind label %bb.m, !noalias !27, !inline_history !22

bb.l:                                             ; preds = %.lr.ph25
  %i.ac = add nuw i64 %.sroa.0.1.i1324, 1         ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %i.y
  br i1 %i.ad, label %.body14, label %.lr.ph25

bb.m:                                             ; preds = %.lr.ph
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = icmp eq i64 %i.ab, %i.y
  br i1 %i.af, label %.body14, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.m, %bb.l
  %.sroa.0.1.i1324 = phi i64 [ %i.ac, %bb.l ], [ %i.ab, %bb.m ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %.sroa.0.1.i1324
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag) #15
          to label %bb.l unwind label %bb.n, !noalias !27, !inline_history !22

bb.n:                                             ; preds = %.lr.ph25
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14, !noalias !27, !inline_history !22
  unreachable

.body14:                                          ; preds = %bb.l, %bb.m
  %i.ai = mul nuw nsw i64 %i.y, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef range(i64 1, -9223372036854775808) %i.ai, i64 noundef 8) #16, !noalias !27
  br label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1f_.exit8: ; preds = %bb.k
  %i.aj = mul nuw nsw i64 %i.y, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef range(i64 1, -9223372036854775808) %i.aj, i64 noundef 8) #16, !noalias !27
  br label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs4kMRW8zVVbM_3cfg3dnfNtB2_7DnfExpr12why_inactive(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !6 ; 2 uses
  %.idx56 = mul nuw nsw i64 %i.g, 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx56
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %._crit_edge55, label %.lr.ph54

bb.b:                                             ; preds = %._crit_edge
  %i.j = icmp eq ptr %i.k, %i.h
  br i1 %i.j, label %._crit_edge55, label %.lr.ph54

.lr.ph54:                                         ; preds = %bb.a, %bb.b
  %.sroa.04.052 = phi ptr [ %i.k, %bb.b ], [ %i.e, %bb.a ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.052, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.052, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.04.052, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.o, 5
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph

._crit_edge55:                                    ; preds = %bb.b, %bb.a
  %i.r = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.s = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !6 ; 4 uses
  %i.t = icmp ult i64 %i.s, 2
  br i1 %i.t, label %bb.ac, label %bb.z, !prof !38

.lr.ph:                                           ; preds = %.lr.ph54, %bb.f
  %.sroa.07.042 = phi ptr [ %i.u, %bb.f ], [ %i.m, %.lr.ph54 ] ; 5 uses
  %.sroa.06.041 = phi i1 [ %.sroa.06.1, %bb.f ], [ true, %.lr.ph54 ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.07.042, i64 32 ; 2 uses
  %i.v = load i64, ptr %.sroa.07.042, align 8, !range !7, !noundef !6
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.c, label %.loopexit

._crit_edge:                                      ; preds = %bb.f
  br i1 %.sroa.06.1, label %.loopexit, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.07.042, i64 8 ; 4 uses
  %i.y = invoke noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12contains_keyBO_EBS_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph54, %.lr.ph
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4kMRW8zVVbM_3cfg14InactiveReasonEBD_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b)
  br label %bb.y

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.m, %bb.i, %bb.h, %bb.c, %bb.ah, %bb.ag, %bb.af, %bb.ac, %bb.ab, %bb.aa
  %lpad.loopexit.split-lp57 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.v, %bb.r, %bb.o, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.at, %bb.r ], [ %i.aj, %bb.j ], [ %i.ao, %bb.o ], [ %i.bb, %bb.v ], [ %lpad.loopexit.split-lp57, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4kMRW8zVVbM_3cfg14InactiveReasonEBD_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b) #15
          to label %bb.ak unwind label %bb.aj

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.07.042, i64 24
  %i.aa = load i8, ptr %i.z, align 8, !range !8, !noundef !6
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = xor i1 %i.y, %i.ab
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.x, align 8, !noundef !6
  %.not.i17 = icmp eq ptr %i.ad, null             ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.07.042, i64 16 ; 4 uses
  br i1 %i.y, label %bb.l, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.x, %bb.t
  %.sroa.06.1 = phi i1 [ false, %bb.x ], [ false, %bb.t ], [ %.sroa.06.041, %bb.d ] ; 2 uses
  %i.af = icmp eq ptr %i.u, %i.p
  br i1 %i.af, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %bb.e
  br i1 %.not.i17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.h
  %i.ah = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %_RNvXs5_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit unwind label %bb.j, !noalias !39

bb.i:                                             ; preds = %bb.g
  %i.ai = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %_RNvXs5_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %.noexc
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg(ptr nonnull %i.ag) #15
          to label %.body unwind label %bb.k, !noalias !39

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14, !noalias !39
  unreachable

bb.l:                                             ; preds = %bb.e
  br i1 %.not.i17, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc18:                                         ; preds = %bb.m
  %i.am = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %_RNvXs5_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit22 unwind label %bb.o, !noalias !40

bb.n:                                             ; preds = %bb.l
  %i.an = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %_RNvXs5_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %.noexc18
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg(ptr nonnull %i.al) #15
          to label %.body unwind label %bb.p, !noalias !40

bb.p:                                             ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14, !noalias !40
  unreachable

_RNvXs5_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit: ; preds = %bb.i, %.noexc
  %.sroa.631.0 = phi ptr [ %i.ai, %bb.i ], [ %i.ah, %.noexc ] ; 2 uses
  %.sroa.030.0 = phi ptr [ null, %bb.i ], [ %i.ag, %.noexc ] ; 2 uses
  %i.aq = load i64, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !41, !noundef !6 ; 3 uses
  %i.ar = load i64, ptr %i.c, align 8, !range !9, !alias.scope !41, !noundef !6
  %i.as = icmp eq i64 %i.aq, %i.ar
  br i1 %i.as, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_RNvXs5_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.t unwind label %bb.r, !noalias !42

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEBF_(ptr %.sroa.030.0, ptr nonnull %.sroa.631.0) #15
          to label %.body unwind label %bb.s, !noalias !42

end_hunk_0
begin_hunk_1_@_RNvMNtCs4kMRW8zVVbM_3cfg3dnfNtB2_7DnfExpr3new:bb.a
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !68
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.j = load i64, ptr %1, align 8, !range !5, !alias.scope !71, !noundef !6 ; 2 uses
  switch i64 %i.j, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.b
    i64 2, label %.invoke
    i64 3, label %.invoke
    i64 4, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.d, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a
  invoke fastcc void @_RNvXsb_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #17
          to label %_RNvNtCs4kMRW8zVVbM_3cfg3dnf8make_nnf.exit.i unwind label %bb.l, !noalias !72, !inline_history !10

.invoke:                                          ; preds = %bb.a, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !71, !nonnull !6, !noundef !6 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !71, !noundef !6
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.n
  %i.p = invoke { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1B_8adapters3map3MapINtNtNtB1D_5slice4iter4IterBQ_ENvNtBU_3dnf8make_nnfEEBU_(ptr noundef nonnull %i.l, ptr noundef nonnull %i.o)
          to label %_RNvNtCs4kMRW8zVVbM_3cfg3dnf8make_nnf.exit.sink.split.i unwind label %bb.l, !noalias !72, !inline_history !10 ; 2 uses

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !71, !nonnull !6, !noundef !6
  invoke void @_RNvNtCs4kMRW8zVVbM_3cfg3dnf12make_nnf_neg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %_RNvNtCs4kMRW8zVVbM_3cfg3dnf8make_nnf.exit.i unwind label %bb.l, !noalias !72, !inline_history !10

_RNvNtCs4kMRW8zVVbM_3cfg3dnf8make_nnf.exit.sink.split.i: ; preds = %.invoke
  %i.s = extractvalue { ptr, i64 } %i.p, 0
  %i.t = extractvalue { ptr, i64 } %i.p, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.s, ptr %i.u, align 8, !alias.scope !69, !noalias !68
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.t, ptr %i.v, align 8, !alias.scope !69, !noalias !68
  store i64 %i.j, ptr %i.h, align 8, !alias.scope !69, !noalias !68
  br label %_RNvNtCs4kMRW8zVVbM_3cfg3dnf8make_nnf.exit.i

_RNvNtCs4kMRW8zVVbM_3cfg3dnf8make_nnf.exit.i:     ; preds = %_RNvNtCs4kMRW8zVVbM_3cfg3dnf8make_nnf.exit.sink.split.i, %bb.c, %bb.b
  invoke void @_RNvNtCs4kMRW8zVVbM_3cfg3dnf8make_dnf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.d unwind label %bb.l, !noalias !72

bb.d:                                             ; preds = %_RNvNtCs4kMRW8zVVbM_3cfg3dnf8make_nnf.exit.i
  %i.w = load i64, ptr %i.f, align 8, !range !5, !noalias !68, !noundef !6 ; 2 uses
  switch i64 %i.w, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.e
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !68
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !73
  %i.x = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #16, !noalias !73 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.f, label %bb.ai, !prof !4

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #18
          to label %.noexc20.i unwind label %bb.g, !noalias !72

.noexc20.i:                                       ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.f)
          to label %.thread.i unwind label %bb.h, !noalias !72

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14, !noalias !72
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !68, !nonnull !6, !align !11, !noundef !6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !68, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !68
  invoke fastcc void @_RNvMs0_NtCs4kMRW8zVVbM_3cfg3dnfNtB5_11Conjunction3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 %i.ac, i64 noundef %i.ae)
          to label %bb.m unwind label %.thread70.i, !noalias !72

bb.j:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !68, !nonnull !6, !noundef !6 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !68, !noundef !6 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !68
  %i.aj = icmp sgt i64 %i.ai, -1
  tail call void @llvm.assume(i1 %i.aj)
  store i64 %i.ai, ptr %i.d, align 8, !noalias !68
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.ag, ptr %i.ak, align 8, !noalias !68
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store i64 %i.ai, ptr %i.al, align 8, !noalias !68
  %i.am = lshr i64 %i.ai, 1                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i, label %_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBS_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ai
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEB14_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.as, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEB14_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ao = xor i64 %.sroa.0.017.i.i, -1
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %.sroa.0.017.i.i
  %i.aq = getelementptr [24 x i8], ptr %i.an, i64 %i.ao
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs4kMRW8zVVbM_3cfg(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, i64 noundef 3)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEB14_.exit.i.i unwind label %bb.k, !noalias !72

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #14, !noalias !72
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEB14_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.as = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.as, %i.am
  br i1 %exitcond.not.i.i, label %_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBS_.exit.loopexit.i, label %.lr.ph.i.i

_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBS_.exit.loopexit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEB14_.exit.i.i
  %.pre.i = load i64, ptr %i.al, align 8, !noalias !68
  br label %_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBS_.exit.i

_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBS_.exit.i: ; preds = %_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBS_.exit.loopexit.i, %bb.j
  %i.at = phi i64 [ %.pre.i, %_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBS_.exit.loopexit.i ], [ %i.ai, %bb.j ] ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBS_.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.4.0..sroa_idx89.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.590.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.t

.thread70.i:                                      ; preds = %bb.r, %bb.i
  %lpad.thr_comm68.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread57.i

bb.l:                                             ; preds = %.invoke, %bb.ai, %_RNvNtCs4kMRW8zVVbM_3cfg3dnf8make_nnf.exit.i, %bb.c, %bb.b
  %lpad.thr_comm.split-lp69.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.m:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4kMRW8zVVbM_3cfg3dnf11ConjunctionE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.thread73.i unwind label %bb.n, !noalias !74

bb.n:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg3dnf11ConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #15
          to label %.thread.i unwind label %bb.o, !noalias !65

bb.o:                                             ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14, !noalias !65
  unreachable

.thread73.i:                                      ; preds = %bb.m
  %i.ax = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !75, !nonnull !6, !noundef !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !65
  store i64 1, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !68
  br label %_RNvMs4_NtCs4kMRW8zVVbM_3cfg3dnfNtB5_7Builder5lower.exit

bb.p:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !68
  br label %_RNvMs4_NtCs4kMRW8zVVbM_3cfg3dnfNtB5_7Builder5lower.exit

.body.thread.i:                                   ; preds = %bb.ae, %.body.i, %bb.w
  %.pn.i = phi { ptr, i32 } [ %i.bo, %.body.i ], [ %i.bk, %bb.w ], [ %i.bu, %bb.ae ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #15
          to label %.thread57.i unwind label %bb.ah, !noalias !65

._crit_edge.i:                                    ; preds = %bb.aa, %_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBS_.exit.i
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.r unwind label %bb.q, !noalias !65

bb.q:                                             ; preds = %._crit_edge.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.thread57.i unwind label %bb.s, !noalias !65

bb.r:                                             ; preds = %._crit_edge.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.p unwind label %.thread70.i, !noalias !65

bb.s:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14, !noalias !65
  unreachable

bb.t:                                             ; preds = %bb.aa, %.lr.ph.i
  %i.ba = phi i64 [ %i.at, %.lr.ph.i ], [ %i.bp, %bb.aa ] ; 2 uses
  %i.bb = add nsw i64 %i.ba, -1                   ; 3 uses
  store i64 %i.bb, ptr %i.al, align 8, !noalias !68
  %i.bc = load i64, ptr %i.d, align 8, !range !9, !noalias !68, !noundef !6
  %i.bd = icmp samesign ult i64 %i.bb, %i.bc
  call void @llvm.assume(i1 %i.bd)
  %i.be = load ptr, ptr %i.ak, align 8, !noalias !68, !nonnull !6, !noundef !6
  %i.bf = icmp samesign ult i64 %i.ba, 384307168202282327
  call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %i.bb ; 3 uses
  %.sroa.091.0.copyload.i = load i64, ptr %i.bg, align 8, !noalias !65 ; 2 uses
  %.sroa.492.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.492.0.copyload.i = load ptr, ptr %.sroa.492.0..sroa_idx.i, align 8, !noalias !65 ; 5 uses
  %.sroa.593.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.sroa.593.0.copyload.i = load i64, ptr %.sroa.593.0..sroa_idx.i, align 8, !noalias !65 ; 4 uses
  %i.bh = icmp eq i64 %.sroa.091.0.copyload.i, 3
  br i1 %i.bh, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !68
  store i64 %.sroa.091.0.copyload.i, ptr %i.b, align 8, !noalias !68
  store ptr %.sroa.492.0.copyload.i, ptr %.sroa.4.0..sroa_idx89.i, align 8, !noalias !68
  store i64 %.sroa.593.0.copyload.i, ptr %.sroa.590.0..sroa_idx.i, align 8, !noalias !68
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !76
  %i.bi = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #16, !noalias !76 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.v, label %bb.ab, !prof !4

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #18
          to label %.noexc29.i unwind label %bb.w, !noalias !65

.noexc29.i:                                       ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.b)
          to label %.body.thread.i unwind label %bb.x, !noalias !65

bb.x:                                             ; preds = %bb.w
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14, !noalias !65
  unreachable

bb.y:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.492.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !68
  %i.bm = icmp ult i64 %.sroa.593.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %.sroa.492.0.copyload.i, i64 %.sroa.593.0.copyload.i
  store ptr %.sroa.492.0.copyload.i, ptr %i.a, align 8, !noalias !68
  store ptr %.sroa.492.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !68
  store i64 %.sroa.593.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !68
  store ptr %i.bn, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !68
  invoke void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtB6_9into_iter8IntoIterBG_EEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.z unwind label %.body.i, !noalias !65

.body.i:                                          ; preds = %bb.ab, %bb.y
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !68
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ag, %bb.z
  %i.bp = load i64, ptr %i.al, align 8, !noalias !68, !noundef !6 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %._crit_edge.i, label %bb.t

bb.ab:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !68
  invoke fastcc void @_RNvMs0_NtCs4kMRW8zVVbM_3cfg3dnfNtB5_11Conjunction3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 %i.bi, i64 noundef 1)
          to label %bb.ac unwind label %.body.i, !noalias !65

bb.ac:                                            ; preds = %bb.ab
  %i.br = load i64, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !77, !noundef !6 ; 3 uses
  %i.bs = load i64, ptr %i.i, align 8, !range !9, !alias.scope !77, !noundef !6
  %i.bt = icmp eq i64 %i.br, %i.bs
  br i1 %i.bt, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4kMRW8zVVbM_3cfg3dnf11ConjunctionE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ag unwind label %bb.ae, !noalias !78

bb.ae:                                            ; preds = %bb.ad
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg3dnf11ConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #15
          to label %.body.thread.i unwind label %bb.af, !noalias !65

bb.af:                                            ; preds = %bb.ae
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14, !noalias !65
  unreachable

bb.ag:                                            ; preds = %bb.ad, %bb.ac
  %i.bw = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !77, !nonnull !6, !noundef !6
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !65
  %i.by = add i64 %i.br, 1
  store i64 %i.by, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !68
  br label %bb.aa

bb.ah:                                            ; preds = %.thread.i, %bb.an, %.body.thread.i
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14, !noalias !65
  unreachable

bb.ai:                                            ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !72
  invoke fastcc void @_RNvMs0_NtCs4kMRW8zVVbM_3cfg3dnfNtB5_11Conjunction3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 %i.x, i64 noundef 1)
          to label %bb.aj unwind label %bb.l, !noalias !72

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4kMRW8zVVbM_3cfg3dnf11ConjunctionE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.am unwind label %bb.ak, !noalias !79

bb.ak:                                            ; preds = %bb.aj
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg3dnf11ConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #15
          to label %.thread.i unwind label %bb.al, !noalias !65

bb.al:                                            ; preds = %bb.ak
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14, !noalias !65
  unreachable

bb.am:                                            ; preds = %bb.aj
  %i.cc = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !80, !nonnull !6, !noundef !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !65
  store i64 1, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !68
  br label %_RNvMs4_NtCs4kMRW8zVVbM_3cfg3dnfNtB5_7Builder5lower.exit

.thread57.i:                                      ; preds = %bb.q, %.body.thread.i, %.thread70.i
  %.pn853.i = phi { ptr, i32 } [ %i.ay, %bb.q ], [ %lpad.thr_comm68.i, %.thread70.i ], [ %.pn.i, %.body.thread.i ] ; 2 uses
  %i.cd = and i64 %i.w, 6
  %switch13.i = icmp eq i64 %i.cd, 2
  br i1 %switch13.i, label %.thread.i, label %bb.an

bb.an:                                            ; preds = %.thread57.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #15
          to label %.thread.i unwind label %bb.ah, !noalias !65

bb.ao:                                            ; preds = %.thread.i
  resume { ptr, i32 } %.pn1044.i

.thread.i:                                        ; preds = %bb.an, %.thread57.i, %bb.ak, %bb.n, %bb.l, %bb.g
  %.pn1044.i = phi { ptr, i32 } [ %i.z, %bb.g ], [ %.pn853.i, %.thread57.i ], [ %lpad.thr_comm.split-lp69.i, %bb.l ], [ %.pn853.i, %bb.an ], [ %i.ca, %bb.ak ], [ %i.av, %bb.n ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg3dnf7DnfExprEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #15
          to label %bb.ao unwind label %bb.ah, !noalias !65

_RNvMs4_NtCs4kMRW8zVVbM_3cfg3dnfNtB5_7Builder5lower.exit: ; preds = %.thread73.i, %bb.p, %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !alias.scope !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCs4kMRW8zVVbM_3cfg3dnfNtB5_11Conjunction3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 0, ptr %i.k, align 8
  %i.l = icmp ult i64 %2, 384307168202282326
  tail call void @llvm.assume(i1 %i.l)
  %.idx = mul nuw nsw i64 %2, 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %1, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store ptr %i.m, ptr %.sroa.6.0..sroa_idx, align 8
  %i.n = icmp eq i64 %2, 0
  br i1 %i.n, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph: ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit

.body.thread:                                     ; preds = %.body.loopexit.split-lp.thread, %bb.aa, %bb.ab, %bb.m, %bb.q, %bb.s, %bb.h, %bb.h, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.aa ], [ %lpad.loopexit, %.body.loopexit.split-lp.thread ], [ %lpad.loopexit.split-lp29, %bb.ae ], [ %i.ag, %bb.q ], [ %i.ae, %bb.m ], [ %i.aa, %bb.h ], [ %i.aa, %bb.s ], [ %i.aa, %bb.h ], [ %i.aw, %bb.ab ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1t_.exit unwind label %bb.af

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph, %bb.x
  %i.t = phi ptr [ %1, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph ], [ %i.aq, %bb.x ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !91
  %.sroa.0.0.copyload14 = load i64, ptr %i.t, align 8, !noalias !91 ; 3 uses
  %.not7 = icmp eq i64 %.sroa.0.0.copyload14, -1
  br i1 %.not7, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit
  %.sroa.7.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.sroa.0.0.copyload14, ptr %i.g, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx15, i64 16, i1 false)
  switch i64 %.sroa.0.0.copyload14, label %default.unreachable [
    i64 0, label %bb.d
    i64 1, label %bb.d
    i64 2, label %bb.t
    i64 3, label %bb.u
    i64 4, label %bb.d
  ], !prof !92

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit, %bb.x, %bb.a
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1t_.exit10 unwind label %bb.c

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1t_.exit: ; preds = %.body.thread, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.v, %bb.c ], [ %.pn, %.body.thread ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg3dnf7LiteralEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #15
          to label %bb.ag unwind label %bb.af

bb.c:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1t_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1t_.exit10: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.w = load i64, ptr %i.f, align 8, !range !5, !alias.scope !94, !noundef !6
  switch i64 %i.w, label %default.unreachable31 [
    i64 0, label %bb.n
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.f
    i64 4, label %bb.g
  ], !prof !95

default.unreachable31:                            ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.x = load <2 x ptr>, ptr %i.s, align 8, !alias.scope !96
  br label %_RNvMs2_NtCs4kMRW8zVVbM_3cfg3dnfNtB5_7Literal3new.exit

bb.f:                                             ; preds = %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96
  store ptr %i.f, ptr %i.a, align 8, !noalias !96
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsa_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !96
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #18
          to label %bb.i unwind label %bb.h, !noalias !93

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !96
  %i.y = load ptr, ptr %i.s, align 8, !alias.scope !94, !nonnull !6, !align !11, !noundef !6 ; 6 uses
  store ptr %i.y, ptr %i.c, align 8, !noalias !96
  %i.z = load i64, ptr %i.y, align 8, !range !5, !noalias !96, !noundef !6 ; 2 uses
  switch i64 %i.z, label %bb.j [
    i64 0, label %bb.l
    i64 1, label %.thread18.i
  ], !prof !97

bb.h:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.pre.i = load i64, ptr %i.f, align 8, !range !5, !alias.scope !94
  switch i64 %.pre.i, label %bb.s [
    i64 1, label %.body.thread
    i64 4, label %.body.thread
  ]

bb.i:                                             ; preds = %bb.j, %bb.f
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !96
  store ptr %i.c, ptr %i.b, align 8, !noalias !96
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsn_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtBL_, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !96
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #18
          to label %bb.i unwind label %bb.p, !noalias !96

.thread18.i:                                      ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8, !noalias !94
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.thread18.i
  %i.ad = phi <2 x ptr> [ undef, %bb.l ], [ %i.ac, %.thread18.i ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef 24, i64 noundef 8) #16, !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !96
  br label %_RNvMs2_NtCs4kMRW8zVVbM_3cfg3dnfNtB5_7Literal3new.exit

bb.l:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y)
          to label %bb.k unwind label %bb.m, !noalias !96

bb.m:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef 24, i64 noundef 8) #16, !noalias !96
  br label %.body.thread

bb.n:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNvMs2_NtCs4kMRW8zVVbM_3cfg3dnfNtB5_7Literal3new.exit unwind label %.body.loopexit.split-lp.thread

bb.o:                                             ; preds = %bb.s, %bb.r
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14, !noalias !93
  unreachable

bb.p:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %i.c, align 8, !noalias !96, !nonnull !6, !noundef !6 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !range !5, !noalias !96, !noundef !6
end_hunk_1
begin_hunk_2_@_RNvNtCs4kMRW8zVVbM_3cfg3dnf12make_nnf_neg:bb.a
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.k, label %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprE3newBI_.exit, !prof !4

bb.k:                                             ; preds = %_RNvXs5_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #18
          to label %.noexc2 unwind label %bb.l

.noexc2:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #15
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprE3newBI_.exit: ; preds = %_RNvXs5_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.v, align 8
  store i64 4, ptr %0, align 8
  br label %_RNvNtCs4kMRW8zVVbM_3cfg3dnf8make_nnf.exit

bb.n:                                             ; preds = %tailrecurse
  %i.w = getelementptr inbounds nuw i8, ptr %.tr4, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.tr4, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noundef !6
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.z
  %i.ab = tail call { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1B_8adapters3map3MapINtNtNtB1D_5slice4iter4IterBQ_ENvNtBU_3dnf12make_nnf_negEEBU_(ptr noundef nonnull %i.x, ptr noundef nonnull %i.aa) ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ad, ptr %i.af, align 8
  store i64 3, ptr %0, align 8
  br label %_RNvNtCs4kMRW8zVVbM_3cfg3dnf8make_nnf.exit

bb.o:                                             ; preds = %tailrecurse
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr4, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr4, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !6
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.aj
  %i.al = tail call { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1B_8adapters3map3MapINtNtNtB1D_5slice4iter4IterBQ_ENvNtBU_3dnf12make_nnf_negEEBU_(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ak) ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0
  %i.an = extractvalue { ptr, i64 } %i.al, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.an, ptr %i.ap, align 8
  store i64 2, ptr %0, align 8
  br label %_RNvNtCs4kMRW8zVVbM_3cfg3dnf8make_nnf.exit

bb.p:                                             ; preds = %tailrecurse
  %i.aq = getelementptr inbounds nuw i8, ptr %.tr4, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !6, !noundef !6 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.as = load i64, ptr %i.ar, align 8, !range !5, !alias.scope !116, !noundef !6
  switch i64 %i.as, label %default.unreachable28 [
    i64 0, label %bb.q
    i64 1, label %bb.q
    i64 2, label %bb.r
    i64 3, label %bb.s
    i64 4, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  tail call fastcc void @_RNvXsb_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar) #17, !inline_history !10
  br label %_RNvNtCs4kMRW8zVVbM_3cfg3dnf8make_nnf.exit

bb.r:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !116, !nonnull !6, !noundef !6 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !116, !noundef !6
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.aw
  %i.ay = tail call { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1B_8adapters3map3MapINtNtNtB1D_5slice4iter4IterBQ_ENvNtBU_3dnf8make_nnfEEBU_(ptr noundef nonnull %i.au, ptr noundef nonnull %i.ax), !noalias !117, !inline_history !10 ; 2 uses
  %i.az = extractvalue { ptr, i64 } %i.ay, 0
  %i.ba = extractvalue { ptr, i64 } %i.ay, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.bb, align 8, !alias.scope !115
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ba, ptr %i.bc, align 8, !alias.scope !115
  store i64 2, ptr %0, align 8, !alias.scope !115
  br label %_RNvNtCs4kMRW8zVVbM_3cfg3dnf8make_nnf.exit

bb.s:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !116, !nonnull !6, !noundef !6 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !116, !noundef !6
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %i.bg
  %i.bi = tail call { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1B_8adapters3map3MapINtNtNtB1D_5slice4iter4IterBQ_ENvNtBU_3dnf8make_nnfEEBU_(ptr noundef nonnull %i.be, ptr noundef nonnull %i.bh), !noalias !117, !inline_history !10 ; 2 uses
  %i.bj = extractvalue { ptr, i64 } %i.bi, 0
  %i.bk = extractvalue { ptr, i64 } %i.bi, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %i.bl, align 8, !alias.scope !115
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bk, ptr %i.bm, align 8, !alias.scope !115
  store i64 3, ptr %0, align 8, !alias.scope !115
  br label %_RNvNtCs4kMRW8zVVbM_3cfg3dnf8make_nnf.exit

bb.t:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !116, !nonnull !6, !noundef !6
  br label %tailrecurse

_RNvNtCs4kMRW8zVVbM_3cfg3dnf8make_nnf.exit:       ; preds = %bb.s, %bb.r, %bb.q, %bb.o, %bb.n, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprE3newBI_.exit, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprE3newBI_.exit1
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs4kMRW8zVVbM_3cfg3dnf7flatten(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %1, align 8, !range !5, !noundef !6 ; 3 uses
  switch i64 %i.c, label %bb.b [
    i64 2, label %bb.c
    i64 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !11, !noundef !6 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !6 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.g
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.75.0..sroa_idx, align 8
  %i.i = invoke { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1B_8adapters6cloned6ClonedINtNtB2N_7flatten7FlatMapINtNtNtB1D_5slice4iter4IterBQ_ERBP_NCNvNtBU_3dnf7flatten0EEEBU_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.f unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !6, !align !11, !noundef !6 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !6 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.m
  store ptr %i.k, ptr %i.a, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.n, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %.sroa.515.0..sroa_idx, align 8
  %.sroa.717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.717.0..sroa_idx, align 8
  %i.o = invoke { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1B_8adapters6cloned6ClonedINtNtB2N_7flatten7FlatMapINtNtNtB1D_5slice4iter4IterBQ_ERBP_NCNvNtBU_3dnf7flattens_0EEEBU_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.m unwind label %bb.l       ; 2 uses

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1f_(ptr nonnull %i.e, i64 %i.g) #15
          to label %.thread unwind label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.q = extractvalue { ptr, i64 } %i.i, 0
  %i.r = extractvalue { ptr, i64 } %i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.r, ptr %i.t, align 8
  store i64 2, ptr %0, align 8
  %cond = icmp eq i64 %i.g, 0
  br i1 %cond, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1f_.exit, label %.lr.ph65

bb.g:                                             ; preds = %.lr.ph65
  %i.u = icmp eq i64 %i.w, %i.g
  br i1 %i.u, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1f_.exit.sink.split, label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i64 = phi i64 [ %i.w, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.sroa.0.0.i.i64
  %i.w = add nuw nsw i64 %.sroa.0.0.i.i64, 1      ; 4 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.v)
          to label %bb.g unwind label %bb.i, !inline_history !118

bb.h:                                             ; preds = %.lr.ph67
  %i.x = add nuw nsw i64 %.sroa.0.1.i.i66, 1      ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.g
  br i1 %i.y, label %.body35, label %.lr.ph67

bb.i:                                             ; preds = %.lr.ph65
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = icmp eq i64 %i.w, %i.g
  br i1 %i.aa, label %.body35, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.i, %bb.h
  %.sroa.0.1.i.i66 = phi i64 [ %i.x, %bb.h ], [ %i.w, %bb.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.sroa.0.1.i.i66
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.ab) #15
          to label %bb.h unwind label %bb.j, !inline_history !118

bb.j:                                             ; preds = %.lr.ph67
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14, !noalias !123, !inline_history !118
  unreachable

.body35:                                          ; preds = %bb.o, %bb.h, %bb.p, %bb.i
  %.sink55 = phi i64 [ %i.g, %bb.i ], [ %i.m, %bb.p ], [ %i.g, %bb.h ], [ %i.m, %bb.o ]
  %.sink = phi ptr [ %i.e, %bb.i ], [ %i.k, %bb.p ], [ %i.e, %bb.h ], [ %i.k, %bb.o ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.as, %bb.p ], [ %i.z, %bb.h ], [ %i.as, %bb.o ] ; 2 uses
  %i.ad = mul nuw nsw i64 %.sink55, 24
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef range(i64 1, -9223372036854775808) %i.ad, i64 noundef 8) #16
  %i.ae = and i64 %i.c, 6
  %switch = icmp eq i64 %i.ae, 2
  br i1 %switch, label %.thread, label %bb.t

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1f_.exit.sink.split: ; preds = %bb.n, %bb.g
  %.sink58 = phi i64 [ %i.g, %bb.g ], [ %i.m, %bb.n ]
  %.sink56 = phi ptr [ %i.e, %bb.g ], [ %i.k, %bb.n ]
  %i.af = mul nuw nsw i64 %.sink58, 24
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink56, i64 noundef range(i64 1, -9223372036854775808) %i.af, i64 noundef 8) #16
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1f_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1f_.exit: ; preds = %bb.m, %bb.f, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1f_.exit.sink.split
  %i.ag = and i64 %i.c, 6
  %switch23 = icmp eq i64 %i.ag, 2
  br i1 %switch23, label %bb.s, label %bb.r

bb.k:                                             ; preds = %bb.e, %bb.l, %bb.t
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.l:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1f_(ptr nonnull %i.k, i64 %i.m) #15
          to label %.thread unwind label %bb.k

bb.m:                                             ; preds = %bb.d
  %i.aj = extractvalue { ptr, i64 } %i.o, 0
  %i.ak = extractvalue { ptr, i64 } %i.o, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ak, ptr %i.am, align 8
  store i64 3, ptr %0, align 8
  %cond68 = icmp eq i64 %i.m, 0
  br i1 %cond68, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1f_.exit, label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %i.an = icmp eq i64 %i.ap, %i.m
  br i1 %i.an, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1f_.exit.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %.sroa.0.0.i.i3161 = phi i64 [ %i.ap, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %.sroa.0.0.i.i3161
  %i.ap = add nuw nsw i64 %.sroa.0.0.i.i3161, 1   ; 4 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.ao)
          to label %bb.n unwind label %bb.p, !inline_history !118

bb.o:                                             ; preds = %.lr.ph63
  %i.aq = add nuw nsw i64 %.sroa.0.1.i.i3262, 1   ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.m
  br i1 %i.ar, label %.body35, label %.lr.ph63

bb.p:                                             ; preds = %.lr.ph
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = icmp eq i64 %i.ap, %i.m
  br i1 %i.at, label %.body35, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.p, %bb.o
  %.sroa.0.1.i.i3262 = phi i64 [ %i.aq, %bb.o ], [ %i.ap, %bb.p ] ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %.sroa.0.1.i.i3262
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.au) #15
          to label %bb.o unwind label %bb.q, !inline_history !118

bb.q:                                             ; preds = %.lr.ph63
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14, !noalias !124, !inline_history !118
  unreachable

bb.r:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1f_.exit
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %1)
  br label %bb.s

bb.s:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1f_.exit, %bb.r, %bb.b
  ret void

bb.t:                                             ; preds = %.body35
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #15
          to label %.thread unwind label %bb.k

.thread:                                          ; preds = %bb.l, %bb.e, %.body35, %bb.t
  %.pn45 = phi { ptr, i32 } [ %eh.lpad-body, %bb.t ], [ %eh.lpad-body, %.body35 ], [ %i.ai, %bb.l ], [ %i.p, %bb.e ]
  resume { ptr, i32 } %.pn45
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs4kMRW8zVVbM_3cfg3dnf8make_dnf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = load i64, ptr %1, align 8, !range !5, !noundef !6
  switch i64 %i.i, label %default.unreachable12 [
    i64 0, label %bb.b
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 4, label %bb.b
  ]

default.unreachable12:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.n = icmp ult i64 %i.m, 384307168202282326
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.m
  store ptr %i.k, ptr %i.e, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.k, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.m, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.o, ptr %.sroa.64.0..sroa_idx, align 8
  call void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENvNtB2p_3dnf8make_dnfEB2l_EB2p_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !6, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !128
  store i64 0, ptr %i.b, align 8, !noalias !128
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.t, align 8, !noalias !128
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.u, align 8, !noalias !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !128
  store i64 0, ptr %i.a, align 8, !noalias !128
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !noalias !128
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.w, align 8, !noalias !128
  invoke fastcc void @_RNvNvNtCs4kMRW8zVVbM_3cfg3dnf15distribute_conj2go(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.q, i64 noundef range(i64 0, 384307168202282326) %i.s)
          to label %bb.f unwind label %bb.e, !noalias !129

bb.d:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ab = icmp ult i64 %i.aa, 384307168202282326
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.aa
  store ptr %i.y, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.aa, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.ac, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ad = call { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1B_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterBQ_ENvNtBU_3dnf8make_dnfEEBU_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g) ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0
  %i.af = extractvalue { ptr, i64 } %i.ad, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ae, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.af, ptr %i.ah, align 8
  store i64 3, ptr %i.h, align 8
  call fastcc void @_RNvNtCs4kMRW8zVVbM_3cfg3dnf7flatten(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #15
          to label %bb.j unwind label %bb.i, !noalias !129

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !130
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1c_.exit.i unwind label %bb.g, !noalias !129

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.h, !noalias !129

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1c_.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.l unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14, !noalias !129
  unreachable

bb.i:                                             ; preds = %bb.j, %bb.e
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14, !noalias !129
  unreachable

bb.j:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #15
          to label %.body unwind label %bb.i, !noalias !129

bb.k:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1c_.exit.i, %bb.m, %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.j, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %bb.k ], [ %i.ai, %bb.j ], [ %i.aj, %bb.g ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #15
          to label %bb.s unwind label %bb.q

bb.l:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEB1c_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !128
  %i.an = invoke { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprE16into_boxed_sliceBI_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.m unwind label %bb.k       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.ao = extractvalue { ptr, i64 } %i.an, 0
  %i.ap = extractvalue { ptr, i64 } %i.an, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ao, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.ap, ptr %i.ar, align 8
  store i64 3, ptr %i.d, align 8
  invoke fastcc void @_RNvNtCs4kMRW8zVVbM_3cfg3dnf7flatten(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.n unwind label %bb.k

bb.n:                                             ; preds = %bb.m
end_hunk_2
