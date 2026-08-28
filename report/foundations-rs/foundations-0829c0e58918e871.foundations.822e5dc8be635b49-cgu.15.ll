Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.15?download=true
inline.NumInlined: 757
inline.NumDeleted: 452
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECsbaWXNhtWAp9_11foundations:bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !955
  ret void, !dbg !951

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !951
  unreachable, !dbg !951

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !951
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsbaWXNhtWAp9_11foundations8security3sys12scmp_arg_cmpEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !957 {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsbaWXNhtWAp9_11foundations8security3sys12scmp_arg_cmpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !958

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsbaWXNhtWAp9_11foundations8security3sys12scmp_arg_cmpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCsbaWXNhtWAp9_11foundations8security3sys12scmp_arg_cmpEEB1l_.exit unwind label %bb.d, !dbg !959

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsbaWXNhtWAp9_11foundations8security3sys12scmp_arg_cmpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !962
  ret void, !dbg !958

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !958
  unreachable, !dbg !958

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCsbaWXNhtWAp9_11foundations8security3sys12scmp_arg_cmpEEB1l_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !958
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !964 {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !965

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.d, !dbg !966

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !969
  ret void, !dbg !965

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !965
  unreachable, !dbg !965

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !965
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtBG_6string6StringEECsbaWXNhtWAp9_11foundations(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !971 {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.b, !dbg !972

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %bb.e unwind label %bb.c, !dbg !976

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !972
  unreachable, !dbg !972

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit unwind label %bb.d, !dbg !978

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.e, !dbg !980

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations.exit.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 24, i64 noundef 8) #32, !dbg !981
  ret void, !dbg !980

bb.e:                                             ; preds = %bb.d, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 24, i64 noundef 8) #32, !dbg !1001
  resume { ptr, i32 } %eh.lpad-body, !dbg !980
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1007 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !1008, !range !1009, !noundef !14
  %i.b = icmp eq i64 %i.a, -1, !dbg !1008
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !1008

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit, %bb.a
  ret void, !dbg !1008

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit unwind label %bb.d, !dbg !1010

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsbaWXNhtWAp9_11foundations.exit.i.i unwind label %bb.e, !dbg !1013

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !1010
  unreachable, !dbg !1010

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !1010

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !1015
  br label %bb.b, !dbg !1008
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtBG_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB3p_4SyncEL_EB2l_EECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !690 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1017), !dbg !1020
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1021), !dbg !1024
  %i.a = load ptr, ptr %0, align 8, !dbg !1026, !alias.scope !1032, !nonnull !14, !noundef !14
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !dbg !1033, !noalias !1032
  %i.c = icmp eq i64 %i.b, 1, !dbg !1036
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBG_5boxed3BoxDINtNtCs26L2cHvO7VQ_13cf_rustracing7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB3k_4SyncEL_EEECsbaWXNhtWAp9_11foundations.exit, !dbg !1036

bb.b:                                             ; preds = %bb.a
  fence acquire, !dbg !1037
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtB7_5boxed3BoxDINtNtCs26L2cHvO7VQ_13cf_rustracing7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtCs3oUPovFnLWP_4core6marker4SendNtB2R_4SyncEL_EE9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBG_5boxed3BoxDINtNtCs26L2cHvO7VQ_13cf_rustracing7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB3k_4SyncEL_EEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.c, !dbg !1039

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1020 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040), !dbg !1020
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043), !dbg !1046
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048), !dbg !1051
  %i.f = load ptr, ptr %i.e, align 8, !dbg !1053, !alias.scope !1057, !nonnull !14, !noundef !14
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !dbg !1058, !noalias !1057
  %i.h = icmp eq i64 %i.g, 1, !dbg !1061
  br i1 %i.h, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing4span18SharedSpanConsumerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations.exit, !dbg !1061

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !1062
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtCs26L2cHvO7VQ_13cf_rustracing4span12SpanConsumerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEL_E9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing4span18SharedSpanConsumerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.f, !dbg !1064

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBG_5boxed3BoxDINtNtCs26L2cHvO7VQ_13cf_rustracing7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB3k_4SyncEL_EEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1020 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1065), !dbg !1020
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068), !dbg !1071
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1073), !dbg !1076
  %i.j = load ptr, ptr %i.i, align 8, !dbg !1078, !alias.scope !1082, !nonnull !14, !noundef !14
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !dbg !1083, !noalias !1082
  %i.l = icmp eq i64 %i.k, 1, !dbg !1086
  br i1 %i.l, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing4span18SharedSpanConsumerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations.exit2, !dbg !1086

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBG_5boxed3BoxDINtNtCs26L2cHvO7VQ_13cf_rustracing7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB3k_4SyncEL_EEECsbaWXNhtWAp9_11foundations.exit
  fence acquire, !dbg !1087
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtCs26L2cHvO7VQ_13cf_rustracing4span12SpanConsumerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEL_E9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #29, !dbg !1089
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing4span18SharedSpanConsumerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations.exit2, !dbg !1089

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing4span18SharedSpanConsumerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations.exit2: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBG_5boxed3BoxDINtNtCs26L2cHvO7VQ_13cf_rustracing7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB3k_4SyncEL_EEECsbaWXNhtWAp9_11foundations.exit, %bb.e
  ret void, !dbg !1020

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !1020
  unreachable, !dbg !1020

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing4span18SharedSpanConsumerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.d, !dbg !1020
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECsbaWXNhtWAp9_11foundations(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1090 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %0 = trunc nuw i64 %.0.val to i1, !dbg !1091
  %i.b = icmp eq ptr %.8.val, null
  %or.cond = select i1 %0, i1 true, i1 %i.b, !dbg !1091
  br i1 %or.cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbaWXNhtWAp9_11foundations.exit, label %bb.b, !dbg !1091

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1092, !noalias !1097
  %i.c = ptrtoint ptr %.8.val to i64, !dbg !1100  ; 2 uses
  %i.d = and i64 %i.c, 3, !dbg !1103
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i
    i64 1, label %bb.d
  ], !dbg !1104, !prof !910

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult ptr %.8.val, inttoptr (i64 188978561024 to ptr), !dbg !1105
  %i.f = and i64 %i.c, 1095216660480, !dbg !1107
  %i.g = icmp ne i64 %i.f, 1095216660480, !dbg !1107
  tail call void @llvm.assume(i1 %i.e), !dbg !1109
  tail call void @llvm.assume(i1 %i.g), !dbg !1109
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i, !dbg !1110

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.8.val, i64 -1, !dbg !1111 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ], !dbg !1115
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1118 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !dbg !1118, !alias.scope !1119, !noalias !1097
  store i8 3, ptr %i.a, align 8, !dbg !1122, !alias.scope !1119, !noalias !1097
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i), !dbg !1123, !noalias !1097
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i, !dbg !1126

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1127, !noalias !1097
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbaWXNhtWAp9_11foundations.exit, !dbg !1128

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i, %bb.a
  ret void, !dbg !1091
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbaWXNhtWAp9_11foundations9telemetry5scope5ScopeNtNtNtBG_7tracing8internal10SharedSpanEEBI_(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1129 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1130
  %i.b = tail call noundef align 8 ptr @_RINvMs3_Cs6AjmZOIP0uL_12thread_localINtB6_11ThreadLocalINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEE10get_or_tryNCINvB2_6get_orNvYBR_NtNtBW_7default7Default7defaultE0uEB27_(ptr noundef nonnull align 8 %.0.val), !dbg !1136 ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  %i.c = load i64, ptr %i.b, align 8, !dbg !1143, !noundef !14
  %i.d = icmp eq i64 %i.c, 0, !dbg !1154
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !1154, !prof !264

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.b, align 8, !dbg !1155
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !1161 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !1161, !noundef !14 ; 3 uses
  %i.g = icmp eq i64 %i.f, 0, !dbg !1161
  br i1 %i.g, label %_RNvXs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry5scopeINtB5_5ScopeNtNtNtB7_7tracing8internal10SharedSpanENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_.exit, label %bb.d, !dbg !1161

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #31, !dbg !1164
  unreachable, !dbg !1164

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1166
  %i.i = add nsw i64 %i.f, -1, !dbg !1170         ; 3 uses
  store i64 %i.i, ptr %i.e, align 8, !dbg !1170
  %i.j = load i64, ptr %i.h, align 8, !dbg !1171, !range !108, !noundef !14
  %i.k = icmp samesign ult i64 %i.i, %i.j, !dbg !1178
  tail call void @llvm.assume(i1 %i.k), !dbg !1179
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1182
  %i.m = load ptr, ptr %i.l, align 8, !dbg !1182, !nonnull !14, !noundef !14
  %i.n = icmp ult i64 %i.f, 384307168202282327, !dbg !1191
  tail call void @llvm.assume(i1 %i.n), !dbg !1195
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.i, !dbg !1196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !dbg !1199
  %.pr.i = load i64, ptr %i.a, align 8, !dbg !1202, !alias.scope !1204 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204), !dbg !1207
  %i.p = icmp eq i64 %.pr.i, -1, !dbg !1202
  br i1 %i.p, label %_RNvXs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry5scopeINtB5_5ScopeNtNtNtB7_7tracing8internal10SharedSpanENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_.exit, label %bb.e, !dbg !1202

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208), !dbg !1202
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211), !dbg !1214
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1216 ; 4 uses
  switch i64 %.pr.i, label %_RNvXs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry5scopeINtB5_5ScopeNtNtNtB7_7tracing8internal10SharedSpanENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_.exit [
    i64 0, label %bb.f
    i64 1, label %bb.h
  ], !dbg !1216

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218), !dbg !1216
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221), !dbg !1224
  %i.r = load ptr, ptr %i.q, align 8, !dbg !1226, !alias.scope !1230, !nonnull !14, !noundef !14
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !dbg !1231, !noalias !1230
  %i.t = icmp eq i64 %i.s, 1, !dbg !1234
  br i1 %i.t, label %bb.g, label %_RNvXs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry5scopeINtB5_5ScopeNtNtNtB7_7tracing8internal10SharedSpanENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_.exit, !dbg !1234

bb.g:                                             ; preds = %bb.f
  fence acquire, !dbg !1235
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4live18live_reference_set19LiveReferenceHandleIBx_INtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockINtNtCs26L2cHvO7VQ_13cf_rustracing4span4SpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEEE9drop_slowBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #29
          to label %_RNvXs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry5scopeINtB5_5ScopeNtNtNtB7_7tracing8internal10SharedSpanENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_.exit unwind label %bb.j, !dbg !1237

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238), !dbg !1216
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1241), !dbg !1244
  %i.u = load ptr, ptr %i.q, align 8, !dbg !1246, !alias.scope !1250, !nonnull !14, !noundef !14
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !dbg !1251, !noalias !1250
  %i.w = icmp eq i64 %i.v, 1, !dbg !1254
  br i1 %i.w, label %bb.i, label %_RNvXs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry5scopeINtB5_5ScopeNtNtNtB7_7tracing8internal10SharedSpanENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_.exit, !dbg !1254

bb.i:                                             ; preds = %bb.h
  fence acquire, !dbg !1255
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockINtNtCs26L2cHvO7VQ_13cf_rustracing4span4SpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEE9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #29
          to label %_RNvXs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry5scopeINtB5_5ScopeNtNtNtB7_7tracing8internal10SharedSpanENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_.exit unwind label %bb.j, !dbg !1257

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load i64, ptr %i.b, align 8, !dbg !1258, !noundef !14
  %i.z = add i64 %i.y, 1, !dbg !1268
  store i64 %i.z, ptr %i.b, align 8, !dbg !1270
  resume { ptr, i32 } %i.x, !dbg !1276

_RNvXs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry5scopeINtB5_5ScopeNtNtNtB7_7tracing8internal10SharedSpanENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_.exit: ; preds = %bb.b, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %i.aa = load i64, ptr %i.b, align 8, !dbg !1277, !noundef !14
  %i.ab = add i64 %i.aa, 1, !dbg !1282
  store i64 %i.ab, ptr %i.b, align 8, !dbg !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1207
  ret void, !dbg !1286
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1287 {
bb.a:
  invoke void @_RNvXs7_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.b, !dbg !1288

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #28
          to label %bb.i unwind label %bb.h, !dbg !1288

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.d, !dbg !1289

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.i unwind label %bb.f, !dbg !1291

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.g, !dbg !1293

bb.f:                                             ; preds = %bb.d
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !1289
  unreachable, !dbg !1289

bb.g:                                             ; preds = %bb.e
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28, !dbg !1288
  %.val = load i32, ptr %i.e, align 4, !dbg !1288, !range !1295, !noundef !14
  %i.f = tail call noundef i32 @close(i32 noundef %.val) #32, !dbg !1296 ; 0 uses
  ret void, !dbg !1288

bb.h:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !1288
  unreachable, !dbg !1288

bb.i:                                             ; preds = %bb.b, %bb.d, %bb.g
  %.pn = phi { ptr, i32 } [ %i.a, %bb.b ], [ %i.d, %bb.g ], [ %i.b, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28, !dbg !1288
  %.val2 = load i32, ptr %i.h, align 4, !dbg !1288, !range !1295, !noundef !14
  %i.i = tail call noundef i32 @close(i32 noundef %.val2) #32, !dbg !1312 ; 0 uses
  resume { ptr, i32 } %.pn, !dbg !1288
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB1I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1318 {
bb.a:
  invoke void @_RNvXs7_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.c unwind label %bb.b, !dbg !1319

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RINvNtCs79E7Zj1jVsL_17tikv_jemalloc_ctl11stats_print8callbackQINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations:bb.a
  br i1 %i.y, label %.body, label %bb.l, !dbg !2124

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %.val13, i64 16, !dbg !2120
  %i.aa = load i64, ptr %i.z, align 8, !dbg !2125, !range !2113, !invariant.load !14
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef range(i64 1, 0) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #32, !dbg !2128
  br label %.body, !dbg !2133

bb.m:                                             ; preds = %__rust_try.exit
  %.not11 = icmp eq ptr %i.m, null, !dbg !2055
  br i1 %.not11, label %.thread, label %bb.n, !dbg !2081

bb.n:                                             ; preds = %bb.m
  %.val = load ptr, ptr %i.b, align 8, !dbg !2134, !noundef !14 ; 4 uses
  %i.ab = icmp eq ptr %.val, null, !dbg !2136
  br i1 %i.ab, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbaWXNhtWAp9_11foundations.exit, label %bb.o, !dbg !2136

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2138, !noalias !2142
  %i.ac = ptrtoint ptr %.val to i64, !dbg !2145   ; 2 uses
  %i.ad = and i64 %i.ac, 3, !dbg !2148
  switch i64 %i.ad, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i
    i64 3, label %bb.p
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i
    i64 1, label %bb.q
  ], !dbg !2149, !prof !910

default.unreachable:                              ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ae = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr), !dbg !2150
  %i.af = and i64 %i.ac, 1095216660480, !dbg !2152
  %i.ag = icmp ne i64 %i.af, 1095216660480, !dbg !2152
  tail call void @llvm.assume(i1 %i.ae), !dbg !2154
  tail call void @llvm.assume(i1 %i.ag), !dbg !2154
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i, !dbg !2155

bb.q:                                             ; preds = %bb.o
  %i.ah = getelementptr i8, ptr %.val, i64 -1, !dbg !2156 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ], !dbg !2160
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2163 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !dbg !2163, !alias.scope !2164, !noalias !2142
  store i8 3, ptr %i.a, align 8, !dbg !2167, !alias.scope !2164, !noalias !2142
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.r, !dbg !2168

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2171, !noalias !2142
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbaWXNhtWAp9_11foundations.exit, !dbg !2136

