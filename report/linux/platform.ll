Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/platform?download=true
inline.NumInlined: 78
inline.NumDeleted: 33
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_bus: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad platform_bus ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_get_resource: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad platform_get_resource ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_get_mem_or_io: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad platform_get_mem_or_io ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_platform_get_and_ioremap_resource: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad devm_platform_get_and_ioremap_resource ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_platform_ioremap_resource: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad devm_platform_ioremap_resource ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_platform_ioremap_resource_byname: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad devm_platform_ioremap_resource_byname ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_get_irq_affinity: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad platform_get_irq_affinity ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_get_irq_optional: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad platform_get_irq_optional ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_get_irq: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad platform_get_irq ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_irq_count: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad platform_irq_count ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_platform_get_irqs_affinity: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad devm_platform_get_irqs_affinity ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_get_resource_byname: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad platform_get_resource_byname ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_get_irq_byname: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad platform_get_irq_byname ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_get_irq_byname_optional: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad platform_get_irq_byname_optional ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_add_devices: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad platform_add_devices ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_device_put: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad platform_device_put ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_device_alloc: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad platform_device_alloc ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_device_add_resources: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad platform_device_add_resources ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_device_add_data: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad platform_device_add_data ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_device_add: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad platform_device_add ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_device_del: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad platform_device_del ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_device_register: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad platform_device_register ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_device_unregister: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad platform_device_unregister ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_device_register_full: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad platform_device_register_full ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol___platform_driver_register: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad __platform_driver_register ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_driver_unregister: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad platform_driver_unregister ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol___platform_driver_probe: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad __platform_driver_probe ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol___platform_create_bundle: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad __platform_create_bundle ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol___platform_register_drivers: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad __platform_register_drivers ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_unregister_drivers: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad platform_unregister_drivers ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_bus_type: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad platform_bus_type ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_find_device_by_driver: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad platform_find_device_by_driver ; .previous"

%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.anon = type { ptr, %struct.spinlock }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, ptr }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr, i8 }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_linked_node, ptr, i8, i8, i8, i8, i8, i64, ptr }
%struct.timerqueue_linked_node = type { %struct.rb_node_linked, i64 }
%struct.rb_node_linked = type { %struct.rb_node, ptr, ptr }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.static_call_key = type { ptr, %union.anon.3 }
%union.anon.3 = type { i64 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i64] }
%struct.attribute_group = type { ptr, %union.anon.6, ptr, ptr, %union.anon.7, ptr }
%union.anon.6 = type { ptr }
%union.anon.7 = type { ptr }
%union.anon.8 = type { ptr }
%union.anon.9 = type { ptr }

