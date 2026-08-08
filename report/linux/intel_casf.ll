inline.NumInlined: 39
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_call_key = type { ptr, %union.anon.73 }
%union.anon.73 = type { i64 }
%struct.tracepoint = type { ptr, %struct.static_key_false, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.76 }
%struct.atomic_t = type { i32 }
%union.anon.76 = type { i64 }
%struct.srcu_struct = type { ptr, ptr, i8, ptr }
%struct.cpumask = type { [1 x i64] }

@__UNIQUE_ID_modinfo_556 = internal constant [19 x i8] c"i915.import_ns=PWM\00", section ".modinfo", align 1
@filtercoeff_1 = dso_local local_unnamed_addr constant [7 x i16] [i16 0, i16 0, i16 500, i16 1000, i16 500, i16 0, i16 0], align 2
@filtercoeff_2 = dso_local local_unnamed_addr constant [7 x i16] [i16 0, i16 250, i16 500, i16 1000, i16 500, i16 250, i16 0], align 2
@filtercoeff_3 = dso_local local_unnamed_addr constant [7 x i16] [i16 125, i16 250, i16 500, i16 1000, i16 500, i16 250, i16 125], align 2
@.str = private unnamed_addr constant [32 x i8] c"CASF not supported with joiner\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: [drm] %s\00", align 1
@.str.2 = private unnamed_addr constant [14196 x i8] c"drm_WARN_ON(((u32)({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_683(void) __attribute__((__error__(\22FIELD_GET: \22 \22type of reg too small for mask\22))); if (!(!(((typeof( _Generic((((u32)(((int)sizeof(struct {_Static_assert(!(__builtin_choose_expr((sizeof(int) == sizeof(*(8 ? ((void *)((long)((8) > (15)) * 0l)) : (int *)8))), (8) > (15), false)), \22const_true((8) > (15))\22 \22 is true\22);})) + (((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) << (8) & ((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) >> ((sizeof(u32) * 8) - 1 - (15)))))), char: (unsigned char)0, unsigned char: (unsigned char)0, signed char: (unsigned char)0, unsigned short: (unsigned short)0, signed short: (unsigned short)0, unsigned int: (unsigned int)0, signed int: (unsigned int)0, unsigned long: (unsigned long)0, signed long: (unsigned long)0, unsigned long long: (unsigned long long)0, signed long long: (unsigned long long)0, default: (((u32)(((int)sizeof(struct {_Static_assert(!(__builtin_choose_expr((sizeof(int) == sizeof(*(8 ? ((void *)((long)((8) > (15)) * 0l)) : (int *)8))), (8) > (15), false)), \22const_true((8) > (15))\22 \22 is true\22);})) + (((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) << (8) & ((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) >> ((sizeof(u32) * 8) - 1 - (15)))))))))(((u32)(((int)sizeof(struct {_Static_assert(!(__builtin_choose_expr((sizeof(int) == sizeof(*(8 ? ((void *)((long)((8) > (15)) * 0l)) : (int *)8))), (8) > (15), false)), \22const_true((8) > (15))\22 \22 is true\22);})) + (((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) << (8) & ((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) >> ((sizeof(u32) * 8) - 1 - (15))))))) > ((typeof( _Generic((sharp), char: (unsigned char)0, unsigned char: (unsigned char)0, signed char: (unsigned char)0, unsigned short: (unsigned short)0, signed short: (unsigned short)0, unsigned int: (unsigned int)0, signed int: (unsigned int)0, unsigned long: (unsigned long)0, signed long: (unsigned long)0, unsigned long long: (unsigned long long)0, signed long long: (unsigned long long)0, default: (sharp))))(~0ull))))) __compiletime_assert_683(); } while (0); ({ ({ do { __attribute__((__noreturn__)) extern void __compiletime_assert_684(void) __attribute__((__error__(\22FIELD_GET: \22 \22mask is not constant\22))); if (!(!(!__builtin_constant_p(((u32)(((int)sizeof(struct {_Static_assert(!(__builtin_choose_expr((sizeof(int) == sizeof(*(8 ? ((void *)((long)((8) > (15)) * 0l)) : (int *)8))), (8) > (15), false)), \22const_true((8) > (15))\22 \22 is true\22);})) + (((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) << (8) & ((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) >> ((sizeof(u32) * 8) - 1 - (15))))))))) __compiletime_assert_684(); } while (0); do { __attribute__((__noreturn__)) extern void __compiletime_assert_685(void) __attribute__((__error__(\22FIELD_GET: \22 \22mask is zero\22))); if (!(!((((u32)(((int)sizeof(struct {_Static_assert(!(__builtin_choose_expr((sizeof(int) == sizeof(*(8 ? ((void *)((long)((8) > (15)) * 0l)) : (int *)8))), (8) > (15), false)), \22const_true((8) > (15))\22 \22 is true\22);})) + (((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) << (8) & ((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) >> ((sizeof(u32) * 8) - 1 - (15)))))) == 0))) __compiletime_assert_685(); } while (0); do { __attribute__((__noreturn__)) extern void __compiletime_assert_686(void) __attribute__((__error__(\22FIELD_GET: \22 \22value too large for the field\22))); if (!(!(__builtin_constant_p(0U) ? ~((((u32)(((int)sizeof(struct {_Static_assert(!(__builtin_choose_expr((sizeof(int) == sizeof(*(8 ? ((void *)((long)((8) > (15)) * 0l)) : (int *)8))), (8) > (15), false)), \22const_true((8) > (15))\22 \22 is true\22);})) + (((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) << (8) & ((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) >> ((sizeof(u32) * 8) - 1 - (15)))))) >> __builtin_ctzll(((u32)(((int)sizeof(struct {_Static_assert(!(__builtin_choose_expr((sizeof(int) == sizeof(*(8 ? ((void *)((long)((8) > (15)) * 0l)) : (int *)8))), (8) > (15), false)), \22const_true((8) > (15))\22 \22 is true\22);})) + (((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) << (8) & ((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) >> ((sizeof(u32) * 8) - 1 - (15))))))) & (0 + (0U)) : 0))) __compiletime_assert_686(); } while (0); do { __attribute__((__noreturn__)) extern void __compiletime_assert_687(void) __attribute__((__error__(\22BUILD_BUG_ON failed: \22 \22(((((u32)(((int)sizeof(struct {_Static_assert(!(__builtin_choose_expr((sizeof(int) == sizeof(*(8 ? ((void *)((long)((8) > (15)) * 0l)) : (int *)8))), (8) > (15), false)), \\\22const_true((8) > (15))\\\22 \\\22 is true\\\22);})) + (((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) << (8) & ((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) >> ((sizeof(u32) * 8) - 1 - (15)))))) + (1ULL << __builtin_ctzll(((u32)(((int)sizeof(struct {_Static_assert(!(__builtin_choose_expr((sizeof(int) == sizeof(*(8 ? ((void *)((long)((8) > (15)) * 0l)) : (int *)8))), (8) > (15), false)), \\\22const_true((8) > (15))\\\22 \\\22 is true\\\22);})) + (((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) << (8) & ((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) >> ((sizeof(u32) * 8) - 1 - (15)))))))) & (((((u32)(((int)sizeof(struct {_Static_assert(!(__builtin_choose_expr((sizeof(int) == sizeof(*(8 ? ((void *)((long)((8) > (15)) * 0l)) : (int *)8))), (8) > (15), false)), \\\22const_true((8) > (15))\\\22 \\\22 is true\\\22);})) + (((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) << (8) & ((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) >> ((sizeof(u32) * 8) - 1 - (15)))))) + (1ULL << __builtin_ctzll(((u32)(((int)sizeof(struct {_Static_assert(!(__builtin_choose_expr((sizeof(int) == sizeof(*(8 ? ((void *)((long)((8) > (15)) * 0l)) : (int *)8))), (8) > (15), false)), \\\22const_true((8) > (15))\\\22 \\\22 is true\\\22);})) + (((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) << (8) & ((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) >> ((sizeof(u32) * 8) - 1 - (15)))))))) - 1)) != 0\22))); if (!(!((((((u32)(((int)sizeof(struct {_Static_assert(!(__builtin_choose_expr((sizeof(int) == sizeof(*(8 ? ((void *)((long)((8) > (15)) * 0l)) : (int *)8))), (8) > (15), false)), \22const_true((8) > (15))\22 \22 is true\22);})) + (((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) << (8) & ((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) >> ((sizeof(u32) * 8) - 1 - (15)))))) + (1ULL << __builtin_ctzll(((u32)(((int)sizeof(struct {_Static_assert(!(__builtin_choose_expr((sizeof(int) == sizeof(*(8 ? ((void *)((long)((8) > (15)) * 0l)) : (int *)8))), (8) > (15), false)), \22const_true((8) > (15))\22 \22 is true\22);})) + (((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) << (8) & ((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) >> ((sizeof(u32) * 8) - 1 - (15)))))))) & (((((u32)(((int)sizeof(struct {_Static_assert(!(__builtin_choose_expr((sizeof(int) == sizeof(*(8 ? ((void *)((long)((8) > (15)) * 0l)) : (int *)8))), (8) > (15), false)), \22const_true((8) > (15))\22 \22 is true\22);})) + (((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) << (8) & ((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) >> ((sizeof(u32) * 8) - 1 - (15)))))) + (1ULL << __builtin_ctzll(((u32)(((int)sizeof(struct {_Static_assert(!(__builtin_choose_expr((sizeof(int) == sizeof(*(8 ? ((void *)((long)((8) > (15)) * 0l)) : (int *)8))), (8) > (15), false)), \22const_true((8) > (15))\22 \22 is true\22);})) + (((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) << (8) & ((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) >> ((sizeof(u32) * 8) - 1 - (15)))))))) - 1)) != 0))) __compiletime_assert_687(); } while (0); }); (typeof(((u32)(((int)sizeof(struct {_Static_assert(!(__builtin_choose_expr((sizeof(int) == sizeof(*(8 ? ((void *)((long)((8) > (15)) * 0l)) : (int *)8))), (8) > (15), false)), \22const_true((8) > (15))\22 \22 is true\22);})) + (((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) << (8) & ((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) >> ((sizeof(u32) * 8) - 1 - (15)))))))(((sharp) & (((u32)(((int)sizeof(struct {_Static_assert(!(__builtin_choose_expr((sizeof(int) == sizeof(*(8 ? ((void *)((long)((8) > (15)) * 0l)) : (int *)8))), (8) > (15), false)), \22const_true((8) > (15))\22 \22 is true\22);})) + (((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) << (8) & ((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) >> ((sizeof(u32) * 8) - 1 - (15))))))) >> __builtin_ctzll(((u32)(((int)sizeof(struct {_Static_assert(!(__builtin_choose_expr((sizeof(int) == sizeof(*(8 ? ((void *)((long)((8) > (15)) * 0l)) : (int *)8))), (8) > (15), false)), \22const_true((8) > (15))\22 \22 is true\22);})) + (((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) << (8) & ((typeof(u32))((((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))) - 1) + ((typeof(u32))1 << (8*sizeof(typeof(u32)) - 1 - (((typeof(u32))(-1)) < ( typeof(u32))1))))) >> ((sizeof(u32) * 8) - 1 - (15))))))); }); })) < 16)\00", align 1
@intel_casf_sharpness_get_config.__UNIQUE_ID_addressable___SCK__WARN_trap_688 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@__SCK__WARN_trap = external dso_local global %struct.static_call_key, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"drivers/gpu/drm/i915/display/intel_casf.c\00", align 1
@sharpness_lut = internal unnamed_addr constant [32 x i16] [i16 4095, i16 2047, i16 1364, i16 1022, i16 816, i16 678, i16 579, i16 504, i16 444, i16 397, i16 357, i16 323, i16 293, i16 268, i16 244, i16 224, i16 204, i16 187, i16 170, i16 154, i16 139, i16 125, i16 111, i16 98, i16 85, i16 73, i16 60, i16 48, i16 36, i16 24, i16 12, i16 0], align 16
@intel_casf_write_coeff.__UNIQUE_ID_addressable___SCK__WARN_trap_699 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@__tracepoint_i915_reg_rw = external dso_local global %struct.tracepoint, align 8
@__do_trace_i915_reg_rw.__trace_check_i915_reg_rw = internal constant [12 x i8] c"i915_reg_rw\00", section "__tracepoint_check", align 1
@cpu_number = external dso_local global i32, section ".data..percpu..hot..cpu_number", align 4
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 8
@__do_trace_i915_reg_rw.__UNIQUE_ID_addressable___SCK__tp_func_i915_reg_rw_536 = internal global ptr @__SCK__tp_func_i915_reg_rw, section ".discard.addressable", align 8
@__SCK__tp_func_i915_reg_rw = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_modinfo_556, ptr @__do_trace_i915_reg_rw.__UNIQUE_ID_addressable___SCK__tp_func_i915_reg_rw_536, ptr @__do_trace_i915_reg_rw.__trace_check_i915_reg_rw, ptr @intel_casf_sharpness_get_config.__UNIQUE_ID_addressable___SCK__WARN_trap_688, ptr @intel_casf_write_coeff.__UNIQUE_ID_addressable___SCK__WARN_trap_699], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @intel_casf_compute_config(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %i.e = getelementptr i8, ptr %0, i64 744
  %i.f = load i8, ptr %i.e, align 8               ; 2 uses
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.bb, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 4403
  %i.i = load i8, ptr %i.h, align 1
  %.not18 = icmp eq i8 %i.i, 0
  br i1 %.not18, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.e, %bb.f
  %i.m = phi ptr [ %i.l, %bb.f ], [ null, %bb.e ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.m, i32 noundef 2, ptr noundef nonnull @.str) #4
  br label %bb.bb

bb.g:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %0, i64 1388
  store i8 1, ptr %i.n, align 4
  %narrow = tail call i8 @llvm.uadd.sat.i8(i8 %i.f, i8 16)
  %i.o = getelementptr i8, ptr %0, i64 1386
  store i8 %narrow, ptr %i.o, align 2
  %i.p = getelementptr i8, ptr %0, i64 620
  %i.q = load i16, ptr %i.p, align 4
  %i.r = zext i16 %i.q to i32
  %i.s = getelementptr i8, ptr %0, i64 630
  %i.t = load i16, ptr %i.s, align 2
  %i.u = zext i16 %i.t to i32
  %i.v = mul nuw i32 %i.u, %i.r                   ; 2 uses
  %i.w = icmp ult i32 %i.v, 2073601
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %0, i64 1387
  store i8 0, ptr %i.x, align 1
  br label %intel_casf_compute_win_size.exit

bb.i:                                             ; preds = %bb.g
  %i.y = icmp ult i32 %i.v, 8294401
  %i.z = getelementptr i8, ptr %0, i64 1387       ; 2 uses
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.z, align 1
  br label %intel_casf_compute_win_size.exit

bb.k:                                             ; preds = %bb.i
  store i8 2, ptr %i.z, align 1
  br label %intel_casf_compute_win_size.exit

intel_casf_compute_win_size.exit:                 ; preds = %bb.h, %bb.j, %bb.k
  %switch.select19.i = phi ptr [ @filtercoeff_1, %bb.h ], [ @filtercoeff_2, %bb.j ], [ @filtercoeff_3, %bb.k ] ; 7 uses
  %i.aa = load i16, ptr %switch.select19.i, align 2 ; 2 uses
  %i.ab = getelementptr i8, ptr %switch.select19.i, i64 2
  %i.ac = load i16, ptr %i.ab, align 2            ; 2 uses
  %i.ad = add i16 %i.ac, %i.aa
  %i.ae = getelementptr i8, ptr %switch.select19.i, i64 4
  %i.af = load i16, ptr %i.ae, align 2            ; 2 uses
  %i.ag = add i16 %i.ad, %i.af
  %i.ah = getelementptr i8, ptr %switch.select19.i, i64 6
  %i.ai = load i16, ptr %i.ah, align 2            ; 2 uses
  %i.aj = add i16 %i.ag, %i.ai
  %i.ak = getelementptr i8, ptr %switch.select19.i, i64 8
  %i.al = load i16, ptr %i.ak, align 2            ; 2 uses
  %i.am = add i16 %i.aj, %i.al
  %i.an = getelementptr i8, ptr %switch.select19.i, i64 10
  %i.ao = load i16, ptr %i.an, align 2            ; 2 uses
  %i.ap = add i16 %i.am, %i.ao
  %i.aq = getelementptr i8, ptr %switch.select19.i, i64 12
  %i.ar = load i16, ptr %i.aq, align 2            ; 2 uses
  %i.as = add i16 %i.ap, %i.ar
  %i.at = zext i16 %i.as to i32                   ; 7 uses
  %i.au = zext i16 %i.aa to i32
  %i.av = mul nuw nsw i32 %i.au, 100
  %i.aw = udiv i32 %i.av, %i.at                   ; 2 uses
  %i.ax = trunc i32 %i.aw to i16                  ; 6 uses
  %i.ay = icmp ult i16 %i.ax, 25
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %intel_casf_compute_win_size.exit
  %i.az = shl nuw i16 %i.ax, 11
  %i.ba = udiv i16 %i.az, 100
  br label %convert_sharpness_coeff_binary.exit.i

bb.m:                                             ; preds = %intel_casf_compute_win_size.exit
  %i.bb = icmp ult i16 %i.ax, 50
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bc = shl nuw i16 %i.ax, 10
  %i.bd = udiv i16 %i.bc, 100
  br label %convert_sharpness_coeff_binary.exit.i

bb.o:                                             ; preds = %bb.m
  %i.be = icmp ult i16 %i.ax, 100
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = shl nuw i16 %i.ax, 9
  %i.bg = udiv i16 %i.bf, 100
  br label %convert_sharpness_coeff_binary.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bh = shl nuw nsw i32 %i.aw, 8
  %i.bi = and i32 %i.bh, 16776960
  %i.bj = udiv i32 %i.bi, 100
  %i.bk = trunc i32 %i.bj to i16
  br label %convert_sharpness_coeff_binary.exit.i

convert_sharpness_coeff_binary.exit.i:            ; preds = %bb.q, %bb.p, %bb.n, %bb.l
  %.sink15.i.i = phi i16 [ %i.bd, %bb.n ], [ %i.bk, %bb.q ], [ %i.bg, %bb.p ], [ %i.ba, %bb.l ]
  %.sink.i.i = phi i16 [ 2, %bb.n ], [ 0, %bb.q ], [ 1, %bb.p ], [ 3, %bb.l ]
  %i.bl = getelementptr i8, ptr %0, i64 1348
  store i16 %.sink15.i.i, ptr %i.bl, align 4
  %i.bm = getelementptr i8, ptr %0, i64 1346
  store i16 %.sink.i.i, ptr %i.bm, align 2
  %i.bn = zext i16 %i.ac to i32
  %i.bo = mul nuw nsw i32 %i.bn, 100
  %i.bp = udiv i32 %i.bo, %i.at                   ; 2 uses
  %i.bq = trunc i32 %i.bp to i16                  ; 6 uses
  %i.br = icmp ult i16 %i.bq, 25
  br i1 %i.br, label %bb.w, label %bb.r

bb.r:                                             ; preds = %convert_sharpness_coeff_binary.exit.i
  %i.bs = icmp ult i16 %i.bq, 50
  br i1 %i.bs, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = icmp ult i16 %i.bq, 100
  br i1 %i.bt, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = shl nuw nsw i32 %i.bp, 8
  %i.bv = and i32 %i.bu, 16776960
  %i.bw = udiv i32 %i.bv, 100
  %i.bx = trunc i32 %i.bw to i16
  br label %convert_sharpness_coeff_binary.exit.1.i

bb.u:                                             ; preds = %bb.s
  %i.by = shl nuw i16 %i.bq, 9
  %i.bz = udiv i16 %i.by, 100
  br label %convert_sharpness_coeff_binary.exit.1.i

bb.v:                                             ; preds = %bb.r
  %i.ca = shl nuw i16 %i.bq, 10
  %i.cb = udiv i16 %i.ca, 100
  br label %convert_sharpness_coeff_binary.exit.1.i

bb.w:                                             ; preds = %convert_sharpness_coeff_binary.exit.i
  %i.cc = shl nuw i16 %i.bq, 11
  %i.cd = udiv i16 %i.cc, 100
  br label %convert_sharpness_coeff_binary.exit.1.i

convert_sharpness_coeff_binary.exit.1.i:          ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %.sink15.i.1.i = phi i16 [ %i.cb, %bb.v ], [ %i.bx, %bb.t ], [ %i.bz, %bb.u ], [ %i.cd, %bb.w ]
  %.sink.i.1.i = phi i16 [ 2, %bb.v ], [ 0, %bb.t ], [ 1, %bb.u ], [ 3, %bb.w ]
  %i.ce = getelementptr i8, ptr %0, i64 1354
  store i16 %.sink15.i.1.i, ptr %i.ce, align 2
  %i.cf = getelementptr i8, ptr %0, i64 1352
  store i16 %.sink.i.1.i, ptr %i.cf, align 8
  %i.cg = zext i16 %i.af to i32
  %i.ch = mul nuw nsw i32 %i.cg, 100
  %i.ci = udiv i32 %i.ch, %i.at                   ; 2 uses
  %i.cj = trunc i32 %i.ci to i16                  ; 6 uses
  %i.ck = icmp ult i16 %i.cj, 25
  br i1 %i.ck, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %convert_sharpness_coeff_binary.exit.1.i
  %i.cl = icmp ult i16 %i.cj, 50
  br i1 %i.cl, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = icmp ult i16 %i.cj, 100
  br i1 %i.cm, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = shl nuw nsw i32 %i.ci, 8
  %i.co = and i32 %i.cn, 16776960
  %i.cp = udiv i32 %i.co, 100
  %i.cq = trunc i32 %i.cp to i16
  br label %convert_sharpness_coeff_binary.exit.2.i

bb.aa:                                            ; preds = %bb.y
  %i.cr = shl nuw i16 %i.cj, 9
  %i.cs = udiv i16 %i.cr, 100
  br label %convert_sharpness_coeff_binary.exit.2.i

bb.ab:                                            ; preds = %bb.x
  %i.ct = shl nuw i16 %i.cj, 10
  %i.cu = udiv i16 %i.ct, 100
  br label %convert_sharpness_coeff_binary.exit.2.i

bb.ac:                                            ; preds = %convert_sharpness_coeff_binary.exit.1.i
  %i.cv = shl nuw i16 %i.cj, 11
  %i.cw = udiv i16 %i.cv, 100
  br label %convert_sharpness_coeff_binary.exit.2.i

convert_sharpness_coeff_binary.exit.2.i:          ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.sink15.i.2.i = phi i16 [ %i.cu, %bb.ab ], [ %i.cq, %bb.z ], [ %i.cs, %bb.aa ], [ %i.cw, %bb.ac ]
  %.sink.i.2.i = phi i16 [ 2, %bb.ab ], [ 0, %bb.z ], [ 1, %bb.aa ], [ 3, %bb.ac ]
  %i.cx = getelementptr i8, ptr %0, i64 1360
  store i16 %.sink15.i.2.i, ptr %i.cx, align 8
  %i.cy = getelementptr i8, ptr %0, i64 1358
  store i16 %.sink.i.2.i, ptr %i.cy, align 2
  %i.cz = zext i16 %i.ai to i32
  %i.da = mul nuw nsw i32 %i.cz, 100
  %i.db = udiv i32 %i.da, %i.at                   ; 2 uses
  %i.dc = trunc i32 %i.db to i16                  ; 6 uses
  %i.dd = icmp ult i16 %i.dc, 25
  br i1 %i.dd, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %convert_sharpness_coeff_binary.exit.2.i
  %i.de = icmp ult i16 %i.dc, 50
  br i1 %i.de, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.df = icmp ult i16 %i.dc, 100
  br i1 %i.df, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dg = shl nuw nsw i32 %i.db, 8
  %i.dh = and i32 %i.dg, 16776960
  %i.di = udiv i32 %i.dh, 100
  %i.dj = trunc i32 %i.di to i16
  br label %convert_sharpness_coeff_binary.exit.3.i

bb.ag:                                            ; preds = %bb.ae
  %i.dk = shl nuw i16 %i.dc, 9
  %i.dl = udiv i16 %i.dk, 100
  br label %convert_sharpness_coeff_binary.exit.3.i

bb.ah:                                            ; preds = %bb.ad
  %i.dm = shl nuw i16 %i.dc, 10
  %i.dn = udiv i16 %i.dm, 100
  br label %convert_sharpness_coeff_binary.exit.3.i

bb.ai:                                            ; preds = %convert_sharpness_coeff_binary.exit.2.i
  %i.do = shl nuw i16 %i.dc, 11
  %i.dp = udiv i16 %i.do, 100
  br label %convert_sharpness_coeff_binary.exit.3.i

convert_sharpness_coeff_binary.exit.3.i:          ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.sink15.i.3.i = phi i16 [ %i.dn, %bb.ah ], [ %i.dj, %bb.af ], [ %i.dl, %bb.ag ], [ %i.dp, %bb.ai ]
  %.sink.i.3.i = phi i16 [ 2, %bb.ah ], [ 0, %bb.af ], [ 1, %bb.ag ], [ 3, %bb.ai ]
  %i.dq = getelementptr i8, ptr %0, i64 1366
  store i16 %.sink15.i.3.i, ptr %i.dq, align 2
  %i.dr = getelementptr i8, ptr %0, i64 1364
  store i16 %.sink.i.3.i, ptr %i.dr, align 4
  %i.ds = zext i16 %i.al to i32
  %i.dt = mul nuw nsw i32 %i.ds, 100
  %i.du = udiv i32 %i.dt, %i.at                   ; 2 uses
  %i.dv = trunc i32 %i.du to i16                  ; 6 uses
  %i.dw = icmp ult i16 %i.dv, 25
  br i1 %i.dw, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %convert_sharpness_coeff_binary.exit.3.i
  %i.dx = icmp ult i16 %i.dv, 50
  br i1 %i.dx, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dy = icmp ult i16 %i.dv, 100
  br i1 %i.dy, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dz = shl nuw nsw i32 %i.du, 8
  %i.ea = and i32 %i.dz, 16776960
  %i.eb = udiv i32 %i.ea, 100
  %i.ec = trunc i32 %i.eb to i16
  br label %convert_sharpness_coeff_binary.exit.4.i

bb.am:                                            ; preds = %bb.ak
  %i.ed = shl nuw i16 %i.dv, 9
  %i.ee = udiv i16 %i.ed, 100
  br label %convert_sharpness_coeff_binary.exit.4.i

bb.an:                                            ; preds = %bb.aj
  %i.ef = shl nuw i16 %i.dv, 10
  %i.eg = udiv i16 %i.ef, 100
  br label %convert_sharpness_coeff_binary.exit.4.i

bb.ao:                                            ; preds = %convert_sharpness_coeff_binary.exit.3.i
  %i.eh = shl nuw i16 %i.dv, 11
  %i.ei = udiv i16 %i.eh, 100
  br label %convert_sharpness_coeff_binary.exit.4.i

convert_sharpness_coeff_binary.exit.4.i:          ; preds = %bb.ao, %bb.an, %bb.am, %bb.al
  %.sink15.i.4.i = phi i16 [ %i.eg, %bb.an ], [ %i.ec, %bb.al ], [ %i.ee, %bb.am ], [ %i.ei, %bb.ao ]
  %.sink.i.4.i = phi i16 [ 2, %bb.an ], [ 0, %bb.al ], [ 1, %bb.am ], [ 3, %bb.ao ]
  %i.ej = getelementptr i8, ptr %0, i64 1372
  store i16 %.sink15.i.4.i, ptr %i.ej, align 4
  %i.ek = getelementptr i8, ptr %0, i64 1370
  store i16 %.sink.i.4.i, ptr %i.ek, align 2
  %i.el = zext i16 %i.ao to i32
  %i.em = mul nuw nsw i32 %i.el, 100
  %i.en = udiv i32 %i.em, %i.at                   ; 2 uses
  %i.eo = trunc i32 %i.en to i16                  ; 6 uses
  %i.ep = icmp ult i16 %i.eo, 25
  br i1 %i.ep, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %convert_sharpness_coeff_binary.exit.4.i
  %i.eq = icmp ult i16 %i.eo, 50
  br i1 %i.eq, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.er = icmp ult i16 %i.eo, 100
  br i1 %i.er, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.es = shl nuw nsw i32 %i.en, 8
  %i.et = and i32 %i.es, 16776960
  %i.eu = udiv i32 %i.et, 100
  %i.ev = trunc i32 %i.eu to i16
  br label %convert_sharpness_coeff_binary.exit.5.i

bb.as:                                            ; preds = %bb.aq
  %i.ew = shl nuw i16 %i.eo, 9
  %i.ex = udiv i16 %i.ew, 100
  br label %convert_sharpness_coeff_binary.exit.5.i

bb.at:                                            ; preds = %bb.ap
  %i.ey = shl nuw i16 %i.eo, 10
  %i.ez = udiv i16 %i.ey, 100
  br label %convert_sharpness_coeff_binary.exit.5.i

bb.au:                                            ; preds = %convert_sharpness_coeff_binary.exit.4.i
  %i.fa = shl nuw i16 %i.eo, 11
  %i.fb = udiv i16 %i.fa, 100
  br label %convert_sharpness_coeff_binary.exit.5.i

convert_sharpness_coeff_binary.exit.5.i:          ; preds = %bb.au, %bb.at, %bb.as, %bb.ar
  %.sink15.i.5.i = phi i16 [ %i.ez, %bb.at ], [ %i.ev, %bb.ar ], [ %i.ex, %bb.as ], [ %i.fb, %bb.au ]
  %.sink.i.5.i = phi i16 [ 2, %bb.at ], [ 0, %bb.ar ], [ 1, %bb.as ], [ 3, %bb.au ]
  %i.fc = getelementptr i8, ptr %0, i64 1378
  store i16 %.sink15.i.5.i, ptr %i.fc, align 2
  %i.fd = getelementptr i8, ptr %0, i64 1376
  store i16 %.sink.i.5.i, ptr %i.fd, align 8
  %i.fe = zext i16 %i.ar to i32
  %i.ff = mul nuw nsw i32 %i.fe, 100
  %i.fg = udiv i32 %i.ff, %i.at                   ; 2 uses
  %i.fh = trunc i32 %i.fg to i16                  ; 6 uses
  %i.fi = icmp ult i16 %i.fh, 25
  br i1 %i.fi, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %convert_sharpness_coeff_binary.exit.5.i
  %i.fj = icmp ult i16 %i.fh, 50
  br i1 %i.fj, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fk = icmp ult i16 %i.fh, 100
  br i1 %i.fk, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fl = shl nuw nsw i32 %i.fg, 8
  %i.fm = and i32 %i.fl, 16776960
  %i.fn = udiv i32 %i.fm, 100
  %i.fo = trunc i32 %i.fn to i16
  br label %intel_casf_scaler_compute_coeff.exit

bb.ay:                                            ; preds = %bb.aw
  %i.fp = shl nuw i16 %i.fh, 9
  %i.fq = udiv i16 %i.fp, 100
  br label %intel_casf_scaler_compute_coeff.exit

bb.az:                                            ; preds = %bb.av
  %i.fr = shl nuw i16 %i.fh, 10
  %i.fs = udiv i16 %i.fr, 100
  br label %intel_casf_scaler_compute_coeff.exit

bb.ba:                                            ; preds = %convert_sharpness_coeff_binary.exit.5.i
  %i.ft = shl nuw i16 %i.fh, 11
  %i.fu = udiv i16 %i.ft, 100
  br label %intel_casf_scaler_compute_coeff.exit

intel_casf_scaler_compute_coeff.exit:             ; preds = %bb.ax, %bb.ay, %bb.az, %bb.ba
  %.sink15.i.6.i = phi i16 [ %i.fs, %bb.az ], [ %i.fo, %bb.ax ], [ %i.fq, %bb.ay ], [ %i.fu, %bb.ba ]
  %.sink.i.6.i = phi i16 [ 2, %bb.az ], [ 0, %bb.ax ], [ 1, %bb.ay ], [ 3, %bb.ba ]
  %i.fv = getelementptr i8, ptr %0, i64 1384
  store i16 %.sink15.i.6.i, ptr %i.fv, align 8
  %i.fw = getelementptr i8, ptr %0, i64 1382
  store i16 %.sink.i.6.i, ptr %i.fw, align 2
  br label %bb.bb

bb.bb:                                            ; preds = %bb.c, %intel_casf_scaler_compute_coeff.exit, %__drm_to_dev.exit
  %.0 = phi i32 [ 0, %intel_casf_scaler_compute_coeff.exit ], [ -22, %__drm_to_dev.exit ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__drm_to_display(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_casf_sharpness_get_config(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #4
  %.pre = load ptr, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %.pre, %bb.b ], [ %i.a, %bb.a ]
  %i.e = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 6 uses
  %i.f = getelementptr i8, ptr %i.d, i64 1664
  %i.g = load i32, ptr %i.f, align 8
  %i.h = shl i32 %i.g, 11
  %i.i = add i32 %i.h, 426672                     ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.i) #4
  %.val.i = load ptr, ptr %i.e, align 8
  %i.j = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #4 ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 144
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i32 %i.l(ptr noundef %i.j, i32 %i.i, i1 noundef zeroext true) #4, !inline_history !10 ; 4 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.i) #4
  %.not32 = icmp sgt i32 %i.m, -1
  br i1 %.not32, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = and i32 %i.m, 61440
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %.critedge, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.e, %bb.f
  %i.s = phi ptr [ %i.r, %bb.f ], [ null, %bb.e ]
  %i.t = tail call ptr @dev_driver_string(ptr noundef %i.s) #4 ; 0 uses
  %i.u = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.3, i32 135, i32 2321, i64 16) #5, !srcloc !12
  %i.v = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i37 = icmp eq ptr %i.v, null
  br i1 %.not.i37, label %__drm_to_dev.exit38, label %bb.g

bb.g:                                             ; preds = %__drm_to_dev.exit
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  br label %__drm_to_dev.exit38

__drm_to_dev.exit38:                              ; preds = %__drm_to_dev.exit, %bb.g
  %i.y = phi ptr [ %i.x, %bb.g ], [ null, %__drm_to_dev.exit ]
  %i.z = tail call ptr @dev_driver_string(ptr noundef %i.y) #4
  %i.aa = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i39 = icmp eq ptr %i.aa, null
  br i1 %.not.i39, label %__drm_to_dev.exit40, label %bb.h

bb.h:                                             ; preds = %__drm_to_dev.exit38
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  br label %__drm_to_dev.exit40

__drm_to_dev.exit40:                              ; preds = %__drm_to_dev.exit38, %bb.h
  %i.ad = phi ptr [ %i.ac, %bb.h ], [ null, %__drm_to_dev.exit38 ] ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 80
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i41 = icmp eq ptr %i.af, null
  br i1 %.not.i41, label %bb.i, label %dev_name.exit44

bb.i:                                             ; preds = %__drm_to_dev.exit40
  %.val.i43 = load ptr, ptr %i.ad, align 8
  br label %dev_name.exit44

dev_name.exit44:                                  ; preds = %__drm_to_dev.exit40, %bb.i
  %.0.i42 = phi ptr [ %.val.i43, %bb.i ], [ %i.af, %__drm_to_dev.exit40 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.u, ptr noundef %i.z, ptr noundef %.0.i42, ptr noundef nonnull @.str.2) #4
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !13
  br label %bb.j

.critedge:                                        ; preds = %bb.d
  %i.ag = lshr i32 %i.m, 8
  %i.ah = trunc i32 %i.ag to i8
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %dev_name.exit44
  %.sink = phi i8 [ %i.ah, %.critedge ], [ 0, %dev_name.exit44 ]
  %i.ai = getelementptr i8, ptr %0, i64 1386
  store i8 %.sink, ptr %i.ai, align 2
  %i.aj = getelementptr i8, ptr %0, i64 1388
  store i8 1, ptr %i.aj, align 4
  %i.ak = trunc i32 %i.m to i8
  %i.al = and i8 %i.ak, 3
  %i.am = getelementptr i8, ptr %0, i64 1387
  store i8 %i.al, ptr %i.am, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_casf_setup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #4
  %.pre.i = load ptr, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %.pre.i, %bb.b ], [ %i.a, %bb.a ]
  %i.e = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 6 uses
  %i.f = getelementptr i8, ptr %i.d, i64 1664     ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = shl i32 %i.g, 11
  %i.i = add i32 %i.h, 426676                     ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.i) #4
  %.val.i.i = load ptr, ptr %i.e, align 8
  %i.j = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #4 ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 176
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef %i.j, i32 %i.i, i32 noundef range(i32 0, 65536) 1024, i1 noundef zeroext true) #4, !inline_history !14
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.i) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.m = load i32, ptr %i.f, align 8
  %i.n = shl i32 %i.m, 11
  %i.o = add i32 %i.n, 426680                     ; 3 uses
  %i.p = getelementptr [2 x i8], ptr @sharpness_lut, i64 %indvars.iv.i
  %i.q = load i16, ptr %i.p, align 2
  %i.r = zext i16 %i.q to i32
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.o) #4
  %.val.i14.i = load ptr, ptr %i.e, align 8
  %i.s = tail call ptr @to_intel_uncore(ptr noundef %.val.i14.i) #4 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 176
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef %i.s, i32 %i.o, i32 noundef range(i32 0, 65536) %i.r, i1 noundef zeroext true) #4, !inline_history !14
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.o) #4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %intel_casf_filter_lut_load.exit, label %bb.d, !llvm.loop !15

intel_casf_filter_lut_load.exit:                  ; preds = %bb.d
  %i.v = load ptr, ptr %0, align 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not.i2 = icmp eq ptr %i.w, null
  br i1 %.not.i2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %intel_casf_filter_lut_load.exit
  %i.x = tail call ptr @__drm_to_display(ptr noundef nonnull %i.w) #4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %intel_casf_filter_lut_load.exit
  %i.y = phi ptr [ %i.x, %bb.e ], [ null, %intel_casf_filter_lut_load.exit ] ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 1476
  %i.aa = load i32, ptr %i.z, align 4
  %.not39.i = icmp eq i32 %i.aa, 1
  br i1 %.not39.i, label %bb.g, label %intel_casf_write_coeff.exit
end_hunk_0