bb.r:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %bb.s, !dbg !2134

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i, %bb.n
  store ptr %i.m, ptr %i.b, align 8, !dbg !2134
  br label %.thread, !dbg !2172

bb.s:                                             ; preds = %.body, %bb.r
  %.sink = phi ptr [ %i.n, %.body ], [ %i.b, %bb.r ]
  store ptr %i.m, ptr %.sink, align 8, !dbg !2173
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #34, !dbg !2174
  unreachable, !dbg !2174

.body:                                            ; preds = %bb.k, %bb.l
  store ptr %i.l, ptr %i.d, align 8, !dbg !2084
  br label %bb.s, !dbg !2084

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.j, %bb.i, %bb.f
  store ptr %i.l, ptr %i.d, align 8, !dbg !2084
  store ptr %i.m, ptr %i.n, align 8, !dbg !2084
  br label %.thread, !dbg !2175

.thread:                                          ; preds = %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbaWXNhtWAp9_11foundations.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbaWXNhtWAp9_11foundations.exit, %bb.c, %bb.a, %bb.b
  ret void, !dbg !2176
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsduyiHOaxwSq_10serde_json5value8to_valueRNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2177 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2181), !dbg !2184
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2185
  %.val.i = load ptr, ptr %i.b, align 8, !dbg !2185, !noalias !2181, !nonnull !14, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2185
  %.val1.i = load i64, ptr %i.c, align 8, !dbg !2185, !noalias !2181, !noundef !14 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2193), !dbg !2185
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2196), !dbg !2199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2203, !noalias !2235
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.val1.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !2203, !noalias !2235
  %i.d = load i64, ptr %i.a, align 8, !dbg !2203, !range !2240, !noalias !2235, !noundef !14
  %i.e = trunc nuw i64 %i.d to i1, !dbg !2241
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2242
  %i.g = load i64, ptr %i.f, align 8, !dbg !2242, !range !2243, !noalias !2235, !noundef !14 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2242 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbaWXNhtWAp9_11foundations.exit.i.i.i.i, !dbg !2241, !prof !375

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !2244, !noalias !2235
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #33, !dbg !2245, !noalias !2235
  unreachable, !dbg !2245

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbaWXNhtWAp9_11foundations.exit.i.i.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !dbg !2247, !noalias !2235, !nonnull !14, !noundef !14 ; 2 uses
  %i.k = icmp samesign ule i64 %.val1.i, %i.g, !dbg !2248
  tail call void @llvm.assume(i1 %i.k), !dbg !2252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2255, !noalias !2235
  %.not.i.i.i.i = icmp eq i64 %.val1.i, 0, !dbg !2256
  br i1 %.not.i.i.i.i, label %_RINvXs1J_NtNtCs5FjQZcNRzHx_10serde_core3ser5implsRNtNtCs1xwejQucwHj_5alloc6string6StringNtB9_9Serialize9serializeNtNtNtCsduyiHOaxwSq_10serde_json5value3ser10SerializerECsbaWXNhtWAp9_11foundations.exit, label %bb.c, !dbg !2256

bb.c:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbaWXNhtWAp9_11foundations.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %.val.i, i64 range(i64 0, -9223372036854775808) %.val1.i, i1 false), !dbg !2258, !noalias !2263
  br label %_RINvXs1J_NtNtCs5FjQZcNRzHx_10serde_core3ser5implsRNtNtCs1xwejQucwHj_5alloc6string6StringNtB9_9Serialize9serializeNtNtNtCsduyiHOaxwSq_10serde_json5value3ser10SerializerECsbaWXNhtWAp9_11foundations.exit, !dbg !2264

_RINvXs1J_NtNtCs5FjQZcNRzHx_10serde_core3ser5implsRNtNtCs1xwejQucwHj_5alloc6string6StringNtB9_9Serialize9serializeNtNtNtCsduyiHOaxwSq_10serde_json5value3ser10SerializerECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbaWXNhtWAp9_11foundations.exit.i.i.i.i, %bb.c
  store i8 3, ptr %0, align 8, !dbg !2265, !alias.scope !2266, !noalias !2267
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2265
  store i64 %i.g, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !dbg !2265, !alias.scope !2266, !noalias !2267
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2265
  store ptr %i.j, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !dbg !2265, !alias.scope !2266, !noalias !2267
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2265
  store i64 %.val1.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !dbg !2265, !alias.scope !2266, !noalias !2267
  ret void, !dbg !2268
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsduyiHOaxwSq_10serde_json5value8to_valueRReECsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2269 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2270), !dbg !2273
  %.val.i = load ptr, ptr %1, align 8, !dbg !2274, !noalias !2270, !nonnull !14, !noundef !14
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2274
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !2274, !noalias !2270, !noundef !14 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2277), !dbg !2274
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2280), !dbg !2283
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2286), !dbg !2289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2293, !noalias !2303
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.val1.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !2293, !noalias !2303
  %i.c = load i64, ptr %i.a, align 8, !dbg !2293, !range !2240, !noalias !2303, !noundef !14
  %i.d = trunc nuw i64 %i.c to i1, !dbg !2309
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2310
  %i.f = load i64, ptr %i.e, align 8, !dbg !2310, !range !2243, !noalias !2303, !noundef !14 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2310 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i, !dbg !2309, !prof !375

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !dbg !2311, !noalias !2303
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #33, !dbg !2312, !noalias !2303
  unreachable, !dbg !2312

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !dbg !2313, !noalias !2303, !nonnull !14, !noundef !14 ; 2 uses
  %i.j = icmp samesign ule i64 %.val1.i, %i.f, !dbg !2314
  tail call void @llvm.assume(i1 %i.j), !dbg !2316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2318, !noalias !2303
  %.not.i.i.i.i.i = icmp eq i64 %.val1.i, 0, !dbg !2319
  br i1 %.not.i.i.i.i.i, label %_RINvXs1J_NtNtCs5FjQZcNRzHx_10serde_core3ser5implsRReNtB9_9Serialize9serializeNtNtNtCsduyiHOaxwSq_10serde_json5value3ser10SerializerECsbaWXNhtWAp9_11foundations.exit, label %bb.c, !dbg !2319

bb.c:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %.val.i, i64 range(i64 0, -9223372036854775808) %.val1.i, i1 false), !dbg !2320, !noalias !2323
  br label %_RINvXs1J_NtNtCs5FjQZcNRzHx_10serde_core3ser5implsRReNtB9_9Serialize9serializeNtNtNtCsduyiHOaxwSq_10serde_json5value3ser10SerializerECsbaWXNhtWAp9_11foundations.exit, !dbg !2324

_RINvXs1J_NtNtCs5FjQZcNRzHx_10serde_core3ser5implsRReNtB9_9Serialize9serializeNtNtNtCsduyiHOaxwSq_10serde_json5value3ser10SerializerECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i, %bb.c
  store i8 3, ptr %0, align 8, !dbg !2325, !alias.scope !2326, !noalias !2327
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2325
  store i64 %i.f, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !dbg !2325, !alias.scope !2326, !noalias !2327
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2325
  store ptr %i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !dbg !2325, !alias.scope !2326, !noalias !2327
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2325
  store i64 %.val1.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !dbg !2325, !alias.scope !2326, !noalias !2327
  ret void, !dbg !2328
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsbaWXNhtWAp9_11foundations(i64 noundef %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !2329 {
_RNvNtNtCs3oUPovFnLWP_4core5slice5index16into_slice_range.exit:
  %i.a = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %0, 1, !dbg !2332
  ret { i64, i64 } %i.a, !dbg !2336
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eager7destroyNtNtCshtG1HG2JiYb_12tracing_core10dispatcher5StateECsbaWXNhtWAp9_11foundations(ptr noundef initializes((40, 41)) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !2337 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2343
  store i8 2, ptr %i.a, align 1, !dbg !2358
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2362), !dbg !2365
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2368), !dbg !2371
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2374
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2377), !dbg !2374
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2380), !dbg !2383
  %i.c = load i64, ptr %i.b, align 8, !dbg !2386, !range !1840, !alias.scope !2389, !noundef !14 ; 2 uses
  %i.d = icmp eq i64 %i.c, 2, !dbg !2386
  br i1 %i.d, label %_RINvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCshtG1HG2JiYb_12tracing_core10dispatcher5StateE0ECsbaWXNhtWAp9_11foundations.exit, label %bb.b, !dbg !2386

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2390), !dbg !2386
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2393), !dbg !2396
  %1 = trunc nuw i64 %i.c to i1, !dbg !2399
  br i1 %1, label %bb.c, label %_RINvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCshtG1HG2JiYb_12tracing_core10dispatcher5StateE0ECsbaWXNhtWAp9_11foundations.exit, !dbg !2399

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2399 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2402), !dbg !2399
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2405), !dbg !2408
  %i.f = load ptr, ptr %i.e, align 8, !dbg !2411, !alias.scope !2418, !nonnull !14, !noundef !14
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !dbg !2419, !noalias !2418
  %i.h = icmp eq i64 %i.g, 1, !dbg !2424
  br i1 %i.h, label %bb.d, label %_RINvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCshtG1HG2JiYb_12tracing_core10dispatcher5StateE0ECsbaWXNhtWAp9_11foundations.exit, !dbg !2424

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !2425
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtCshtG1HG2JiYb_12tracing_core10subscriber10SubscriberNtNtCs3oUPovFnLWP_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #29
          to label %_RINvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCshtG1HG2JiYb_12tracing_core10dispatcher5StateE0ECsbaWXNhtWAp9_11foundations.exit unwind label %bb.e, !dbg !2427

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop() #35
          to label %.noexc1.i unwind label %bb.f, !dbg !2428

.noexc1.i:                                        ; preds = %bb.e
  unreachable, !dbg !2428

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !2431
  unreachable, !dbg !2431

_RINvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCshtG1HG2JiYb_12tracing_core10dispatcher5StateE0ECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void, !dbg !2432
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eager7destroyNtNtNtCs3zuhHmEJ01l_5tokio7runtime7context7ContextECsbaWXNhtWAp9_11foundations(ptr noundef initializes((64, 65)) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !2433 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !2434
  store i8 2, ptr %i.a, align 1, !dbg !2447
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2451), !dbg !2454
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2457), !dbg !2460
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2463), !dbg !2466
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2469 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2472), !dbg !2469
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2475), !dbg !2478
  %i.c = load ptr, ptr %i.b, align 8, !dbg !2481, !alias.scope !2484, !noundef !14 ; 2 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !2481
  br i1 %i.d, label %_RINvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCs3zuhHmEJ01l_5tokio7runtime7context7ContextE0ECsbaWXNhtWAp9_11foundations.exit, label %bb.b, !dbg !2481

bb.b:                                             ; preds = %bb.a
  %i.e = atomicrmw sub ptr %i.c, i64 1 release, align 8, !dbg !2485, !noalias !2496
  %i.f = icmp eq i64 %i.e, 1, !dbg !2503
  br i1 %i.f, label %bb.c, label %_RINvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCs3zuhHmEJ01l_5tokio7runtime7context7ContextE0ECsbaWXNhtWAp9_11foundations.exit, !dbg !2503

bb.c:                                             ; preds = %bb.b
  fence acquire, !dbg !2504
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs3zuhHmEJ01l_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #29
          to label %_RINvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCs3zuhHmEJ01l_5tokio7runtime7context7ContextE0ECsbaWXNhtWAp9_11foundations.exit unwind label %bb.d, !dbg !2506

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop() #35
          to label %.noexc1.i unwind label %bb.e, !dbg !2507

.noexc1.i:                                        ; preds = %bb.d
  unreachable, !dbg !2507

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !2509
  unreachable, !dbg !2509

_RINvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCs3zuhHmEJ01l_5tokio7runtime7context7ContextE0ECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void, !dbg !2510
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvXNtNtCs7XllS0bOcsN_6anyhow7context3extNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB3_8StdError11ext_contextNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !2511 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = invoke noundef align 8 ptr @_RNvNtCs7XllS0bOcsN_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @8)
          to label %bb.b unwind label %bb.g, !dbg !2517

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null, !dbg !2517
  br i1 %.not, label %bb.d, label %bb.c, !dbg !2520, !prof !264

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.b, align 8, !dbg !2521
  br label %bb.f, !dbg !2521

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2522
  invoke void @_RNvMs2_NtCsaL1QbXo9JQH_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.e unwind label %bb.g, !dbg !2522

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !2523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2524
  br label %bb.f, !dbg !2524

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.e = load ptr, ptr %i.c, align 8, !dbg !2525, !nonnull !14, !noundef !14
  %i.f = call noundef nonnull ptr @_RINvMNtCs7XllS0bOcsN_6anyhow5errorNtB5_5Error22construct_from_contextNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b), !dbg !2527
  ret ptr %i.f, !dbg !2528

bb.g:                                             ; preds = %bb.d, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #28
          to label %bb.i unwind label %bb.h, !dbg !2529

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !2530
  unreachable, !dbg !2530

.critedge:                                        ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm, !dbg !2530

bb.i:                                             ; preds = %bb.g
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #28
          to label %.critedge unwind label %bb.h, !dbg !2529
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic8resource2v1NtB6_8ResourceNtNtCs2NttipCe0aR_5prost7message7Message10encode_rawNtNtNtCsfUalJnHtWpm_5tonic5codec6buffer9EncodeBufECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 !dbg !2531 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2539
  %i.b = load ptr, ptr %i.a, align 8, !dbg !2539, !nonnull !14, !noundef !14 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2555
  %i.d = load i64, ptr %i.c, align 8, !dbg !2555, !noundef !14 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 56, !dbg !2556
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx, !dbg !2556
  %i.f = icmp eq i64 %i.d, 0, !dbg !2565
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !2567

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 56, !dbg !2574 ; 2 uses
  tail call void @_RINvNtNtCs2NttipCe0aR_5prost8encoding7message6encodeNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic6common2v18KeyValueNtNtNtCsfUalJnHtWpm_5tonic5codec6buffer9EncodeBufECsbaWXNhtWAp9_11foundations(i32 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.0.05, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1), !dbg !2577
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !2565
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !dbg !2567

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !2554 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !dbg !2554, !noundef !14
  %i.k = icmp eq i32 %i.j, 0, !dbg !2554
  br i1 %i.k, label %bb.c, label %bb.b, !dbg !2554

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RINvNtNtCs2NttipCe0aR_5prost8encoding6uint326encodeNtNtNtCsfUalJnHtWpm_5tonic5codec6buffer9EncodeBufECsbaWXNhtWAp9_11foundations(i32 noundef 2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1), !dbg !2554
  br label %bb.c, !dbg !2554

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2579
  %i.m = load ptr, ptr %i.l, align 8, !dbg !2579, !nonnull !14, !noundef !14 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2601
  %i.o = load i64, ptr %i.n, align 8, !dbg !2601, !noundef !14 ; 2 uses
  %.idx10 = mul nuw nsw i64 %i.o, 96, !dbg !2602
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx10, !dbg !2602
  %i.q = icmp eq i64 %i.o, 0, !dbg !2613
  br i1 %i.q, label %._crit_edge9, label %.lr.ph8, !dbg !2623

.lr.ph8:                                          ; preds = %bb.c, %.lr.ph8
  %.sroa.02.06 = phi ptr [ %i.r, %.lr.ph8 ], [ %i.m, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 96, !dbg !2624 ; 2 uses
  tail call void @_RINvNtNtCs2NttipCe0aR_5prost8encoding7message6encodeNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic6common2v19EntityRefNtNtNtCsfUalJnHtWpm_5tonic5codec6buffer9EncodeBufECsbaWXNhtWAp9_11foundations(i32 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.sroa.02.06, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1), !dbg !2627
  %i.s = icmp eq ptr %i.r, %i.p, !dbg !2613
  br i1 %i.s, label %._crit_edge9, label %.lr.ph8, !dbg !2623

._crit_edge9:                                     ; preds = %.lr.ph8, %bb.c
  ret void, !dbg !2629
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvXs2_NtNtCskfQLOxWbF12_10prometools5serde5errorNtB6_5ErrorNtNtCs5FjQZcNRzHx_10serde_core3ser5Error6customINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtB1N_6string6StringEECsbaWXNhtWAp9_11foundations(ptr noalias noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2630 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !2636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2637, !noalias !2646
  store i64 0, ptr %i.c, align 8, !dbg !2653, !noalias !2646
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2653
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !2653, !noalias !2646
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2653
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !2653, !noalias !2646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2657, !noalias !2646
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !2659
  store i64 1610612768, ptr %i.f, align 8, !dbg !2659, !noalias !2646
end_hunk_1
begin_hunk_2_@_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char:bb.a
  %i.ad = or disjoint i8 %i.r, -32, !dbg !9962
  store i8 %i.ad, ptr %i.i, align 1, !dbg !9962
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1, !dbg !9963
  store i8 %i.p, ptr %i.ae, align 1, !dbg !9965
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2, !dbg !9966
  store i8 %i.l, ptr %i.af, align 1, !dbg !9968
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit, !dbg !9959

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1, !dbg !9969
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1, !dbg !9970
  store i8 %i.t, ptr %i.ag, align 1, !dbg !9972
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2, !dbg !9973
  store i8 %i.p, ptr %i.ah, align 1, !dbg !9975
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3, !dbg !9976
  store i8 %i.l, ptr %i.ai, align 1, !dbg !9978
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit, !dbg !9979

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b, !dbg !9980
  store i64 %i.aj, ptr %i.a, align 8, !dbg !9981, !alias.scope !9903
  ret i1 false, !dbg !9984
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #8 !dbg !9985 {
bb.a:
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !dbg !9986, !noalias !9995
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9998 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !9998, !alias.scope !10001, !noalias !9995, !noundef !14 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1, !dbg !10005
  tail call void @llvm.assume(i1 %i.c), !dbg !10006
  %.not.i.i = icmp eq i64 %2, 0, !dbg !10007
  br i1 %.not.i.i, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit, label %bb.b, !dbg !10007

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10008
  %i.e = load ptr, ptr %i.d, align 8, !dbg !10008, !alias.scope !10001, !noalias !9995, !nonnull !14, !noundef !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b, !dbg !10013
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !dbg !10015
  %.pre.i.i = load i64, ptr %i.a, align 8, !dbg !10017, !alias.scope !10001, !noalias !9995
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit, !dbg !10018

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ], !dbg !10017
  %i.h = add i64 %i.g, %2, !dbg !10017
  store i64 %i.h, ptr %i.a, align 8, !dbg !10017, !alias.scope !10001, !noalias !9995
  ret i1 false, !dbg !10019
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs_Cs9PF4sIox9so_9slog_jsonINtB4_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer10emit_isizeCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10020 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %3, ptr %i.d, align 8
  %i.e = call noundef align 8 ptr @_RINvYINtNtCsduyiHOaxwSq_10serde_json3ser8CompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB6_16CompactFormatterENtNtCs5FjQZcNRzHx_10serde_core3ser12SerializeMap15serialize_entryeiECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d), !dbg !10022 ; 2 uses
  %.not = icmp eq ptr %i.e, null, !dbg !10024
  br i1 %.not, label %bb.f, label %bb.b, !dbg !10027

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8, !noalias !10028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10031, !noalias !10028
  store ptr %i.c, ptr %i.a, align 8, !dbg !10031, !noalias !10028
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10031
  store ptr @_RNvXs3_NtCsduyiHOaxwSq_10serde_json5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !10031, !noalias !10028
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.c, !dbg !10038

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.val8.i = load ptr, ptr %i.c, align 8, !dbg !10044, !noalias !10028, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val8.i) #28
          to label %bb.e unwind label %bb.d, !dbg !10044

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10045, !noalias !10028
  %i.g = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECsb6T6P0NKlCh_2h2(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer10emit_isize0CsbaWXNhtWAp9_11foundations.exit unwind label %bb.c, !dbg !10046

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !10047
  unreachable, !dbg !10047

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f, !dbg !10047

_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer10emit_isize0CsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i
  %.val7.i = load ptr, ptr %i.c, align 8, !dbg !10044, !noalias !10028, !nonnull !14, !noundef !14
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val7.i), !dbg !10044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10048
  br label %bb.f, !dbg !10049

bb.f:                                             ; preds = %bb.a, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer10emit_isize0CsbaWXNhtWAp9_11foundations.exit
  %.sroa.3.0 = phi ptr [ %i.g, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer10emit_isize0CsbaWXNhtWAp9_11foundations.exit ], [ undef, %bb.a ], !dbg !10050
  %.sroa.0.0 = phi i64 [ 0, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer10emit_isize0CsbaWXNhtWAp9_11foundations.exit ], [ -1, %bb.a ], !dbg !10050
  %i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !10049
  %i.j = insertvalue { i64, ptr } %i.i, ptr %.sroa.3.0, 1, !dbg !10049
  ret { i64, ptr } %i.j, !dbg !10049
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs_Cs9PF4sIox9so_9slog_jsonINtB4_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer10emit_usizeCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10051 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %3, ptr %i.d, align 8
  %i.e = call noundef align 8 ptr @_RINvYINtNtCsduyiHOaxwSq_10serde_json3ser8CompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB6_16CompactFormatterENtNtCs5FjQZcNRzHx_10serde_core3ser12SerializeMap15serialize_entryejECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d), !dbg !10052 ; 2 uses
  %.not = icmp eq ptr %i.e, null, !dbg !10054
  br i1 %.not, label %bb.f, label %bb.b, !dbg !10057

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8, !noalias !10058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10061, !noalias !10058
  store ptr %i.c, ptr %i.a, align 8, !dbg !10061, !noalias !10058
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10061
  store ptr @_RNvXs3_NtCsduyiHOaxwSq_10serde_json5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !10061, !noalias !10058
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.c, !dbg !10068

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.val8.i = load ptr, ptr %i.c, align 8, !dbg !10074, !noalias !10058, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val8.i) #28
          to label %bb.e unwind label %bb.d, !dbg !10074

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10075, !noalias !10058
  %i.g = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECsb6T6P0NKlCh_2h2(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer10emit_usize0CsbaWXNhtWAp9_11foundations.exit unwind label %bb.c, !dbg !10076

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !10077
  unreachable, !dbg !10077

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f, !dbg !10077

_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer10emit_usize0CsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i
  %.val7.i = load ptr, ptr %i.c, align 8, !dbg !10074, !noalias !10058, !nonnull !14, !noundef !14
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val7.i), !dbg !10074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10078
  br label %bb.f, !dbg !10079

bb.f:                                             ; preds = %bb.a, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer10emit_usize0CsbaWXNhtWAp9_11foundations.exit
  %.sroa.3.0 = phi ptr [ %i.g, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer10emit_usize0CsbaWXNhtWAp9_11foundations.exit ], [ undef, %bb.a ], !dbg !10080
  %.sroa.0.0 = phi i64 [ 0, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer10emit_usize0CsbaWXNhtWAp9_11foundations.exit ], [ -1, %bb.a ], !dbg !10080
  %i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !10079
  %i.j = insertvalue { i64, ptr } %i.i, ptr %.sroa.3.0, 1, !dbg !10079
  ret { i64, ptr } %i.j, !dbg !10079
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs_Cs9PF4sIox9so_9slog_jsonINtB4_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer14emit_argumentsCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10081 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF0023___RUST_STD_INTERNAL_VAL), !dbg !10082 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !10094
  %i.g = load i8, ptr %i.f, align 8, !dbg !10105, !range !3664, !noalias !10106, !noundef !14
  %i.h = icmp eq i8 %i.g, 1, !dbg !10117
  br i1 %i.h, label %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.thread.i.i, label %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !10117, !prof !264

_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.a
  %i.i = tail call noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEuE16get_or_init_slowNvNvCs9PF4sIox9so_9slog_json6TL_BUF27___rust_std_internal_init_fnECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef align 8 dereferenceable_or_null(40) null), !dbg !10118, !noalias !10119 ; 2 uses
  %i.j = icmp eq ptr %i.i, null, !dbg !10120
  br i1 %i.j, label %bb.n, label %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.thread.i.i, !dbg !10130

_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.thread.i.i: ; preds = %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.i.i, %bb.a
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.i, %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.i.i ], [ %i.e, %bb.a ] ; 10 uses
  %i.k = load i64, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !10131, !noalias !10144, !noundef !14
  %i.l = icmp eq i64 %i.k, 0, !dbg !10147
  br i1 %i.l, label %bb.b, label %bb.c, !dbg !10147, !prof !264

bb.b:                                             ; preds = %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.thread.i.i
  store i64 -1, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !10148, !noalias !10144
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i.i, i64 8, !dbg !10154 ; 3 uses
  %i.n = load ptr, ptr %3, align 8, !dbg !10158, !noalias !10144, !nonnull !14, !noundef !14 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !10158
  %i.p = load ptr, ptr %i.o, align 8, !dbg !10158, !noalias !10144, !nonnull !14, !noundef !14 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64, !dbg !10160    ; 2 uses
  %4 = trunc i64 %i.q to i1, !dbg !10174
  br i1 %4, label %bb.d, label %bb.i, !dbg !10174

bb.c:                                             ; preds = %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.thread.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #31, !dbg !10176, !noalias !10144
  unreachable, !dbg !10176

bb.d:                                             ; preds = %bb.b
  %i.r = lshr i64 %i.q, 1, !dbg !10178            ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.r)
          to label %.noexc14.i.i.i unwind label %bb.f, !dbg !10179, !noalias !10144