@.str = private unnamed_addr constant [9 x i8] c"platform\00", align 1
@platform_bus = dso_local global { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], [1 x i64] } { %struct.kobject zeroinitializer, ptr null, ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.anon zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, [1 x i64] zeroinitializer }, align 8
@__UNIQUE_ID_addressable_platform_bus_513 = internal global ptr @platform_bus, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_platform_get_resource_514 = internal global ptr @platform_get_resource, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_platform_get_mem_or_io_515 = internal global ptr @platform_get_mem_or_io, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_devm_platform_get_and_ioremap_resource_516 = internal global ptr @devm_platform_get_and_ioremap_resource, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_devm_platform_ioremap_resource_517 = internal global ptr @devm_platform_ioremap_resource, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_devm_platform_ioremap_resource_byname_518 = internal global ptr @devm_platform_ioremap_resource_byname, section ".discard.addressable", align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"0 is an invalid IRQ number\0A\00", align 1
@platform_get_irq_affinity.__UNIQUE_ID_addressable___SCK__WARN_trap_519 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@__SCK__WARN_trap = external dso_local global %struct.static_call_key, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"drivers/base/platform.c\00", align 1
@__UNIQUE_ID_addressable_platform_get_irq_affinity_520 = internal global ptr @platform_get_irq_affinity, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_platform_get_irq_optional_521 = internal global ptr @platform_get_irq_optional, section ".discard.addressable", align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"IRQ index %u not found\0A\00", align 1
@__UNIQUE_ID_addressable_platform_get_irq_522 = internal global ptr @platform_get_irq, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_platform_irq_count_523 = internal global ptr @platform_irq_count, section ".discard.addressable", align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"devm_platform_get_irqs_affinity_release\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"failed to update irq%d affinity descriptor (%d)\0A\00", align 1
@__UNIQUE_ID_addressable_devm_platform_get_irqs_affinity_524 = internal global ptr @devm_platform_get_irqs_affinity, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_platform_get_resource_byname_525 = internal global ptr @platform_get_resource_byname, section ".discard.addressable", align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"IRQ %s not found\0A\00", align 1
@__UNIQUE_ID_addressable_platform_get_irq_byname_527 = internal global ptr @platform_get_irq_byname, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_platform_get_irq_byname_optional_528 = internal global ptr @platform_get_irq_byname_optional, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_platform_add_devices_529 = internal global ptr @platform_add_devices, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_platform_device_put_530 = internal global ptr @platform_device_put, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_platform_device_alloc_531 = internal global ptr @platform_device_alloc, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_platform_device_add_resources_532 = internal global ptr @platform_device_add_resources, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_platform_device_add_data_533 = internal global ptr @platform_device_add_data, section ".discard.addressable", align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@platform_devid_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"%s.%d.auto\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 8
@ioport_resource = external dso_local global %struct.resource, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"failed to claim resource %d: %pR\0A\00", align 1
@__UNIQUE_ID_addressable_platform_device_add_534 = internal global ptr @platform_device_add, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_platform_device_del_535 = internal global ptr @platform_device_del, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_platform_device_register_536 = internal global ptr @platform_device_register, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_platform_device_unregister_537 = internal global ptr @platform_device_unregister, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_platform_device_register_full_538 = internal global ptr @platform_device_register_full, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable___platform_driver_register_539 = internal global ptr @__platform_driver_register, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_platform_driver_unregister_540 = internal global ptr @platform_driver_unregister, section ".discard.addressable", align 8
@.str.11 = private unnamed_addr constant [67 x i8] c"\013%s: drivers registered with %s can not be probed asynchronously\0A\00", align 1
@__func__.__platform_driver_probe = private unnamed_addr constant [24 x i8] c"__platform_driver_probe\00", align 1
@__UNIQUE_ID_addressable___platform_driver_probe_541 = internal global ptr @__platform_driver_probe, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable___platform_create_bundle_542 = internal global ptr @__platform_create_bundle, section ".discard.addressable", align 8
@.str.12 = private unnamed_addr constant [46 x i8] c"\013failed to register platform driver %ps: %d\0A\00", align 1
@__UNIQUE_ID_addressable___platform_register_drivers_543 = internal global ptr @__platform_register_drivers, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_platform_unregister_drivers_544 = internal global ptr @platform_unregister_drivers, section ".discard.addressable", align 8
@platform_dev_groups = internal global [2 x ptr] [ptr @platform_dev_group, ptr null], align 16
@platform_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @platform_pm_suspend, ptr @platform_pm_resume, ptr @platform_pm_freeze, ptr @platform_pm_thaw, ptr @platform_pm_poweroff, ptr @platform_pm_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_generic_runtime_suspend, ptr @pm_generic_runtime_resume, ptr null }, align 8
@platform_bus_type = dso_local constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, [6 x i8] } { ptr @.str, ptr null, ptr null, ptr @platform_dev_groups, ptr null, ptr @platform_match, ptr @platform_uevent, ptr @platform_probe, ptr null, ptr @platform_remove, ptr @platform_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @platform_dma_configure, ptr @platform_dma_cleanup, ptr @platform_dev_pm_ops, i8 1, i8 0, [6 x i8] zeroinitializer }, align 8
@__UNIQUE_ID_addressable_platform_bus_type_546 = internal global ptr @platform_bus_type, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_platform_find_device_by_driver_547 = internal global ptr @platform_find_device_by_driver, section ".discard.addressable", align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@__platform_get_irq_byname.__UNIQUE_ID_addressable___SCK__WARN_trap_526 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@platform_dev_group = internal constant %struct.attribute_group { ptr null, %union.anon.6 { ptr @platform_dev_attrs_visible }, ptr null, ptr null, %union.anon.7 { ptr @platform_dev_attrs }, ptr null }, align 8
@platform_dev_attrs = internal global [3 x ptr] [ptr @dev_attr_modalias, ptr @dev_attr_numa_node, ptr null], align 16
@.str.16 = private unnamed_addr constant [10 x i8] c"numa_node\00", align 1
@dev_attr_numa_node = internal global { { ptr, i16, [6 x i8] }, %union.anon.8, %union.anon.9 } { { ptr, i16, [6 x i8] } { ptr @.str.16, i16 292, [6 x i8] zeroinitializer }, %union.anon.8 { ptr @numa_node_show }, %union.anon.9 zeroinitializer }, align 8
@.str.18 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@dev_attr_modalias = internal global { { ptr, i16, [6 x i8] }, %union.anon.8, %union.anon.9 } { { ptr, i16, [6 x i8] } { ptr @.str.19, i16 292, [6 x i8] zeroinitializer }, %union.anon.8 { ptr @modalias_show }, %union.anon.9 zeroinitializer }, align 8
@.str.21 = private unnamed_addr constant [13 x i8] c"platform:%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"MODALIAS=%s%s\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"platform:\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"probe deferral not supported\0A\00", align 1
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_addressable___platform_create_bundle_542, ptr @__UNIQUE_ID_addressable___platform_driver_probe_541, ptr @__UNIQUE_ID_addressable___platform_driver_register_539, ptr @__UNIQUE_ID_addressable___platform_register_drivers_543, ptr @__UNIQUE_ID_addressable_devm_platform_get_and_ioremap_resource_516, ptr @__UNIQUE_ID_addressable_devm_platform_get_irqs_affinity_524, ptr @__UNIQUE_ID_addressable_devm_platform_ioremap_resource_517, ptr @__UNIQUE_ID_addressable_devm_platform_ioremap_resource_byname_518, ptr @__UNIQUE_ID_addressable_platform_add_devices_529, ptr @__UNIQUE_ID_addressable_platform_bus_513, ptr @__UNIQUE_ID_addressable_platform_bus_type_546, ptr @__UNIQUE_ID_addressable_platform_device_add_534, ptr @__UNIQUE_ID_addressable_platform_device_add_data_533, ptr @__UNIQUE_ID_addressable_platform_device_add_resources_532, ptr @__UNIQUE_ID_addressable_platform_device_alloc_531, ptr @__UNIQUE_ID_addressable_platform_device_del_535, ptr @__UNIQUE_ID_addressable_platform_device_put_530, ptr @__UNIQUE_ID_addressable_platform_device_register_536, ptr @__UNIQUE_ID_addressable_platform_device_register_full_538, ptr @__UNIQUE_ID_addressable_platform_device_unregister_537, ptr @__UNIQUE_ID_addressable_platform_driver_unregister_540, ptr @__UNIQUE_ID_addressable_platform_find_device_by_driver_547, ptr @__UNIQUE_ID_addressable_platform_get_irq_522, ptr @__UNIQUE_ID_addressable_platform_get_irq_affinity_520, ptr @__UNIQUE_ID_addressable_platform_get_irq_byname_527, ptr @__UNIQUE_ID_addressable_platform_get_irq_byname_optional_528, ptr @__UNIQUE_ID_addressable_platform_get_irq_optional_521, ptr @__UNIQUE_ID_addressable_platform_get_mem_or_io_515, ptr @__UNIQUE_ID_addressable_platform_get_resource_514, ptr @__UNIQUE_ID_addressable_platform_get_resource_byname_525, ptr @__UNIQUE_ID_addressable_platform_irq_count_523, ptr @__UNIQUE_ID_addressable_platform_unregister_drivers_544, ptr @__platform_get_irq_byname.__UNIQUE_ID_addressable___SCK__WARN_trap_526, ptr @platform_get_irq_affinity.__UNIQUE_ID_addressable___SCK__WARN_trap_519], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define dso_local ptr @platform_get_resource(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 800
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 808
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = zext i32 %1 to i64
  %wide.trip.count = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.01118 = phi i32 [ %2, %.lr.ph ], [ %.2.a, %bb.c ] ; 2 uses
  %i.f = getelementptr [64 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 24
  %.val = load i64, ptr %i.g, align 8
  %i.h = and i64 %.val, 7936
  %3 = icmp eq i64 %i.h, %i.e                     ; 2 uses
  %4 = icmp eq i32 %.01118, 0
  %.not16 = select i1 %3, i1 %4, i1 false
  br i1 %.not16, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = sext i1 %3 to i32
  %.2.a = add i32 %.01118, %i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  %.214 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.f, %bb.b ]
  ret ptr %.214
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define dso_local ptr @platform_get_mem_or_io(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 800
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not20 = icmp eq i32 %i.b, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 808
  %i.d = load ptr, ptr %i.c, align 8
  %wide.trip.count = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.01016 = phi i32 [ %1, %.lr.ph ], [ %.2.a, %bb.c ] ; 2 uses
  %i.e = getelementptr [64 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %.val = load i64, ptr %i.f, align 8
  %i.g = and i64 %.val, 768
  %.not = icmp eq i64 %i.g, 0                     ; 2 uses
  %i.h = icmp ne i32 %.01016, 0
  %i.i = select i1 %.not, i1 true, i1 %i.h
  br i1 %i.i, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %not..not = xor i1 %.not, true
  %i.j = sext i1 %not..not to i32
  %.2.a = add i32 %.01016, %i.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  %.213 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.e, %bb.b ]
  ret ptr %.213
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 800
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %platform_get_resource.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 808
  %i.d = load ptr, ptr %i.c, align 8
  %wide.trip.count.i = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %.01118.i = phi i32 [ %1, %.lr.ph.i ], [ %.2.i.a, %bb.c ] ; 2 uses
  %i.e = getelementptr [64 x i8], ptr %i.d, i64 %indvars.iv.i ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %.val.i = load i64, ptr %i.f, align 8
  %i.g = and i64 %.val.i, 7936
  %3 = icmp eq i64 %i.g, 512                      ; 2 uses
  %4 = icmp eq i32 %.01118.i, 0
  %.not16.i = select i1 %3, i1 %4, i1 false
  br i1 %.not16.i, label %platform_get_resource.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sext i1 %3 to i32
  %.2.i.a = add i32 %.01118.i, %i.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %platform_get_resource.exit, label %bb.b, !llvm.loop !10

platform_get_resource.exit:                       ; preds = %bb.b, %bb.c, %bb.a
  %.214.i = phi ptr [ null, %bb.a ], [ %i.e, %bb.b ], [ null, %bb.c ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %platform_get_resource.exit
  store ptr %.214.i, ptr %2, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %platform_get_resource.exit
  %i.i = getelementptr i8, ptr %0, i64 16
  %i.j = tail call ptr @devm_ioremap_resource(ptr noundef %i.i, ptr noundef %.214.i) #15
  ret ptr %i.j
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 800
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %devm_platform_get_and_ioremap_resource.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 808
  %i.d = load ptr, ptr %i.c, align 8
  %wide.trip.count.i.i = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 2 uses
  %.01118.i.i = phi i32 [ %1, %.lr.ph.i.i ], [ %.2.i.i.a, %bb.c ] ; 2 uses
  %i.e = getelementptr [64 x i8], ptr %i.d, i64 %indvars.iv.i.i ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %.val.i.i = load i64, ptr %i.f, align 8
  %i.g = and i64 %.val.i.i, 7936
  %2 = icmp eq i64 %i.g, 512                      ; 2 uses
  %3 = icmp eq i32 %.01118.i.i, 0
  %.not16.i.i = select i1 %2, i1 %3, i1 false
  br i1 %.not16.i.i, label %devm_platform_get_and_ioremap_resource.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sext i1 %2 to i32
  %.2.i.i.a = add i32 %.01118.i.i, %i.h
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %devm_platform_get_and_ioremap_resource.exit, label %bb.b, !llvm.loop !10

devm_platform_get_and_ioremap_resource.exit:      ; preds = %bb.b, %bb.c, %bb.a
  %.214.i.i = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.e, %bb.b ]
  %i.i = getelementptr i8, ptr %0, i64 16
  %i.j = tail call ptr @devm_ioremap_resource(ptr noundef %i.i, ptr noundef %.214.i.i) #15
  ret ptr %i.j
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 800
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not21.i = icmp eq i32 %i.b, 0
  br i1 %.not21.i, label %platform_get_resource_byname.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 808
  %i.d = load ptr, ptr %i.c, align 8
  %wide.trip.count.i = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.e = getelementptr [64 x i8], ptr %i.d, i64 %indvars.iv.i ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.e, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %.val.i = load i64, ptr %i.h, align 8
  %i.i = and i64 %.val.i, 7936
  %i.j = icmp eq i64 %i.i, 512
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef readonly %1) #15
  %.not14.i = icmp eq i32 %i.k, 0
  br i1 %.not14.i, label %platform_get_resource_byname.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %platform_get_resource_byname.exit, label %bb.b, !llvm.loop !14

platform_get_resource_byname.exit:                ; preds = %bb.d, %bb.e, %bb.a
  %.2.i = phi ptr [ null, %bb.a ], [ null, %bb.e ], [ %i.e, %bb.d ]
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = tail call ptr @devm_ioremap_resource(ptr noundef %i.l, ptr noundef %.2.i) #15
  ret ptr %i.m
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define dso_local ptr @platform_get_resource_byname(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 800
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not21 = icmp eq i32 %i.b, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 808
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = zext i32 %1 to i64
  %wide.trip.count = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.f = getelementptr [64 x i8], ptr %i.d, i64 %indvars.iv ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %.val = load i64, ptr %i.i, align 8
  %i.j = and i64 %.val, 7936
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef %2) #15
  %.not14 = icmp eq i32 %i.l, 0
  br i1 %.not14, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.e, %bb.d, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %i.f, %bb.d ], [ null, %bb.e ]
  ret ptr %.2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @platform_get_irq_affinity(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = tail call ptr @__dev_fwnode(ptr noundef %i.a) #15 ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 800
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 808
  %i.f = load ptr, ptr %i.e, align 8
  %wide.trip.count.i = zext i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %.01118.i = phi i32 [ %1, %.lr.ph.i ], [ %.2.i, %bb.c ] ; 2 uses
  %i.g = getelementptr [64 x i8], ptr %i.f, i64 %indvars.iv.i ; 5 uses
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %.val.i = load i64, ptr %i.h, align 8
  %i.i = and i64 %.val.i, 7936
  %3 = icmp eq i64 %i.i, 1024                     ; 2 uses
  %4 = icmp eq i32 %.01118.i, 0
  %.not16.i = select i1 %3, i1 %4, i1 false
  br i1 %.not16.i, label %platform_get_resource.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sext i1 %3 to i32
  %.2.i = add i32 %.01118.i, %i.j
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread, label %bb.b, !llvm.loop !10

.thread:                                          ; preds = %bb.c, %bb.a
  %i.k = tail call zeroext i1 @is_acpi_device_node(ptr noundef %i.b) #15 ; 0 uses
  br label %.critedge

platform_get_resource.exit:                       ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.g, i64 24       ; 3 uses
  %i.m = tail call zeroext i1 @is_acpi_device_node(ptr noundef %i.b) #15
  %i.n = icmp ne ptr %i.g, null                   ; 2 uses
  %or.cond7 = and i1 %i.n, %i.m
  br i1 %or.cond7, label %bb.d, label %bb.f

bb.d:                                             ; preds = %platform_get_resource.exit
  %i.o = load i64, ptr %i.l, align 8
  %i.p = and i64 %i.o, 268435456
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.thread93, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call zeroext i1 @is_acpi_device_node(ptr noundef %i.b) #15 ; 0 uses
  br label %.critedge73.thread

bb.f:                                             ; preds = %platform_get_resource.exit
  br i1 %i.n, label %.thread93, label %.critedge

.thread93:                                        ; preds = %bb.d, %bb.f
  %i.r = load i64, ptr %i.l, align 8
  %i.s = and i64 %i.r, 255
  %.not68 = icmp eq i64 %i.s, 0
  br i1 %.not68, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.thread93
  %i.t = load i64, ptr %i.g, align 8
  %i.u = trunc i64 %i.t to i32
  %i.v = tail call ptr @irq_get_irq_data(i32 noundef %i.u) #15 ; 2 uses
  %.not69 = icmp eq ptr %i.v, null
  br i1 %.not69, label %.critedge73.thread, label %.thread78

.thread78:                                        ; preds = %bb.g
  %i.w = load i64, ptr %i.l, align 8
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr i8, ptr %i.v, i64 16       ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = and i32 %i.aa, -16
  store i32 %i.ab, ptr %i.z, align 8
  %i.ac = and i32 %i.x, 15
  %i.ad = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = or i32 %i.ae, %i.ac
  store i32 %i.af, ptr %i.ad, align 8
  %i.ag = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = or i32 %i.ah, 33554432
  store i32 %i.ai, ptr %i.ag, align 8
  br label %bb.j

.critedge:                                        ; preds = %.thread, %bb.f
  %i.aj = icmp eq i32 %1, 0
  br i1 %i.aj, label %bb.h, label %.critedge73.thread

bb.h:                                             ; preds = %.critedge
  %i.ak = tail call zeroext i1 @is_acpi_device_node(ptr noundef %i.b) #15
  br i1 %i.ak, label %bb.i, label %.critedge73.thread

bb.i:                                             ; preds = %bb.h
  %i.al = tail call zeroext i1 @is_acpi_device_node(ptr noundef %i.b) #15 ; 0 uses
  br label %.critedge73.thread

bb.j:                                             ; preds = %.thread78, %.thread93
  %i.am = load i64, ptr %i.g, align 8
  %i.an = trunc i64 %i.am to i32                  ; 4 uses
  %.not70 = icmp eq i32 %i.an, 0
  br i1 %.not70, label %bb.k, label %.critedge73, !prof !15

bb.k:                                             ; preds = %bb.j
  %i.ao = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 249, i32 2321, i64 16) #16, !srcloc !16
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ao) #15
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !17
  br label %.critedge73.thread

