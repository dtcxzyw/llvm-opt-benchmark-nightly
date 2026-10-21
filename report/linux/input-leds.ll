Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/input-leds?download=true
inline.NumInlined: 8
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section\09\22.initcall6.init\22, \22a\22\09\09"
    "__initcall__kmod_input_leds__446_215_input_leds_init6:\09\09\09"
    ".long\09input_leds_init - .\09"
    ".previous\09\09\09\09\09"

%struct.input_device_id = type { i64, i16, i16, i16, i16, [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }
%struct.list_head = type { ptr, ptr }
%struct.anon.3 = type { ptr, ptr }

@__mod_device_table__kmod_input_leds__input__input_leds_ids = internal constant [2 x %struct.input_device_id] [%struct.input_device_id { i64 16, i16 0, i16 0, i16 0, i16 0, [1 x i64] [i64 131072], [12 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [2 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, i64 0 }, %struct.input_device_id zeroinitializer], align 16
@__UNIQUE_ID_addressable_input_leds_init_447 = internal global ptr @input_leds_init, section ".discard.addressable", align 8
@__UNIQUE_ID_modinfo_448 = internal constant [65 x i8] c"input_leds.author=Samuel Thibault <samuel.thibault@ens-lyon.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_449 = internal constant [62 x i8] c"input_leds.author=Dmitry Torokhov <dmitry.torokhov@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_450 = internal constant [44 x i8] c"input_leds.description=Input -> LEDs Bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_451 = internal constant [41 x i8] c"input_leds.file=drivers/input/input-leds\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_452 = internal constant [26 x i8] c"input_leds.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [5 x i8] c"leds\00", align 1
@input_leds_handler = internal global { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, [2 x i8], i32, ptr, ptr, %struct.list_head, %struct.list_head } { ptr null, ptr @input_leds_event, ptr null, ptr null, ptr null, ptr @input_leds_connect, ptr @input_leds_disconnect, ptr null, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, ptr @.str, ptr @__mod_device_table__kmod_input_leds__input__input_leds_ids, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, align 8
@input_led_info = internal unnamed_addr constant [16 x %struct.anon.3] [%struct.anon.3 { ptr @.str.6, ptr @.str.7 }, %struct.anon.3 { ptr @.str.8, ptr @.str.9 }, %struct.anon.3 { ptr @.str.10, ptr @.str.11 }, %struct.anon.3 { ptr @.str.12, ptr null }, %struct.anon.3 { ptr @.str.13, ptr @.str.14 }, %struct.anon.3 { ptr @.str.15, ptr null }, %struct.anon.3 { ptr @.str.16, ptr null }, %struct.anon.3 { ptr @.str.17, ptr null }, %struct.anon.3 { ptr @.str.18, ptr null }, %struct.anon.3 { ptr @.str.19, ptr null }, %struct.anon.3 { ptr @.str.20, ptr null }, %struct.anon.3 zeroinitializer, %struct.anon.3 zeroinitializer, %struct.anon.3 zeroinitializer, %struct.anon.3 zeroinitializer, %struct.anon.3 zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"%s::%s\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to register LED %s: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"numlock\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"kbd-numlock\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"capslock\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"kbd-capslock\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"scrolllock\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"kbd-scrolllock\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"compose\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"kana\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"kbd-kanalock\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"mute\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"mail\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"charging\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_addressable_input_leds_init_447, ptr @__UNIQUE_ID_modinfo_448, ptr @__UNIQUE_ID_modinfo_449, ptr @__UNIQUE_ID_modinfo_450, ptr @__UNIQUE_ID_modinfo_451, ptr @__UNIQUE_ID_modinfo_452, ptr @__mod_device_table__kmod_input_leds__input__input_leds_ids, ptr @input_leds_exit], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @input_leds_init() #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @input_register_handler(ptr noundef @input_leds_handler) #7
  ret i32 %i.a
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @input_leds_exit() #0 section ".exit.text" align 16 prefalign(16) {
bb.a:
  tail call void @input_unregister_handler(ptr noundef @input_leds_handler) #7
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @input_unregister_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @input_register_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal void @input_leds_event(ptr nofree readnone captures(none) %0, i32 %1, i32 %2, i32 %3) #2 align 16 prefalign(16) {
bb.a:
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @input_leds_connect(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 168        ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %invariant.op.i = and i64 %i.b, 65535
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  %.09.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %bb.c ] ; 3 uses
  %i.d = shl nsw i64 -1, %i.c
  %.reass.i = and i64 %invariant.op.i, %i.d       ; 2 uses
  %.not.i.i = icmp eq i64 %.reass.i, 0
  br i1 %.not.i.i, label %input_leds_get_count.exit, label %find_next_bit.exit.i

find_next_bit.exit.i:                             ; preds = %bb.b
  %i.e = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 65536) %.reass.i) #8, !srcloc !14 ; 3 uses
  %i.f = and i64 %i.e, 4294967280
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %input_leds_get_count.exit

bb.c:                                             ; preds = %find_next_bit.exit.i
  %3 = or i64 %i.e, -16
  %.not.i83 = icmp samesign ult i64 %3, -5
  %i.h = zext i1 %.not.i83 to i32
  %spec.select.i = add i32 %.09.i, %i.h           ; 2 uses
  %i.i = add nuw nsw i64 %i.e, 1
  %i.j = and i64 %i.i, 31                         ; 2 uses
  %i.k = icmp samesign ugt i64 %i.j, 15
  br i1 %i.k, label %input_leds_get_count.exit, label %bb.b, !prof !15, !llvm.loop !11

input_leds_get_count.exit:                        ; preds = %bb.b, %find_next_bit.exit.i, %bb.c
  %.0.lcssa.i = phi i32 [ %.09.i, %bb.b ], [ %spec.select.i, %bb.c ], [ %.09.i, %find_next_bit.exit.i ] ; 3 uses
  %.not = icmp eq i32 %.0.lcssa.i, 0
  br i1 %.not, label %.critedge, label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %input_leds_get_count.exit
  %i.l = zext i32 %.0.lcssa.i to i64
  %i.m = mul nuw nsw i64 %i.l, 416
  %i.n = add nuw nsw i64 %i.m, 88
  %i.o = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 504, 1786706394809) %i.n, i32 noundef 3520) #9 ; 14 uses
  %.not77 = icmp eq ptr %i.o, null
  br i1 %.not77, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_kzalloc_noprof.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store i32 %.0.lcssa.i, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %i.o, i64 24
  store ptr %1, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %i.o, i64 32
  store ptr %0, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %i.o, i64 16
  store ptr @.str, ptr %i.s, align 8
  store ptr %i.o, ptr %i.o, align 8
  %i.t = tail call i32 @input_register_handle(ptr noundef nonnull %i.o) #7 ; 2 uses
  %.not78 = icmp eq i32 %i.t, 0
  br i1 %.not78, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.u = tail call i32 @input_open_device(ptr noundef nonnull %i.o) #7 ; 2 uses
  %.not79 = icmp eq i32 %i.u, 0
  br i1 %.not79, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.e
  %i.v = getelementptr i8, ptr %i.o, i64 88       ; 2 uses
  %i.w = getelementptr i8, ptr %1, i64 536        ; 3 uses
  %i.x = getelementptr i8, ptr %1, i64 616
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.m
  %i.y = phi i64 [ 0, %.preheader ], [ %i.az, %bb.m ]
  %.06797 = phi i32 [ 0, %.preheader ], [ %.1, %bb.m ] ; 4 uses
  %i.z = load i64, ptr %i.a, align 8
  %i.aa = shl nsw i64 -1, %i.y
  %i.ab = and i64 %i.aa, 65535
  %i.ac = and i64 %i.ab, %i.z                     ; 2 uses
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %.critedge, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %bb.f
  %i.ad = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 65536) %i.ac) #8, !srcloc !14 ; 3 uses
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  %i.af = icmp ult i32 %i.ae, 16
  br i1 %i.af, label %bb.g, label %.critedge

