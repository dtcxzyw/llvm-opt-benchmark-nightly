Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/hid-input?download=true
inline.NumInlined: 131
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hidinput_calc_abs_res: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad hidinput_calc_abs_res ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hidinput_report_event: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad hidinput_report_event ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hidinput_get_led_field: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad hidinput_get_led_field ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hidinput_count_leds: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad hidinput_count_leds ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hidinput_connect: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad hidinput_connect ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hidinput_disconnect: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad hidinput_disconnect ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hidinput_reset_resume: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad hidinput_reset_resume ; .previous"

%struct.anon.3 = type { i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__UNIQUE_ID_addressable_hidinput_calc_abs_res_611 = internal global ptr @hidinput_calc_abs_res, section ".discard.addressable", align 8
@hid_hat_to_axis = internal unnamed_addr constant [9 x %struct.anon.3] [%struct.anon.3 zeroinitializer, %struct.anon.3 { i32 0, i32 -1 }, %struct.anon.3 { i32 1, i32 -1 }, %struct.anon.3 { i32 1, i32 0 }, %struct.anon.3 { i32 1, i32 1 }, %struct.anon.3 { i32 0, i32 1 }, %struct.anon.3 { i32 -1, i32 1 }, %struct.anon.3 { i32 -1, i32 0 }, %struct.anon.3 { i32 -1, i32 -1 }], align 16
@__UNIQUE_ID_addressable_hidinput_report_event_617 = internal global ptr @hidinput_report_event, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_hidinput_get_led_field_618 = internal global ptr @hidinput_get_led_field, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_hidinput_count_leds_619 = internal global ptr @hidinput_count_leds, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_hidinput_connect_620 = internal global ptr @hidinput_connect, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_hidinput_disconnect_621 = internal global ptr @hidinput_disconnect, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_hidinput_reset_resume_622 = internal global ptr @hidinput_reset_resume, section ".discard.addressable", align 8
@.str = private unnamed_addr constant [9 x i8] c"Keyboard\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Keypad\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Stylus\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Pen\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Touchscreen\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Touchpad\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"System Control\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Consumer Control\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Wireless Radio Control\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"System Multi Axis\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Out of memory during hid input probe\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@.str.15 = private unnamed_addr constant [23 x i8] c"event field not found\0A\00", align 1
@system_percpu_wq = external dso_local local_unnamed_addr global ptr, align 8
@hid_keyboard = internal unnamed_addr constant [256 x i8] c"\00\00\00\00\1E0. \12!\22#\17$%&21\18\19\10\13\1F\14\16/\11-\15,\02\03\04\05\06\07\08\09\0A\0B\1C\01\0E\0F9\0C\0D\1A\1B++'()345:;<=>?@ABCDWXcFwnfhokmjilgEb7JN`OPQKLMGHIRSV\7Ftu\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\86\8A\82\84\80\81\83\89\85\87\88qsr\F0\F0\F0y\F0Y]|\\^_\F0\F0\F0z{Z[U\F0\F0\F0\F0\F0\F0\F0o\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\B3\B4\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0o\F0\F0\F0\F0\F0\F0\F0\1D*8}a6d~\A4\A6\A5\A3\A1srq\96\9E\9F\80\88\B1\B2\B0\8E\98\AD\8C\F0\F0\F0\F0", align 16
@hidinput_usages_priorities = internal unnamed_addr constant [5 x { i32, i8, [3 x i8], i32 }] [{ i32, i8, [3 x i8], i32 } { i32 852037, i8 0, [3 x i8] zeroinitializer, i32 0 }, { i32, i8, [3 x i8], i32 } { i32 852028, i8 0, [3 x i8] zeroinitializer, i32 0 }, { i32, i8, [3 x i8], i32 } { i32 852034, i8 0, [3 x i8] zeroinitializer, i32 0 }, { i32, i8, [3 x i8], i32 } { i32 852016, i8 0, [3 x i8] zeroinitializer, i32 0 }, { i32, i8, [3 x i8], i32 } { i32 852018, i8 0, [3 x i8] zeroinitializer, i32 0 }], align 16
@hid_map_usage._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, i32 0, i64 0 }, align 8
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"\014%s: Invalid code %d type %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_addressable_hidinput_calc_abs_res_611, ptr @__UNIQUE_ID_addressable_hidinput_connect_620, ptr @__UNIQUE_ID_addressable_hidinput_count_leds_619, ptr @__UNIQUE_ID_addressable_hidinput_disconnect_621, ptr @__UNIQUE_ID_addressable_hidinput_get_led_field_618, ptr @__UNIQUE_ID_addressable_hidinput_report_event_617, ptr @__UNIQUE_ID_addressable_hidinput_reset_resume_622], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define dso_local i32 @hidinput_calc_abs_res(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr i8, ptr %0, i64 76
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr i8, ptr %0, i64 72
  %i.f = load i32, ptr %i.e, align 8
  %i.g = sub i32 %i.d, %i.f                       ; 8 uses
  %i.h = getelementptr i8, ptr %0, i64 84
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr i8, ptr %0, i64 80
  %i.k = load i32, ptr %i.j, align 8
  %i.l = sub i32 %i.i, %i.k                       ; 9 uses
  %i.m = icmp slt i32 %i.g, 1
  %i.n = icmp slt i32 %i.l, 1
  %or.cond = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i16 %1, label %.loopexit [
    i16 0, label %bb.c
    i16 1, label %bb.c
    i16 2, label %bb.c
    i16 53, label %bb.c
    i16 54, label %bb.c
    i16 60, label %bb.c
    i16 61, label %bb.c
    i16 48, label %bb.c
    i16 49, label %bb.c
    i16 3, label %bb.g
    i16 4, label %bb.g
    i16 5, label %bb.g
    i16 8, label %bb.g
    i16 26, label %bb.g
    i16 27, label %bb.g
    i16 24, label %bb.j
    i16 58, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.o = getelementptr i8, ptr %0, i64 92
  %i.p = load i32, ptr %i.o, align 4
  switch i32 %i.p, label %.loopexit [
    i32 17, label %bb.d
    i32 19, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.q = add i32 %i.b, 1
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.r = mul i32 %i.l, 254                        ; 2 uses
  %i.s = icmp slt i32 %i.r, %i.l
  br i1 %i.s, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add i32 %i.b, -1
  br label %bb.m

bb.g:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.u = getelementptr i8, ptr %0, i64 92
  %i.v = load i32, ptr %i.u, align 4
  switch i32 %i.v, label %.loopexit [
    i32 20, label %bb.h
    i32 18, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.w = mul i32 %i.g, 573                        ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.g
  br i1 %i.x, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add i32 %i.b, 1
  br label %bb.m

bb.j:                                             ; preds = %bb.b, %bb.b
  %i.z = getelementptr i8, ptr %0, i64 92
  %i.aa = load i32, ptr %i.z, align 4
  switch i32 %i.aa, label %.loopexit [
    i32 57617, label %bb.k
    i32 257, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.ab = mul i32 %i.l, 10197                     ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.l
  br i1 %i.ac, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = add i32 %i.b, -2
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.g, %bb.l, %bb.i, %bb.d, %bb.f
  %.057 = phi i32 [ %i.q, %bb.d ], [ %i.t, %bb.f ], [ %i.y, %bb.i ], [ %i.b, %bb.g ], [ %i.ad, %bb.l ], [ %i.b, %bb.j ] ; 4 uses
  %.055 = phi i32 [ %i.g, %bb.d ], [ %i.g, %bb.f ], [ %i.w, %bb.i ], [ %i.g, %bb.g ], [ %i.g, %bb.l ], [ %i.g, %bb.j ] ; 3 uses
  %.054 = phi i32 [ %i.l, %bb.d ], [ %i.r, %bb.f ], [ %i.l, %bb.i ], [ %i.l, %bb.g ], [ %i.ab, %bb.l ], [ %i.l, %bb.j ] ; 3 uses
  %i.ae = icmp slt i32 %.057, 0
  br i1 %i.ae, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.m
  %.not = icmp eq i32 %.057, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph79

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %.15675 = phi i32 [ %i.af, %bb.n ], [ %.055, %bb.m ] ; 2 uses
  %.15874 = phi i32 [ %i.ah, %bb.n ], [ %.057, %bb.m ]
  %i.af = mul i32 %.15675, 10                     ; 3 uses
  %i.ag = icmp slt i32 %i.af, %.15675
  br i1 %i.ag, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.ah = add nsw i32 %.15874, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, 0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26

bb.o:                                             ; preds = %.lr.ph79
  %i.ai = add nsw i32 %.277, -1
  %i.aj = icmp sgt i32 %.277, 1
  br i1 %i.aj, label %.lr.ph79, label %._crit_edge, !llvm.loop !27

.lr.ph79:                                         ; preds = %.preheader, %bb.o
  %.178 = phi i32 [ %i.ak, %bb.o ], [ %.054, %.preheader ] ; 2 uses
  %.277 = phi i32 [ %i.ai, %bb.o ], [ %.057, %.preheader ] ; 2 uses
  %i.ak = mul i32 %.178, 10                       ; 3 uses
  %i.al = icmp slt i32 %i.ak, %.178
  br i1 %i.al, label %.loopexit, label %bb.o

._crit_edge:                                      ; preds = %bb.o, %bb.n, %.preheader
  %.156.lcssa96 = phi i32 [ %.055, %.preheader ], [ %i.af, %bb.n ], [ %.055, %bb.o ]
  %.1.lcssa = phi i32 [ %.054, %.preheader ], [ %.054, %bb.n ], [ %i.ak, %bb.o ] ; 2 uses
  %i.am = lshr i32 %.1.lcssa, 1
  %i.an = add nuw i32 %i.am, %.156.lcssa96
  %i.ao = sdiv i32 %i.an, %.1.lcssa
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph79, %.lr.ph, %bb.b, %bb.j, %bb.k, %bb.g, %bb.h, %bb.c, %bb.e, %bb.a, %._crit_edge
  %.0 = phi i32 [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.b ], [ 0, %.lr.ph ], [ %i.ao, %._crit_edge ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %.lr.ph79 ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @hidinput_hid_event(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 14 uses
  %i.c = getelementptr i8, ptr %0, i64 7172       ; 3 uses
  %i.d = getelementptr i8, ptr %2, i64 16         ; 6 uses
  %i.e = load i8, ptr %i.d, align 4               ; 2 uses
  switch i8 %i.e, label %bb.b [
    i8 0, label %.loopexit
    i8 22, label %.loopexit
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 120
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not190 = icmp eq ptr %i.g, null
  br i1 %.not190, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 20 uses
  %i.j = getelementptr i8, ptr %2, i64 18
  %i.k = load i16, ptr %i.j, align 2              ; 2 uses
  %i.l = getelementptr i8, ptr %2, i64 20
  %i.m = load i16, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp slt i16 %i.k, %i.m
  %.phi.trans.insert = getelementptr i8, ptr %2, i64 22
  %.pre = load i16, ptr %.phi.trans.insert, align 2 ; 4 uses
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not191 = icmp eq i16 %.pre, 0
  br i1 %.not191, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.d
  %i.o = sext i16 %.pre to i32
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.p = sext i16 %.pre to i32
  %.not208 = icmp eq i16 %.pre, 0
  br i1 %.not208, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@hidinput_locate_usage:bb.a
  %.not60.i18 = icmp eq i32 %i.bb, 0
  br i1 %.not60.i18, label %._crit_edge.i27, label %.lr.ph.i19.preheader

.lr.ph.i19.preheader:                             ; preds = %.preheader.i15
  %i.bc = getelementptr i8, ptr %i.az, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = zext i32 %i.bb to i64
  br label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.lr.ph.i19.preheader, %bb.m
  %indvars.iv.i20 = phi i64 [ %indvars.iv.next.i24, %bb.m ], [ 0, %.lr.ph.i19.preheader ] ; 2 uses
  %.346.i21 = phi i32 [ %.4.i23, %bb.m ], [ %.248.i17, %.lr.ph.i19.preheader ] ; 3 uses
  %i.bf = getelementptr [28 x i8], ptr %i.bd, i64 %indvars.iv.i20 ; 3 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  %i.bh = load i8, ptr %i.bg, align 4
  %switch.i22 = icmp ult i8 %i.bh, 2
  br i1 %switch.i22, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.lr.ph.i19
  %i.bi = load i32, ptr %i.bf, align 4
  %i.bj = icmp eq i32 %i.bi, %i.as
  br i1 %i.bj, label %.loopexit70.i64, label %bb.l

.loopexit70.i64:                                  ; preds = %bb.k, %bb.n
  %.346.lcssa.i65 = phi i32 [ %.346.1.i49, %bb.n ], [ %.346.i21, %bb.k ]
  %.lcssa.i66 = phi ptr [ %i.by, %bb.n ], [ %i.bf, %bb.k ] ; 2 uses
  %.not40.i67 = icmp eq ptr %2, null
  br i1 %.not40.i67, label %hidinput_find_key.exit, label %hidinput_find_key.exit.sink.split

bb.l:                                             ; preds = %bb.k
  %i.bk = add i32 %.346.i21, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i19
  %.4.i23 = phi i32 [ %i.bk, %bb.l ], [ %.346.i21, %.lr.ph.i19 ] ; 2 uses
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i20, 1 ; 2 uses
  %i.bl = icmp samesign ult i64 %indvars.iv.next.i24, %i.be
  br i1 %i.bl, label %.lr.ph.i19, label %._crit_edge.i27, !llvm.loop !5

._crit_edge.i27:                                  ; preds = %bb.m, %.preheader.i15
  %.3.lcssa.i28 = phi i32 [ %.248.i17, %.preheader.i15 ], [ %.4.i23, %bb.m ] ; 2 uses
  %indvars.iv.next65.i29 = add nuw nsw i64 %indvars.iv64.i16, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next65.i29, %i.ax
  br i1 %exitcond99.not, label %.loopexit.i30, label %.preheader.i15, !llvm.loop !6

._crit_edge55.i34:                                ; preds = %.loopexit.i30, %bb.j
  %.1.lcssa.i35 = phi i32 [ 0, %bb.j ], [ %.2.lcssa.i31, %.loopexit.i30 ]
  %i.bm = getelementptr i8, ptr %0, i64 2160      ; 3 uses
  %.03651.1.i36 = load ptr, ptr %i.bm, align 8    ; 2 uses
  %.not52.1.i37 = icmp eq ptr %.03651.1.i36, %i.bm
  br i1 %.not52.1.i37, label %hidinput_find_key.exit, label %.preheader41.1.i38

.preheader41.1.i38:                               ; preds = %._crit_edge55.i34, %.loopexit.1.i58
  %.03654.1.i39 = phi ptr [ %.036.1.i60, %.loopexit.1.i58 ], [ %.03651.1.i36, %._crit_edge55.i34 ] ; 3 uses
  %.153.1.i40 = phi i32 [ %.2.lcssa.1.i59, %.loopexit.1.i58 ], [ %.1.lcssa.i35, %._crit_edge55.i34 ] ; 2 uses
  %i.bn = getelementptr i8, ptr %.03654.1.i39, i64 2120
  %i.bo = load i32, ptr %i.bn, align 8            ; 2 uses
  %.not59.1.i41 = icmp eq i32 %i.bo, 0
  br i1 %.not59.1.i41, label %.loopexit.1.i58, label %.preheader.lr.ph.1.i42

.preheader.lr.ph.1.i42:                           ; preds = %.preheader41.1.i38
  %i.bp = getelementptr i8, ptr %.03654.1.i39, i64 64
  %i.bq = zext i32 %i.bo to i64
  br label %.preheader.1.i43

.preheader.1.i43:                                 ; preds = %._crit_edge.1.i55, %.preheader.lr.ph.1.i42
  %indvars.iv64.1.i44 = phi i64 [ 0, %.preheader.lr.ph.1.i42 ], [ %indvars.iv.next65.1.i57, %._crit_edge.1.i55 ] ; 2 uses
  %.248.1.i45 = phi i32 [ %.153.1.i40, %.preheader.lr.ph.1.i42 ], [ %.3.lcssa.1.i56, %._crit_edge.1.i55 ] ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %i.bp, i64 %indvars.iv64.1.i44
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 24
  %i.bu = load i32, ptr %i.bt, align 8            ; 2 uses
  %.not60.1.i46 = icmp eq i32 %i.bu, 0
  br i1 %.not60.1.i46, label %._crit_edge.1.i55, label %.lr.ph.1.i47.preheader

.lr.ph.1.i47.preheader:                           ; preds = %.preheader.1.i43
  %i.bv = getelementptr i8, ptr %i.bs, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = zext i32 %i.bu to i64
  br label %.lr.ph.1.i47

.lr.ph.1.i47:                                     ; preds = %.lr.ph.1.i47.preheader, %bb.p
  %indvars.iv.1.i48 = phi i64 [ %indvars.iv.next.1.i52, %bb.p ], [ 0, %.lr.ph.1.i47.preheader ] ; 2 uses
  %.346.1.i49 = phi i32 [ %.4.1.i51, %bb.p ], [ %.248.1.i45, %.lr.ph.1.i47.preheader ] ; 3 uses
  %i.by = getelementptr [28 x i8], ptr %i.bw, i64 %indvars.iv.1.i48 ; 3 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 16
  %i.ca = load i8, ptr %i.bz, align 4
  %switch.1.i50 = icmp ult i8 %i.ca, 2
  br i1 %switch.1.i50, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.lr.ph.1.i47
  %i.cb = load i32, ptr %i.by, align 4
  %i.cc = icmp eq i32 %i.cb, %i.as
  br i1 %i.cc, label %.loopexit70.i64, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = add i32 %.346.1.i49, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.1.i47
  %.4.1.i51 = phi i32 [ %i.cd, %bb.o ], [ %.346.1.i49, %.lr.ph.1.i47 ] ; 2 uses
  %indvars.iv.next.1.i52 = add nuw nsw i64 %indvars.iv.1.i48, 1 ; 2 uses
  %i.ce = icmp samesign ult i64 %indvars.iv.next.1.i52, %i.bx
  br i1 %i.ce, label %.lr.ph.1.i47, label %._crit_edge.1.i55, !llvm.loop !5

._crit_edge.1.i55:                                ; preds = %bb.p, %.preheader.1.i43
  %.3.lcssa.1.i56 = phi i32 [ %.248.1.i45, %.preheader.1.i43 ], [ %.4.1.i51, %bb.p ] ; 2 uses
  %indvars.iv.next65.1.i57 = add nuw nsw i64 %indvars.iv64.1.i44, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next65.1.i57, %i.bq
  br i1 %exitcond100.not, label %.loopexit.1.i58, label %.preheader.1.i43, !llvm.loop !6

.loopexit.1.i58:                                  ; preds = %._crit_edge.1.i55, %.preheader41.1.i38
  %.2.lcssa.1.i59 = phi i32 [ %.153.1.i40, %.preheader41.1.i38 ], [ %.3.lcssa.1.i56, %._crit_edge.1.i55 ]
  %.036.1.i60 = load ptr, ptr %.03654.1.i39, align 8 ; 2 uses
  %.not.1.i61 = icmp eq ptr %.036.1.i60, %i.bm
  br i1 %.not.1.i61, label %hidinput_find_key.exit, label %.preheader41.1.i38, !llvm.loop !4

hidinput_find_key.exit.sink.split:                ; preds = %.loopexit70.i64, %.loopexit70.i
  %.346.lcssa.i65.sink = phi i32 [ %i.f, %.loopexit70.i ], [ %.346.lcssa.i65, %.loopexit70.i64 ]
  %.0.ph = phi ptr [ %.lcssa.i, %.loopexit70.i ], [ %.lcssa.i66, %.loopexit70.i64 ]
  store i32 %.346.lcssa.i65.sink, ptr %2, align 4
  br label %hidinput_find_key.exit

hidinput_find_key.exit:                           ; preds = %.loopexit.1.i, %.loopexit.1.i58, %hidinput_find_key.exit.sink.split, %._crit_edge55.i34, %.loopexit70.i64, %._crit_edge55.i, %.loopexit70.i, %bb.i
  %.0 = phi ptr [ null, %bb.i ], [ %.0.ph, %hidinput_find_key.exit.sink.split ], [ %.lcssa.i, %.loopexit70.i ], [ null, %._crit_edge55.i34 ], [ null, %._crit_edge55.i ], [ %.lcssa.i66, %.loopexit70.i64 ], [ null, %.loopexit.1.i58 ], [ null, %.loopexit.1.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @input_scancode_to_scalar(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @hidinput_configure_usage(ptr noundef nonnull %0, ptr noundef initializes((120, 128)) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 287 uses
  %i.b = alloca ptr, align 8                      ; 285 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 273 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 24 uses
  %i.e = getelementptr i8, ptr %i.d, i64 656
  %.val = load ptr, ptr %i.e, align 8             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8
  %i.f = getelementptr i8, ptr %1, i64 120
  store ptr %0, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %1, i64 28         ; 9 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 1
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %.critedge.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %1, i64 40
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %1, i64 44
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, 1
  %.pre = load i32, ptr %2, align 4               ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = and i32 %.pre, -65536
  switch i32 %i.p, label %.critedge.thread [
    i32 524288, label %bb.e
    i32 917504, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.c
  switch i32 %.pre, label %.thread.loopexit [
    i32 852037, label %bb.f
    i32 852028, label %.fold.split
    i32 852034, label %.fold.split1206
    i32 852016, label %.fold.split1207
    i32 852018, label %.fold.split1208
  ]

.thread.loopexit:                                 ; preds = %bb.e
  %.pre1169.a = zext i32 %3 to i64
  br label %.thread

.fold.split:                                      ; preds = %bb.e
  br label %bb.f

.fold.split1206:                                  ; preds = %bb.e
  br label %bb.f

.fold.split1207:                                  ; preds = %bb.e
  br label %bb.f

.fold.split1208:                                  ; preds = %bb.e
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.fold.split1208, %.fold.split1207, %.fold.split1206, %.fold.split
  %.08051156.lcssa.wide.neg = phi i32 [ 1280, %bb.e ], [ 512, %.fold.split1207 ], [ 1024, %.fold.split ], [ 768, %.fold.split1206 ], [ 256, %.fold.split1208 ]
  %.lcssa1164 = phi ptr [ @hidinput_usages_priorities, %bb.e ], [ getelementptr inbounds nuw (i8, ptr @hidinput_usages_priorities, i64 36), %.fold.split1207 ], [ getelementptr inbounds nuw (i8, ptr @hidinput_usages_priorities, i64 12), %.fold.split ], [ getelementptr inbounds nuw (i8, ptr @hidinput_usages_priorities, i64 24), %.fold.split1206 ], [ getelementptr inbounds nuw (i8, ptr @hidinput_usages_priorities, i64 48), %.fold.split1208 ] ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 64         ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = zext i32 %3 to i64                       ; 3 uses
  %i.t = getelementptr [4 x i8], ptr %i.r, i64 %i.s
  store i32 %.08051156.lcssa.wide.neg, ptr %i.t, align 4
  %4 = getelementptr i8, ptr %.lcssa1164, i64 4
  %5 = load i8, ptr %4, align 4, !range !18, !noundef !19
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %7, label %.thread

7:                                                ; preds = %bb.f
  %8 = getelementptr i8, ptr %.lcssa1164, i64 8
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %i.q, align 8
  %11 = getelementptr [4 x i8], ptr %10, i64 %i.s ; 2 uses
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, ptr %11, align 4
  br label %14

.thread:                                          ; preds = %.thread.loopexit, %bb.f
  %.pre-phi = phi i64 [ %i.s, %bb.f ], [ %.pre1169.a, %.thread.loopexit ]
  %i.u = getelementptr i8, ptr %1, i64 132
  %i.v = load i32, ptr %i.u, align 4
  %i.w = shl i32 %i.v, 16
  %i.x = sub i32 16711680, %i.w
  %i.y = getelementptr i8, ptr %1, i64 64
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr [4 x i8], ptr %i.z, i64 %.pre-phi ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = or i32 %i.ab, %i.x
  store i32 %i.ac, ptr %i.aa, align 4
  br label %14

14:                                               ; preds = %.thread, %7
  %15 = getelementptr i8, ptr %.val, i64 7104     ; 2 uses
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %16, i64 112
  %18 = load ptr, ptr %17, align 8                ; 2 uses
  %.not828 = icmp eq ptr %18, null
  br i1 %.not828, label %bb.h, label %bb.g

bb.g:                                             ; preds = %14
  %i.ad = call i32 %18(ptr noundef %.val, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #12 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = lshr i32 %i.ad, 30
  %. = and i32 %i.af, 2
  %.0804 = select i1 %i.ae, i32 6, i32 %.
  switch i32 %.0804, label %.unreachabledefault [
    i32 0, label %bb.h
    i32 6, label %bb.mk
    i32 2, label %.critedge.thread
  ]

bb.h:                                             ; preds = %bb.g, %14
  %i.ag = load i32, ptr %2, align 4               ; 19 uses
  %i.ah = and i32 %i.ag, -65536
  switch i32 %i.ah, label %bb.md [
    i32 0, label %.critedge.thread
    i32 458752, label %bb.i
    i32 589824, label %bb.m
    i32 131072, label %bb.ad
    i32 65536, label %bb.aj
    i32 524288, label %bb.cj
    i32 851968, label %bb.cv
    i32 720896, label %bb.du
    i32 786432, label %bb.em
    i32 393216, label %bb.lb
    i32 8716288, label %bb.ld
    i32 9437184, label %bb.lg
    i32 -8454144, label %bb.lj
    i32 -16711680, label %bb.lw
    i32 -16777216, label %.critedge.thread
    i32 16711680, label %bb.ma
    i32 -4456448, label %.critedge.thread
    i32 -16187392, label %.critedge.thread
    i32 -12386304, label %.critedge.thread
    i32 983040, label %bb.mb
  ]

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr i8, ptr %i.d, i64 42      ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ai, i32 16, ptr elementtype(i8) %i.ai) #14, !srcloc !72
  %i.aj = load i32, ptr %2, align 4
  %i.ak = and i32 %i.aj, 65535                    ; 3 uses
  %i.al = icmp samesign ult i32 %i.ak, 256
  br i1 %i.al, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.not842 = icmp samesign ult i32 %i.ak, 4
  br i1 %.not842, label %.critedge.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = getelementptr i8, ptr @hid_keyboard, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i16
  %.val1135 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage_clear(ptr %.val1135, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 1, i16 noundef zeroext %i.ap) #13
  br label %bb.mk

bb.l:                                             ; preds = %bb.i
  %.val895 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage(ptr %.val895, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 1, i32 noundef 240) #13
  br label %bb.mk

bb.m:                                             ; preds = %bb.h
  %i.aq = add i32 %i.ag, 65535
  %i.ar = and i32 %i.aq, 65535                    ; 14 uses
  %i.as = getelementptr i8, ptr %1, i64 8
  %i.at = load i32, ptr %i.as, align 8
  switch i32 %i.at, label %hidinput_field_in_collection.exit.thread [
    i32 65538, label %bb.n
    i32 65537, label %bb.n
    i32 65540, label %bb.o
    i32 65541, label %bb.r
    i32 786433, label %bb.u
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.au = add nuw nsw i32 %i.ar, 272
  br label %bb.ac

bb.o:                                             ; preds = %bb.m
  %i.av = icmp samesign ult i32 %i.ar, 16
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aw = or disjoint i32 %i.ar, 288
  br label %bb.ac

bb.q:                                             ; preds = %bb.o
  %i.ax = add nuw nsw i32 %i.ar, 688
  br label %bb.ac

bb.r:                                             ; preds = %bb.m
  %i.ay = icmp samesign ult i32 %i.ar, 16
  br i1 %i.ay, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.az = or disjoint i32 %i.ar, 304
  br label %bb.ac

bb.t:                                             ; preds = %bb.r
  %i.ba = add nuw nsw i32 %i.ar, 688
  br label %bb.ac

bb.u:                                             ; preds = %bb.m
  %i.bb = getelementptr i8, ptr %.val, i64 40
  %.val1136 = load ptr, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %1, i64 16
  %.val1137 = load ptr, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %.val1137, i64 4
  %.val1137.val = load i32, ptr %i.bd, align 4
  %i.be = zext i32 %.val1137.val to i64
  %i.bf = getelementptr [16 x i8], ptr %.val1136, i64 %i.be ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = icmp eq i32 %i.bh, 4
  br i1 %i.bi, label %hidinput_field_in_collection.exit, label %hidinput_field_in_collection.exit.thread

hidinput_field_in_collection.exit:                ; preds = %bb.u
  %i.bj = getelementptr i8, ptr %i.bf, i64 8
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = icmp eq i32 %i.bk, 786435
  br i1 %i.bl, label %bb.v, label %hidinput_field_in_collection.exit.thread

bb.v:                                             ; preds = %hidinput_field_in_collection.exit
  %i.bm = icmp samesign ult i32 %i.ar, 30
  br i1 %i.bm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bn = add nuw nsw i32 %i.ar, 656
  br label %bb.ac

bb.x:                                             ; preds = %bb.v
  %i.bo = add nuw nsw i32 %i.ar, 674
  br label %bb.ac

hidinput_field_in_collection.exit.thread:         ; preds = %bb.u, %hidinput_field_in_collection.exit, %bb.m
  %i.bp = load i32, ptr %1, align 8
  switch i32 %i.bp, label %bb.ab [
    i32 65538, label %bb.y
    i32 65537, label %bb.y
    i32 65540, label %bb.z
    i32 65541, label %bb.aa
  ]

bb.y:                                             ; preds = %hidinput_field_in_collection.exit.thread, %hidinput_field_in_collection.exit.thread
  %i.bq = add nuw nsw i32 %i.ar, 272
  br label %bb.ac

bb.z:                                             ; preds = %hidinput_field_in_collection.exit.thread
  %i.br = add nuw nsw i32 %i.ar, 288
  br label %bb.ac

bb.aa:                                            ; preds = %hidinput_field_in_collection.exit.thread
  %i.bs = add nuw nsw i32 %i.ar, 304
  br label %bb.ac

bb.ab:                                            ; preds = %hidinput_field_in_collection.exit.thread
  %i.bt = add nuw nsw i32 %i.ar, 256
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.w, %bb.x, %bb.s, %bb.t, %bb.p, %bb.q, %bb.n
  %.0806 = phi i32 [ %i.bt, %bb.ab ], [ %i.bq, %bb.y ], [ %i.br, %bb.z ], [ %i.bs, %bb.aa ], [ %i.au, %bb.n ], [ %i.aw, %bb.p ], [ %i.ax, %bb.q ], [ %i.az, %bb.s ], [ %i.ba, %bb.t ], [ %i.bn, %bb.w ], [ %i.bo, %bb.x ]
  %.val894 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage(ptr %.val894, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 1, i32 noundef %.0806) #13
  br label %bb.mk

bb.ad:                                            ; preds = %bb.h
  %trunc841 = trunc i32 %i.ag to i16
  switch i16 %trunc841, label %.critedge.thread [
    i16 186, label %bb.ae
    i16 187, label %bb.af
    i16 196, label %bb.ag
    i16 197, label %bb.ah
    i16 200, label %bb.ai
  ]

bb.ae:                                            ; preds = %bb.ad
  %.val893 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage(ptr %.val893, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 3, i32 noundef 7) #13
  br label %bb.mk

bb.af:                                            ; preds = %bb.ad
  %.val892 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage(ptr %.val892, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 3, i32 noundef 6) #13
  br label %bb.mk

bb.ag:                                            ; preds = %bb.ad
  %.val891 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage(ptr %.val891, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 3, i32 noundef 9) #13
  br label %bb.mk

bb.ah:                                            ; preds = %bb.ad
  %.val890 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage(ptr %.val890, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 3, i32 noundef 10) #13
  br label %bb.mk

bb.ai:                                            ; preds = %bb.ad
  %.val889 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage(ptr %.val889, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 3, i32 noundef 8) #13
  br label %bb.mk

bb.aj:                                            ; preds = %bb.h
  %i.bu = lshr i32 %i.ag, 4
  %i.bv = and i32 %i.bu, 15
  switch i32 %i.bv, label %bb.bm [
    i32 8, label %bb.ak
    i32 9, label %bb.ba
    i32 10, label %bb.bh
    i32 11, label %bb.bk
  ]

end_hunk_1
begin_hunk_2_@hidinput_configure_usage:bb.a
  br label %thread-pre-split1145.thread

bb.ld:                                            ; preds = %bb.h
  switch i32 %i.ag, label %bb.md [
    i32 8716389, label %bb.le
    i32 8716356, label %bb.lf
  ]

bb.le:                                            ; preds = %bb.ld
  %i.et = getelementptr i8, ptr %2, i64 16
  store i8 22, ptr %i.et, align 4
  br label %thread-pre-split1145.thread

bb.lf:                                            ; preds = %bb.ld
  %i.eu = getelementptr i8, ptr %2, i64 16
  store i8 22, ptr %i.eu, align 4
  br label %thread-pre-split1145.thread

bb.lg:                                            ; preds = %bb.h
  %trunc830 = trunc i32 %i.ag to i16
  switch i16 %trunc830, label %.critedge.thread [
    i16 32, label %bb.lh
    i16 33, label %bb.li
  ]

bb.lh:                                            ; preds = %bb.lg
  %.val913 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage_clear(ptr %.val913, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 1, i16 noundef zeroext 528) #13
  br label %bb.mk

bb.li:                                            ; preds = %bb.lg
  %.val912 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage_clear(ptr %.val912, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 1, i16 noundef zeroext 212) #13
  br label %bb.mk

bb.lj:                                            ; preds = %bb.h
  %i.ev = getelementptr i8, ptr %i.d, i64 42      ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ev, i32 16, ptr elementtype(i8) %i.ev) #14, !srcloc !72
  %i.ew = load i32, ptr %2, align 4
  %trunc829 = trunc i32 %i.ew to i16
  switch i16 %trunc829, label %.critedge.thread [
    i16 33, label %bb.lk
    i16 112, label %bb.ll
    i16 113, label %bb.lm
    i16 114, label %bb.ln
    i16 115, label %bb.lo
    i16 128, label %bb.lp
    i16 129, label %bb.lq
    i16 130, label %bb.lr
    i16 131, label %bb.ls
    i16 132, label %bb.lt
    i16 133, label %bb.lu
    i16 134, label %bb.lv
  ]

bb.lk:                                            ; preds = %bb.lj
  %.val911 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage_clear(ptr %.val911, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 1, i16 noundef zeroext 210) #13
  br label %bb.mk

bb.ll:                                            ; preds = %bb.lj
  %.val910 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage_clear(ptr %.val910, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 1, i16 noundef zeroext 211) #13
  br label %bb.mk

bb.lm:                                            ; preds = %bb.lj
  %.val909 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage_clear(ptr %.val909, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 1, i16 noundef zeroext 212) #13
  br label %bb.mk

bb.ln:                                            ; preds = %bb.lj
  %.val908 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage_clear(ptr %.val908, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 1, i16 noundef zeroext 213) #13
  br label %bb.mk

bb.lo:                                            ; preds = %bb.lj
  %.val907 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage_clear(ptr %.val907, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 1, i16 noundef zeroext 214) #13
  br label %bb.mk

bb.lp:                                            ; preds = %bb.lj
  %.val906 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage_clear(ptr %.val906, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 1, i16 noundef zeroext 215) #13
  br label %bb.mk

bb.lq:                                            ; preds = %bb.lj
  %.val905 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage_clear(ptr %.val905, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 1, i16 noundef zeroext 216) #13
  br label %bb.mk

bb.lr:                                            ; preds = %bb.lj
  %.val904 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage_clear(ptr %.val904, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 1, i16 noundef zeroext 217) #13
  br label %bb.mk

bb.ls:                                            ; preds = %bb.lj
  %.val903 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage_clear(ptr %.val903, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 1, i16 noundef zeroext 218) #13
  br label %bb.mk

bb.lt:                                            ; preds = %bb.lj
  %.val902 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage_clear(ptr %.val902, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 1, i16 noundef zeroext 219) #13
  br label %bb.mk

bb.lu:                                            ; preds = %bb.lj
  %.val901 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage_clear(ptr %.val901, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 1, i16 noundef zeroext 220) #13
  br label %bb.mk

bb.lv:                                            ; preds = %bb.lj
  %.val900 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage_clear(ptr %.val900, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 1, i16 noundef zeroext 221) #13
  br label %bb.mk

bb.lw:                                            ; preds = %bb.h
  %i.ex = getelementptr i8, ptr %i.d, i64 42      ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ex, i32 16, ptr elementtype(i8) %i.ex) #14, !srcloc !72
  %i.ey = load i32, ptr %2, align 4
  %trunc = trunc i32 %i.ey to i16
  switch i16 %trunc, label %.critedge.thread [
    i16 1, label %bb.lx
    i16 3, label %bb.ly
    i16 4, label %bb.lz
  ]

bb.lx:                                            ; preds = %bb.lw
  %.val899 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage_clear(ptr %.val899, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 1, i16 noundef zeroext 248) #13
  br label %bb.mk

bb.ly:                                            ; preds = %bb.lw
  %.val898 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage_clear(ptr %.val898, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 1, i16 noundef zeroext 224) #13
  br label %bb.mk

bb.lz:                                            ; preds = %bb.lw
  %.val897 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage_clear(ptr %.val897, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 1, i16 noundef zeroext 225) #13
  br label %bb.mk

bb.ma:                                            ; preds = %bb.h
  %i.ez = getelementptr i8, ptr %i.d, i64 42      ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ez, i32 16, ptr elementtype(i8) %i.ez) #14, !srcloc !72
  br label %.critedge.thread

bb.mb:                                            ; preds = %bb.h
  %i.fa = and i32 %i.ag, 65535
  %cond = icmp eq i32 %i.fa, 164
  br i1 %cond, label %bb.mc, label %.critedge.thread

bb.mc:                                            ; preds = %bb.mb
  %.val896 = load ptr, ptr %i.c, align 8
  call fastcc void @hid_map_usage_clear(ptr %.val896, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 1, i16 noundef zeroext 303) #13
  br label %bb.mk

bb.md:                                            ; preds = %bb.h, %bb.ld, %bb.lb, %bb.cy, %bb.bn, %bb.ch, %bb.ba, %bb.ak
  %i.fb = getelementptr i8, ptr %1, i64 36
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = icmp eq i32 %i.fc, 1
  br i1 %i.fd, label %bb.me, label %bb.mh

bb.me:                                            ; preds = %bb.md
  %i.fe = getelementptr i8, ptr %1, i64 104
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = getelementptr i8, ptr %i.ff, i64 52
  %i.fh = load i32, ptr %i.fg, align 4
  %i.fi = icmp eq i32 %i.fh, 1
  %.val863 = load ptr, ptr %i.c, align 8          ; 2 uses
  br i1 %i.fi, label %bb.mf, label %bb.mg

bb.mf:                                            ; preds = %bb.me
  call fastcc void @hid_map_usage(ptr %.val863, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 17, i32 noundef 8) #13
  br label %bb.mk

bb.mg:                                            ; preds = %bb.me
  call fastcc void @hid_map_usage(ptr %.val863, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 1, i32 noundef 256) #13
  br label %bb.mk

bb.mh:                                            ; preds = %bb.md
  %i.fj = load i32, ptr %i.g, align 4
  %i.fk = and i32 %i.fj, 4
  %.not843 = icmp eq i32 %i.fk, 0
  %.val860 = load ptr, ptr %i.c, align 8          ; 2 uses
  br i1 %.not843, label %bb.mj, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  call fastcc void @hid_map_usage(ptr %.val860, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 2, i32 noundef 9) #13
  br label %bb.mk

bb.mj:                                            ; preds = %bb.mh
  call fastcc void @hid_map_usage(ptr %.val860, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 3, i32 noundef 40) #13
  br label %bb.mk

bb.mk:                                            ; preds = %bb.ac, %bb.bl, %bb.mc, %bb.mf, %bb.mg, %bb.mi, %bb.mj, %bb.l, %bb.k, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.bg, %bb.be, %bb.bj, %bb.bi, %bb.cc, %bb.cd, %bb.bz, %bb.ca, %bb.bs, %bb.bx, %bb.bw, %bb.bp, %bb.bq, %bb.ci, %bb.cg, %bb.cf, %bb.ce, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.dd, %bb.de, %bb.dg, %bb.dh, %bb.di, %bb.dt, %bb.ds, %bb.dr, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.db, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.la, %bb.kz, %bb.ky, %bb.kx, %bb.kw, %bb.kv, %bb.ku, %bb.kt, %bb.ks, %bb.kr, %bb.kq, %bb.kp, %bb.ko, %bb.kn, %bb.km, %bb.kl, %bb.kk, %bb.kj, %bb.ki, %bb.kh, %bb.kg, %bb.kf, %bb.ke, %bb.kd, %bb.kc, %bb.kb, %bb.ka, %bb.jz, %bb.jy, %bb.jx, %bb.jw, %bb.jv, %bb.ju, %bb.jt, %bb.js, %bb.jr, %bb.jq, %bb.jp, %bb.jo, %bb.jn, %bb.jm, %bb.jl, %bb.jk, %bb.jj, %bb.ji, %bb.jh, %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.jc, %bb.jb, %bb.ja, %bb.iz, %bb.iy, %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.ir, %bb.iq, %bb.ip, %bb.io, %bb.in, %bb.im, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.if, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.li, %bb.lh, %bb.lv, %bb.lu, %bb.lt, %bb.ls, %bb.lr, %bb.lq, %bb.lp, %bb.lo, %bb.ln, %bb.lm, %bb.ll, %bb.lk, %bb.lz, %bb.ly, %bb.lx, %bb.g
  %i.fl = load ptr, ptr %i.b, align 8
  %.not844 = icmp eq ptr %i.fl, null
  br i1 %.not844, label %thread-pre-split1145.thread, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.fm = load ptr, ptr %15, align 8
  %i.fn = getelementptr i8, ptr %i.fm, i64 120
  %i.fo = load ptr, ptr %i.fn, align 8            ; 2 uses
  %.not845 = icmp eq ptr %i.fo, null
  br i1 %.not845, label %arch_set_bit.exit, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.fp = call i32 %i.fo(ptr noundef %.val, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #12
  %i.fq = icmp slt i32 %i.fp, 0
  br i1 %i.fq, label %thread-pre-split1145.thread, label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %bb.mm, %bb.ml
  %i.fr = getelementptr i8, ptr %2, i64 16        ; 5 uses
  %i.fs = getelementptr i8, ptr %i.d, i64 40      ; 3 uses
  %i.ft = load i8, ptr %i.fr, align 4
  %i.fu = zext i8 %i.ft to i64
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fs, i64 range(i64 0, 4294967296) %i.fu) #14, !srcloc !22
  %i.fv = getelementptr i8, ptr %2, i64 14        ; 10 uses
  %i.fw = load i16, ptr %i.fv, align 2            ; 2 uses
  %i.fx = zext i16 %i.fw to i32
  %i.fy = load i32, ptr %i.a, align 4
  %.not8461157 = icmp slt i32 %i.fy, %i.fx
  br i1 %.not8461157, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %arch_set_bit.exit
  %i.fz = getelementptr i8, ptr %.val, i64 7172
  %.pre1172.a = load ptr, ptr %i.b, align 8
  br label %bb.mn

bb.mn:                                            ; preds = %.lr.ph, %find_next_zero_bit.exit
  %i.ga = phi ptr [ %.pre1172.a, %.lr.ph ], [ %.pre1171.a, %find_next_zero_bit.exit ] ; 2 uses
  %i.gb = phi i16 [ %i.fw, %.lr.ph ], [ %i.gp, %find_next_zero_bit.exit ]
  %i.gc = zext i16 %i.gb to i64
  %i.gd = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ga, i64 range(i64 0, 65536) %i.gc, ptr elementtype(i64) %i.ga) #14, !srcloc !74 ; 2 uses
  %i.ge = icmp ult i8 %i.gd, 2
  call void @llvm.assume(i1 %i.ge)
  %i.gf = trunc nuw i8 %i.gd to i1
  br i1 %i.gf, label %bb.mo, label %..critedge.loopexit_crit_edge

..critedge.loopexit_crit_edge:                    ; preds = %bb.mn
  %.pre1174.pre = load i16, ptr %i.fv, align 2
  %.pre1175.pre = load i32, ptr %i.a, align 4
  br label %.critedge

bb.mo:                                            ; preds = %bb.mn
  %i.gg = load i32, ptr %i.fz, align 4
  %i.gh = and i32 %i.gg, 1048576
  %.not852 = icmp eq i32 %i.gh, 0
  br i1 %.not852, label %bb.mp, label %find_next_zero_bit.exit

find_next_zero_bit.exit:                          ; preds = %bb.mo
  %i.gi = load i16, ptr %i.fv, align 2
  %i.gj = zext i16 %i.gi to i64
  %i.gk = load i32, ptr %i.a, align 4
  %i.gl = add i32 %i.gk, 1
  %i.gm = sext i32 %i.gl to i64
  %i.gn = load ptr, ptr %i.b, align 8
  %i.go = call i64 @_find_next_zero_bit(ptr noundef %i.gn, i64 noundef range(i64 -2147483648, 2147483648) %i.gm, i64 noundef range(i64 0, 65536) %i.gj) #12 ; 2 uses
  %.pre1173 = load i32, ptr %i.a, align 4         ; 2 uses
  %.pre1171.a = load ptr, ptr %i.b, align 8
  %i.gp = trunc i64 %i.go to i16                  ; 3 uses
  store i16 %i.gp, ptr %i.fv, align 2
  %i.gq = trunc i64 %i.go to i32
  %i.gr = and i32 %i.gq, 65535
  %.not846 = icmp slt i32 %.pre1173, %i.gr
  br i1 %.not846, label %.critedge, label %bb.mn, !llvm.loop !70

bb.mp:                                            ; preds = %bb.mo
  %i.gs = getelementptr i8, ptr %.val, i64 7160   ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8
  %i.gu = or i64 %i.gt, 4
  store i64 %i.gu, ptr %i.gs, align 8
  br label %.critedge.thread

.critedge:                                        ; preds = %find_next_zero_bit.exit, %..critedge.loopexit_crit_edge
  %.pre1175 = phi i32 [ %.pre1175.pre, %..critedge.loopexit_crit_edge ], [ %.pre1173, %find_next_zero_bit.exit ]
  %.pre1174 = phi i16 [ %.pre1174.pre, %..critedge.loopexit_crit_edge ], [ %i.gp, %find_next_zero_bit.exit ] ; 2 uses
  %.pre1179 = zext i16 %.pre1174 to i32
  %i.gv = icmp slt i32 %.pre1175, %.pre1179
  br i1 %i.gv, label %.critedge.thread, label %bb.mq

bb.mq:                                            ; preds = %.critedge
  %i.gw = load i8, ptr %i.fr, align 4             ; 2 uses
  %i.gx = icmp eq i8 %i.gw, 3
  br i1 %i.gx, label %bb.mr, label %thread-pre-split1145

bb.mr:                                            ; preds = %bb.mq
  %i.gy = getelementptr i8, ptr %1, i64 72        ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8
  %i.ha = getelementptr i8, ptr %1, i64 76        ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4
  %i.hc = getelementptr i8, ptr %.val, i64 7172
  %i.hd = load i32, ptr %i.hc, align 4
  %i.he = and i32 %i.hd, 32
  %.not847 = icmp ne i32 %i.he, 0
  %switch855 = icmp ult i16 %.pre1174, 2
  %or.cond856 = and i1 %switch855, %.not847
  br i1 %or.cond856, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %bb.mr
  store i32 0, ptr %i.gy, align 8
  store i32 255, ptr %i.ha, align 4
  br label %bb.mt

bb.mt:                                            ; preds = %bb.ms, %bb.mr
  %.0803 = phi i32 [ 0, %bb.ms ], [ %i.gz, %bb.mr ] ; 3 uses
  %.0802 = phi i32 [ 255, %bb.ms ], [ %i.hb, %bb.mr ] ; 3 uses
  %i.hf = getelementptr i8, ptr %1, i64 8
  %i.hg = load i32, ptr %i.hf, align 8
  %i.hh = and i32 %i.hg, -2
  %switch858 = icmp eq i32 %i.hh, 65540
  %i.hi = load i16, ptr %i.fv, align 2
  %i.hj = zext i16 %i.hi to i32                   ; 2 uses
  br i1 %switch858, label %bb.mu, label %bb.mv

bb.mu:                                            ; preds = %bb.mt
  %i.hk = sub i32 %.0802, %.0803                  ; 2 uses
  %i.hl = ashr i32 %i.hk, 8
  %i.hm = ashr i32 %i.hk, 4
  call void @input_set_abs_params(ptr noundef %i.d, i32 noundef %i.hj, i32 noundef %.0803, i32 noundef %.0802, i32 noundef %i.hl, i32 noundef %i.hm) #12
  br label %bb.mw

bb.mv:                                            ; preds = %bb.mt
  call void @input_set_abs_params(ptr noundef %i.d, i32 noundef %i.hj, i32 noundef %.0803, i32 noundef %.0802, i32 noundef 0, i32 noundef 0) #12
  br label %bb.mw

bb.mw:                                            ; preds = %bb.mv, %bb.mu
  %i.hn = load i16, ptr %i.fv, align 2            ; 2 uses
  %i.ho = call i32 @hidinput_calc_abs_res(ptr noundef %1, i16 noundef zeroext %i.hn) #13
  call void @input_alloc_absinfo(ptr noundef %i.d) #12
  %i.hp = getelementptr i8, ptr %i.d, i64 328
  %i.hq = load ptr, ptr %i.hp, align 8            ; 2 uses
  %.not.i1138 = icmp eq ptr %i.hq, null
  br i1 %.not.i1138, label %input_abs_set_res.exit, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.hr = zext i16 %i.hn to i64
  %i.hs = getelementptr [24 x i8], ptr %i.hq, i64 %i.hr
  %i.ht = getelementptr i8, ptr %i.hs, i64 20
  store i32 %i.ho, ptr %i.ht, align 4
  br label %input_abs_set_res.exit

input_abs_set_res.exit:                           ; preds = %bb.mw, %bb.mx
  %i.hu = load i16, ptr %i.fv, align 2
  %i.hv = icmp eq i16 %i.hu, 53
  br i1 %i.hv, label %bb.my, label %bb.na

bb.my:                                            ; preds = %input_abs_set_res.exit
  %i.hw = getelementptr i8, ptr %i.d, i64 208     ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 8
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.mz, label %bb.na

bb.mz:                                            ; preds = %bb.my
  store i32 60, ptr %i.hw, align 8
  br label %bb.na

bb.na:                                            ; preds = %input_abs_set_res.exit, %bb.my, %bb.mz
  %.pr = load i8, ptr %i.fr, align 4              ; 2 uses
  %i.hz = icmp eq i8 %.pr, 3
  br i1 %i.hz, label %bb.nb, label %thread-pre-split1145

bb.nb:                                            ; preds = %bb.na
  %i.ia = getelementptr i8, ptr %2, i64 18
  %i.ib = load i16, ptr %i.ia, align 2
  %i.ic = getelementptr i8, ptr %2, i64 20
  %i.id = load i16, ptr %i.ic, align 4
  %i.ie = icmp slt i16 %i.ib, %i.id
  br i1 %i.ie, label %bb.nd, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.if = getelementptr i8, ptr %2, i64 22
  %i.ig = load i16, ptr %i.if, align 2
  %.not848 = icmp eq i16 %i.ig, 0
  br i1 %.not848, label %bb.ng, label %bb.nd

bb.nd:                                            ; preds = %bb.nc, %bb.nb
  %i.ih = load i16, ptr %i.fv, align 2            ; 3 uses
  %i.ii = zext i16 %i.ih to i32
  %i.ij = load i32, ptr %i.a, align 4
  %.not1201 = icmp slt i32 %i.ij, %i.ii
  br i1 %.not1201, label %._crit_edge, label %.lr.ph1161

.lr.ph1161:                                       ; preds = %bb.nd
  %i.ik = getelementptr i8, ptr %i.d, i64 152
  %i.il = zext i16 %i.ih to i64
  br label %arch_set_bit.exit859

arch_set_bit.exit859:                             ; preds = %.lr.ph1161, %arch_set_bit.exit859
  %indvars.iv = phi i64 [ %i.il, %.lr.ph1161 ], [ %indvars.iv.next, %arch_set_bit.exit859 ] ; 4 uses
  %i.im = trunc nuw nsw i64 %indvars.iv to i32
  call void @input_set_abs_params(ptr noundef %i.d, i32 noundef %i.im, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ik, i64 range(i64 0, 4294967296) %indvars.iv) #14, !srcloc !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.in = load i16, ptr %i.fv, align 2            ; 2 uses
  %i.io = zext i16 %i.in to i64
  %i.ip = add nuw nsw i64 %i.io, 2
  %i.iq = icmp samesign ult i64 %indvars.iv.next, %i.ip
  %i.ir = load i32, ptr %i.a, align 4
  %i.is = sext i32 %i.ir to i64
  %i.it = icmp slt i64 %indvars.iv, %i.is
end_hunk_2