.critedge73:                                      ; preds = %bb.j
  %i.ap = icmp sgt i32 %i.an, 0
  %i.aq = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.aq, %i.ap
  br i1 %or.cond5, label %bb.l, label %.critedge73.thread

bb.l:                                             ; preds = %.critedge73
  %i.ar = tail call ptr @__dev_fwnode(ptr noundef %i.a) #15 ; 2 uses
  %i.as = tail call zeroext i1 @is_acpi_device_node(ptr noundef %i.ar) #15
  br i1 %i.as, label %bb.m, label %get_irq_affinity.exit

bb.m:                                             ; preds = %bb.l
  %i.at = tail call zeroext i1 @is_acpi_device_node(ptr noundef %i.ar) #15 ; 0 uses
  br label %get_irq_affinity.exit

get_irq_affinity.exit:                            ; preds = %bb.l, %bb.m
  store ptr @__cpu_possible_mask, ptr %2, align 8
  br label %.critedge73.thread

.critedge73.thread:                               ; preds = %bb.e, %bb.h, %bb.i, %.critedge, %bb.g, %bb.k, %.critedge73, %get_irq_affinity.exit
  %.0 = phi i32 [ -22, %bb.k ], [ %i.an, %get_irq_affinity.exit ], [ %i.an, %.critedge73 ], [ -6, %bb.g ], [ -6, %.critedge ], [ -6, %bb.i ], [ -6, %bb.h ], [ -22, %bb.e ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__dev_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @is_acpi_device_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @platform_get_irq_affinity(ptr noundef %0, i32 noundef %1, ptr noundef null) #17
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @platform_get_irq(ptr noundef %0, i32 noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @platform_get_irq_affinity(ptr noundef %0, i32 noundef %1, ptr noundef null) #17 ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %i.c, i32 noundef %i.a, ptr noundef nonnull @.str.3, i32 noundef %1) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @platform_irq_count(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.c, %bb.b ]     ; 3 uses
  %i.a = tail call i32 @platform_get_irq_affinity(ptr noundef %0, i32 noundef %.0, ptr noundef null) #17 ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  %i.c = add i32 %.0, 1
  br i1 %i.b, label %bb.b, label %bb.c, !llvm.loop !18

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i32 %i.a, -517
  %..0 = select i1 %i.d, i32 -517, i32 %.0
  ret i32 %..0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @devm_platform_get_irqs_affinity(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) #1 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %3, %2
  br i1 %i.a, label %bb.k, label %.preheader81

.preheader81:                                     ; preds = %bb.b, %.preheader81
  %.0.i = phi i32 [ %i.d, %.preheader81 ], [ 0, %bb.b ] ; 3 uses
  %i.b = tail call i32 @platform_get_irq_affinity(ptr noundef %0, i32 noundef %.0.i, ptr noundef null) #17 ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  %i.d = add i32 %.0.i, 1
  br i1 %i.c, label %.preheader81, label %platform_irq_count.exit, !llvm.loop !18

platform_irq_count.exit:                          ; preds = %.preheader81
  %i.e = icmp eq i32 %i.b, -517
  %..0.i = select i1 %i.e, i32 -517, i32 %.0.i    ; 4 uses
  %i.f = icmp slt i32 %..0.i, 0
  br i1 %i.f, label %bb.k, label %bb.c

bb.c:                                             ; preds = %platform_irq_count.exit
  %i.g = icmp ult i32 %..0.i, %2
  br i1 %i.g, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @irq_calc_affinity_vectors(i32 noundef %2, i32 noundef %..0.i, ptr noundef nonnull %1) #15 ; 2 uses
  %i.i = icmp ult i32 %i.h, %2
  br i1 %i.i, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %3) ; 8 uses
  %i.j = sext i32 %spec.select to i64
  %i.k = shl nsw i64 %i.j, 2
  %i.l = add nsw i64 %i.k, 4
  %i.m = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_platform_get_irqs_affinity_release, i64 noundef %i.l, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.4) #15 ; 7 uses
  %.not72 = icmp eq ptr %i.m, null
  br i1 %.not72, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %spec.select, ptr %i.m, align 4
  %i.n = icmp sgt i32 %spec.select, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.f
  %i.o = getelementptr i8, ptr %0, i64 16
  %i.p = getelementptr i8, ptr %i.m, i64 4
  %wide.trip.count = zext nneg i32 %spec.select to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %platform_get_irq.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %platform_get_irq.exit.thread ] ; 3 uses
  %i.q = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.r = tail call i32 @platform_get_irq_affinity(ptr noundef %0, i32 noundef %i.q, ptr noundef null) #17 ; 3 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %platform_get_irq.exit, label %platform_get_irq.exit.thread