.noexc14.i.i.i:                                   ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i.i, i64 24, !dbg !10190 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !dbg !10190, !alias.scope !10193, !noalias !10144, !noundef !14 ; 3 uses
  %i.u = icmp sgt i64 %i.t, -1, !dbg !10196
  tail call void @llvm.assume(i1 %i.u), !dbg !10197
  %.not.i.i.i.i = icmp eq i64 %i.r, 0, !dbg !10198
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %bb.e, !dbg !10198

bb.e:                                             ; preds = %.noexc14.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i.i, i64 16, !dbg !10199
  %i.w = load ptr, ptr %i.v, align 8, !dbg !10199, !alias.scope !10193, !noalias !10144, !nonnull !14, !noundef !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t, !dbg !10204
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull readonly align 1 %i.n, i64 %i.r, i1 false), !dbg !10206, !noalias !10144
  %.pre.i.i.i.i = load i64, ptr %i.s, align 8, !dbg !10208, !alias.scope !10193, !noalias !10144
  br label %.thread.i.i.i, !dbg !10209

.thread.i.i.i:                                    ; preds = %bb.e, %.noexc14.i.i.i
  %i.y = phi i64 [ %.pre.i.i.i.i, %bb.e ], [ %i.t, %.noexc14.i.i.i ], !dbg !10208
  %i.z = add i64 %i.y, %i.r, !dbg !10208
  store i64 %i.z, ptr %i.s, align 8, !dbg !10208, !alias.scope !10193, !noalias !10144
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsbaWXNhtWAp9_11foundations.exit.i.i.i, !dbg !10210

bb.f:                                             ; preds = %_RNCNCNCNvXs_Cs9PF4sIox9so_9slog_jsonINtBa_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments000CsbaWXNhtWAp9_11foundations.exit.i.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsbaWXNhtWAp9_11foundations.exit.i.i.i, %bb.i, %bb.h, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.m, !dbg !10213

bb.g:                                             ; preds = %bb.i
  br i1 %i.ab, label %bb.h, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsbaWXNhtWAp9_11foundations.exit.i.i.i, !dbg !10210, !prof !10214

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #31
          to label %.noexc.i.i.i unwind label %bb.f, !dbg !10215, !noalias !10144

.noexc.i.i.i:                                     ; preds = %bb.h
  unreachable, !dbg !10215

bb.i:                                             ; preds = %bb.b
  %i.ab = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @26, ptr noundef nonnull %i.n, ptr noundef nonnull %i.p)
          to label %bb.g unwind label %bb.f, !dbg !10217, !noalias !10144

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsbaWXNhtWAp9_11foundations.exit.i.i.i: ; preds = %bb.g, %.thread.i.i.i
  %i.ac = invoke noundef align 8 ptr @_RINvYINtNtCsduyiHOaxwSq_10serde_json3ser8CompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB6_16CompactFormatterENtNtCs5FjQZcNRzHx_10serde_core3ser12SerializeMap15serialize_entryeNtNtBV_6string6StringECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %.noexc16.i.i.i unwind label %bb.f, !dbg !10218, !noalias !10144 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsbaWXNhtWAp9_11foundations.exit.i.i.i
  %.not.i15.i.i.i = icmp eq ptr %i.ac, null, !dbg !10223
  br i1 %.not.i15.i.i.i, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEE4withNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB2l_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtB1z_2io8buffered9bufwriter9BufWriterNtNtBa_2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments0INtNtBZ_6result6ResultuNtB4X_5ErrorEECsbaWXNhtWAp9_11foundations.exit, label %bb.j, !dbg !10226

bb.j:                                             ; preds = %.noexc16.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10227
  store ptr %i.ac, ptr %i.d, align 8, !noalias !10230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10233, !noalias !10230
  store ptr %i.d, ptr %i.b, align 8, !dbg !10233, !noalias !10230
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10233
  store ptr @_RNvXs3_NtCsduyiHOaxwSq_10serde_json5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !dbg !10233, !noalias !10230
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @24, ptr noundef nonnull %i.b)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i unwind label %bb.k, !dbg !10240, !noalias !10227

bb.k:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i, %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val8.i.i.i.i.i = load ptr, ptr %i.d, align 8, !dbg !10246, !noalias !10230, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val8.i.i.i.i.i) #28
          to label %bb.m unwind label %bb.l, !dbg !10246, !noalias !10227

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10247, !noalias !10230
  %i.ae = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECsb6T6P0NKlCh_2h2(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %_RNCNCNCNvXs_Cs9PF4sIox9so_9slog_jsonINtBa_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments000CsbaWXNhtWAp9_11foundations.exit.i.i.i.i unwind label %bb.k, !dbg !10248, !noalias !10227

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !10249, !noalias !10227
  unreachable, !dbg !10249

_RNCNCNCNvXs_Cs9PF4sIox9so_9slog_jsonINtBa_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments000CsbaWXNhtWAp9_11foundations.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i
  %.val7.i.i.i.i.i = load ptr, ptr %i.d, align 8, !dbg !10246, !noalias !10230, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val7.i.i.i.i.i)
          to label %.noexc17.i.i.i unwind label %bb.f, !dbg !10246, !noalias !10144

.noexc17.i.i.i:                                   ; preds = %_RNCNCNCNvXs_Cs9PF4sIox9so_9slog_jsonINtBa_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments000CsbaWXNhtWAp9_11foundations.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10250, !noalias !10227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !10250, !noalias !10227
  br label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEE4withNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB2l_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtB1z_2io8buffered9bufwriter9BufWriterNtNtBa_2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments0INtNtBZ_6result6ResultuNtB4X_5ErrorEECsbaWXNhtWAp9_11foundations.exit, !dbg !10251

bb.m:                                             ; preds = %bb.k, %bb.f
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.ad, %bb.k ]
  %i.ag = load i64, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !10252, !noalias !10144, !noundef !14
  %i.ah = add i64 %i.ag, 1, !dbg !10258
  store i64 %i.ah, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !10259, !noalias !10144
  resume { ptr, i32 } %eh.lpad-body.i.i.i, !dbg !10262

bb.n:                                             ; preds = %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.i.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #31, !dbg !10263, !noalias !10265
  unreachable, !dbg !10263

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEE4withNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB2l_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtB1z_2io8buffered9bufwriter9BufWriterNtNtBa_2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments0INtNtBZ_6result6ResultuNtB4X_5ErrorEECsbaWXNhtWAp9_11foundations.exit: ; preds = %.noexc16.i.i.i, %.noexc17.i.i.i
  %.sroa.3.0.i.i.i.i = phi ptr [ %i.ae, %.noexc17.i.i.i ], [ undef, %.noexc16.i.i.i ], !dbg !10266
  %.sroa.0.0.i.i.i.i = phi i64 [ 0, %.noexc17.i.i.i ], [ -1, %.noexc16.i.i.i ], !dbg !10266
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i.i, i64 24, !dbg !10267
  store i64 0, ptr %i.ai, align 8, !dbg !10267, !noalias !10144
  %i.aj = load i64, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !10274, !noalias !10144, !noundef !14
  %i.ak = add i64 %i.aj, 1, !dbg !10279
  store i64 %i.ak, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !10280, !noalias !10144
  %i.al = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i.i.i, 0, !dbg !10283
  %i.am = insertvalue { i64, ptr } %i.al, ptr %.sroa.3.0.i.i.i.i, 1, !dbg !10283
  ret { i64, ptr } %i.am, !dbg !10284
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs_Cs9PF4sIox9so_9slog_jsonINtB4_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer7emit_i8CsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10285 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %3, ptr %i.d, align 1
  %i.e = call noundef align 8 ptr @_RINvYINtNtCsduyiHOaxwSq_10serde_json3ser8CompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB6_16CompactFormatterENtNtCs5FjQZcNRzHx_10serde_core3ser12SerializeMap15serialize_entryeaECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.d), !dbg !10286 ; 2 uses
  %.not = icmp eq ptr %i.e, null, !dbg !10288
  br i1 %.not, label %bb.f, label %bb.b, !dbg !10291

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8, !noalias !10292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10295, !noalias !10292
  store ptr %i.c, ptr %i.a, align 8, !dbg !10295, !noalias !10292
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10295
  store ptr @_RNvXs3_NtCsduyiHOaxwSq_10serde_json5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !10295, !noalias !10292
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.c, !dbg !10302

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.val8.i = load ptr, ptr %i.c, align 8, !dbg !10308, !noalias !10292, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val8.i) #28
          to label %bb.e unwind label %bb.d, !dbg !10308

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10309, !noalias !10292
  %i.g = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECsb6T6P0NKlCh_2h2(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer7emit_i80CsbaWXNhtWAp9_11foundations.exit unwind label %bb.c, !dbg !10310

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !10311
  unreachable, !dbg !10311

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f, !dbg !10311

_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer7emit_i80CsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i
  %.val7.i = load ptr, ptr %i.c, align 8, !dbg !10308, !noalias !10292, !nonnull !14, !noundef !14
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val7.i), !dbg !10308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10312
  br label %bb.f, !dbg !10313

bb.f:                                             ; preds = %bb.a, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer7emit_i80CsbaWXNhtWAp9_11foundations.exit
  %.sroa.3.0 = phi ptr [ %i.g, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer7emit_i80CsbaWXNhtWAp9_11foundations.exit ], [ undef, %bb.a ], !dbg !10314
  %.sroa.0.0 = phi i64 [ 0, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer7emit_i80CsbaWXNhtWAp9_11foundations.exit ], [ -1, %bb.a ], !dbg !10314
  %i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !10313
  %i.j = insertvalue { i64, ptr } %i.i, ptr %.sroa.3.0, 1, !dbg !10313
  ret { i64, ptr } %i.j, !dbg !10313
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs_Cs9PF4sIox9so_9slog_jsonINtB4_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer7emit_u8CsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10315 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %3, ptr %i.d, align 1
  %i.e = call noundef align 8 ptr @_RINvYINtNtCsduyiHOaxwSq_10serde_json3ser8CompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB6_16CompactFormatterENtNtCs5FjQZcNRzHx_10serde_core3ser12SerializeMap15serialize_entryehECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.d), !dbg !10316 ; 2 uses
  %.not = icmp eq ptr %i.e, null, !dbg !10318
  br i1 %.not, label %bb.f, label %bb.b, !dbg !10321

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8, !noalias !10322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10325, !noalias !10322
  store ptr %i.c, ptr %i.a, align 8, !dbg !10325, !noalias !10322
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10325
end_hunk_2
begin_hunk_3_@_RNvXs_Cs9PF4sIox9so_9slog_jsonINtB4_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer9emit_unitCsbaWXNhtWAp9_11foundations:bb.a
  %i.d = tail call noundef align 8 ptr @_RINvYINtNtCsduyiHOaxwSq_10serde_json3ser8CompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB6_16CompactFormatterENtNtCs5FjQZcNRzHx_10serde_core3ser12SerializeMap15serialize_entryeuECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr)), !dbg !10770 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !10772
  br i1 %.not, label %bb.f, label %bb.b, !dbg !10775

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8, !noalias !10776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10779, !noalias !10776
  store ptr %i.c, ptr %i.a, align 8, !dbg !10779, !noalias !10776
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10779
  store ptr @_RNvXs3_NtCsduyiHOaxwSq_10serde_json5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !10779, !noalias !10776
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.c, !dbg !10786

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val8.i = load ptr, ptr %i.c, align 8, !dbg !10792, !noalias !10776, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val8.i) #28
          to label %bb.e unwind label %bb.d, !dbg !10792

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10793, !noalias !10776
  %i.f = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECsb6T6P0NKlCh_2h2(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer9emit_unit0CsbaWXNhtWAp9_11foundations.exit unwind label %bb.c, !dbg !10794

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !10795
  unreachable, !dbg !10795

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e, !dbg !10795

_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer9emit_unit0CsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i
  %.val7.i = load ptr, ptr %i.c, align 8, !dbg !10792, !noalias !10776, !nonnull !14, !noundef !14
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val7.i), !dbg !10792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10796
  br label %bb.f, !dbg !10797

bb.f:                                             ; preds = %bb.a, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer9emit_unit0CsbaWXNhtWAp9_11foundations.exit
  %.sroa.3.0 = phi ptr [ %i.f, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer9emit_unit0CsbaWXNhtWAp9_11foundations.exit ], [ undef, %bb.a ], !dbg !10798
  %.sroa.0.0 = phi i64 [ 0, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtCscuJkFUZt1a2_4slog10Serializer9emit_unit0CsbaWXNhtWAp9_11foundations.exit ], [ -1, %bb.a ], !dbg !10798
  %i.h = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !10797
  %i.i = insertvalue { i64, ptr } %i.h, ptr %.sroa.3.0, 1, !dbg !10797
  ret { i64, ptr } %i.i, !dbg !10797
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs_Cs9PF4sIox9so_9slog_jsonINtB4_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBT_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer10emit_isizeCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10799 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %3, ptr %i.d, align 8
  %i.e = call noundef align 8 ptr @_RINvYINtNtCsduyiHOaxwSq_10serde_json3ser8CompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB6_15PrettyFormatterENtNtCs5FjQZcNRzHx_10serde_core3ser12SerializeMap15serialize_entryeiECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d), !dbg !10800 ; 2 uses
  %.not = icmp eq ptr %i.e, null, !dbg !10802
  br i1 %.not, label %bb.f, label %bb.b, !dbg !10805

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8, !noalias !10806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10809, !noalias !10806
  store ptr %i.c, ptr %i.a, align 8, !dbg !10809, !noalias !10806
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10809
  store ptr @_RNvXs3_NtCsduyiHOaxwSq_10serde_json5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !10809, !noalias !10806
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.c, !dbg !10815

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.val8.i = load ptr, ptr %i.c, align 8, !dbg !10821, !noalias !10806, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val8.i) #28
          to label %bb.e unwind label %bb.d, !dbg !10821

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10822, !noalias !10806
  %i.g = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECsb6T6P0NKlCh_2h2(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer10emit_isize0CsbaWXNhtWAp9_11foundations.exit unwind label %bb.c, !dbg !10823

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !10824
  unreachable, !dbg !10824

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f, !dbg !10824

_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer10emit_isize0CsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i
  %.val7.i = load ptr, ptr %i.c, align 8, !dbg !10821, !noalias !10806, !nonnull !14, !noundef !14
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val7.i), !dbg !10821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10825
  br label %bb.f, !dbg !10826