bb.g:                                             ; preds = %find_next_bit.exit
  %i.ag = and i64 %i.ad, 15                       ; 2 uses
  %i.ah = getelementptr [16 x i8], ptr @input_led_info, i64 %i.ag ; 2 uses
  %4 = icmp samesign ugt i64 %i.ag, 10
  br i1 %4, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = sext i32 %.06797 to i64
  %i.aj = getelementptr [416 x i8], ptr %i.v, i64 %i.ai ; 10 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 400
  store ptr %i.o, ptr %i.ak, align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 408
  store i32 %i.ae, ptr %i.al, align 8
  %i.am = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not.i85 = icmp eq ptr %i.am, null
  br i1 %.not.i85, label %bb.i, label %dev_name.exit

bb.i:                                             ; preds = %bb.h
  %.val.i = load ptr, ptr %i.w, align 8
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %bb.h, %bb.i
  %.0.i86 = phi ptr [ %.val.i, %bb.i ], [ %i.am, %bb.h ]
  %5 = load ptr, ptr %i.ah, align 16
  %i.an = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef @.str.2, ptr noundef %.0.i86, ptr noundef %5) #7 ; 2 uses
  store ptr %i.an, ptr %i.aj, align 8
  %.not81 = icmp eq ptr %i.an, null
  br i1 %.not81, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %dev_name.exit
  %i.ao = getelementptr i8, ptr %i.aj, i64 12
  store i32 1, ptr %i.ao, align 4
  %i.ap = getelementptr i8, ptr %i.aj, i64 48
  store ptr @input_leds_brightness_get, ptr %i.ap, align 8
  %i.aq = getelementptr i8, ptr %i.aj, i64 32
  store ptr @input_leds_brightness_set, ptr %i.aq, align 8
  %i.ar = getelementptr i8, ptr %i.ah, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr i8, ptr %i.aj, i64 112
  store ptr %i.as, ptr %i.at, align 8
  %i.au = tail call i32 @led_classdev_register_ext(ptr noundef %i.w, ptr noundef %i.aj, ptr noundef null) #7 ; 3 uses
  %.not82 = icmp eq i32 %i.au, 0
  br i1 %.not82, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.aj, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.w, ptr noundef @.str.3, ptr noundef %i.av, i32 noundef %i.au) #10
  %i.aw = load ptr, ptr %i.aj, align 8
  tail call void @kfree(ptr noundef %i.aw) #7
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.ax = add i32 %.06797, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.l
  %.1 = phi i32 [ %i.ax, %bb.l ], [ %.06797, %bb.g ]
  %i.ay = add nuw nsw i64 %i.ad, 1
  %i.az = and i64 %i.ay, 31                       ; 2 uses
  %i.ba = icmp samesign ugt i64 %i.az, 15
  br i1 %i.ba, label %.critedge, label %bb.f, !prof !15, !llvm.loop !12

