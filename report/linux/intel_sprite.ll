Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_sprite?download=true
inline.NumInlined: 152
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key_false, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.75 }
%struct.atomic_t = type { i32 }
%union.anon.75 = type { i64 }
%struct.srcu_struct = type { ptr, ptr, i8, ptr }
%struct.static_call_key = type { ptr, %union.anon.76 }
%union.anon.76 = type { i64 }
%struct.cpumask = type { [1 x i64] }

@__UNIQUE_ID_modinfo_560 = internal constant [19 x i8] c"i915.import_ns=PWM\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [44 x i8] c"Cannot rotate and reflect at the same time\0A\00", align 1
@chv_pipe_b_sprite_formats = internal constant [14 x i32] [i32 538982467, i32 909199186, i32 875713112, i32 875709016, i32 875713089, i32 875708993, i32 808669784, i32 808665688, i32 808669761, i32 808665665, i32 1448695129, i32 1431918169, i32 1498831189, i32 1498765654], align 16
@vlv_sprite_formats = internal constant [12 x i32] [i32 538982467, i32 909199186, i32 875713112, i32 875709016, i32 875713089, i32 875708993, i32 808665688, i32 808665665, i32 1448695129, i32 1431918169, i32 1498831189, i32 1498765654], align 16
@vlv_sprite_funcs = internal constant %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @intel_plane_destroy, ptr null, ptr null, ptr @intel_plane_duplicate_state, ptr @intel_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vlv_sprite_format_mod_supported, ptr @intel_plane_format_mod_supported_async }, align 8
@snb_sprite_formats = internal constant [10 x i32] [i32 875713112, i32 875709016, i32 808669784, i32 808665688, i32 1211388504, i32 1211384408, i32 1448695129, i32 1431918169, i32 1498831189, i32 1498765654], align 16
@snb_sprite_funcs = internal constant %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @intel_plane_destroy, ptr null, ptr null, ptr @intel_plane_duplicate_state, ptr @intel_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snb_sprite_format_mod_supported, ptr @intel_plane_format_mod_supported_async }, align 8
@g4x_sprite_formats = internal constant [5 x i32] [i32 875713112, i32 1448695129, i32 1431918169, i32 1498831189, i32 1498765654], align 16
@g4x_sprite_funcs = internal constant %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @intel_plane_destroy, ptr null, ptr null, ptr @intel_plane_duplicate_state, ptr @intel_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @g4x_sprite_format_mod_supported, ptr @intel_plane_format_mod_supported_async }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"sprite %c\00", align 1
@__tracepoint_i915_reg_rw = external dso_local global %struct.tracepoint, align 8
@__do_trace_i915_reg_rw.__trace_check_i915_reg_rw = internal constant [12 x i8] c"i915_reg_rw\00", section "__tracepoint_check", align 1
@cpu_number = external dso_local global i32, section ".data..percpu..hot..cpu_number", align 4
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 8
@__do_trace_i915_reg_rw.__UNIQUE_ID_addressable___SCK__tp_func_i915_reg_rw_540 = internal global ptr @__SCK__tp_func_i915_reg_rw, section ".discard.addressable", align 8
@__SCK__tp_func_i915_reg_rw = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@chv_sprite_update_csc.csc_matrix = internal unnamed_addr constant [2 x [9 x i16]] [[9 x i16] [i16 5743, i16 4096, i16 0, i16 -2925, i16 4096, i16 -1410, i16 0, i16 4096, i16 7258], [9 x i16] [i16 6450, i16 4096, i16 0, i16 -1917, i16 4096, i16 -767, i16 0, i16 4096, i16 7601]], align 16
@.str.2 = private unnamed_addr constant [26 x i8] c"Missing case (%s == %ld)\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"fb->format->format\00", align 1
@vlv_sprite_ctl.__UNIQUE_ID_addressable___SCK__WARN_trap_684 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@__SCK__WARN_trap = external dso_local global %struct.static_call_key, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"drivers/gpu/drm/i915/display/intel_sprite.c\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Source height must be even with interlaced modes\0A\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"Source dimensions (%dx%d) exceed hardware limits (%dx%d - %dx%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"Fetch width (%d) exceeds hardware max with scaling (%u)\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"Stride (%u) exceeds hardware max with scaling (%u)\0A\00", align 1
@ivb_sprite_ctl.__UNIQUE_ID_addressable___SCK__WARN_trap_688 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@g4x_sprite_ctl.__UNIQUE_ID_addressable___SCK__WARN_trap_704 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_modinfo_560, ptr @__do_trace_i915_reg_rw.__UNIQUE_ID_addressable___SCK__tp_func_i915_reg_rw_540, ptr @__do_trace_i915_reg_rw.__trace_check_i915_reg_rw, ptr @g4x_sprite_ctl.__UNIQUE_ID_addressable___SCK__WARN_trap_704, ptr @ivb_sprite_ctl.__UNIQUE_ID_addressable___SCK__WARN_trap_688, ptr @vlv_sprite_ctl.__UNIQUE_ID_addressable___SCK__WARN_trap_684], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @vlv_plane_min_cdclk(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 872
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 3945
  %.val = load i8, ptr %i.c, align 1
  %i.d = getelementptr i8, ptr %1, i64 192
  %.val3 = load ptr, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %.val3, i64 72
  %.val3.val = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %.val3.val, i64 6
  %.val3.val.val = load i8, ptr %i.f, align 2     ; 3 uses
  %i.g = and i8 %.val, 127                        ; 2 uses
  %i.h = zext nneg i8 %i.g to i32
  %i.i = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.j = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 128) %i.h, i64 %i.i) #10, !srcloc !11 ; 2 uses
  %i.k = extractvalue { i32, i64 } %i.j, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.k)
  %i.l = extractvalue { i32, i64 } %i.j, 0
  %i.m = icmp eq i32 %i.l, 3
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  switch i8 %.val3.val.val, label %bb.g [
    i8 8, label %vlv_plane_ratio.exit
    i8 4, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %vlv_plane_ratio.exit

bb.d:                                             ; preds = %bb.a
  %i.n = zext nneg i8 %i.g to i32
  %i.o = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.p = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 128) %i.n, i64 %i.o) #10, !srcloc !11 ; 2 uses
  %i.q = extractvalue { i32, i64 } %i.p, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.q)
  %i.r = extractvalue { i32, i64 } %i.p, 0
  %i.s = icmp eq i32 %i.r, 2
  br i1 %i.s, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  switch i8 %.val3.val.val, label %bb.g [
    i8 8, label %vlv_plane_ratio.exit
    i8 4, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %vlv_plane_ratio.exit

bb.g:                                             ; preds = %bb.e, %bb.b
  br label %vlv_plane_ratio.exit

bb.h:                                             ; preds = %bb.d
  %cond.i = icmp eq i8 %.val3.val.val, 8          ; 2 uses
  %..i = select i1 %cond.i, i32 10, i32 1
  %.2.i = select i1 %cond.i, i32 8, i32 1
  br label %vlv_plane_ratio.exit

vlv_plane_ratio.exit:                             ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %bb.g, %bb.h
  %.sink1.i = phi i32 [ 1, %bb.g ], [ 17, %bb.f ], [ 11, %bb.b ], [ 10, %bb.e ], [ %..i, %bb.h ], [ 18, %bb.c ]
  %.sink.i = phi i32 [ 1, %bb.g ], [ 16, %bb.f ], [ 8, %bb.b ], [ 8, %bb.e ], [ %.2.i, %bb.h ], [ 16, %bb.c ] ; 2 uses
  %i.t = mul i32 %.sink1.i, %i.b
  %i.u = add nsw i32 %.sink.i, -1
  %i.v = add i32 %i.u, %i.t
  %i.w = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sink.i, i1 true)
  %i.x = lshr i32 %i.v, %i.w
  ret i32 %i.x
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ivb_plane_min_cdclk(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 872
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %1, i64 192
  %.val3 = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %.val3, i64 72
  %.val3.val = load ptr, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %.val3.val, i64 6
  %.val3.val.val = load i8, ptr %i.e, align 2     ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 3945
  %.val = load i8, ptr %i.f, align 1
  %i.g = and i8 %.val, 127
  %i.h = zext nneg i8 %i.g to i32
  %i.i = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.j = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 128) %i.h, i64 %i.i) #10, !srcloc !11 ; 2 uses
  %i.k = extractvalue { i32, i64 } %i.j, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.k)
  %i.l = extractvalue { i32, i64 } %i.j, 0
  %i.m = icmp eq i32 %i.l, 2
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  switch i8 %.val3.val.val, label %bb.d [
    i8 8, label %ivb_plane_ratio.exit
    i8 4, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %ivb_plane_ratio.exit

bb.d:                                             ; preds = %bb.b
  br label %ivb_plane_ratio.exit

bb.e:                                             ; preds = %bb.a
  %cond.i = icmp eq i8 %.val3.val.val, 8          ; 2 uses
  %..i = select i1 %cond.i, i32 9, i32 1
  %.2.i = select i1 %cond.i, i32 8, i32 1
  br label %ivb_plane_ratio.exit

ivb_plane_ratio.exit:                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sink1.i = phi i32 [ %..i, %bb.e ], [ 10, %bb.b ], [ 1, %bb.d ], [ 17, %bb.c ]
  %.sink.i = phi i32 [ %.2.i, %bb.e ], [ 8, %bb.b ], [ 1, %bb.d ], [ 16, %bb.c ] ; 2 uses
  %i.n = mul i32 %.sink1.i, %i.b
  %i.o = add nsw i32 %.sink.i, -1
  %i.p = add i32 %i.o, %i.n
  %i.q = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sink.i, i1 true)
  %i.r = lshr i32 %i.p, %i.q
  ret i32 %i.r
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @hsw_plane_min_cdclk(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
hsw_plane_ratio.exit:
  %i.a = getelementptr i8, ptr %0, i64 872
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %1, i64 192
  %.val3 = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %.val3, i64 72
  %.val3.val = load ptr, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %.val3.val, i64 6
  %.val3.val.val = load i8, ptr %i.e, align 2
  %i.f = getelementptr i8, ptr %0, i64 3945
  %.val = load i8, ptr %i.f, align 1
  %i.g = and i8 %.val, 127
  %i.h = zext nneg i8 %i.g to i32
  %i.i = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.j = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 128) %i.h, i64 %i.i) #10, !srcloc !11 ; 2 uses
  %i.k = extractvalue { i32, i64 } %i.j, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.k)
  %i.l = extractvalue { i32, i64 } %i.j, 0
  %i.m = icmp eq i32 %i.l, 2
  %cond1.i = icmp eq i8 %.val3.val.val, 8         ; 3 uses
  %..i = select i1 %i.m, i32 10, i32 9
  %.3.i = select i1 %cond1.i, i32 %..i, i32 1
  %i.n = mul i32 %.3.i, %i.b
  %i.o = select i1 %cond1.i, i32 7, i32 0
  %i.p = add i32 %i.o, %i.n
  %2 = select i1 %cond1.i, i32 3, i32 0
  %3 = lshr i32 %i.p, %2
  ret i32 %3
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @chv_plane_check_rotation(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 204
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 134217728
  %.not8 = icmp eq i64 %i.i, 0
  %i.j = and i32 %i.f, 20
  %i.k = icmp ne i32 %i.j, 20
  %or.cond11 = select i1 %.not8, i1 true, i1 %i.k
  br i1 %or.cond11, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.d, %bb.e
  %i.o = phi ptr [ %i.n, %bb.e ], [ null, %bb.d ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.o, i32 noundef 2, ptr noundef nonnull @.str) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %__drm_to_dev.exit
  %.0 = phi i32 [ -22, %__drm_to_dev.exit ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__drm_to_display(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @intel_sprite_plane_create(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @intel_plane_alloc() #11   ; 37 uses
  %i.b = icmp ugt ptr %i.a, inttoptr (i64 -4096 to ptr)
  br i1 %i.b, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 135266304
  %or.cond93 = icmp eq i64 %i.e, 0
  %i.f = getelementptr i8, ptr %i.a, i64 1464     ; 3 uses
  br i1 %or.cond93, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.a, i64 1440
  store ptr @vlv_sprite_update_noarm, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.a, i64 1448
  store ptr @vlv_sprite_update_arm, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.a, i64 1456
  store ptr @vlv_sprite_disable_arm, ptr %i.i, align 8
  store ptr @vlv_sprite_capture_error, ptr %i.f, align 8
  %i.j = getelementptr i8, ptr %i.a, i64 1472
  store ptr @vlv_sprite_get_hw_state, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %i.a, i64 1480
  store ptr @vlv_sprite_check, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %i.a, i64 1488
  store ptr @i965_plane_surf_offset, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.a, i64 1424
  store ptr @i965_plane_max_stride, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %i.a, i64 1416
  store ptr @vlv_plane_min_alignment, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.a, i64 1496
  store ptr @vlv_plane_min_cdclk, ptr %i.o, align 8
  %i.p = tail call zeroext i1 @intel_scanout_needs_vtd_wa(ptr noundef %0) #11
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.a, i64 1365
  store i8 -128, ptr %i.q, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = load i64, ptr %i.c, align 8
  %i.s = and i64 %i.r, 134217728
  %i.t = icmp ne i64 %i.s, 0
  %i.u = icmp eq i32 %1, 1
  %or.cond = and i1 %i.u, %i.t                    ; 2 uses
  %chv_pipe_b_sprite_formats.vlv_sprite_formats = select i1 %or.cond, ptr @chv_pipe_b_sprite_formats, ptr @vlv_sprite_formats
  %. = select i1 %or.cond, i32 14, i32 12
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr i8, ptr %0, i64 1168
  %i.w = load i16, ptr %i.v, align 8
  %i.x = icmp ugt i16 %i.w, 6
  %i.y = getelementptr i8, ptr %i.a, i64 1440     ; 2 uses
  %i.z = getelementptr i8, ptr %i.a, i64 1448     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.a, i64 1456    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.a, i64 1472    ; 2 uses
  %i.ac = getelementptr i8, ptr %i.a, i64 1480    ; 2 uses
  %i.ad = getelementptr i8, ptr %i.a, i64 1488    ; 2 uses
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  store ptr @ivb_sprite_update_noarm, ptr %i.y, align 8
  store ptr @ivb_sprite_update_arm, ptr %i.z, align 8
  store ptr @ivb_sprite_disable_arm, ptr %i.aa, align 8
  store ptr @ivb_sprite_capture_error, ptr %i.f, align 8
  store ptr @ivb_sprite_get_hw_state, ptr %i.ab, align 8
  store ptr @g4x_sprite_check, ptr %i.ac, align 8
  store ptr @i965_plane_surf_offset, ptr %i.ad, align 8
  %i.ae = load i64, ptr %i.c, align 8
  %i.af = and i64 %i.ae, 18874368
  %or.cond94 = icmp eq i64 %i.af, 0               ; 2 uses
  %spec.select = select i1 %or.cond94, ptr @g4x_sprite_max_stride, ptr @hsw_sprite_max_stride
  %spec.select99 = select i1 %or.cond94, ptr @ivb_sprite_min_cdclk, ptr @hsw_plane_min_cdclk
  %i.ag = getelementptr i8, ptr %i.a, i64 1424
  store ptr %spec.select, ptr %i.ag, align 8
  %i.ah = getelementptr i8, ptr %i.a, i64 1496
  store ptr %spec.select99, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %i.a, i64 1416
  store ptr @g4x_sprite_min_alignment, ptr %i.ai, align 8
  %i.aj = tail call zeroext i1 @intel_scanout_needs_vtd_wa(ptr noundef %0) #11
  br i1 %i.aj, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr i8, ptr %i.a, i64 1365
  store i8 64, ptr %i.ak, align 1
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  store ptr @g4x_sprite_update_noarm, ptr %i.y, align 8
  store ptr @g4x_sprite_update_arm, ptr %i.z, align 8
  store ptr @g4x_sprite_disable_arm, ptr %i.aa, align 8
  store ptr @g4x_sprite_capture_error, ptr %i.f, align 8
  store ptr @g4x_sprite_get_hw_state, ptr %i.ab, align 8
  store ptr @g4x_sprite_check, ptr %i.ac, align 8
  store ptr @i965_plane_surf_offset, ptr %i.ad, align 8
  %i.al = getelementptr i8, ptr %i.a, i64 1424
  store ptr @g4x_sprite_max_stride, ptr %i.al, align 8
  %i.am = getelementptr i8, ptr %i.a, i64 1416
  store ptr @g4x_sprite_min_alignment, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %i.a, i64 1496
  store ptr @g4x_sprite_min_cdclk, ptr %i.an, align 8
  %i.ao = tail call zeroext i1 @intel_scanout_needs_vtd_wa(ptr noundef %0) #11
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr i8, ptr %i.a, i64 1365
  store i8 64, ptr %i.ap, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aq = load i64, ptr %i.c, align 8
  %i.ar = and i64 %i.aq, 262144
  %.not89 = icmp eq i64 %i.ar, 0                  ; 3 uses
  %g4x_sprite_funcs.snb_sprite_funcs = select i1 %.not89, ptr @g4x_sprite_funcs, ptr @snb_sprite_funcs
  %g4x_sprite_formats.snb_sprite_formats = select i1 %.not89, ptr @g4x_sprite_formats, ptr @snb_sprite_formats
  %.95 = select i1 %.not89, i32 5, i32 10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g, %bb.h, %bb.e
  %.085 = phi ptr [ @vlv_sprite_funcs, %bb.e ], [ @snb_sprite_funcs, %bb.g ], [ %g4x_sprite_funcs.snb_sprite_funcs, %bb.k ], [ @snb_sprite_funcs, %bb.h ]
  %.183 = phi ptr [ %chv_pipe_b_sprite_formats.vlv_sprite_formats, %bb.e ], [ @snb_sprite_formats, %bb.g ], [ %g4x_sprite_formats.snb_sprite_formats, %bb.k ], [ @snb_sprite_formats, %bb.h ]
  %.1 = phi i32 [ %., %bb.e ], [ 10, %bb.g ], [ %.95, %bb.k ], [ 10, %bb.h ]
  %i.as = load i64, ptr %i.c, align 8
  %i.at = getelementptr i8, ptr %i.a, i64 1360
  store i32 %1, ptr %i.at, align 8
  %i.au = add i32 %2, 1                           ; 3 uses
  %i.av = getelementptr i8, ptr %i.a, i64 1356
  store i32 %i.au, ptr %i.av, align 4
  %i.aw = shl i32 %1, 3
  %i.ax = add i32 %i.au, %i.aw
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = trunc i64 %i.az to i32
  %i.bb = getelementptr i8, ptr %i.a, i64 1368
  store i32 %i.ba, ptr %i.bb, align 8
  %i.bc = tail call ptr @intel_fb_plane_get_modifiers(ptr noundef %0, i8 noundef zeroext 8) #11 ; 2 uses
  %i.bd = load ptr, ptr %0, align 8
  %i.be = getelementptr i8, ptr %0, i64 1192
  %i.bf = sext i32 %1 to i64
  %i.bg = getelementptr i8, ptr %i.be, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1
end_hunk_0
