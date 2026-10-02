Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant_rust_stemmers-4f3eb9ef80bdada6.qdrant_rust_stemmers.4ea1d8c379a1dc56-cgu.21?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [132 x i8] c"ArabicArmenianDanishDutchEnglishFinnishFrenchGermanGreekHungarianItalianNorwegianPortugueseRomanianRussianSpanishSwedishTamilTurkish", align 1
@_RNvNvXs_Cs6KyyKVsJz8w_20qdrant_rust_stemmersNtB6_9AlgorithmNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt7___NAMES = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @0, [8 x i8] c"\84\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs_Cs6KyyKVsJz8w_20qdrant_rust_stemmersNtB6_9AlgorithmNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt8___OFFSET = local_unnamed_addr constant [160 x i8] c"\00\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\0E\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\19\00\00\00\00\00\00\00 \00\00\00\00\00\00\00'\00\00\00\00\00\00\00-\00\00\00\00\00\00\003\00\00\00\00\00\00\008\00\00\00\00\00\00\00A\00\00\00\00\00\00\00H\00\00\00\00\00\00\00Q\00\00\00\00\00\00\00[\00\00\00\00\00\00\00c\00\00\00\00\00\00\00j\00\00\00\00\00\00\00q\00\00\00\00\00\00\00x\00\00\00\00\00\00\00}\00\00\00\00\00\00\00\84\00\00\00\00\00\00\00", align 8
@1 = private unnamed_addr constant [18 x i8] c"variant identifier", align 1
@2 = private unnamed_addr constant [14 x i8] c"enum Algorithm", align 1

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_env11SnowballEnvEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !11, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs6KyyKVsJz8w_20qdrant_rust_stemmers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs6KyyKVsJz8w_20qdrant_rust_stemmers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs6KyyKVsJz8w_20qdrant_rust_stemmers.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs6KyyKVsJz8w_20qdrant_rust_stemmers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs6KyyKVsJz8w_20qdrant_rust_stemmers.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #5
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs6KyyKVsJz8w_20qdrant_rust_stemmers.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs6KyyKVsJz8w_20qdrant_rust_stemmers.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs6KyyKVsJz8w_20qdrant_rust_stemmers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs6KyyKVsJz8w_20qdrant_rust_stemmers.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs6KyyKVsJz8w_20qdrant_rust_stemmers.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs6KyyKVsJz8w_20qdrant_rust_stemmers.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCs6KyyKVsJz8w_20qdrant_rust_stemmersNtB2_7Stemmer4stem(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store i64 %3, ptr %i.e, align 8
  %i.f = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.g = invoke noundef zeroext i1 %i.f(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %bb.c unwind label %bb.b       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_env11SnowballEnvEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.a) #6
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #5
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCs6KyyKVsJz8w_20qdrant_rust_stemmersNtB2_7Stemmer8stem_cow(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0 = load i64, ptr %.sroa.5.0.in, align 8, !noundef !4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sroa.5.0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store i64 %.sroa.5.0, ptr %i.e, align 8
  %i.f = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.g = invoke noundef zeroext i1 %i.f(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %bb.c unwind label %bb.b       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_env11SnowballEnvEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.a) #6
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #5
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvCs6KyyKVsJz8w_20qdrant_rust_stemmerss_1__NtB7_9AlgorithmNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB13_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvCs6KyyKVsJz8w_20qdrant_rust_stemmerss_1__NtBa_9AlgorithmNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB16_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 14)
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs6KyyKVsJz8w_20qdrant_rust_stemmers(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs6KyyKVsJz8w_20qdrant_rust_stemmers(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { cold noreturn nounwind }
attributes #6 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!7 = !{i64 -1, i64 -9223372036854775808}
!9 = distinct !{!9, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs6KyyKVsJz8w_20qdrant_rust_stemmers"}
!10 = distinct !{!10, !9, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs6KyyKVsJz8w_20qdrant_rust_stemmers: argument 0"}
!11 = !{!10}
end_hunk_0