platform_get_irq.exit:                            ; preds = %bb.g
  %i.t = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %i.o, i32 noundef %i.r, ptr noundef nonnull @.str.3, i32 noundef %i.q) #15 ; 3 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %.loopexit, label %platform_get_irq.exit.thread

platform_get_irq.exit.thread:                     ; preds = %bb.g, %platform_get_irq.exit
  %.0.i7577 = phi i32 [ %i.t, %platform_get_irq.exit ], [ %i.r, %bb.g ]
  %i.v = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv
  store i32 %.0.i7577, ptr %i.v, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !19

._crit_edge:                                      ; preds = %platform_get_irq.exit.thread
  %i.w = tail call ptr @irq_create_affinity_masks(i32 noundef %spec.select, ptr noundef nonnull %1) #15 ; 4 uses
  %.not73 = icmp eq ptr %i.w, null
  br i1 %.not73, label %.loopexit, label %.lr.ph89

._crit_edge.thread:                               ; preds = %bb.f
  %i.x = tail call ptr @irq_create_affinity_masks(i32 noundef %spec.select, ptr noundef nonnull %1) #15 ; 2 uses
  %.not73112 = icmp eq ptr %i.x, null
  br i1 %.not73112, label %.loopexit, label %._crit_edge90

.lr.ph89:                                         ; preds = %._crit_edge
  %i.y = getelementptr i8, ptr %i.m, i64 4        ; 2 uses
  %wide.trip.count100 = zext nneg i32 %spec.select to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count100
  br i1 %exitcond101.not, label %._crit_edge90, label %bb.i, !llvm.loop !20