bb.f:                                             ; preds = %bb.a, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer10emit_isize0CsbaWXNhtWAp9_11foundations.exit
  %.sroa.3.0 = phi ptr [ %i.g, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer10emit_isize0CsbaWXNhtWAp9_11foundations.exit ], [ undef, %bb.a ], !dbg !10827
  %.sroa.0.0 = phi i64 [ 0, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer10emit_isize0CsbaWXNhtWAp9_11foundations.exit ], [ -1, %bb.a ], !dbg !10827
  %i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !10826
  %i.j = insertvalue { i64, ptr } %i.i, ptr %.sroa.3.0, 1, !dbg !10826
  ret { i64, ptr } %i.j, !dbg !10826
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs_Cs9PF4sIox9so_9slog_jsonINtB4_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBT_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer10emit_usizeCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10828 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %3, ptr %i.d, align 8
  %i.e = call noundef align 8 ptr @_RINvYINtNtCsduyiHOaxwSq_10serde_json3ser8CompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB6_15PrettyFormatterENtNtCs5FjQZcNRzHx_10serde_core3ser12SerializeMap15serialize_entryejECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d), !dbg !10829 ; 2 uses
  %.not = icmp eq ptr %i.e, null, !dbg !10831
  br i1 %.not, label %bb.f, label %bb.b, !dbg !10834

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8, !noalias !10835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10838, !noalias !10835
  store ptr %i.c, ptr %i.a, align 8, !dbg !10838, !noalias !10835
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10838
  store ptr @_RNvXs3_NtCsduyiHOaxwSq_10serde_json5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !10838, !noalias !10835
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.c, !dbg !10844

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.val8.i = load ptr, ptr %i.c, align 8, !dbg !10850, !noalias !10835, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val8.i) #28
          to label %bb.e unwind label %bb.d, !dbg !10850

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10851, !noalias !10835
  %i.g = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECsb6T6P0NKlCh_2h2(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer10emit_usize0CsbaWXNhtWAp9_11foundations.exit unwind label %bb.c, !dbg !10852

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !10853
  unreachable, !dbg !10853

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f, !dbg !10853

_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer10emit_usize0CsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i
  %.val7.i = load ptr, ptr %i.c, align 8, !dbg !10850, !noalias !10835, !nonnull !14, !noundef !14
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val7.i), !dbg !10850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10854
  br label %bb.f, !dbg !10855

bb.f:                                             ; preds = %bb.a, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer10emit_usize0CsbaWXNhtWAp9_11foundations.exit
  %.sroa.3.0 = phi ptr [ %i.g, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer10emit_usize0CsbaWXNhtWAp9_11foundations.exit ], [ undef, %bb.a ], !dbg !10856
  %.sroa.0.0 = phi i64 [ 0, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer10emit_usize0CsbaWXNhtWAp9_11foundations.exit ], [ -1, %bb.a ], !dbg !10856
  %i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !10855
  %i.j = insertvalue { i64, ptr } %i.i, ptr %.sroa.3.0, 1, !dbg !10855
  ret { i64, ptr } %i.j, !dbg !10855
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs_Cs9PF4sIox9so_9slog_jsonINtB4_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBT_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer14emit_argumentsCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10857 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF0023___RUST_STD_INTERNAL_VAL), !dbg !10858 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !10865
  %i.g = load i8, ptr %i.f, align 8, !dbg !10869, !range !3664, !noalias !10870, !noundef !14
  %i.h = icmp eq i8 %i.g, 1, !dbg !10881
  br i1 %i.h, label %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.thread.i.i, label %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !10881, !prof !264

_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.a
  %i.i = tail call noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEuE16get_or_init_slowNvNvCs9PF4sIox9so_9slog_json6TL_BUF27___rust_std_internal_init_fnECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef align 8 dereferenceable_or_null(40) null), !dbg !10882, !noalias !10883 ; 2 uses
  %i.j = icmp eq ptr %i.i, null, !dbg !10884
  br i1 %i.j, label %bb.n, label %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.thread.i.i, !dbg !10894

_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.thread.i.i: ; preds = %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.i.i, %bb.a
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.i, %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.i.i ], [ %i.e, %bb.a ] ; 10 uses
  %i.k = load i64, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !10895, !noalias !10907, !noundef !14
  %i.l = icmp eq i64 %i.k, 0, !dbg !10910
  br i1 %i.l, label %bb.b, label %bb.c, !dbg !10910, !prof !264

bb.b:                                             ; preds = %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.thread.i.i
  store i64 -1, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !10911, !noalias !10907
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i.i, i64 8, !dbg !10917 ; 3 uses
  %i.n = load ptr, ptr %3, align 8, !dbg !10921, !noalias !10907, !nonnull !14, !noundef !14 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !10921
  %i.p = load ptr, ptr %i.o, align 8, !dbg !10921, !noalias !10907, !nonnull !14, !noundef !14 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64, !dbg !10923    ; 2 uses
  %4 = trunc i64 %i.q to i1, !dbg !10933
  br i1 %4, label %bb.d, label %bb.i, !dbg !10933

bb.c:                                             ; preds = %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.thread.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #31, !dbg !10935, !noalias !10907
  unreachable, !dbg !10935

bb.d:                                             ; preds = %bb.b
  %i.r = lshr i64 %i.q, 1, !dbg !10937            ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.r)
          to label %.noexc14.i.i.i unwind label %bb.f, !dbg !10938, !noalias !10907

.noexc14.i.i.i:                                   ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i.i, i64 24, !dbg !10949 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !dbg !10949, !alias.scope !10952, !noalias !10907, !noundef !14 ; 3 uses
  %i.u = icmp sgt i64 %i.t, -1, !dbg !10955
  tail call void @llvm.assume(i1 %i.u), !dbg !10956
  %.not.i.i.i.i = icmp eq i64 %i.r, 0, !dbg !10957
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %bb.e, !dbg !10957

bb.e:                                             ; preds = %.noexc14.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i.i, i64 16, !dbg !10958
  %i.w = load ptr, ptr %i.v, align 8, !dbg !10958, !alias.scope !10952, !noalias !10907, !nonnull !14, !noundef !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t, !dbg !10963
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull readonly align 1 %i.n, i64 %i.r, i1 false), !dbg !10965, !noalias !10907
  %.pre.i.i.i.i = load i64, ptr %i.s, align 8, !dbg !10967, !alias.scope !10952, !noalias !10907
  br label %.thread.i.i.i, !dbg !10968

.thread.i.i.i:                                    ; preds = %bb.e, %.noexc14.i.i.i
  %i.y = phi i64 [ %.pre.i.i.i.i, %bb.e ], [ %i.t, %.noexc14.i.i.i ], !dbg !10967
  %i.z = add i64 %i.y, %i.r, !dbg !10967
  store i64 %i.z, ptr %i.s, align 8, !dbg !10967, !alias.scope !10952, !noalias !10907
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsbaWXNhtWAp9_11foundations.exit.i.i.i, !dbg !10969

bb.f:                                             ; preds = %_RNCNCNCNvXs_Cs9PF4sIox9so_9slog_jsonINtBa_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBZ_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments000CsbaWXNhtWAp9_11foundations.exit.i.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsbaWXNhtWAp9_11foundations.exit.i.i.i, %bb.i, %bb.h, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.m, !dbg !10971

bb.g:                                             ; preds = %bb.i
  br i1 %i.ab, label %bb.h, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsbaWXNhtWAp9_11foundations.exit.i.i.i, !dbg !10969, !prof !10214

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #31
          to label %.noexc.i.i.i unwind label %bb.f, !dbg !10972, !noalias !10907

.noexc.i.i.i:                                     ; preds = %bb.h
  unreachable, !dbg !10972

bb.i:                                             ; preds = %bb.b
  %i.ab = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @26, ptr noundef nonnull %i.n, ptr noundef nonnull %i.p)
          to label %bb.g unwind label %bb.f, !dbg !10973, !noalias !10907

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsbaWXNhtWAp9_11foundations.exit.i.i.i: ; preds = %bb.g, %.thread.i.i.i
  %i.ac = invoke noundef align 8 ptr @_RINvYINtNtCsduyiHOaxwSq_10serde_json3ser8CompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB6_15PrettyFormatterENtNtCs5FjQZcNRzHx_10serde_core3ser12SerializeMap15serialize_entryeNtNtBV_6string6StringECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %.noexc16.i.i.i unwind label %bb.f, !dbg !10974, !noalias !10907 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsbaWXNhtWAp9_11foundations.exit.i.i.i
  %.not.i15.i.i.i = icmp eq ptr %i.ac, null, !dbg !10978
  br i1 %.not.i15.i.i.i, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEE4withNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB2l_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtB1z_2io8buffered9bufwriter9BufWriterNtNtBa_2fs4FileENtB3b_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments0INtNtBZ_6result6ResultuNtB5k_5ErrorEECsbaWXNhtWAp9_11foundations.exit, label %bb.j, !dbg !10981

bb.j:                                             ; preds = %.noexc16.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10982
  store ptr %i.ac, ptr %i.d, align 8, !noalias !10985
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10988, !noalias !10985
  store ptr %i.d, ptr %i.b, align 8, !dbg !10988, !noalias !10985
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10988
  store ptr @_RNvXs3_NtCsduyiHOaxwSq_10serde_json5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !dbg !10988, !noalias !10985
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @24, ptr noundef nonnull %i.b)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i unwind label %bb.k, !dbg !10994, !noalias !10982

bb.k:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i, %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val8.i.i.i.i.i = load ptr, ptr %i.d, align 8, !dbg !11000, !noalias !10985, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val8.i.i.i.i.i) #28
          to label %bb.m unwind label %bb.l, !dbg !11000, !noalias !10982

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11001, !noalias !10985
  %i.ae = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECsb6T6P0NKlCh_2h2(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %_RNCNCNCNvXs_Cs9PF4sIox9so_9slog_jsonINtBa_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBZ_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments000CsbaWXNhtWAp9_11foundations.exit.i.i.i.i unwind label %bb.k, !dbg !11002, !noalias !10982

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !11003, !noalias !10982
  unreachable, !dbg !11003

_RNCNCNCNvXs_Cs9PF4sIox9so_9slog_jsonINtBa_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBZ_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments000CsbaWXNhtWAp9_11foundations.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i
  %.val7.i.i.i.i.i = load ptr, ptr %i.d, align 8, !dbg !11000, !noalias !10985, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val7.i.i.i.i.i)
          to label %.noexc17.i.i.i unwind label %bb.f, !dbg !11000, !noalias !10907

.noexc17.i.i.i:                                   ; preds = %_RNCNCNCNvXs_Cs9PF4sIox9so_9slog_jsonINtBa_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBZ_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments000CsbaWXNhtWAp9_11foundations.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11004, !noalias !10982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11004, !noalias !10982
  br label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEE4withNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB2l_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtB1z_2io8buffered9bufwriter9BufWriterNtNtBa_2fs4FileENtB3b_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments0INtNtBZ_6result6ResultuNtB5k_5ErrorEECsbaWXNhtWAp9_11foundations.exit, !dbg !11005

bb.m:                                             ; preds = %bb.k, %bb.f
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.ad, %bb.k ]
  %i.ag = load i64, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !11006, !noalias !10907, !noundef !14
  %i.ah = add i64 %i.ag, 1, !dbg !11011
  store i64 %i.ah, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !11012, !noalias !10907
  resume { ptr, i32 } %eh.lpad-body.i.i.i, !dbg !11015

bb.n:                                             ; preds = %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.i.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #31, !dbg !11016, !noalias !11018
  unreachable, !dbg !11016

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEE4withNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB2l_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtB1z_2io8buffered9bufwriter9BufWriterNtNtBa_2fs4FileENtB3b_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments0INtNtBZ_6result6ResultuNtB5k_5ErrorEECsbaWXNhtWAp9_11foundations.exit: ; preds = %.noexc16.i.i.i, %.noexc17.i.i.i
  %.sroa.3.0.i.i.i.i = phi ptr [ %i.ae, %.noexc17.i.i.i ], [ undef, %.noexc16.i.i.i ], !dbg !11019
  %.sroa.0.0.i.i.i.i = phi i64 [ 0, %.noexc17.i.i.i ], [ -1, %.noexc16.i.i.i ], !dbg !11019
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i.i, i64 24, !dbg !11020
  store i64 0, ptr %i.ai, align 8, !dbg !11020, !noalias !10907
  %i.aj = load i64, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !11027, !noalias !10907, !noundef !14
  %i.ak = add i64 %i.aj, 1, !dbg !11032
  store i64 %i.ak, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !11033, !noalias !10907
  %i.al = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i.i.i, 0, !dbg !11036
  %i.am = insertvalue { i64, ptr } %i.al, ptr %.sroa.3.0.i.i.i.i, 1, !dbg !11036
  ret { i64, ptr } %i.am, !dbg !11037
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs_Cs9PF4sIox9so_9slog_jsonINtB4_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBT_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer7emit_i8CsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11038 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %3, ptr %i.d, align 1
  %i.e = call noundef align 8 ptr @_RINvYINtNtCsduyiHOaxwSq_10serde_json3ser8CompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB6_15PrettyFormatterENtNtCs5FjQZcNRzHx_10serde_core3ser12SerializeMap15serialize_entryeaECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.d), !dbg !11039 ; 2 uses
  %.not = icmp eq ptr %i.e, null, !dbg !11041
  br i1 %.not, label %bb.f, label %bb.b, !dbg !11044

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8, !noalias !11045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11048, !noalias !11045
  store ptr %i.c, ptr %i.a, align 8, !dbg !11048, !noalias !11045
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11048
  store ptr @_RNvXs3_NtCsduyiHOaxwSq_10serde_json5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !11048, !noalias !11045
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.c, !dbg !11054

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.val8.i = load ptr, ptr %i.c, align 8, !dbg !11060, !noalias !11045, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val8.i) #28
          to label %bb.e unwind label %bb.d, !dbg !11060

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11061, !noalias !11045
  %i.g = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECsb6T6P0NKlCh_2h2(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer7emit_i80CsbaWXNhtWAp9_11foundations.exit unwind label %bb.c, !dbg !11062

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !11063
  unreachable, !dbg !11063

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f, !dbg !11063

_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer7emit_i80CsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i
  %.val7.i = load ptr, ptr %i.c, align 8, !dbg !11060, !noalias !11045, !nonnull !14, !noundef !14
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val7.i), !dbg !11060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11064
  br label %bb.f, !dbg !11065