.loopexit:                                        ; preds = %dev_name.exit, %bb.k
  %.068 = phi i32 [ %i.au, %bb.k ], [ -12, %dev_name.exit ]
  %i.bb = add i32 %.06797, -1                     ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, -1
  br i1 %i.bc, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.loopexit
  %i.bd = zext nneg i32 %i.bb to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.bd, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.be = getelementptr [416 x i8], ptr %i.v, i64 %indvars.iv ; 2 uses
  tail call void @led_classdev_unregister(ptr noundef %i.be) #7
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void @kfree(ptr noundef %i.bf) #7
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not118 = icmp eq i64 %indvars.iv, 0
  br i1 %.not118, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit
  tail call void @input_close_device(ptr noundef nonnull %i.o) #7
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %._crit_edge
  %.169 = phi i32 [ %i.u, %bb.e ], [ %.068, %._crit_edge ]
  tail call void @input_unregister_handle(ptr noundef nonnull %i.o) #7
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.n
  %.270 = phi i32 [ %i.t, %bb.d ], [ %.169, %bb.n ]
  tail call void @kfree(ptr noundef nonnull %i.o) #7
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.m, %find_next_bit.exit, %_kzalloc_noprof.exit, %input_leds_get_count.exit, %bb.o
  %.0 = phi i32 [ %.270, %bb.o ], [ -12, %_kzalloc_noprof.exit ], [ -6, %input_leds_get_count.exit ], [ 0, %find_next_bit.exit ], [ 0, %bb.m ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_leds_disconnect(ptr noundef %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 80       ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 88
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.010 = phi i32 [ 0, %.lr.ph ], [ %i.h, %bb.b ] ; 2 uses
  %i.e = sext i32 %.010 to i64
  %i.f = getelementptr [416 x i8], ptr %i.d, i64 %i.e ; 2 uses
  tail call void @led_classdev_unregister(ptr noundef %i.f) #7
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @kfree(ptr noundef %i.g) #7
  %i.h = add nuw i32 %.010, 1                     ; 2 uses
  %i.i = load i32, ptr %i.b, align 8
  %i.j = icmp ult i32 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.b, %bb.a
  tail call void @input_close_device(ptr noundef %0) #7
  tail call void @input_unregister_handle(ptr noundef %0) #7
  tail call void @kfree(ptr noundef %i.a) #7
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @input_register_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @input_open_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @input_leds_brightness_get(ptr nofree noundef readonly captures(none) %0) #3 align 16 prefalign(16) {
arch_test_bit.exit:
  %i.a = getelementptr i8, ptr %0, i64 400
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 432
  %i.f = getelementptr i8, ptr %0, i64 408
  %i.g = load i32, ptr %i.f, align 8
  %i.h = zext i32 %i.g to i64
  %i.i = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.e, i64 range(i64 0, 4294967296) %i.h) #11, !srcloc !17 ; 2 uses
  %i.j = icmp ult i8 %i.i, 2
  tail call void @llvm.assume(i1 %i.j)
  %i.k = trunc nuw i8 %i.i to i1
  br i1 %i.k, label %bb.a, label %bb.b

bb.a:                                             ; preds = %arch_test_bit.exit
  %i.l = getelementptr i8, ptr %0, i64 12
  %i.m = load i32, ptr %i.l, align 4
  br label %bb.b

bb.b:                                             ; preds = %arch_test_bit.exit, %bb.a
  %i.n = phi i32 [ %i.m, %bb.a ], [ 0, %arch_test_bit.exit ]
  ret i32 %i.n
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_leds_brightness_set(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 400
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 408
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ne i32 %1, 0
  %i.f = zext i1 %i.e to i32
  tail call void @input_inject_event(ptr noundef %i.b, i32 noundef 17, i32 noundef %i.d, i32 noundef %i.f) #7
  ret void
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @input_close_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @input_unregister_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @input_inject_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { noredzone nounwind "no-builtin-wcslen" }
attributes #8 = { nounwind memory(none) }
attributes #9 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #10 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

end_hunk_0