bb.i:                                             ; preds = %.lr.ph89, %bb.h
  %indvars.iv97 = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next98, %bb.h ] ; 4 uses
  %i.z = getelementptr [4 x i8], ptr %i.y, i64 %indvars.iv97
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr [16 x i8], ptr %i.w, i64 %indvars.iv97
  %i.ac = tail call i32 @irq_update_affinity_desc(i32 noundef %i.aa, ptr noundef %i.ab) #15 ; 3 uses
  %.not74 = icmp eq i32 %i.ac, 0
  br i1 %.not74, label %bb.h, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr [4 x i8], ptr %i.y, i64 %indvars.iv97
  %i.ae = getelementptr i8, ptr %0, i64 16
  %i.af = load i32, ptr %i.ad, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ae, ptr noundef nonnull @.str.5, i32 noundef %i.af, i32 noundef %i.ac) #18
  tail call void @kfree(ptr noundef nonnull %i.w) #15
  br label %.loopexit

._crit_edge90:                                    ; preds = %bb.h, %._crit_edge.thread
  %i.ag = phi ptr [ %i.x, %._crit_edge.thread ], [ %i.w, %bb.h ]
  %i.ah = getelementptr i8, ptr %0, i64 16
  tail call void @devres_add(ptr noundef %i.ah, ptr noundef nonnull %i.m) #15
  tail call void @kfree(ptr noundef nonnull %i.ag) #15
  %i.ai = getelementptr i8, ptr %i.m, i64 4
  store ptr %i.ai, ptr %4, align 8
  br label %bb.k

