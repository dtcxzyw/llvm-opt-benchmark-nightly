Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.213?download=true
inline.NumInlined: 517
inline.NumDeleted: 308
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [111 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-web-4.14.0/src/middleware/logger.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00q\00\00\00\0E\00\00\00" }>, align 8
@_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER = external local_unnamed_addr global { { { i64 } } }
@2 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNvXs0_NvNtNtCsgoPClq0H8JF_9actix_web10middleware6loggers_1__INtBh_9StreamLogpENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop12___drop_innerINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB2n_IB2n_IB2n_INtNtNtB2t_8encoding7encoder7EncoderNtNtB2r_5boxed7BoxBodyEEB3r_EEB3m_EE0INtNtB1t_8function6FnOnceTQNtNtB1v_3fmt9FormatterEE9call_once6vtableCsl8OoimOLbh_6qdrant, ptr @_RNCINvNvXs0_NvNtNtCsgoPClq0H8JF_9actix_web10middleware6loggers_1__INtBc_9StreamLogpENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop12___drop_innerINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB2i_IB2i_IB2i_INtNtNtB2o_8encoding7encoder7EncoderNtNtB2m_5boxed7BoxBodyEEB3m_EEB3h_EE0Csl8OoimOLbh_6qdrant, ptr @_RNCINvNvXs0_NvNtNtCsgoPClq0H8JF_9actix_web10middleware6loggers_1__INtBc_9StreamLogpENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop12___drop_innerINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB2i_IB2i_IB2i_INtNtNtB2o_8encoding7encoder7EncoderNtNtB2m_5boxed7BoxBodyEEB3m_EEB3h_EE0Csl8OoimOLbh_6qdrant }>, align 8
@3 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\C2\01\00\00\11\00\00\00" }>, align 8
@5 = private unnamed_addr constant [29 x i8] c"actix_web::middleware::logger", align 1
@6 = private unnamed_addr constant [9 x i8] c"PointPath", align 1
@7 = private unnamed_addr constant [2 x i8] c"id", align 1
@8 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @7, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@9 = private unnamed_addr constant [9 x i8] c"Timestamp", align 1
@10 = private unnamed_addr constant [7 x i8] c"seconds", align 1
@11 = private unnamed_addr constant [5 x i8] c"nanos", align 1
@_RNvNCNKNvNtNtNtCsdZqrmKseQ0Z_14regex_automata4util4pool5inner9THREAD_ID0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { i64, i8, [7 x i8] }
@_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@12 = private unnamed_addr constant [97 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/http-0.2.12/src/uri/path.rs\00", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"`\00\00\00\00\00\00\00\C1\00\00\00\17\00\00\00" }>, align 8
@14 = private unnamed_addr constant [1 x i8] c"/", align 1
@15 = private unnamed_addr constant <{ [15 x i8], [1 x i8] }> <{ [15 x i8] c"\00\00\00\00\00\00\00\00\01\C8\1E\00\00\00\00", [1 x i8] undef }>, align 4
@16 = private unnamed_addr constant [122 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/time-0.3.47/src/interop/offsetdatetime_systemtime.rs\00", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"y\00\00\00\00\00\00\00?\00\00\00\1D\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"y\00\00\00\00\00\00\00@\00\00\00\19\00\00\00" }>, align 8
@19 = private unnamed_addr constant ptr @_RNvYNCNKNvNtNtNtCsdZqrmKseQ0Z_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCsl8OoimOLbh_6qdrant, align 8
@20 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.16/src/util/pool.rs\00", align 1
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @20, [16 x i8] c"k\00\00\00\00\00\00\00^\02\00\00\1C\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @20, [16 x i8] c"k\00\00\00\00\00\00\00k\02\00\002\00\00\00" }>, align 8
@_RNvNtNtNtCsdZqrmKseQ0Z_14regex_automata4util4pool5inner17THREAD_ID_DROPPED = external global i64
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @20, [16 x i8] c"k\00\00\00\00\00\00\00\01\03\00\00\15\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RNvNtCs14kzo5Se9zC_5bytes5bytes12static_clone, ptr @_RNvNtCs14kzo5Se9zC_5bytes5bytes13static_to_vec, ptr @_RNvNtCs14kzo5Se9zC_5bytes5bytes13static_to_mut, ptr @_RNvNtCs14kzo5Se9zC_5bytes5bytes16static_is_unique, ptr @_RNvNtCs14kzo5Se9zC_5bytes5bytes11static_drop }>, align 8
@25 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00$", [23 x i8] undef }>, align 8
@26 = private unnamed_addr constant [15 x i8] c"x-forwarded-for", align 1
@27 = private unnamed_addr constant <{ ptr, ptr, [16 x i8] }> <{ ptr @24, ptr @26, [16 x i8] c"\0F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
@28 = private unnamed_addr constant [29 x i8] c"Ready polled after completion", align 1
@29 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-utils-3.0.1/src/future/ready.rs\00", align 1
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"j\00\00\00\00\00\00\000\00\00\00#\00\00\00" }>, align 8
@31 = private unnamed_addr constant [68 x i8] c"ANo custom request replacement function was registered for label: \C0\00", align 1
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\1B\01\00\00\11\00\00\00" }>, align 8
@33 = private unnamed_addr constant [69 x i8] c"BNo custom response replacement function was registered for label: \C0\00", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\22\01\00\00\11\00\00\00" }>, align 8
@35 = private unnamed_addr constant [42 x i8] c"/collections/{collection_name}/points/{id}", align 1
@36 = private unnamed_addr constant [9 x i8] c"get_point", align 1
@37 = private unnamed_addr constant [37 x i8] c"/collections/{collection_name}/points", align 1
@38 = private unnamed_addr constant [10 x i8] c"get_points", align 1
@39 = private unnamed_addr constant [22 x i8] c"\13Error in response: \C0\00", align 1
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\86\01\00\00\0D\00\00\00" }>, align 8
@41 = private unnamed_addr constant [44 x i8] c"/collections/{collection_name}/points/scroll", align 1
@42 = private unnamed_addr constant [13 x i8] c"scroll_points", align 1
@43 = private unnamed_addr constant [6 x i8] c"length", align 1
@44 = private unnamed_addr constant [3 x i8] c"min", align 1
@45 = private unnamed_addr constant [4 x i8] c"\01\00\00\00", align 4
@46 = private unnamed_addr constant [5 x i8] c"value", align 1
@47 = private unnamed_addr constant [32 x i8] c"overflow adding duration to date", align 1
@48 = private unnamed_addr constant [31 x i8] c"resulting value is out of range", align 1
@49 = private unnamed_addr constant [39 x i8] c"overflow subtracting duration from date", align 1
@50 = private unnamed_addr constant [6 x i8] c"Method", align 1
@51 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsliWsDkOzYJy_4http3uri10InvalidUriNtB6_5Debug3fmtCsl8OoimOLbh_6qdrant }>, align 8
@52 = private unnamed_addr constant [3 x i8] c"Uri", align 1
@53 = private unnamed_addr constant [7 x i8] c"Version", align 1
@54 = private unnamed_addr constant [6 x i8] c"Header", align 1
@55 = private unnamed_addr constant [8 x i8] c"TooLarge", align 1
@56 = private unnamed_addr constant [10 x i8] c"Incomplete", align 1
@57 = private unnamed_addr constant [6 x i8] c"Status", align 1
@58 = private unnamed_addr constant [7 x i8] c"Timeout", align 1
@59 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCsl8OoimOLbh_6qdrant }>, align 8
@60 = private unnamed_addr constant [2 x i8] c"Io", align 1
@61 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCsl8OoimOLbh_6qdrant }>, align 8
@62 = private unnamed_addr constant [4 x i8] c"Utf8", align 1
@63 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionNtNtNtB8_2io5error5ErrorENtB6_5Debug3fmtCsl8OoimOLbh_6qdrant }>, align 8
@64 = private unnamed_addr constant [17 x i8] c"EncodingCorrupted", align 1
@65 = private unnamed_addr constant [8 x i8] c"Overflow", align 1
@66 = private unnamed_addr constant [13 x i8] c"UnknownLength", align 1
@67 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs1EZwNlLr5NN_2h25error5ErrorNtB6_5Debug3fmtCsl8OoimOLbh_6qdrant }>, align 8
@68 = private unnamed_addr constant [12 x i8] c"Http2Payload", align 1

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvMNtCs6EFb6a2W5dE_10actix_http5errorNtB3_5Error10with_causeBB_ECsl8OoimOLbh_6qdrant(ptr noalias noundef nonnull returned align 8 captures(address, ret: address, provenance) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_RNvXsd_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EINtNtBW_7convert4FromNtNtCs6EFb6a2W5dE_10actix_http5error5ErrorE4fromCsl8OoimOLbh_6qdrant(ptr noalias noundef nonnull align 8 %1)
          to label %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCs6EFb6a2W5dE_10actix_http5error5ErrorINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EE4intoCsl8OoimOLbh_6qdrant.exit unwind label %bb.c ; 2 uses

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.m, %.body ], [ %i.b, %bb.c ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %0) #21
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCs6EFb6a2W5dE_10actix_http5error5ErrorINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EE4intoCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 0        ; 3 uses
  %i.d = extractvalue { ptr, ptr } %i.a, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c), "nonnull"(ptr %i.d) ]
  %.val = load ptr, ptr %0, align 8, !noundef !5  ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.val2 = load ptr, ptr %i.e, align 8            ; 6 uses
  %i.f = icmp eq ptr %.val, null
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECsl8OoimOLbh_6qdrant.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCs6EFb6a2W5dE_10actix_http5error5ErrorINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EE4intoCsl8OoimOLbh_6qdrant.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.g = load ptr, ptr %.val2, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.g(ptr noundef nonnull %.val)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECsl8OoimOLbh_6qdrant.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !7, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECsl8OoimOLbh_6qdrant.exit

bb.h:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !7, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #22
  br label %.body

.body:                                            ; preds = %bb.h, %bb.i
  store ptr %i.c, ptr %0, align 8
  store ptr %i.d, ptr %i.e, align 8
  br label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.g, %bb.f, %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCs6EFb6a2W5dE_10actix_http5error5ErrorINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EE4intoCsl8OoimOLbh_6qdrant.exit
  store ptr %i.c, ptr %0, align 8
  store ptr %i.d, ptr %i.e, align 8
  ret ptr %0

bb.j:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.k:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMNtCs6EFb6a2W5dE_10actix_http5errorNtB3_5Error10with_causeINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EECsl8OoimOLbh_6qdrant(ptr noalias noundef nonnull returned align 8 captures(address, ret: address, provenance) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !noundef !5  ; 4 uses
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.val2 = load ptr, ptr %i.a, align 8            ; 6 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.c = load ptr, ptr %.val2, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.c(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECsl8OoimOLbh_6qdrant.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !7, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.e, i64 noundef range(i64 1, 536870913) %i.h) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECsl8OoimOLbh_6qdrant.exit

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !7, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #22
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g
  store ptr %1, ptr %0, align 8
  store ptr %2, ptr %i.a, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %0) #21
          to label %bb.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.e, %bb.d, %bb.a
  store ptr %1, ptr %0, align 8
  store ptr %2, ptr %i.a, align 8
  ret ptr %0

bb.h:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.i:                                             ; preds = %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMNtCs6EFb6a2W5dE_10actix_http5errorNtB3_5Error10with_causeNtNtNtB5_8encoding7encoder12EncoderErrorECsl8OoimOLbh_6qdrant(ptr noalias noundef nonnull returned align 8 captures(address, ret: address, provenance) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_RNvXsd_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EINtNtBW_7convert4FromNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7encoder12EncoderErrorE4fromCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %1)
          to label %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7encoder12EncoderErrorINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EE4intoCsl8OoimOLbh_6qdrant.exit unwind label %bb.c ; 2 uses

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.m, %.body ], [ %i.b, %bb.c ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %0) #21
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7encoder12EncoderErrorINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EE4intoCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 0        ; 3 uses
  %i.d = extractvalue { ptr, ptr } %i.a, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c), "nonnull"(ptr %i.d) ]
  %.val = load ptr, ptr %0, align 8, !noundef !5  ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.val2 = load ptr, ptr %i.e, align 8            ; 6 uses
  %i.f = icmp eq ptr %.val, null
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECsl8OoimOLbh_6qdrant.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7encoder12EncoderErrorINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EE4intoCsl8OoimOLbh_6qdrant.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.g = load ptr, ptr %.val2, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.g(ptr noundef nonnull %.val)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECsl8OoimOLbh_6qdrant.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !7, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECsl8OoimOLbh_6qdrant.exit

bb.h:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !7, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #22
  br label %.body

.body:                                            ; preds = %bb.h, %bb.i
  store ptr %i.c, ptr %0, align 8
  store ptr %i.d, ptr %i.e, align 8
  br label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.g, %bb.f, %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7encoder12EncoderErrorINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EE4intoCsl8OoimOLbh_6qdrant.exit
  store ptr %i.c, ptr %0, align 8
  store ptr %i.d, ptr %i.e, align 8
  ret ptr %0

bb.j:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.k:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMNtNtCsgoPClq0H8JF_9actix_web10middleware6loggerNtB3_6Logger7excludeReECsl8OoimOLbh_6qdrant(ptr noundef nonnull returned %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !noundef !5
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.a, %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24
          to label %bb.k unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  %i.i = load i64, ptr %i.a, align 8, !range !9, !noalias !40, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !10, !noalias !40, !noundef !5 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i.i, !prof !11

bb.e:                                             ; preds = %.noexc
  %i.n = load i64, ptr %i.m, align 8, !noalias !40
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #24
          to label %.noexc3 unwind label %bb.g

.noexc3:                                          ; preds = %bb.e
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %.noexc
  %i.o = load ptr, ptr %i.m, align 8, !noalias !40, !nonnull !5, !noundef !5 ; 2 uses
  %i.p = icmp ule i64 %2, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !41
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.i, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load i64, ptr %0, align 8, !noalias !42, !noundef !5
  %i.s = add i64 %i.r, -1                         ; 2 uses
  store i64 %i.s, ptr %0, align 8, !noalias !42
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgoPClq0H8JF_9actix_web10middleware6logger6LoggerECsl8OoimOLbh_6qdrant.exit

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtNtCsgoPClq0H8JF_9actix_web10middleware6logger5InnerE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgoPClq0H8JF_9actix_web10middleware6logger6LoggerECsl8OoimOLbh_6qdrant.exit unwind label %bb.l

bb.i:                                             ; preds = %bb.f, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i.i
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !43
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !43
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !43
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = invoke noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.j unwind label %bb.g       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %0

bb.k:                                             ; preds = %bb.c
  unreachable

bb.l:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgoPClq0H8JF_9actix_web10middleware6logger6LoggerECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.q
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMNtNvNtNtCs8dijoSnEkVn_9getrandom8backends27linux_android_with_fallback10fill_inner4lazyINtB3_7LazyPtrNtNtCskKLDkoKarTP_4core3ffi6c_voidE9cold_initzNCINvB2_11unsync_initNvB7_4initE0ECsl8OoimOLbh_6qdrant(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RNvNtNtCs8dijoSnEkVn_9getrandom8backends27linux_android_with_fallback4init() #25 ; 2 uses
  store atomic ptr %i.a, ptr %0 monotonic, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs6EFb6a2W5dE_10actix_http9responses4head12ResponseHeadEEECsl8OoimOLbh_6qdrant(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs6EFb6a2W5dE_10actix_http9responses4head12ResponseHeadEECsl8OoimOLbh_6qdrant.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsliWsDkOzYJy_4http6header4name10HeaderNameNtNtNtCs6EFb6a2W5dE_10actix_http6header3map5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs6EFb6a2W5dE_10actix_http9responses4head12ResponseHeadEECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 64, i64 noundef 8) #22
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs6EFb6a2W5dE_10actix_http9responses4head12ResponseHeadEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 64, i64 noundef 8) #22
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !5
  %switch = icmp ugt i64 %i.a, -3
  br i1 %switch, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsl8OoimOLbh_6qdrant.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i
end_hunk_0
begin_hunk_1_@_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs6EFb6a2W5dE_10actix_http5error10ParseErrorNtB6_5Debug3fmtCsl8OoimOLbh_6qdrant:bb.a
  br label %_RNvXss_NtCs6EFb6a2W5dE_10actix_http5errorNtB5_10ParseErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

_RNvXss_NtCs6EFb6a2W5dE_10actix_http5errorNtB5_10ParseErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.c ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.l, %bb.f ], [ %i.m, %bb.g ], [ %i.n, %bb.h ], [ %i.o, %bb.i ], [ %i.p, %bb.j ], [ %i.q, %bb.k ], [ %i.r, %bb.l ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs6EFb6a2W5dE_10actix_http5error12PayloadErrorNtB6_5Debug3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !align !15, !noundef !5 ; 4 uses
  %i.e = load i8, ptr %i.d, align 8, !range !22, !noalias !768, !noundef !5 ; 3 uses
  %i.f = icmp ne i8 %i.e, 9
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i8 %i.e, -5
  %i.h = icmp samesign ugt i8 %i.e, 4
  %narrow.i = select i1 %i.h, i8 %i.g, i8 4
  switch i8 %narrow.i, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !768
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %i.c, align 8, !noalias !768
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 10, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @63)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !768
  br label %_RNvXsv_NtCs6EFb6a2W5dE_10actix_http5errorNtB5_12PayloadErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 17)
  br label %_RNvXsv_NtCs6EFb6a2W5dE_10actix_http5errorNtB5_12PayloadErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 8)
  br label %_RNvXsv_NtCs6EFb6a2W5dE_10actix_http5errorNtB5_12PayloadErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 13)
  br label %_RNvXsv_NtCs6EFb6a2W5dE_10actix_http5errorNtB5_12PayloadErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !768
  store ptr %i.d, ptr %i.b, align 8, !noalias !768
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 12, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !768
  br label %_RNvXsv_NtCs6EFb6a2W5dE_10actix_http5errorNtB5_12PayloadErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !768
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.a, align 8, !noalias !768
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 2, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @59)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !768
  br label %_RNvXsv_NtCs6EFb6a2W5dE_10actix_http5errorNtB5_12PayloadErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

_RNvXsv_NtCs6EFb6a2W5dE_10actix_http5errorNtB5_12PayloadErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.0.0.in.i = phi i1 [ %i.j, %bb.c ], [ %i.k, %bb.d ], [ %i.l, %bb.e ], [ %i.m, %bb.f ], [ %i.n, %bb.g ], [ %i.p, %bb.h ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRDNtNtB8_5error5ErrorEL_NtB6_7Display3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !15, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCs6EFb6a2W5dE_10actix_http5error10ParseErrorNtB6_7Display3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !15, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXst_NtCs6EFb6a2W5dE_10actix_http5errorNtB5_10ParseErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCs6EFb6a2W5dE_10actix_http5error13DispatchErrorNtB6_7Display3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !15, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXsy_NtCs6EFb6a2W5dE_10actix_http5errorNtB5_13DispatchErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsgoPClq0H8JF_9actix_web10middleware6loggerINtB5_14LoggerResponseINtNtB7_9condition19ConditionMiddlewareINtNtCsbEyXj2whuwq_10actix_cors10middleware14CorsMiddlewareINtNtB7_9normalize26NormalizePathNormalizationINtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition19ConditionMiddlewareINtNtNtCsl8OoimOLbh_6qdrant5actix4auth14AuthMiddlewareINtNtB7_8compress18CompressMiddlewareNtNtB9_11app_service10AppRoutingEEB5I_EEEB2M_EINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB74_IB74_IB74_INtNtNtB7a_8encoding7encoder7EncoderNtNtB78_5boxed7BoxBodyEEB88_EEB83_EENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollB4X_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([360 x i8]) align 8 captures(none) dereferenceable(360) %0, ptr noalias nofree noundef align 8 dereferenceable(336) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [272 x i8], align 8               ; 4 uses
  %i.b = alloca [352 x i8], align 8               ; 4 uses
  %i.c = alloca [264 x i8], align 8               ; 4 uses
  %i.d = alloca [272 x i8], align 8               ; 7 uses
  %i.e = alloca [264 x i8], align 8               ; 4 uses
  %i.f = alloca [272 x i8], align 8               ; 7 uses
  %i.g = alloca [256 x i8], align 8               ; 4 uses
  %i.h = alloca [264 x i8], align 8               ; 7 uses
  %i.i = alloca [256 x i8], align 8               ; 4 uses
  %i.j = alloca [264 x i8], align 8               ; 7 uses
  %.sroa.0.i.sroa.7.i = alloca [240 x i8], align 8 ; 7 uses
  %i.k = alloca [264 x i8], align 8               ; 11 uses
  %i.l = alloca [264 x i8], align 8               ; 10 uses
  %i.m = alloca [264 x i8], align 8               ; 11 uses
  %i.n = alloca [264 x i8], align 8               ; 9 uses
  %.sroa.0.i.sroa.7 = alloca [248 x i8], align 8  ; 3 uses
  %i.o = alloca [272 x i8], align 8               ; 10 uses
  %i.p = alloca [272 x i8], align 8               ; 11 uses
  %i.q = alloca [272 x i8], align 8               ; 9 uses
  %i.r = alloca [104 x i8], align 8               ; 2 uses
  %i.s = alloca [64 x i8], align 8                ; 4 uses
  %i.t = alloca [72 x i8], align 8                ; 7 uses
  %i.u = alloca [280 x i8], align 8               ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 4                ; 4 uses
  %i.y = alloca [272 x i8], align 8               ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [104 x i8], align 8              ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [112 x i8], align 8              ; 7 uses
  %i.ad = alloca [208 x i8], align 8              ; 5 uses
  %i.ae = alloca [280 x i8], align 8              ; 8 uses
  %i.af = alloca [40 x i8], align 8               ; 8 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [280 x i8], align 8              ; 13 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.an = load i64, ptr %i.aj, align 8, !range !19, !alias.scope !800, !noundef !5 ; 5 uses
  %.not.i = icmp eq i64 %i.an, 5
  br i1 %.not.i, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !802
  %.not.i.i = icmp eq i64 %i.an, -5
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  %.not.i.i.i = icmp eq i64 %i.an, -4
  br i1 %.not.i.i.i, label %_RNvXs0_NtNtCs2tOeTMwhwEo_11actix_utils6future6eitherINtB5_6EitherINtNtNtCsgoPClq0H8JF_9actix_web10middleware8compress16CompressResponseNtNtB18_11app_service10AppRoutingNtNtNtCs6EFb6a2W5dE_10actix_http4body5boxed7BoxBodyEINtNtB7_5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB18_7service15ServiceResponseINtNtB2K_6either10EitherBodyINtNtNtB2M_8encoding7encoder7EncoderB2G_EEENtNtNtB18_5error5error5ErrorEEENtNtNtB3V_6future6future6Future4pollCsl8OoimOLbh_6qdrant.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  store i64 -3, ptr %i.aj, align 8, !alias.scope !805
  %.not.i.i.i.i = icmp eq i64 %i.an, -3
  br i1 %.not.i.i.i.i, label %bb.e, label %_RNvXs0_NtNtCs2tOeTMwhwEo_11actix_utils6future6eitherINtB5_6EitherINtNtNtCsgoPClq0H8JF_9actix_web10middleware8compress16CompressResponseNtNtB18_11app_service10AppRoutingNtNtNtCs6EFb6a2W5dE_10actix_http4body5boxed7BoxBodyEINtNtB7_5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB18_7service15ServiceResponseINtNtB2K_6either10EitherBodyINtNtNtB2M_8encoding7encoder7EncoderB2G_EEENtNtNtB18_5error5error5ErrorEEENtNtNtB3V_6future6future6Future4pollCsl8OoimOLbh_6qdrant.exit.thread.i.i, !prof !11

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #27, !noalias !806
  unreachable

_RNvXs0_NtNtCs2tOeTMwhwEo_11actix_utils6future6eitherINtB5_6EitherINtNtNtCsgoPClq0H8JF_9actix_web10middleware8compress16CompressResponseNtNtB18_11app_service10AppRoutingNtNtNtCs6EFb6a2W5dE_10actix_http4body5boxed7BoxBodyEINtNtB7_5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB18_7service15ServiceResponseINtNtB2K_6either10EitherBodyINtNtNtB2M_8encoding7encoder7EncoderB2G_EEENtNtNtB18_5error5error5ErrorEEENtNtNtB3V_6future6future6Future4pollCsl8OoimOLbh_6qdrant.exit.thread.i.i: ; preds = %bb.d
  %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i.i, i64 256, i1 false), !noalias !807
  br label %bb.k

_RNvXs0_NtNtCs2tOeTMwhwEo_11actix_utils6future6eitherINtB5_6EitherINtNtNtCsgoPClq0H8JF_9actix_web10middleware8compress16CompressResponseNtNtB18_11app_service10AppRoutingNtNtNtCs6EFb6a2W5dE_10actix_http4body5boxed7BoxBodyEINtNtB7_5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB18_7service15ServiceResponseINtNtB2K_6either10EitherBodyINtNtNtB2M_8encoding7encoder7EncoderB2G_EEENtNtNtB18_5error5error5ErrorEEENtNtNtB3V_6future6future6Future4pollCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvXs0_NtNtCsgoPClq0H8JF_9actix_web10middleware8compressINtB5_16CompressResponseNtNtB9_11app_service10AppRoutingNtNtNtCs6EFb6a2W5dE_10actix_http4body5boxed7BoxBodyENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !808
  %.pr.i.i = load i64, ptr %i.l, align 8, !noalias !809 ; 2 uses
  %i.ap = icmp eq i64 %.pr.i.i, -3
  br i1 %i.ap, label %_RNvXs1_NtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1D_6future6future6Futurep6OutputINtNtB1D_6result6ResultINtNtCsgoPClq0H8JF_9actix_web7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB4D_8encoding7encoder7EncoderNtNtB4B_5boxed7BoxBodyEEENtNtNtB3J_5error5error5ErrorEEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtNtB3J_10middleware8compress16CompressResponseNtNtB3J_11app_service10AppRoutingB61_EINtNtB73_5ready5ReadyB3h_EEEB2E_4pollCsl8OoimOLbh_6qdrant.exit.thread.i, label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtCsgoPClq0H8JF_9actix_web7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB3a_8encoding7encoder7EncoderNtNtB38_5boxed7BoxBodyEEENtNtNtB2g_5error5error5ErrorEEL_EEB1v_4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !808
  %i.ar = load i64, ptr %i.n, align 8, !range !810, !noalias !809, !noundef !5 ; 3 uses
  %i.as = icmp eq i64 %i.ar, -3
  br i1 %i.as, label %_RNvXs1_NtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1D_6future6future6Futurep6OutputINtNtB1D_6result6ResultINtNtCsgoPClq0H8JF_9actix_web7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB4D_8encoding7encoder7EncoderNtNtB4B_5boxed7BoxBodyEEENtNtNtB3J_5error5error5ErrorEEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtNtB3J_10middleware8compress16CompressResponseNtNtB3J_11app_service10AppRoutingB61_EINtNtB73_5ready5ReadyB3h_EEEB2E_4pollCsl8OoimOLbh_6qdrant.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !809 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !809 ; 3 uses
  %i.at = icmp eq i64 %i.ar, -2
  br i1 %i.at, label %3, label %bb.h

3:                                                ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i), "nonnull"(ptr %.sroa.4.0.copyload.i.i) ]
  br label %.thread.i

bb.h:                                             ; preds = %bb.g
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.10.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.10.0..sroa_idx8.i.i, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.515.0..sroa_idx.i.i, i64 240, i1 false), !noalias !809
  store i64 %i.ar, ptr %i.m, align 8, !noalias !809
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.3.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx4.i.i, align 8, !noalias !809
  %.sroa.8.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.8.0..sroa_idx6.i.i, align 8, !noalias !809
  call void @llvm.experimental.noalias.scope.decl(metadata !811)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.i, ptr noundef nonnull align 8 dereferenceable(264) %i.m, i64 256, i1 false), !noalias !813
  invoke void @_RINvMs_NtNtCsgoPClq0H8JF_9actix_web8response8responseINtB5_12HttpResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB1g_8encoding7encoder7EncoderNtNtB1e_5boxed7BoxBodyEEE8map_bodyNCINvMs6_NtB9_7serviceINtB3l_15ServiceResponseB19_E18map_into_left_bodyB19_E0IB1a_B19_B19_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(256) %i.i)
          to label %_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEE8map_bodyNCINvB2_18map_into_left_bodyB11_E0IB12_B11_B11_EECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.i, !noalias !814

bb.i:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgoPClq0H8JF_9actix_web7request11HttpRequestECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(8) %i.av) #21
          to label %common.resume unwind label %bb.j, !noalias !815

bb.j:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !815
  unreachable

common.resume:                                    ; preds = %bb.aw, %bb.av, %bb.ao, %bb.aj, %bb.aq, %bb.i, %bb.m, %bb.r, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.bq, %bb.u ], [ %i.bl, %bb.r ], [ %i.bb, %bb.m ], [ %i.au, %bb.i ], [ %i.de, %bb.aw ], [ %i.cq, %bb.aj ], [ %i.dd, %bb.av ], [ %.pn.pn.ph, %bb.ao ], [ %i.cy, %bb.aq ]
  resume { ptr, i32 } %common.resume.op

_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEE8map_bodyNCINvB2_18map_into_left_bodyB11_E0IB12_B11_B11_EECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !812
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !811, !noalias !809, !nonnull !5, !noundef !5
  %.sroa.0.i.sroa.0.0.copyload59.i = load i64, ptr %i.j, align 8, !noalias !809
  %.sroa.0.i.sroa.5.0..sroa_idx60.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.0.i.sroa.5.0.copyload61.i = load ptr, ptr %.sroa.0.i.sroa.5.0..sroa_idx60.i, align 8, !noalias !809
  %.sroa.0.i.sroa.6.0..sroa_idx62.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.0.i.sroa.6.0.copyload63.i = load ptr, ptr %.sroa.0.i.sroa.6.0..sroa_idx62.i, align 8, !noalias !809
  %.sroa.0.i.sroa.7.0..sroa_idx64.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.0.i.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.0.i.sroa.7.0..sroa_idx64.i, i64 240, i1 false), !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !812
  br label %_RNvXs1_NtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1D_6future6future6Futurep6OutputINtNtB1D_6result6ResultINtNtCsgoPClq0H8JF_9actix_web7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB4D_8encoding7encoder7EncoderNtNtB4B_5boxed7BoxBodyEEENtNtNtB3J_5error5error5ErrorEEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtNtB3J_10middleware8compress16CompressResponseNtNtB3J_11app_service10AppRoutingB61_EINtNtB73_5ready5ReadyB3h_EEEB2E_4pollCsl8OoimOLbh_6qdrant.exit.i

bb.k:                                             ; preds = %_RNvXs0_NtNtCs2tOeTMwhwEo_11actix_utils6future6eitherINtB5_6EitherINtNtNtCsgoPClq0H8JF_9actix_web10middleware8compress16CompressResponseNtNtB18_11app_service10AppRoutingNtNtNtCs6EFb6a2W5dE_10actix_http4body5boxed7BoxBodyEINtNtB7_5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB18_7service15ServiceResponseINtNtB2K_6either10EitherBodyINtNtNtB2M_8encoding7encoder7EncoderB2G_EEENtNtNtB18_5error5error5ErrorEEENtNtNtB3V_6future6future6Future4pollCsl8OoimOLbh_6qdrant.exit.i.i, %_RNvXs0_NtNtCs2tOeTMwhwEo_11actix_utils6future6eitherINtB5_6EitherINtNtNtCsgoPClq0H8JF_9actix_web10middleware8compress16CompressResponseNtNtB18_11app_service10AppRoutingNtNtNtCs6EFb6a2W5dE_10actix_http4body5boxed7BoxBodyEINtNtB7_5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB18_7service15ServiceResponseINtNtB2K_6either10EitherBodyINtNtNtB2M_8encoding7encoder7EncoderB2G_EEENtNtNtB18_5error5error5ErrorEEENtNtNtB3V_6future6future6Future4pollCsl8OoimOLbh_6qdrant.exit.thread.i.i
  %i.az = phi i64 [ %i.an, %_RNvXs0_NtNtCs2tOeTMwhwEo_11actix_utils6future6eitherINtB5_6EitherINtNtNtCsgoPClq0H8JF_9actix_web10middleware8compress16CompressResponseNtNtB18_11app_service10AppRoutingNtNtNtCs6EFb6a2W5dE_10actix_http4body5boxed7BoxBodyEINtNtB7_5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB18_7service15ServiceResponseINtNtB2K_6either10EitherBodyINtNtNtB2M_8encoding7encoder7EncoderB2G_EEENtNtNtB18_5error5error5ErrorEEENtNtNtB3V_6future6future6Future4pollCsl8OoimOLbh_6qdrant.exit.thread.i.i ], [ %.pr.i.i, %_RNvXs0_NtNtCs2tOeTMwhwEo_11actix_utils6future6eitherINtB5_6EitherINtNtNtCsgoPClq0H8JF_9actix_web10middleware8compress16CompressResponseNtNtB18_11app_service10AppRoutingNtNtNtCs6EFb6a2W5dE_10actix_http4body5boxed7BoxBodyEINtNtB7_5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB18_7service15ServiceResponseINtNtB2K_6either10EitherBodyINtNtNtB2M_8encoding7encoder7EncoderB2G_EEENtNtNtB18_5error5error5ErrorEEENtNtNtB3V_6future6future6Future4pollCsl8OoimOLbh_6qdrant.exit.i.i ] ; 2 uses
  %.sroa.329.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.329.0.copyload.i.i = load ptr, ptr %.sroa.329.0..sroa_idx.i.i, align 8, !noalias !809 ; 3 uses
  %.sroa.432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.432.0.copyload.i.i = load ptr, ptr %.sroa.432.0..sroa_idx.i.i, align 8, !noalias !809 ; 3 uses
  %i.ba = icmp eq i64 %i.az, -2
  br i1 %i.ba, label %4, label %bb.l

4:                                                ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.329.0.copyload.i.i), "nonnull"(ptr %.sroa.432.0.copyload.i.i) ]
  br label %.thread.i

bb.l:                                             ; preds = %bb.k
  %.sroa.535.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.1025.0..sroa_idx26.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.1025.0..sroa_idx26.i.i, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.535.0..sroa_idx.i.i, i64 240, i1 false), !noalias !809
  store i64 %i.az, ptr %i.k, align 8, !noalias !809
  %.sroa.619.0..sroa_idx20.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.329.0.copyload.i.i, ptr %.sroa.619.0..sroa_idx20.i.i, align 8, !noalias !809
  %.sroa.822.0..sroa_idx23.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %.sroa.432.0.copyload.i.i, ptr %.sroa.822.0..sroa_idx23.i.i, align 8, !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !817
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.g, ptr noundef nonnull align 8 dereferenceable(264) %i.k, i64 256, i1 false), !noalias !818
  invoke void @_RINvMs_NtNtCsgoPClq0H8JF_9actix_web8response8responseINtB5_12HttpResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB1g_8encoding7encoder7EncoderNtNtB1e_5boxed7BoxBodyEEE8map_bodyNCINvMs6_NtB9_7serviceINtB3l_15ServiceResponseB19_E19map_into_right_bodyB19_E0IB1a_B19_B19_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(256) %i.g)
          to label %_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEE8map_bodyNCINvB2_19map_into_right_bodyB11_E0IB12_B11_B11_EECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.m, !noalias !819

bb.m:                                             ; preds = %bb.l
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgoPClq0H8JF_9actix_web7request11HttpRequestECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(8) %i.bc) #21
          to label %common.resume unwind label %bb.n, !noalias !820

bb.n:                                             ; preds = %bb.m
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !820
  unreachable

_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEE8map_bodyNCINvB2_19map_into_right_bodyB11_E0IB12_B11_B11_EECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !817
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !816, !noalias !809, !nonnull !5, !noundef !5
  %.sroa.0.i.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8, !noalias !809
  %.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.i.sroa.5.0.copyload.i = load ptr, ptr %.sroa.0.i.sroa.5.0..sroa_idx.i, align 8, !noalias !809
  %.sroa.0.i.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.0.i.sroa.6.0.copyload.i = load ptr, ptr %.sroa.0.i.sroa.6.0..sroa_idx.i, align 8, !noalias !809
  %.sroa.0.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.0.i.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.0.i.sroa.7.0..sroa_idx.i, i64 240, i1 false), !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !817
  br label %_RNvXs1_NtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1D_6future6future6Futurep6OutputINtNtB1D_6result6ResultINtNtCsgoPClq0H8JF_9actix_web7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB4D_8encoding7encoder7EncoderNtNtB4B_5boxed7BoxBodyEEENtNtNtB3J_5error5error5ErrorEEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtNtB3J_10middleware8compress16CompressResponseNtNtB3J_11app_service10AppRoutingB61_EINtNtB73_5ready5ReadyB3h_EEEB2E_4pollCsl8OoimOLbh_6qdrant.exit.i

_RNvXs1_NtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1D_6future6future6Futurep6OutputINtNtB1D_6result6ResultINtNtCsgoPClq0H8JF_9actix_web7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB4D_8encoding7encoder7EncoderNtNtB4B_5boxed7BoxBodyEEENtNtNtB3J_5error5error5ErrorEEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtNtB3J_10middleware8compress16CompressResponseNtNtB3J_11app_service10AppRoutingB61_EINtNtB73_5ready5ReadyB3h_EEEB2E_4pollCsl8OoimOLbh_6qdrant.exit.thread.i: ; preds = %bb.f, %_RNvXs0_NtNtCs2tOeTMwhwEo_11actix_utils6future6eitherINtB5_6EitherINtNtNtCsgoPClq0H8JF_9actix_web10middleware8compress16CompressResponseNtNtB18_11app_service10AppRoutingNtNtNtCs6EFb6a2W5dE_10actix_http4body5boxed7BoxBodyEINtNtB7_5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB18_7service15ServiceResponseINtNtB2K_6either10EitherBodyINtNtNtB2M_8encoding7encoder7EncoderB2G_EEENtNtNtB18_5error5error5ErrorEEENtNtNtB3V_6future6future6Future4pollCsl8OoimOLbh_6qdrant.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !802
  br label %_RNvXs1_NtNtCsgoPClq0H8JF_9actix_web10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1v_6future6future6Futurep6OutputINtNtB1v_6result6ResultINtNtB9_7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB44_IB44_INtNtNtB4a_8encoding7encoder7EncoderNtNtB48_5boxed7BoxBodyEEB53_EEENtNtNtB9_5error5error5ErrorEEL_EEINtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition25ConditionMiddlewareFutureIB1r_IB1X_DB2w_p6OutputIB3a_IB3x_B53_EB6d_EEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtB7_8compress16CompressResponseNtNtB9_11app_service10AppRoutingB5I_EINtNtB91_5ready5ReadyB8x_EEEEB2w_4pollCsl8OoimOLbh_6qdrant.exit.thread

.thread.i:                                        ; preds = %4, %3
  %.sroa.4.0.copyload.i.sink.i = phi ptr [ %.sroa.4.0.copyload.i.i, %3 ], [ %.sroa.432.0.copyload.i.i, %4 ]
  %.sroa.9.2.ph.i = phi ptr [ %.sroa.3.0.copyload.i.i, %3 ], [ %.sroa.329.0.copyload.i.i, %4 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !802
  br label %6

_RNvXs1_NtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1D_6future6future6Futurep6OutputINtNtB1D_6result6ResultINtNtCsgoPClq0H8JF_9actix_web7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB4D_8encoding7encoder7EncoderNtNtB4B_5boxed7BoxBodyEEENtNtNtB3J_5error5error5ErrorEEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtNtB3J_10middleware8compress16CompressResponseNtNtB3J_11app_service10AppRoutingB61_EINtNtB73_5ready5ReadyB3h_EEEB2E_4pollCsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEE8map_bodyNCINvB2_19map_into_right_bodyB11_E0IB12_B11_B11_EECsl8OoimOLbh_6qdrant.exit.i.i, %_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEE8map_bodyNCINvB2_18map_into_left_bodyB11_E0IB12_B11_B11_EECsl8OoimOLbh_6qdrant.exit.i.i
  %.sroa.0.i.sroa.0.0.i = phi i64 [ %.sroa.0.i.sroa.0.0.copyload59.i, %_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEE8map_bodyNCINvB2_18map_into_left_bodyB11_E0IB12_B11_B11_EECsl8OoimOLbh_6qdrant.exit.i.i ], [ %.sroa.0.i.sroa.0.0.copyload.i, %_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEE8map_bodyNCINvB2_19map_into_right_bodyB11_E0IB12_B11_B11_EECsl8OoimOLbh_6qdrant.exit.i.i ] ; 2 uses
  %.sroa.0.i.sroa.5.0.i = phi ptr [ %.sroa.0.i.sroa.5.0.copyload61.i, %_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEE8map_bodyNCINvB2_18map_into_left_bodyB11_E0IB12_B11_B11_EECsl8OoimOLbh_6qdrant.exit.i.i ], [ %.sroa.0.i.sroa.5.0.copyload.i, %_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEE8map_bodyNCINvB2_19map_into_right_bodyB11_E0IB12_B11_B11_EECsl8OoimOLbh_6qdrant.exit.i.i ] ; 2 uses
  %.sroa.0.i.sroa.6.0.i = phi ptr [ %.sroa.0.i.sroa.6.0.copyload63.i, %_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEE8map_bodyNCINvB2_18map_into_left_bodyB11_E0IB12_B11_B11_EECsl8OoimOLbh_6qdrant.exit.i.i ], [ %.sroa.0.i.sroa.6.0.copyload.i, %_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEE8map_bodyNCINvB2_19map_into_right_bodyB11_E0IB12_B11_B11_EECsl8OoimOLbh_6qdrant.exit.i.i ] ; 2 uses
  %i.bg = phi ptr [ %i.ay, %_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEE8map_bodyNCINvB2_18map_into_left_bodyB11_E0IB12_B11_B11_EECsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.bf, %_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEE8map_bodyNCINvB2_19map_into_right_bodyB11_E0IB12_B11_B11_EECsl8OoimOLbh_6qdrant.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !802
  switch i64 %.sroa.0.i.sroa.0.0.i, label %bb.t [
    i64 -1, label %_RNvXs1_NtNtCsgoPClq0H8JF_9actix_web10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1v_6future6future6Futurep6OutputINtNtB1v_6result6ResultINtNtB9_7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB44_IB44_INtNtNtB4a_8encoding7encoder7EncoderNtNtB48_5boxed7BoxBodyEEB53_EEENtNtNtB9_5error5error5ErrorEEL_EEINtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition25ConditionMiddlewareFutureIB1r_IB1X_DB2w_p6OutputIB3a_IB3x_B53_EB6d_EEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtB7_8compress16CompressResponseNtNtB9_11app_service10AppRoutingB5I_EINtNtB91_5ready5ReadyB8x_EEEEB2w_4pollCsl8OoimOLbh_6qdrant.exit.thread
    i64 2, label %6
  ]

bb.o:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtCsgoPClq0H8JF_9actix_web7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB34_IB34_INtNtNtB3a_8encoding7encoder7EncoderNtNtB38_5boxed7BoxBodyEEB43_EEENtNtNtB2g_5error5error5ErrorEEL_EEB1v_4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(address) dereferenceable(272) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !821
  %i.bi = load i64, ptr %i.q, align 8, !range !822, !noalias !802, !noundef !5 ; 3 uses
  %i.bj = icmp eq i64 %i.bi, -2
  br i1 %i.bj, label %_RNvXs1_NtNtCsgoPClq0H8JF_9actix_web10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1v_6future6future6Futurep6OutputINtNtB1v_6result6ResultINtNtB9_7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB44_IB44_INtNtNtB4a_8encoding7encoder7EncoderNtNtB48_5boxed7BoxBodyEEB53_EEENtNtNtB9_5error5error5ErrorEEL_EEINtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition25ConditionMiddlewareFutureIB1r_IB1X_DB2w_p6OutputIB3a_IB3x_B53_EB6d_EEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtB7_8compress16CompressResponseNtNtB9_11app_service10AppRoutingB5I_EINtNtB91_5ready5ReadyB8x_EEEEB2w_4pollCsl8OoimOLbh_6qdrant.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !802 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !802 ; 3 uses
  %i.bk = icmp eq i64 %i.bi, -1
  br i1 %i.bk, label %5, label %bb.q

5:                                                ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i), "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  br label %.thread

bb.q:                                             ; preds = %bb.p
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.10.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.10.0..sroa_idx8.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.515.0..sroa_idx.i, i64 248, i1 false), !noalias !802
  store i64 %i.bi, ptr %i.p, align 8, !noalias !802
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.3.0.copyload.i, ptr %.sroa.6.0..sroa_idx4.i, align 8, !noalias !802
  %.sroa.8.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.8.0..sroa_idx6.i, align 8, !noalias !802
  call void @llvm.experimental.noalias.scope.decl(metadata !823)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.e, ptr noundef nonnull align 8 dereferenceable(272) %i.p, i64 264, i1 false), !noalias !825
  invoke void @_RINvMs_NtNtCsgoPClq0H8JF_9actix_web8response8responseINtB5_12HttpResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB1a_IB1a_INtNtNtB1g_8encoding7encoder7EncoderNtNtB1e_5boxed7BoxBodyEEB29_EEE8map_bodyNCINvMs6_NtB9_7serviceINtB3B_15ServiceResponseB19_E18map_into_left_bodyB24_E0IB1a_B19_B24_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(264) %i.e)
          to label %_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB12_IB12_INtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEB21_EEE8map_bodyNCINvB2_18map_into_left_bodyB1W_E0IB12_B11_B1W_EECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.r, !noalias !826

bb.r:                                             ; preds = %bb.q
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgoPClq0H8JF_9actix_web7request11HttpRequestECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(8) %i.bm) #21
          to label %common.resume unwind label %bb.s, !noalias !827

bb.s:                                             ; preds = %bb.r
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !827
  unreachable

_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB12_IB12_INtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEB21_EEE8map_bodyNCINvB2_18map_into_left_bodyB1W_E0IB12_B11_B1W_EECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !824
  %i.bo = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !823, !noalias !802, !nonnull !5, !noundef !5
  %.sroa.0.i.sroa.0.0.copyload44 = load i64, ptr %i.f, align 8, !noalias !802
  %.sroa.0.i.sroa.5.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.0.i.sroa.5.0.copyload46 = load ptr, ptr %.sroa.0.i.sroa.5.0..sroa_idx45, align 8, !noalias !802
  %.sroa.0.i.sroa.6.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.0.i.sroa.6.0.copyload48 = load ptr, ptr %.sroa.0.i.sroa.6.0..sroa_idx47, align 8, !noalias !802
  %.sroa.0.i.sroa.7.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.0.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.0.i.sroa.7.0..sroa_idx49, i64 248, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !824
  br label %_RNvXs1_NtNtCsgoPClq0H8JF_9actix_web10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1v_6future6future6Futurep6OutputINtNtB1v_6result6ResultINtNtB9_7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB44_IB44_INtNtNtB4a_8encoding7encoder7EncoderNtNtB48_5boxed7BoxBodyEEB53_EEENtNtNtB9_5error5error5ErrorEEL_EEINtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition25ConditionMiddlewareFutureIB1r_IB1X_DB2w_p6OutputIB3a_IB3x_B53_EB6d_EEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtB7_8compress16CompressResponseNtNtB9_11app_service10AppRoutingB5I_EINtNtB91_5ready5ReadyB8x_EEEEB2w_4pollCsl8OoimOLbh_6qdrant.exit

6:                                                ; preds = %_RNvXs1_NtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1D_6future6future6Futurep6OutputINtNtB1D_6result6ResultINtNtCsgoPClq0H8JF_9actix_web7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB4D_8encoding7encoder7EncoderNtNtB4B_5boxed7BoxBodyEEENtNtNtB3J_5error5error5ErrorEEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtNtB3J_10middleware8compress16CompressResponseNtNtB3J_11app_service10AppRoutingB61_EINtNtB73_5ready5ReadyB3h_EEEB2E_4pollCsl8OoimOLbh_6qdrant.exit.i, %.thread.i
  %.sroa.12.27684.i = phi ptr [ %.sroa.4.0.copyload.i.sink.i, %.thread.i ], [ %.sroa.0.i.sroa.6.0.i, %_RNvXs1_NtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1D_6future6future6Futurep6OutputINtNtB1D_6result6ResultINtNtCsgoPClq0H8JF_9actix_web7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB4D_8encoding7encoder7EncoderNtNtB4B_5boxed7BoxBodyEEENtNtNtB3J_5error5error5ErrorEEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtNtB3J_10middleware8compress16CompressResponseNtNtB3J_11app_service10AppRoutingB61_EINtNtB73_5ready5ReadyB3h_EEEB2E_4pollCsl8OoimOLbh_6qdrant.exit.i ] ; 2 uses
  %.sroa.9.27783.i = phi ptr [ %.sroa.9.2.ph.i, %.thread.i ], [ %.sroa.0.i.sroa.5.0.i, %_RNvXs1_NtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1D_6future6future6Futurep6OutputINtNtB1D_6result6ResultINtNtCsgoPClq0H8JF_9actix_web7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB4D_8encoding7encoder7EncoderNtNtB4B_5boxed7BoxBodyEEENtNtNtB3J_5error5error5ErrorEEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtNtB3J_10middleware8compress16CompressResponseNtNtB3J_11app_service10AppRoutingB61_EINtNtB73_5ready5ReadyB3h_EEEB2E_4pollCsl8OoimOLbh_6qdrant.exit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.27783.i), "nonnull"(ptr %.sroa.12.27684.i) ]
  br label %.thread

bb.t:                                             ; preds = %_RNvXs1_NtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1D_6future6future6Futurep6OutputINtNtB1D_6result6ResultINtNtCsgoPClq0H8JF_9actix_web7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB4D_8encoding7encoder7EncoderNtNtB4B_5boxed7BoxBodyEEENtNtNtB3J_5error5error5ErrorEEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtNtB3J_10middleware8compress16CompressResponseNtNtB3J_11app_service10AppRoutingB61_EINtNtB73_5ready5ReadyB3h_EEEB2E_4pollCsl8OoimOLbh_6qdrant.exit.i
  %.sroa.1025.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.1025.0..sroa_idx26.i, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.0.i.sroa.7.i, i64 240, i1 false), !noalias !802
  store i64 %.sroa.0.i.sroa.0.0.i, ptr %i.o, align 8, !noalias !802
  %.sroa.619.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.0.i.sroa.5.0.i, ptr %.sroa.619.0..sroa_idx20.i, align 8, !noalias !802
  %.sroa.822.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %.sroa.0.i.sroa.6.0.i, ptr %.sroa.822.0..sroa_idx23.i, align 8, !noalias !802
  %.sroa.1025.sroa.5.0..sroa.1025.0..sroa_idx26.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 264 ; 2 uses
  store ptr %i.bg, ptr %.sroa.1025.sroa.5.0..sroa.1025.0..sroa_idx26.sroa_idx.i, align 8, !noalias !802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.c, ptr noundef nonnull align 8 dereferenceable(272) %i.o, i64 264, i1 false), !noalias !829
  invoke void @_RINvMs_NtNtCsgoPClq0H8JF_9actix_web8response8responseINtB5_12HttpResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB1a_INtNtNtB1g_8encoding7encoder7EncoderNtNtB1e_5boxed7BoxBodyEEB24_EE8map_bodyNCINvMs6_NtB9_7serviceINtB3v_15ServiceResponseB19_E19map_into_right_bodyIB1a_B19_EE0IB1a_B4w_B19_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(264) %i.c)
          to label %_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB12_INtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEB1W_EE8map_bodyNCINvB2_19map_into_right_bodyIB12_B11_EE0IB12_B3H_B11_EECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.u, !noalias !830

bb.u:                                             ; preds = %bb.t
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgoPClq0H8JF_9actix_web7request11HttpRequestECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(8) %.sroa.1025.sroa.5.0..sroa.1025.0..sroa_idx26.sroa_idx.i) #21
          to label %common.resume unwind label %bb.v, !noalias !831

bb.v:                                             ; preds = %bb.u
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !831
  unreachable

_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB12_INtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEB1W_EE8map_bodyNCINvB2_19map_into_right_bodyIB12_B11_EE0IB12_B3H_B11_EECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !828
  %.sroa.0.i.sroa.0.0.copyload = load i64, ptr %i.d, align 8, !noalias !802
  %.sroa.0.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.i.sroa.5.0.copyload = load ptr, ptr %.sroa.0.i.sroa.5.0..sroa_idx, align 8, !noalias !802
  %.sroa.0.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.0.i.sroa.6.0.copyload = load ptr, ptr %.sroa.0.i.sroa.6.0..sroa_idx, align 8, !noalias !802
  %.sroa.0.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.0.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.0.i.sroa.7.0..sroa_idx, i64 248, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !828
  br label %_RNvXs1_NtNtCsgoPClq0H8JF_9actix_web10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1v_6future6future6Futurep6OutputINtNtB1v_6result6ResultINtNtB9_7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB44_IB44_INtNtNtB4a_8encoding7encoder7EncoderNtNtB48_5boxed7BoxBodyEEB53_EEENtNtNtB9_5error5error5ErrorEEL_EEINtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition25ConditionMiddlewareFutureIB1r_IB1X_DB2w_p6OutputIB3a_IB3x_B53_EB6d_EEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtB7_8compress16CompressResponseNtNtB9_11app_service10AppRoutingB5I_EINtNtB91_5ready5ReadyB8x_EEEEB2w_4pollCsl8OoimOLbh_6qdrant.exit

_RNvXs1_NtNtCsgoPClq0H8JF_9actix_web10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1v_6future6future6Futurep6OutputINtNtB1v_6result6ResultINtNtB9_7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB44_IB44_INtNtNtB4a_8encoding7encoder7EncoderNtNtB48_5boxed7BoxBodyEEB53_EEENtNtNtB9_5error5error5ErrorEEL_EEINtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition25ConditionMiddlewareFutureIB1r_IB1X_DB2w_p6OutputIB3a_IB3x_B53_EB6d_EEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtB7_8compress16CompressResponseNtNtB9_11app_service10AppRoutingB5I_EINtNtB91_5ready5ReadyB8x_EEEEB2w_4pollCsl8OoimOLbh_6qdrant.exit.thread: ; preds = %bb.o, %_RNvXs1_NtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1D_6future6future6Futurep6OutputINtNtB1D_6result6ResultINtNtCsgoPClq0H8JF_9actix_web7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB4D_8encoding7encoder7EncoderNtNtB4B_5boxed7BoxBodyEEENtNtNtB3J_5error5error5ErrorEEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtNtB3J_10middleware8compress16CompressResponseNtNtB3J_11app_service10AppRoutingB61_EINtNtB73_5ready5ReadyB3h_EEEB2E_4pollCsl8OoimOLbh_6qdrant.exit.i, %_RNvXs1_NtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1D_6future6future6Futurep6OutputINtNtB1D_6result6ResultINtNtCsgoPClq0H8JF_9actix_web7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB4D_8encoding7encoder7EncoderNtNtB4B_5boxed7BoxBodyEEENtNtNtB3J_5error5error5ErrorEEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtNtB3J_10middleware8compress16CompressResponseNtNtB3J_11app_service10AppRoutingB61_EINtNtB73_5ready5ReadyB3h_EEEB2E_4pollCsl8OoimOLbh_6qdrant.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.w

.thread:                                          ; preds = %5, %6
  %.sroa.12.2.ph = phi ptr [ %.sroa.4.0.copyload.i, %5 ], [ %.sroa.12.27684.i, %6 ]
  %.sroa.9.2.ph = phi ptr [ %.sroa.3.0.copyload.i, %5 ], [ %.sroa.9.27783.i, %6 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.x

_RNvXs1_NtNtCsgoPClq0H8JF_9actix_web10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1v_6future6future6Futurep6OutputINtNtB1v_6result6ResultINtNtB9_7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB44_IB44_INtNtNtB4a_8encoding7encoder7EncoderNtNtB48_5boxed7BoxBodyEEB53_EEENtNtNtB9_5error5error5ErrorEEL_EEINtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition25ConditionMiddlewareFutureIB1r_IB1X_DB2w_p6OutputIB3a_IB3x_B53_EB6d_EEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtB7_8compress16CompressResponseNtNtB9_11app_service10AppRoutingB5I_EINtNtB91_5ready5ReadyB8x_EEEEB2w_4pollCsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB12_IB12_INtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEB21_EEE8map_bodyNCINvB2_18map_into_left_bodyB1W_E0IB12_B11_B1W_EECsl8OoimOLbh_6qdrant.exit.i, %_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB12_INtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEB1W_EE8map_bodyNCINvB2_19map_into_right_bodyIB12_B11_EE0IB12_B3H_B11_EECsl8OoimOLbh_6qdrant.exit.i
  %.sroa.0.i.sroa.0.0 = phi i64 [ %.sroa.0.i.sroa.0.0.copyload44, %_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB12_IB12_INtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEB21_EEE8map_bodyNCINvB2_18map_into_left_bodyB1W_E0IB12_B11_B1W_EECsl8OoimOLbh_6qdrant.exit.i ], [ %.sroa.0.i.sroa.0.0.copyload, %_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB12_INtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEB1W_EE8map_bodyNCINvB2_19map_into_right_bodyIB12_B11_EE0IB12_B3H_B11_EECsl8OoimOLbh_6qdrant.exit.i ] ; 2 uses
  %.sroa.0.i.sroa.5.0 = phi ptr [ %.sroa.0.i.sroa.5.0.copyload46, %_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB12_IB12_INtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEB21_EEE8map_bodyNCINvB2_18map_into_left_bodyB1W_E0IB12_B11_B1W_EECsl8OoimOLbh_6qdrant.exit.i ], [ %.sroa.0.i.sroa.5.0.copyload, %_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB12_INtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEB1W_EE8map_bodyNCINvB2_19map_into_right_bodyIB12_B11_EE0IB12_B3H_B11_EECsl8OoimOLbh_6qdrant.exit.i ] ; 2 uses
  %.sroa.0.i.sroa.6.0 = phi ptr [ %.sroa.0.i.sroa.6.0.copyload48, %_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB12_IB12_INtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEB21_EEE8map_bodyNCINvB2_18map_into_left_bodyB1W_E0IB12_B11_B1W_EECsl8OoimOLbh_6qdrant.exit.i ], [ %.sroa.0.i.sroa.6.0.copyload, %_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB12_INtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEB1W_EE8map_bodyNCINvB2_19map_into_right_bodyIB12_B11_EE0IB12_B3H_B11_EECsl8OoimOLbh_6qdrant.exit.i ] ; 2 uses
  %.sroa.3.0.i = phi ptr [ %i.bp, %_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB12_IB12_INtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEB21_EEE8map_bodyNCINvB2_18map_into_left_bodyB1W_E0IB12_B11_B1W_EECsl8OoimOLbh_6qdrant.exit.i ], [ %i.bg, %_RINvMs6_NtCsgoPClq0H8JF_9actix_web7serviceINtB6_15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB12_INtNtNtB18_8encoding7encoder7EncoderNtNtB16_5boxed7BoxBodyEEB1W_EE8map_bodyNCINvB2_19map_into_right_bodyIB12_B11_EE0IB12_B3H_B11_EECsl8OoimOLbh_6qdrant.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  switch i64 %.sroa.0.i.sroa.0.0, label %bb.y [
    i64 -1, label %bb.w
    i64 2, label %bb.x
  ]

bb.w:                                             ; preds = %_RNvXs1_NtNtCsgoPClq0H8JF_9actix_web10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1v_6future6future6Futurep6OutputINtNtB1v_6result6ResultINtNtB9_7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB44_IB44_INtNtNtB4a_8encoding7encoder7EncoderNtNtB48_5boxed7BoxBodyEEB53_EEENtNtNtB9_5error5error5ErrorEEL_EEINtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition25ConditionMiddlewareFutureIB1r_IB1X_DB2w_p6OutputIB3a_IB3x_B53_EB6d_EEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtB7_8compress16CompressResponseNtNtB9_11app_service10AppRoutingB5I_EINtNtB91_5ready5ReadyB8x_EEEEB2w_4pollCsl8OoimOLbh_6qdrant.exit, %_RNvXs1_NtNtCsgoPClq0H8JF_9actix_web10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1v_6future6future6Futurep6OutputINtNtB1v_6result6ResultINtNtB9_7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB44_IB44_INtNtNtB4a_8encoding7encoder7EncoderNtNtB48_5boxed7BoxBodyEEB53_EEENtNtNtB9_5error5error5ErrorEEL_EEINtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition25ConditionMiddlewareFutureIB1r_IB1X_DB2w_p6OutputIB3a_IB3x_B53_EB6d_EEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtB7_8compress16CompressResponseNtNtB9_11app_service10AppRoutingB5I_EINtNtB91_5ready5ReadyB8x_EEEEB2w_4pollCsl8OoimOLbh_6qdrant.exit.thread
  store i64 -1, ptr %0, align 8
  br label %bb.at

bb.x:                                             ; preds = %_RNvXs1_NtNtCsgoPClq0H8JF_9actix_web10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1v_6future6future6Futurep6OutputINtNtB1v_6result6ResultINtNtB9_7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB44_IB44_INtNtNtB4a_8encoding7encoder7EncoderNtNtB48_5boxed7BoxBodyEEB53_EEENtNtNtB9_5error5error5ErrorEEL_EEINtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition25ConditionMiddlewareFutureIB1r_IB1X_DB2w_p6OutputIB3a_IB3x_B53_EB6d_EEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtB7_8compress16CompressResponseNtNtB9_11app_service10AppRoutingB5I_EINtNtB91_5ready5ReadyB8x_EEEEB2w_4pollCsl8OoimOLbh_6qdrant.exit, %.thread
  %.sroa.12.26169 = phi ptr [ %.sroa.12.2.ph, %.thread ], [ %.sroa.0.i.sroa.6.0, %_RNvXs1_NtNtCsgoPClq0H8JF_9actix_web10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1v_6future6future6Futurep6OutputINtNtB1v_6result6ResultINtNtB9_7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB44_IB44_INtNtNtB4a_8encoding7encoder7EncoderNtNtB48_5boxed7BoxBodyEEB53_EEENtNtNtB9_5error5error5ErrorEEL_EEINtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition25ConditionMiddlewareFutureIB1r_IB1X_DB2w_p6OutputIB3a_IB3x_B53_EB6d_EEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtB7_8compress16CompressResponseNtNtB9_11app_service10AppRoutingB5I_EINtNtB91_5ready5ReadyB8x_EEEEB2w_4pollCsl8OoimOLbh_6qdrant.exit ] ; 2 uses
  %.sroa.9.26268 = phi ptr [ %.sroa.9.2.ph, %.thread ], [ %.sroa.0.i.sroa.5.0, %_RNvXs1_NtNtCsgoPClq0H8JF_9actix_web10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1v_6future6future6Futurep6OutputINtNtB1v_6result6ResultINtNtB9_7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB44_IB44_INtNtNtB4a_8encoding7encoder7EncoderNtNtB48_5boxed7BoxBodyEEB53_EEENtNtNtB9_5error5error5ErrorEEL_EEINtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition25ConditionMiddlewareFutureIB1r_IB1X_DB2w_p6OutputIB3a_IB3x_B53_EB6d_EEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtB7_8compress16CompressResponseNtNtB9_11app_service10AppRoutingB5I_EINtNtB91_5ready5ReadyB8x_EEEEB2w_4pollCsl8OoimOLbh_6qdrant.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.26268), "nonnull"(ptr %.sroa.12.26169) ]
  store i64 2, ptr %0, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.26268, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.12.26169, ptr %.sroa.512.0..sroa_idx, align 8
  br label %bb.at

bb.y:                                             ; preds = %_RNvXs1_NtNtCsgoPClq0H8JF_9actix_web10middleware9conditionINtB5_25ConditionMiddlewareFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1v_6future6future6Futurep6OutputINtNtB1v_6result6ResultINtNtB9_7service15ServiceResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB44_IB44_INtNtNtB4a_8encoding7encoder7EncoderNtNtB48_5boxed7BoxBodyEEB53_EEENtNtNtB9_5error5error5ErrorEEL_EEINtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition25ConditionMiddlewareFutureIB1r_IB1X_DB2w_p6OutputIB3a_IB3x_B53_EB6d_EEL_EEINtNtNtCs2tOeTMwhwEo_11actix_utils6future6either6EitherINtNtB7_8compress16CompressResponseNtNtB9_11app_service10AppRoutingB5I_EINtNtB91_5ready5ReadyB8x_EEEEB2w_4pollCsl8OoimOLbh_6qdrant.exit
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.0.i.sroa.7, i64 248, i1 false)
  store i64 %.sroa.0.i.sroa.0.0, ptr %i.ai, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.sroa.0.i.sroa.5.0, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %.sroa.0.i.sroa.6.0, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 272 ; 2 uses
  store ptr %.sroa.3.0.i, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ai, i64 256 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !noundef !5
  %.not = icmp eq ptr %i.bt, null
  br i1 %.not, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.bu = load i64, ptr %i.al, align 8, !range !14, !noundef !5
  %.not36 = icmp eq i64 %i.bu, -1
  br i1 %.not36, label %bb.af, label %bb.ae

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %i.bs, ptr %i.ah, align 8, !captures !832
  %i.bv = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, 6
  call void @llvm.assume(i1 %i.bw)
  %i.bx = icmp samesign ugt i64 %i.bv, 3
  br i1 %i.bx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.ah, ptr %i.ag, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsgoPClq0H8JF_9actix_web5error5error5ErrorNtB6_5Debug3fmtCsl8OoimOLbh_6qdrant, ptr %.sroa.426.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr @5, ptr %i.af, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 29, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr @5, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 29, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr @40, ptr %i.cb, align 8
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @39, ptr noundef nonnull %i.ag, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.af)
          to label %bb.ad unwind label %bb.aw

bb.ac:                                            ; preds = %bb.aa, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.z

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.ac

bb.ae:                                            ; preds = %bb.z
  %i.cc = load ptr, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.ad, ptr noundef nonnull align 8 dereferenceable(208) %i.ai, i64 208, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 208
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 216
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.428.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.332.0..sroa_idx, i64 40, i1 false)
  store ptr %.sroa.2.0.copyload, ptr %i.s, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.ce = load <2 x ptr>, ptr %i.bs, align 8
  store <2 x ptr> %i.ce, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %i.cc, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RINvMs_NtNtCsgoPClq0H8JF_9actix_web8response8responseINtB5_12HttpResponseuE8map_bodyNCNvB2_19map_into_boxed_body0NtNtNtCs6EFb6a2W5dE_10actix_http4body5boxed7BoxBodyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.s)
          to label %bb.ah unwind label %bb.ag

bb.af:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.ae, ptr noundef nonnull align 8 dereferenceable(280) %i.ai, i64 280, i1 false)
  br label %bb.al

bb.ag:                                            ; preds = %bb.ae
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgoPClq0H8JF_9actix_web7request11HttpRequestECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(8) %i.ab) #21
          to label %bb.ao unwind label %bb.am

bb.ah:                                            ; preds = %bb.ae
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ac, i64 104 ; 2 uses
  store ptr %i.cc, ptr %i.cg, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, ptr noundef nonnull align 8 dereferenceable(104) %i.aa, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ck, 48
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.idx
  %i.cm = icmp eq i64 %i.ck, 0
  br i1 %i.cm, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah, %bb.ai
  %.sroa.015.086 = phi ptr [ %i.co, %bb.ai ], [ %i.ci, %bb.ah ] ; 2 uses
  invoke void @_RNvMsa_NtNtCsgoPClq0H8JF_9actix_web10middleware6loggerNtB5_10FormatText15render_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.015.086, ptr noundef nonnull align 8 %i.ac)
          to label %bb.ai unwind label %bb.an

._crit_edge.loopexit:                             ; preds = %bb.ai
  %.pre = load ptr, ptr %i.cg, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ah
  %i.cn = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.cc, %bb.ah ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.r, ptr noundef nonnull align 8 dereferenceable(104) %i.ac, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.cn, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke void @_RINvMs_NtNtCsgoPClq0H8JF_9actix_web8response8responseNtB5_12HttpResponse8set_bodyINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB1i_IB1i_IB1i_INtNtNtB1o_8encoding7encoder7EncoderNtNtB1m_5boxed7BoxBodyEEB2m_EEB2h_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %i.ad)
          to label %bb.ak unwind label %bb.aj

bb.ai:                                            ; preds = %.lr.ph
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.015.086, i64 48 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.cl
  br i1 %i.cp, label %._crit_edge.loopexit, label %.lr.ph

bb.aj:                                            ; preds = %._crit_edge
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgoPClq0H8JF_9actix_web7request11HttpRequestECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(8) %i.z) #21
          to label %common.resume unwind label %bb.am

bb.ak:                                            ; preds = %._crit_edge
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ae, i64 272
  store ptr %i.cn, ptr %i.cr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.ae, ptr noundef nonnull align 8 dereferenceable(272) %i.y, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  store i64 -1, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RNvXs0_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am)
          to label %bb.ap unwind label %bb.au

bb.am:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.ao, %bb.an, %bb.aj, %bb.ag
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.an:                                            ; preds = %.lr.ph
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgoPClq0H8JF_9actix_web7service15ServiceResponseECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(112) %i.ac) #21
          to label %bb.ao unwind label %bb.am

bb.ao:                                            ; preds = %bb.an, %bb.ag
  %.pn.pn.ph = phi { ptr, i32 } [ %i.cf, %bb.ag ], [ %i.ct, %bb.an ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIBC_IBC_IBC_INtNtNtBI_8encoding7encoder7EncoderNtNtBG_5boxed7BoxBodyEEB1E_EEB1A_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(208) %i.ad) #21
          to label %common.resume unwind label %bb.am

bb.ap:                                            ; preds = %bb.al
  %i.cu = load i64, ptr %1, align 8, !range !21, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.u, ptr noundef nonnull align 8 dereferenceable(280) %i.ae, i64 280, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 4 dereferenceable(16) %i.x, i64 16, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  store i64 %i.cu, ptr %i.t, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.a, ptr noundef nonnull align 8 dereferenceable(272) %i.ae, i64 272, i1 false)
  invoke void @_RINvMs_NtNtCsgoPClq0H8JF_9actix_web8response8responseINtB5_12HttpResponseINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIB1a_IB1a_IB1a_INtNtNtB1g_8encoding7encoder7EncoderNtNtB1e_5boxed7BoxBodyEEB2e_EEB29_EE8map_bodyNCNvXs2_NtNtB9_10middleware6loggerINtB3K_14LoggerResponseINtNtB3M_9condition19ConditionMiddlewareINtNtCsbEyXj2whuwq_10actix_cors10middleware14CorsMiddlewareINtNtB3M_9normalize26NormalizePathNormalizationINtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition19ConditionMiddlewareINtNtNtCsl8OoimOLbh_6qdrant5actix4auth14AuthMiddlewareINtNtB3M_8compress18CompressMiddlewareNtNtB9_11app_service10AppRoutingEEB95_EEEB68_EB19_ENtNtNtCskKLDkoKarTP_4core6future6future6Future4poll0INtB3K_9StreamLogB19_EEB8k_(ptr noalias nofree noundef nonnull sret([352 x i8]) align 8 captures(none) dereferenceable(352) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(272) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.t)
          to label %bb.as unwind label %bb.aq, !noalias !835

bb.aq:                                            ; preds = %bb.ap
  %i.cy = landingpad { ptr, i32 }
          cleanup
  %i.cz = getelementptr inbounds nuw i8, ptr %i.u, i64 272
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgoPClq0H8JF_9actix_web7request11HttpRequestECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(8) %i.cz) #21
          to label %common.resume unwind label %bb.ar, !noalias !836
end_hunk_1