bb.f:                                             ; preds = %bb.a, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer7emit_i80CsbaWXNhtWAp9_11foundations.exit
  %.sroa.3.0 = phi ptr [ %i.g, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer7emit_i80CsbaWXNhtWAp9_11foundations.exit ], [ undef, %bb.a ], !dbg !11066
  %.sroa.0.0 = phi i64 [ 0, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer7emit_i80CsbaWXNhtWAp9_11foundations.exit ], [ -1, %bb.a ], !dbg !11066
  %i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !11065
  %i.j = insertvalue { i64, ptr } %i.i, ptr %.sroa.3.0, 1, !dbg !11065
  ret { i64, ptr } %i.j, !dbg !11065
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs_Cs9PF4sIox9so_9slog_jsonINtB4_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBT_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer7emit_u8CsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11067 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %3, ptr %i.d, align 1
  %i.e = call noundef align 8 ptr @_RINvYINtNtCsduyiHOaxwSq_10serde_json3ser8CompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB6_15PrettyFormatterENtNtCs5FjQZcNRzHx_10serde_core3ser12SerializeMap15serialize_entryehECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.d), !dbg !11068 ; 2 uses
  %.not = icmp eq ptr %i.e, null, !dbg !11070
  br i1 %.not, label %bb.f, label %bb.b, !dbg !11073

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8, !noalias !11074
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11077, !noalias !11074
  store ptr %i.c, ptr %i.a, align 8, !dbg !11077, !noalias !11074
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11077
end_hunk_3
begin_hunk_4_@_RNvXs_Cs9PF4sIox9so_9slog_jsonINtB4_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBT_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer9emit_unitCsbaWXNhtWAp9_11foundations:bb.a
  %i.d = tail call noundef align 8 ptr @_RINvYINtNtCsduyiHOaxwSq_10serde_json3ser8CompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB6_15PrettyFormatterENtNtCs5FjQZcNRzHx_10serde_core3ser12SerializeMap15serialize_entryeuECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr)), !dbg !11507 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !11509
  br i1 %.not, label %bb.f, label %bb.b, !dbg !11512

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8, !noalias !11513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11516, !noalias !11513
  store ptr %i.c, ptr %i.a, align 8, !dbg !11516, !noalias !11513
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11516
  store ptr @_RNvXs3_NtCsduyiHOaxwSq_10serde_json5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !11516, !noalias !11513
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.c, !dbg !11522

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val8.i = load ptr, ptr %i.c, align 8, !dbg !11528, !noalias !11513, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val8.i) #28
          to label %bb.e unwind label %bb.d, !dbg !11528

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11529, !noalias !11513
  %i.f = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECsb6T6P0NKlCh_2h2(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer9emit_unit0CsbaWXNhtWAp9_11foundations.exit unwind label %bb.c, !dbg !11530

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !11531
  unreachable, !dbg !11531

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e, !dbg !11531

_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer9emit_unit0CsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i
  %.val7.i = load ptr, ptr %i.c, align 8, !dbg !11528, !noalias !11513, !nonnull !14, !noundef !14
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val7.i), !dbg !11528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11532
  br label %bb.f, !dbg !11533

bb.f:                                             ; preds = %bb.a, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer9emit_unit0CsbaWXNhtWAp9_11foundations.exit
  %.sroa.3.0 = phi ptr [ %i.f, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer9emit_unit0CsbaWXNhtWAp9_11foundations.exit ], [ undef, %bb.a ], !dbg !11534
  %.sroa.0.0 = phi i64 [ 0, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer9emit_unit0CsbaWXNhtWAp9_11foundations.exit ], [ -1, %bb.a ], !dbg !11534
  %i.h = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !11533
  %i.i = insertvalue { i64, ptr } %i.h, ptr %.sroa.3.0, 1, !dbg !11533
  ret { i64, ptr } %i.i, !dbg !11533
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs_Cs9PF4sIox9so_9slog_jsonINtB4_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer10emit_isizeB2J_(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11535 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %3, ptr %i.d, align 8
  %i.e = call noundef align 8 ptr @_RINvYINtNtCsduyiHOaxwSq_10serde_json3ser8CompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB6_16CompactFormatterENtNtCs5FjQZcNRzHx_10serde_core3ser12SerializeMap15serialize_entryeiEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d), !dbg !11536 ; 2 uses
  %.not = icmp eq ptr %i.e, null, !dbg !11538
  br i1 %.not, label %bb.f, label %bb.b, !dbg !11541

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8, !noalias !11542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11545, !noalias !11542
  store ptr %i.c, ptr %i.a, align 8, !dbg !11545, !noalias !11542
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11545
  store ptr @_RNvXs3_NtCsduyiHOaxwSq_10serde_json5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !11545, !noalias !11542
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.c, !dbg !11551

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.val8.i = load ptr, ptr %i.c, align 8, !dbg !11557, !noalias !11542, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val8.i) #28
          to label %bb.e unwind label %bb.d, !dbg !11557

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11558, !noalias !11542
  %i.g = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECsb6T6P0NKlCh_2h2(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer10emit_isize0B2L_.exit unwind label %bb.c, !dbg !11559

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !11560
  unreachable, !dbg !11560

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f, !dbg !11560

_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer10emit_isize0B2L_.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i
  %.val7.i = load ptr, ptr %i.c, align 8, !dbg !11557, !noalias !11542, !nonnull !14, !noundef !14
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val7.i), !dbg !11557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11561
  br label %bb.f, !dbg !11562

bb.f:                                             ; preds = %bb.a, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer10emit_isize0B2L_.exit
  %.sroa.3.0 = phi ptr [ %i.g, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer10emit_isize0B2L_.exit ], [ undef, %bb.a ], !dbg !11563
  %.sroa.0.0 = phi i64 [ 0, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer10emit_isize0B2L_.exit ], [ -1, %bb.a ], !dbg !11563
  %i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !11562
  %i.j = insertvalue { i64, ptr } %i.i, ptr %.sroa.3.0, 1, !dbg !11562
  ret { i64, ptr } %i.j, !dbg !11562
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs_Cs9PF4sIox9so_9slog_jsonINtB4_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer10emit_usizeB2J_(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11564 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %3, ptr %i.d, align 8
  %i.e = call noundef align 8 ptr @_RINvYINtNtCsduyiHOaxwSq_10serde_json3ser8CompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB6_16CompactFormatterENtNtCs5FjQZcNRzHx_10serde_core3ser12SerializeMap15serialize_entryejEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d), !dbg !11565 ; 2 uses
  %.not = icmp eq ptr %i.e, null, !dbg !11567
  br i1 %.not, label %bb.f, label %bb.b, !dbg !11570

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8, !noalias !11571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11574, !noalias !11571
  store ptr %i.c, ptr %i.a, align 8, !dbg !11574, !noalias !11571
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11574
  store ptr @_RNvXs3_NtCsduyiHOaxwSq_10serde_json5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !11574, !noalias !11571
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.c, !dbg !11580

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.val8.i = load ptr, ptr %i.c, align 8, !dbg !11586, !noalias !11571, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val8.i) #28
          to label %bb.e unwind label %bb.d, !dbg !11586

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11587, !noalias !11571
  %i.g = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECsb6T6P0NKlCh_2h2(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer10emit_usize0B2L_.exit unwind label %bb.c, !dbg !11588

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !11589
  unreachable, !dbg !11589

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f, !dbg !11589

_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer10emit_usize0B2L_.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i
  %.val7.i = load ptr, ptr %i.c, align 8, !dbg !11586, !noalias !11571, !nonnull !14, !noundef !14
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val7.i), !dbg !11586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11590
  br label %bb.f, !dbg !11591

bb.f:                                             ; preds = %bb.a, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer10emit_usize0B2L_.exit
  %.sroa.3.0 = phi ptr [ %i.g, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer10emit_usize0B2L_.exit ], [ undef, %bb.a ], !dbg !11592
  %.sroa.0.0 = phi i64 [ 0, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer10emit_usize0B2L_.exit ], [ -1, %bb.a ], !dbg !11592
  %i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !11591
  %i.j = insertvalue { i64, ptr } %i.i, ptr %.sroa.3.0, 1, !dbg !11591
  ret { i64, ptr } %i.j, !dbg !11591
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs_Cs9PF4sIox9so_9slog_jsonINtB4_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer14emit_argumentsB2J_(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11593 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF0023___RUST_STD_INTERNAL_VAL), !dbg !11594 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !11601
  %i.g = load i8, ptr %i.f, align 8, !dbg !11605, !range !3664, !noalias !11606, !noundef !14
  %i.h = icmp eq i8 %i.g, 1, !dbg !11617
  br i1 %i.h, label %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.thread.i.i, label %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !11617, !prof !264

_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.a
  %i.i = tail call noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEuE16get_or_init_slowNvNvCs9PF4sIox9so_9slog_json6TL_BUF27___rust_std_internal_init_fnECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef align 8 dereferenceable_or_null(40) null), !dbg !11618, !noalias !11619 ; 2 uses
  %i.j = icmp eq ptr %i.i, null, !dbg !11620
  br i1 %i.j, label %bb.n, label %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.thread.i.i, !dbg !11630

_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.thread.i.i: ; preds = %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.i.i, %bb.a
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.i, %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.i.i ], [ %i.e, %bb.a ] ; 10 uses
  %i.k = load i64, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !11631, !noalias !11643, !noundef !14
  %i.l = icmp eq i64 %i.k, 0, !dbg !11646
  br i1 %i.l, label %bb.b, label %bb.c, !dbg !11646, !prof !264

bb.b:                                             ; preds = %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.thread.i.i
  store i64 -1, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !11647, !noalias !11643
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i.i, i64 8, !dbg !11653 ; 3 uses
  %i.n = load ptr, ptr %3, align 8, !dbg !11657, !noalias !11643, !nonnull !14, !noundef !14 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !11657
  %i.p = load ptr, ptr %i.o, align 8, !dbg !11657, !noalias !11643, !nonnull !14, !noundef !14 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64, !dbg !11659    ; 2 uses
  %4 = trunc i64 %i.q to i1, !dbg !11669
  br i1 %4, label %bb.d, label %bb.i, !dbg !11669

bb.c:                                             ; preds = %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.thread.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #31, !dbg !11671, !noalias !11643
  unreachable, !dbg !11671

bb.d:                                             ; preds = %bb.b
  %i.r = lshr i64 %i.q, 1, !dbg !11673            ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.r)
          to label %.noexc14.i.i.i unwind label %bb.f, !dbg !11674, !noalias !11643

.noexc14.i.i.i:                                   ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i.i, i64 24, !dbg !11685 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !dbg !11685, !alias.scope !11688, !noalias !11643, !noundef !14 ; 3 uses
  %i.u = icmp sgt i64 %i.t, -1, !dbg !11691
  tail call void @llvm.assume(i1 %i.u), !dbg !11692
  %.not.i.i.i.i = icmp eq i64 %i.r, 0, !dbg !11693
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %bb.e, !dbg !11693

bb.e:                                             ; preds = %.noexc14.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i.i, i64 16, !dbg !11694
  %i.w = load ptr, ptr %i.v, align 8, !dbg !11694, !alias.scope !11688, !noalias !11643, !nonnull !14, !noundef !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t, !dbg !11699
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull readonly align 1 %i.n, i64 %i.r, i1 false), !dbg !11701, !noalias !11643
  %.pre.i.i.i.i = load i64, ptr %i.s, align 8, !dbg !11703, !alias.scope !11688, !noalias !11643
  br label %.thread.i.i.i, !dbg !11704

.thread.i.i.i:                                    ; preds = %bb.e, %.noexc14.i.i.i
  %i.y = phi i64 [ %.pre.i.i.i.i, %bb.e ], [ %i.t, %.noexc14.i.i.i ], !dbg !11703
  %i.z = add i64 %i.y, %i.r, !dbg !11703
  store i64 %i.z, ptr %i.s, align 8, !dbg !11703, !alias.scope !11688, !noalias !11643
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsbaWXNhtWAp9_11foundations.exit.i.i.i, !dbg !11705

bb.f:                                             ; preds = %_RNCNCNCNvXs_Cs9PF4sIox9so_9slog_jsonINtBa_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments000B2P_.exit.i.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsbaWXNhtWAp9_11foundations.exit.i.i.i, %bb.i, %bb.h, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.m, !dbg !11707

