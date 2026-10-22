Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/8250_platform?download=true
inline.NumInlined: 12
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_serial8250_set_isa_configurator: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad serial8250_set_isa_configurator ; .previous"
    ".section\09\22.initcall6.init\22, \22a\22\09\09"
    "__initcall__kmod_8250__582_351_serial8250_init6:\09\09\09"
    ".long\09serial8250_init - .\09"
    ".previous\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%union.anon = type { i64 }
%struct.acpi_device_id = type { [16 x i8], i64, i32, i32 }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%union.anon.0 = type { ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { ptr }

@nr_uarts = dso_local global i32 4, align 4
@serial8250_isa_config = dso_local local_unnamed_addr global ptr null, align 8
@__UNIQUE_ID_addressable_serial8250_set_isa_configurator_581 = internal global ptr @serial8250_set_isa_configurator, section ".discard.addressable", align 8
@serial8250_isa_init_ports.___done = internal global i8 0, section ".data..do_once", align 1
@serial8250_isa_init_ports.___once_key = internal global { { %struct.atomic_t, [4 x i8], %union.anon } } { { %struct.atomic_t, [4 x i8], %union.anon } { %struct.atomic_t { i32 1 }, [4 x i8] zeroinitializer, %union.anon { i64 1 } } }, align 8
@__mod_device_table__kmod_8250__acpi__acpi_platform_serial_table = internal constant [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [16 x i8] c"RSCV0003\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16
@__UNIQUE_ID_addressable_serial8250_init_583 = internal global ptr @serial8250_init, section ".discard.addressable", align 8
@serial8250_isa_devs = dso_local local_unnamed_addr global ptr null, align 8
@serial8250_reg = external dso_local global %struct.uart_driver, align 8
@__UNIQUE_ID_modinfo_584 = internal constant [39 x i8] c"8250.file=drivers/tty/serial/8250/8250\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_585 = internal constant [17 x i8] c"8250.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_586 = internal constant [59 x i8] c"8250.description=Generic 8250/16x50 serial platform driver\00", section ".modinfo", align 1
@__param_str_share_irqs = internal constant [16 x i8] c"8250.share_irqs\00", align 16
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@share_irqs = internal global i8 1, align 1
@__param_share_irqs = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon.0 } { ptr @__param_str_share_irqs, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 2, [4 x i8] zeroinitializer, %union.anon.0 { ptr @share_irqs } }, section "__param", align 8
@__UNIQUE_ID_modinfo_587 = internal constant [30 x i8] c"8250.parmtype=share_irqs:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_588 = internal constant [75 x i8] c"8250.parm=share_irqs:Share IRQs with other non-8250/16x50 devices (unsafe)\00", section ".modinfo", align 1
@__param_str_nr_uarts = internal constant [14 x i8] c"8250.nr_uarts\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 8
@__param_nr_uarts = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon.0 } { ptr @__param_str_nr_uarts, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, [4 x i8] zeroinitializer, %union.anon.0 { ptr @nr_uarts } }, section "__param", align 8
@__UNIQUE_ID_modinfo_589 = internal constant [28 x i8] c"8250.parmtype=nr_uarts:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_590 = internal constant [61 x i8] c"8250.parm=nr_uarts:Maximum number of UARTs supported. (1-32)\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_591 = internal constant [26 x i8] c"8250.alias=char-major-4-*\00", section ".modinfo", align 1
@univ8250_port_ops = external dso_local global %struct.uart_ops, align 8
@univ8250_port_base_ops = external dso_local local_unnamed_addr global ptr, align 8
@old_serial_port = internal unnamed_addr constant [4 x { i32, i32, i32, i32, i64, i8, [7 x i8], ptr, i16, [6 x i8] }] [{ i32, i32, i32, i32, i64, i8, [7 x i8], ptr, i16, [6 x i8] } { i32 0, i32 115200, i32 1016, i32 4, i64 268435648, i8 0, [7 x i8] zeroinitializer, ptr null, i16 0, [6 x i8] zeroinitializer }, { i32, i32, i32, i32, i64, i8, [7 x i8], ptr, i16, [6 x i8] } { i32 0, i32 115200, i32 760, i32 3, i64 268435648, i8 0, [7 x i8] zeroinitializer, ptr null, i16 0, [6 x i8] zeroinitializer }, { i32, i32, i32, i32, i64, i8, [7 x i8], ptr, i16, [6 x i8] } { i32 0, i32 115200, i32 1000, i32 4, i64 268435648, i8 0, [7 x i8] zeroinitializer, ptr null, i16 0, [6 x i8] zeroinitializer }, { i32, i32, i32, i32, i64, i8, [7 x i8], ptr, i16, [6 x i8] } { i32 0, i32 115200, i32 744, i32 3, i64 268435584, i8 0, [7 x i8] zeroinitializer, ptr null, i16 0, [6 x i8] zeroinitializer }], align 16
@.str = private unnamed_addr constant [55 x i8] c"\016Serial: 8250/16550 driver, %d ports, IRQ sharing %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"serial8250\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"8250\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@serial8250_isa_driver = internal global { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon }, ptr, i8, i8, [6 x i8] } { ptr @serial8250_probe, ptr @serial8250_remove, ptr null, ptr @serial8250_suspend, ptr @serial8250_resume, { ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon } { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, [3 x i8] zeroinitializer, i32 0, ptr null, ptr @__mod_device_table__kmod_8250__acpi__acpi_platform_serial_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.anon zeroinitializer }, ptr null, i8 0, i8 0, [6 x i8] zeroinitializer }, align 8
@.str.7 = private unnamed_addr constant [63 x i8] c"unable to register port at index %d (IO%lx MEM%llx IRQ%d): %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@.str.10 = private unnamed_addr constant [22 x i8] c"no registers defined\0A\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_addressable_serial8250_init_583, ptr @__UNIQUE_ID_addressable_serial8250_set_isa_configurator_581, ptr @__UNIQUE_ID_modinfo_584, ptr @__UNIQUE_ID_modinfo_585, ptr @__UNIQUE_ID_modinfo_586, ptr @__UNIQUE_ID_modinfo_587, ptr @__UNIQUE_ID_modinfo_588, ptr @__UNIQUE_ID_modinfo_589, ptr @__UNIQUE_ID_modinfo_590, ptr @__UNIQUE_ID_modinfo_591, ptr @__mod_device_table__kmod_8250__acpi__acpi_platform_serial_table, ptr @__param_nr_uarts, ptr @__param_share_irqs, ptr @serial8250_exit], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none)
define dso_local void @serial8250_set_isa_configurator(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  store ptr %0, ptr @serial8250_isa_config, align 8
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @serial8250_isa_init_ports() local_unnamed_addr #1 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr @serial8250_isa_init_ports.___once_key, i1 false) #8
          to label %arch_static_branch_jump.exit [label %bb.b], !srcloc !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 0, ptr %i.a, align 8, !annotation !14
  %i.b = call zeroext i1 @__do_once_start(ptr noundef @serial8250_isa_init_ports.___done, ptr noundef nonnull %i.a) #9
  br i1 %i.b, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  call fastcc void @__serial8250_isa_init_ports() #10, !srcloc !16
  call void @__do_once_done(ptr noundef @serial8250_isa_init_ports.___done, ptr noundef @serial8250_isa_init_ports.___once_key, ptr noundef nonnull %i.a, ptr noundef null) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %arch_static_branch_jump.exit

arch_static_branch_jump.exit:                     ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @__serial8250_isa_init_ports() unnamed_addr #1 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @nr_uarts, align 4         ; 2 uses
  %i.b = icmp ugt i32 %i.a, 32
  br i1 %i.b, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store i32 32, ptr @nr_uarts, align 4
  br label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  %.not34 = icmp eq i32 %i.a, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread, %bb.b
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.029 = phi i32 [ %i.d, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.c = tail call ptr @serial8250_setup_port(i32 noundef %.029) #9 ; 0 uses
  %i.d = add nuw i32 %.029, 1                     ; 2 uses
  %i.e = load i32, ptr @nr_uarts, align 4
  %i.f = icmp ult i32 %i.d, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.g = load ptr, ptr @univ8250_port_base_ops, align 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(192) @univ8250_port_ops, ptr noundef align 8 dereferenceable(192) %i.g, i64 192, i1 false)
  tail call void @univ8250_rsa_support(ptr noundef @univ8250_port_ops, ptr noundef %i.g) #9
  %i.h = load i32, ptr @nr_uarts, align 4
  %.not35 = icmp eq i32 %i.h, 0
  br i1 %.not35, label %._crit_edge33, label %.lr.ph32

.lr.ph32:                                         ; preds = %._crit_edge, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %._crit_edge ] ; 4 uses
  %i.i = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.j = tail call ptr @serial8250_get_port(i32 noundef %i.i) #9 ; 11 uses
  %i.k = getelementptr [48 x i8], ptr @old_serial_port, i64 %indvars.iv ; 7 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr i8, ptr %i.j, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %i.k, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr i8, ptr %i.j, i64 168
  store i32 %i.q, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %i.j, i64 176      ; 2 uses
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %i.k, i64 4
  %i.u = load i32, ptr %i.t, align 4
  %i.v = shl i32 %i.u, 4
  %i.w = getelementptr i8, ptr %i.j, i64 184
  store i32 %i.v, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %i.k, i64 16
  %i.y = load i64, ptr %i.x, align 16
  %i.z = getelementptr i8, ptr %i.j, i64 272
  store i64 %i.y, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %i.j, i64 371
  store i8 0, ptr %i.aa, align 1
  %i.ab = getelementptr i8, ptr %i.k, i64 32
  %i.ac = load ptr, ptr %i.ab, align 16
  %i.ad = getelementptr i8, ptr %i.j, i64 16
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr i8, ptr %i.k, i64 24
  %i.af = load i8, ptr %i.ae, align 8
  %i.ag = zext i8 %i.af to i32
  %i.ah = getelementptr i8, ptr %i.j, i64 196
  store i32 %i.ag, ptr %i.ah, align 4
  %i.ai = getelementptr i8, ptr %i.k, i64 40
  %i.aj = load i16, ptr %i.ai, align 8
  %i.ak = trunc i16 %i.aj to i8
  %i.al = getelementptr i8, ptr %i.j, i64 193
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = load i8, ptr @share_irqs, align 1, !range !11, !noundef !12
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph32
  store i64 128, ptr %i.s, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph32
  %i.ao = load ptr, ptr @serial8250_isa_config, align 8 ; 2 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr i8, ptr %i.j, i64 584
  tail call void %i.ao(i32 noundef %i.i, ptr noundef %i.j, ptr noundef %i.ap) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = icmp samesign ult i64 %indvars.iv, 3
  %i.ar = load i32, ptr @nr_uarts, align 4
  %i.as = zext i32 %i.ar to i64
  %i.at = icmp samesign ult i64 %indvars.iv.next, %i.as
  %i.au = select i1 %i.aq, i1 %i.at, i1 false
  br i1 %i.au, label %.lr.ph32, label %._crit_edge33, !llvm.loop !18

