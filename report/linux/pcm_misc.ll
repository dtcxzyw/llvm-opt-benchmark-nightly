Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/pcm_misc?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_format_signed: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad snd_pcm_format_signed ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_format_unsigned: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad snd_pcm_format_unsigned ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_format_linear: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad snd_pcm_format_linear ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_format_little_endian: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad snd_pcm_format_little_endian ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_format_big_endian: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad snd_pcm_format_big_endian ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_format_width: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad snd_pcm_format_width ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_format_physical_width: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad snd_pcm_format_physical_width ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_format_size: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad snd_pcm_format_size ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_format_silence_64: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad snd_pcm_format_silence_64 ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_format_set_silence: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad snd_pcm_format_set_silence ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_hw_limit_rates: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad snd_pcm_hw_limit_rates ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_rate_to_rate_bit: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad snd_pcm_rate_to_rate_bit ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_rate_bit_to_rate: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad snd_pcm_rate_bit_to_rate ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_rate_mask_intersect: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad snd_pcm_rate_mask_intersect ; .previous"

%struct.pcm_format_data = type { i8, i8, i8, i8, [8 x i8] }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }

@pcm_formats = internal constant [53 x %struct.pcm_format_data] [%struct.pcm_format_data { i8 8, i8 8, i8 -1, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 8, i8 8, i8 -1, i8 0, [8 x i8] c"\80\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 16, i8 16, i8 1, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 16, i8 16, i8 0, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 16, i8 16, i8 1, i8 0, [8 x i8] c"\00\80\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 16, i8 16, i8 0, i8 0, [8 x i8] c"\80\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 24, i8 32, i8 1, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 24, i8 32, i8 0, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 24, i8 32, i8 1, i8 0, [8 x i8] c"\00\00\80\00\00\00\00\00" }, %struct.pcm_format_data { i8 24, i8 32, i8 0, i8 0, [8 x i8] c"\00\80\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 32, i8 32, i8 1, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 32, i8 32, i8 0, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 32, i8 32, i8 1, i8 0, [8 x i8] c"\00\00\00\80\00\00\00\00" }, %struct.pcm_format_data { i8 32, i8 32, i8 0, i8 0, [8 x i8] c"\80\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 32, i8 32, i8 1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 32, i8 32, i8 0, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 64, i8 64, i8 1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 64, i8 64, i8 0, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 32, i8 32, i8 1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 32, i8 32, i8 0, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 8, i8 8, i8 -1, i8 -1, [8 x i8] c"\7F\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 8, i8 8, i8 -1, i8 -1, [8 x i8] c"U\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 4, i8 4, i8 -1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 0, i8 0, i8 -1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 0, i8 0, i8 -1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 20, i8 32, i8 1, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 20, i8 32, i8 0, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 20, i8 32, i8 1, i8 0, [8 x i8] c"\00\00\08\00\00\00\00\00" }, %struct.pcm_format_data { i8 20, i8 32, i8 0, i8 0, [8 x i8] c"\00\08\00\00\00\00\00\00" }, %struct.pcm_format_data zeroinitializer, %struct.pcm_format_data zeroinitializer, %struct.pcm_format_data { i8 0, i8 0, i8 -1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 24, i8 24, i8 1, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 24, i8 24, i8 0, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 24, i8 24, i8 1, i8 0, [8 x i8] c"\00\00\80\00\00\00\00\00" }, %struct.pcm_format_data { i8 24, i8 24, i8 0, i8 0, [8 x i8] c"\80\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 20, i8 24, i8 1, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 20, i8 24, i8 0, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 20, i8 24, i8 1, i8 0, [8 x i8] c"\00\00\08\00\00\00\00\00" }, %struct.pcm_format_data { i8 20, i8 24, i8 0, i8 0, [8 x i8] c"\08\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 18, i8 24, i8 1, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 18, i8 24, i8 0, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 18, i8 24, i8 1, i8 0, [8 x i8] c"\00\00\02\00\00\00\00\00" }, %struct.pcm_format_data { i8 18, i8 24, i8 0, i8 0, [8 x i8] c"\02\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 3, i8 3, i8 -1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 3, i8 8, i8 -1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 5, i8 5, i8 -1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 5, i8 8, i8 -1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 8, i8 8, i8 1, i8 0, [8 x i8] c"i\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 16, i8 16, i8 1, i8 0, [8 x i8] c"ii\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 32, i8 32, i8 1, i8 0, [8 x i8] c"iiii\00\00\00\00" }, %struct.pcm_format_data { i8 16, i8 16, i8 0, i8 0, [8 x i8] c"ii\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 32, i8 32, i8 0, i8 0, [8 x i8] c"iiii\00\00\00\00" }], align 16
@__UNIQUE_ID_addressable_snd_pcm_format_signed_488 = internal global ptr @snd_pcm_format_signed, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_snd_pcm_format_unsigned_489 = internal global ptr @snd_pcm_format_unsigned, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_snd_pcm_format_linear_490 = internal global ptr @snd_pcm_format_linear, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_snd_pcm_format_little_endian_491 = internal global ptr @snd_pcm_format_little_endian, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_snd_pcm_format_big_endian_492 = internal global ptr @snd_pcm_format_big_endian, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_snd_pcm_format_width_493 = internal global ptr @snd_pcm_format_width, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_snd_pcm_format_physical_width_494 = internal global ptr @snd_pcm_format_physical_width, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_snd_pcm_format_size_495 = internal global ptr @snd_pcm_format_size, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_snd_pcm_format_silence_64_496 = internal global ptr @snd_pcm_format_silence_64, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_snd_pcm_format_set_silence_497 = internal global ptr @snd_pcm_format_set_silence, section ".discard.addressable", align 8
@snd_pcm_known_rates = external dso_local local_unnamed_addr constant %struct.snd_pcm_hw_constraint_list, align 8
@__UNIQUE_ID_addressable_snd_pcm_hw_limit_rates_504 = internal global ptr @snd_pcm_hw_limit_rates, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_snd_pcm_rate_to_rate_bit_505 = internal global ptr @snd_pcm_rate_to_rate_bit, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_snd_pcm_rate_bit_to_rate_506 = internal global ptr @snd_pcm_rate_bit_to_rate, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_snd_pcm_rate_mask_intersect_507 = internal global ptr @snd_pcm_rate_mask_intersect, section ".discard.addressable", align 8
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_addressable_snd_pcm_format_big_endian_492, ptr @__UNIQUE_ID_addressable_snd_pcm_format_linear_490, ptr @__UNIQUE_ID_addressable_snd_pcm_format_little_endian_491, ptr @__UNIQUE_ID_addressable_snd_pcm_format_physical_width_494, ptr @__UNIQUE_ID_addressable_snd_pcm_format_set_silence_497, ptr @__UNIQUE_ID_addressable_snd_pcm_format_signed_488, ptr @__UNIQUE_ID_addressable_snd_pcm_format_silence_64_496, ptr @__UNIQUE_ID_addressable_snd_pcm_format_size_495, ptr @__UNIQUE_ID_addressable_snd_pcm_format_unsigned_489, ptr @__UNIQUE_ID_addressable_snd_pcm_format_width_493, ptr @__UNIQUE_ID_addressable_snd_pcm_hw_limit_rates_504, ptr @__UNIQUE_ID_addressable_snd_pcm_rate_bit_to_rate_506, ptr @__UNIQUE_ID_addressable_snd_pcm_rate_mask_intersect_507, ptr @__UNIQUE_ID_addressable_snd_pcm_rate_to_rate_bit_505], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local range(i32 -22, 128) i32 @snd_pcm_format_signed(i32 noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ult i32 %0, 53
  br i1 %i.a, label %1, label %bb.c

1:                                                ; preds = %bb.a
  %2 = zext nneg i32 %0 to i64                    ; 2 uses
  %3 = shl nuw nsw i64 1, %2
  %4 = and i64 %3, 263884971687936
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %1
  %i.b = getelementptr [12 x i8], ptr @pcm_formats, i64 %2
  %i.c = getelementptr i8, ptr %i.b, i64 3
  %i.d = load i8, ptr %i.c, align 1
  %i.e = sext i8 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %1, %bb.a, %bb.b
  %.0 = phi i32 [ -22, %bb.a ], [ %i.e, %bb.b ], [ -22, %1 ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local range(i32 -128, 2) i32 @snd_pcm_format_unsigned(i32 noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ult i32 %0, 53
  br i1 %i.a, label %1, label %snd_pcm_format_signed.exit.thread

1:                                                ; preds = %bb.a
  %2 = zext nneg i32 %0 to i64                    ; 4 uses
  %3 = shl nuw nsw i64 1, %2
  %4 = and i64 %3, 263884971687936
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %snd_pcm_format_signed.exit, label %snd_pcm_format_signed.exit.thread

snd_pcm_format_signed.exit:                       ; preds = %1
  %i.b = getelementptr [12 x i8], ptr @pcm_formats, i64 %2
  %i.c = getelementptr i8, ptr %i.b, i64 3
  %i.d = load i8, ptr %i.c, align 1
  %5 = sext i8 %i.d to i32
  %6 = lshr i64 263884971687936, %2
  %.fr = freeze i64 %6
  %7 = trunc i64 %.fr to i1
  %8 = lshr i64 8739796604171058, %2
  %.not = trunc i64 %8 to i32
  %9 = and i32 %.not, 1
  %spec.select = select i1 %7, i32 %5, i32 %9
  br label %snd_pcm_format_signed.exit.thread

snd_pcm_format_signed.exit.thread:                ; preds = %snd_pcm_format_signed.exit, %1, %bb.a
  %10 = phi i32 [ %spec.select, %snd_pcm_format_signed.exit ], [ -22, %1 ], [ -22, %bb.a ]
  ret i32 %10
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local range(i32 0, 2) i32 @snd_pcm_format_linear(i32 noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ult i32 %0, 53
  br i1 %i.a, label %bb.b, label %snd_pcm_format_signed.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64                  ; 2 uses
  %1 = shl nuw nsw i64 1, %i.b
  %2 = and i64 %1, 263884971687936
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %3, label %snd_pcm_format_signed.exit

3:                                                ; preds = %bb.b
  %4 = lshr i64 8743314283053055, %i.b
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 1
  br label %snd_pcm_format_signed.exit

snd_pcm_format_signed.exit:                       ; preds = %bb.a, %bb.b, %3
  %.0.i = phi i32 [ 0, %bb.a ], [ %6, %3 ], [ 0, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local range(i32 -22, 128) i32 @snd_pcm_format_little_endian(i32 noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ult i32 %0, 53
  br i1 %i.a, label %1, label %bb.c

1:                                                ; preds = %bb.a
  %2 = zext nneg i32 %0 to i64                    ; 2 uses
  %3 = shl nuw nsw i64 1, %2
  %4 = and i64 %3, 263884970655747
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %1
  %i.b = getelementptr [12 x i8], ptr @pcm_formats, i64 %2
  %i.c = getelementptr i8, ptr %i.b, i64 2
  %i.d = load i8, ptr %i.c, align 2
  %i.e = sext i8 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %1, %bb.a, %bb.b
  %.0 = phi i32 [ -22, %bb.a ], [ %i.e, %bb.b ], [ -22, %1 ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local range(i32 -128, 2) i32 @snd_pcm_format_big_endian(i32 noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ult i32 %0, 53
  br i1 %i.a, label %1, label %snd_pcm_format_little_endian.exit.thread

1:                                                ; preds = %bb.a
  %2 = zext nneg i32 %0 to i64                    ; 4 uses
  %3 = shl nuw nsw i64 1, %2
  %4 = and i64 %3, 263884970655747
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %snd_pcm_format_little_endian.exit, label %snd_pcm_format_little_endian.exit.thread

snd_pcm_format_little_endian.exit:                ; preds = %1
  %i.b = getelementptr [12 x i8], ptr @pcm_formats, i64 %2
  %i.c = getelementptr i8, ptr %i.b, i64 2
  %i.d = load i8, ptr %i.c, align 2
  %5 = sext i8 %i.d to i32
  %6 = lshr i64 263884970655747, %2
  %.fr = freeze i64 %6
  %7 = trunc i64 %.fr to i1
  %8 = lshr i64 6767126648629928, %2
  %.not = trunc i64 %8 to i32
  %9 = and i32 %.not, 1
  %spec.select = select i1 %7, i32 %5, i32 %9
  br label %snd_pcm_format_little_endian.exit.thread

snd_pcm_format_little_endian.exit.thread:         ; preds = %snd_pcm_format_little_endian.exit, %1, %bb.a
  %10 = phi i32 [ %spec.select, %snd_pcm_format_little_endian.exit ], [ -22, %1 ], [ -22, %bb.a ]
  ret i32 %10
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local range(i32 -22, 256) i32 @snd_pcm_format_width(i32 noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ult i32 %0, 53
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64                  ; 2 uses
  %1 = shl nuw nsw i64 1, %i.b
  %2 = and i64 %1, 3783262208
  %.not.not = icmp eq i64 %2, 0
  br i1 %.not.not, label %3, label %bb.c

3:                                                ; preds = %bb.b
  %4 = getelementptr [12 x i8], ptr @pcm_formats, i64 %i.b
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %3
  %.0 = phi i32 [ %6, %3 ], [ -22, %bb.a ], [ -22, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local range(i32 -22, 256) i32 @snd_pcm_format_physical_width(i32 noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ult i32 %0, 53
  br i1 %i.a, label %1, label %bb.c

1:                                                ; preds = %bb.a
  %2 = zext nneg i32 %0 to i64                    ; 2 uses
  %3 = shl nuw nsw i64 1, %2
  %4 = and i64 %3, 3783262208
  %.not.not = icmp eq i64 %4, 0
  br i1 %.not.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %1
  %i.b = getelementptr [12 x i8], ptr @pcm_formats, i64 %2
  %i.c = getelementptr i8, ptr %i.b, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %1, %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ -22, %bb.a ], [ -22, %1 ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local range(i64 -22, 2305843009213693952) i64 @snd_pcm_format_size(i32 noundef %0, i64 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ult i32 %0, 53
  br i1 %i.a, label %bb.b, label %snd_pcm_format_physical_width.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64                  ; 2 uses
  %2 = shl nuw nsw i64 1, %i.b
  %3 = and i64 %2, 3783262208
  %.not.not.i = icmp eq i64 %3, 0
  br i1 %.not.not.i, label %snd_pcm_format_physical_width.exit, label %snd_pcm_format_physical_width.exit.thread

snd_pcm_format_physical_width.exit:               ; preds = %bb.b
  %4 = getelementptr [12 x i8], ptr @pcm_formats, i64 %i.b
  %5 = getelementptr i8, ptr %4, i64 1
  %6 = load i8, ptr %5, align 1
  %i.c = zext i8 %6 to i64
  %i.d = mul i64 %1, %i.c
  %i.e = lshr i64 %i.d, 3
  br label %snd_pcm_format_physical_width.exit.thread

snd_pcm_format_physical_width.exit.thread:        ; preds = %bb.a, %bb.b, %snd_pcm_format_physical_width.exit
  %i.f = phi i64 [ %i.e, %snd_pcm_format_physical_width.exit ], [ -22, %bb.b ], [ -22, %bb.a ]
  ret i64 %i.f
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local ptr @snd_pcm_format_silence_64(i32 noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ult i32 %0, 53
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64                  ; 2 uses
  %1 = shl nuw nsw i64 1, %i.b
  %2 = and i64 %1, 3783262208
  %.not.not = icmp eq i64 %2, 0
  br i1 %.not.not, label %3, label %bb.c

3:                                                ; preds = %bb.b
  %4 = getelementptr [12 x i8], ptr @pcm_formats, i64 %i.b
  %5 = getelementptr i8, ptr %4, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %3
  %.0 = phi ptr [ %5, %3 ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite)
define dso_local range(i32 -22, 1) i32 @snd_pcm_format_set_silence(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ult i32 %0, 53
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = zext nneg i32 %0 to i64                  ; 4 uses
  %i.d = getelementptr [12 x i8], ptr @pcm_formats, i64 %i.c ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %3 = shl nuw nsw i64 1, %i.c
  %4 = and i64 %3, 3783262208
  %.not.not = icmp eq i64 %4, 0
  br i1 %.not.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.d, i64 4        ; 9 uses
  %5 = lshr i64 3517678881997, %i.c
  %6 = trunc i64 %5 to i1
  %7 = lshr i64 545361557979139, %i.c
  %8 = trunc i64 %7 to i1
  %or.cond = select i1 %6, i1 true, i1 %8
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = mul i32 %2, %i.g
  %i.j = lshr i32 %i.i, 3
  %i.k = load i8, ptr %i.h, align 4
  %i.l = zext nneg i32 %i.j to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.k, i64 %i.l, i1 false)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.m = lshr i32 %i.g, 3
  switch i32 %i.m, label %.loopexit [
    i32 2, label %.preheader
    i32 3, label %.preheader42.preheader
    i32 4, label %.preheader44
    i32 8, label %.preheader46
  ]

.preheader42.preheader:                           ; preds = %bb.f
  %xtraiter75 = and i32 %2, 3                     ; 2 uses
  %lcmp.mod76.not = icmp eq i32 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.preheader42.prol.loopexit, label %.preheader42.prol

.preheader42.prol:                                ; preds = %.preheader42.preheader, %.preheader42.prol
  %.153.prol = phi ptr [ %i.o, %.preheader42.prol ], [ %1, %.preheader42.preheader ] ; 2 uses
  %.13452.prol = phi i32 [ %i.n, %.preheader42.prol ], [ %2, %.preheader42.preheader ]
  %prol.iter77 = phi i32 [ %prol.iter77.next, %.preheader42.prol ], [ 0, %.preheader42.preheader ]
  %i.n = add i32 %.13452.prol, -1                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(3) %.153.prol, ptr noundef align 4 dereferenceable(3) %i.h, i64 3, i1 false)
  %i.o = getelementptr i8, ptr %.153.prol, i64 3  ; 2 uses
  %prol.iter77.next = add i32 %prol.iter77, 1     ; 2 uses
  %prol.iter77.cmp.not = icmp eq i32 %prol.iter77.next, %xtraiter75
  br i1 %prol.iter77.cmp.not, label %.preheader42.prol.loopexit, label %.preheader42.prol, !llvm.loop !11

.preheader42.prol.loopexit:                       ; preds = %.preheader42.prol, %.preheader42.preheader
  %.153.unr = phi ptr [ %1, %.preheader42.preheader ], [ %i.o, %.preheader42.prol ]
  %.13452.unr = phi i32 [ %2, %.preheader42.preheader ], [ %i.n, %.preheader42.prol ]
  %i.p = icmp ult i32 %2, 4
  br i1 %i.p, label %.loopexit, label %.preheader42

.preheader46:                                     ; preds = %bb.f
  %i.q = load i64, ptr %i.h, align 4              ; 9 uses
  %xtraiter = and i32 %2, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader46, %.prol.preheader
  %.349.prol = phi ptr [ %i.s, %.prol.preheader ], [ %1, %.preheader46 ] ; 2 uses
  %.33648.prol = phi i32 [ %i.r, %.prol.preheader ], [ %2, %.preheader46 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader46 ]
  %i.r = add i32 %.33648.prol, -1                 ; 2 uses
  store i64 %i.q, ptr %.349.prol, align 1
  %i.s = getelementptr i8, ptr %.349.prol, i64 8  ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !12

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader46
  %.349.unr = phi ptr [ %1, %.preheader46 ], [ %i.s, %.prol.preheader ]
  %.33648.unr = phi i32 [ %2, %.preheader46 ], [ %i.r, %.prol.preheader ]
  %i.t = icmp ult i32 %2, 8
  br i1 %i.t, label %.loopexit, label %.preheader46.new

.preheader44:                                     ; preds = %bb.f
  %i.u = load i32, ptr %i.h, align 4              ; 9 uses
  %xtraiter72 = and i32 %2, 7                     ; 2 uses
  %lcmp.mod73.not = icmp eq i32 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %.prol.loopexit71, label %.prol.preheader70

.prol.preheader70:                                ; preds = %.preheader44, %.prol.preheader70
  %.251.prol = phi ptr [ %i.w, %.prol.preheader70 ], [ %1, %.preheader44 ] ; 2 uses
  %.23550.prol = phi i32 [ %i.v, %.prol.preheader70 ], [ %2, %.preheader44 ]
  %prol.iter74 = phi i32 [ %prol.iter74.next, %.prol.preheader70 ], [ 0, %.preheader44 ]
  %i.v = add i32 %.23550.prol, -1                 ; 2 uses
  store i32 %i.u, ptr %.251.prol, align 1
  %i.w = getelementptr i8, ptr %.251.prol, i64 4  ; 2 uses
  %prol.iter74.next = add i32 %prol.iter74, 1     ; 2 uses
  %prol.iter74.cmp.not = icmp eq i32 %prol.iter74.next, %xtraiter72
  br i1 %prol.iter74.cmp.not, label %.prol.loopexit71, label %.prol.preheader70, !llvm.loop !13

.prol.loopexit71:                                 ; preds = %.prol.preheader70, %.preheader44
  %.251.unr = phi ptr [ %1, %.preheader44 ], [ %i.w, %.prol.preheader70 ]
  %.23550.unr = phi i32 [ %2, %.preheader44 ], [ %i.v, %.prol.preheader70 ]
  %i.x = icmp ult i32 %2, 8
  br i1 %i.x, label %.loopexit, label %.preheader44.new

.preheader:                                       ; preds = %bb.f
  %i.y = load i16, ptr %i.h, align 4              ; 9 uses
  %xtraiter80 = and i32 %2, 7                     ; 2 uses
  %lcmp.mod81.not = icmp eq i32 %xtraiter80, 0
  br i1 %lcmp.mod81.not, label %.prol.loopexit79, label %.prol.preheader78

.prol.preheader78:                                ; preds = %.preheader, %.prol.preheader78
  %.03255.prol = phi ptr [ %i.aa, %.prol.preheader78 ], [ %1, %.preheader ] ; 2 uses
  %.03354.prol = phi i32 [ %i.z, %.prol.preheader78 ], [ %2, %.preheader ]
  %prol.iter82 = phi i32 [ %prol.iter82.next, %.prol.preheader78 ], [ 0, %.preheader ]
  %i.z = add i32 %.03354.prol, -1                 ; 2 uses
  store i16 %i.y, ptr %.03255.prol, align 1
  %i.aa = getelementptr i8, ptr %.03255.prol, i64 2 ; 2 uses
  %prol.iter82.next = add i32 %prol.iter82, 1     ; 2 uses
  %prol.iter82.cmp.not = icmp eq i32 %prol.iter82.next, %xtraiter80
  br i1 %prol.iter82.cmp.not, label %.prol.loopexit79, label %.prol.preheader78, !llvm.loop !14

.prol.loopexit79:                                 ; preds = %.prol.preheader78, %.preheader
  %.03255.unr = phi ptr [ %1, %.preheader ], [ %i.aa, %.prol.preheader78 ]
  %.03354.unr = phi i32 [ %2, %.preheader ], [ %i.z, %.prol.preheader78 ]
  %i.ab = icmp ult i32 %2, 8
  br i1 %i.ab, label %.loopexit, label %.preheader.new

.preheader.new:                                   ; preds = %.prol.loopexit79, %.preheader.new
  %.03255 = phi ptr [ %i.ak, %.preheader.new ], [ %.03255.unr, %.prol.loopexit79 ] ; 9 uses
  %.03354 = phi i32 [ %i.aj, %.preheader.new ], [ %.03354.unr, %.prol.loopexit79 ]
  store i16 %i.y, ptr %.03255, align 1
  %i.ac = getelementptr i8, ptr %.03255, i64 2
  store i16 %i.y, ptr %i.ac, align 1
  %i.ad = getelementptr i8, ptr %.03255, i64 4
  store i16 %i.y, ptr %i.ad, align 1
  %i.ae = getelementptr i8, ptr %.03255, i64 6
  store i16 %i.y, ptr %i.ae, align 1
  %i.af = getelementptr i8, ptr %.03255, i64 8
  store i16 %i.y, ptr %i.af, align 1
  %i.ag = getelementptr i8, ptr %.03255, i64 10
  store i16 %i.y, ptr %i.ag, align 1
  %i.ah = getelementptr i8, ptr %.03255, i64 12
  store i16 %i.y, ptr %i.ah, align 1
  %i.ai = getelementptr i8, ptr %.03255, i64 14
  %i.aj = add i32 %.03354, -8                     ; 2 uses
  store i16 %i.y, ptr %i.ai, align 1
  %i.ak = getelementptr i8, ptr %.03255, i64 16
  %.not41.7 = icmp eq i32 %i.aj, 0
  br i1 %.not41.7, label %.loopexit, label %.preheader.new, !llvm.loop !15

.preheader42:                                     ; preds = %.preheader42.prol.loopexit, %.preheader42
  %.153 = phi ptr [ %i.ap, %.preheader42 ], [ %.153.unr, %.preheader42.prol.loopexit ] ; 5 uses
  %.13452 = phi i32 [ %i.ao, %.preheader42 ], [ %.13452.unr, %.preheader42.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(3) %.153, ptr noundef align 4 dereferenceable(3) %i.h, i64 3, i1 false)
  %i.al = getelementptr i8, ptr %.153, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(3) %i.al, ptr noundef align 4 dereferenceable(3) %i.h, i64 3, i1 false)
  %i.am = getelementptr i8, ptr %.153, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(3) %i.am, ptr noundef align 4 dereferenceable(3) %i.h, i64 3, i1 false)
  %i.an = getelementptr i8, ptr %.153, i64 9
  %i.ao = add i32 %.13452, -4                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(3) %i.an, ptr noundef align 4 dereferenceable(3) %i.h, i64 3, i1 false)
  %i.ap = getelementptr i8, ptr %.153, i64 12
  %.not40.3 = icmp eq i32 %i.ao, 0
  br i1 %.not40.3, label %.loopexit, label %.preheader42, !llvm.loop !16

.preheader44.new:                                 ; preds = %.prol.loopexit71, %.preheader44.new
  %.251 = phi ptr [ %i.ay, %.preheader44.new ], [ %.251.unr, %.prol.loopexit71 ] ; 9 uses
  %.23550 = phi i32 [ %i.ax, %.preheader44.new ], [ %.23550.unr, %.prol.loopexit71 ]
  store i32 %i.u, ptr %.251, align 1
  %i.aq = getelementptr i8, ptr %.251, i64 4
  store i32 %i.u, ptr %i.aq, align 1
  %i.ar = getelementptr i8, ptr %.251, i64 8
  store i32 %i.u, ptr %i.ar, align 1
  %i.as = getelementptr i8, ptr %.251, i64 12
  store i32 %i.u, ptr %i.as, align 1
  %i.at = getelementptr i8, ptr %.251, i64 16
  store i32 %i.u, ptr %i.at, align 1
  %i.au = getelementptr i8, ptr %.251, i64 20
  store i32 %i.u, ptr %i.au, align 1
  %i.av = getelementptr i8, ptr %.251, i64 24
  store i32 %i.u, ptr %i.av, align 1
  %i.aw = getelementptr i8, ptr %.251, i64 28
  %i.ax = add i32 %.23550, -8                     ; 2 uses
  store i32 %i.u, ptr %i.aw, align 1
  %i.ay = getelementptr i8, ptr %.251, i64 32
  %.not39.7.a = icmp eq i32 %i.ax, 0
  br i1 %.not39.7.a, label %.loopexit, label %.preheader44.new, !llvm.loop !17

.preheader46.new:                                 ; preds = %.prol.loopexit, %.preheader46.new
  %.349 = phi ptr [ %i.bh, %.preheader46.new ], [ %.349.unr, %.prol.loopexit ] ; 9 uses
  %.33648 = phi i32 [ %i.bg, %.preheader46.new ], [ %.33648.unr, %.prol.loopexit ]
  store i64 %i.q, ptr %.349, align 1
  %i.az = getelementptr i8, ptr %.349, i64 8
  store i64 %i.q, ptr %i.az, align 1
  %i.ba = getelementptr i8, ptr %.349, i64 16
  store i64 %i.q, ptr %i.ba, align 1
  %i.bb = getelementptr i8, ptr %.349, i64 24
  store i64 %i.q, ptr %i.bb, align 1
  %i.bc = getelementptr i8, ptr %.349, i64 32
  store i64 %i.q, ptr %i.bc, align 1
  %i.bd = getelementptr i8, ptr %.349, i64 40
  store i64 %i.q, ptr %i.bd, align 1
  %i.be = getelementptr i8, ptr %.349, i64 48
  store i64 %i.q, ptr %i.be, align 1
  %i.bf = getelementptr i8, ptr %.349, i64 56
  %i.bg = add i32 %.33648, -8                     ; 2 uses
  store i64 %i.q, ptr %i.bf, align 1
  %i.bh = getelementptr i8, ptr %.349, i64 64
  %.not.7 = icmp eq i32 %i.bg, 0
  br i1 %.not.7, label %.loopexit, label %.preheader46.new, !llvm.loop !18

.loopexit:                                        ; preds = %.prol.loopexit, %.preheader46.new, %.prol.loopexit71, %.preheader44.new, %.preheader42.prol.loopexit, %.preheader42, %.prol.loopexit79, %.preheader.new, %bb.f, %bb.c, %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ -22, %bb.a ], [ 0, %bb.e ], [ -22, %bb.c ], [ 0, %bb.b ], [ 0, %.prol.loopexit71 ], [ 0, %.preheader42.prol.loopexit ], [ 0, %.prol.loopexit79 ], [ 0, %bb.f ], [ 0, %.preheader.new ], [ 0, %.preheader42 ], [ 0, %.preheader44.new ], [ 0, %.preheader46.new ], [ 0, %.prol.loopexit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
end_hunk_0