bb.g:                                             ; preds = %bb.i
  br i1 %i.ab, label %bb.h, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsbaWXNhtWAp9_11foundations.exit.i.i.i, !dbg !11705, !prof !10214

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #31
          to label %.noexc.i.i.i unwind label %bb.f, !dbg !11708, !noalias !11643

.noexc.i.i.i:                                     ; preds = %bb.h
  unreachable, !dbg !11708

bb.i:                                             ; preds = %bb.b
  %i.ab = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @26, ptr noundef nonnull %i.n, ptr noundef nonnull %i.p)
          to label %bb.g unwind label %bb.f, !dbg !11709, !noalias !11643

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsbaWXNhtWAp9_11foundations.exit.i.i.i: ; preds = %bb.g, %.thread.i.i.i
  %i.ac = invoke noundef align 8 ptr @_RINvYINtNtCsduyiHOaxwSq_10serde_json3ser8CompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB6_16CompactFormatterENtNtCs5FjQZcNRzHx_10serde_core3ser12SerializeMap15serialize_entryeNtNtBV_6string6StringEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %.noexc16.i.i.i unwind label %bb.f, !dbg !11710, !noalias !11643 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsbaWXNhtWAp9_11foundations.exit.i.i.i
  %.not.i15.i.i.i = icmp eq ptr %i.ac, null, !dbg !11714
  br i1 %.not.i15.i.i.i, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEE4withNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB2l_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtB1z_2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments0INtNtBZ_6result6ResultuNtB60_5ErrorEEB4L_.exit, label %bb.j, !dbg !11717

bb.j:                                             ; preds = %.noexc16.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11718
  store ptr %i.ac, ptr %i.d, align 8, !noalias !11721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11724, !noalias !11721
  store ptr %i.d, ptr %i.b, align 8, !dbg !11724, !noalias !11721
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !11724
  store ptr @_RNvXs3_NtCsduyiHOaxwSq_10serde_json5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !dbg !11724, !noalias !11721
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @24, ptr noundef nonnull %i.b)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i unwind label %bb.k, !dbg !11730, !noalias !11718

bb.k:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i, %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val8.i.i.i.i.i = load ptr, ptr %i.d, align 8, !dbg !11736, !noalias !11721, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val8.i.i.i.i.i) #28
          to label %bb.m unwind label %bb.l, !dbg !11736, !noalias !11718

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11737, !noalias !11721
  %i.ae = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECsb6T6P0NKlCh_2h2(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %_RNCNCNCNvXs_Cs9PF4sIox9so_9slog_jsonINtBa_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments000B2P_.exit.i.i.i.i unwind label %bb.k, !dbg !11738, !noalias !11718

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !11739, !noalias !11718
  unreachable, !dbg !11739

_RNCNCNCNvXs_Cs9PF4sIox9so_9slog_jsonINtBa_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments000B2P_.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i
  %.val7.i.i.i.i.i = load ptr, ptr %i.d, align 8, !dbg !11736, !noalias !11721, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val7.i.i.i.i.i)
          to label %.noexc17.i.i.i unwind label %bb.f, !dbg !11736, !noalias !11643

.noexc17.i.i.i:                                   ; preds = %_RNCNCNCNvXs_Cs9PF4sIox9so_9slog_jsonINtBa_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments000B2P_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11740, !noalias !11718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11740, !noalias !11718
  br label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEE4withNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB2l_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtB1z_2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments0INtNtBZ_6result6ResultuNtB60_5ErrorEEB4L_.exit, !dbg !11741

bb.m:                                             ; preds = %bb.k, %bb.f
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.ad, %bb.k ]
  %i.ag = load i64, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !11742, !noalias !11643, !noundef !14
  %i.ah = add i64 %i.ag, 1, !dbg !11747
  store i64 %i.ah, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !11748, !noalias !11643
  resume { ptr, i32 } %eh.lpad-body.i.i.i, !dbg !11751

bb.n:                                             ; preds = %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.i.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #31, !dbg !11752, !noalias !11754
  unreachable, !dbg !11752

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEE4withNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB2l_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtB1z_2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments0INtNtBZ_6result6ResultuNtB60_5ErrorEEB4L_.exit: ; preds = %.noexc16.i.i.i, %.noexc17.i.i.i
  %.sroa.3.0.i.i.i.i = phi ptr [ %i.ae, %.noexc17.i.i.i ], [ undef, %.noexc16.i.i.i ], !dbg !11755
  %.sroa.0.0.i.i.i.i = phi i64 [ 0, %.noexc17.i.i.i ], [ -1, %.noexc16.i.i.i ], !dbg !11755
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i.i, i64 24, !dbg !11756
  store i64 0, ptr %i.ai, align 8, !dbg !11756, !noalias !11643
  %i.aj = load i64, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !11763, !noalias !11643, !noundef !14
  %i.ak = add i64 %i.aj, 1, !dbg !11768
  store i64 %i.ak, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !11769, !noalias !11643
  %i.al = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i.i.i, 0, !dbg !11772
  %i.am = insertvalue { i64, ptr } %i.al, ptr %.sroa.3.0.i.i.i.i, 1, !dbg !11772
  ret { i64, ptr } %i.am, !dbg !11773
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs_Cs9PF4sIox9so_9slog_jsonINtB4_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer7emit_i8B2J_(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11774 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %3, ptr %i.d, align 1
  %i.e = call noundef align 8 ptr @_RINvYINtNtCsduyiHOaxwSq_10serde_json3ser8CompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB6_16CompactFormatterENtNtCs5FjQZcNRzHx_10serde_core3ser12SerializeMap15serialize_entryeaEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.d), !dbg !11775 ; 2 uses
  %.not = icmp eq ptr %i.e, null, !dbg !11777
  br i1 %.not, label %bb.f, label %bb.b, !dbg !11780

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8, !noalias !11781
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11784, !noalias !11781
  store ptr %i.c, ptr %i.a, align 8, !dbg !11784, !noalias !11781
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11784
  store ptr @_RNvXs3_NtCsduyiHOaxwSq_10serde_json5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !11784, !noalias !11781
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.c, !dbg !11790

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.val8.i = load ptr, ptr %i.c, align 8, !dbg !11796, !noalias !11781, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val8.i) #28
          to label %bb.e unwind label %bb.d, !dbg !11796

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11797, !noalias !11781
  %i.g = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECsb6T6P0NKlCh_2h2(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer7emit_i80B2L_.exit unwind label %bb.c, !dbg !11798

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !11799
  unreachable, !dbg !11799

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f, !dbg !11799

_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer7emit_i80B2L_.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i
  %.val7.i = load ptr, ptr %i.c, align 8, !dbg !11796, !noalias !11781, !nonnull !14, !noundef !14
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val7.i), !dbg !11796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11800
  br label %bb.f, !dbg !11801

bb.f:                                             ; preds = %bb.a, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer7emit_i80B2L_.exit
  %.sroa.3.0 = phi ptr [ %i.g, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer7emit_i80B2L_.exit ], [ undef, %bb.a ], !dbg !11802
  %.sroa.0.0 = phi i64 [ 0, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer7emit_i80B2L_.exit ], [ -1, %bb.a ], !dbg !11802
  %i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !11801
  %i.j = insertvalue { i64, ptr } %i.i, ptr %.sroa.3.0, 1, !dbg !11801
  ret { i64, ptr } %i.j, !dbg !11801
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs_Cs9PF4sIox9so_9slog_jsonINtB4_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer7emit_u8B2J_(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11803 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %3, ptr %i.d, align 1
  %i.e = call noundef align 8 ptr @_RINvYINtNtCsduyiHOaxwSq_10serde_json3ser8CompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB6_16CompactFormatterENtNtCs5FjQZcNRzHx_10serde_core3ser12SerializeMap15serialize_entryehEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.d), !dbg !11804 ; 2 uses
  %.not = icmp eq ptr %i.e, null, !dbg !11806
  br i1 %.not, label %bb.f, label %bb.b, !dbg !11809

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8, !noalias !11810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11813, !noalias !11810
  store ptr %i.c, ptr %i.a, align 8, !dbg !11813, !noalias !11810
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11813
end_hunk_4
begin_hunk_5_@_RNvXs_Cs9PF4sIox9so_9slog_jsonINtB4_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer9emit_unitB2J_:bb.a
  %i.d = tail call noundef align 8 ptr @_RINvYINtNtCsduyiHOaxwSq_10serde_json3ser8CompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB6_16CompactFormatterENtNtCs5FjQZcNRzHx_10serde_core3ser12SerializeMap15serialize_entryeuEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr)), !dbg !12243 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !12245
  br i1 %.not, label %bb.f, label %bb.b, !dbg !12248

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8, !noalias !12249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12252, !noalias !12249
  store ptr %i.c, ptr %i.a, align 8, !dbg !12252, !noalias !12249
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12252
  store ptr @_RNvXs3_NtCsduyiHOaxwSq_10serde_json5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !12252, !noalias !12249
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.c, !dbg !12258

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val8.i = load ptr, ptr %i.c, align 8, !dbg !12264, !noalias !12249, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val8.i) #28
          to label %bb.e unwind label %bb.d, !dbg !12264

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12265, !noalias !12249
  %i.f = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECsb6T6P0NKlCh_2h2(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer9emit_unit0B2L_.exit unwind label %bb.c, !dbg !12266

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !12267
  unreachable, !dbg !12267

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e, !dbg !12267

_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer9emit_unit0B2L_.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i
  %.val7.i = load ptr, ptr %i.c, align 8, !dbg !12264, !noalias !12249, !nonnull !14, !noundef !14
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val7.i), !dbg !12264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12268
  br label %bb.f, !dbg !12269

bb.f:                                             ; preds = %bb.a, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer9emit_unit0B2L_.exit
  %.sroa.3.0 = phi ptr [ %i.f, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer9emit_unit0B2L_.exit ], [ undef, %bb.a ], !dbg !12270
  %.sroa.0.0 = phi i64 [ 0, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEENtCscuJkFUZt1a2_4slog10Serializer9emit_unit0B2L_.exit ], [ -1, %bb.a ], !dbg !12270
  %i.h = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !12269
  %i.i = insertvalue { i64, ptr } %i.h, ptr %.sroa.3.0, 1, !dbg !12269
  ret { i64, ptr } %i.i, !dbg !12269
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs_Cs9PF4sIox9so_9slog_jsonINtB4_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtBT_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer10emit_isizeB2J_(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12271 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %3, ptr %i.d, align 8
  %i.e = call noundef align 8 ptr @_RINvYINtNtCsduyiHOaxwSq_10serde_json3ser8CompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB6_15PrettyFormatterENtNtCs5FjQZcNRzHx_10serde_core3ser12SerializeMap15serialize_entryeiEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d), !dbg !12272 ; 2 uses
  %.not = icmp eq ptr %i.e, null, !dbg !12274
  br i1 %.not, label %bb.f, label %bb.b, !dbg !12277

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8, !noalias !12278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12281, !noalias !12278
  store ptr %i.c, ptr %i.a, align 8, !dbg !12281, !noalias !12278
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12281
  store ptr @_RNvXs3_NtCsduyiHOaxwSq_10serde_json5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !12281, !noalias !12278
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.c, !dbg !12287

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.val8.i = load ptr, ptr %i.c, align 8, !dbg !12293, !noalias !12278, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val8.i) #28
          to label %bb.e unwind label %bb.d, !dbg !12293

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12294, !noalias !12278
  %i.g = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECsb6T6P0NKlCh_2h2(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer10emit_isize0B2L_.exit unwind label %bb.c, !dbg !12295

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !12296
  unreachable, !dbg !12296

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f, !dbg !12296

_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer10emit_isize0B2L_.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i
  %.val7.i = load ptr, ptr %i.c, align 8, !dbg !12293, !noalias !12278, !nonnull !14, !noundef !14
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val7.i), !dbg !12293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12297
  br label %bb.f, !dbg !12298

bb.f:                                             ; preds = %bb.a, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer10emit_isize0B2L_.exit
  %.sroa.3.0 = phi ptr [ %i.g, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer10emit_isize0B2L_.exit ], [ undef, %bb.a ], !dbg !12299
  %.sroa.0.0 = phi i64 [ 0, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer10emit_isize0B2L_.exit ], [ -1, %bb.a ], !dbg !12299
  %i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !12298
  %i.j = insertvalue { i64, ptr } %i.i, ptr %.sroa.3.0, 1, !dbg !12298
  ret { i64, ptr } %i.j, !dbg !12298
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs_Cs9PF4sIox9so_9slog_jsonINtB4_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtBT_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer10emit_usizeB2J_(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12300 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %3, ptr %i.d, align 8
  %i.e = call noundef align 8 ptr @_RINvYINtNtCsduyiHOaxwSq_10serde_json3ser8CompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB6_15PrettyFormatterENtNtCs5FjQZcNRzHx_10serde_core3ser12SerializeMap15serialize_entryejEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d), !dbg !12301 ; 2 uses
  %.not = icmp eq ptr %i.e, null, !dbg !12303
  br i1 %.not, label %bb.f, label %bb.b, !dbg !12306

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8, !noalias !12307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12310, !noalias !12307
  store ptr %i.c, ptr %i.a, align 8, !dbg !12310, !noalias !12307
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12310
  store ptr @_RNvXs3_NtCsduyiHOaxwSq_10serde_json5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !12310, !noalias !12307
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.c, !dbg !12316

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.val8.i = load ptr, ptr %i.c, align 8, !dbg !12322, !noalias !12307, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val8.i) #28
          to label %bb.e unwind label %bb.d, !dbg !12322

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12323, !noalias !12307
  %i.g = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECsb6T6P0NKlCh_2h2(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer10emit_usize0B2L_.exit unwind label %bb.c, !dbg !12324

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !12325
  unreachable, !dbg !12325

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f, !dbg !12325

_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer10emit_usize0B2L_.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i
  %.val7.i = load ptr, ptr %i.c, align 8, !dbg !12322, !noalias !12307, !nonnull !14, !noundef !14
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val7.i), !dbg !12322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12326
  br label %bb.f, !dbg !12327