.loopexit:                                        ; preds = %platform_get_irq.exit, %._crit_edge.thread, %._crit_edge, %bb.j
  %.2 = phi i32 [ -12, %._crit_edge ], [ %i.ac, %bb.j ], [ -12, %._crit_edge.thread ], [ %i.t, %platform_get_irq.exit ]
  tail call void @devres_free(ptr noundef nonnull %i.m) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.d, %bb.c, %platform_irq_count.exit, %bb.b, %bb.a, %.loopexit, %._crit_edge90
  %.060 = phi i32 [ -1, %bb.a ], [ -34, %bb.b ], [ %..0.i, %platform_irq_count.exit ], [ -28, %bb.c ], [ -12, %bb.e ], [ %.2, %.loopexit ], [ %spec.select, %._crit_edge90 ], [ -28, %bb.d ]
  ret i32 %.060
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @irq_calc_affinity_vectors(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @devm_platform_get_irqs_affinity_release(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 4
  %i.c = getelementptr i8, ptr %0, i64 784
  %i.d = getelementptr i8, ptr %0, i64 792
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %platform_disable_acpi_irq.exit
  %.015 = phi i32 [ 0, %.lr.ph ], [ %i.r, %platform_disable_acpi_irq.exit ] ; 3 uses
  %i.e = sext i32 %.015 to i64
  %i.f = getelementptr [4 x i8], ptr %i.b, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4
  tail call void @irq_dispose_mapping(i32 noundef %i.g) #15
  %i.h = tail call ptr @__dev_fwnode(ptr noundef %0) #15
  %i.i = tail call zeroext i1 @is_acpi_device_node(ptr noundef %i.h) #15
  br i1 %i.i, label %bb.c, label %platform_disable_acpi_irq.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.c, align 8              ; 2 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %platform_disable_acpi_irq.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.k = load ptr, ptr %i.d, align 8
  %wide.trip.count.i.i = zext i32 %i.j to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 2 uses
  %.01118.i.i = phi i32 [ %.015, %.lr.ph.i.i ], [ %.2.i.i, %bb.e ] ; 2 uses
  %i.l = getelementptr [64 x i8], ptr %i.k, i64 %indvars.iv.i.i ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 24
  %.val.i.i = load i64, ptr %i.m, align 8         ; 2 uses
  %i.n = and i64 %.val.i.i, 7936
  %2 = icmp eq i64 %i.n, 1024                     ; 2 uses
  %3 = icmp eq i32 %.01118.i.i, 0
  %.not16.i.i = select i1 %2, i1 %3, i1 false
  br i1 %.not16.i.i, label %platform_get_resource.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = sext i1 %2 to i32
  %.2.i.i = add i32 %.01118.i.i, %i.o
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %platform_disable_acpi_irq.exit, label %bb.d, !llvm.loop !10

platform_get_resource.exit.i:                     ; preds = %bb.d
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %platform_disable_acpi_irq.exit, label %bb.f

bb.f:                                             ; preds = %platform_get_resource.exit.i
  %i.p = getelementptr i8, ptr %i.l, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.q = or i64 %.val.i.i, 805307392
  store i64 %i.q, ptr %i.p, align 8
  br label %platform_disable_acpi_irq.exit

platform_disable_acpi_irq.exit:                   ; preds = %bb.e, %bb.f, %platform_get_resource.exit.i, %bb.c, %bb.b
  %i.r = add nuw i32 %.015, 1                     ; 2 uses
  %i.s = load i32, ptr %1, align 4
  %i.t = icmp ult i32 %i.r, %i.s
  br i1 %i.t, label %bb.b, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %platform_disable_acpi_irq.exit, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @irq_create_affinity_masks(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @irq_update_affinity_desc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @__platform_get_irq_byname(ptr noundef %0, ptr noundef %1) #17, !srcloc !22 ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %i.c, i32 noundef %i.a, ptr noundef nonnull @.str.6, ptr noundef %1) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @__platform_get_irq_byname(ptr noundef %0, ptr noundef %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = tail call ptr @__dev_fwnode(ptr noundef %i.a) #15
  %i.c = tail call i32 @fwnode_irq_get_byname(ptr noundef %i.b, ptr noundef %1) #15 ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  %i.e = icmp eq i32 %i.c, -517
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %platform_get_resource_byname.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 800
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %.not21.i = icmp eq i32 %i.g, 0
  br i1 %.not21.i, label %platform_get_resource_byname.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 808
  %i.i = load ptr, ptr %i.h, align 8
  %wide.trip.count.i = zext i32 %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.j = getelementptr [64 x i8], ptr %i.i, i64 %indvars.iv.i ; 4 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.f, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.j, i64 24
  %.val.i = load i64, ptr %i.m, align 8
  %i.n = and i64 %.val.i, 7936
  %i.o = icmp eq i64 %i.n, 1024
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef readonly %1) #15
  %.not14.i = icmp eq i32 %i.p, 0
  br i1 %.not14.i, label %platform_get_resource_byname.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %platform_get_resource_byname.exit.thread, label %bb.c, !llvm.loop !14

platform_get_resource_byname.exit:                ; preds = %bb.e
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %platform_get_resource_byname.exit.thread, label %bb.g

bb.g:                                             ; preds = %platform_get_resource_byname.exit
  %i.q = load i64, ptr %i.j, align 8              ; 2 uses
  %.not19 = icmp eq i64 %i.q, 0
  br i1 %.not19, label %bb.h, label %.critedge, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 492, i32 2321, i64 16) #16, !srcloc !23
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.r) #15
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !24
  br label %platform_get_resource_byname.exit.thread