._crit_edge33:                                    ; preds = %bb.f, %._crit_edge
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @serial8250_init() #1 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @nr_uarts, align 4
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @serial8250_isa_init_ports() #10
  %i.c = load i32, ptr @nr_uarts, align 4
  %i.d = load i8, ptr @share_irqs, align 1, !range !11, !noundef !12
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = select i1 %i.e, ptr @.str.4, ptr @.str.5
  %i.g = tail call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %i.c, ptr noundef nonnull %i.f) #11 ; 0 uses
  store i32 32, ptr getelementptr inbounds nuw (i8, ptr @serial8250_reg, i64 32), align 8
  %i.h = tail call i32 @uart_register_driver(ptr noundef @serial8250_reg) #9 ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @serial8250_pnp_init() #9  ; 2 uses
  %.not13 = icmp eq i32 %i.i, 0
  br i1 %.not13, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @platform_device_alloc(ptr noundef @.str.2, i32 noundef -1) #9 ; 3 uses
  store ptr %i.j, ptr @serial8250_isa_devs, align 8
  %.not14 = icmp eq ptr %i.j, null
  br i1 %.not14, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 @platform_device_add(ptr noundef nonnull %i.j) #9 ; 2 uses
  %.not15 = icmp eq i32 %i.k, 0
  br i1 %.not15, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @serial8250_isa_devs, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 16
  tail call void @serial8250_register_ports(ptr noundef @serial8250_reg, ptr noundef %i.m) #9
  %i.n = tail call i32 @__platform_driver_register(ptr noundef @serial8250_isa_driver, ptr noundef null, ptr noundef @.str.3) #9 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr @serial8250_isa_devs, align 8
  tail call void @platform_device_del(ptr noundef %i.p) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.06 = phi i32 [ %i.k, %bb.e ], [ %i.n, %bb.g ]
  %i.q = load ptr, ptr @serial8250_isa_devs, align 8
  tail call void @platform_device_put(ptr noundef %i.q) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h
  %.1 = phi i32 [ %.06, %bb.h ], [ -12, %bb.d ]
  tail call void @serial8250_pnp_exit() #9
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i
  %.2 = phi i32 [ %i.i, %bb.c ], [ %.1, %bb.i ]
  tail call void @uart_unregister_driver(ptr noundef @serial8250_reg) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b, %bb.f, %bb.a
  %.0 = phi i32 [ -19, %bb.a ], [ %i.h, %bb.b ], [ %.2, %bb.j ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @serial8250_exit() #1 section ".exit.text" align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @serial8250_isa_devs, align 8
  store ptr null, ptr @serial8250_isa_devs, align 8
  tail call void @platform_driver_unregister(ptr noundef @serial8250_isa_driver) #9
  tail call void @platform_device_unregister(ptr noundef %i.a) #9
  tail call void @serial8250_pnp_exit() #9
  tail call void @uart_unregister_driver(ptr noundef @serial8250_reg) #9
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @serial8250_pnp_exit() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @serial8250_setup_port(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @univ8250_rsa_support(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @serial8250_get_port(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @serial8250_pnp_init() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @serial8250_register_ports(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @platform_device_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @serial8250_probe(ptr noundef %0) #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not = icmp eq ptr %.val, null
end_hunk_0