bb.f:                                             ; preds = %bb.a, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer10emit_usize0B2L_.exit
  %.sroa.3.0 = phi ptr [ %i.g, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer10emit_usize0B2L_.exit ], [ undef, %bb.a ], !dbg !12328
  %.sroa.0.0 = phi i64 [ 0, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer10emit_usize0B2L_.exit ], [ -1, %bb.a ], !dbg !12328
  %i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !12327
  %i.j = insertvalue { i64, ptr } %i.i, ptr %.sroa.3.0, 1, !dbg !12327
  ret { i64, ptr } %i.j, !dbg !12327
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs_Cs9PF4sIox9so_9slog_jsonINtB4_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtBT_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer14emit_argumentsB2J_(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12329 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF0023___RUST_STD_INTERNAL_VAL), !dbg !12330 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !12337
  %i.g = load i8, ptr %i.f, align 8, !dbg !12341, !range !3664, !noalias !12342, !noundef !14
  %i.h = icmp eq i8 %i.g, 1, !dbg !12353
  br i1 %i.h, label %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.thread.i.i, label %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !12353, !prof !264

_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.a
  %i.i = tail call noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEuE16get_or_init_slowNvNvCs9PF4sIox9so_9slog_json6TL_BUF27___rust_std_internal_init_fnECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef align 8 dereferenceable_or_null(40) null), !dbg !12354, !noalias !12355 ; 2 uses
  %i.j = icmp eq ptr %i.i, null, !dbg !12356
  br i1 %i.j, label %bb.n, label %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.thread.i.i, !dbg !12366

_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.thread.i.i: ; preds = %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.i.i, %bb.a
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.i, %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.i.i ], [ %i.e, %bb.a ] ; 10 uses
  %i.k = load i64, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !12367, !noalias !12379, !noundef !14
  %i.l = icmp eq i64 %i.k, 0, !dbg !12382
  br i1 %i.l, label %bb.b, label %bb.c, !dbg !12382, !prof !264

bb.b:                                             ; preds = %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.thread.i.i
  store i64 -1, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !12383, !noalias !12379
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i.i, i64 8, !dbg !12389 ; 3 uses
  %i.n = load ptr, ptr %3, align 8, !dbg !12393, !noalias !12379, !nonnull !14, !noundef !14 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !12393
  %i.p = load ptr, ptr %i.o, align 8, !dbg !12393, !noalias !12379, !nonnull !14, !noundef !14 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64, !dbg !12395    ; 2 uses
  %4 = trunc i64 %i.q to i1, !dbg !12405
  br i1 %4, label %bb.d, label %bb.i, !dbg !12405

bb.c:                                             ; preds = %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.thread.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #31, !dbg !12407, !noalias !12379
  unreachable, !dbg !12407

bb.d:                                             ; preds = %bb.b
  %i.r = lshr i64 %i.q, 1, !dbg !12409            ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.r)
          to label %.noexc14.i.i.i unwind label %bb.f, !dbg !12410, !noalias !12379

.noexc14.i.i.i:                                   ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i.i, i64 24, !dbg !12421 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !dbg !12421, !alias.scope !12424, !noalias !12379, !noundef !14 ; 3 uses
  %i.u = icmp sgt i64 %i.t, -1, !dbg !12427
  tail call void @llvm.assume(i1 %i.u), !dbg !12428
  %.not.i.i.i.i = icmp eq i64 %i.r, 0, !dbg !12429
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %bb.e, !dbg !12429

bb.e:                                             ; preds = %.noexc14.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i.i, i64 16, !dbg !12430
  %i.w = load ptr, ptr %i.v, align 8, !dbg !12430, !alias.scope !12424, !noalias !12379, !nonnull !14, !noundef !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t, !dbg !12435
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull readonly align 1 %i.n, i64 %i.r, i1 false), !dbg !12437, !noalias !12379
  %.pre.i.i.i.i = load i64, ptr %i.s, align 8, !dbg !12439, !alias.scope !12424, !noalias !12379
  br label %.thread.i.i.i, !dbg !12440

.thread.i.i.i:                                    ; preds = %bb.e, %.noexc14.i.i.i
  %i.y = phi i64 [ %.pre.i.i.i.i, %bb.e ], [ %i.t, %.noexc14.i.i.i ], !dbg !12439
  %i.z = add i64 %i.y, %i.r, !dbg !12439
  store i64 %i.z, ptr %i.s, align 8, !dbg !12439, !alias.scope !12424, !noalias !12379
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsbaWXNhtWAp9_11foundations.exit.i.i.i, !dbg !12441

bb.f:                                             ; preds = %_RNCNCNCNvXs_Cs9PF4sIox9so_9slog_jsonINtBa_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtBZ_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments000B2P_.exit.i.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsbaWXNhtWAp9_11foundations.exit.i.i.i, %bb.i, %bb.h, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.m, !dbg !12443

bb.g:                                             ; preds = %bb.i
  br i1 %i.ab, label %bb.h, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsbaWXNhtWAp9_11foundations.exit.i.i.i, !dbg !12441, !prof !10214

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #31
          to label %.noexc.i.i.i unwind label %bb.f, !dbg !12444, !noalias !12379

.noexc.i.i.i:                                     ; preds = %bb.h
  unreachable, !dbg !12444

bb.i:                                             ; preds = %bb.b
  %i.ab = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @26, ptr noundef nonnull %i.n, ptr noundef nonnull %i.p)
          to label %bb.g unwind label %bb.f, !dbg !12445, !noalias !12379

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsbaWXNhtWAp9_11foundations.exit.i.i.i: ; preds = %bb.g, %.thread.i.i.i
  %i.ac = invoke noundef align 8 ptr @_RINvYINtNtCsduyiHOaxwSq_10serde_json3ser8CompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB6_15PrettyFormatterENtNtCs5FjQZcNRzHx_10serde_core3ser12SerializeMap15serialize_entryeNtNtBV_6string6StringEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %.noexc16.i.i.i unwind label %bb.f, !dbg !12446, !noalias !12379 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsbaWXNhtWAp9_11foundations.exit.i.i.i
  %.not.i15.i.i.i = icmp eq ptr %i.ac, null, !dbg !12450
  br i1 %.not.i15.i.i.i, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEE4withNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB2l_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtB1z_2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB3b_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments0INtNtBZ_6result6ResultuNtB6n_5ErrorEEB4L_.exit, label %bb.j, !dbg !12453

bb.j:                                             ; preds = %.noexc16.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12454
  store ptr %i.ac, ptr %i.d, align 8, !noalias !12457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12460, !noalias !12457
  store ptr %i.d, ptr %i.b, align 8, !dbg !12460, !noalias !12457
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12460
  store ptr @_RNvXs3_NtCsduyiHOaxwSq_10serde_json5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !dbg !12460, !noalias !12457
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @24, ptr noundef nonnull %i.b)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i unwind label %bb.k, !dbg !12466, !noalias !12454

bb.k:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i, %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val8.i.i.i.i.i = load ptr, ptr %i.d, align 8, !dbg !12472, !noalias !12457, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val8.i.i.i.i.i) #28
          to label %bb.m unwind label %bb.l, !dbg !12472, !noalias !12454

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12473, !noalias !12457
  %i.ae = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECsb6T6P0NKlCh_2h2(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %_RNCNCNCNvXs_Cs9PF4sIox9so_9slog_jsonINtBa_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtBZ_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments000B2P_.exit.i.i.i.i unwind label %bb.k, !dbg !12474, !noalias !12454

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !12475, !noalias !12454
  unreachable, !dbg !12475

_RNCNCNCNvXs_Cs9PF4sIox9so_9slog_jsonINtBa_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtBZ_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments000B2P_.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i
  %.val7.i.i.i.i.i = load ptr, ptr %i.d, align 8, !dbg !12472, !noalias !12457, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val7.i.i.i.i.i)
          to label %.noexc17.i.i.i unwind label %bb.f, !dbg !12472, !noalias !12379

.noexc17.i.i.i:                                   ; preds = %_RNCNCNCNvXs_Cs9PF4sIox9so_9slog_jsonINtBa_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtBZ_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments000B2P_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12476, !noalias !12454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12476, !noalias !12454
  br label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEE4withNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB2l_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtB1z_2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB3b_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments0INtNtBZ_6result6ResultuNtB6n_5ErrorEEB4L_.exit, !dbg !12477

bb.m:                                             ; preds = %bb.k, %bb.f
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.ad, %bb.k ]
  %i.ag = load i64, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !12478, !noalias !12379, !noundef !14
  %i.ah = add i64 %i.ag, 1, !dbg !12483
  store i64 %i.ah, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !12484, !noalias !12379
  resume { ptr, i32 } %eh.lpad-body.i.i.i, !dbg !12487

bb.n:                                             ; preds = %_RNvYNCNKNvCs9PF4sIox9so_9slog_json6TL_BUF00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBM_6option6OptionQIB1r_INtNtBM_4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.i.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #31, !dbg !12488, !noalias !12490
  unreachable, !dbg !12488

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell7RefCellNtNtCs1xwejQucwHj_5alloc6string6StringEE4withNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB2l_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtB1z_2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB3b_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer14emit_arguments0INtNtBZ_6result6ResultuNtB6n_5ErrorEEB4L_.exit: ; preds = %.noexc16.i.i.i, %.noexc17.i.i.i
  %.sroa.3.0.i.i.i.i = phi ptr [ %i.ae, %.noexc17.i.i.i ], [ undef, %.noexc16.i.i.i ], !dbg !12491
  %.sroa.0.0.i.i.i.i = phi i64 [ 0, %.noexc17.i.i.i ], [ -1, %.noexc16.i.i.i ], !dbg !12491
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i.i, i64 24, !dbg !12492
  store i64 0, ptr %i.ai, align 8, !dbg !12492, !noalias !12379
  %i.aj = load i64, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !12499, !noalias !12379, !noundef !14
  %i.ak = add i64 %i.aj, 1, !dbg !12504
  store i64 %i.ak, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !12505, !noalias !12379
  %i.al = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i.i.i, 0, !dbg !12508
  %i.am = insertvalue { i64, ptr } %i.al, ptr %.sroa.3.0.i.i.i.i, 1, !dbg !12508
  ret { i64, ptr } %i.am, !dbg !12509
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs_Cs9PF4sIox9so_9slog_jsonINtB4_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtBT_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer7emit_i8B2J_(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12510 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %3, ptr %i.d, align 1
  %i.e = call noundef align 8 ptr @_RINvYINtNtCsduyiHOaxwSq_10serde_json3ser8CompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB6_15PrettyFormatterENtNtCs5FjQZcNRzHx_10serde_core3ser12SerializeMap15serialize_entryeaEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.d), !dbg !12511 ; 2 uses
  %.not = icmp eq ptr %i.e, null, !dbg !12513
  br i1 %.not, label %bb.f, label %bb.b, !dbg !12516

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8, !noalias !12517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12520, !noalias !12517
  store ptr %i.c, ptr %i.a, align 8, !dbg !12520, !noalias !12517
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12520
  store ptr @_RNvXs3_NtCsduyiHOaxwSq_10serde_json5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !12520, !noalias !12517
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.c, !dbg !12526

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.val8.i = load ptr, ptr %i.c, align 8, !dbg !12532, !noalias !12517, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val8.i) #28
          to label %bb.e unwind label %bb.d, !dbg !12532

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12533, !noalias !12517
  %i.g = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECsb6T6P0NKlCh_2h2(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer7emit_i80B2L_.exit unwind label %bb.c, !dbg !12534

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !12535
  unreachable, !dbg !12535

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f, !dbg !12535

_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer7emit_i80B2L_.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit.i
  %.val7.i = load ptr, ptr %i.c, align 8, !dbg !12532, !noalias !12517, !nonnull !14, !noundef !14
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsduyiHOaxwSq_10serde_json5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val7.i), !dbg !12532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12536
  br label %bb.f, !dbg !12537

bb.f:                                             ; preds = %bb.a, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer7emit_i80B2L_.exit
  %.sroa.3.0 = phi ptr [ %i.g, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer7emit_i80B2L_.exit ], [ undef, %bb.a ], !dbg !12538
  %.sroa.0.0 = phi i64 [ 0, %_RNCNvXs_Cs9PF4sIox9so_9slog_jsonINtB6_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtBV_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer7emit_i80B2L_.exit ], [ -1, %bb.a ], !dbg !12538
  %i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !12537
  %i.j = insertvalue { i64, ptr } %i.i, ptr %.sroa.3.0, 1, !dbg !12537
  ret { i64, ptr } %i.j, !dbg !12537
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs_Cs9PF4sIox9so_9slog_jsonINtB4_15SerdeSerializerQINtNtCsduyiHOaxwSq_10serde_json3ser10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtBT_15PrettyFormatterEENtCscuJkFUZt1a2_4slog10Serializer7emit_u8B2J_(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12539 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %3, ptr %i.d, align 1
  %i.e = call noundef align 8 ptr @_RINvYINtNtCsduyiHOaxwSq_10serde_json3ser8CompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB6_15PrettyFormatterENtNtCs5FjQZcNRzHx_10serde_core3ser12SerializeMap15serialize_entryehEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.d), !dbg !12540 ; 2 uses
  %.not = icmp eq ptr %i.e, null, !dbg !12542
  br i1 %.not, label %bb.f, label %bb.b, !dbg !12545

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8, !noalias !12546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12549, !noalias !12546
  store ptr %i.c, ptr %i.a, align 8, !dbg !12549, !noalias !12546
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12549
end_hunk_5