.critedge:                                        ; preds = %bb.g
  %i.s = trunc i64 %i.q to i32
  br label %platform_get_resource_byname.exit.thread

platform_get_resource_byname.exit.thread:         ; preds = %bb.f, %bb.b, %bb.h, %platform_get_resource_byname.exit, %bb.a, %.critedge
  %.0 = phi i32 [ -22, %bb.h ], [ %i.c, %bb.a ], [ %i.s, %.critedge ], [ -6, %platform_get_resource_byname.exit ], [ -6, %bb.b ], [ -6, %bb.f ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @platform_get_irq_byname_optional(ptr noundef %0, ptr noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @__platform_get_irq_byname(ptr noundef %0, ptr noundef %1) #17, !srcloc !25
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @platform_add_devices(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv23 = phi i32 [ -1, %.lr.ph.preheader ], [ %indvars.iv.next24, %bb.k ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.b = getelementptr [8 x i8], ptr %0, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8              ; 7 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16
  tail call void @device_initialize(ptr noundef %i.d) #15
  %i.e = getelementptr i8, ptr %i.c, i64 784
  %i.f = getelementptr i8, ptr %i.c, i64 632
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.c, i64 608      ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  store i64 4294967295, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.i = getelementptr i8, ptr %i.c, i64 600      ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not8.i.i = icmp eq ptr %i.j, null
  br i1 %.not8.i.i, label %bb.d, label %platform_device_register.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.c, i64 776      ; 2 uses
  store i64 4294967295, ptr %i.k, align 8
  store ptr %i.k, ptr %i.i, align 8
  br label %platform_device_register.exit

platform_device_register.exit:                    ; preds = %bb.c, %bb.d
  %i.l = tail call i32 @platform_device_add(ptr noundef %i.c) #17 ; 3 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.k, label %.preheader

.preheader:                                       ; preds = %platform_device_register.exit
  %.not18 = icmp eq i64 %indvars.iv, 0
  br i1 %.not18, label %.loopexit, label %.lr.ph17.preheader

.lr.ph17.preheader:                               ; preds = %.preheader
  %i.m = zext i32 %indvars.iv23 to i64
  br label %.lr.ph17

.lr.ph17:                                         ; preds = %.lr.ph17.preheader, %platform_device_unregister.exit
  %indvars.iv26 = phi i64 [ %i.m, %.lr.ph17.preheader ], [ %indvars.iv.next27, %platform_device_unregister.exit ] ; 3 uses
  %i.n = getelementptr [8 x i8], ptr %0, i64 %indvars.iv26
end_hunk_0
