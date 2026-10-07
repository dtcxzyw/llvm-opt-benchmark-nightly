Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/libata-scsi?download=true
inline.NumInlined: 338
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dev_attr_unload_heads: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dev_attr_unload_heads ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ata_common_sdev_groups: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ata_common_sdev_groups ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ata_std_bios_param: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ata_std_bios_param ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ata_scsi_unlock_native_capacity: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ata_scsi_unlock_native_capacity ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ata_sas_scsi_ioctl: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ata_sas_scsi_ioctl ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ata_scsi_ioctl: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ata_scsi_ioctl ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ata_scsi_dma_need_drain: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ata_scsi_dma_need_drain ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ata_scsi_sdev_init: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ata_scsi_sdev_init ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ata_scsi_sdev_configure: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ata_scsi_sdev_configure ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ata_scsi_sdev_destroy: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ata_scsi_sdev_destroy ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ata_scsi_retry_deferred_qc: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ata_scsi_retry_deferred_qc ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ata_scsi_eh_timed_out: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ata_scsi_eh_timed_out ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ata_scsi_queuecmd: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ata_scsi_queuecmd ; .previous"

%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%struct.attribute_group = type { ptr, %union.anon.6, ptr, ptr, %union.anon.7, ptr }
%union.anon.6 = type { ptr }
%union.anon.7 = type { ptr }
%struct.scsi_transport_template = type { %struct.transport_container, %struct.transport_container, %struct.transport_container, ptr, i32, i32, i32, i32, i32, i8, ptr }
%struct.transport_container = type { %struct.attribute_container, ptr, ptr }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i64 }
%struct.list_head = type { ptr, ptr }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.scsi_exec_args = type { ptr, i32, ptr, i32, i32, ptr, ptr }
%struct.sg_mapping_iter = type { ptr, ptr, i64, i64, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"unload_heads\00", align 1
@dev_attr_unload_heads = dso_local global { { ptr, i16, [6 x i8] }, %union.anon, %union.anon.0 } { { ptr, i16, [6 x i8] } { ptr @.str, i16 420, [6 x i8] zeroinitializer }, %union.anon { ptr @ata_scsi_park_show }, %union.anon.0 { ptr @ata_scsi_park_store } }, align 8
@__UNIQUE_ID_addressable_dev_attr_unload_heads_657 = internal global ptr @dev_attr_unload_heads, section ".discard.addressable", align 8
@ata_common_sdev_attr_group = internal constant %struct.attribute_group { ptr null, %union.anon.6 zeroinitializer, ptr null, ptr null, %union.anon.7 { ptr @ata_common_sdev_attrs }, ptr null }, align 8
@ata_common_sdev_groups = dso_local global [2 x ptr] [ptr @ata_common_sdev_attr_group, ptr null], align 16
@__UNIQUE_ID_addressable_ata_common_sdev_groups_658 = internal global ptr @ata_common_sdev_groups, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ata_std_bios_param_659 = internal global ptr @ata_std_bios_param, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ata_scsi_unlock_native_capacity_660 = internal global ptr @ata_scsi_unlock_native_capacity, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ata_sas_scsi_ioctl_661 = internal global ptr @ata_sas_scsi_ioctl, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ata_scsi_ioctl_662 = internal global ptr @ata_scsi_ioctl, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ata_scsi_dma_need_drain_665 = internal global ptr @ata_scsi_dma_need_drain, section ".discard.addressable", align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"\013ata%u.%02u: drain buffer allocation failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"\014ata%u.%02u: sector_size=%u > PAGE_SIZE, PIO may malfunction\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"\013ata%u: Failed to create link to scsi device %s\0A\00", align 1
@__UNIQUE_ID_addressable_ata_scsi_sdev_init_675 = internal global ptr @ata_scsi_sdev_init, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ata_scsi_sdev_configure_676 = internal global ptr @ata_scsi_sdev_configure, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ata_scsi_sdev_destroy_677 = internal global ptr @ata_scsi_sdev_destroy, section ".discard.addressable", align 8
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"drivers/ata/libata-scsi.c\00", align 1
@__UNIQUE_ID_addressable_ata_scsi_retry_deferred_qc_680 = internal global ptr @ata_scsi_retry_deferred_qc, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ata_scsi_eh_timed_out_681 = internal global ptr @ata_scsi_eh_timed_out, section ".discard.addressable", align 8
@atapi_passthru16 = external dso_local local_unnamed_addr global i32, align 4
@scsi_command_size_tbl = external dso_local local_unnamed_addr constant [8 x i8], align 1
@__UNIQUE_ID_addressable_ata_scsi_queuecmd_704 = internal global ptr @ata_scsi_queuecmd, section ".discard.addressable", align 8
@ata_scsi_transportt = external dso_local global %struct.scsi_transport_template, align 8
@.str.6 = private unnamed_addr constant [96 x i8] c"\013ata%u: WARNING: synchronous SCSI scan failed without making any progress, switching to async\0A\00", align 1
@system_dfl_long_wq = external dso_local local_unnamed_addr global ptr, align 8
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str.7 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@ata_common_sdev_attrs = internal global [2 x ptr] [ptr @dev_attr_unload_heads, ptr null], align 16
@current_task = external dso_local global ptr, section ".data..percpu..hot..current_task", align 8
@ata_scsi_rbuf_lock = internal global %struct.spinlock zeroinitializer, align 4
@ata_scsi_rbuf = internal global [2048 x i8] zeroinitializer, align 16
@.str.10 = private unnamed_addr constant [46 x i8] c"\014ata%u.%02u: invalid multi_count %u ignored\0A\00", align 1
@libata_allow_tpm = external dso_local local_unnamed_addr global i32, align 4
@def_cache_mpage = internal unnamed_addr constant <{ i8, i8, [18 x i8] }> <{ i8 8, i8 18, [18 x i8] zeroinitializer }>, align 16
@def_control_mpage = internal unnamed_addr constant [12 x i8] c"\0A\0A\02\00\00\00\00\00\FF\FF\00\1E", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"\013ata%u.%02u: NCQ priority must be disabled to enable CDL\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"\014ata%u.%02u: invalid cdb length %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"\014ata%u.%02u: non-matching transfer count (%d/%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"\014ata%u.%02u: invalid service action %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"\014ata%u.%02u: invalid transfer count %d\0A\00", align 1
@ata_to_sense_error.sense_table = internal unnamed_addr constant [14 x [4 x i8]] [[4 x i8] c"\D1\0B\00\00", [4 x i8] c"\D0\0B\00\00", [4 x i8] c"a\04\00\00", [4 x i8] c"\84\0BG\00", [4 x i8] c"7\02\04\00", [4 x i8] c"\09\02\04\00", [4 x i8] c"\01\03\13\00", [4 x i8] c"\02\04\00\00", [4 x i8] c"\08\02\04\00", [4 x i8] c"\10\05!\00", [4 x i8] c" \06(\00", [4 x i8] c"@\03\11\04", [4 x i8] c"\80\03\11\04", [4 x i8] c"\FF\FF\FF\FF"], align 16
@ata_to_sense_error.stat_table = internal unnamed_addr constant [4 x [4 x i8]] [[4 x i8] c"\80\0B\00\00", [4 x i8] c" \04D\00", [4 x i8] c"\04\01\00\00", [4 x i8] c"\FF\FF\FF\FF"], align 16
@system_highpri_wq = external dso_local local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [41 x i8] c"\014ata%u.%02u: WARNING: zero len r/w req\0A\00", align 1
@ata_scsiop_inq_std.versions = internal unnamed_addr constant [6 x i8] c"\00`\03 \03\00", align 1
@__const.ata_scsiop_inq_std.hdr = private unnamed_addr constant [8 x i8] c"\00\00\05\02[\00\00\02", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"libata          \00", align 1
@def_rw_recovery_mpage = internal unnamed_addr constant <{ i8, i8, i8, [9 x i8] }> <{ i8 1, i8 10, i8 -128, [9 x i8] zeroinitializer }>, align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"\016ata%u.%02u: Enabling discard_zeroes_data\0A\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"\014ata%u.%02u: invalid command format %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"\016ata%u.%02u: detaching (SCSI %s)\0A\00", align 1
@system_percpu_wq = external dso_local local_unnamed_addr global ptr, align 8
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_addressable_ata_common_sdev_groups_658, ptr @__UNIQUE_ID_addressable_ata_sas_scsi_ioctl_661, ptr @__UNIQUE_ID_addressable_ata_scsi_dma_need_drain_665, ptr @__UNIQUE_ID_addressable_ata_scsi_eh_timed_out_681, ptr @__UNIQUE_ID_addressable_ata_scsi_ioctl_662, ptr @__UNIQUE_ID_addressable_ata_scsi_queuecmd_704, ptr @__UNIQUE_ID_addressable_ata_scsi_retry_deferred_qc_680, ptr @__UNIQUE_ID_addressable_ata_scsi_sdev_configure_676, ptr @__UNIQUE_ID_addressable_ata_scsi_sdev_destroy_677, ptr @__UNIQUE_ID_addressable_ata_scsi_sdev_init_675, ptr @__UNIQUE_ID_addressable_ata_scsi_unlock_native_capacity_660, ptr @__UNIQUE_ID_addressable_ata_std_bios_param_659, ptr @__UNIQUE_ID_addressable_dev_attr_unload_heads_657], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @ata_scsi_park_show(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -456
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 2216
  %.val = load ptr, ptr %i.c, align 8             ; 10 uses
  %i.d = getelementptr i8, ptr %.val, i64 16      ; 3 uses
  %i.e = load ptr, ptr %i.d, align 16
  tail call void @_raw_spin_lock_irq(ptr noundef %i.e) #15
  %i.f = getelementptr i8, ptr %.val, i64 15816
  %.val.i.i = load i32, ptr %i.f, align 8         ; 2 uses
  %.not17.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not17.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 -308
  %i.h = load i32, ptr %i.g, align 4
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.c, label %__ata_scsi_find_dev.exit.i.thread, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 -304
  %i.j = load i64, ptr %i.i, align 8
  %.not18.i.i = icmp eq i64 %i.j, 0
  br i1 %.not18.i.i, label %bb.f, label %__ata_scsi_find_dev.exit.i.thread, !prof !13

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 -312
  %i.l = load i32, ptr %i.k, align 8
  %.not10.i.i = icmp eq i32 %i.l, 0
  br i1 %.not10.i.i, label %bb.e, label %__ata_scsi_find_dev.exit.i.thread, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %0, i64 -304
  %i.n = load i64, ptr %i.m, align 8
  %.not19.i.i = icmp eq i64 %i.n, 0
  br i1 %.not19.i.i, label %bb.i, label %__ata_scsi_find_dev.exit.i.thread, !prof !13

bb.f:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %0, i64 -312
  %.014.i.i = load i32, ptr %i.o, align 8         ; 2 uses
  %i.p = getelementptr i8, ptr %.val, i64 8256    ; 2 uses
  %i.q = load ptr, ptr %i.p, align 64             ; 3 uses
  %i.r = icmp eq ptr %.val, %i.q
  br i1 %i.r, label %ata_is_host_link.exit.thread.i.i.i.i, label %ata_is_host_link.exit.i.i.i.i

ata_is_host_link.exit.i.i.i.i:                    ; preds = %bb.f
  %i.s = getelementptr i8, ptr %i.q, i64 15808
  %i.t = load ptr, ptr %i.s, align 64
  %i.u = icmp eq ptr %i.p, %i.t
  br i1 %i.u, label %ata_is_host_link.exit.thread.i.i.i.i, label %bb.g

ata_is_host_link.exit.thread.i.i.i.i:             ; preds = %ata_is_host_link.exit.i.i.i.i, %bb.f
  %i.v = getelementptr i8, ptr %i.q, i64 24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = and i64 %i.w, 1
  %.not.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %ata_link_max_devices.exit.i.i.i

bb.g:                                             ; preds = %ata_is_host_link.exit.thread.i.i.i.i, %ata_is_host_link.exit.i.i.i.i
  %i.y = getelementptr i8, ptr %.val, i64 9472
  br label %__ata_scsi_find_dev.exit.i

ata_link_max_devices.exit.i.i.i:                  ; preds = %ata_is_host_link.exit.thread.i.i.i.i
  %i.z = icmp ult i32 %.014.i.i, 2
  br i1 %i.z, label %bb.h, label %__ata_scsi_find_dev.exit.i.thread

bb.h:                                             ; preds = %ata_link_max_devices.exit.i.i.i
  %i.aa = getelementptr i8, ptr %.val, i64 9472
  %i.ab = zext nneg i32 %.014.i.i to i64
  %i.ac = getelementptr [3136 x i8], ptr %i.aa, i64 %i.ab
  br label %__ata_scsi_find_dev.exit.i

bb.i:                                             ; preds = %bb.e
  %i.ad = getelementptr i8, ptr %0, i64 -308
  %.0.i.i = load i32, ptr %i.ad, align 4          ; 2 uses
  %i.ae = icmp ult i32 %.0.i.i, %.val.i.i
  br i1 %i.ae, label %bb.j, label %__ata_scsi_find_dev.exit.i.thread

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr i8, ptr %.val, i64 15824
  %i.ag = load ptr, ptr %i.af, align 16
  %i.ah = zext i32 %.0.i.i to i64
  %i.ai = getelementptr [7552 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 1216
  br label %__ata_scsi_find_dev.exit.i

__ata_scsi_find_dev.exit.i.thread:                ; preds = %bb.c, %bb.d, %bb.e, %bb.b, %ata_link_max_devices.exit.i.i.i, %bb.i
  %i.ak = tail call zeroext i1 @ata_adapter_is_online(ptr noundef %.val) #15 ; 0 uses
  br label %ata_scsi_find_dev.exit.thread

__ata_scsi_find_dev.exit.i:                       ; preds = %bb.j, %bb.h, %bb.g
  %.09.i.i = phi ptr [ %i.y, %bb.g ], [ %i.ac, %bb.h ], [ %i.aj, %bb.j ] ; 6 uses
  %i.al = tail call zeroext i1 @ata_adapter_is_online(ptr noundef %.val) #15
  %.not.i = icmp ne ptr %.09.i.i, null
  %or.cond.not = select i1 %i.al, i1 %.not.i, i1 false, !prof !14
  br i1 %or.cond.not, label %bb.k, label %ata_scsi_find_dev.exit.thread, !prof !15

bb.k:                                             ; preds = %__ata_scsi_find_dev.exit.i
  %i.am = getelementptr i8, ptr %.09.i.i, i64 840
  %.val.i = load i32, ptr %i.am, align 8
  switch i32 %.val.i, label %ata_scsi_find_dev.exit.thread [
    i32 7, label %ata_scsi_find_dev.exit
    i32 5, label %ata_scsi_find_dev.exit
    i32 3, label %ata_scsi_find_dev.exit
    i32 1, label %ata_scsi_find_dev.exit
    i32 9, label %ata_scsi_find_dev.exit
  ], !prof !16

ata_scsi_find_dev.exit:                           ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  %i.an = getelementptr i8, ptr %.09.i.i, i64 24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = and i64 %i.ao, 262144
  %.not23 = icmp eq i64 %i.ap, 0
  br i1 %.not23, label %bb.l, label %ata_scsi_find_dev.exit.thread

bb.l:                                             ; preds = %ata_scsi_find_dev.exit
  %i.aq = load ptr, ptr %.09.i.i, align 64
  %i.ar = load volatile i64, ptr @jiffies, align 64 ; 2 uses
  %i.as = getelementptr i8, ptr %.val, i64 32
  %i.at = load i32, ptr %i.as, align 32
  %i.au = and i32 %i.at, 2
  %.not24 = icmp eq i32 %i.au, 0
  br i1 %.not24, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr i8, ptr %i.aq, i64 1180
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = getelementptr i8, ptr %.09.i.i, i64 8
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = and i32 %i.az, %i.aw
  %.not25 = icmp eq i32 %i.ba, 0
  br i1 %.not25, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr i8, ptr %.09.i.i, i64 848
  %i.bc = load i64, ptr %i.bb, align 16           ; 2 uses
  %i.bd = sub i64 %i.ar, %i.bc
  %i.be = icmp slt i64 %i.bd, 0
  br i1 %i.be, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bf = sub i64 %i.bc, %i.ar
  %i.bg = trunc i64 %i.bf to i32
  br label %bb.p

ata_scsi_find_dev.exit.thread:                    ; preds = %__ata_scsi_find_dev.exit.i.thread, %bb.k, %__ata_scsi_find_dev.exit.i, %ata_scsi_find_dev.exit
  %.0 = phi i32 [ -95, %ata_scsi_find_dev.exit ], [ -19, %__ata_scsi_find_dev.exit.i ], [ -19, %bb.k ], [ -19, %__ata_scsi_find_dev.exit.i.thread ]
  %i.bh = load ptr, ptr %i.d, align 16
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.bh) #15
  br label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.021.ph = phi i32 [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ], [ %i.bg, %bb.o ]
  %i.bi = load ptr, ptr %i.d, align 16
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.bi) #15
  %i.bj = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %.021.ph) #15
  br label %bb.q

bb.q:                                             ; preds = %ata_scsi_find_dev.exit.thread, %bb.p
  %i.bk = phi i32 [ %i.bj, %bb.p ], [ %.0, %ata_scsi_find_dev.exit.thread ]
  %i.bl = sext i32 %i.bk to i64
  ret i64 %i.bl
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ata_scsi_park_store(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i64 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 -456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !annotation !17
  %i.c = call i32 @kstrtoint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %i.a) #15 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %i.c to i64
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4              ; 2 uses
  %i.f = icmp slt i32 %i.e, -2
  br i1 %i.f, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp sgt i32 %i.e, 30000
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 30000, ptr %i.a, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.028 = phi i32 [ -75, %bb.e ], [ 0, %bb.d ]    ; 4 uses
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 2216
  %.val = load ptr, ptr %i.i, align 8             ; 11 uses
  %i.j = getelementptr i8, ptr %.val, i64 16      ; 2 uses
  %i.k = load ptr, ptr %i.j, align 16
  %i.l = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.k) #15
  %i.m = getelementptr i8, ptr %.val, i64 15816
  %.val.i.i = load i32, ptr %i.m, align 8         ; 2 uses
  %.not17.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not17.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %0, i64 -308
  %i.o = load i32, ptr %i.n, align 4
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %bb.h, label %__ata_scsi_find_dev.exit.i.thread, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %0, i64 -304
  %i.q = load i64, ptr %i.p, align 8
  %.not18.i.i = icmp eq i64 %i.q, 0
  br i1 %.not18.i.i, label %bb.k, label %__ata_scsi_find_dev.exit.i.thread, !prof !13

bb.i:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %0, i64 -312
  %i.s = load i32, ptr %i.r, align 8
  %.not10.i.i = icmp eq i32 %i.s, 0
  br i1 %.not10.i.i, label %bb.j, label %__ata_scsi_find_dev.exit.i.thread, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr i8, ptr %0, i64 -304
  %i.u = load i64, ptr %i.t, align 8
  %.not19.i.i = icmp eq i64 %i.u, 0
  br i1 %.not19.i.i, label %bb.n, label %__ata_scsi_find_dev.exit.i.thread, !prof !13

bb.k:                                             ; preds = %bb.h
  %i.v = getelementptr i8, ptr %0, i64 -312
  %.014.i.i = load i32, ptr %i.v, align 8         ; 2 uses
  %i.w = getelementptr i8, ptr %.val, i64 8256    ; 2 uses
  %i.x = load ptr, ptr %i.w, align 64             ; 3 uses
  %i.y = icmp eq ptr %.val, %i.x
  br i1 %i.y, label %ata_is_host_link.exit.thread.i.i.i.i, label %ata_is_host_link.exit.i.i.i.i

ata_is_host_link.exit.i.i.i.i:                    ; preds = %bb.k
  %i.z = getelementptr i8, ptr %i.x, i64 15808
  %i.aa = load ptr, ptr %i.z, align 64
  %i.ab = icmp eq ptr %i.w, %i.aa
  br i1 %i.ab, label %ata_is_host_link.exit.thread.i.i.i.i, label %bb.l

ata_is_host_link.exit.thread.i.i.i.i:             ; preds = %ata_is_host_link.exit.i.i.i.i, %bb.k
  %i.ac = getelementptr i8, ptr %i.x, i64 24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = and i64 %i.ad, 1
  %.not.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %ata_link_max_devices.exit.i.i.i

bb.l:                                             ; preds = %ata_is_host_link.exit.thread.i.i.i.i, %ata_is_host_link.exit.i.i.i.i
  %i.af = getelementptr i8, ptr %.val, i64 9472
  br label %__ata_scsi_find_dev.exit.i

ata_link_max_devices.exit.i.i.i:                  ; preds = %ata_is_host_link.exit.thread.i.i.i.i
  %i.ag = icmp ult i32 %.014.i.i, 2
  br i1 %i.ag, label %bb.m, label %__ata_scsi_find_dev.exit.i.thread

bb.m:                                             ; preds = %ata_link_max_devices.exit.i.i.i
  %i.ah = getelementptr i8, ptr %.val, i64 9472
  %i.ai = zext nneg i32 %.014.i.i to i64
  %i.aj = getelementptr [3136 x i8], ptr %i.ah, i64 %i.ai
  br label %__ata_scsi_find_dev.exit.i

bb.n:                                             ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %0, i64 -308
  %.0.i.i = load i32, ptr %i.ak, align 4          ; 2 uses
  %i.al = icmp ult i32 %.0.i.i, %.val.i.i
  br i1 %i.al, label %bb.o, label %__ata_scsi_find_dev.exit.i.thread

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr i8, ptr %.val, i64 15824
  %i.an = load ptr, ptr %i.am, align 16
  %i.ao = zext i32 %.0.i.i to i64
  %i.ap = getelementptr [7552 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 1216
  br label %__ata_scsi_find_dev.exit.i

__ata_scsi_find_dev.exit.i.thread:                ; preds = %bb.h, %bb.i, %bb.j, %bb.g, %ata_link_max_devices.exit.i.i.i, %bb.n
  %i.ar = call zeroext i1 @ata_adapter_is_online(ptr noundef %.val) #15 ; 0 uses
  br label %ata_scsi_find_dev.exit.thread

__ata_scsi_find_dev.exit.i:                       ; preds = %bb.o, %bb.m, %bb.l
  %.09.i.i = phi ptr [ %i.af, %bb.l ], [ %i.aj, %bb.m ], [ %i.aq, %bb.o ] ; 8 uses
  %i.as = call zeroext i1 @ata_adapter_is_online(ptr noundef %.val) #15
  %.not.i = icmp ne ptr %.09.i.i, null
  %or.cond.not = select i1 %i.as, i1 %.not.i, i1 false, !prof !14
  br i1 %or.cond.not, label %bb.p, label %ata_scsi_find_dev.exit.thread, !prof !15

bb.p:                                             ; preds = %__ata_scsi_find_dev.exit.i
  %i.at = getelementptr i8, ptr %.09.i.i, i64 840
  %.val.i = load i32, ptr %i.at, align 8
  switch i32 %.val.i, label %ata_scsi_find_dev.exit.thread [
    i32 1, label %bb.q
    i32 9, label %bb.q
    i32 3, label %ata_scsi_find_dev.exit.thread.fold.split
    i32 5, label %ata_scsi_find_dev.exit.thread.fold.split
    i32 7, label %ata_scsi_find_dev.exit.thread.fold.split
  ], !prof !20

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.au = load i32, ptr %i.a, align 4             ; 3 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr i8, ptr %.09.i.i, i64 24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = and i64 %i.ax, 262144
  %.not37 = icmp eq i64 %i.ay, 0
  br i1 %.not37, label %ata_deadline.exit, label %ata_scsi_find_dev.exit.thread

ata_deadline.exit:                                ; preds = %bb.r
  %i.az = load volatile i64, ptr @jiffies, align 64
  %i.ba = call i64 @__msecs_to_jiffies(i32 noundef %i.au) #15
  %i.bb = add i64 %i.ba, %i.az
  %i.bc = getelementptr i8, ptr %.09.i.i, i64 848
  store i64 %i.bb, ptr %i.bc, align 16
  %i.bd = load ptr, ptr %.09.i.i, align 64
  %i.be = getelementptr i8, ptr %i.bd, i64 868
  %i.bf = getelementptr i8, ptr %.09.i.i, i64 8
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr [4 x i8], ptr %i.be, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = or i32 %i.bj, 32
  store i32 %i.bk, ptr %i.bi, align 4
  call void @ata_port_schedule_eh(ptr noundef %.val) #15
  %i.bl = getelementptr i8, ptr %.val, i64 16896
  call void @complete(ptr noundef %i.bl) #15
  br label %ata_scsi_find_dev.exit.thread

bb.s:                                             ; preds = %bb.q
  switch i32 %i.au, label %ata_scsi_find_dev.exit.thread [
    i32 -1, label %bb.t
    i32 -2, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr i8, ptr %.09.i.i, i64 24  ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = and i64 %i.bn, -262145
  store i64 %i.bo, ptr %i.bm, align 8
  br label %ata_scsi_find_dev.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.bp = getelementptr i8, ptr %.09.i.i, i64 24  ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = or i64 %i.bq, 262144
  store i64 %i.br, ptr %i.bp, align 8
  br label %ata_scsi_find_dev.exit.thread

ata_scsi_find_dev.exit.thread.fold.split:         ; preds = %bb.p, %bb.p, %bb.p
  br label %ata_scsi_find_dev.exit.thread

ata_scsi_find_dev.exit.thread:                    ; preds = %bb.p, %ata_scsi_find_dev.exit.thread.fold.split, %__ata_scsi_find_dev.exit.i.thread, %__ata_scsi_find_dev.exit.i, %bb.r, %ata_deadline.exit, %bb.u, %bb.t, %bb.s
  %.1 = phi i32 [ %.028, %bb.u ], [ -95, %bb.r ], [ -19, %__ata_scsi_find_dev.exit.i.thread ], [ %.028, %ata_deadline.exit ], [ %.028, %bb.s ], [ %.028, %bb.t ], [ -19, %__ata_scsi_find_dev.exit.i ], [ -19, %bb.p ], [ -95, %ata_scsi_find_dev.exit.thread.fold.split ] ; 2 uses
  %i.bs = load ptr, ptr %i.j, align 16
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.bs, i64 noundef %i.l) #15
  %.not38 = icmp eq i32 %.1, 0
  %i.bt = sext i32 %.1 to i64
  %spec.select = select i1 %.not38, i64 %3, i64 %i.bt
  br label %bb.v

bb.v:                                             ; preds = %ata_scsi_find_dev.exit.thread, %bb.c, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ -22, %bb.c ], [ %spec.select, %ata_scsi_find_dev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local noundef zeroext i1 @ata_scsi_sense_is_valid(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = or i8 %1, %2
  %i.b = or i8 %i.a, %0
  %or.cond5 = icmp ne i8 %i.b, 0
  %i.c = icmp ult i8 %0, 16
  %.0 = and i1 %i.c, %or.cond5
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ata_scsi_set_sense(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 29
  %i.e = and i32 %i.d, 1
  tail call void @scsi_build_sense(ptr noundef %1, i32 noundef %i.e, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @scsi_build_sense(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define dso_local noundef i32 @ata_std_bios_param(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %3) #4 align 16 prefalign(16) {
bb.a:
  store i32 255, ptr %3, align 4
  %i.a = getelementptr i8, ptr %3, i64 4
  store i32 63, ptr %i.a, align 4
  %i.b = udiv i64 %2, 16065
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr i8, ptr %3, i64 8
  store i32 %i.c, ptr %i.d, align 4
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ata_scsi_unlock_native_capacity(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 2216
  %.val = load ptr, ptr %i.b, align 8             ; 11 uses
  %i.c = getelementptr i8, ptr %.val, i64 16      ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16
  %i.e = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.d) #15
  %i.f = getelementptr i8, ptr %.val, i64 15816
  %.val.i.i = load i32, ptr %i.f, align 8         ; 2 uses
  %.not17.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not17.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 148
  %i.h = load i32, ptr %i.g, align 4
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.c, label %__ata_scsi_find_dev.exit.i.thread, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 152
  %i.j = load i64, ptr %i.i, align 8
  %.not18.i.i = icmp eq i64 %i.j, 0
  br i1 %.not18.i.i, label %bb.f, label %__ata_scsi_find_dev.exit.i.thread, !prof !13

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 144
  %i.l = load i32, ptr %i.k, align 8
  %.not10.i.i = icmp eq i32 %i.l, 0
  br i1 %.not10.i.i, label %bb.e, label %__ata_scsi_find_dev.exit.i.thread, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %0, i64 152
  %i.n = load i64, ptr %i.m, align 8
  %.not19.i.i = icmp eq i64 %i.n, 0
  br i1 %.not19.i.i, label %bb.i, label %__ata_scsi_find_dev.exit.i.thread, !prof !13

bb.f:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %0, i64 144
  %.014.i.i = load i32, ptr %i.o, align 8         ; 2 uses
  %i.p = getelementptr i8, ptr %.val, i64 8256    ; 2 uses
  %i.q = load ptr, ptr %i.p, align 64             ; 3 uses
  %i.r = icmp eq ptr %.val, %i.q
  br i1 %i.r, label %ata_is_host_link.exit.thread.i.i.i.i, label %ata_is_host_link.exit.i.i.i.i

ata_is_host_link.exit.i.i.i.i:                    ; preds = %bb.f
  %i.s = getelementptr i8, ptr %i.q, i64 15808
  %i.t = load ptr, ptr %i.s, align 64
  %i.u = icmp eq ptr %i.p, %i.t
  br i1 %i.u, label %ata_is_host_link.exit.thread.i.i.i.i, label %bb.g

ata_is_host_link.exit.thread.i.i.i.i:             ; preds = %ata_is_host_link.exit.i.i.i.i, %bb.f
  %i.v = getelementptr i8, ptr %i.q, i64 24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = and i64 %i.w, 1
  %.not.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %ata_link_max_devices.exit.i.i.i

bb.g:                                             ; preds = %ata_is_host_link.exit.thread.i.i.i.i, %ata_is_host_link.exit.i.i.i.i
  %i.y = getelementptr i8, ptr %.val, i64 9472
  br label %__ata_scsi_find_dev.exit.i

ata_link_max_devices.exit.i.i.i:                  ; preds = %ata_is_host_link.exit.thread.i.i.i.i
  %i.z = icmp ult i32 %.014.i.i, 2
  br i1 %i.z, label %bb.h, label %__ata_scsi_find_dev.exit.i.thread

bb.h:                                             ; preds = %ata_link_max_devices.exit.i.i.i
  %i.aa = getelementptr i8, ptr %.val, i64 9472
  %i.ab = zext nneg i32 %.014.i.i to i64
  %i.ac = getelementptr [3136 x i8], ptr %i.aa, i64 %i.ab
  br label %__ata_scsi_find_dev.exit.i

bb.i:                                             ; preds = %bb.e
  %i.ad = getelementptr i8, ptr %0, i64 148
  %.0.i.i = load i32, ptr %i.ad, align 4          ; 2 uses
  %i.ae = icmp ult i32 %.0.i.i, %.val.i.i
  br i1 %i.ae, label %bb.j, label %__ata_scsi_find_dev.exit.i.thread

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr i8, ptr %.val, i64 15824
  %i.ag = load ptr, ptr %i.af, align 16
  %i.ah = zext i32 %.0.i.i to i64
  %i.ai = getelementptr [7552 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 1216
  br label %__ata_scsi_find_dev.exit.i

__ata_scsi_find_dev.exit.i.thread:                ; preds = %bb.c, %bb.d, %bb.e, %bb.b, %ata_link_max_devices.exit.i.i.i, %bb.i
  %i.ak = tail call zeroext i1 @ata_adapter_is_online(ptr noundef %.val) #15 ; 0 uses
  br label %ata_scsi_find_dev.exit.thread

__ata_scsi_find_dev.exit.i:                       ; preds = %bb.j, %bb.h, %bb.g
  %.09.i.i = phi ptr [ %i.y, %bb.g ], [ %i.ac, %bb.h ], [ %i.aj, %bb.j ] ; 6 uses
  %i.al = tail call zeroext i1 @ata_adapter_is_online(ptr noundef %.val) #15
  %.not.i = icmp ne ptr %.09.i.i, null
  %or.cond.not = select i1 %i.al, i1 %.not.i, i1 false, !prof !14
  br i1 %or.cond.not, label %bb.k, label %ata_scsi_find_dev.exit.thread, !prof !15

bb.k:                                             ; preds = %__ata_scsi_find_dev.exit.i
  %i.am = getelementptr i8, ptr %.09.i.i, i64 840
  %.val.i = load i32, ptr %i.am, align 8
  switch i32 %.val.i, label %ata_scsi_find_dev.exit.thread [
    i32 7, label %ata_scsi_find_dev.exit
    i32 5, label %ata_scsi_find_dev.exit
    i32 3, label %ata_scsi_find_dev.exit
    i32 1, label %ata_scsi_find_dev.exit
    i32 9, label %ata_scsi_find_dev.exit
  ], !prof !16

ata_scsi_find_dev.exit:                           ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  %i.an = getelementptr i8, ptr %.09.i.i, i64 824
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr i8, ptr %.09.i.i, i64 832
  %i.aq = load i64, ptr %i.ap, align 64
  %i.ar = icmp ult i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.l, label %ata_scsi_find_dev.exit.thread

bb.l:                                             ; preds = %ata_scsi_find_dev.exit
  %i.as = getelementptr i8, ptr %.09.i.i, i64 24  ; 2 uses
  %i.at = load i64, ptr %i.as, align 8
  %i.au = or i64 %i.at, 524288
  store i64 %i.au, ptr %i.as, align 8
  %i.av = load ptr, ptr %.09.i.i, align 64
  %i.aw = getelementptr i8, ptr %i.av, i64 864    ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 16
  %i.ay = or i32 %i.ax, 6
  store i32 %i.ay, ptr %i.aw, align 16
  tail call void @ata_port_schedule_eh(ptr noundef %.val) #15
  br label %ata_scsi_find_dev.exit.thread

ata_scsi_find_dev.exit.thread:                    ; preds = %__ata_scsi_find_dev.exit.i.thread, %bb.k, %__ata_scsi_find_dev.exit.i, %bb.l, %ata_scsi_find_dev.exit
  %i.az = load ptr, ptr %i.c, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.az, i64 noundef %i.e) #15
  tail call void @ata_port_wait_eh(ptr noundef %.val) #15
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @ata_scsi_find_dev(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 15816
  %.val.i = load i32, ptr %i.a, align 8           ; 2 uses
  %.not17.i = icmp eq i32 %.val.i, 0
  br i1 %.not17.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 148
  %i.c = load i32, ptr %i.b, align 4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %__ata_scsi_find_dev.exit, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 152
  %i.e = load i64, ptr %i.d, align 8
  %.not18.i = icmp eq i64 %i.e, 0
  br i1 %.not18.i, label %bb.f, label %__ata_scsi_find_dev.exit, !prof !13

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 144
  %i.g = load i32, ptr %i.f, align 8
  %.not10.i = icmp eq i32 %i.g, 0
  br i1 %.not10.i, label %bb.e, label %__ata_scsi_find_dev.exit, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %1, i64 152
  %i.i = load i64, ptr %i.h, align 8
  %.not19.i = icmp eq i64 %i.i, 0
  br i1 %.not19.i, label %bb.i, label %__ata_scsi_find_dev.exit, !prof !13

bb.f:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %1, i64 144
  %.014.i = load i32, ptr %i.j, align 8           ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 8256       ; 2 uses
  %i.l = load ptr, ptr %i.k, align 64             ; 3 uses
  %i.m = icmp eq ptr %0, %i.l
  br i1 %i.m, label %ata_is_host_link.exit.thread.i.i.i, label %ata_is_host_link.exit.i.i.i

ata_is_host_link.exit.i.i.i:                      ; preds = %bb.f
  %i.n = getelementptr i8, ptr %i.l, i64 15808
  %i.o = load ptr, ptr %i.n, align 64
  %i.p = icmp eq ptr %i.k, %i.o
  br i1 %i.p, label %ata_is_host_link.exit.thread.i.i.i, label %bb.g

ata_is_host_link.exit.thread.i.i.i:               ; preds = %ata_is_host_link.exit.i.i.i, %bb.f
  %i.q = getelementptr i8, ptr %i.l, i64 24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = and i64 %i.r, 1
  %.not.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i, label %bb.g, label %ata_link_max_devices.exit.i.i

bb.g:                                             ; preds = %ata_is_host_link.exit.thread.i.i.i, %ata_is_host_link.exit.i.i.i
  %i.t = getelementptr i8, ptr %0, i64 9472
  br label %__ata_scsi_find_dev.exit

ata_link_max_devices.exit.i.i:                    ; preds = %ata_is_host_link.exit.thread.i.i.i
  %i.u = icmp ult i32 %.014.i, 2
  br i1 %i.u, label %bb.h, label %__ata_scsi_find_dev.exit

bb.h:                                             ; preds = %ata_link_max_devices.exit.i.i
  %i.v = getelementptr i8, ptr %0, i64 9472
  %i.w = zext nneg i32 %.014.i to i64
  %i.x = getelementptr [3136 x i8], ptr %i.v, i64 %i.w
  br label %__ata_scsi_find_dev.exit

bb.i:                                             ; preds = %bb.e
  %i.y = getelementptr i8, ptr %1, i64 148
  %.0.i = load i32, ptr %i.y, align 4             ; 2 uses
  %i.z = icmp ult i32 %.0.i, %.val.i
  br i1 %i.z, label %bb.j, label %__ata_scsi_find_dev.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %0, i64 15824
  %i.ab = load ptr, ptr %i.aa, align 16
  %i.ac = zext i32 %.0.i to i64
  %i.ad = getelementptr [7552 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 1216
  br label %__ata_scsi_find_dev.exit

__ata_scsi_find_dev.exit:                         ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.g, %ata_link_max_devices.exit.i.i, %bb.h, %bb.i, %bb.j
  %.09.i = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.b ], [ null, %ata_link_max_devices.exit.i.i ], [ %i.ae, %bb.j ], [ %i.t, %bb.g ], [ %i.x, %bb.h ], [ null, %bb.i ] ; 7 uses
  %i.af = tail call zeroext i1 @ata_adapter_is_online(ptr noundef %0) #15
  br i1 %i.af, label %bb.k, label %.thread9

bb.k:                                             ; preds = %__ata_scsi_find_dev.exit
  %.not = icmp eq ptr %.09.i, null
  br i1 %.not, label %.thread, label %bb.l, !prof !18

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr i8, ptr %.09.i, i64 840
  %.val = load i32, ptr %i.ag, align 8
  switch i32 %.val, label %.thread [
    i32 7, label %.thread9
    i32 5, label %.thread9
    i32 3, label %.thread9
    i32 1, label %.thread9
    i32 9, label %.thread9
  ], !prof !16

.thread:                                          ; preds = %bb.l, %bb.k
  br label %.thread9

.thread9:                                         ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %.thread, %__ata_scsi_find_dev.exit
  %.0 = phi ptr [ null, %__ata_scsi_find_dev.exit ], [ null, %.thread ], [ %.09.i, %bb.l ], [ %.09.i, %bb.l ], [ %.09.i, %bb.l ], [ %.09.i, %bb.l ], [ %.09.i, %bb.l ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ata_port_schedule_eh(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ata_port_wait_eh(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @ata_cmd_ioctl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 10 uses
  %i.b = alloca [16 x i8], align 16               ; 13 uses
  %i.c = alloca [4 x i8], align 4                 ; 12 uses
  %2 = alloca %struct.scsi_sense_hdr, align 8     ; 8 uses
  %3 = alloca %struct.scsi_exec_args, align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %i.a, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 96, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = icmp eq ptr %1, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  br i1 %i.h, label %bb.n, label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, i8 0, i64 96, i1 false), !annotation !17
  store i32 0, ptr %i.c, align 4, !annotation !17
  store i64 0, ptr %2, align 8, !annotation !17
  %i.i = call i64 @_copy_from_user(ptr noundef nonnull %i.c, ptr noundef nonnull %1, i64 noundef 4) #15
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %copy_from_user.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, i8 0, i64 96, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %.not45 = icmp eq i8 %i.k, 0
  br i1 %.not45, label %bb.c, label %_kmalloc_noprof.exit

_kmalloc_noprof.exit:                             ; preds = %bb.b
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 9                  ; 2 uses
  %i.n = zext nneg i32 %i.m to i64
  %i.o = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.n, i32 noundef 3264) #17 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b, %_kmalloc_noprof.exit
  %.sink79 = phi i8 [ 8, %_kmalloc_noprof.exit ], [ 6, %bb.b ]
  %.sink77 = phi i8 [ 14, %_kmalloc_noprof.exit ], [ 32, %bb.b ]
  %.040 = phi i32 [ %i.m, %_kmalloc_noprof.exit ], [ 0, %bb.b ] ; 2 uses
  %.036 = phi ptr [ %i.o, %_kmalloc_noprof.exit ], [ null, %bb.b ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sink79, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %.sink77, ptr %i.r, align 2
  store i8 -123, ptr %i.b, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.t = load i8, ptr %i.s, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.t, ptr %i.u, align 4
  %i.v = load i8, ptr %i.c, align 4               ; 2 uses
  %i.w = icmp eq i8 %i.v, -80
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = load i8, ptr %i.j, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 79, ptr %i.ab, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 -62, ptr %i.ac, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ae = load i8, ptr %i.ad, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i8 [ %i.x, %bb.d ], [ %i.ae, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 %.sink, ptr %i.af, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i8 %i.v, ptr %i.ag, align 2
  %i.ah = call i32 @scsi_execute_cmd(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 34, ptr noundef %.036, i32 noundef %.040, i32 noundef 10000, i32 noundef 5, ptr noundef nonnull %3) #15 ; 7 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i8, ptr %2, align 8
  %i.ak = and i8 %i.aj, 112
  %i.al = icmp eq i8 %i.ak, 112
  br i1 %i.al, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.an = and i32 %i.ah, 254
  %.not70 = icmp eq i32 %i.an, 2
  br i1 %.not70, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = icmp eq i8 %i.ap, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.as = load i8, ptr %i.ar, align 2
  %i.at = icmp eq i8 %i.as, 0
  %or.cond = select i1 %i.aq, i1 %i.at, i1 false
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = icmp eq i8 %i.av, 29
  %or.cond7 = select i1 %or.cond, i1 %i.aw, i1 false
  %i.ax = and i32 %i.ah, 2147483393
  %spec.select = select i1 %or.cond7, i32 %i.ax, i32 %i.ah
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.038 = phi i32 [ %i.ah, %bb.h ], [ %spec.select, %bb.i ] ; 2 uses
  %i.ay = load i8, ptr %i.a, align 16
  %i.az = icmp eq i8 %i.ay, 114
  %i.ba = load i8, ptr %i.am, align 8
  %i.bb = icmp eq i8 %i.ba, 9
  %or.cond52 = select i1 %i.az, i1 %i.bb, i1 false
  br i1 %or.cond52, label %copy_to_user.exit57, label %bb.k

copy_to_user.exit57:                              ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %i.bd = load i8, ptr %i.bc, align 1
  store i8 %i.bd, ptr %i.c, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.bf, ptr %i.bg, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.bi = load i8, ptr %i.bh, align 1
  store i8 %i.bi, ptr %i.s, align 2
  %i.bj = call i64 @_copy_to_user(ptr noundef nonnull %1, ptr noundef nonnull %i.c, i64 noundef 4) #15
  %.not47 = icmp eq i64 %i.bj, 0
  %spec.select53 = select i1 %.not47, i32 0, i32 -14
  br label %bb.k

bb.k:                                             ; preds = %copy_to_user.exit57, %bb.j, %bb.g
  %.139 = phi i32 [ %i.ah, %bb.g ], [ %.038, %bb.j ], [ %.038, %copy_to_user.exit57 ]
  %.1 = phi i32 [ 0, %bb.g ], [ 0, %bb.j ], [ %spec.select53, %copy_to_user.exit57 ] ; 2 uses
  %.not48 = icmp eq i32 %.139, 0
  br i1 %.not48, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.not49 = icmp eq ptr %.036, null
  br i1 %.not49, label %bb.m, label %check_copy_size.exit60

check_copy_size.exit60:                           ; preds = %bb.l
  %i.bk = zext nneg i32 %.040 to i64
  %i.bl = getelementptr i8, ptr %1, i64 4
  %i.bm = call i64 @_copy_to_user(ptr noundef %i.bl, ptr noundef nonnull %.036, i64 noundef range(i64 0, 130561) %i.bk) #15
  %.not50 = icmp eq i64 %i.bm, 0
  %spec.select54 = select i1 %.not50, i32 %.1, i32 -14
  br label %bb.m

bb.m:                                             ; preds = %check_copy_size.exit60, %bb.k, %bb.f, %_kmalloc_noprof.exit, %bb.l
  %.137 = phi ptr [ null, %bb.l ], [ null, %_kmalloc_noprof.exit ], [ %.036, %bb.f ], [ %.036, %bb.k ], [ %.036, %check_copy_size.exit60 ]
  %.2 = phi i32 [ %.1, %bb.l ], [ -12, %_kmalloc_noprof.exit ], [ %i.ah, %bb.f ], [ -5, %bb.k ], [ %spec.select54, %check_copy_size.exit60 ]
  call void @kfree(ptr noundef %.137) #15
  br label %bb.n

bb.n:                                             ; preds = %copy_from_user.exit, %bb.a, %bb.m
  %.0 = phi i32 [ %.2, %bb.m ], [ -22, %bb.a ], [ -14, %copy_from_user.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scsi_execute_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @ata_task_ioctl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 14 uses
  %i.b = alloca [16 x i8], align 16               ; 14 uses
  %i.c = alloca [7 x i8], align 1                 ; 13 uses
  %2 = alloca %struct.scsi_sense_hdr, align 8     ; 8 uses
  %3 = alloca %struct.scsi_exec_args, align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %i.a, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 96, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = icmp eq ptr %1, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  br i1 %i.h, label %bb.h, label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, i8 0, i64 96, i1 false), !annotation !17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.c, i8 0, i64 7, i1 false), !annotation !17
  store i64 0, ptr %2, align 8, !annotation !17
  %i.i = call i64 @_copy_from_user(ptr noundef nonnull %i.c, ptr noundef nonnull %1, i64 noundef 7) #15
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %copy_from_user.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, i8 0, i64 96, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i8 -123, ptr %i.b, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 6, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 32, ptr %i.k, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.m, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 %i.p, ptr %i.q, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 %i.v, ptr %i.w, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 5 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 %i.y, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 6 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = and i8 %i.ab, 79
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = load i8, ptr %i.c, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i8 %i.ae, ptr %i.af, align 2
  %i.ag = call i32 @scsi_execute_cmd(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 34, ptr noundef null, i32 noundef 0, i32 noundef 10000, i32 noundef 5, ptr noundef nonnull %3) #15 ; 7 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = load i8, ptr %2, align 8
  %i.aj = and i8 %i.ai, 112
  %i.ak = icmp eq i8 %i.aj, 112
  br i1 %i.ak, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = and i32 %i.ag, 2
  %.not31 = icmp eq i32 %i.am, 0
  br i1 %.not31, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = icmp eq i8 %i.ao, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ar = load i8, ptr %i.aq, align 2
  %i.as = icmp eq i8 %i.ar, 0
  %or.cond = select i1 %i.ap, i1 %i.as, i1 false
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.au = load i8, ptr %i.at, align 1
  %i.av = icmp eq i8 %i.au, 29
  %or.cond7 = select i1 %or.cond, i1 %i.av, i1 false
  %i.aw = and i32 %i.ag, 2147483645
  %spec.select = select i1 %or.cond7, i32 %i.aw, i32 %i.ag
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.ag, %bb.d ], [ %spec.select, %bb.e ] ; 2 uses
  %i.ax = load i8, ptr %i.a, align 16
  %i.ay = icmp eq i8 %i.ax, 114
  %i.az = load i8, ptr %i.al, align 8
  %i.ba = icmp eq i8 %i.az, 9
  %or.cond35 = select i1 %i.ay, i1 %i.ba, i1 false
  br i1 %or.cond35, label %copy_to_user.exit, label %bb.g

copy_to_user.exit:                                ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %i.bc = load i8, ptr %i.bb, align 1
  store i8 %i.bc, ptr %i.c, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.be = load i8, ptr %i.bd, align 1
  store i8 %i.be, ptr %i.l, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.bg = load i8, ptr %i.bf, align 1
  store i8 %i.bg, ptr %i.o, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.bi = load i8, ptr %i.bh, align 1
  store i8 %i.bi, ptr %i.r, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %i.bk = load i8, ptr %i.bj, align 1
  store i8 %i.bk, ptr %i.u, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %i.bm = load i8, ptr %i.bl, align 1
  store i8 %i.bm, ptr %i.x, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.bo = load i8, ptr %i.bn, align 4
  store i8 %i.bo, ptr %i.aa, align 1
  %i.bp = call i64 @_copy_to_user(ptr noundef nonnull %1, ptr noundef nonnull %i.c, i64 noundef 7) #15
  %.not32 = icmp eq i64 %i.bp, 0
  %spec.select36 = select i1 %.not32, i32 0, i32 -14
  br label %bb.g

bb.g:                                             ; preds = %copy_to_user.exit, %bb.f, %bb.c
  %.126 = phi i32 [ 0, %bb.c ], [ 0, %bb.f ], [ %spec.select36, %copy_to_user.exit ]
  %.1 = phi i32 [ %i.ag, %bb.c ], [ %.0, %bb.f ], [ %.0, %copy_to_user.exit ]
  %.not33 = icmp eq i32 %.1, 0
  %spec.select37 = select i1 %.not33, i32 %.126, i32 -5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %copy_from_user.exit, %bb.a
  %.027 = phi i32 [ -14, %copy_from_user.exit ], [ -22, %bb.a ], [ %spec.select37, %bb.g ], [ %i.ag, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.027
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ata_sas_scsi_ioctl(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 10 uses
  switch i32 %2, label %bb.ab [
    i32 777, label %bb.b
    i32 804, label %bb.f
    i32 781, label %bb.k
    i32 799, label %bb.v
    i32 798, label %bb.y
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16
  %i.d = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.c) #15
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 128
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %ata_ioc32.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 32
  %i.j = and i32 %i.i, 1048576
  %.not3.i = icmp ne i32 %i.j, 0
  br label %ata_ioc32.exit

ata_ioc32.exit:                                   ; preds = %bb.b, %bb.c
  %.0.i = phi i1 [ true, %bb.b ], [ %.not3.i, %bb.c ] ; 2 uses
  %i.k = load ptr, ptr %i.b, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.k, i64 noundef %i.d) #15
  %i.l = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #18, !srcloc !21
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 8
  %i.p = and i32 %i.o, 2
  %.not.i.i.not = icmp eq i32 %i.p, 0
  %i.q = tail call i64 @llvm.read_register.i64(metadata !2) ; 2 uses
  br i1 %.not.i.i.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %ata_ioc32.exit
  %i.r = zext i1 %.0.i to i32
  %i.s = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %3, i32 %i.r, i64 4, i64 %i.q) #16, !srcloc !22 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = trunc i64 %i.v to i32
  tail call void @llvm.write_register.i64(metadata !2, i64 %i.u)
  br label %bb.ab

bb.e:                                             ; preds = %ata_ioc32.exit
  %i.x = zext i1 %.0.i to i64
  %i.y = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %3, i64 %i.x, i64 8, i64 %i.q) #16, !srcloc !23 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = trunc i64 %i.ab to i32
  tail call void @llvm.write_register.i64(metadata !2, i64 %i.aa)
  br label %bb.ab

bb.f:                                             ; preds = %bb.a
  %i.ad = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 16
  %i.af = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.ae) #15
  %i.ag = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 32           ; 4 uses
  %i.ai = and i32 %i.ah, 2097152
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %ata_ioc32.exit52, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not48 = icmp eq ptr %3, null
  br i1 %.not48, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = or i32 %i.ah, 1048576
  store i32 %i.aj, ptr %i.ag, align 32
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ak = and i32 %i.ah, -1048577
  store i32 %i.ak, ptr %i.ag, align 32
  br label %bb.j

ata_ioc32.exit52:                                 ; preds = %bb.f
  %i.al = ptrtoint ptr %3 to i64
  %i.am = getelementptr i8, ptr %0, i64 24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = and i64 %i.an, 128
  %.not.i49 = icmp ne i64 %i.ao, 0
  %i.ap = and i32 %i.ah, 1048576
  %.not3.i51 = icmp ne i32 %i.ap, 0
  %.0.i50 = or i1 %.not3.i51, %.not.i49
  %i.aq = zext i1 %.0.i50 to i64
  %.not47 = icmp eq i64 %i.al, %i.aq
  %spec.select = select i1 %.not47, i32 0, i32 -22
  br label %bb.j

bb.j:                                             ; preds = %ata_ioc32.exit52, %bb.h, %bb.i
  %.046 = phi i32 [ 0, %bb.h ], [ 0, %bb.i ], [ %spec.select, %ata_ioc32.exit52 ]
  %i.ar = load ptr, ptr %i.ad, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.ar, i64 noundef %i.af) #15
  br label %bb.ab

bb.k:                                             ; preds = %bb.a
  %i.as = getelementptr i8, ptr %0, i64 15816
  %.val.i.i.i = load i32, ptr %i.as, align 8      ; 2 uses
  %.not17.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not17.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr i8, ptr %1, i64 148
  %i.au = load i32, ptr %i.at, align 4
  %.not.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i, label %bb.m, label %__ata_scsi_find_dev.exit.i.thread.i, !prof !13

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr i8, ptr %1, i64 152
  %i.aw = load i64, ptr %i.av, align 8
  %.not18.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not18.i.i.i, label %bb.p, label %__ata_scsi_find_dev.exit.i.thread.i, !prof !13

bb.n:                                             ; preds = %bb.k
  %i.ax = getelementptr i8, ptr %1, i64 144
  %i.ay = load i32, ptr %i.ax, align 8
  %.not10.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not10.i.i.i, label %bb.o, label %__ata_scsi_find_dev.exit.i.thread.i, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr i8, ptr %1, i64 152
  %i.ba = load i64, ptr %i.az, align 8
  %.not19.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not19.i.i.i, label %bb.s, label %__ata_scsi_find_dev.exit.i.thread.i, !prof !13

bb.p:                                             ; preds = %bb.m
  %i.bb = getelementptr i8, ptr %1, i64 144
  %.014.i.i.i = load i32, ptr %i.bb, align 8      ; 2 uses
  %i.bc = getelementptr i8, ptr %0, i64 8256      ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 64           ; 3 uses
  %i.be = icmp eq ptr %0, %i.bd
  br i1 %i.be, label %ata_is_host_link.exit.thread.i.i.i.i.i, label %ata_is_host_link.exit.i.i.i.i.i

ata_is_host_link.exit.i.i.i.i.i:                  ; preds = %bb.p
  %i.bf = getelementptr i8, ptr %i.bd, i64 15808
  %i.bg = load ptr, ptr %i.bf, align 64
  %i.bh = icmp eq ptr %i.bc, %i.bg
  br i1 %i.bh, label %ata_is_host_link.exit.thread.i.i.i.i.i, label %bb.q

ata_is_host_link.exit.thread.i.i.i.i.i:           ; preds = %ata_is_host_link.exit.i.i.i.i.i, %bb.p
  %i.bi = getelementptr i8, ptr %i.bd, i64 24
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = and i64 %i.bj, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i.i.i, label %bb.q, label %ata_link_max_devices.exit.i.i.i.i

bb.q:                                             ; preds = %ata_is_host_link.exit.thread.i.i.i.i.i, %ata_is_host_link.exit.i.i.i.i.i
  %i.bl = getelementptr i8, ptr %0, i64 9472
  br label %__ata_scsi_find_dev.exit.i.i

ata_link_max_devices.exit.i.i.i.i:                ; preds = %ata_is_host_link.exit.thread.i.i.i.i.i
  %i.bm = icmp ult i32 %.014.i.i.i, 2
  br i1 %i.bm, label %bb.r, label %__ata_scsi_find_dev.exit.i.thread.i

bb.r:                                             ; preds = %ata_link_max_devices.exit.i.i.i.i
  %i.bn = getelementptr i8, ptr %0, i64 9472
  %i.bo = zext nneg i32 %.014.i.i.i to i64
  %i.bp = getelementptr [3136 x i8], ptr %i.bn, i64 %i.bo
  br label %__ata_scsi_find_dev.exit.i.i

bb.s:                                             ; preds = %bb.o
  %i.bq = getelementptr i8, ptr %1, i64 148
  %.0.i.i.i = load i32, ptr %i.bq, align 4        ; 2 uses
  %i.br = icmp ult i32 %.0.i.i.i, %.val.i.i.i
  br i1 %i.br, label %bb.t, label %__ata_scsi_find_dev.exit.i.thread.i

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr i8, ptr %0, i64 15824
  %i.bt = load ptr, ptr %i.bs, align 16
  %i.bu = zext i32 %.0.i.i.i to i64
  %i.bv = getelementptr [7552 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 1216
  br label %__ata_scsi_find_dev.exit.i.i

__ata_scsi_find_dev.exit.i.thread.i:              ; preds = %bb.s, %ata_link_max_devices.exit.i.i.i.i, %bb.o, %bb.n, %bb.m, %bb.l
  %i.bx = tail call zeroext i1 @ata_adapter_is_online(ptr noundef %0) #15 ; 0 uses
  br label %ata_scsi_find_dev.exit.thread.i

__ata_scsi_find_dev.exit.i.i:                     ; preds = %bb.t, %bb.r, %bb.q
  %.09.i.i.i = phi ptr [ %i.bl, %bb.q ], [ %i.bp, %bb.r ], [ %i.bw, %bb.t ] ; 3 uses
  %i.by = tail call zeroext i1 @ata_adapter_is_online(ptr noundef %0) #15
  %.not.i.i54 = icmp ne ptr %.09.i.i.i, null
  %or.cond.not.i = select i1 %i.by, i1 %.not.i.i54, i1 false, !prof !14
  br i1 %or.cond.not.i, label %bb.u, label %ata_scsi_find_dev.exit.thread.i, !prof !15

bb.u:                                             ; preds = %__ata_scsi_find_dev.exit.i.i
  %i.bz = getelementptr i8, ptr %.09.i.i.i, i64 840
  %.val.i.i = load i32, ptr %i.bz, align 8
  switch i32 %.val.i.i, label %ata_scsi_find_dev.exit.thread.i [
    i32 7, label %copy_to_user.exit22.i
    i32 5, label %copy_to_user.exit22.i
    i32 3, label %copy_to_user.exit22.i
    i32 1, label %copy_to_user.exit22.i
    i32 9, label %copy_to_user.exit22.i
  ], !prof !16

ata_scsi_find_dev.exit.thread.i:                  ; preds = %bb.u, %__ata_scsi_find_dev.exit.i.i, %__ata_scsi_find_dev.exit.i.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  br label %ata_get_identity.exit

copy_to_user.exit22.i:                            ; preds = %bb.u, %bb.u, %bb.u, %bb.u, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, i8 0, i64 40, i1 false), !annotation !17
  %i.ca = getelementptr i8, ptr %.09.i.i.i, i64 896 ; 4 uses
  %i.cb = tail call i64 @_copy_to_user(ptr noundef %3, ptr noundef %i.ca, i64 noundef 512) #15
  %.not13.i = icmp eq i64 %i.cb, 0
  br i1 %.not13.i, label %copy_to_user.exit20.i, label %ata_get_identity.exit

copy_to_user.exit20.i:                            ; preds = %copy_to_user.exit22.i
  call void @ata_id_string(ptr noundef %i.ca, ptr noundef nonnull %i.a, i32 noundef 27, i32 noundef 40) #15
  %i.cc = getelementptr i8, ptr %3, i64 54
  %i.cd = call i64 @_copy_to_user(ptr noundef %i.cc, ptr noundef nonnull %i.a, i64 noundef 40) #15
  %.not14.i = icmp eq i64 %i.cd, 0
  br i1 %.not14.i, label %copy_to_user.exit18.i, label %ata_get_identity.exit

copy_to_user.exit18.i:                            ; preds = %copy_to_user.exit20.i
  call void @ata_id_string(ptr noundef %i.ca, ptr noundef nonnull %i.a, i32 noundef 23, i32 noundef 8) #15
  %i.ce = getelementptr i8, ptr %3, i64 46
  %i.cf = call i64 @_copy_to_user(ptr noundef %i.ce, ptr noundef nonnull %i.a, i64 noundef 8) #15
  %.not15.i = icmp eq i64 %i.cf, 0
  br i1 %.not15.i, label %copy_to_user.exit.i, label %ata_get_identity.exit

copy_to_user.exit.i:                              ; preds = %copy_to_user.exit18.i
  call void @ata_id_string(ptr noundef %i.ca, ptr noundef nonnull %i.a, i32 noundef 10, i32 noundef 20) #15
  %i.cg = getelementptr i8, ptr %3, i64 20
  %i.ch = call i64 @_copy_to_user(ptr noundef %i.cg, ptr noundef nonnull %i.a, i64 noundef 20) #15
  %.fr.i = freeze i64 %i.ch
  %.not16.i = icmp eq i64 %.fr.i, 0
  %spec.select.i = select i1 %.not16.i, i32 0, i32 -14
  br label %ata_get_identity.exit

ata_get_identity.exit:                            ; preds = %ata_scsi_find_dev.exit.thread.i, %copy_to_user.exit22.i, %copy_to_user.exit20.i, %copy_to_user.exit18.i, %copy_to_user.exit.i
  %.0.i53 = phi i32 [ -42, %ata_scsi_find_dev.exit.thread.i ], [ -14, %copy_to_user.exit22.i ], [ -14, %copy_to_user.exit20.i ], [ %spec.select.i, %copy_to_user.exit.i ], [ -14, %copy_to_user.exit18.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.ab

bb.v:                                             ; preds = %bb.a
  %i.ci = tail call zeroext i1 @capable(i32 noundef 21) #15
  br i1 %i.ci, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.cj = tail call zeroext i1 @capable(i32 noundef 17) #15
  br i1 %i.cj, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.ck = tail call i32 @ata_cmd_ioctl(ptr noundef %1, ptr noundef %3) #19
  br label %bb.ab

bb.y:                                             ; preds = %bb.a
  %i.cl = tail call zeroext i1 @capable(i32 noundef 21) #15
  br i1 %i.cl, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.cm = tail call zeroext i1 @capable(i32 noundef 17) #15
  br i1 %i.cm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cn = tail call i32 @ata_task_ioctl(ptr noundef %1, ptr noundef %3) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %bb.y, %bb.z, %bb.v, %bb.w, %bb.aa, %bb.x, %ata_get_identity.exit, %bb.j, %bb.e, %bb.d
  %.0 = phi i32 [ -13, %bb.y ], [ %i.w, %bb.d ], [ %i.ac, %bb.e ], [ %.046, %bb.j ], [ %.0.i53, %ata_get_identity.exit ], [ %i.ck, %bb.x ], [ -13, %bb.v ], [ %i.cn, %bb.aa ], [ -13, %bb.w ], [ -13, %bb.z ], [ -25, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ata_scsi_ioctl(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 2216
  %.val = load ptr, ptr %i.b, align 8
  %i.c = tail call i32 @ata_sas_scsi_ioctl(ptr noundef %.val, ptr noundef %0, i32 noundef %1, ptr noundef %2) #19
  ret i32 %i.c
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define dso_local void @ata_scsi_sdev_config(ptr nofree noundef captures(none) initializes((432, 436)) %0) local_unnamed_addr #8 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 340        ; 2 uses
  %i.b = load i64, ptr %i.a, align 4
  %i.c = or i64 %i.b, 73400320
  store i64 %i.c, ptr %i.a, align 4
  %i.d = getelementptr i8, ptr %0, i64 432
  store i32 1, ptr %i.d, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 412
  %i.b = load i8, ptr %i.a, align 4
  %i.c = tail call i32 @atapi_cmd_type(i8 noundef zeroext %i.b) #15
  %i.d = icmp eq i32 %i.c, 4
  ret i1 %i.d
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @atapi_cmd_type(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -12, 1) i32 @ata_scsi_dev_config(ptr noundef initializes((164, 168)) %0, ptr nofree noundef captures(none) initializes((24, 28)) %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 1056
  %.val.i = load i16, ptr %i.a, align 2           ; 2 uses
  %i.b = icmp eq i16 %.val.i, -1
  %i.c = and i16 %.val.i, 32640
  %or.cond11.i = icmp eq i16 %i.c, 0
  %or.cond.i77 = or i1 %i.b, %or.cond11.i
  br i1 %or.cond.i77, label %ata_id_has_unload.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %2, i64 1064
  %i.e = load i16, ptr %i.d, align 2
  %i.f = and i16 %i.e, -8192
  %or.cond.not.i = icmp eq i16 %i.f, 24576
  br i1 %or.cond.not.i, label %ata_id_has_unload.exit.thread, label %ata_id_has_unload.exit

ata_id_has_unload.exit:                           ; preds = %bb.b, %bb.a
  %i.g = getelementptr i8, ptr %2, i64 24         ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = or i64 %i.h, 262144
  store i64 %i.i, ptr %i.g, align 8
  br label %ata_id_has_unload.exit.thread

ata_id_has_unload.exit.thread:                    ; preds = %bb.b, %ata_id_has_unload.exit
  %i.j = getelementptr i8, ptr %2, i64 868        ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 516
  %i.n = load i32, ptr %i.m, align 4
  %i.o = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.n) ; 2 uses
  store i32 %i.o, ptr %i.j, align 4
  %i.p = getelementptr i8, ptr %1, i64 24
  store i32 %i.o, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %2, i64 840
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp eq i32 %i.r, 3
  br i1 %i.s, label %_kmalloc_noprof.exit, label %bb.d

_kmalloc_noprof.exit:                             ; preds = %ata_id_has_unload.exit.thread
  %i.t = getelementptr i8, ptr %0, i64 164
  store i32 512, ptr %i.t, align 4
  %i.u = getelementptr i8, ptr %1, i64 180
  store i32 3, ptr %i.u, align 4
  %i.v = getelementptr i8, ptr %1, i64 156        ; 2 uses
  %i.w = load i16, ptr %i.v, align 4
  %i.x = add i16 %i.w, -1
  store i16 %i.x, ptr %i.v, align 4
  %i.y = getelementptr i8, ptr %0, i64 2024
  store i64 16384, ptr %i.y, align 8
  %i.z = tail call noalias align 4096 dereferenceable_or_null(16384) ptr @__kmalloc_large_noprof(i64 noundef 16384, i32 noundef 3072) #17 ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 2032
  store ptr %i.z, ptr %i.aa, align 8
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_kmalloc_noprof.exit
  %i.ab = load ptr, ptr %2, align 64              ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 64
  %i.ad = getelementptr i8, ptr %i.ac, i64 36
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr i8, ptr %i.ab, i64 8
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = getelementptr i8, ptr %2, i64 8
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = add i32 %i.ai, %i.ag
  %i.ak = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %i.ae, i32 noundef %i.aj) #20 ; 0 uses
  br label %bb.o

bb.d:                                             ; preds = %ata_id_has_unload.exit.thread
  %i.al = getelementptr i8, ptr %2, i64 1108
  %i.am = load i16, ptr %i.al, align 4
  %i.an = and i16 %i.am, -12288
  %i.ao = icmp eq i16 %i.an, 20480
  br i1 %i.ao, label %bb.e, label %ata_id_logical_sector_size.exit

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr i8, ptr %2, i64 1130
  %i.aq = load i32, ptr %i.ap, align 2
  %i.ar = shl i32 %i.aq, 1
  br label %ata_id_logical_sector_size.exit

ata_id_logical_sector_size.exit:                  ; preds = %bb.d, %bb.e
  %.0.i79 = phi i32 [ %i.ar, %bb.e ], [ 512, %bb.d ]
  %i.as = getelementptr i8, ptr %0, i64 164
  store i32 %.0.i79, ptr %i.as, align 4
  %i.at = getelementptr i8, ptr %0, i64 340       ; 4 uses
  %i.au = load i64, ptr %i.at, align 4
  %i.av = or i64 %i.au, 6
  store i64 %i.av, ptr %i.at, align 4
  %i.aw = tail call zeroext i1 @ata_acpi_dev_manage_restart(ptr noundef %2) #15
  %i.ax = load i64, ptr %i.at, align 4
  %i.ay = and i64 %i.ax, -25
  %i.az = select i1 %i.aw, i64 24, i64 16
  %i.ba = or disjoint i64 %i.az, %i.ay
  store i64 %i.ba, ptr %i.at, align 4
  br label %bb.f

bb.f:                                             ; preds = %_kmalloc_noprof.exit, %ata_id_logical_sector_size.exit
  %i.bb = getelementptr i8, ptr %0, i64 164       ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4            ; 3 uses
  %i.bd = icmp ugt i32 %i.bc, 4096
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = load ptr, ptr %2, align 64              ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 64
  %i.bg = getelementptr i8, ptr %i.bf, i64 36
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = getelementptr i8, ptr %i.be, i64 8
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %2, i64 8
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = add i32 %i.bl, %i.bj
  %i.bn = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %i.bh, i32 noundef %i.bm, i32 noundef %i.bc) #20 ; 0 uses
  %.pre = load i32, ptr %i.bb, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bo = phi i32 [ %.pre, %bb.g ], [ %i.bc, %bb.f ]
  %i.bp = add i32 %i.bo, -1
  %i.bq = getelementptr i8, ptr %1, i64 176
  store i32 %i.bp, ptr %i.bq, align 8
  %i.br = getelementptr i8, ptr %2, i64 24        ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8            ; 2 uses
  %i.bt = and i64 %i.bs, 128
  %.not73 = icmp eq i64 %i.bt, 0
  br i1 %.not73, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr i8, ptr %0, i64 368       ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.bu, i32 2, ptr elementtype(i8) %i.bu) #16, !srcloc !24
  %.val.pre = load i64, ptr %i.br, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.val = phi i64 [ %.val.pre, %bb.i ], [ %i.bs, %bb.h ]
  %i.bv = and i64 %.val, 16392
  %i.bw = icmp eq i64 %i.bv, 8
  br i1 %i.bw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr i8, ptr %2, i64 1046
  %i.by = load i16, ptr %i.bx, align 2
  %i.bz = and i16 %i.by, 31
  %narrow = add nuw nsw i16 %i.bz, 1
  %i.ca = zext nneg i16 %narrow to i32
  %i.cb = load ptr, ptr %0, align 8
  %i.cc = getelementptr i8, ptr %i.cb, i64 500
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = tail call i32 @llvm.smin.i32(i32 %i.cd, i32 %i.ca)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.071 = phi i32 [ %i.ce, %bb.k ], [ 1, %bb.j ]
  %i.cf = tail call i32 @scsi_change_queue_depth(ptr noundef %0, i32 noundef %.071) #15 ; 0 uses
  %i.cg = load i64, ptr %i.br, align 8
  %i.ch = and i64 %i.cg, 256
  %.not74 = icmp eq i64 %i.ch, 0
  br i1 %.not74, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr i8, ptr %0, i64 340       ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 4
  %i.ck = or i64 %i.cj, 70368744177664
  store i64 %i.ck, ptr %i.ci, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cl = getelementptr i8, ptr %2, i64 32
  store ptr %0, ptr %i.cl, align 32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.c
  %.0 = phi i32 [ 0, %bb.n ], [ -12, %bb.c ]
  ret i32 %.0
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @ata_acpi_dev_manage_restart(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -19, 1) i32 @ata_scsi_sdev_init(ptr noundef initializes((432, 436)) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 2216
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 340        ; 2 uses
  %i.d = load i64, ptr %i.c, align 4
  %i.e = or i64 %i.d, 73400320
  store i64 %i.e, ptr %i.c, align 4
  %i.f = getelementptr i8, ptr %0, i64 432
  store i32 1, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %0, i64 456        ; 2 uses
  %i.h = getelementptr i8, ptr %.val, i64 15880
  %i.i = tail call ptr @device_link_add(ptr noundef %i.g, ptr noundef %i.h, i32 noundef 13) #15
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %.val, i64 36
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr i8, ptr %0, i64 536
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.c, label %dev_name.exit

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %i.g, align 8
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.val.i, %bb.c ], [ %i.m, %bb.b ]
  %i.n = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %i.k, ptr noundef %.0.i) #20 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %dev_name.exit
  %.0 = phi i32 [ -19, %dev_name.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -12, 1) i32 @ata_scsi_sdev_configure(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 2216
  %.val = load ptr, ptr %i.b, align 8             ; 6 uses
  %i.c = getelementptr i8, ptr %.val, i64 15816
  %.val.i = load i32, ptr %i.c, align 8           ; 2 uses
  %.not17.i = icmp eq i32 %.val.i, 0
  br i1 %.not17.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 148
  %i.e = load i32, ptr %i.d, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %__ata_scsi_find_dev.exit.thread, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 152
  %i.g = load i64, ptr %i.f, align 8
  %.not18.i = icmp eq i64 %i.g, 0
  br i1 %.not18.i, label %bb.f, label %__ata_scsi_find_dev.exit.thread, !prof !13

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 144
  %i.i = load i32, ptr %i.h, align 8
  %.not10.i = icmp eq i32 %i.i, 0
  br i1 %.not10.i, label %bb.e, label %__ata_scsi_find_dev.exit.thread, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 152
  %i.k = load i64, ptr %i.j, align 8
  %.not19.i = icmp eq i64 %i.k, 0
  br i1 %.not19.i, label %bb.i, label %__ata_scsi_find_dev.exit.thread, !prof !13

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 144
  %.014.i = load i32, ptr %i.l, align 8           ; 2 uses
  %i.m = getelementptr i8, ptr %.val, i64 8256    ; 2 uses
  %i.n = load ptr, ptr %i.m, align 64             ; 3 uses
  %i.o = icmp eq ptr %.val, %i.n
  br i1 %i.o, label %ata_is_host_link.exit.thread.i.i.i, label %ata_is_host_link.exit.i.i.i

ata_is_host_link.exit.i.i.i:                      ; preds = %bb.f
  %i.p = getelementptr i8, ptr %i.n, i64 15808
  %i.q = load ptr, ptr %i.p, align 64
  %i.r = icmp eq ptr %i.m, %i.q
  br i1 %i.r, label %ata_is_host_link.exit.thread.i.i.i, label %bb.g

ata_is_host_link.exit.thread.i.i.i:               ; preds = %ata_is_host_link.exit.i.i.i, %bb.f
  %i.s = getelementptr i8, ptr %i.n, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = and i64 %i.t, 1
  %.not.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i, label %bb.g, label %ata_link_max_devices.exit.i.i

bb.g:                                             ; preds = %ata_is_host_link.exit.thread.i.i.i, %ata_is_host_link.exit.i.i.i
  %i.v = getelementptr i8, ptr %.val, i64 9472
  br label %__ata_scsi_find_dev.exit

ata_link_max_devices.exit.i.i:                    ; preds = %ata_is_host_link.exit.thread.i.i.i
  %i.w = icmp ult i32 %.014.i, 2
  br i1 %i.w, label %bb.h, label %__ata_scsi_find_dev.exit.thread

bb.h:                                             ; preds = %ata_link_max_devices.exit.i.i
  %i.x = getelementptr i8, ptr %.val, i64 9472
  %i.y = zext nneg i32 %.014.i to i64
  %i.z = getelementptr [3136 x i8], ptr %i.x, i64 %i.y
  br label %__ata_scsi_find_dev.exit

bb.i:                                             ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %0, i64 148
  %.0.i = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ab = icmp ult i32 %.0.i, %.val.i
  br i1 %i.ab, label %bb.j, label %__ata_scsi_find_dev.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr i8, ptr %.val, i64 15824
  %i.ad = load ptr, ptr %i.ac, align 16
  %i.ae = zext i32 %.0.i to i64
  %i.af = getelementptr [7552 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 1216
  br label %__ata_scsi_find_dev.exit

__ata_scsi_find_dev.exit:                         ; preds = %bb.g, %bb.h, %bb.j
  %.09.i = phi ptr [ %i.v, %bb.g ], [ %i.z, %bb.h ], [ %i.ag, %bb.j ] ; 2 uses
  %.not = icmp eq ptr %.09.i, null
  br i1 %.not, label %__ata_scsi_find_dev.exit.thread, label %bb.k

bb.k:                                             ; preds = %__ata_scsi_find_dev.exit
  %i.ah = tail call i32 @ata_scsi_dev_config(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.09.i) #19
  br label %__ata_scsi_find_dev.exit.thread

__ata_scsi_find_dev.exit.thread:                  ; preds = %bb.i, %ata_link_max_devices.exit.i.i, %bb.b, %bb.e, %bb.d, %bb.c, %__ata_scsi_find_dev.exit, %bb.k
  %.0 = phi i32 [ %i.ah, %bb.k ], [ 0, %__ata_scsi_find_dev.exit ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %ata_link_max_devices.exit.i.i ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ata_scsi_sdev_destroy(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 2216
  %.val = load ptr, ptr %i.b, align 8             ; 9 uses
  %i.c = getelementptr i8, ptr %0, i64 456
  %i.d = getelementptr i8, ptr %.val, i64 15880
  tail call void @device_link_remove(ptr noundef %i.c, ptr noundef %i.d) #15
  %i.e = getelementptr i8, ptr %.val, i64 16      ; 2 uses
  %i.f = load ptr, ptr %i.e, align 16
  %i.g = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.f) #15
  %i.h = getelementptr i8, ptr %.val, i64 15816
  %.val.i = load i32, ptr %i.h, align 8           ; 2 uses
  %.not17.i = icmp eq i32 %.val.i, 0
  br i1 %.not17.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 148
  %i.j = load i32, ptr %i.i, align 4
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.c, label %__ata_scsi_find_dev.exit.thread, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %0, i64 152
  %i.l = load i64, ptr %i.k, align 8
  %.not18.i = icmp eq i64 %i.l, 0
  br i1 %.not18.i, label %bb.f, label %__ata_scsi_find_dev.exit.thread, !prof !13

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %0, i64 144
  %i.n = load i32, ptr %i.m, align 8
  %.not10.i = icmp eq i32 %i.n, 0
  br i1 %.not10.i, label %bb.e, label %__ata_scsi_find_dev.exit.thread, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %0, i64 152
  %i.p = load i64, ptr %i.o, align 8
  %.not19.i = icmp eq i64 %i.p, 0
  br i1 %.not19.i, label %bb.i, label %__ata_scsi_find_dev.exit.thread, !prof !13

bb.f:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %0, i64 144
  %.014.i = load i32, ptr %i.q, align 8           ; 2 uses
  %i.r = getelementptr i8, ptr %.val, i64 8256    ; 2 uses
  %i.s = load ptr, ptr %i.r, align 64             ; 3 uses
  %i.t = icmp eq ptr %.val, %i.s
  br i1 %i.t, label %ata_is_host_link.exit.thread.i.i.i, label %ata_is_host_link.exit.i.i.i

ata_is_host_link.exit.i.i.i:                      ; preds = %bb.f
  %i.u = getelementptr i8, ptr %i.s, i64 15808
  %i.v = load ptr, ptr %i.u, align 64
  %i.w = icmp eq ptr %i.r, %i.v
  br i1 %i.w, label %ata_is_host_link.exit.thread.i.i.i, label %bb.g

ata_is_host_link.exit.thread.i.i.i:               ; preds = %ata_is_host_link.exit.i.i.i, %bb.f
  %i.x = getelementptr i8, ptr %i.s, i64 24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, 1
  %.not.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i, label %bb.g, label %ata_link_max_devices.exit.i.i

bb.g:                                             ; preds = %ata_is_host_link.exit.thread.i.i.i, %ata_is_host_link.exit.i.i.i
  %i.aa = getelementptr i8, ptr %.val, i64 9472
  br label %__ata_scsi_find_dev.exit

ata_link_max_devices.exit.i.i:                    ; preds = %ata_is_host_link.exit.thread.i.i.i
  %i.ab = icmp ult i32 %.014.i, 2
  br i1 %i.ab, label %bb.h, label %__ata_scsi_find_dev.exit.thread

bb.h:                                             ; preds = %ata_link_max_devices.exit.i.i
  %i.ac = getelementptr i8, ptr %.val, i64 9472
  %i.ad = zext nneg i32 %.014.i to i64
  %i.ae = getelementptr [3136 x i8], ptr %i.ac, i64 %i.ad
  br label %__ata_scsi_find_dev.exit

bb.i:                                             ; preds = %bb.e
  %i.af = getelementptr i8, ptr %0, i64 148
  %.0.i = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ag = icmp ult i32 %.0.i, %.val.i
  br i1 %i.ag, label %bb.j, label %__ata_scsi_find_dev.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr i8, ptr %.val, i64 15824
  %i.ai = load ptr, ptr %i.ah, align 16
  %i.aj = zext i32 %.0.i to i64
  %i.ak = getelementptr [7552 x i8], ptr %i.ai, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 1216
  br label %__ata_scsi_find_dev.exit

__ata_scsi_find_dev.exit:                         ; preds = %bb.g, %bb.h, %bb.j
  %.09.i = phi ptr [ %i.aa, %bb.g ], [ %i.ae, %bb.h ], [ %i.al, %bb.j ] ; 3 uses
  %.not = icmp eq ptr %.09.i, null
  br i1 %.not, label %__ata_scsi_find_dev.exit.thread, label %bb.k

bb.k:                                             ; preds = %__ata_scsi_find_dev.exit
  %i.am = getelementptr i8, ptr %.09.i, i64 32    ; 2 uses
  %i.an = load ptr, ptr %i.am, align 32
  %.not15 = icmp eq ptr %i.an, null
  br i1 %.not15, label %__ata_scsi_find_dev.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %i.am, align 32
  %i.ao = getelementptr i8, ptr %.09.i, i64 24    ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = or i64 %i.ap, 16777216
  store i64 %i.aq, ptr %i.ao, align 8
  tail call void @ata_port_schedule_eh(ptr noundef %.val) #15
  br label %__ata_scsi_find_dev.exit.thread

__ata_scsi_find_dev.exit.thread:                  ; preds = %bb.i, %ata_link_max_devices.exit.i.i, %bb.b, %bb.e, %bb.d, %bb.c, %bb.l, %bb.k, %__ata_scsi_find_dev.exit
  %i.ar = load ptr, ptr %i.e, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.ar, i64 noundef %i.g) #15
  %i.as = getelementptr i8, ptr %0, i64 2032
  %i.at = load ptr, ptr %i.as, align 8
  tail call void @kfree(ptr noundef %i.at) #15
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @device_link_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ata_scsi_deferred_qc_work(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -808
  %i.b = load ptr, ptr %i.a, align 64             ; 4 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16
  %i.e = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.d) #15
  %i.f = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.b, i64 32
  %.val = load i32, ptr %i.h, align 32
  %i.i = and i32 %.val, 3
  %.not20 = icmp eq i32 %i.i, 0
  br i1 %.not20, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i32 %i.l(ptr noundef nonnull %i.g) #15
  %.not19 = icmp eq i32 %i.m, 0
  br i1 %.not19, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "678: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 678b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 678) #16, !srcloc !25
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.5, i32 1680, i32 2307, i64 16) #16, !srcloc !26
  tail call void asm sideeffect "679: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 679b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 679) #16, !srcloc !27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.f, align 8
  tail call void @ata_qc_issue(ptr noundef %i.b, ptr noundef nonnull %i.g) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %i.n = load ptr, ptr %i.c, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.n, i64 noundef %i.e) #15
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ata_qc_issue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 3) i32 @ata_scsi_requeue_deferred_qc(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 2) #15 ; 3 uses
  %.not24 = icmp eq ptr %i.a, null
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %.not22 = icmp eq ptr %1, null
  br i1 %.not22, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %.01726.us = phi ptr [ %i.n, %bb.e ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.c = getelementptr i8, ptr %.01726.us, i64 840 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %.not21.us = icmp eq ptr %i.d, null
  br i1 %.not21.us, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  store ptr null, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %.01726.us, i64 808
  %i.f = tail call zeroext i1 @cancel_work(ptr noundef %i.e) #15 ; 0 uses
  %.val.us = load i32, ptr %i.b, align 32         ; 2 uses
  %i.g = and i32 %.val.us, 3
  %.not23.us = icmp eq i32 %i.g, 0
  br i1 %.not23.us, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = or disjoint i32 %.val.us, 1
  store i32 %i.h, ptr %i.b, align 32
  tail call void @ata_port_schedule_eh(ptr noundef %0) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr i8, ptr %i.d, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void @ata_qc_free(ptr noundef nonnull %i.d) #15
  %i.m = getelementptr i8, ptr %i.j, i64 288
  store i32 851968, ptr %i.m, align 8
  tail call void %i.l(ptr noundef %i.j) #15, !inline_history !0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.us
  %i.n = tail call ptr @ata_link_next(ptr noundef nonnull %.01726.us, ptr noundef %0, i32 noundef 2) #15 ; 2 uses
  %.not.us = icmp eq ptr %i.n, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !28

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %.01726 = phi ptr [ %i.aa, %bb.i ], [ %i.a, %.lr.ph ] ; 3 uses
  %.01825 = phi i32 [ %.2, %bb.i ], [ 2, %.lr.ph ] ; 2 uses
  %i.o = getelementptr i8, ptr %.01726, i64 840   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  %.not21 = icmp eq ptr %i.p, null
  br i1 %.not21, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split
  store ptr null, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %.01726, i64 808
  %i.r = tail call zeroext i1 @cancel_work(ptr noundef %i.q) #15 ; 0 uses
  %.val = load i32, ptr %i.b, align 32            ; 2 uses
  %i.s = and i32 %.val, 3
  %.not23 = icmp eq i32 %i.s, 0
  br i1 %.not23, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = or disjoint i32 %.val, 1
  store i32 %i.t, ptr %i.b, align 32
  tail call void @ata_port_schedule_eh(ptr noundef %0) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = getelementptr i8, ptr %i.p, i64 16
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %i.w = icmp eq ptr %i.v, %1                     ; 2 uses
  %spec.select = select i1 %i.w, i32 0, i32 %.01825
  %spec.select27 = select i1 %i.w, i32 196608, i32 851968
  %i.x = getelementptr i8, ptr %i.p, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void @ata_qc_free(ptr noundef nonnull %i.p) #15
  %i.z = getelementptr i8, ptr %i.v, i64 288
  store i32 %spec.select27, ptr %i.z, align 8
  tail call void %i.y(ptr noundef %i.v) #15, !inline_history !0
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph.split, %bb.h
  %.2 = phi i32 [ %spec.select, %bb.h ], [ %.01825, %.lr.ph.split ] ; 2 uses
  %i.aa = tail call ptr @ata_link_next(ptr noundef nonnull %.01726, ptr noundef %0, i32 noundef 2) #15 ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.i, %bb.e, %bb.a
  %.018.lcssa = phi i32 [ 2, %bb.a ], [ 2, %bb.e ], [ %.2, %bb.i ]
  ret i32 %.018.lcssa
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ata_link_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 3) i32 @ata_scsi_retry_deferred_qc(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16
  %i.c = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.b) #15
  %i.d = tail call i32 @ata_scsi_requeue_deferred_qc(ptr noundef %0, ptr noundef %1) #19
  %i.e = load ptr, ptr %i.a, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.e, i64 noundef %i.c) #15
  ret i32 %i.d
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 3) i32 @ata_scsi_eh_timed_out(ptr nofree noundef readonly captures(address) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 2216
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16      ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16
  %i.f = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.e) #15
  %i.g = tail call i32 @ata_scsi_requeue_deferred_qc(ptr noundef %.val, ptr noundef readnone %0) #19
  %i.h = load ptr, ptr %i.d, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.h, i64 noundef %i.f) #15
  ret i32 %i.g
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @ata_adapter_is_online(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 4183) i32 @__ata_scsi_queuecmd(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 164
  %i.b = load i8, ptr %i.a, align 4               ; 4 uses
  %i.c = getelementptr i8, ptr %2, i64 32
  %.val = load i32, ptr %i.c, align 32
  %i.d = and i32 %.val, 3
  %.not40 = icmp eq i32 %i.d, 0
  br i1 %.not40, label %bb.b, label %ata_scsi_translate.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 156
  %i.f = load i16, ptr %i.e, align 4              ; 5 uses
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %.critedge, label %bb.c, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 840
  %i.h = load i32, ptr %i.g, align 8
  switch i32 %i.h, label %bb.e [
    i32 1, label %bb.d
    i32 9, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.i = zext i16 %i.f to i32
  %i.j = getelementptr i8, ptr %1, i64 872
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp ult i32 %i.k, %i.i
  br i1 %i.l, label %.critedge, label %bb.i, !prof !18

bb.e:                                             ; preds = %bb.c
  %.not34 = icmp ne i8 %i.b, -123
  %i.m = load i32, ptr @atapi_passthru16, align 4
  %.not35 = icmp eq i32 %i.m, 0
  %i.n = select i1 %.not34, i1 true, i1 %.not35
  br i1 %i.n, label %bb.f, label %bb.h, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.o = lshr i8 %i.b, 5
  %i.p = zext nneg i8 %i.o to i64
  %i.q = getelementptr i8, ptr @scsi_command_size_tbl, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1               ; 2 uses
  %i.s = zext i8 %i.r to i16
  %i.t = icmp ult i16 %i.f, %i.s
  br i1 %i.t, label %.critedge, label %bb.g, !prof !18

bb.g:                                             ; preds = %bb.f
  %i.u = zext i8 %i.r to i32
  %i.v = getelementptr i8, ptr %1, i64 872
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp ult i32 %i.w, %i.u
  %i.y = icmp ugt i16 %i.f, 16
  %spec.select = or i1 %i.y, %i.x
  br i1 %spec.select, label %.critedge, label %.thread

bb.h:                                             ; preds = %bb.e
  %i.z = icmp ugt i16 %i.f, 16
  br i1 %i.z, label %.critedge, label %bb.i, !prof !18

bb.i:                                             ; preds = %bb.h, %bb.d
  %.sink = phi i8 [ %i.b, %bb.d ], [ -123, %bb.h ]
  %i.aa = tail call fastcc ptr @ata_get_xlat_func(ptr noundef %1, i8 noundef zeroext %.sink) #19 ; 2 uses
  %.not36 = icmp eq ptr %i.aa, null
  br i1 %.not36, label %bb.ae, label %.thread

.thread:                                          ; preds = %bb.g, %bb.i
  %.145 = phi ptr [ %i.aa, %bb.i ], [ @atapi_xlat, %bb.g ]
  %i.ab = load ptr, ptr %1, align 64
  %i.ac = load ptr, ptr %i.ab, align 64           ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 32
  %.val36.i.i = load i32, ptr %i.ad, align 32
  %i.ae = and i32 %.val36.i.i, 4
  %.not38.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not38.i.i, label %bb.j, label %ata_scsi_qc_new.exit.thread.i, !prof !13

bb.j:                                             ; preds = %.thread
  %i.af = getelementptr i8, ptr %i.ac, i64 24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, 16777216
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr i8, ptr %0, i64 132
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 31
  br i1 %i.ak, label %bb.l, label %.critedge.i.i, !prof !18

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "663: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 663b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 663) #16, !srcloc !31
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.5, i32 755, i32 2307, i64 16) #16, !srcloc !32
  tail call void asm sideeffect "664: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 664b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 664) #16, !srcloc !33
  br label %ata_scsi_qc_new.exit.thread.i

bb.m:                                             ; preds = %bb.j
  %i.al = getelementptr i8, ptr %0, i64 -216
  %.033.pre.i.i = load i32, ptr %i.al, align 4
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.m, %bb.k
  %.033.i.i = phi i32 [ %.033.pre.i.i, %bb.m ], [ %i.aj, %bb.k ] ; 4 uses
  %spec.select.i.i.i.i = icmp ult i32 %.033.i.i, 33
  %i.am = getelementptr i8, ptr %i.ac, i64 304
  %i.an = zext nneg i32 %.033.i.i to i64
  %i.ao = getelementptr [240 x i8], ptr %i.am, i64 %i.an ; 8 uses
  %.0.i.i.i = select i1 %spec.select.i.i.i.i, ptr %i.ao, ptr null ; 23 uses
  %i.ap = getelementptr i8, ptr %.0.i.i.i, i64 92
  store i32 %.033.i.i, ptr %i.ap, align 4
  %i.aq = getelementptr i8, ptr %.0.i.i.i, i64 88
  store i32 %.033.i.i, ptr %i.aq, align 8
  store ptr %i.ac, ptr %.0.i.i.i, align 8
  %i.ar = getelementptr i8, ptr %.0.i.i.i, i64 8  ; 2 uses
  store ptr %1, ptr %i.ar, align 8
  %i.as = getelementptr i8, ptr %.0.i.i.i, i64 104 ; 2 uses
  store i32 3, ptr %i.as, align 8
  %i.at = getelementptr i8, ptr %.0.i.i.i, i64 160 ; 2 uses
  %i.au = getelementptr i8, ptr %.0.i.i.i, i64 80 ; 2 uses
  store i64 0, ptr %i.au, align 8
  %i.av = getelementptr i8, ptr %.0.i.i.i, i64 120
  store i32 0, ptr %i.av, align 8
  %i.aw = getelementptr i8, ptr %.0.i.i.i, i64 116
  store i32 0, ptr %i.aw, align 4
  %i.ax = getelementptr i8, ptr %.0.i.i.i, i64 112
  store i32 0, ptr %i.ax, align 8
  %i.ay = getelementptr i8, ptr %.0.i.i.i, i64 96 ; 2 uses
  store i32 0, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %.0.i.i.i, i64 108
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  store i32 512, ptr %i.az, align 4
  %i.ba = getelementptr i8, ptr %.0.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %i.ba, i8 0, i64 32, i1 false)
  %i.bb = load ptr, ptr %1, align 64
  %i.bc = load ptr, ptr %i.bb, align 64
  %i.bd = getelementptr i8, ptr %i.bc, i64 168
  %i.be = load i8, ptr %i.bd, align 8
  %i.bf = getelementptr i8, ptr %.0.i.i.i, i64 41
  store i8 %i.be, ptr %i.bf, align 1
  %i.bg = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = icmp eq i32 %i.bh, 0
  %spec.select.i.i37.i.i = select i1 %i.bi, i8 -96, i8 -80
  %i.bj = getelementptr i8, ptr %.0.i.i.i, i64 52
  store i8 %spec.select.i.i37.i.i, ptr %i.bj, align 4
  %i.bk = getelementptr i8, ptr %.0.i.i.i, i64 205
  store i8 64, ptr %i.bk, align 1
  %i.bl = getelementptr i8, ptr %.0.i.i.i, i64 199
  store i8 0, ptr %i.bl, align 1
  %i.bm = getelementptr i8, ptr %.0.i.i.i, i64 16
  store ptr %0, ptr %i.bm, align 8
  %i.bn = getelementptr i8, ptr %.0.i.i.i, i64 24
  store ptr @scsi_done, ptr %i.bn, align 8
  %i.bo = getelementptr i8, ptr %0, i64 200       ; 2 uses
  %.val.i.i = load ptr, ptr %i.bo, align 8
  store ptr %.val.i.i, ptr %i.at, align 8
  %i.bp = getelementptr i8, ptr %0, i64 208       ; 2 uses
  %.val35.i.i = load i32, ptr %i.bp, align 8
  store i32 %.val35.i.i, ptr %i.ay, align 8
  %i.bq = getelementptr i8, ptr %0, i64 -220
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = and i32 %i.br, 128
  %.not34.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not34.i.i, label %ata_scsi_qc_new.exit.i, label %bb.n

bb.n:                                             ; preds = %.critedge.i.i
  store i64 64, ptr %i.au, align 8
  br label %ata_scsi_qc_new.exit.i

ata_scsi_qc_new.exit.thread.i:                    ; preds = %bb.l, %.thread
  %i.bt = getelementptr i8, ptr %0, i64 288       ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = and i32 %i.bu, -16711936
  %i.bw = or disjoint i32 %i.bv, 40
  store i32 %i.bw, ptr %i.bt, align 8
  tail call void @scsi_done(ptr noundef %0) #15
  br label %ata_scsi_translate.exit

ata_scsi_qc_new.exit.i:                           ; preds = %bb.n, %.critedge.i.i
  %.not.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i, label %ata_scsi_translate.exit, label %bb.o

bb.o:                                             ; preds = %ata_scsi_qc_new.exit.i
  %i.bx = getelementptr i8, ptr %0, i64 160       ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8
  %.off.i = add i32 %i.by, -1
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr i8, ptr %0, i64 216
  %.val.i = load i32, ptr %i.bz, align 8
  %i.ca = icmp eq i32 %.val.i, 0
  br i1 %i.ca, label %bb.q, label %bb.r, !prof !18

bb.q:                                             ; preds = %bb.p
  %i.cb = load ptr, ptr %1, align 64              ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 64
  %i.cd = getelementptr i8, ptr %i.cc, i64 36
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = getelementptr i8, ptr %i.cb, i64 8
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = load i32, ptr %i.bg, align 8
  %i.ci = add i32 %i.ch, %i.cg
  %i.cj = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %i.ce, i32 noundef %i.ci) #20 ; 0 uses
  %i.ck = getelementptr i8, ptr %0, i64 288
  store i32 458752, ptr %i.ck, align 8
  br label %bb.ad

bb.r:                                             ; preds = %bb.p
  %.val26.i = load ptr, ptr %i.bo, align 8
  %.val27.i = load i32, ptr %i.bp, align 8
  tail call void @ata_sg_init(ptr noundef nonnull %i.ao, ptr noundef %.val26.i, i32 noundef %.val27.i) #15
  %i.cl = load i32, ptr %i.bx, align 8
  store i32 %i.cl, ptr %i.as, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.cm = getelementptr i8, ptr %.0.i.i.i, i64 216
  store ptr @ata_scsi_qc_complete, ptr %i.cm, align 8
  %i.cn = tail call i32 %.145(ptr noundef nonnull %i.ao) #15, !inline_history !29
  %.not25.i = icmp eq i32 %i.cn, 0
  br i1 %.not25.i, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr i8, ptr %2, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %.not.i28.i = icmp eq ptr %i.cq, null
  br i1 %.not.i28.i, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = load ptr, ptr %i.ar, align 8
  %i.cs = load ptr, ptr %i.cr, align 64
  %i.ct = getelementptr i8, ptr %i.cs, i64 840    ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8
  %.not19.i.i = icmp eq ptr %i.cu, null
  br i1 %.not19.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @ata_qc_free(ptr noundef nonnull %i.ao) #15
  br label %ata_scsi_translate.exit

bb.w:                                             ; preds = %bb.u
  %i.cv = tail call i32 %i.cq(ptr noundef nonnull %i.ao) #15, !inline_history !30
  switch i32 %i.cv, label %bb.z [
    i32 0, label %bb.aa
    i32 1, label %bb.x
    i32 3, label %bb.ac
    i32 2, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.cw = getelementptr i8, ptr %.0.i.i.i, i64 40
  %i.cx = load i8, ptr %i.cw, align 8
  %i.cy = and i8 %i.cx, 4
  %.not20.i.i = icmp eq i8 %i.cy, 0
  br i1 %.not20.i.i, label %bb.ab, label %bb.ac

bb.y:                                             ; preds = %bb.w
  br label %bb.ac

bb.z:                                             ; preds = %bb.w
  tail call void asm sideeffect "682: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 682b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 682) #16, !srcloc !34
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.5, i32 1891, i32 2307, i64 16) #16, !srcloc !35
  tail call void asm sideeffect "683: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 683b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 683) #16, !srcloc !36
  br label %bb.ac

bb.aa:                                            ; preds = %bb.w, %bb.t
  tail call void @ata_qc_issue(ptr noundef %2, ptr noundef nonnull %i.ao) #15
  br label %ata_scsi_translate.exit

bb.ab:                                            ; preds = %bb.x
  store ptr %.0.i.i.i, ptr %i.ct, align 8
  br label %ata_scsi_translate.exit

bb.ac:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  %.017.i.i = phi i32 [ 4181, %bb.z ], [ 4182, %bb.x ], [ 4181, %bb.y ], [ 4182, %bb.w ]
  tail call void @ata_qc_free(ptr noundef nonnull %i.ao) #15
  br label %ata_scsi_translate.exit

bb.ad:                                            ; preds = %bb.s, %bb.q
  tail call void @ata_qc_free(ptr noundef nonnull %i.ao) #15
  tail call void @scsi_done(ptr noundef %0) #15
  br label %ata_scsi_translate.exit

bb.ae:                                            ; preds = %bb.i
  switch i8 %i.b, label %bb.ap [
    i8 18, label %bb.af
    i8 26, label %bb.ag
    i8 90, label %bb.ag
    i8 37, label %bb.ah
    i8 -98, label %bb.ah
    i8 -96, label %.critedge.i.i39
    i8 3, label %bb.aj
    i8 53, label %ata_scsi_simulate.exit
    i8 -111, label %ata_scsi_simulate.exit
    i8 1, label %ata_scsi_simulate.exit
    i8 11, label %ata_scsi_simulate.exit
    i8 43, label %ata_scsi_simulate.exit
    i8 0, label %ata_scsi_simulate.exit
    i8 29, label %bb.ak
    i8 -93, label %bb.ao
  ]

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @ata_scsi_rbuf_fill(ptr noundef %1, ptr noundef %0, ptr noundef nonnull @ata_scsiop_inquiry) #19, !srcloc !37
  br label %ata_scsi_simulate.exit

bb.ag:                                            ; preds = %bb.ae, %bb.ae
  tail call fastcc void @ata_scsi_rbuf_fill(ptr noundef %1, ptr noundef %0, ptr noundef nonnull @ata_scsiop_mode_sense) #19, !srcloc !38
  br label %ata_scsi_simulate.exit

bb.ah:                                            ; preds = %bb.ae, %bb.ae
  tail call fastcc void @ata_scsi_rbuf_fill(ptr noundef %1, ptr noundef %0, ptr noundef nonnull @ata_scsiop_read_cap) #19, !srcloc !39
  br label %ata_scsi_simulate.exit

.critedge.i.i39:                                  ; preds = %bb.ae
  %i.cz = tail call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull @ata_scsi_rbuf_lock) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) @ata_scsi_rbuf, i8 0, i64 2048, i1 false)
  store i8 8, ptr getelementptr inbounds nuw (i8, ptr @ata_scsi_rbuf, i64 3), align 1
  %i.da = getelementptr i8, ptr %0, i64 200
  %.val22.i.i = load ptr, ptr %i.da, align 8
  %i.db = getelementptr i8, ptr %0, i64 208
  %.val23.i.i = load i32, ptr %i.db, align 8
  %i.dc = tail call i64 @sg_copy_from_buffer(ptr noundef %.val22.i.i, i32 noundef %.val23.i.i, ptr noundef nonnull @ata_scsi_rbuf, i64 noundef 16) #15 ; 0 uses
  %i.dd = getelementptr i8, ptr %0, i64 288
  store i32 0, ptr %i.dd, align 8
  %i.de = getelementptr i8, ptr %0, i64 216
  %.val21.i.i = load i32, ptr %i.de, align 8      ; 2 uses
  %i.df = icmp ugt i32 %.val21.i.i, 16
  br i1 %i.df, label %bb.ai, label %ata_scsi_rbuf_fill.exit.i

bb.ai:                                            ; preds = %.critedge.i.i39
  %i.dg = add i32 %.val21.i.i, -16
  %i.dh = getelementptr i8, ptr %0, i64 240
  store i32 %i.dg, ptr %i.dh, align 8
  br label %ata_scsi_rbuf_fill.exit.i

ata_scsi_rbuf_fill.exit.i:                        ; preds = %bb.ai, %.critedge.i.i39
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ata_scsi_rbuf_lock, i64 noundef %i.cz) #15
  br label %ata_scsi_simulate.exit

bb.aj:                                            ; preds = %bb.ae
  %i.di = getelementptr i8, ptr %1, i64 24
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = lshr i32 %i.dk, 29
  %i.dm = and i32 %i.dl, 1
  tail call void @scsi_build_sense(ptr noundef %0, i32 noundef %i.dm, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  br label %ata_scsi_simulate.exit

bb.ak:                                            ; preds = %bb.ae
  %i.dn = getelementptr i8, ptr %0, i64 165
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = and i8 %i.do, -9
  %.not.i37 = icmp eq i8 %i.dp, 4
  br i1 %.not.i37, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.dq = getelementptr i8, ptr %0, i64 167
  %i.dr = load i8, ptr %i.dq, align 1
  %.not22.i = icmp eq i8 %i.dr, 0
  br i1 %.not22.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ds = getelementptr i8, ptr %0, i64 168
  %i.dt = load i8, ptr %i.ds, align 4
  %.not23.i = icmp eq i8 %i.dt, 0
  br i1 %.not23.i, label %ata_scsi_simulate.exit, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.du = getelementptr i8, ptr %1, i64 24
  %.val.i38 = load i64, ptr %i.du, align 8
  %i.dv = trunc i64 %.val.i38 to i32
  %i.dw = lshr i32 %i.dv, 29
  %i.dx = and i32 %i.dw, 1
  tail call void @scsi_build_sense(ptr noundef %0, i32 noundef %i.dx, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #15
  %i.dy = getelementptr i8, ptr %0, i64 248
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %i.dz, i32 noundef 96, i16 noundef zeroext 1, i8 noundef zeroext -1, i1 noundef zeroext true) #15 ; 0 uses
  br label %ata_scsi_simulate.exit

bb.ao:                                            ; preds = %bb.ae
  tail call fastcc void @ata_scsi_rbuf_fill(ptr noundef %1, ptr noundef %0, ptr noundef nonnull @ata_scsiop_maint_in) #19, !srcloc !40
  br label %ata_scsi_simulate.exit

bb.ap:                                            ; preds = %bb.ae
  %i.eb = getelementptr i8, ptr %1, i64 24
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = lshr i32 %i.ed, 29
  %i.ef = and i32 %i.ee, 1
  tail call void @scsi_build_sense(ptr noundef %0, i32 noundef %i.ef, i8 noundef zeroext 5, i8 noundef zeroext 32, i8 noundef zeroext 0) #15
  br label %ata_scsi_simulate.exit

ata_scsi_simulate.exit:                           ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.af, %bb.ag, %bb.ah, %ata_scsi_rbuf_fill.exit.i, %bb.aj, %bb.am, %bb.an, %bb.ao, %bb.ap
  tail call void @scsi_done(ptr noundef %0) #15
  br label %ata_scsi_translate.exit

.critedge:                                        ; preds = %bb.f, %bb.g, %bb.h, %bb.d, %bb.b
  %i.eg = getelementptr i8, ptr %0, i64 288
  store i32 458752, ptr %i.eg, align 8
  tail call void @scsi_done(ptr noundef %0) #15
  br label %ata_scsi_translate.exit

ata_scsi_translate.exit:                          ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.v, %ata_scsi_qc_new.exit.i, %ata_scsi_qc_new.exit.thread.i, %bb.a, %.critedge, %ata_scsi_simulate.exit
  %.030 = phi i32 [ 4182, %bb.a ], [ 0, %.critedge ], [ 0, %ata_scsi_simulate.exit ], [ 0, %bb.ad ], [ 0, %ata_scsi_qc_new.exit.thread.i ], [ 0, %ata_scsi_qc_new.exit.i ], [ 4182, %bb.v ], [ %.017.i.i, %bb.ac ], [ 0, %bb.aa ], [ 0, %bb.ab ]
  ret i32 %.030
}

; Function Attrs: fn_ret_thunk_extern inlinehint mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal fastcc noundef ptr @ata_get_xlat_func(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1) unnamed_addr #10 align 16 prefalign(16) {
bb.a:
  switch i8 %1, label %bb.l [
    i8 8, label %ata_try_flush_cache.exit.thread
    i8 40, label %ata_try_flush_cache.exit.thread
    i8 -120, label %ata_try_flush_cache.exit.thread
    i8 10, label %ata_try_flush_cache.exit.thread
    i8 42, label %ata_try_flush_cache.exit.thread
    i8 -118, label %ata_try_flush_cache.exit.thread
    i8 -109, label %bb.b
    i8 53, label %bb.c
    i8 -111, label %bb.c
    i8 47, label %bb.d
    i8 -113, label %bb.d
    i8 -95, label %bb.e
    i8 -123, label %bb.e
    i8 127, label %bb.f
    i8 21, label %bb.g
    i8 85, label %bb.g
    i8 -107, label %bb.h
    i8 -108, label %bb.i
    i8 -94, label %bb.j
    i8 -75, label %bb.j
    i8 27, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  br label %ata_try_flush_cache.exit.thread

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.a = getelementptr i8, ptr %0, i64 1070
  %i.b = load i16, ptr %i.a, align 2
  %i.c = and i16 %i.b, -16384
  %.not.i.i = icmp eq i16 %i.c, 16384
  br i1 %.not.i.i, label %ata_id_wcache_enabled.exit.i, label %ata_id_wcache_enabled.exit.thread.i

ata_id_wcache_enabled.exit.i:                     ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 1066
  %i.e = load i16, ptr %i.d, align 2
  %i.f = and i16 %i.e, 32
  %.not.i = icmp eq i16 %i.f, 0
  br i1 %.not.i, label %ata_id_wcache_enabled.exit.thread.i, label %ata_try_flush_cache.exit.thread

ata_id_wcache_enabled.exit.thread.i:              ; preds = %ata_id_wcache_enabled.exit.i, %bb.c
  %i.g = getelementptr i8, ptr %0, i64 1062
  %.val.i = load i16, ptr %i.g, align 2           ; 2 uses
  %i.h = and i16 %.val.i, -12288
  %.0.i4.i = icmp eq i16 %i.h, 20480
  %i.i = and i16 %.val.i, -8192
  %.0.i5.i.not = icmp eq i16 %i.i, 24576
  %or.cond = or i1 %.0.i4.i, %.0.i5.i.not
  br i1 %or.cond, label %ata_try_flush_cache.exit.thread, label %bb.l

bb.d:                                             ; preds = %bb.a, %bb.a
  br label %ata_try_flush_cache.exit.thread

bb.e:                                             ; preds = %bb.a, %bb.a
  br label %ata_try_flush_cache.exit.thread

bb.f:                                             ; preds = %bb.a
  br label %ata_try_flush_cache.exit.thread

bb.g:                                             ; preds = %bb.a, %bb.a
  br label %ata_try_flush_cache.exit.thread

bb.h:                                             ; preds = %bb.a
  br label %ata_try_flush_cache.exit.thread

bb.i:                                             ; preds = %bb.a
  br label %ata_try_flush_cache.exit.thread

bb.j:                                             ; preds = %bb.a, %bb.a
  %i.j = getelementptr i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, 256
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.l, label %ata_try_flush_cache.exit.thread

bb.k:                                             ; preds = %bb.a
  br label %ata_try_flush_cache.exit.thread

bb.l:                                             ; preds = %ata_id_wcache_enabled.exit.thread.i, %bb.j, %bb.a
  br label %ata_try_flush_cache.exit.thread

ata_try_flush_cache.exit.thread:                  ; preds = %ata_id_wcache_enabled.exit.i, %ata_id_wcache_enabled.exit.thread.i, %bb.j, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.l ], [ @ata_scsi_start_stop_xlat, %bb.k ], [ @ata_scsi_write_same_xlat, %bb.b ], [ @ata_scsi_rw_xlat, %bb.a ], [ @ata_scsi_verify_xlat, %bb.d ], [ @ata_scsi_pass_thru, %bb.e ], [ @ata_scsi_var_len_cdb_xlat, %bb.f ], [ @ata_scsi_mode_select_xlat, %bb.g ], [ @ata_scsi_zbc_in_xlat, %bb.h ], [ @ata_scsi_zbc_out_xlat, %bb.i ], [ @ata_scsi_flush_xlat, %ata_id_wcache_enabled.exit.i ], [ @ata_scsi_rw_xlat, %bb.a ], [ @ata_scsi_rw_xlat, %bb.a ], [ @ata_scsi_rw_xlat, %bb.a ], [ @ata_scsi_rw_xlat, %bb.a ], [ @ata_scsi_rw_xlat, %bb.a ], [ @ata_scsi_security_inout_xlat, %bb.j ], [ @ata_scsi_flush_xlat, %ata_id_wcache_enabled.exit.thread.i ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @atapi_xlat(ptr noundef initializes((53, 54), (112, 120), (216, 224)) %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr i8, ptr %i.b, i64 160      ; 3 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, 3                      ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.d, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 16384                      ; 2 uses
  %i.k = icmp ne i64 %i.j, 0
  %.lobit = lshr exact i64 %i.j, 14
  %i.l = trunc nuw nsw i64 %.lobit to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %or.cond = phi i1 [ true, %bb.a ], [ %i.k, %bb.b ]
  %i.m = phi i32 [ 0, %bb.a ], [ %i.l, %bb.b ]    ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.o = getelementptr i8, ptr %i.d, i64 872
  %i.p = load i32, ptr %i.o, align 8
  %i.q = zext i32 %i.p to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %i.q, i1 false)
  %i.r = getelementptr i8, ptr %i.b, i64 164
  %i.s = getelementptr i8, ptr %i.b, i64 156
  %i.t = load i16, ptr %i.s, align 4
  %i.u = zext i16 %i.t to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.n, ptr align 4 %i.r, i64 %i.u, i1 false)
  %i.v = getelementptr i8, ptr %0, i64 216
  store ptr @atapi_qc_complete, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = or i64 %i.x, 6
  store i64 %i.y, ptr %i.w, align 8
  %i.z = load i32, ptr %i.e, align 8
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = or i64 %i.x, 14
  store i64 %i.ab, ptr %i.w, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = getelementptr i8, ptr %0, i64 53
  store i8 -96, ptr %i.ac, align 1
  %i.ad = getelementptr i8, ptr %i.b, i64 272
  %i.ae = load i32, ptr %i.ad, align 8            ; 3 uses
  %i.af = getelementptr i8, ptr %0, i64 116       ; 2 uses
  store i32 %i.ae, ptr %i.af, align 4
  %i.ag = getelementptr i8, ptr %i.b, i64 216
  %.val.i = load i32, ptr %i.ag, align 8
  %i.ah = add i32 %.val.i, %i.ae                  ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 112       ; 2 uses
  store i32 %i.ah, ptr %i.ai, align 8
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call i32 @atapi_check_dma(ptr noundef %0) #15
  %.not = icmp eq i32 %i.aj, 0
  %spec.select = select i1 %.not, i32 %i.m, i32 1
  %.val.pre = load i32, ptr %i.ai, align 8
  %.val46.pre = load i32, ptr %i.af, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.val46 = phi i32 [ %i.ae, %bb.e ], [ %.val46.pre, %bb.f ]
  %.val = phi i32 [ %i.ah, %bb.e ], [ %.val.pre, %bb.f ]
  %.040 = phi i32 [ %i.m, %bb.e ], [ %spec.select, %bb.f ]
  %i.ak = tail call i32 @llvm.usub.sat.i32(i32 %.val, i32 %.val46)
  %i.al = tail call i32 @llvm.umin.i32(i32 %i.ak, i32 64512) ; 2 uses
  %i.am = and i32 %i.al, 1
  %spec.select45 = add nuw nsw i32 %i.am, %i.al
  %i.an = getelementptr i8, ptr %0, i64 50
  %i.ao = trunc nuw i32 %spec.select45 to i16
  store i16 %i.ao, ptr %i.an, align 2
  br i1 %i.g, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr i8, ptr %0, i64 40
  store i8 8, ptr %i.ap, align 8
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %.not42 = icmp eq i32 %.040, 0
  %i.aq = getelementptr i8, ptr %0, i64 40        ; 2 uses
  br i1 %.not42, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 9, ptr %i.aq, align 8
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  store i8 10, ptr %i.aq, align 8
  %i.ar = getelementptr i8, ptr %0, i64 47        ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1             ; 2 uses
  %i.at = or i8 %i.as, 1
  store i8 %i.at, ptr %i.ar, align 1
  %i.au = getelementptr i8, ptr %i.d, i64 24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = and i64 %i.av, 1024
  %.not43 = icmp eq i64 %i.aw, 0
  br i1 %.not43, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = load i32, ptr %i.e, align 8
  %.not44 = icmp eq i32 %i.ax, 1
  br i1 %.not44, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = or i8 %i.as, 5
  store i8 %i.ay, ptr %i.ar, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m, %bb.l, %bb.k, %bb.h
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 4183) i32 @ata_scsi_queuecmd(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 2216
  %.val = load ptr, ptr %i.b, align 8             ; 10 uses
  %i.c = getelementptr i8, ptr %.val, i64 16      ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16
  %i.e = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.d) #15
  %i.f = getelementptr i8, ptr %.val, i64 15816
  %.val.i.i = load i32, ptr %i.f, align 8         ; 2 uses
  %.not17.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not17.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.a, i64 148
  %i.h = load i32, ptr %i.g, align 4
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.c, label %__ata_scsi_find_dev.exit.i.thread, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.a, i64 152
  %i.j = load i64, ptr %i.i, align 8
  %.not18.i.i = icmp eq i64 %i.j, 0
  br i1 %.not18.i.i, label %bb.f, label %__ata_scsi_find_dev.exit.i.thread, !prof !13

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.a, i64 144
  %i.l = load i32, ptr %i.k, align 8
  %.not10.i.i = icmp eq i32 %i.l, 0
  br i1 %.not10.i.i, label %bb.e, label %__ata_scsi_find_dev.exit.i.thread, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.a, i64 152
  %i.n = load i64, ptr %i.m, align 8
  %.not19.i.i = icmp eq i64 %i.n, 0
  br i1 %.not19.i.i, label %bb.i, label %__ata_scsi_find_dev.exit.i.thread, !prof !13

bb.f:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.a, i64 144
  %.014.i.i = load i32, ptr %i.o, align 8         ; 2 uses
  %i.p = getelementptr i8, ptr %.val, i64 8256    ; 2 uses
  %i.q = load ptr, ptr %i.p, align 64             ; 3 uses
  %i.r = icmp eq ptr %.val, %i.q
  br i1 %i.r, label %ata_is_host_link.exit.thread.i.i.i.i, label %ata_is_host_link.exit.i.i.i.i

ata_is_host_link.exit.i.i.i.i:                    ; preds = %bb.f
  %i.s = getelementptr i8, ptr %i.q, i64 15808
  %i.t = load ptr, ptr %i.s, align 64
  %i.u = icmp eq ptr %i.p, %i.t
  br i1 %i.u, label %ata_is_host_link.exit.thread.i.i.i.i, label %bb.g

ata_is_host_link.exit.thread.i.i.i.i:             ; preds = %ata_is_host_link.exit.i.i.i.i, %bb.f
  %i.v = getelementptr i8, ptr %i.q, i64 24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = and i64 %i.w, 1
  %.not.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %ata_link_max_devices.exit.i.i.i

bb.g:                                             ; preds = %ata_is_host_link.exit.thread.i.i.i.i, %ata_is_host_link.exit.i.i.i.i
  %i.y = getelementptr i8, ptr %.val, i64 9472
  br label %__ata_scsi_find_dev.exit.i

ata_link_max_devices.exit.i.i.i:                  ; preds = %ata_is_host_link.exit.thread.i.i.i.i
  %i.z = icmp ult i32 %.014.i.i, 2
  br i1 %i.z, label %bb.h, label %__ata_scsi_find_dev.exit.i.thread

bb.h:                                             ; preds = %ata_link_max_devices.exit.i.i.i
  %i.aa = getelementptr i8, ptr %.val, i64 9472
  %i.ab = zext nneg i32 %.014.i.i to i64
  %i.ac = getelementptr [3136 x i8], ptr %i.aa, i64 %i.ab
  br label %__ata_scsi_find_dev.exit.i

bb.i:                                             ; preds = %bb.e
  %i.ad = getelementptr i8, ptr %i.a, i64 148
  %.0.i.i = load i32, ptr %i.ad, align 4          ; 2 uses
  %i.ae = icmp ult i32 %.0.i.i, %.val.i.i
  br i1 %i.ae, label %bb.j, label %__ata_scsi_find_dev.exit.i.thread

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr i8, ptr %.val, i64 15824
  %i.ag = load ptr, ptr %i.af, align 16
  %i.ah = zext i32 %.0.i.i to i64
  %i.ai = getelementptr [7552 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 1216
  br label %__ata_scsi_find_dev.exit.i

__ata_scsi_find_dev.exit.i.thread:                ; preds = %bb.c, %bb.d, %bb.e, %bb.b, %ata_link_max_devices.exit.i.i.i, %bb.i
  %i.ak = tail call zeroext i1 @ata_adapter_is_online(ptr noundef %.val) #15 ; 0 uses
  br label %.thread.i

__ata_scsi_find_dev.exit.i:                       ; preds = %bb.j, %bb.h, %bb.g
  %.09.i.i = phi ptr [ %i.y, %bb.g ], [ %i.ac, %bb.h ], [ %i.aj, %bb.j ] ; 3 uses
  %i.al = tail call zeroext i1 @ata_adapter_is_online(ptr noundef %.val) #15
  %.not.i = icmp ne ptr %.09.i.i, null
  %or.cond.not = select i1 %i.al, i1 %.not.i, i1 false, !prof !14
  br i1 %or.cond.not, label %bb.k, label %.thread.i, !prof !15

bb.k:                                             ; preds = %__ata_scsi_find_dev.exit.i
  %i.am = getelementptr i8, ptr %.09.i.i, i64 840
  %.val.i = load i32, ptr %i.am, align 8
  switch i32 %.val.i, label %.thread.i [
    i32 7, label %ata_scsi_find_dev.exit
    i32 5, label %ata_scsi_find_dev.exit
    i32 3, label %ata_scsi_find_dev.exit
    i32 1, label %ata_scsi_find_dev.exit
    i32 9, label %ata_scsi_find_dev.exit
  ], !prof !16

ata_scsi_find_dev.exit:                           ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  %i.an = tail call i32 @__ata_scsi_queuecmd(ptr noundef %1, ptr noundef nonnull %.09.i.i, ptr noundef %.val) #19
  br label %bb.l

.thread.i:                                        ; preds = %__ata_scsi_find_dev.exit.i.thread, %bb.k, %__ata_scsi_find_dev.exit.i
  %i.ao = getelementptr i8, ptr %1, i64 288
  store i32 262144, ptr %i.ao, align 8
  tail call void @scsi_done(ptr noundef %1) #15
  br label %bb.l

bb.l:                                             ; preds = %.thread.i, %ata_scsi_find_dev.exit
  %.0 = phi i32 [ %i.an, %ata_scsi_find_dev.exit ], [ 0, %.thread.i ]
  %i.ap = load ptr, ptr %i.c, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.ap, i64 noundef %i.e) #15
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ata_scsi_add_hosts(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not45 = icmp eq i32 %i.b, 0
  br i1 %.not45, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 104        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i32 [ -1, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.03243 = phi i32 [ 0, %.lr.ph ], [ %i.ad, %bb.e ] ; 3 uses
  %i.d = sext i32 %.03243 to i64
  %i.e = getelementptr [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.g = tail call ptr @scsi_host_alloc(ptr noundef %1, i32 noundef 8) #15 ; 12 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 561      ; 2 uses
  %i.i = load i16, ptr %i.h, align 1
  %i.j = or i16 %i.i, 32
  store i16 %i.j, ptr %i.h, align 1
  %i.k = getelementptr i8, ptr %i.g, i64 2216
  store ptr %i.f, ptr %i.k, align 8
  store ptr %i.g, ptr %i.f, align 64
  %i.l = getelementptr i8, ptr %i.g, i64 168
  store ptr @ata_scsi_transportt, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.f, i64 36
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr i8, ptr %i.g, i64 488
  store i32 %i.n, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %i.g, i64 476
  store i32 16, ptr %i.p, align 4
  %i.q = getelementptr i8, ptr %i.g, i64 480
  store i64 1, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %i.g, i64 472
  store i32 1, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %i.g, i64 492
  store i16 32, ptr %i.s, align 4
  %i.t = getelementptr i8, ptr %i.g, i64 584
  store i32 1, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %i.f, i64 15880
  %i.v = getelementptr i8, ptr %i.f, i64 15864
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call i32 @scsi_add_host_with_dma(ptr noundef nonnull %i.g, ptr noundef %i.u, ptr noundef %i.y) #15 ; 2 uses
  %.not37 = icmp eq i32 %i.z, 0
  br i1 %.not37, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.031 = phi i32 [ %i.z, %bb.c ], [ -12, %bb.b ] ; 2 uses
  %i.aa = add i32 %.03243, -1
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %.lr.ph44.preheader, label %.loopexit

.lr.ph44.preheader:                               ; preds = %bb.d
  %i.ac = zext i32 %indvars.iv to i64
  br label %.lr.ph44

bb.e:                                             ; preds = %bb.c
  %i.ad = add nuw i32 %.03243, 1                  ; 2 uses
  %i.ae = load i32, ptr %i.a, align 8
  %i.af = icmp ult i32 %i.ad, %i.ae
  %indvars.iv.next = add i32 %indvars.iv, 1
  br i1 %i.af, label %bb.b, label %.loopexit, !llvm.loop !41

.lr.ph44:                                         ; preds = %.lr.ph44.preheader, %.lr.ph44
  %indvars.iv49 = phi i64 [ %i.ac, %.lr.ph44.preheader ], [ %indvars.iv.next50, %.lr.ph44 ] ; 3 uses
  %i.ag = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv49
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = load ptr, ptr %i.ah, align 64
  tail call void @scsi_remove_host(ptr noundef %i.ai) #15
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, -1
  %.not58 = icmp eq i64 %indvars.iv49, 0
  br i1 %.not58, label %.loopexit, label %.lr.ph44, !llvm.loop !42

.loopexit:                                        ; preds = %bb.e, %.lr.ph44, %bb.a, %bb.d
  %.0 = phi i32 [ %.031, %bb.d ], [ 0, %bb.a ], [ %.031, %.lr.ph44 ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ata_scsi_scan_host(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not48 = icmp eq i32 %1, 0
  br label %.outer

.outer:                                           ; preds = %bb.m, %bb.a
  %.043.ph = phi ptr [ %.468, %bb.m ], [ null, %bb.a ]
  %.0.ph = phi i32 [ %.0, %bb.m ], [ 5, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.o
  %.0 = phi i32 [ %i.z, %bb.o ], [ %.0.ph, %.outer ] ; 2 uses
  %i.a = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #15 ; 2 uses
  %.not62 = icmp eq ptr %i.a, null
  br i1 %.not62, label %._crit_edge66, label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.b, %._crit_edge
  %.04163 = phi ptr [ %i.s, %._crit_edge ], [ %i.a, %bb.b ] ; 7 uses
  %i.b = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %.04163, i32 noundef 0) #15 ; 2 uses
  %.not5159 = icmp eq ptr %i.b, null
  br i1 %.not5159, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph65
  %i.c = getelementptr i8, ptr %.04163, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %.260 = phi ptr [ %i.b, %.lr.ph ], [ %i.r, %bb.i ] ; 3 uses
  %i.d = getelementptr i8, ptr %.260, i64 32      ; 3 uses
  %i.e = load ptr, ptr %i.d, align 32
  %.not52 = icmp eq ptr %i.e, null
  br i1 %.not52, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %.04163, align 64          ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8256
  %i.h = icmp eq ptr %.04163, %i.g
  br i1 %i.h, label %ata_is_host_link.exit.thread, label %ata_is_host_link.exit

ata_is_host_link.exit:                            ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.f, i64 15808
  %i.j = load ptr, ptr %i.i, align 64
  %i.k = icmp eq ptr %.04163, %i.j
  br i1 %i.k, label %ata_is_host_link.exit.thread, label %bb.e

ata_is_host_link.exit.thread:                     ; preds = %bb.d, %ata_is_host_link.exit
  %i.l = getelementptr i8, ptr %.260, i64 8
  %i.m = load i32, ptr %i.l, align 8
  br label %bb.f

bb.e:                                             ; preds = %ata_is_host_link.exit
  %i.n = load i32, ptr %i.c, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ata_is_host_link.exit.thread
  %.039 = phi i32 [ 0, %ata_is_host_link.exit.thread ], [ %i.n, %bb.e ]
  %.038 = phi i32 [ %i.m, %ata_is_host_link.exit.thread ], [ 0, %bb.e ]
  %i.o = load ptr, ptr %0, align 64
  %i.p = tail call ptr @__scsi_add_device(ptr noundef %i.o, i32 noundef %.039, i32 noundef %.038, i64 noundef 0, ptr noundef null) #15 ; 3 uses
  %i.q = icmp ugt ptr %i.p, inttoptr (i64 -4096 to ptr)
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.p, ptr %i.d, align 32
  tail call void @scsi_device_put(ptr noundef %i.p) #15
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store ptr null, ptr %i.d, align 32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.c
  %i.r = tail call ptr @ata_dev_next(ptr noundef nonnull %.260, ptr noundef nonnull %.04163, i32 noundef 0) #15 ; 2 uses
  %.not51 = icmp eq ptr %i.r, null
  br i1 %.not51, label %._crit_edge, label %bb.c, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.i, %.lr.ph65
  %i.s = tail call ptr @ata_link_next(ptr noundef nonnull %.04163, ptr noundef %0, i32 noundef 0) #15 ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %._crit_edge66, label %.lr.ph65, !llvm.loop !44

._crit_edge66:                                    ; preds = %._crit_edge, %bb.b
  %i.t = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #15 ; 2 uses
  %.not4572 = icmp eq ptr %i.t, null
  br i1 %.not4572, label %.critedge, label %.lr.ph75

.lr.ph75:                                         ; preds = %._crit_edge66, %._crit_edge71
  %.14273 = phi ptr [ %i.y, %._crit_edge71 ], [ %i.t, %._crit_edge66 ] ; 3 uses
  %i.u = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %.14273, i32 noundef 0) #15 ; 2 uses
  %.not4667 = icmp eq ptr %i.u, null
  br i1 %.not4667, label %._crit_edge71, label %.lr.ph70

.lr.ph70:                                         ; preds = %.lr.ph75, %bb.j
  %.468 = phi ptr [ %i.x, %bb.j ], [ %i.u, %.lr.ph75 ] ; 4 uses
  %i.v = getelementptr i8, ptr %.468, i64 32
  %i.w = load ptr, ptr %i.v, align 32
  %.not47 = icmp eq ptr %i.w, null
  br i1 %.not47, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph70
  %i.x = tail call ptr @ata_dev_next(ptr noundef nonnull %.468, ptr noundef nonnull %.14273, i32 noundef 0) #15 ; 2 uses
  %.not46 = icmp eq ptr %i.x, null
  br i1 %.not46, label %._crit_edge71, label %.lr.ph70, !llvm.loop !45

._crit_edge71:                                    ; preds = %bb.j, %.lr.ph75
  %i.y = tail call ptr @ata_link_next(ptr noundef nonnull %.14273, ptr noundef %0, i32 noundef 0) #15 ; 2 uses
  %.not45 = icmp eq ptr %i.y, null
  br i1 %.not45, label %.critedge, label %.lr.ph75, !llvm.loop !46

bb.k:                                             ; preds = %.lr.ph70
  br i1 %.not48, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not49 = icmp eq ptr %.468, %.043.ph
  br i1 %.not49, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @msleep(i32 noundef 100) #15
  br label %.outer

bb.n:                                             ; preds = %bb.l
  %i.z = add i32 %.0, -1                          ; 2 uses
  %.not50 = icmp eq i32 %i.z, 0
  br i1 %.not50, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @msleep(i32 noundef 100) #15
  br label %bb.b

bb.p:                                             ; preds = %bb.n
  %i.aa = getelementptr i8, ptr %0, i64 36
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %i.ab) #20 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.p
  %i.ad = load ptr, ptr @system_dfl_long_wq, align 8
  %i.ae = getelementptr i8, ptr %0, i64 16664
  %i.af = tail call i64 @round_jiffies_relative(i64 noundef 1000) #15
  %i.ag = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 64, ptr noundef %i.ad, ptr noundef %i.ae, i64 noundef %i.af) #15 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge66, %._crit_edge71, %.loopexit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ata_dev_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__scsi_add_device(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @round_jiffies_relative(i64 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @ata_scsi_offline_dev(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 32             ; 2 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @scsi_device_set_state(ptr noundef nonnull %i.b, i32 noundef 6) #15 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scsi_device_set_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ata_scsi_media_change_notify(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 32             ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @sdev_evt_send_simple(ptr noundef nonnull %i.b, i32 noundef 1, i32 noundef 2080) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sdev_evt_send_simple(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ata_scsi_hotplug(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -16664
  %i.b = getelementptr i8, ptr %0, i64 -16632
  %i.c = load i32, ptr %i.b, align 32
  %i.d = and i32 %i.c, 512
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 -24        ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.e) #15
  %i.f = getelementptr i8, ptr %0, i64 -8408
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %i.f) #19, !srcloc !47
  %i.g = getelementptr i8, ptr %0, i64 -840       ; 15 uses
  %i.h = load ptr, ptr %i.g, align 16             ; 2 uses
  %.not12 = icmp eq ptr %i.h, null
  br i1 %.not12, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef nonnull %i.h) #19, !srcloc !48
  %i.i = load ptr, ptr %i.g, align 16
  %i.j = getelementptr i8, ptr %i.i, i64 7552
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %i.j) #19, !srcloc !48
  %i.k = load ptr, ptr %i.g, align 16
  %i.l = getelementptr i8, ptr %i.k, i64 15104
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %i.l) #19, !srcloc !48
  %i.m = load ptr, ptr %i.g, align 16
  %i.n = getelementptr i8, ptr %i.m, i64 22656
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %i.n) #19, !srcloc !48
  %i.o = load ptr, ptr %i.g, align 16
  %i.p = getelementptr i8, ptr %i.o, i64 30208
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %i.p) #19, !srcloc !48
  %i.q = load ptr, ptr %i.g, align 16
  %i.r = getelementptr i8, ptr %i.q, i64 37760
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %i.r) #19, !srcloc !48
  %i.s = load ptr, ptr %i.g, align 16
  %i.t = getelementptr i8, ptr %i.s, i64 45312
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %i.t) #19, !srcloc !48
  %i.u = load ptr, ptr %i.g, align 16
  %i.v = getelementptr i8, ptr %i.u, i64 52864
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %i.v) #19, !srcloc !48
  %i.w = load ptr, ptr %i.g, align 16
  %i.x = getelementptr i8, ptr %i.w, i64 60416
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %i.x) #19, !srcloc !48
  %i.y = load ptr, ptr %i.g, align 16
  %i.z = getelementptr i8, ptr %i.y, i64 67968
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %i.z) #19, !srcloc !48
  %i.aa = load ptr, ptr %i.g, align 16
  %i.ab = getelementptr i8, ptr %i.aa, i64 75520
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %i.ab) #19, !srcloc !48
  %i.ac = load ptr, ptr %i.g, align 16
  %i.ad = getelementptr i8, ptr %i.ac, i64 83072
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %i.ad) #19, !srcloc !48
  %i.ae = load ptr, ptr %i.g, align 16
  %i.af = getelementptr i8, ptr %i.ae, i64 90624
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %i.af) #19, !srcloc !48
  %i.ag = load ptr, ptr %i.g, align 16
  %i.ah = getelementptr i8, ptr %i.ag, i64 98176
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %i.ah) #19, !srcloc !48
  %i.ai = load ptr, ptr %i.g, align 16
  %i.aj = getelementptr i8, ptr %i.ai, i64 105728
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %i.aj) #19, !srcloc !48
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.b
  tail call void @ata_scsi_scan_host(ptr noundef %i.a, i32 noundef 0) #19
  tail call void @mutex_unlock(ptr noundef %i.e) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ata_scsi_handle_link_detach(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 64
  %i.b = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %0, i32 noundef 2) #15 ; 2 uses
  %.not15 = icmp eq ptr %i.b, null
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 16       ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %ata_scsi_remove_dev.exit
  %.016 = phi ptr [ %i.b, %.lr.ph ], [ %i.an, %ata_scsi_remove_dev.exit ] ; 6 uses
  %i.d = load ptr, ptr %i.c, align 16
  %i.e = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.d) #15 ; 2 uses
  %i.f = getelementptr i8, ptr %.016, i64 24      ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = and i64 %i.g, 33554432
  %.not14 = icmp eq i64 %i.h, 0
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.c, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.i, i64 noundef %i.e) #15
  br label %ata_scsi_remove_dev.exit

bb.d:                                             ; preds = %bb.b
  %i.j = and i64 %i.g, -33554433
  store i64 %i.j, ptr %i.f, align 8
  %i.k = load ptr, ptr %i.c, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.k, i64 noundef %i.e) #15
  %i.l = load ptr, ptr %.016, align 64
  %i.m = load ptr, ptr %i.l, align 64             ; 3 uses
  %i.n = load ptr, ptr %i.m, align 64
  %i.o = getelementptr i8, ptr %i.n, i64 64
  tail call void @mutex_lock(ptr noundef %i.o) #15
  %i.p = getelementptr i8, ptr %i.m, i64 16       ; 2 uses
  %i.q = load ptr, ptr %i.p, align 16
  %i.r = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.q) #15
  %i.s = getelementptr i8, ptr %.016, i64 32      ; 2 uses
  %i.t = load ptr, ptr %i.s, align 32             ; 4 uses
  store ptr null, ptr %i.s, align 32
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call i32 @scsi_device_get(ptr noundef nonnull %i.t) #15
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = tail call i32 @scsi_device_set_state(ptr noundef nonnull %i.t, i32 noundef 6) #15 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void asm sideeffect "705: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 705b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 705) #16, !srcloc !50
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.5, i32 4941, i32 2305, i64 16) #16, !srcloc !51
  tail call void asm sideeffect "706: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 706b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 706) #16, !srcloc !52
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.0.i = phi ptr [ %i.t, %bb.f ], [ null, %bb.g ], [ null, %bb.d ] ; 5 uses
  %i.x = load ptr, ptr %i.p, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.x, i64 noundef %i.r) #15
  %i.y = load ptr, ptr %i.m, align 64
  %i.z = getelementptr i8, ptr %i.y, i64 64
  tail call void @mutex_unlock(ptr noundef %i.z) #15
  %.not23.i = icmp eq ptr %.0.i, null
  br i1 %.not23.i, label %ata_scsi_remove_dev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %.016, align 64           ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 64
  %i.ac = getelementptr i8, ptr %i.ab, i64 36
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr i8, ptr %i.aa, i64 8
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = getelementptr i8, ptr %.016, i64 8
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = add i32 %i.ah, %i.af
  %i.aj = getelementptr i8, ptr %.0.i, i64 536
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %bb.j, label %dev_name.exit.i

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %.0.i, i64 456
  %.val.i.i = load ptr, ptr %i.al, align 8
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %bb.j, %bb.i
  %.0.i.i = phi ptr [ %.val.i.i, %bb.j ], [ %i.ak, %bb.i ]
  %i.am = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %i.ad, i32 noundef %i.ai, ptr noundef %.0.i.i) #20 ; 0 uses
  tail call void @scsi_remove_device(ptr noundef nonnull %.0.i) #15
  tail call void @scsi_device_put(ptr noundef nonnull %.0.i) #15
  br label %ata_scsi_remove_dev.exit

ata_scsi_remove_dev.exit:                         ; preds = %dev_name.exit.i, %bb.h, %bb.c
  %i.an = tail call ptr @ata_dev_next(ptr noundef nonnull %.016, ptr noundef %0, i32 noundef 2) #15 ; 2 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !49

._crit_edge:                                      ; preds = %ata_scsi_remove_dev.exit, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @ata_scsi_user_scan(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2216
  %.val = load ptr, ptr %i.a, align 8             ; 11 uses
  %i.b = add i64 %3, -1
  %or.cond = icmp ult i64 %i.b, -2
  br i1 %or.cond, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.val, i64 15816   ; 2 uses
  %.val46 = load i32, ptr %i.c, align 8
  %.not51 = icmp eq i32 %.val46, 0
  br i1 %.not51, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = add i32 %1, -1
  %or.cond3 = icmp ult i32 %i.d, -2
  br i1 %or.cond3, label %bb.n, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = add i32 %2, -1
  %or.cond5 = icmp ult i32 %i.e, -2
  br i1 %or.cond5, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.042 = phi i32 [ %2, %bb.c ], [ %1, %bb.d ]    ; 5 uses
  %i.f = getelementptr i8, ptr %.val, i64 16      ; 3 uses
  %i.g = load ptr, ptr %i.f, align 16
  %i.h = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.g) #15 ; 2 uses
  %i.i = icmp eq i32 %.042, -1
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %.val, i32 noundef 0) #15 ; 2 uses
  %.not4552 = icmp eq ptr %i.j, null
  br i1 %.not4552, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.04153 = phi ptr [ %i.q, %.lr.ph ], [ %i.j, %bb.f ] ; 3 uses
  %i.k = getelementptr i8, ptr %.04153, i64 880   ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = or i32 %i.l, 3
  store i32 %i.m, ptr %i.k, align 8
  %i.n = getelementptr i8, ptr %.04153, i64 864   ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = or i32 %i.o, 6
  store i32 %i.p, ptr %i.n, align 8
  %i.q = tail call ptr @ata_link_next(ptr noundef nonnull %.04153, ptr noundef %.val, i32 noundef 0) #15 ; 2 uses
  %.not45 = icmp eq ptr %i.q, null
  br i1 %.not45, label %.loopexit, label %.lr.ph, !llvm.loop !53

bb.g:                                             ; preds = %bb.e
  %.val.i = load i32, ptr %i.c, align 8           ; 2 uses
  %.not.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i, label %bb.h, label %bb.k, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %.val, i64 8256    ; 2 uses
  %i.s = load ptr, ptr %i.r, align 64             ; 3 uses
  %i.t = icmp eq ptr %.val, %i.s
  br i1 %i.t, label %ata_is_host_link.exit.thread.i.i, label %ata_is_host_link.exit.i.i

ata_is_host_link.exit.i.i:                        ; preds = %bb.h
  %i.u = getelementptr i8, ptr %i.s, i64 15808
  %i.v = load ptr, ptr %i.u, align 64
  %i.w = icmp eq ptr %i.r, %i.v
  br i1 %i.w, label %ata_is_host_link.exit.thread.i.i, label %bb.i

ata_is_host_link.exit.thread.i.i:                 ; preds = %ata_is_host_link.exit.i.i, %bb.h
  %i.x = getelementptr i8, ptr %i.s, i64 24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, 1
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %bb.i, label %ata_link_max_devices.exit.i

bb.i:                                             ; preds = %ata_is_host_link.exit.thread.i.i, %ata_is_host_link.exit.i.i
  %i.aa = getelementptr i8, ptr %.val, i64 9472
  br label %ata_find_dev.exit

ata_link_max_devices.exit.i:                      ; preds = %ata_is_host_link.exit.thread.i.i
  %i.ab = icmp ult i32 %.042, 2
  br i1 %i.ab, label %bb.j, label %ata_find_dev.exit.thread

bb.j:                                             ; preds = %ata_link_max_devices.exit.i
  %i.ac = getelementptr i8, ptr %.val, i64 9472
  %i.ad = zext nneg i32 %.042 to i64
  %i.ae = getelementptr [3136 x i8], ptr %i.ac, i64 %i.ad
  br label %ata_find_dev.exit

bb.k:                                             ; preds = %bb.g
  %i.af = icmp ult i32 %.042, %.val.i
  br i1 %i.af, label %bb.l, label %ata_find_dev.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr i8, ptr %.val, i64 15824
  %i.ah = load ptr, ptr %i.ag, align 16
  %i.ai = zext i32 %.042 to i64
  %i.aj = getelementptr [7552 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 1216
  br label %ata_find_dev.exit

ata_find_dev.exit:                                ; preds = %bb.i, %bb.j, %bb.l
  %.1.i = phi ptr [ %i.ae, %bb.j ], [ %i.ak, %bb.l ], [ %i.aa, %bb.i ] ; 3 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %ata_find_dev.exit.thread, label %bb.m

bb.m:                                             ; preds = %ata_find_dev.exit
  %i.al = load ptr, ptr %.1.i, align 64           ; 2 uses
  %i.am = getelementptr i8, ptr %.1.i, i64 8
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = shl nuw i32 1, %i.an
  %i.ap = getelementptr i8, ptr %i.al, i64 880    ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = or i32 %i.aq, %i.ao
  store i32 %i.ar, ptr %i.ap, align 8
  %i.as = getelementptr i8, ptr %i.al, i64 864    ; 2 uses
  %i.at = load i32, ptr %i.as, align 8
  %i.au = or i32 %i.at, 6
  store i32 %i.au, ptr %i.as, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.f, %bb.m
  tail call void @ata_port_schedule_eh(ptr noundef %.val) #15
  %i.av = load ptr, ptr %i.f, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.av, i64 noundef %i.h) #15
  tail call void @ata_port_wait_eh(ptr noundef %.val) #15
  br label %bb.n

ata_find_dev.exit.thread:                         ; preds = %bb.k, %ata_link_max_devices.exit.i, %ata_find_dev.exit
  %i.aw = load ptr, ptr %i.f, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.aw, i64 noundef %i.h) #15
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %ata_find_dev.exit.thread, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ -22, %bb.a ], [ -22, %bb.c ], [ -22, %bb.d ], [ -22, %ata_find_dev.exit.thread ], [ 0, %.loopexit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ata_scsi_dev_rescan(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -16752     ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 -112       ; 3 uses
  tail call void @mutex_lock(ptr noundef %i.b) #15
  %i.c = getelementptr i8, ptr %0, i64 -16736     ; 5 uses
  %i.d = load ptr, ptr %i.c, align 16
  %i.e = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.d) #15 ; 2 uses
  %i.f = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %i.a, i32 noundef 0) #15 ; 2 uses
  %.not85 = icmp eq ptr %i.f, null
  br i1 %.not85, label %.critedge, label %.lr.ph89

.lr.ph89:                                         ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 -16720
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph89, %._crit_edge
  %.087 = phi ptr [ %i.f, %.lr.ph89 ], [ %i.z, %._crit_edge ] ; 3 uses
  %.04086 = phi i64 [ %i.e, %.lr.ph89 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.h = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %.087, i32 noundef 0) #15 ; 2 uses
  %.not4982 = icmp eq ptr %i.h, null
  br i1 %.not4982, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %select.unfold
  %.03884 = phi ptr [ %i.y, %select.unfold ], [ %i.h, %bb.b ] ; 3 uses
  %.183 = phi i64 [ %.2.ph, %select.unfold ], [ %.04086, %bb.b ] ; 4 uses
  %i.i = getelementptr i8, ptr %.03884, i64 32
  %i.j = load ptr, ptr %i.i, align 32             ; 6 uses
  %i.k = load i32, ptr %i.g, align 32
  %i.l = and i32 %i.k, 131072
  %.not50 = icmp eq i32 %i.l, 0
  br i1 %.not50, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %.not51 = icmp eq ptr %i.j, null
  br i1 %.not51, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @scsi_device_get(ptr noundef nonnull %i.j) #15
  %.not52 = icmp eq i32 %i.m, 0
  br i1 %.not52, label %bb.e, label %select.unfold

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %.03884, i64 24    ; 3 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, 4194304
  %.not53 = icmp eq i64 %i.p, 0
  %i.q = load ptr, ptr %i.c, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.q, i64 noundef %.183) #15
  br i1 %.not53, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @scsi_resume_device(ptr noundef nonnull %i.j) #15
  %i.s = icmp eq i32 %i.r, -11
  br i1 %i.s, label %.thread69, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i64, ptr %i.n, align 8
  %i.u = and i64 %i.t, -4194305
  store i64 %i.u, ptr %i.n, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.v = tail call i32 @scsi_rescan_device(ptr noundef nonnull %i.j) #15
  tail call void @scsi_device_put(ptr noundef nonnull %i.j) #15
  %i.w = load ptr, ptr %i.c, align 16
  %i.x = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.w) #15 ; 2 uses
  %.not54 = icmp eq i32 %i.v, 0
  br i1 %.not54, label %select.unfold, label %.thread65

.thread69:                                        ; preds = %bb.f
  tail call void @scsi_device_put(ptr noundef nonnull %i.j) #15
  br label %bb.i

select.unfold:                                    ; preds = %bb.h, %bb.c, %bb.d
  %.2.ph = phi i64 [ %.183, %bb.c ], [ %.183, %bb.d ], [ %i.x, %bb.h ] ; 2 uses
  %i.y = tail call ptr @ata_dev_next(ptr noundef nonnull %.03884, ptr noundef nonnull %.087, i32 noundef 0) #15 ; 2 uses
  %.not49 = icmp eq ptr %i.y, null
  br i1 %.not49, label %._crit_edge, label %.lr.ph, !llvm.loop !54

._crit_edge:                                      ; preds = %select.unfold, %bb.b
  %.1.lcssa = phi i64 [ %.04086, %bb.b ], [ %.2.ph, %select.unfold ] ; 2 uses
  %i.z = tail call ptr @ata_link_next(ptr noundef nonnull %.087, ptr noundef %i.a, i32 noundef 0) #15 ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !55

.thread65:                                        ; preds = %bb.h
  %i.aa = load ptr, ptr %i.c, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.aa, i64 noundef %i.x) #15
  br label %bb.i

bb.i:                                             ; preds = %.thread65, %.thread69
  tail call void @mutex_unlock(ptr noundef %i.b) #15
  %i.ab = load ptr, ptr @system_percpu_wq, align 8
  %i.ac = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 64, ptr noundef %i.ab, ptr noundef %0, i64 noundef 5) #15 ; 0 uses
  br label %bb.j

.critedge:                                        ; preds = %._crit_edge, %.lr.ph, %bb.a
  %.3.ph = phi i64 [ %.183, %.lr.ph ], [ %i.e, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  %i.ad = load ptr, ptr %i.c, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.ad, i64 noundef %.3.ph) #15
  tail call void @mutex_unlock(ptr noundef %i.b) #15
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.i
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scsi_device_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scsi_resume_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scsi_rescan_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_large_noprof(i64 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ata_id_string(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ata_qc_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 2) i32 @ata_scsi_rw_xlat(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 30 uses
  %i.c = getelementptr i8, ptr %i.b, i64 164
  %i.d = getelementptr i8, ptr %i.b, i64 -192
  %.val44 = load ptr, ptr %i.d, align 8           ; 2 uses
  %.not.i = icmp eq ptr %.val44, null
  br i1 %.not.i, label %req_get_ioprio.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.val44, i64 22
  %i.f = load i16, ptr %i.e, align 2
  %i.g = lshr i16 %i.f, 13
  %i.h = zext nneg i16 %i.g to i32
  br label %req_get_ioprio.exit

req_get_ioprio.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %i.i = load i8, ptr %i.c, align 4               ; 2 uses
  switch i8 %i.i, label %bb.d [
    i8 10, label %bb.c
    i8 42, label %bb.c
    i8 -118, label %bb.c
  ]

bb.c:                                             ; preds = %req_get_ioprio.exit, %req_get_ioprio.exit, %req_get_ioprio.exit
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %req_get_ioprio.exit
  %.037 = phi i32 [ 0, %req_get_ioprio.exit ], [ 8, %bb.c ] ; 3 uses
  switch i8 %i.i, label %bb.k [
    i8 40, label %bb.e
    i8 42, label %bb.e
    i8 8, label %bb.g
    i8 10, label %bb.g
    i8 -120, label %bb.i
    i8 -118, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.j = getelementptr i8, ptr %i.b, i64 156
  %i.k = load i16, ptr %i.j, align 4
  %i.l = icmp ult i16 %i.k, 10
  br i1 %i.l, label %bb.k, label %bb.f, !prof !18

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.b, i64 166
  %.val4.i = load i32, ptr %i.m, align 2
  %i.n = tail call i32 @llvm.bswap.i32(i32 %.val4.i)
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr i8, ptr %i.b, i64 171
  %.val.i = load i16, ptr %i.p, align 1
  %i.q = tail call i16 @llvm.bswap.i16(i16 %.val.i)
  %i.r = zext i16 %i.q to i32                     ; 3 uses
  %i.s = getelementptr i8, ptr %i.b, i64 165
  %i.t = load i8, ptr %i.s, align 1               ; 2 uses
  %i.u = getelementptr i8, ptr %i.b, i64 -224
  %.val.i47 = load i32, ptr %i.u, align 8
  %i.v = and i32 %.val.i47, 254
  %i.w = icmp eq i32 %i.v, 34
  br i1 %i.w, label %ata_check_nblocks.exit, label %ata_check_nblocks.exit.thread

ata_check_nblocks.exit:                           ; preds = %bb.f
  %i.x = getelementptr i8, ptr %i.b, i64 -204
  %.val6.i = load i32, ptr %i.x, align 4
  %i.y = load ptr, ptr %i.b, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 164
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = udiv i32 %.val6.i, %i.aa
  %.not82 = icmp ult i32 %i.ab, %i.r
  br i1 %.not82, label %bb.k, label %ata_check_nblocks.exit.thread

bb.g:                                             ; preds = %bb.d, %bb.d
  %i.ac = getelementptr i8, ptr %i.b, i64 156
  %i.ad = load i16, ptr %i.ac, align 4
  %i.ae = icmp ult i16 %i.ad, 6
  br i1 %i.ae, label %bb.k, label %bb.h, !prof !18

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr i8, ptr %i.b, i64 165
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 16
  %i.aj = getelementptr i8, ptr %i.b, i64 166
  %i.ak = load i8, ptr %i.aj, align 2
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 8
  %i.an = getelementptr i8, ptr %i.b, i64 167
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i64
  %.masked4.i = and i64 %i.ai, 2031616
  %.masked.i = or disjoint i64 %i.am, %.masked4.i
  %i.aq = or disjoint i64 %.masked.i, %i.ap       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.b, i64 168
  %i.as = load i8, ptr %i.ar, align 8             ; 2 uses
  %i.at = zext i8 %i.as to i32
  %.not40 = icmp eq i8 %i.as, 0
  %spec.select80 = select i1 %.not40, i32 256, i32 %i.at ; 3 uses
  %i.au = getelementptr i8, ptr %i.b, i64 -224
  %.val.i49 = load i32, ptr %i.au, align 8
  %i.av = and i32 %.val.i49, 254
  %i.aw = icmp eq i32 %i.av, 34
  br i1 %i.aw, label %ata_check_nblocks.exit52, label %.thread

ata_check_nblocks.exit52:                         ; preds = %bb.h
  %i.ax = getelementptr i8, ptr %i.b, i64 -204
  %.val6.i51 = load i32, ptr %i.ax, align 4
  %i.ay = load ptr, ptr %i.b, align 8
  %i.az = getelementptr i8, ptr %i.ay, i64 164
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = udiv i32 %.val6.i51, %i.ba
  %.not81 = icmp ugt i32 %spec.select80, %i.bb
  br i1 %.not81, label %bb.k, label %.thread

bb.i:                                             ; preds = %bb.d, %bb.d
  %i.bc = getelementptr i8, ptr %i.b, i64 156
  %i.bd = load i16, ptr %i.bc, align 4
  %i.be = icmp ult i16 %i.bd, 16
  br i1 %i.be, label %bb.k, label %bb.j, !prof !18

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr i8, ptr %i.b, i64 166
  %.val4.i53 = load i64, ptr %i.bf, align 2
  %i.bg = tail call i64 @llvm.bswap.i64(i64 %.val4.i53) ; 2 uses
  %i.bh = getelementptr i8, ptr %i.b, i64 174
  %.val.i54 = load i32, ptr %i.bh, align 2
  %i.bi = tail call i32 @llvm.bswap.i32(i32 %.val.i54) ; 3 uses
  %i.bj = getelementptr i8, ptr %i.b, i64 165
  %.val45 = load i8, ptr %i.bj, align 1           ; 3 uses
  %i.bk = getelementptr i8, ptr %i.b, i64 178
  %.val46 = load i8, ptr %i.bk, align 2
  %i.bl = shl i8 %.val45, 2
  %i.bm = and i8 %i.bl, 4
  %i.bn = lshr i8 %.val46, 6
  %i.bo = or disjoint i8 %i.bm, %i.bn             ; 2 uses
  %i.bp = getelementptr i8, ptr %i.b, i64 -224
  %.val.i55 = load i32, ptr %i.bp, align 8
  %i.bq = and i32 %.val.i55, 254
  %i.br = icmp eq i32 %i.bq, 34
  br i1 %i.br, label %ata_check_nblocks.exit58, label %ata_check_nblocks.exit.thread

ata_check_nblocks.exit58:                         ; preds = %bb.j
  %i.bs = getelementptr i8, ptr %i.b, i64 -204
  %.val6.i57 = load i32, ptr %i.bs, align 4
  %i.bt = load ptr, ptr %i.b, align 8
  %i.bu = getelementptr i8, ptr %i.bt, i64 164
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = udiv i32 %.val6.i57, %i.bv
  %.not = icmp ugt i32 %i.bi, %i.bw
  br i1 %.not, label %bb.k, label %ata_check_nblocks.exit.thread

ata_check_nblocks.exit.thread:                    ; preds = %bb.j, %bb.f, %ata_check_nblocks.exit58, %ata_check_nblocks.exit
  %.067 = phi i64 [ %i.o, %ata_check_nblocks.exit ], [ %i.o, %bb.f ], [ %i.bg, %ata_check_nblocks.exit58 ], [ %i.bg, %bb.j ]
  %.1 = phi i32 [ %i.r, %ata_check_nblocks.exit ], [ %i.r, %bb.f ], [ %i.bi, %ata_check_nblocks.exit58 ], [ %i.bi, %bb.j ] ; 2 uses
  %.pn.in.in.in = phi i8 [ %i.t, %ata_check_nblocks.exit ], [ %i.t, %bb.f ], [ %.val45, %ata_check_nblocks.exit58 ], [ %.val45, %bb.j ]
  %.036.shrunk = phi i8 [ 0, %ata_check_nblocks.exit ], [ 0, %bb.f ], [ %i.bo, %ata_check_nblocks.exit58 ], [ %i.bo, %bb.j ]
  %.036 = zext nneg i8 %.036.shrunk to i32
  %.pn.in.in = shl i8 %.pn.in.in.in, 2
  %.pn.in = and i8 %.pn.in.in, 32
  %.pn = zext nneg i8 %.pn.in to i32
  %.3 = or disjoint i32 %.037, %.pn
  %.not42 = icmp eq i32 %.1, 0
  br i1 %.not42, label %bb.m, label %.thread

.thread:                                          ; preds = %bb.h, %ata_check_nblocks.exit52, %ata_check_nblocks.exit.thread
  %.03679 = phi i32 [ %.036, %ata_check_nblocks.exit.thread ], [ 0, %ata_check_nblocks.exit52 ], [ 0, %bb.h ]
  %.378 = phi i32 [ %.3, %ata_check_nblocks.exit.thread ], [ %.037, %ata_check_nblocks.exit52 ], [ %.037, %bb.h ]
  %.177 = phi i32 [ %.1, %ata_check_nblocks.exit.thread ], [ %spec.select80, %ata_check_nblocks.exit52 ], [ %spec.select80, %bb.h ] ; 2 uses
  %.06776 = phi i64 [ %.067, %ata_check_nblocks.exit.thread ], [ %i.aq, %ata_check_nblocks.exit52 ], [ %i.aq, %bb.h ]
  %i.bx = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = or i64 %i.by, 8
  store i64 %i.bz, ptr %i.bx, align 8
  %i.ca = load ptr, ptr %i.b, align 8
  %i.cb = getelementptr i8, ptr %i.ca, i64 164
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = mul i32 %i.cc, %.177
  %i.ce = getelementptr i8, ptr %0, i64 112
  store i32 %i.cd, ptr %i.ce, align 8
  %i.cf = tail call i32 @ata_build_rw_tf(ptr noundef %0, i64 noundef %.06776, i32 noundef %.177, i32 noundef %.378, i32 noundef %.03679, i32 noundef %.0.i) #15 ; 2 uses
  switch i32 %i.cf, label %bb.k [
    i32 0, label %bb.n
    i32 -34, label %bb.l
  ], !prof !56

bb.k:                                             ; preds = %.thread, %bb.d, %bb.i, %bb.g, %bb.e, %ata_check_nblocks.exit58, %ata_check_nblocks.exit52, %ata_check_nblocks.exit
  %.0 = phi i16 [ 15, %bb.i ], [ 0, %ata_check_nblocks.exit58 ], [ 0, %.thread ], [ 0, %ata_check_nblocks.exit ], [ 9, %bb.e ], [ 0, %ata_check_nblocks.exit52 ], [ 5, %bb.g ], [ 0, %bb.d ]
  %i.cg = getelementptr i8, ptr %0, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr i8, ptr %i.ch, i64 24
  %.val = load i64, ptr %i.ci, align 8
  %i.cj = trunc i64 %.val to i32
  %i.ck = lshr i32 %i.cj, 29
  %i.cl = and i32 %i.ck, 1
  tail call void @scsi_build_sense(ptr noundef %i.b, i32 noundef %i.cl, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #15
  %i.cm = getelementptr i8, ptr %i.b, i64 248
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %i.cn, i32 noundef 96, i16 noundef zeroext %.0, i8 noundef zeroext -1, i1 noundef zeroext true) #15 ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %.thread
  %i.cp = getelementptr i8, ptr %0, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = getelementptr i8, ptr %i.cq, i64 24
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = lshr i32 %i.ct, 29
  %i.cv = and i32 %i.cu, 1
  tail call void @scsi_build_sense(ptr noundef %i.b, i32 noundef %i.cv, i8 noundef zeroext 5, i8 noundef zeroext 33, i8 noundef zeroext 0) #15
  br label %bb.n

bb.m:                                             ; preds = %ata_check_nblocks.exit.thread
  %i.cw = getelementptr i8, ptr %i.b, i64 288
  store i32 0, ptr %i.cw, align 8
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m, %bb.l, %bb.k
  %.038 = phi i32 [ 1, %bb.k ], [ 1, %bb.m ], [ 1, %bb.l ], [ %i.cf, %.thread ]
  ret i32 %.038
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 2) i32 @ata_scsi_write_same_xlat(ptr nofree noundef captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 12 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 164
  %i.f = load i32, ptr %i.e, align 4              ; 4 uses
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 9 uses
  %i.i = lshr i32 %i.f, 3                         ; 2 uses
  %i.j = getelementptr i8, ptr %i.c, i64 165
  %i.k = load i8, ptr %i.j, align 1
  %i.l = and i8 %i.k, 8
  %i.m = getelementptr i8, ptr %i.h, i64 857
  %.val58 = load i8, ptr %i.m, align 1
  %.not67 = icmp eq i8 %.val58, -1
  br i1 %.not67, label %bb.s, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.c, i64 -224
  %.val59 = load i32, ptr %i.n, align 8
  %i.o = and i32 %.val59, 254
  %i.p = icmp eq i32 %i.o, 34
  br i1 %i.p, label %bb.s, label %bb.c, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.c, i64 156
  %i.r = load i16, ptr %i.q, align 4
  %i.s = icmp ult i16 %i.r, 16
  br i1 %i.s, label %ata_id_has_trim.exit, label %bb.d, !prof !18

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.c, i64 166
  %.val4.i = load i64, ptr %i.t, align 2
  %i.u = tail call i64 @llvm.bswap.i64(i64 %.val4.i)
  %i.v = getelementptr i8, ptr %i.c, i64 174
  %.val.i = load i32, ptr %i.v, align 2
  %i.w = tail call i32 @llvm.bswap.i32(i32 %.val.i) ; 2 uses
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %ata_id_has_trim.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr i8, ptr %i.h, i64 16
  %i.y = load i64, ptr %i.x, align 16
  %i.z = and i64 %i.y, 4194304
  %.not53 = icmp eq i64 %i.z, 0
  br i1 %.not53, label %bb.f, label %ata_id_has_trim.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %i.h, i64 1056
  %.val.i60 = load i16, ptr %i.aa, align 16       ; 2 uses
  %i.ab = icmp eq i16 %.val.i60, -1
  %i.ac = and i16 %.val.i60, 32640
  %or.cond9.i = icmp eq i16 %i.ac, 0
  %or.cond.i = or i1 %i.ab, %or.cond9.i
  br i1 %or.cond.i, label %ata_id_has_trim.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %i.h, i64 1234
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = and i16 %i.ae, 1
  %.not.i = icmp eq i16 %i.af, 0
  br i1 %.not.i, label %ata_id_has_trim.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = mul i32 %i.i, 65535
  %i.ah = icmp ugt i32 %i.w, %i.ag
  br i1 %i.ah, label %ata_id_has_trim.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr i8, ptr %i.c, i64 208     ; 2 uses
  %.val57 = load i32, ptr %i.ai, align 8
  %.not54 = icmp eq i32 %.val57, 0
  br i1 %.not54, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp ugt i32 %i.f, 2048
  br i1 %i.aj, label %bb.k, label %bb.l, !prof !18

bb.k:                                             ; preds = %bb.j
  tail call void asm sideeffect "691: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 691b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 691) #16, !srcloc !57
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.5, i32 3555, i32 2305, i64 16) #16, !srcloc !58
  tail call void asm sideeffect "692: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 692b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 692) #16, !srcloc !59
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %narrow.i = tail call i32 @llvm.umin.i32(i32 %i.f, i32 2048)
  %spec.store.select.i = zext nneg i32 %narrow.i to i64 ; 2 uses
  %i.ak = tail call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull @ata_scsi_rbuf_lock) #15
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @ata_scsi_rbuf, i8 0, i64 %spec.store.select.i, i1 false)
  %wide.trip.count.i = zext nneg i32 %i.i to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.n ], [ 0, %bb.l ] ; 3 uses
  %.027.i = phi i32 [ %i.ar, %bb.n ], [ %i.w, %bb.l ] ; 3 uses
  %.026.i = phi i64 [ %i.as, %bb.n ], [ %i.u, %bb.l ] ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ata_format_dsm_trim_descr.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = tail call i32 @llvm.umin.i32(i32 %.027.i, i32 65535)
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl nuw i64 %i.am, 48
  %i.ao = or i64 %i.an, %.026.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.ap = getelementptr [8 x i8], ptr @ata_scsi_rbuf, i64 %indvars.iv.i
  store i64 %i.ao, ptr %i.ap, align 8
  %i.aq = icmp ult i32 %.027.i, 65536
  %i.ar = add i32 %.027.i, -65535
  %i.as = add i64 %.026.i, 65535
  br i1 %i.aq, label %ata_format_dsm_trim_descr.exit, label %bb.m

ata_format_dsm_trim_descr.exit:                   ; preds = %bb.m, %bb.n
  %i.at = getelementptr i8, ptr %i.c, i64 200
  %.val.i61 = load ptr, ptr %i.at, align 8
  %.val30.i = load i32, ptr %i.ai, align 8
  %i.au = tail call i64 @sg_copy_from_buffer(ptr noundef %.val.i61, i32 noundef %.val30.i, ptr noundef nonnull @ata_scsi_rbuf, i64 noundef %spec.store.select.i) #15 ; 5 uses
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ata_scsi_rbuf_lock, i64 noundef %i.ak) #15
  %i.av = trunc i64 %i.au to i32
  %.not55 = icmp eq i32 %i.f, %i.av
  br i1 %.not55, label %bb.o, label %bb.r

bb.o:                                             ; preds = %ata_format_dsm_trim_descr.exit
  %i.aw = getelementptr i8, ptr %i.h, i64 24
  %.val56 = load i64, ptr %i.aw, align 8
  %i.ax = and i64 %.val56, 51208
  %or.cond.not = icmp eq i64 %i.ax, 2056
  br i1 %or.cond.not, label %ata_fpdma_dsm_supported.exit, label %ata_fpdma_dsm_supported.exit.thread

ata_fpdma_dsm_supported.exit:                     ; preds = %bb.o
  %i.ay = getelementptr i8, ptr %i.h, i64 1932
  %i.az = load i8, ptr %i.ay, align 4
  %i.ba = trunc i8 %i.az to i1
  br i1 %i.ba, label %bb.p, label %ata_fpdma_dsm_supported.exit.thread

bb.p:                                             ; preds = %ata_fpdma_dsm_supported.exit
  %i.bb = getelementptr i8, ptr %0, i64 40
  store i8 6, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %0, i64 53
  store i8 100, ptr %i.bc, align 1
  %i.bd = getelementptr i8, ptr %0, i64 43
  store i8 0, ptr %i.bd, align 1
  %i.be = getelementptr i8, ptr %0, i64 92
  %i.bf = load i32, ptr %i.be, align 4
  %.tr = trunc i32 %i.bf to i8
  %i.bg = shl i8 %.tr, 3
  %i.bh = getelementptr i8, ptr %0, i64 48
  store i8 %i.bg, ptr %i.bh, align 8
  %i.bi = lshr i64 %i.au, 17
  %i.bj = trunc i64 %i.bi to i8
  %i.bk = getelementptr i8, ptr %0, i64 42
  store i8 %i.bj, ptr %i.bk, align 2
  %i.bl = lshr i64 %i.au, 9
  %i.bm = trunc i64 %i.bl to i8
  %i.bn = getelementptr i8, ptr %0, i64 47
  store i8 %i.bm, ptr %i.bn, align 1
  %i.bo = getelementptr i8, ptr %0, i64 56
  store i32 1, ptr %i.bo, align 8
  br label %bb.q

ata_fpdma_dsm_supported.exit.thread:              ; preds = %ata_fpdma_dsm_supported.exit, %bb.o
  %i.bp = getelementptr i8, ptr %0, i64 40
  store i8 2, ptr %i.bp, align 8
  %i.bq = getelementptr i8, ptr %0, i64 42
  store i8 0, ptr %i.bq, align 2
  %i.br = getelementptr i8, ptr %0, i64 47
  store i8 1, ptr %i.br, align 1
  %i.bs = lshr i64 %i.au, 17
  %i.bt = trunc i64 %i.bs to i8
  %i.bu = getelementptr i8, ptr %0, i64 43
  store i8 %i.bt, ptr %i.bu, align 1
  %i.bv = lshr i64 %i.au, 9
  %i.bw = trunc i64 %i.bv to i8
  %i.bx = getelementptr i8, ptr %0, i64 48
  store i8 %i.bw, ptr %i.bx, align 8
  %i.by = getelementptr i8, ptr %0, i64 53
  store i8 6, ptr %i.by, align 1
  br label %bb.q

bb.q:                                             ; preds = %ata_fpdma_dsm_supported.exit.thread, %bb.p
  %i.bz = load i64, ptr %i.a, align 8
  %i.ca = or i64 %i.bz, 15
  store i64 %i.ca, ptr %i.a, align 8
  %i.cb = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 272
  %i.cd = load i32, ptr %i.cc, align 8            ; 2 uses
  %i.ce = getelementptr i8, ptr %0, i64 116
  store i32 %i.cd, ptr %i.ce, align 4
  %i.cf = getelementptr i8, ptr %i.cb, i64 216
  %.val.i63 = load i32, ptr %i.cf, align 8
  %i.cg = add i32 %.val.i63, %i.cd
  %i.ch = getelementptr i8, ptr %0, i64 112
  store i32 %i.cg, ptr %i.ch, align 8
  br label %bb.t

ata_id_has_trim.exit:                             ; preds = %bb.g, %bb.f, %bb.h, %bb.d, %bb.e, %bb.c
  %.051 = phi i16 [ 1, %bb.d ], [ 15, %bb.c ], [ 2, %bb.h ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ]
  %.0 = phi i8 [ 3, %bb.d ], [ -1, %bb.c ], [ -1, %bb.h ], [ 3, %bb.e ], [ 3, %bb.f ], [ 3, %bb.g ]
  %i.ci = getelementptr i8, ptr %i.h, i64 24
  %.val = load i64, ptr %i.ci, align 8
  %i.cj = trunc i64 %.val to i32
  %i.ck = lshr i32 %i.cj, 29
  %i.cl = and i32 %i.ck, 1
  tail call void @scsi_build_sense(ptr noundef %i.c, i32 noundef %i.cl, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #15
  %i.cm = getelementptr i8, ptr %i.c, i64 248
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %i.cn, i32 noundef 96, i16 noundef zeroext %.051, i8 noundef zeroext range(i8 -1, 6) %.0, i1 noundef zeroext true) #15 ; 0 uses
  br label %bb.t

bb.r:                                             ; preds = %ata_format_dsm_trim_descr.exit, %bb.i
  %i.cp = getelementptr i8, ptr %i.h, i64 24
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = lshr i32 %i.cr, 29
  %i.ct = and i32 %i.cs, 1
  tail call void @scsi_build_sense(ptr noundef %i.c, i32 noundef %i.ct, i8 noundef zeroext 5, i8 noundef zeroext 26, i8 noundef zeroext 0) #15
  br label %bb.t

bb.s:                                             ; preds = %bb.b, %bb.a
  %i.cu = getelementptr i8, ptr %i.h, i64 24
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = lshr i32 %i.cw, 29
  %i.cy = and i32 %i.cx, 1
  tail call void @scsi_build_sense(ptr noundef %i.c, i32 noundef %i.cy, i8 noundef zeroext 5, i8 noundef zeroext 32, i8 noundef zeroext 0) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %ata_id_has_trim.exit, %bb.q
  %.052 = phi i32 [ 1, %bb.s ], [ 1, %ata_id_has_trim.exit ], [ 1, %bb.r ], [ 0, %bb.q ]
  ret i32 %.052
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal noundef i32 @ata_scsi_flush_xlat(ptr nofree noundef captures(none) initializes((40, 41), (53, 54)) %0) #12 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = or i64 %i.b, 4
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr i8, ptr %0, i64 40
  store i8 0, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 16
  %.not = icmp eq i64 %i.i, 0
  %spec.select = select i1 %.not, i8 -25, i8 -22
  %i.j = getelementptr i8, ptr %0, i64 53
  store i8 %spec.select, ptr %i.j, align 1
  %i.k = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = or i64 %i.l, 8
  store i64 %i.m, ptr %i.k, align 8
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 2) i32 @ata_scsi_verify_xlat(ptr nofree noundef captures(none) initializes((40, 41)) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 11 uses
  %i.c = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 6 uses
  %i.f = getelementptr i8, ptr %i.e, i64 824
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr i8, ptr %i.b, i64 164
  %i.i = load i64, ptr %i.c, align 8              ; 3 uses
  %i.j = or i64 %i.i, 6
  store i64 %i.j, ptr %i.c, align 8
  %i.k = getelementptr i8, ptr %0, i64 40
  store i8 0, ptr %i.k, align 8
  %i.l = load i8, ptr %i.h, align 1
  switch i8 %i.l, label %bb.r [
    i8 47, label %bb.b
    i8 -113, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.b, i64 156
  %i.n = load i16, ptr %i.m, align 4
end_hunk_0
begin_hunk_1_@ata_scsi_pass_thru:bb.a
    i8 38, label %bb.y
    i8 96, label %bb.y
    i8 -60, label %bb.y
    i8 41, label %bb.y
    i8 32, label %bb.y
    i8 36, label %bb.y
    i8 42, label %bb.y
    i8 43, label %bb.y
    i8 64, label %bb.y
    i8 66, label %bb.y
    i8 -54, label %bb.y
    i8 53, label %bb.y
    i8 61, label %bb.y
    i8 54, label %bb.y
    i8 62, label %bb.y
    i8 97, label %bb.y
    i8 -59, label %bb.y
    i8 57, label %bb.y
    i8 -50, label %bb.y
    i8 48, label %bb.y
    i8 52, label %bb.y
    i8 58, label %bb.y
    i8 59, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v, %bb.v, %bb.v, %bb.v
  %.not139 = icmp eq i8 %i.aa, 1
  %.not140 = icmp eq i8 %i.ep, 1
  %or.cond166 = select i1 %.not139, i1 %.not140, i1 false
  br i1 %or.cond166, label %bb.x, label %bb.an

bb.x:                                             ; preds = %bb.w
  %i.ev = getelementptr i8, ptr %i.c, i64 216
  %.val146 = load i32, ptr %i.ev, align 8
  br label %bb.z

bb.y:                                             ; preds = %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v
  %i.ew = load ptr, ptr %i.c, align 8
  %i.ex = getelementptr i8, ptr %i.ew, i64 164
  %i.ey = load i32, ptr %i.ex, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.y, %bb.x
  %.sink = phi i32 [ %.val146, %bb.x ], [ %i.ey, %bb.y ], [ 512, %bb.v ]
  %i.ez = getelementptr i8, ptr %0, i64 108
  store i32 %.sink, ptr %i.ez, align 4
  %i.fa = or i64 %i.eh, 6
  store i64 %i.fa, ptr %i.a, align 8
  %i.fb = getelementptr i8, ptr %i.c, i64 160
  %i.fc = load i32, ptr %i.fb, align 8
  %i.fd = icmp eq i32 %i.fc, 1
  br i1 %i.fd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fe = or i64 %i.eh, 14
  store i64 %i.fe, ptr %i.a, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ff = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8
  %i.fh = or i64 %i.fg, 80
  store i64 %i.fh, ptr %i.ff, align 8
  %i.fi = getelementptr i8, ptr %i.c, i64 272
  %i.fj = load i32, ptr %i.fi, align 8            ; 2 uses
  %i.fk = getelementptr i8, ptr %0, i64 116
  store i32 %i.fj, ptr %i.fk, align 4
  %i.fl = getelementptr i8, ptr %i.c, i64 216
  %.val.i = load i32, ptr %i.fl, align 8
  %i.fm = add i32 %.val.i, %i.fj
  %i.fn = getelementptr i8, ptr %0, i64 112
  store i32 %i.fm, ptr %i.fn, align 8
  %i.fo = icmp eq i8 %i.aa, 2
  br i1 %i.fo, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fp = getelementptr i8, ptr %i.e, i64 857
  %.val148 = load i8, ptr %i.fp, align 1
  %.not161 = icmp eq i8 %.val148, -1
  br i1 %.not161, label %bb.an, label %.thread

bb.ad:                                            ; preds = %bb.ab
  br i1 %.not160, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fq = getelementptr i8, ptr %i.e, i64 24
  %.val147 = load i64, ptr %i.fq, align 8
  %i.fr = and i64 %.val147, 49160
  %i.fs = icmp eq i64 %i.fr, 8
  br i1 %i.fs, label %.thread, label %bb.an

.thread:                                          ; preds = %bb.ac, %bb.ae, %bb.ad
  %i.ft = getelementptr i8, ptr %i.c, i64 165
  %i.fu = load i8, ptr %i.ft, align 1             ; 2 uses
  %.not141 = icmp ult i8 %i.fu, 32
  br i1 %.not141, label %is_multi_taskfile.exit.thread, label %bb.af

bb.af:                                            ; preds = %.thread
  switch i8 %.val149, label %bb.an [
    i8 -60, label %is_multi_taskfile.exit151.thread
    i8 -59, label %is_multi_taskfile.exit151.thread
    i8 41, label %is_multi_taskfile.exit151.thread
    i8 57, label %is_multi_taskfile.exit151.thread
    i8 -50, label %is_multi_taskfile.exit151.thread
  ]

is_multi_taskfile.exit.thread:                    ; preds = %.thread
  switch i8 %.val149, label %bb.ah [
    i8 -60, label %is_multi_taskfile.exit151.thread
    i8 -59, label %is_multi_taskfile.exit151.thread
    i8 41, label %is_multi_taskfile.exit151.thread
    i8 57, label %is_multi_taskfile.exit151.thread
    i8 -50, label %is_multi_taskfile.exit151.thread
  ]

is_multi_taskfile.exit151.thread:                 ; preds = %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %is_multi_taskfile.exit.thread, %is_multi_taskfile.exit.thread, %is_multi_taskfile.exit.thread, %is_multi_taskfile.exit.thread, %is_multi_taskfile.exit.thread
  %i.fv = lshr i8 %i.fu, 5
  %i.fw = zext nneg i8 %i.fv to i32
  %i.fx = shl nuw nsw i32 1, %i.fw                ; 2 uses
  %i.fy = getelementptr i8, ptr %i.e, i64 864
  %i.fz = load i32, ptr %i.fy, align 32
  %.not144 = icmp eq i32 %i.fx, %i.fz
  br i1 %.not144, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %is_multi_taskfile.exit151.thread
  %i.ga = load ptr, ptr %i.e, align 64            ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 64
  %i.gc = getelementptr i8, ptr %i.gb, i64 36
  %i.gd = load i32, ptr %i.gc, align 4
  %i.ge = getelementptr i8, ptr %i.ga, i64 8
  %i.gf = load i32, ptr %i.ge, align 8
  %i.gg = load i32, ptr %i.eq, align 8
  %i.gh = add i32 %i.gg, %i.gf
  %i.gi = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %i.gd, i32 noundef %i.gh, i32 noundef %i.fx) #20 ; 0 uses
  %.pre = load i8, ptr %i.eu, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %is_multi_taskfile.exit.thread, %is_multi_taskfile.exit151.thread, %bb.ag
  %i.gj = phi i8 [ %.val149, %is_multi_taskfile.exit.thread ], [ %.val149, %is_multi_taskfile.exit151.thread ], [ %.pre, %bb.ag ] ; 3 uses
  %i.gk = icmp eq i8 %i.gj, -17
  br i1 %i.gk, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.gl = getelementptr i8, ptr %0, i64 47
  %i.gm = load i8, ptr %i.gl, align 1
  %i.gn = icmp eq i8 %i.gm, 3
  br i1 %i.gn, label %bb.aj, label %.thread157

bb.aj:                                            ; preds = %bb.ai
  %i.go = load i8, ptr %i.f, align 4
  %i.gp = icmp eq i8 %i.go, -123
  %i.gq = select i1 %i.gp, i16 4, i16 3
  br label %bb.an

bb.ak:                                            ; preds = %bb.ah
  %i.gr = icmp ugt i8 %i.gj, 91
  br i1 %i.gr, label %bb.al, label %.thread157

bb.al:                                            ; preds = %bb.ak
  %i.gs = icmp ugt i8 %i.gj, 95
  %i.gt = load i32, ptr @libata_allow_tpm, align 4
  %i.gu = icmp ne i32 %i.gt, 0
  %or.cond = select i1 %i.gs, i1 true, i1 %i.gu
  br i1 %or.cond, label %.thread157, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gv = load i8, ptr %i.f, align 4
  %i.gw = icmp eq i8 %i.gv, -123
  %i.gx = select i1 %i.gw, i16 14, i16 9
  br label %bb.an

bb.an:                                            ; preds = %bb.af, %ata_scsi_map_proto.exit, %bb.ae, %bb.ac, %bb.w, %bb.am, %bb.aj, %bb.g
  %.0132 = phi i16 [ 1, %ata_scsi_map_proto.exit ], [ %i.z, %bb.g ], [ %i.gq, %bb.aj ], [ %i.gx, %bb.am ], [ 1, %bb.ae ], [ 1, %bb.ac ], [ 1, %bb.w ], [ 1, %bb.af ]
  %i.gy = getelementptr i8, ptr %i.e, i64 24
  %.val145 = load i64, ptr %i.gy, align 8
  %i.gz = trunc i64 %.val145 to i32
  %i.ha = lshr i32 %i.gz, 29
  %i.hb = and i32 %i.ha, 1
  tail call void @scsi_build_sense(ptr noundef %i.c, i32 noundef %i.hb, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #15
  %i.hc = getelementptr i8, ptr %i.c, i64 248
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %i.hd, i32 noundef 96, i16 noundef zeroext %.0132, i8 noundef zeroext -1, i1 noundef zeroext true) #15 ; 0 uses
  br label %.thread157

.thread157:                                       ; preds = %bb.ai, %bb.ak, %bb.al, %bb.an
  %.0 = phi i32 [ 1, %bb.an ], [ 0, %bb.al ], [ 0, %bb.ak ], [ 0, %bb.ai ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 2) i32 @ata_scsi_var_len_cdb_xlat(ptr nofree noundef captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 172
  %.val = load i16, ptr %i.c, align 1
  %i.d = icmp eq i16 %.val, -4065
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @ata_scsi_pass_thru(ptr noundef %0) #19, !srcloc !60
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 2) i32 @ata_scsi_mode_select_xlat(ptr nofree noundef captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i16, align 2                      ; 8 uses
  %i.b = alloca [64 x i8], align 16               ; 7 uses
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 12 uses
  %i.e = getelementptr i8, ptr %i.d, i64 164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i16 -1, ptr %i.a, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !annotation !17
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 21                      ; 3 uses
  %i.h = getelementptr i8, ptr %i.d, i64 156
  %i.i = load i16, ptr %i.h, align 4              ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i16 %i.i, 5
  br i1 %i.j, label %bb.ai, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.d, i64 168
  %i.l = load i8, ptr %i.k, align 4
  %i.m = zext i8 %i.l to i32
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.n = icmp ult i16 %i.i, 9
  br i1 %i.n, label %bb.ai, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.d, i64 171
  %.val110 = load i16, ptr %i.o, align 1
  %i.p = tail call i16 @llvm.bswap.i16(i16 %.val110)
  %i.q = zext i16 %i.p to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.093 = phi i32 [ 4, %bb.c ], [ 8, %bb.e ]      ; 9 uses
  %.091 = phi i32 [ %i.m, %bb.c ], [ %i.q, %bb.e ] ; 3 uses
  %i.r = getelementptr i8, ptr %i.d, i64 165
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %i.t = and i8 %i.s, 17
  %.not = icmp eq i8 %i.t, 16
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = and i8 %i.s, 1
  %.not108 = icmp eq i8 %i.u, 0
  %i.v = select i1 %.not108, i8 5, i8 1
  br label %bb.ai

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %i.d, i64 208
  %.val115 = load i32, ptr %i.w, align 8          ; 2 uses
  %.not100 = icmp eq i32 %.val115, 0
  br i1 %.not100, label %bb.ak, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr i8, ptr %i.d, i64 200
  %.val113 = load ptr, ptr %i.x, align 8          ; 2 uses
  %i.y = getelementptr i8, ptr %.val113, i64 12
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp ult i32 %i.z, %.091
  %i.ab = icmp samesign ult i32 %.091, %.093
  %or.cond = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond, label %bb.ak, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = call i64 @sg_copy_to_buffer(ptr noundef %.val113, i32 noundef %.val115, ptr noundef nonnull %i.b, i64 noundef 64) #15
  %.not101 = icmp eq i64 %i.ac, 0
  br i1 %.not101, label %bb.ak, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.g, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %.val109 = load i16, ptr %i.ag, align 2
  %i.ah = call i16 @llvm.bswap.i16(i16 %.val109)
  %i.ai = zext i16 %i.ah to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.092 = phi i32 [ %i.af, %bb.l ], [ %i.ai, %bb.m ] ; 11 uses
  %i.aj = sub nuw nsw i32 %.091, %.093            ; 3 uses
  %i.ak = zext nneg i32 %.093 to i64
  %i.al = getelementptr i8, ptr %i.b, i64 %i.ak
  %i.am = icmp samesign ult i32 %i.aj, %.092
  br i1 %i.am, label %bb.ak, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = and i32 %.092, 65527
  %or.cond.not = icmp eq i32 %i.an, 0
  br i1 %or.cond.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = select i1 %i.g, i32 3, i32 6
  %i.ap = add nuw nsw i32 %.093, %i.ao
  %i.aq = add nuw nsw i32 %i.ap, %.092
  %i.ar = trunc i32 %i.aq to i16
  br label %bb.aj

bb.q:                                             ; preds = %bb.o
  %i.as = sub nuw nsw i32 %i.aj, %.092            ; 4 uses
  %i.at = zext nneg i32 %.092 to i64
  %i.au = getelementptr i8, ptr %i.al, i64 %i.at  ; 6 uses
  %i.av = icmp eq i32 %i.aj, %.092
  br i1 %i.av, label %bb.al, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = load i8, ptr %i.au, align 1             ; 2 uses
  %i.ax = and i8 %i.aw, 63                        ; 3 uses
  %i.ay = and i8 %i.aw, 64
  %.not102 = icmp eq i8 %i.ay, 0
  br i1 %.not102, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = icmp samesign ult i32 %i.as, 4
  br i1 %i.az, label %bb.ak, label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ba = icmp samesign ult i32 %i.as, 2
  br i1 %i.ba, label %bb.ak, label %.thread

.thread:                                          ; preds = %bb.t
  %i.bb = getelementptr i8, ptr %i.au, i64 1
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i32
  %i.be = getelementptr i8, ptr %i.au, i64 2
  %i.bf = add nsw i32 %i.as, -2
  br label %bb.z

bb.u:                                             ; preds = %bb.s
  %i.bg = getelementptr i8, ptr %i.au, i64 1
  %i.bh = load i8, ptr %i.bg, align 1             ; 2 uses
  %i.bi = getelementptr i8, ptr %i.au, i64 2
  %.val = load i16, ptr %i.bi, align 1
  %i.bj = call i16 @llvm.bswap.i16(i16 %.val)
  %i.bk = zext i16 %i.bj to i32                   ; 3 uses
  %i.bl = getelementptr i8, ptr %i.au, i64 4      ; 5 uses
  %i.bm = add nsw i32 %i.as, -4                   ; 3 uses
  switch i8 %i.bh, label %bb.y [
    i8 0, label %bb.z
    i8 -1, label %bb.v
    i8 -14, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.bn = icmp eq i8 %i.ax, 10
  br i1 %i.bn, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bo = load i8, ptr %i.bl, align 1
  %i.bp = lshr i8 %i.bo, 6
  %.lobit = and i8 %i.bp, 1
  %i.bq = add nuw nsw i32 %.092, %.093
  %i.br = zext nneg i8 %.lobit to i32
  %i.bs = or disjoint i32 %i.bq, %i.br
  %i.bt = trunc nuw i32 %i.bs to i16
  br label %bb.aj

bb.x:                                             ; preds = %bb.u
  %i.bu = getelementptr i8, ptr %0, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr i8, ptr %i.bv, i64 24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = and i64 %i.bx, 8192
  %i.bz = icmp ne i64 %i.by, 0
  %i.ca = icmp eq i8 %i.ax, 10
  %or.cond4 = and i1 %i.ca, %i.bz
  br i1 %or.cond4, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x
  %i.cb = load i8, ptr %i.bl, align 1
  %i.cc = lshr i8 %i.cb, 6
  %.lobit107 = and i8 %i.cc, 1
  %i.cd = add nuw nsw i32 %.092, %.093
  %i.ce = zext nneg i8 %.lobit107 to i32
  %i.cf = or disjoint i32 %i.cd, %i.ce
  %i.cg = trunc nuw i32 %i.cf to i16
  br label %bb.aj

bb.z:                                             ; preds = %.thread, %bb.u, %bb.v, %bb.x
  %.0124 = phi ptr [ %i.be, %.thread ], [ %i.bl, %bb.u ], [ %i.bl, %bb.v ], [ %i.bl, %bb.x ] ; 2 uses
  %.1123 = phi i32 [ %i.bf, %.thread ], [ %i.bm, %bb.u ], [ %i.bm, %bb.v ], [ %i.bm, %bb.x ] ; 2 uses
  %.094122 = phi i32 [ %i.bd, %.thread ], [ %i.bk, %bb.u ], [ %i.bk, %bb.v ], [ %i.bk, %bb.x ] ; 4 uses
  %.095121 = phi i8 [ 0, %.thread ], [ %i.bh, %bb.u ], [ -1, %bb.v ], [ -14, %bb.x ]
  %i.ch = icmp samesign ugt i32 %.094122, %.1123
  br i1 %i.ch, label %bb.ak, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  switch i8 %i.ax, label %bb.ag [
    i8 8, label %bb.ab
    i8 10, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ci = call fastcc i32 @ata_mselect_caching(ptr noundef %0, ptr noundef %.0124, i32 noundef %.094122, ptr noundef nonnull %i.a) #19, !srcloc !61
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.ck = add nuw nsw i32 %.092, %.093
  %i.cl = load i16, ptr %i.a, align 2
  %i.cm = trunc nuw i32 %i.ck to i16
  %i.cn = add i16 %i.cl, %i.cm
  br label %bb.aj

bb.ad:                                            ; preds = %bb.aa
  %i.co = call fastcc i32 @ata_mselect_control(ptr noundef %0, i8 noundef zeroext %.095121, ptr noundef %.0124, i32 noundef %.094122, ptr noundef nonnull %i.a) #19, !srcloc !62 ; 2 uses
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cq = add nuw nsw i32 %.092, %.093
  %i.cr = load i16, ptr %i.a, align 2
  %i.cs = trunc nuw i32 %i.cq to i16
  %i.ct = add i16 %i.cr, %i.cs
  br label %bb.aj

bb.af:                                            ; preds = %bb.ad
  %.not104 = icmp eq i32 %i.co, 0
  br i1 %.not104, label %bb.al, label %bb.ah

bb.ag:                                            ; preds = %bb.aa
  %i.cu = add nuw nsw i32 %.092, %.093
  %i.cv = trunc nuw i32 %i.cu to i16
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af, %bb.ab
  %i.cw = icmp samesign ugt i32 %.1123, %.094122
  br i1 %i.cw, label %._crit_edge, label %bb.am

._crit_edge:                                      ; preds = %bb.ah
  %.pre = load i16, ptr %i.a, align 2
  br label %bb.aj

bb.ai:                                            ; preds = %bb.d, %bb.b, %bb.g
  %i.cx = phi i16 [ 4, %bb.b ], [ 1, %bb.g ], [ 8, %bb.d ]
  %.090 = phi i8 [ -1, %bb.b ], [ %i.v, %bb.g ], [ -1, %bb.d ]
  %i.cy = getelementptr i8, ptr %0, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr i8, ptr %i.cz, i64 24
  %.val111 = load i64, ptr %i.da, align 8
  %i.db = trunc i64 %.val111 to i32
  %i.dc = lshr i32 %i.db, 29
  %i.dd = and i32 %i.dc, 1
  tail call void @scsi_build_sense(ptr noundef %i.d, i32 noundef %i.dd, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #15
  %i.de = getelementptr i8, ptr %i.d, i64 248
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %i.df, i32 noundef 96, i16 noundef zeroext %i.cx, i8 noundef zeroext range(i8 -1, 6) %.090, i1 noundef zeroext true) #15 ; 0 uses
  br label %bb.am

bb.aj:                                            ; preds = %._crit_edge, %bb.ag, %bb.ae, %bb.ac, %bb.y, %bb.w, %bb.p
  %i.dh = phi i16 [ %.pre, %._crit_edge ], [ %i.cv, %bb.ag ], [ %i.ct, %bb.ae ], [ %i.cn, %bb.ac ], [ %i.cg, %bb.y ], [ %i.bt, %bb.w ], [ %i.ar, %bb.p ]
  %i.di = getelementptr i8, ptr %0, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = getelementptr i8, ptr %i.dj, i64 24
  %.val116 = load i64, ptr %i.dk, align 8
  call fastcc void @ata_scsi_set_invalid_parameter(i64 %.val116, ptr noundef %i.d, i16 noundef zeroext %i.dh) #19
  br label %bb.am

bb.ak:                                            ; preds = %bb.z, %bb.t, %bb.s, %bb.n, %bb.j, %bb.h, %bb.i
  %i.dl = getelementptr i8, ptr %0, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = getelementptr i8, ptr %i.dm, i64 24
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = trunc i64 %i.do to i32
  %i.dq = lshr i32 %i.dp, 29
  %i.dr = and i32 %i.dq, 1
  call void @scsi_build_sense(ptr noundef %i.d, i32 noundef %i.dr, i8 noundef zeroext 5, i8 noundef zeroext 26, i8 noundef zeroext 0) #15
  br label %bb.am

bb.al:                                            ; preds = %bb.af, %bb.q
  %i.ds = getelementptr i8, ptr %i.d, i64 288
  store i32 0, ptr %i.ds, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.ah, %bb.al, %bb.ak, %bb.aj, %bb.ai
  %.096 = phi i32 [ 1, %bb.ai ], [ 1, %bb.ak ], [ 1, %bb.aj ], [ 1, %bb.al ], [ 0, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.096
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 2) i32 @ata_scsi_zbc_in_xlat(ptr nofree noundef captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 10 uses
  %i.d = getelementptr i8, ptr %i.c, i64 156
  %i.e = load i16, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp ult i16 %i.e, 16
  br i1 %i.f, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i16 %i.e to i32
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %i.i, align 64             ; 2 uses
  %i.k = load ptr, ptr %i.j, align 64
  %i.l = getelementptr i8, ptr %i.k, i64 36
  %i.m = load i32, ptr %i.l, align 4
  %i.n = getelementptr i8, ptr %i.j, i64 8
  %i.o = load i32, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.i, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %i.r = add i32 %i.q, %i.o
  %i.s = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %i.m, i32 noundef %i.r, i32 noundef %i.g) #20 ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr i8, ptr %i.c, i64 166
  %.val4.i = load i64, ptr %i.t, align 2
  %i.u = tail call i64 @llvm.bswap.i64(i64 %.val4.i) ; 6 uses
  %i.v = getelementptr i8, ptr %i.c, i64 174
  %.val.i = load i32, ptr %i.v, align 2
  %i.w = tail call i32 @llvm.bswap.i32(i32 %.val.i) ; 8 uses
  %i.x = getelementptr i8, ptr %i.c, i64 216      ; 2 uses
  %.val73 = load i32, ptr %i.x, align 8           ; 2 uses
  %.not = icmp eq i32 %i.w, %.val73
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 64            ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 64
  %i.ac = getelementptr i8, ptr %i.ab, i64 36
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr i8, ptr %i.aa, i64 8
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = getelementptr i8, ptr %i.z, i64 8
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = add i32 %i.ah, %i.af
  %i.aj = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %i.ad, i32 noundef %i.ai, i32 noundef %i.w, i32 noundef %.val73) #20 ; 0 uses
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.ak = getelementptr i8, ptr %i.c, i64 165
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = and i8 %i.al, 31                        ; 2 uses
  %.not69 = icmp eq i8 %i.am, 0
  br i1 %.not69, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = getelementptr i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 64           ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 64
  %i.as = getelementptr i8, ptr %i.ar, i64 36
  %i.at = load i32, ptr %i.as, align 4
  %i.au = getelementptr i8, ptr %i.aq, i64 8
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = getelementptr i8, ptr %i.ap, i64 8
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = add i32 %i.ax, %i.av
  %i.az = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %i.at, i32 noundef %i.ay, i32 noundef %i.an) #20 ; 0 uses
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.ba = lshr i32 %i.w, 9                        ; 2 uses
  %i.bb = add i32 %i.w, -512
  %or.cond = icmp ult i32 %i.bb, 33553920
  %i.bc = and i32 %i.w, 511
  %.not70 = icmp eq i32 %i.bc, 0
  %or.cond71 = and i1 %or.cond, %.not70
  br i1 %or.cond71, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 64           ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 64
  %i.bh = getelementptr i8, ptr %i.bg, i64 36
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = getelementptr i8, ptr %i.bf, i64 8
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = getelementptr i8, ptr %i.be, i64 8
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = add i32 %i.bm, %i.bk
  %i.bo = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %i.bi, i32 noundef %i.bn, i32 noundef %i.w) #20 ; 0 uses
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.bp = getelementptr i8, ptr %i.c, i64 178
  %i.bq = load i8, ptr %i.bp, align 2
  %i.br = and i8 %i.bq, -65                       ; 2 uses
  %i.bs = getelementptr i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 24
  %.val74 = load i64, ptr %i.bu, align 8
  %i.bv = and i64 %.val74, 51208
  %or.cond82.not = icmp eq i64 %i.bv, 2056
  br i1 %or.cond82.not, label %ata_fpdma_zac_mgmt_in_supported.exit, label %ata_fpdma_zac_mgmt_in_supported.exit.thread

ata_fpdma_zac_mgmt_in_supported.exit:             ; preds = %bb.i
  %i.bw = getelementptr i8, ptr %i.bt, i64 1944
  %i.bx = load i8, ptr %i.bw, align 8
  %i.by = and i8 %i.bx, 2
  %.not83 = icmp eq i8 %i.by, 0
  br i1 %.not83, label %ata_fpdma_zac_mgmt_in_supported.exit.thread, label %bb.j

bb.j:                                             ; preds = %ata_fpdma_zac_mgmt_in_supported.exit
  %i.bz = getelementptr i8, ptr %0, i64 40
  store i8 6, ptr %i.bz, align 8
  %i.ca = getelementptr i8, ptr %0, i64 53
  store i8 101, ptr %i.ca, align 1
  %i.cb = getelementptr i8, ptr %0, i64 43
  store i8 2, ptr %i.cb, align 1
  %i.cc = getelementptr i8, ptr %0, i64 92
  %i.cd = load i32, ptr %i.cc, align 4
  %.tr = trunc i32 %i.cd to i8
  %i.ce = shl i8 %.tr, 3
  %i.cf = getelementptr i8, ptr %0, i64 48
  store i8 %i.ce, ptr %i.cf, align 8
  %i.cg = trunc i32 %i.ba to i8
  %i.ch = getelementptr i8, ptr %0, i64 47
  store i8 %i.cg, ptr %i.ch, align 1
  %i.ci = lshr i32 %i.w, 17
  %i.cj = trunc nuw i32 %i.ci to i8
  %i.ck = getelementptr i8, ptr %0, i64 42
  store i8 %i.cj, ptr %i.ck, align 2
  %i.cl = zext i8 %i.br to i32
  %i.cm = shl nuw nsw i32 %i.cl, 8
  %i.cn = getelementptr i8, ptr %0, i64 56
  store i32 %i.cm, ptr %i.cn, align 8
  br label %bb.k

ata_fpdma_zac_mgmt_in_supported.exit.thread:      ; preds = %ata_fpdma_zac_mgmt_in_supported.exit, %bb.i
  %i.co = getelementptr i8, ptr %0, i64 53
  store i8 74, ptr %i.co, align 1
  %i.cp = getelementptr i8, ptr %0, i64 47
  store i8 0, ptr %i.cp, align 1
  %i.cq = getelementptr i8, ptr %0, i64 40
  store i8 2, ptr %i.cq, align 8
  %i.cr = getelementptr i8, ptr %0, i64 42
  store i8 %i.br, ptr %i.cr, align 2
  %i.cs = lshr i32 %i.w, 17
  %i.ct = trunc nuw i32 %i.cs to i8
  %i.cu = getelementptr i8, ptr %0, i64 43
  store i8 %i.ct, ptr %i.cu, align 1
  %i.cv = trunc i32 %i.ba to i8
  %i.cw = getelementptr i8, ptr %0, i64 48
  store i8 %i.cv, ptr %i.cw, align 8
  br label %bb.k

bb.k:                                             ; preds = %ata_fpdma_zac_mgmt_in_supported.exit.thread, %bb.j
  %i.cx = getelementptr i8, ptr %0, i64 52
  store i8 64, ptr %i.cx, align 4
  %i.cy = lshr i64 %i.u, 16
  %i.cz = trunc i64 %i.cy to i8
  %i.da = getelementptr i8, ptr %0, i64 51
  store i8 %i.cz, ptr %i.da, align 1
  %i.db = lshr i64 %i.u, 8
  %i.dc = trunc i64 %i.db to i8
  %i.dd = getelementptr i8, ptr %0, i64 50
  store i8 %i.dc, ptr %i.dd, align 2
  %i.de = trunc i64 %i.u to i8
  %i.df = getelementptr i8, ptr %0, i64 49
  store i8 %i.de, ptr %i.df, align 1
  %i.dg = lshr i64 %i.u, 40
  %i.dh = trunc i64 %i.dg to i8
  %i.di = getelementptr i8, ptr %0, i64 46
  store i8 %i.dh, ptr %i.di, align 2
  %i.dj = lshr i64 %i.u, 32
  %i.dk = trunc i64 %i.dj to i8
  %i.dl = getelementptr i8, ptr %0, i64 45
  store i8 %i.dk, ptr %i.dl, align 1
  %i.dm = lshr i64 %i.u, 24
  %i.dn = trunc i64 %i.dm to i8
  %i.do = getelementptr i8, ptr %0, i64 44
  store i8 %i.dn, ptr %i.do, align 4
  %i.dp = load i64, ptr %i.a, align 8
  %i.dq = or i64 %i.dp, 7
  store i64 %i.dq, ptr %i.a, align 8
  %i.dr = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = or i64 %i.ds, 16
  store i64 %i.dt, ptr %i.dr, align 8
  %i.du = getelementptr i8, ptr %i.c, i64 272
  %i.dv = load i32, ptr %i.du, align 8            ; 2 uses
  %i.dw = getelementptr i8, ptr %0, i64 116
  store i32 %i.dv, ptr %i.dw, align 4
  %.val.i75 = load i32, ptr %i.x, align 8
  %i.dx = add i32 %.val.i75, %i.dv
  %i.dy = getelementptr i8, ptr %0, i64 112
  store i32 %i.dx, ptr %i.dy, align 8
  %i.dz = getelementptr i8, ptr %0, i64 216
  store ptr @ata_scsi_report_zones_complete, ptr %i.dz, align 8
  br label %bb.n

bb.l:                                             ; preds = %bb.f, %bb.b
  %.064 = phi i16 [ 15, %bb.b ], [ 1, %bb.f ]
  %i.ea = getelementptr i8, ptr %0, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = getelementptr i8, ptr %i.eb, i64 24
  %.val = load i64, ptr %i.ec, align 8
  %i.ed = trunc i64 %.val to i32
  %i.ee = lshr i32 %i.ed, 29
  %i.ef = and i32 %i.ee, 1
  tail call void @scsi_build_sense(ptr noundef %i.c, i32 noundef %i.ef, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #15
  %i.eg = getelementptr i8, ptr %i.c, i64 248
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %i.eh, i32 noundef 96, i16 noundef zeroext %.064, i8 noundef zeroext -1, i1 noundef zeroext true) #15 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.h, %bb.d
  %i.ej = getelementptr i8, ptr %0, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = getelementptr i8, ptr %i.ek, i64 24
  %i.em = load i64, ptr %i.el, align 8
  %i.en = trunc i64 %i.em to i32
  %i.eo = lshr i32 %i.en, 29
  %i.ep = and i32 %i.eo, 1
  tail call void @scsi_build_sense(ptr noundef %i.c, i32 noundef %i.ep, i8 noundef zeroext 5, i8 noundef zeroext 26, i8 noundef zeroext 0) #15
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.0 = phi i32 [ 1, %bb.l ], [ 1, %bb.m ], [ 0, %bb.k ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 2) i32 @ata_scsi_zbc_out_xlat(ptr nofree noundef captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 8 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  %i.f = getelementptr i8, ptr %i.c, i64 156
  %i.g = load i16, ptr %i.f, align 4
  %i.h = icmp ult i16 %i.g, 16
  br i1 %i.h, label %bb.k, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.c, i64 165
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, 31                          ; 3 uses
  %i.l = zext nneg i8 %i.k to i32
  %i.m = add nsw i8 %i.k, -5
  %or.cond8 = icmp ult i8 %i.m, -4
  br i1 %or.cond8, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.c, i64 166
  %.val4.i = load i64, ptr %i.n, align 2
  %i.o = tail call i64 @llvm.bswap.i64(i64 %.val4.i) ; 2 uses
  %i.p = getelementptr i8, ptr %i.c, i64 174
  %.val.i = load i32, ptr %i.p, align 2
  %.not = icmp eq i32 %.val.i, 0
  br i1 %.not, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.c, i64 178
  %i.r = load i8, ptr %i.q, align 2
  %i.s = and i8 %i.r, 1                           ; 3 uses
  %.not52 = icmp eq i8 %i.s, 0
  br i1 %.not52, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.e, i64 824
  %i.u = load i64, ptr %i.t, align 8
  %.not53 = icmp ult i64 %i.o, %i.u
  br i1 %.not53, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.d, %bb.e
  %.060 = phi i64 [ %i.o, %bb.e ], [ 0, %bb.d ]   ; 6 uses
  %i.v = getelementptr i8, ptr %i.e, i64 24
  %.val54 = load i64, ptr %i.v, align 8
  %i.w = and i64 %.val54, 49160
  %i.x = icmp eq i64 %i.w, 8
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.e, i64 1976
  %.val55 = load i8, ptr %i.y, align 8
  %i.z = trunc i8 %.val55 to i1
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr i8, ptr %0, i64 40
  store i8 4, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %0, i64 53
  store i8 99, ptr %i.ab, align 1
  %i.ac = getelementptr i8, ptr %0, i64 47
  store i8 7, ptr %i.ac, align 1
  %i.ad = getelementptr i8, ptr %0, i64 92
  %i.ae = load i32, ptr %i.ad, align 4
  %.tr = trunc i32 %i.ae to i8
  %i.af = shl i8 %.tr, 3
  %i.ag = getelementptr i8, ptr %0, i64 48
  store i8 %i.af, ptr %i.ag, align 8
  %i.ah = zext nneg i8 %i.s to i32
  %i.ai = shl nuw nsw i32 %i.ah, 8
  %i.aj = or disjoint i32 %i.ai, %i.l
  %i.ak = getelementptr i8, ptr %0, i64 56
  store i32 %i.aj, ptr %i.ak, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.al = getelementptr i8, ptr %0, i64 40
  store i8 0, ptr %i.al, align 8
  %i.am = getelementptr i8, ptr %0, i64 53
  store i8 -97, ptr %i.am, align 1
  %i.an = getelementptr i8, ptr %0, i64 47
  store i8 %i.k, ptr %i.an, align 1
  %i.ao = getelementptr i8, ptr %0, i64 42
  store i8 %i.s, ptr %i.ao, align 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ap = lshr i64 %.060, 16
  %i.aq = trunc i64 %i.ap to i8
  %i.ar = getelementptr i8, ptr %0, i64 51
  store i8 %i.aq, ptr %i.ar, align 1
  %i.as = lshr i64 %.060, 8
  %i.at = trunc i64 %i.as to i8
  %i.au = getelementptr i8, ptr %0, i64 50
  store i8 %i.at, ptr %i.au, align 2
  %i.av = trunc i64 %.060 to i8
  %i.aw = getelementptr i8, ptr %0, i64 49
  store i8 %i.av, ptr %i.aw, align 1
  %i.ax = lshr i64 %.060, 40
  %i.ay = trunc i64 %i.ax to i8
  %i.az = getelementptr i8, ptr %0, i64 46
  store i8 %i.ay, ptr %i.az, align 2
  %i.ba = lshr i64 %.060, 32
  %i.bb = trunc i64 %i.ba to i8
  %i.bc = getelementptr i8, ptr %0, i64 45
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = lshr i64 %.060, 24
  %i.be = trunc i64 %i.bd to i8
  %i.bf = getelementptr i8, ptr %0, i64 44
  store i8 %i.be, ptr %i.bf, align 4
  %i.bg = getelementptr i8, ptr %0, i64 52
  store i8 64, ptr %i.bg, align 4
  %i.bh = load i64, ptr %i.a, align 8
  %i.bi = or i64 %i.bh, 7
  store i64 %i.bi, ptr %i.a, align 8
  br label %bb.m

bb.k:                                             ; preds = %bb.e, %bb.b, %bb.a
  %.0 = phi i16 [ 1, %bb.b ], [ 15, %bb.a ], [ 2, %bb.e ]
  %i.bj = getelementptr i8, ptr %i.e, i64 24
  %.val = load i64, ptr %i.bj, align 8
  %i.bk = trunc i64 %.val to i32
  %i.bl = lshr i32 %i.bk, 29
  %i.bm = and i32 %i.bl, 1
  tail call void @scsi_build_sense(ptr noundef %i.c, i32 noundef %i.bm, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #15
  %i.bn = getelementptr i8, ptr %i.c, i64 248
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %i.bo, i32 noundef 96, i16 noundef zeroext %.0, i8 noundef zeroext -1, i1 noundef zeroext true) #15 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.c
  %i.bq = getelementptr i8, ptr %i.e, i64 24
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = trunc i64 %i.br to i32
  %i.bt = lshr i32 %i.bs, 29
  %i.bu = and i32 %i.bt, 1
  tail call void @scsi_build_sense(ptr noundef %i.c, i32 noundef %i.bu, i8 noundef zeroext 5, i8 noundef zeroext 26, i8 noundef zeroext 0) #15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.051 = phi i32 [ 1, %bb.k ], [ 1, %bb.l ], [ 0, %bb.j ]
  ret i32 %.051
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 2) i32 @ata_scsi_security_inout_xlat(ptr nofree noundef captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 13 uses
  %i.c = getelementptr i8, ptr %i.b, i64 164
  %i.d = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.e = getelementptr i8, ptr %i.b, i64 165
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = load i8, ptr %i.c, align 1
  %i.h = icmp eq i8 %i.g, -75                     ; 3 uses
  %i.i = getelementptr i8, ptr %i.b, i64 166
  %.val = load i16, ptr %i.i, align 1
  %i.j = tail call i16 @llvm.bswap.i16(i16 %.val) ; 3 uses
  %i.k = getelementptr i8, ptr %i.b, i64 170
  %.val46 = load i32, ptr %i.k, align 1
  %i.l = tail call i32 @llvm.bswap.i32(i32 %.val46) ; 4 uses
  %i.m = getelementptr i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 24
  %i.p = load i64, ptr %i.o, align 8              ; 4 uses
  %i.q = and i64 %i.p, 16384
  %.not = icmp eq i64 %i.q, 0                     ; 3 uses
  %i.r = icmp eq i8 %i.f, -17
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = trunc i64 %i.p to i32
  %i.t = lshr i32 %i.s, 29
  %i.u = and i32 %i.t, 1
  tail call void @scsi_build_sense(ptr noundef %i.b, i32 noundef %i.u, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #15
  %i.v = getelementptr i8, ptr %i.b, i64 248
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %i.w, i32 noundef 96, i16 noundef zeroext 1, i8 noundef zeroext 0, i1 noundef zeroext true) #15 ; 0 uses
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.y = getelementptr i8, ptr %i.b, i64 168
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = and i8 %i.z, 7
  %.not44 = icmp eq i8 %i.aa, 0
  br i1 %.not44, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp ugt i32 %i.l, 65535
  br i1 %i.ab, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ac = trunc i64 %i.p to i32
  %i.ad = lshr i32 %i.ac, 29
  %i.ae = and i32 %i.ad, 1
  tail call void @scsi_build_sense(ptr noundef %i.b, i32 noundef %i.ae, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #15
  %i.af = getelementptr i8, ptr %i.b, i64 248
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %i.ag, i32 noundef 96, i16 noundef zeroext 6, i8 noundef zeroext 0, i1 noundef zeroext true) #15 ; 0 uses
  br label %bb.m

bb.f:                                             ; preds = %bb.c
  %i.ai = icmp ugt i32 %i.l, 33553920
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = trunc i64 %i.p to i32
  %i.ak = lshr i32 %i.aj, 29
  %i.al = and i32 %i.ak, 1
end_hunk_1
begin_hunk_2_@ata_mselect_caching:bb.a

bb.v:                                             ; preds = %bb.u, %bb.d, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ -22, %bb.d ], [ 0, %bb.u ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -22, 2) i32 @ata_mselect_control(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, 65530) %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  switch i8 %1, label %ata_mselect_control_spg0.exit [
    i8 0, label %bb.b
    i8 -14, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %3, 10
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = tail call i32 @llvm.umin.i32(i32 range(i32 0, 65530) %3, i32 10)
  %i.b = trunc nuw nsw i32 %i.a to i16
  store i16 %i.b, ptr %4, align 2
  br label %ata_mselect_control_spg0.exit

bb.d:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.0262.lcssa.wide.i = phi i16 [ 9, %bb.m ], [ 1, %bb.e ], [ 2, %bb.f ], [ 3, %bb.g ], [ 4, %bb.h ], [ 5, %bb.i ], [ 6, %bb.j ], [ 7, %bb.k ], [ 8, %bb.l ]
  store i16 %.0262.lcssa.wide.i, ptr %4, align 2
  br label %ata_mselect_control_spg0.exit

bb.e:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8
  %i.d = load i8, ptr %2, align 1
  %i.e = getelementptr i8, ptr %.val, i64 24      ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %2, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %.not29.1.i = icmp eq i8 %i.h, 0
  br i1 %.not29.1.i, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %2, i64 2
  %i.j = load i8, ptr %i.i, align 1
  %.not29.2.i = icmp eq i8 %i.j, 0
  br i1 %.not29.2.i, label %bb.g, label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr i8, ptr %2, i64 3
  %i.l = load i8, ptr %i.k, align 1
  %.not29.3.i = icmp eq i8 %i.l, 0
  br i1 %.not29.3.i, label %bb.h, label %bb.d

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr i8, ptr %2, i64 4
  %i.n = load i8, ptr %i.m, align 1
  %.not29.4.i = icmp eq i8 %i.n, 0
  br i1 %.not29.4.i, label %bb.i, label %bb.d

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %2, i64 5
  %i.p = load i8, ptr %i.o, align 1
  %.not29.5.i = icmp eq i8 %i.p, 0
  br i1 %.not29.5.i, label %bb.j, label %bb.d

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr i8, ptr %2, i64 6
  %i.r = load i8, ptr %i.q, align 1
  %.not29.6.i = icmp eq i8 %i.r, -1
  br i1 %.not29.6.i, label %bb.k, label %bb.d

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr i8, ptr %2, i64 7
  %i.t = load i8, ptr %i.s, align 1
  %.not29.7.i = icmp eq i8 %i.t, -1
  br i1 %.not29.7.i, label %bb.l, label %bb.d

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr i8, ptr %2, i64 8
  %i.v = load i8, ptr %i.u, align 1
  %.not29.8.i = icmp eq i8 %i.v, 0
  br i1 %.not29.8.i, label %bb.m, label %bb.d

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr i8, ptr %2, i64 9
  %i.x = load i8, ptr %i.w, align 1
  %.not29.9.i = icmp eq i8 %i.x, 30
  br i1 %.not29.9.i, label %bb.n, label %bb.d

bb.n:                                             ; preds = %bb.m
  %i.y = and i8 %i.d, 4
  %.not28.i = icmp eq i8 %i.y, 0
  br i1 %.not28.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = or i64 %i.f, 536870912
  store i64 %i.z, ptr %i.e, align 8
  br label %ata_mselect_control_spg0.exit

bb.p:                                             ; preds = %bb.n
  %i.aa = and i64 %i.f, -536870913
  store i64 %i.aa, ptr %i.e, align 8
  br label %ata_mselect_control_spg0.exit

bb.q:                                             ; preds = %bb.a
  %i.ab = getelementptr i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.ad = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %.not.i9 = icmp eq i32 %3, 12
  br i1 %.not.i9, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = tail call i32 @llvm.umin.i32(i32 range(i32 0, 65530) %3, i32 12)
  %i.af = trunc nuw nsw i32 %i.ae to i16
  store i16 %i.af, ptr %4, align 2
  br label %ata_mselect_control_spg0.exit

bb.s:                                             ; preds = %bb.q
  %i.ag = load i8, ptr %2, align 1
  %i.ah = and i8 %i.ag, 3
  switch i8 %i.ah, label %bb.x [
    i8 0, label %bb.t
    i8 2, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.ai = getelementptr i8, ptr %i.ac, i64 24     ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = and i64 %i.aj, -2097153
  store i64 %i.ak, ptr %i.ai, align 8
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.al = getelementptr i8, ptr %i.ac, i64 24     ; 2 uses
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = and i64 %i.am, 1048576
  %.not30.i = icmp eq i64 %i.an, 0
  br i1 %.not30.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ao = load ptr, ptr %i.ac, align 64           ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 64
  %i.aq = getelementptr i8, ptr %i.ap, i64 36
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = getelementptr i8, ptr %i.ao, i64 8
  %i.at = load i32, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %i.ac, i64 8
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = add i32 %i.av, %i.at
  %i.ax = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %i.ar, i32 noundef %i.aw) #20 ; 0 uses
  br label %ata_mselect_control_spg0.exit

bb.w:                                             ; preds = %bb.u
  %i.ay = or i64 %i.am, 2097152
  store i64 %i.ay, ptr %i.al, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  store i16 0, ptr %4, align 2
  br label %ata_mselect_control_spg0.exit

bb.y:                                             ; preds = %bb.w, %bb.t
  %.028.i = phi i8 [ 0, %bb.t ], [ 1, %bb.w ]
  %i.az = load i64, ptr %i.ad, align 8
  %i.ba = or i64 %i.az, 6
  store i64 %i.ba, ptr %i.ad, align 8
  %i.bb = getelementptr i8, ptr %0, i64 40
  store i8 0, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %0, i64 53
  store i8 -17, ptr %i.bc, align 1
  %i.bd = getelementptr i8, ptr %0, i64 47
  store i8 13, ptr %i.bd, align 1
  %i.be = getelementptr i8, ptr %0, i64 48
  store i8 %.028.i, ptr %i.be, align 8
  br label %ata_mselect_control_spg0.exit

ata_mselect_control_spg0.exit:                    ; preds = %bb.y, %bb.x, %bb.v, %bb.r, %bb.p, %bb.o, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.o ], [ -22, %bb.a ], [ -22, %bb.c ], [ -22, %bb.d ], [ 0, %bb.p ], [ -22, %bb.r ], [ -22, %bb.x ], [ 1, %bb.y ], [ -22, %bb.v ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ata_scsi_set_invalid_parameter(i64 %.24.val, ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #0 align 16 {
bb.a:
  %i.a = trunc i64 %.24.val to i32
  %i.b = lshr i32 %i.a, 29
  %i.c = and i32 %i.b, 1
  tail call void @scsi_build_sense(ptr noundef %0, i32 noundef %i.c, i8 noundef zeroext 5, i8 noundef zeroext 38, i8 noundef zeroext 0) #15
  %i.d = getelementptr i8, ptr %0, i64 248
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %i.e, i32 noundef 96, i16 noundef zeroext %1, i8 noundef zeroext -1, i1 noundef zeroext false) #15 ; 0 uses
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ata_scsi_report_zones_complete(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.sg_mapping_iter, align 8    ; 9 uses
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, i8 0, i64 72, i1 false), !annotation !17
  %i.c = getelementptr i8, ptr %i.b, i64 200
  %.val = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %i.b, i64 208
  %.val49 = load i32, ptr %i.d, align 8
  call void @sg_miter_start(ptr noundef nonnull %1, ptr noundef %.val, i32 noundef %.val49, i32 noundef 3) #15
  %i.e = call zeroext i1 @sg_miter_next(ptr noundef nonnull %1) #15
  br i1 %i.e, label %.lr.ph60, label %._crit_edge

.lr.ph60:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.b

.loopexit:                                        ; preds = %bb.f, %bb.d
  %.2.lcssa = phi i32 [ %.1, %bb.d ], [ %i.ao, %bb.f ]
  %i.h = call zeroext i1 @sg_miter_next(ptr noundef nonnull %1) #15
  br i1 %i.h, label %bb.b, label %._crit_edge, !llvm.loop !63

bb.b:                                             ; preds = %.lr.ph60, %.loopexit
  %.059 = phi i32 [ 0, %.lr.ph60 ], [ %.2.lcssa, %.loopexit ] ; 2 uses
  %i.i = icmp eq i32 %.059, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8              ; 5 uses
  %.val50 = load i32, ptr %i.j, align 1
  %i.k = getelementptr i8, ptr %i.j, i64 4        ; 2 uses
  %.val51 = load i16, ptr %i.k, align 1
  %i.l = getelementptr i8, ptr %i.j, i64 8        ; 2 uses
  %.val56 = load i64, ptr %i.l, align 1
  %i.m = getelementptr i8, ptr %i.j, i64 16       ; 2 uses
  %.val55 = load i64, ptr %i.m, align 1
  %i.n = call i32 @llvm.bswap.i32(i32 %.val50)
  store i32 %i.n, ptr %i.j, align 1
  %i.o = trunc i16 %.val51 to i8
  %i.p = and i8 %i.o, 15
  store i8 %i.p, ptr %i.k, align 1
  %i.q = call i64 @llvm.bswap.i64(i64 %.val56)
  store i64 %i.q, ptr %i.l, align 1
  %i.r = call i64 @llvm.bswap.i64(i64 %.val55)
  store i64 %i.r, ptr %i.m, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.046 = phi i32 [ 64, %bb.c ], [ 0, %bb.b ]     ; 2 uses
  %.1 = phi i32 [ 64, %bb.c ], [ %.059, %bb.b ]   ; 2 uses
  %i.s = zext nneg i32 %.046 to i64               ; 2 uses
  %i.t = load i64, ptr %i.g, align 8
  %i.u = icmp ugt i64 %i.t, %i.s
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %i.v = phi i64 [ %i.ak, %bb.f ], [ %i.s, %bb.d ]
  %.258 = phi i32 [ %i.ao, %bb.f ], [ %.1, %bb.d ]
  %.14757 = phi i32 [ %i.aj, %bb.f ], [ %.046, %bb.d ]
  %i.w = load ptr, ptr %i.f, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 %i.v     ; 6 uses
  %i.y = load i8, ptr %i.x, align 1
  %i.z = and i8 %i.y, 15
  %i.aa = getelementptr i8, ptr %i.x, i64 1       ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = getelementptr i8, ptr %i.x, i64 8       ; 2 uses
  %.val54 = load i64, ptr %i.ac, align 1
  %i.ad = getelementptr i8, ptr %i.x, i64 16      ; 2 uses
  %.val53 = load i64, ptr %i.ad, align 1
  %i.ae = getelementptr i8, ptr %i.x, i64 24      ; 2 uses
  %.val52 = load i64, ptr %i.ae, align 1
  store i8 %i.z, ptr %i.x, align 1
  %i.af = and i8 %i.ab, -13
  store i8 %i.af, ptr %i.aa, align 1
  %i.ag = call i64 @llvm.bswap.i64(i64 %.val54)
  store i64 %i.ag, ptr %i.ac, align 1
  %i.ah = call i64 @llvm.bswap.i64(i64 %.val53)
  store i64 %i.ah, ptr %i.ad, align 1
  %i.ai = call i64 @llvm.bswap.i64(i64 %.val52)
  store i64 %i.ai, ptr %i.ae, align 1
  %i.aj = add i32 %.14757, 64                     ; 2 uses
  %i.ak = zext i32 %i.aj to i64                   ; 3 uses
  %i.al = load i64, ptr %i.g, align 8             ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  br i1 %i.am, label %bb.e, label %bb.f, !prof !18

bb.e:                                             ; preds = %.lr.ph
  call void asm sideeffect "693: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 693b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 693) #16, !srcloc !65
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.5, i32 3863, i32 2305, i64 16) #16, !srcloc !66
  call void asm sideeffect "694: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 694b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 694) #16, !srcloc !67
  %.pre = load i64, ptr %i.g, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.an = phi i64 [ %.pre, %bb.e ], [ %i.al, %.lr.ph ]
  %i.ao = add i32 %.258, 64                       ; 2 uses
  %i.ap = icmp ugt i64 %i.an, %i.ak
  br i1 %i.ap, label %.lr.ph, label %.loopexit, !llvm.loop !64

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  call void @sg_miter_stop(ptr noundef nonnull %1) #15
  call void @ata_scsi_qc_complete(ptr noundef %0) #19, !srcloc !68
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ata_scsi_qc_complete(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = load ptr, ptr %i.b, align 64             ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 7 uses
  %i.f = getelementptr i8, ptr %i.e, i64 164
  %i.g = getelementptr i8, ptr %0, i64 80         ; 3 uses
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = and i64 %i.h, 131072
  %i.j = icmp ne i64 %i.i, 0                      ; 3 uses
  %i.k = load i8, ptr %i.f, align 1               ; 2 uses
  %i.l = icmp eq i8 %i.k, -123
  %i.m = icmp eq i8 %i.k, -95
  %spec.select = or i1 %i.l, %i.m
  %i.n = getelementptr i8, ptr %i.e, i64 166
  %i.o = load i8, ptr %i.n, align 1
  %i.p = and i8 %i.o, 32
  %i.q = icmp ne i8 %i.p, 0                       ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 180
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp ne i32 %i.s, 0                      ; 2 uses
  %or.cond = select i1 %i.q, i1 true, i1 %i.t
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.j
  %or.cond25 = select i1 %spec.select, i1 %or.cond3, i1 false
  br i1 %or.cond25, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @ata_gen_passthru_sense(ptr noundef %0) #19, !srcloc !69
  %.pre = load ptr, ptr %i.d, align 8
  %.pre30 = load i64, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = phi i64 [ %.pre30, %bb.c ], [ %i.h, %bb.b ]
  %i.v = phi ptr [ %.pre, %bb.c ], [ %i.e, %bb.b ]
  %i.w = getelementptr i8, ptr %0, i64 184        ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 248
  %i.y = load ptr, ptr %i.x, align 8              ; 13 uses
  %i.z = and i64 %i.u, 4
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %ata_scsi_set_passthru_sense_fields.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load i8, ptr %i.y, align 1              ; 2 uses
  %i.ab = and i8 %i.aa, 126
  %i.ac = icmp samesign ugt i8 %i.ab, 113
  br i1 %i.ac, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr i8, ptr %i.y, i64 7       ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1             ; 4 uses
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nuw nsw i32 %i.af, 8
  %i.ah = tail call ptr @scsi_sense_desc_find(ptr noundef %i.y, i32 noundef %i.ag, i32 noundef 9) #15 ; 2 uses
  %.not73.i = icmp eq ptr %i.ah, null
  br i1 %.not73.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ai = icmp ugt i8 %i.ae, 82
  br i1 %i.ai, label %ata_scsi_set_passthru_sense_fields.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = add nuw nsw i8 %i.ae, 14
  store i8 %i.aj, ptr %i.ad, align 1
  %i.ak = getelementptr i8, ptr %i.y, i64 8
  %i.al = zext nneg i8 %i.ae to i64
  %i.am = getelementptr i8, ptr %i.ak, i64 %i.al
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.0.i = phi ptr [ %i.ah, %bb.f ], [ %i.am, %bb.h ] ; 14 uses
  store i8 9, ptr %.0.i, align 1
  %i.an = getelementptr i8, ptr %.0.i, i64 1
  store i8 12, ptr %i.an, align 1
  %i.ao = getelementptr i8, ptr %.0.i, i64 2      ; 2 uses
  store i8 0, ptr %i.ao, align 1
  %i.ap = getelementptr i8, ptr %0, i64 199
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = getelementptr i8, ptr %.0.i, i64 3
  store i8 %i.aq, ptr %i.ar, align 1
  %i.as = getelementptr i8, ptr %0, i64 200
  %i.at = load i8, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %.0.i, i64 5
  store i8 %i.at, ptr %i.au, align 1
  %i.av = getelementptr i8, ptr %0, i64 201
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr i8, ptr %.0.i, i64 7
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = getelementptr i8, ptr %0, i64 202
  %i.az = load i8, ptr %i.ay, align 2
  %i.ba = getelementptr i8, ptr %.0.i, i64 9
  store i8 %i.az, ptr %i.ba, align 1
  %i.bb = getelementptr i8, ptr %0, i64 203
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = getelementptr i8, ptr %.0.i, i64 11
  store i8 %i.bc, ptr %i.bd, align 1
  %i.be = getelementptr i8, ptr %0, i64 204
  %i.bf = load i8, ptr %i.be, align 4
  %i.bg = getelementptr i8, ptr %.0.i, i64 12
  store i8 %i.bf, ptr %i.bg, align 1
  %i.bh = getelementptr i8, ptr %0, i64 205
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = getelementptr i8, ptr %.0.i, i64 13
  store i8 %i.bi, ptr %i.bj, align 1
  %i.bk = load i64, ptr %i.w, align 8
  %i.bl = and i64 %i.bk, 1
  %.not74.i = icmp eq i64 %i.bl, 0
  br i1 %.not74.i, label %ata_scsi_set_passthru_sense_fields.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.ao, align 1
  %i.bm = getelementptr i8, ptr %0, i64 195
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = getelementptr i8, ptr %.0.i, i64 4
  store i8 %i.bn, ptr %i.bo, align 1
  %i.bp = getelementptr i8, ptr %0, i64 196
  %i.bq = load i8, ptr %i.bp, align 4
  %i.br = getelementptr i8, ptr %.0.i, i64 6
  store i8 %i.bq, ptr %i.br, align 1
  %i.bs = getelementptr i8, ptr %0, i64 197
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = getelementptr i8, ptr %.0.i, i64 8
  store i8 %i.bt, ptr %i.bu, align 1
  %i.bv = getelementptr i8, ptr %0, i64 198
  %i.bw = load i8, ptr %i.bv, align 2
  %i.bx = getelementptr i8, ptr %.0.i, i64 10
  store i8 %i.bw, ptr %i.bx, align 1
  br label %ata_scsi_set_passthru_sense_fields.exit

bb.k:                                             ; preds = %bb.e
  %i.by = or i8 %i.aa, -128
  store i8 %i.by, ptr %i.y, align 1
  %i.bz = getelementptr i8, ptr %0, i64 199
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr i8, ptr %i.y, i64 3
  store i8 %i.ca, ptr %i.cb, align 1
  %i.cc = getelementptr i8, ptr %0, i64 205
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = getelementptr i8, ptr %i.y, i64 4
  store i8 %i.cd, ptr %i.ce, align 1
  %i.cf = getelementptr i8, ptr %0, i64 204
  %i.cg = load i8, ptr %i.cf, align 4
  %i.ch = getelementptr i8, ptr %i.y, i64 5
  store i8 %i.cg, ptr %i.ch, align 1
  %i.ci = getelementptr i8, ptr %0, i64 200
  %i.cj = load i8, ptr %i.ci, align 8
  %i.ck = getelementptr i8, ptr %i.y, i64 6
  store i8 %i.cj, ptr %i.ck, align 1
  %i.cl = load i64, ptr %i.w, align 8
  %i.cm = and i64 %i.cl, 1
  %.not68.i = icmp eq i64 %i.cm, 0
  br i1 %.not68.i, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cn = getelementptr i8, ptr %i.y, i64 8       ; 4 uses
  %i.co = load i8, ptr %i.cn, align 1             ; 2 uses
  %i.cp = or i8 %i.co, -128                       ; 2 uses
  store i8 %i.cp, ptr %i.cn, align 1
  %i.cq = getelementptr i8, ptr %0, i64 195
  %i.cr = load i8, ptr %i.cq, align 1
  %.not69.i = icmp eq i8 %i.cr, 0
  br i1 %.not69.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = or i8 %i.co, -64                        ; 2 uses
  store i8 %i.cs, ptr %i.cn, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ct = phi i8 [ %i.cs, %bb.m ], [ %i.cp, %bb.l ]
  %i.cu = getelementptr i8, ptr %0, i64 196
  %i.cv = load i8, ptr %i.cu, align 4
  %.not70.i = icmp eq i8 %i.cv, 0
  br i1 %.not70.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cw = getelementptr i8, ptr %0, i64 197
  %i.cx = load i8, ptr %i.cw, align 1
  %.not71.i = icmp eq i8 %i.cx, 0
  br i1 %.not71.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cy = getelementptr i8, ptr %0, i64 198
  %i.cz = load i8, ptr %i.cy, align 2
  %.not72.i = icmp eq i8 %i.cz, 0
  br i1 %.not72.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.da = or i8 %i.ct, 32
  store i8 %i.da, ptr %i.cn, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.k
  %i.db = getelementptr i8, ptr %0, i64 201
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = getelementptr i8, ptr %i.y, i64 9
  store i8 %i.dc, ptr %i.dd, align 1
  %i.de = getelementptr i8, ptr %0, i64 202
  %i.df = load i8, ptr %i.de, align 2
  %i.dg = getelementptr i8, ptr %i.y, i64 10
  store i8 %i.df, ptr %i.dg, align 1
  %i.dh = getelementptr i8, ptr %0, i64 203
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = getelementptr i8, ptr %i.y, i64 11
  store i8 %i.di, ptr %i.dj, align 1
  br label %ata_scsi_set_passthru_sense_fields.exit

ata_scsi_set_passthru_sense_fields.exit:          ; preds = %bb.d, %bb.g, %bb.i, %bb.j, %bb.r
  br i1 %i.q, label %bb.s, label %ata_scsi_set_sense_information.exit

bb.s:                                             ; preds = %ata_scsi_set_passthru_sense_fields.exit
  %i.dk = load ptr, ptr %i.d, align 8
  %i.dl = getelementptr i8, ptr %i.dk, i64 288    ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8
  %i.dn = and i32 %i.dm, -256
  %i.do = or disjoint i32 %i.dn, 2
  store i32 %i.do, ptr %i.dl, align 8
  br label %ata_scsi_set_sense_information.exit

bb.t:                                             ; preds = %bb.a
  br i1 %i.t, label %bb.u, label %ata_scsi_set_sense_information.exit

bb.u:                                             ; preds = %bb.t
  br i1 %i.j, label %ata_gen_ata_sense.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dp = getelementptr i8, ptr %i.b, i64 840
  %.val.i = load i32, ptr %i.dp, align 8
end_hunk_2
begin_hunk_3_@ata_scsi_qc_complete:bb.a
  %i.gm = getelementptr i8, ptr %i.gi, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = tail call i32 %i.go(ptr noundef nonnull %i.gh) #15, !inline_history !1
  %.not9.i = icmp eq i32 %i.gp, 0
  br i1 %.not9.i, label %bb.ag, label %ata_scsi_schedule_deferred_qc.exit

bb.ag:                                            ; preds = %bb.af
  %i.gq = load ptr, ptr @system_highpri_wq, align 8
  %i.gr = getelementptr i8, ptr %i.c, i64 808
  %i.gs = tail call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.gq, ptr noundef %i.gr) #15 ; 0 uses
  br label %ata_scsi_schedule_deferred_qc.exit

ata_scsi_schedule_deferred_qc.exit:               ; preds = %ata_scsi_set_sense_information.exit, %bb.ae, %bb.af, %bb.ag
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ata_gen_passthru_sense(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 80
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 4
  %.not = icmp eq i64 %i.g, 0
  %i.h = getelementptr i8, ptr %0, i64 180
  %i.i = load i32, ptr %i.h, align 4
  %.not14 = icmp eq i32 %i.i, 0                   ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not14, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.b, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = trunc i64 %i.k to i32
  %i.m = lshr i32 %i.l, 29
  %i.n = and i32 %i.m, 1
  tail call void @scsi_build_sense(ptr noundef %i.d, i32 noundef %i.n, i8 noundef zeroext 11, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %0, i64 205
  %i.p = load i8, ptr %i.o, align 1               ; 5 uses
  %i.q = and i8 %i.p, -87
  %.not16 = icmp eq i8 %i.q, 0
  %or.cond = select i1 %.not14, i1 %.not16, i1 false
  br i1 %or.cond, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %i.r = getelementptr i8, ptr %0, i64 199
  %i.s = load i8, ptr %i.r, align 1               ; 14 uses
  %.not.inv.i = icmp slt i8 %i.p, 0
  %.not2841.i = icmp eq i8 %i.s, 0
  %.not28.i = or i1 %.not.inv.i, %.not2841.i
  br i1 %.not28.i, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %._crit_edge
  %i.t = and i8 %i.s, -47
  %i.u = icmp eq i8 %i.t, -47
  br i1 %i.u, label %ata_to_sense_error.exit.sink.split, label %.preheader.1.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.v = and i8 %i.s, -48
  %i.w = icmp eq i8 %i.v, -48
  br i1 %i.w, label %ata_to_sense_error.exit.sink.split, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.x = and i8 %i.s, 97
  %i.y = icmp eq i8 %i.x, 97
  br i1 %i.y, label %ata_to_sense_error.exit.sink.split, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.z = and i8 %i.s, -124
  %i.aa = icmp eq i8 %i.z, -124
  br i1 %i.aa, label %ata_to_sense_error.exit.sink.split, label %.preheader.4.i

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.ab = and i8 %i.s, 55
  %i.ac = icmp eq i8 %i.ab, 55
  br i1 %i.ac, label %ata_to_sense_error.exit.sink.split, label %.preheader.5.i

.preheader.5.i:                                   ; preds = %.preheader.4.i
  %i.ad = and i8 %i.s, 9
  %i.ae = icmp eq i8 %i.ad, 9
  br i1 %i.ae, label %ata_to_sense_error.exit.sink.split, label %.preheader.6.i

.preheader.6.i:                                   ; preds = %.preheader.5.i
  %i.af = and i8 %i.s, 1
  %.not.i = icmp eq i8 %i.af, 0
  br i1 %.not.i, label %.preheader.7.i, label %ata_to_sense_error.exit.sink.split

.preheader.7.i:                                   ; preds = %.preheader.6.i
  %i.ag = and i8 %i.s, 2
  %.not42.i = icmp eq i8 %i.ag, 0
  br i1 %.not42.i, label %.preheader.8.i, label %ata_to_sense_error.exit.sink.split

.preheader.8.i:                                   ; preds = %.preheader.7.i
  %i.ah = and i8 %i.s, 8
  %.not43.i = icmp eq i8 %i.ah, 0
  br i1 %.not43.i, label %.preheader.9.i, label %ata_to_sense_error.exit.sink.split

.preheader.9.i:                                   ; preds = %.preheader.8.i
  %i.ai = and i8 %i.s, 16
  %.not44.i = icmp eq i8 %i.ai, 0
  br i1 %.not44.i, label %.preheader.10.i, label %ata_to_sense_error.exit.sink.split

.preheader.10.i:                                  ; preds = %.preheader.9.i
  %i.aj = and i8 %i.s, 32
  %.not45.i = icmp eq i8 %i.aj, 0
  br i1 %.not45.i, label %.preheader.11.i, label %ata_to_sense_error.exit.sink.split

.preheader.11.i:                                  ; preds = %.preheader.10.i
  %i.ak = and i8 %i.s, 64
  %.not46.i = icmp eq i8 %i.ak, 0
  br i1 %.not46.i, label %.preheader.12.i, label %ata_to_sense_error.exit.sink.split

.preheader.12.i:                                  ; preds = %.preheader.11.i
  %.not47.i = icmp sgt i8 %i.s, -1
  br i1 %.not47.i, label %.loopexit.thread.i, label %ata_to_sense_error.exit.sink.split

.loopexit.i:                                      ; preds = %._crit_edge
  %.not31.i = icmp sgt i8 %i.p, -1
  br i1 %.not31.i, label %.loopexit.thread.i, label %ata_to_sense_error.exit.sink.split

.loopexit.thread.i:                               ; preds = %.loopexit.i, %.preheader.12.i
  %i.al = and i8 %i.p, 32
  %.not31.1.i = icmp eq i8 %i.al, 0
  br i1 %.not31.1.i, label %bb.e, label %ata_to_sense_error.exit.sink.split

bb.e:                                             ; preds = %.loopexit.thread.i
  %i.am = and i8 %i.p, 4
  %.not31.2.i = icmp eq i8 %i.am, 0
  br i1 %.not31.2.i, label %ata_to_sense_error.exit, label %ata_to_sense_error.exit.sink.split

ata_to_sense_error.exit.sink.split:               ; preds = %.loopexit.i, %.loopexit.thread.i, %bb.e, %.preheader.preheader.i, %.preheader.1.i, %.preheader.2.i, %.preheader.3.i, %.preheader.4.i, %.preheader.5.i, %.preheader.6.i, %.preheader.7.i, %.preheader.8.i, %.preheader.9.i, %.preheader.10.i, %.preheader.11.i, %.preheader.12.i
  %.lcssa37.i.sink22 = phi ptr [ getelementptr inbounds nuw (i8, ptr @ata_to_sense_error.sense_table, i64 48), %.preheader.12.i ], [ @ata_to_sense_error.sense_table, %.preheader.preheader.i ], [ getelementptr inbounds nuw (i8, ptr @ata_to_sense_error.sense_table, i64 4), %.preheader.1.i ], [ getelementptr inbounds nuw (i8, ptr @ata_to_sense_error.sense_table, i64 8), %.preheader.2.i ], [ getelementptr inbounds nuw (i8, ptr @ata_to_sense_error.sense_table, i64 12), %.preheader.3.i ], [ getelementptr inbounds nuw (i8, ptr @ata_to_sense_error.sense_table, i64 16), %.preheader.4.i ], [ getelementptr inbounds nuw (i8, ptr @ata_to_sense_error.sense_table, i64 20), %.preheader.5.i ], [ getelementptr inbounds nuw (i8, ptr @ata_to_sense_error.sense_table, i64 24), %.preheader.6.i ], [ getelementptr inbounds nuw (i8, ptr @ata_to_sense_error.sense_table, i64 28), %.preheader.7.i ], [ getelementptr inbounds nuw (i8, ptr @ata_to_sense_error.sense_table, i64 32), %.preheader.8.i ], [ getelementptr inbounds nuw (i8, ptr @ata_to_sense_error.sense_table, i64 36), %.preheader.9.i ], [ getelementptr inbounds nuw (i8, ptr @ata_to_sense_error.sense_table, i64 40), %.preheader.10.i ], [ getelementptr inbounds nuw (i8, ptr @ata_to_sense_error.sense_table, i64 44), %.preheader.11.i ], [ @ata_to_sense_error.stat_table, %.loopexit.i ], [ getelementptr inbounds nuw (i8, ptr @ata_to_sense_error.stat_table, i64 4), %.loopexit.thread.i ], [ getelementptr inbounds nuw (i8, ptr @ata_to_sense_error.stat_table, i64 8), %bb.e ] ; 3 uses
  %i.an = getelementptr i8, ptr %.lcssa37.i.sink22, i64 1
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = getelementptr i8, ptr %.lcssa37.i.sink22, i64 2
  %i.aq = load i8, ptr %i.ap, align 2
  %i.ar = getelementptr i8, ptr %.lcssa37.i.sink22, i64 3
  %i.as = load i8, ptr %i.ar, align 1
  br label %ata_to_sense_error.exit

ata_to_sense_error.exit:                          ; preds = %ata_to_sense_error.exit.sink.split, %bb.e
  %.019 = phi i8 [ 11, %bb.e ], [ %i.ao, %ata_to_sense_error.exit.sink.split ]
  %.0 = phi i8 [ 0, %bb.e ], [ %i.aq, %ata_to_sense_error.exit.sink.split ]
  %.sink.i = phi i8 [ 0, %bb.e ], [ %i.as, %ata_to_sense_error.exit.sink.split ]
  %i.at = getelementptr i8, ptr %i.b, i64 24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = trunc i64 %i.au to i32
  %i.aw = lshr i32 %i.av, 29
  %i.ax = and i32 %i.aw, 1
  tail call void @scsi_build_sense(ptr noundef %i.d, i32 noundef %i.ax, i8 noundef zeroext %.019, i8 noundef zeroext %.0, i8 noundef zeroext %.sink.i) #15
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @scsi_build_sense(ptr noundef %i.d, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 29) #15
  br label %bb.g

bb.g:                                             ; preds = %ata_to_sense_error.exit, %bb.f, %bb.b, %bb.c
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @scsi_sense_desc_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ata_tf_read_block(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scsi_set_sense_information(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @ata_dev_power_init_tf(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atapi_qc_complete(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 64             ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 9 uses
  %i.g = getelementptr i8, ptr %0, i64 180
  %i.h = load i32, ptr %i.g, align 4
  %.not = icmp eq i32 %i.h, 0
  %i.i = getelementptr i8, ptr %0, i64 80
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 131072
  %.not24 = icmp eq i64 %i.k, 0
  %or.cond = select i1 %.not, i1 %.not24, i1 false, !prof !70
  br i1 %or.cond, label %bb.i, label %.critedge, !prof !70

.critedge:                                        ; preds = %bb.a
  %i.l = and i64 %i.j, 131072
  %.not20 = icmp eq i64 %i.l, 0
  br i1 %.not20, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.critedge
  tail call fastcc void @ata_gen_passthru_sense(ptr noundef %0) #19, !srcloc !71
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  %i.m = getelementptr i8, ptr %0, i64 64
  %i.n = load i8, ptr %i.m, align 8
  %i.o = icmp eq i8 %i.n, 30
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 32             ; 2 uses
  %.not21 = icmp eq ptr %i.r, null
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %i.r, i64 340      ; 2 uses
  %i.t = load i64, ptr %i.s, align 4
  %i.u = and i64 %i.t, -1025
  store i64 %i.u, ptr %i.s, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.v = getelementptr i8, ptr %i.f, i64 288
  %i.w = load i32, ptr %i.v, align 8
  %.not22 = icmp eq i32 %i.w, 0
  %i.x = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.y = getelementptr i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  tail call void @ata_qc_free(ptr noundef %0) #15
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void %i.z(ptr noundef %i.x) #15, !inline_history !0
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %i.x, i64 288
  store i32 2, ptr %i.aa, align 8
  tail call void %i.z(ptr noundef %i.x) #15, !inline_history !0
  br label %bb.p

bb.i:                                             ; preds = %bb.a
  %i.ab = getelementptr i8, ptr %i.f, i64 288
  %i.ac = load i32, ptr %i.ab, align 8
  %.not19 = icmp eq i32 %i.ac, 0
  br i1 %.not19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void @ata_qc_free(ptr noundef %0) #15
  tail call void %i.ae(ptr noundef %i.f) #15, !inline_history !0
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.af = getelementptr i8, ptr %i.f, i64 164
  %i.ag = load i8, ptr %i.af, align 4
  %i.ah = icmp eq i8 %i.ag, 18
  br i1 %i.ah, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr i8, ptr %i.f, i64 165
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = and i8 %i.aj, 3
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !annotation !17
  %i.am = getelementptr i8, ptr %i.f, i64 200     ; 2 uses
  %.val4.i = load ptr, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %i.f, i64 208     ; 2 uses
  %.val6.i = load i32, ptr %i.an, align 8
  %i.ao = call i64 @sg_copy_to_buffer(ptr noundef %.val4.i, i32 noundef %.val6.i, ptr noundef nonnull %i.a, i64 noundef 4) #15 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 2
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.n, label %atapi_fixup_inquiry.exit

bb.n:                                             ; preds = %bb.m
  store i8 5, ptr %i.ap, align 2
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 50, ptr %i.as, align 1
  br label %atapi_fixup_inquiry.exit

atapi_fixup_inquiry.exit:                         ; preds = %bb.m, %bb.n
  %.val.i = load ptr, ptr %i.am, align 8
  %.val5.i = load i32, ptr %i.an, align 8
  %i.at = call i64 @sg_copy_from_buffer(ptr noundef %.val.i, i32 noundef %.val5.i, ptr noundef nonnull %i.a, i64 noundef 4) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %.pre25 = load ptr, ptr %i.e, align 8
  br label %bb.o

bb.o:                                             ; preds = %atapi_fixup_inquiry.exit, %bb.l, %bb.k
  %i.au = phi ptr [ %.pre25, %atapi_fixup_inquiry.exit ], [ %i.f, %bb.l ], [ %i.f, %bb.k ] ; 2 uses
  %i.av = getelementptr i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void @ata_qc_free(ptr noundef %0) #15
  %i.ax = getelementptr i8, ptr %i.au, i64 288
  store i32 0, ptr %i.ax, align 8
  call void %i.aw(ptr noundef %i.au) #15, !inline_history !0
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %bb.h, %bb.o, %bb.j
  %i.ay = getelementptr i8, ptr %i.d, i64 840
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = load ptr, ptr %i.d, align 64            ; 3 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %ata_scsi_schedule_deferred_qc.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr i8, ptr %i.ba, i64 32
  %.val.i23 = load i32, ptr %i.bb, align 32
  %i.bc = and i32 %.val.i23, 3
  %.not10.i = icmp eq i32 %i.bc, 0
  br i1 %.not10.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = call i32 @ata_scsi_requeue_deferred_qc(ptr noundef %i.ba, ptr noundef null) #19 ; 0 uses
  br label %ata_scsi_schedule_deferred_qc.exit

bb.s:                                             ; preds = %bb.q
  %i.be = getelementptr i8, ptr %i.ba, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call i32 %i.bg(ptr noundef nonnull %i.az) #15, !inline_history !1
  %.not9.i = icmp eq i32 %i.bh, 0
  br i1 %.not9.i, label %bb.t, label %ata_scsi_schedule_deferred_qc.exit

bb.t:                                             ; preds = %bb.s
  %i.bi = load ptr, ptr @system_highpri_wq, align 8
  %i.bj = getelementptr i8, ptr %i.d, i64 808
  %i.bk = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.bi, ptr noundef %i.bj) #15 ; 0 uses
  br label %ata_scsi_schedule_deferred_qc.exit

ata_scsi_schedule_deferred_qc.exit:               ; preds = %bb.p, %bb.r, %bb.s, %bb.t
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @atapi_check_dma(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ata_sg_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ata_scsi_rbuf_fill(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull @ata_scsi_rbuf_lock) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) @ata_scsi_rbuf, i8 0, i64 2048, i1 false)
  %i.b = tail call i32 %2(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ata_scsi_rbuf) #15 ; 5 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i32 %i.b, 2048
  br i1 %i.c, label %bb.c, label %.critedge, !prof !18

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "684: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 684b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 684) #16, !srcloc !72
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.5, i32 2017, i32 2305, i64 16) #16, !srcloc !73
  tail call void asm sideeffect "685: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 685b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 685) #16, !srcloc !74
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32
  %i.g = lshr i32 %i.f, 29
  %i.h = and i32 %i.g, 1
  tail call void @scsi_build_sense(ptr noundef %1, i32 noundef %i.h, i8 noundef zeroext 11, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  br label %bb.e

.critedge:                                        ; preds = %bb.b
  %i.i = getelementptr i8, ptr %1, i64 200
  %.val22 = load ptr, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %1, i64 208
  %.val23 = load i32, ptr %i.j, align 8
  %i.k = zext nneg i32 %i.b to i64
  %i.l = tail call i64 @sg_copy_from_buffer(ptr noundef %.val22, i32 noundef %.val23, ptr noundef nonnull @ata_scsi_rbuf, i64 noundef %i.k) #15 ; 0 uses
  %i.m = getelementptr i8, ptr %1, i64 288
  store i32 0, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %1, i64 216
  %.val21 = load i32, ptr %i.n, align 8           ; 2 uses
  %i.o = icmp ugt i32 %.val21, %i.b
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.p = sub nuw i32 %.val21, %i.b
  %i.q = getelementptr i8, ptr %1, i64 240
  store i32 %i.p, ptr %i.q, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %.critedge, %bb.c
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ata_scsi_rbuf_lock, i64 noundef %i.a) #15
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 65540) i32 @ata_scsiop_inquiry(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 165
  %i.b = load i8, ptr %i.a, align 1
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = and i32 %i.c, 2
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 24
  %.val38 = load i64, ptr %i.e, align 8
  %i.f = trunc i64 %.val38 to i32
  %i.g = lshr i32 %i.f, 29
  %i.h = and i32 %i.g, 1
  tail call void @scsi_build_sense(ptr noundef %1, i32 noundef %i.h, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #15
  %i.i = getelementptr i8, ptr %1, i64 248
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %i.j, i32 noundef 96, i16 noundef zeroext 1, i8 noundef zeroext -1, i1 noundef zeroext true) #15 ; 0 uses
  br label %ata_scsiop_inq_std.exit

bb.c:                                             ; preds = %bb.a
  %i.l = and i32 %i.c, 1
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 896        ; 4 uses
  %i.o = load i16, ptr %i.n, align 64
  %i.p = trunc i16 %i.o to i8
  %spec.select.i = and i8 %i.p, -128
  %i.q = getelementptr i8, ptr %0, i64 840        ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp eq i32 %i.r, 9                      ; 2 uses
  %.sroa.7.0.i = select i1 %i.s, i8 7, i8 5
  %.sroa.0.0.i = select i1 %i.s, i8 20, i8 0
  %i.t = getelementptr i8, ptr %0, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = and i64 %i.u, 8192
  %.not22.i = icmp eq i64 %i.v, 0
  %.sroa.7.1.i = select i1 %.not22.i, i8 %.sroa.7.0.i, i8 13
  store i8 %.sroa.0.0.i, ptr %2, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %spec.select.i, ptr %.sroa.5.0..sroa_idx.i, align 1
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %.sroa.7.1.i, ptr %.sroa.7.0..sroa_idx.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @__const.ata_scsiop_inq_std.hdr, i64 3), i64 5, i1 false)
  %i.w = getelementptr i8, ptr %2, i64 8
  store i64 2314885530820629569, ptr %i.w, align 1
  %i.x = getelementptr i8, ptr %2, i64 16
  tail call void @ata_id_string(ptr noundef %i.n, ptr noundef %i.x, i32 noundef 27, i32 noundef 16) #15
  %i.y = getelementptr i8, ptr %2, i64 32         ; 5 uses
  tail call void @ata_id_string(ptr noundef %i.n, ptr noundef %i.y, i32 noundef 25, i32 noundef 4) #15
  %i.z = tail call i32 @strncmp(ptr noundef %i.y, ptr noundef nonnull dereferenceable(5) @.str.20, i64 noundef 4) #15
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ata_id_string(ptr noundef %i.n, ptr noundef %i.y, i32 noundef 23, i32 noundef 4) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = load i8, ptr %i.y, align 1
  switch i8 %i.ab, label %bb.h [
    i8 0, label %bb.g
    i8 32, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  store i32 543240046, ptr %i.y, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = getelementptr i8, ptr %0, i64 1034
  %.val.i = load i16, ptr %i.ac, align 2
  %i.ad = and i16 %.val.i, 3
  %.not23.i = icmp eq i16 %i.ad, 0
  br i1 %.not23.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = load i32, ptr %i.q, align 8
  %i.af = icmp eq i32 %i.ae, 9
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ag = getelementptr i8, ptr %2, i64 58
  store i64 2621306110837432320, ptr %i.ag, align 1
  br label %ata_scsiop_inq_std.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = getelementptr i8, ptr %2, i64 58
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(6) %i.ah, ptr noundef nonnull align 1 dereferenceable(6) @ata_scsiop_inq_std.versions, i64 6, i1 false)
  br label %ata_scsiop_inq_std.exit

bb.l:                                             ; preds = %bb.c
  %i.ai = getelementptr i8, ptr %1, i64 166
  %i.aj = load i8, ptr %i.ai, align 1
  switch i8 %i.aj, label %bb.af [
    i8 0, label %bb.m
    i8 -128, label %bb.n
    i8 -125, label %bb.o
    i8 -119, label %bb.q
    i8 -80, label %bb.r
    i8 -79, label %bb.u
    i8 -78, label %bb.w
    i8 -74, label %bb.x
    i8 -71, label %bb.ab
  ]

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr i8, ptr %0, i64 840
  %i.al = getelementptr i8, ptr %2, i64 4
  store i8 0, ptr %i.al, align 1
  %i.am = getelementptr i8, ptr %2, i64 5
  store i8 -128, ptr %i.am, align 1
  %i.an = getelementptr i8, ptr %2, i64 6
  store i8 -125, ptr %i.an, align 1
  %i.ao = getelementptr i8, ptr %2, i64 7
  store i8 -119, ptr %i.ao, align 1
  %i.ap = getelementptr i8, ptr %2, i64 8
  store i8 -80, ptr %i.ap, align 1
  %i.aq = getelementptr i8, ptr %2, i64 9
  store i8 -79, ptr %i.aq, align 1
  %i.ar = getelementptr i8, ptr %2, i64 10
  store i8 -78, ptr %i.ar, align 1
  %i.as = load i32, ptr %i.ak, align 8
  %i.at = icmp eq i32 %i.as, 9
  br i1 %i.at, label %ata_dev_is_zac.exit.thread.7.i, label %ata_dev_is_zac.exit.7.i

ata_dev_is_zac.exit.7.i:                          ; preds = %bb.m
  %i.au = getelementptr i8, ptr %0, i64 1034
  %.val.i.7.i = load i16, ptr %i.au, align 2
  %i.av = and i16 %.val.i.7.i, 3
  %i.aw = icmp eq i16 %i.av, 1
  br i1 %i.aw, label %ata_dev_is_zac.exit.thread.7.i, label %ata_scsiop_inq_00.exit

ata_dev_is_zac.exit.thread.7.i:                   ; preds = %ata_dev_is_zac.exit.7.i, %bb.m
  %i.ax = getelementptr i8, ptr %2, i64 11
  store i8 -74, ptr %i.ax, align 1
  br label %ata_scsiop_inq_00.exit

ata_scsiop_inq_00.exit:                           ; preds = %ata_dev_is_zac.exit.7.i, %ata_dev_is_zac.exit.thread.7.i
  %.1.7.i = phi i32 [ 8, %ata_dev_is_zac.exit.thread.7.i ], [ 7, %ata_dev_is_zac.exit.7.i ] ; 2 uses
  %i.ay = zext nneg i32 %.1.7.i to i64
  %i.az = getelementptr i8, ptr %2, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  store i8 -71, ptr %i.ba, align 1
  %i.bb = trunc nuw nsw i32 %.1.7.i to i8
  %i.bc = add nuw nsw i8 %i.bb, 1
  %i.bd = getelementptr i8, ptr %2, i64 3
  store i8 %i.bc, ptr %i.bd, align 1
  %i.be = getelementptr i8, ptr %2, i64 2
  %.val.i39 = load i16, ptr %i.be, align 1
  %i.bf = tail call i16 @llvm.bswap.i16(i16 %.val.i39)
  %i.bg = zext i16 %i.bf to i32
  %i.bh = add nuw nsw i32 %i.bg, 4
  br label %ata_scsiop_inq_std.exit

bb.n:                                             ; preds = %bb.l
  store i32 335577088, ptr %2, align 1
  %i.bi = getelementptr i8, ptr %0, i64 896
  %i.bj = getelementptr i8, ptr %2, i64 4
  tail call void @ata_id_string(ptr noundef %i.bi, ptr noundef %i.bj, i32 noundef 10, i32 noundef 20) #15
  %i.bk = getelementptr i8, ptr %2, i64 2
  %.val.i40 = load i16, ptr %i.bk, align 1
end_hunk_3
begin_hunk_4_@ata_scsiop_inquiry:bb.a
  %i.ed = getelementptr i8, ptr %0, i64 1232
  %.val16.i = load i16, ptr %i.ed, align 2        ; 2 uses
  %i.ee = icmp eq i16 %.val15.i, -1
  %i.ef = and i16 %.val15.i, 32640
  %or.cond7.i.i = icmp eq i16 %i.ef, 0
  %.06.i.i.i = or i1 %i.ee, %or.cond7.i.i         ; 2 uses
  %i.eg = add i16 %.val16.i, 1
  %i.eh = icmp ult i16 %i.eg, 2
  %or.cond5.i.i = select i1 %.06.i.i.i, i1 true, i1 %i.eh
  %i.ei = and i16 %.val16.i, 15                   ; 2 uses
  %i.ej = icmp samesign ugt i16 %i.ei, 5
  %i.ek = getelementptr i8, ptr %0, i64 1330
  %.val18.i = load i16, ptr %i.ek, align 2        ; 3 uses
  %i.el = add i16 %.val18.i, 1
  %i.em = icmp ult i16 %i.el, 2
  %or.cond5.i21.i = select i1 %.06.i.i.i, i1 true, i1 %i.em
  %i.en = add i16 %.val18.i, -2
  %or.cond8.i.i = icmp ult i16 %i.en, 1023
  %narrow.i22.i = select i1 %or.cond8.i.i, i16 0, i16 %.val18.i
  %..i.i = zext i16 %narrow.i22.i to i32
  %.0.i23.i = select i1 %or.cond5.i21.i, i32 0, i32 %..i.i ; 2 uses
  %i.eo = getelementptr i8, ptr %0, i64 1034
  %.val14.i = load i16, ptr %i.eo, align 2
  %i.ep = trunc i16 %.val14.i to i8
  %i.eq = and i8 %i.ep, 3                         ; 2 uses
  %i.er = getelementptr i8, ptr %2, i64 1
  store i8 -79, ptr %i.er, align 1
  %i.es = getelementptr i8, ptr %2, i64 3
  store i8 60, ptr %i.es, align 1
  %i.et = lshr i32 %.0.i23.i, 8
  %i.eu = trunc nuw i32 %i.et to i8
  %i.ev = getelementptr i8, ptr %2, i64 4
  store i8 %i.eu, ptr %i.ev, align 1
  %i.ew = trunc i32 %.0.i23.i to i8
  %i.ex = getelementptr i8, ptr %2, i64 5
  store i8 %i.ew, ptr %i.ex, align 1
  %i.ey = trunc nuw nsw i16 %i.ei to i8
  %i.ez = select i1 %or.cond5.i.i, i1 true, i1 %i.ej
  %i.fa = select i1 %i.ez, i8 0, i8 %i.ey
  %i.fb = getelementptr i8, ptr %2, i64 7
  store i8 %i.fa, ptr %i.fb, align 1
  %.not.i44 = icmp eq i8 %i.eq, 0
  br i1 %.not.i44, label %ata_scsiop_inq_b1.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fc = shl nuw nsw i8 %i.eq, 4
  %i.fd = getelementptr i8, ptr %2, i64 8
  store i8 %i.fc, ptr %i.fd, align 1
  br label %ata_scsiop_inq_b1.exit

ata_scsiop_inq_b1.exit:                           ; preds = %bb.u, %bb.v
  %i.fe = getelementptr i8, ptr %2, i64 2
  %.val.i45 = load i16, ptr %i.fe, align 1
  %i.ff = tail call i16 @llvm.bswap.i16(i16 %.val.i45)
  %i.fg = zext i16 %i.ff to i32
  %i.fh = add nuw nsw i32 %i.fg, 4
  br label %ata_scsiop_inq_std.exit

bb.w:                                             ; preds = %bb.l
  %i.fi = getelementptr i8, ptr %2, i64 1
  store i8 -78, ptr %i.fi, align 1
  %i.fj = getelementptr i8, ptr %2, i64 3
  store i8 4, ptr %i.fj, align 1
  %i.fk = getelementptr i8, ptr %2, i64 5
  store i8 64, ptr %i.fk, align 1
  %i.fl = getelementptr i8, ptr %2, i64 2
  %.val.i46 = load i16, ptr %i.fl, align 1
  %i.fm = tail call i16 @llvm.bswap.i16(i16 %.val.i46)
  %i.fn = zext i16 %i.fm to i32
  %i.fo = add nuw nsw i32 %i.fn, 4
  br label %ata_scsiop_inq_std.exit

bb.x:                                             ; preds = %bb.l
  %i.fp = getelementptr i8, ptr %0, i64 840
  %i.fq = load i32, ptr %i.fp, align 8
  %i.fr = icmp eq i32 %i.fq, 9
  br i1 %i.fr, label %ata_dev_is_zac.exit.thread.i, label %ata_dev_is_zac.exit.i

ata_dev_is_zac.exit.i:                            ; preds = %bb.x
  %i.fs = getelementptr i8, ptr %0, i64 1034
  %.val.i.i47 = load i16, ptr %i.fs, align 2
  %i.ft = and i16 %.val.i.i47, 3
  %i.fu = icmp eq i16 %i.ft, 1
  br i1 %i.fu, label %ata_dev_is_zac.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %ata_dev_is_zac.exit.i
  %i.fv = getelementptr i8, ptr %0, i64 24
  %.val14.i48 = load i64, ptr %i.fv, align 8
  %i.fw = trunc i64 %.val14.i48 to i32
  %i.fx = lshr i32 %i.fw, 29
  %i.fy = and i32 %i.fx, 1
  tail call void @scsi_build_sense(ptr noundef %1, i32 noundef %i.fy, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #15
  %i.fz = getelementptr i8, ptr %1, i64 248
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %i.ga, i32 noundef 96, i16 noundef zeroext 2, i8 noundef zeroext -1, i1 noundef zeroext true) #15 ; 0 uses
  br label %ata_scsiop_inq_std.exit

ata_dev_is_zac.exit.thread.i:                     ; preds = %ata_dev_is_zac.exit.i, %bb.x
  %i.gc = getelementptr i8, ptr %2, i64 1
  store i8 -74, ptr %i.gc, align 1
  %i.gd = getelementptr i8, ptr %2, i64 3
  store i8 60, ptr %i.gd, align 1
  %i.ge = getelementptr i8, ptr %0, i64 2012
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = and i32 %i.gf, 1
  %.not.i50 = icmp eq i32 %i.gg, 0
  br i1 %.not.i50, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %ata_dev_is_zac.exit.thread.i
  %i.gh = getelementptr i8, ptr %2, i64 4         ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = or i8 %i.gi, 1
  store i8 %i.gj, ptr %i.gh, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %ata_dev_is_zac.exit.thread.i
  %i.gk = getelementptr i8, ptr %0, i64 2016
  %i.gl = load i32, ptr %i.gk, align 32
  %i.gm = getelementptr i8, ptr %2, i64 8
  %i.gn = tail call i32 @llvm.bswap.i32(i32 %i.gl)
  store i32 %i.gn, ptr %i.gm, align 1
  %i.go = getelementptr i8, ptr %0, i64 2020
  %i.gp = load i32, ptr %i.go, align 4
  %i.gq = getelementptr i8, ptr %2, i64 12
  %i.gr = tail call i32 @llvm.bswap.i32(i32 %i.gp)
  store i32 %i.gr, ptr %i.gq, align 1
  %i.gs = getelementptr i8, ptr %0, i64 2024
  %i.gt = load i32, ptr %i.gs, align 8
  %i.gu = getelementptr i8, ptr %2, i64 16
  %i.gv = tail call i32 @llvm.bswap.i32(i32 %i.gt)
  store i32 %i.gv, ptr %i.gu, align 1
  %i.gw = getelementptr i8, ptr %2, i64 2
  %.val.i51 = load i16, ptr %i.gw, align 1
  %i.gx = tail call i16 @llvm.bswap.i16(i16 %.val.i51)
  %i.gy = zext i16 %i.gx to i32
  %i.gz = add nuw nsw i32 %i.gy, 4
  br label %ata_scsiop_inq_std.exit

bb.ab:                                            ; preds = %bb.l
  %i.ha = getelementptr i8, ptr %0, i64 2032
  %i.hb = load ptr, ptr %i.ha, align 16           ; 5 uses
  %.not.i52 = icmp eq ptr %i.hb, null
  br i1 %.not.i52, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hc = getelementptr i8, ptr %0, i64 24
  %.val28.i = load i64, ptr %i.hc, align 8
  %i.hd = trunc i64 %.val28.i to i32
  %i.he = lshr i32 %i.hd, 29
  %i.hf = and i32 %i.he, 1
  tail call void @scsi_build_sense(ptr noundef %1, i32 noundef %i.hf, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #15
  %i.hg = getelementptr i8, ptr %1, i64 248
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %i.hh, i32 noundef 96, i16 noundef zeroext 2, i8 noundef zeroext -1, i1 noundef zeroext true) #15 ; 0 uses
  br label %ata_scsiop_inq_std.exit

bb.ad:                                            ; preds = %bb.ab
  %i.hj = getelementptr i8, ptr %2, i64 1
  store i8 -71, ptr %i.hj, align 1
  %i.hk = load i8, ptr %i.hb, align 8
  %i.hl = zext i8 %i.hk to i16
  %i.hm = shl nuw nsw i16 %i.hl, 5
  %i.hn = add nuw nsw i16 %i.hm, 60               ; 2 uses
  %i.ho = getelementptr i8, ptr %2, i64 2         ; 2 uses
  %i.hp = tail call i16 @llvm.bswap.i16(i16 %i.hn)
  store i16 %i.hp, ptr %i.ho, align 1
  %i.hq = load i8, ptr %i.hb, align 8
  %.not31.i = icmp eq i8 %i.hq, 0
  br i1 %.not31.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ad
  %i.hr = getelementptr i8, ptr %2, i64 64
  %i.hs = getelementptr i8, ptr %i.hb, i64 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ae ] ; 2 uses
  %.02529.i = phi ptr [ %i.hr, %.lr.ph.i ], [ %i.ig, %bb.ae ] ; 5 uses
  %i.ht = getelementptr [24 x i8], ptr %i.hs, i64 %indvars.iv.i ; 4 uses
  %i.hu = load i8, ptr %i.ht, align 8
  store i8 %i.hu, ptr %.02529.i, align 1
  %i.hv = getelementptr i8, ptr %i.ht, i64 1
  %i.hw = load i8, ptr %i.hv, align 1
  %i.hx = getelementptr i8, ptr %.02529.i, i64 1
  store i8 %i.hw, ptr %i.hx, align 1
  %i.hy = getelementptr i8, ptr %i.ht, i64 8
  %i.hz = load i64, ptr %i.hy, align 8
  %i.ia = getelementptr i8, ptr %.02529.i, i64 8
  %i.ib = tail call i64 @llvm.bswap.i64(i64 %i.hz)
  store i64 %i.ib, ptr %i.ia, align 1
  %i.ic = getelementptr i8, ptr %i.ht, i64 16
  %i.id = load i64, ptr %i.ic, align 8
  %i.ie = getelementptr i8, ptr %.02529.i, i64 16
  %i.if = tail call i64 @llvm.bswap.i64(i64 %i.id)
  store i64 %i.if, ptr %i.ie, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ig = getelementptr i8, ptr %.02529.i, i64 32
  %i.ih = load i8, ptr %i.hb, align 8
  %i.ii = zext i8 %i.ih to i64
  %i.ij = icmp samesign ult i64 %indvars.iv.next.i, %i.ii
  br i1 %i.ij, label %bb.ae, label %._crit_edge.loopexit.i, !llvm.loop !75

._crit_edge.loopexit.i:                           ; preds = %bb.ae
  %.val.pre.i = load i16, ptr %i.ho, align 1
  %i.ik = tail call i16 @llvm.bswap.i16(i16 %.val.pre.i)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.ad
  %.val.i53 = phi i16 [ %i.ik, %._crit_edge.loopexit.i ], [ %i.hn, %bb.ad ]
  %i.il = zext i16 %.val.i53 to i32
  %i.im = add nuw nsw i32 %i.il, 4
  br label %ata_scsiop_inq_std.exit

bb.af:                                            ; preds = %bb.l
  %i.in = getelementptr i8, ptr %0, i64 24
  %.val = load i64, ptr %i.in, align 8
  %i.io = trunc i64 %.val to i32
  %i.ip = lshr i32 %i.io, 29
  %i.iq = and i32 %i.ip, 1
  tail call void @scsi_build_sense(ptr noundef %1, i32 noundef %i.iq, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #15
  %i.ir = getelementptr i8, ptr %1, i64 248
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %i.is, i32 noundef 96, i16 noundef zeroext 2, i8 noundef zeroext -1, i1 noundef zeroext true) #15 ; 0 uses
  br label %ata_scsiop_inq_std.exit

ata_scsiop_inq_std.exit:                          ; preds = %._crit_edge.i, %bb.ac, %bb.aa, %bb.y, %bb.k, %bb.j, %bb.af, %bb.w, %ata_scsiop_inq_b1.exit, %ata_scsiop_inq_b0.exit, %bb.q, %ata_scsiop_inq_83.exit, %bb.n, %ata_scsiop_inq_00.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.y ], [ 0, %bb.af ], [ %i.bh, %ata_scsiop_inq_00.exit ], [ %i.bn, %bb.n ], [ %i.ck, %ata_scsiop_inq_83.exit ], [ %i.db, %bb.q ], [ %i.eb, %ata_scsiop_inq_b0.exit ], [ %i.fh, %ata_scsiop_inq_b1.exit ], [ %i.fo, %bb.w ], [ 96, %bb.k ], [ 96, %bb.j ], [ %i.gz, %bb.aa ], [ %i.im, %._crit_edge.i ], [ 0, %bb.ac ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 65538) i32 @ata_scsiop_mode_sense(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 164
  %i.b = load i8, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 26                      ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 165
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 8
  %.not = icmp eq i8 %i.f, 0                      ; 4 uses
  %i.g = getelementptr i8, ptr %1, i64 166
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = lshr i8 %i.h, 6                          ; 5 uses
  %i.j = icmp eq i8 %i.i, 3
  br i1 %i.j, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = select i1 %.not, i64 12, i64 4
  %i.l = select i1 %.not, i64 16, i64 8
  %.pn = select i1 %i.c, i64 %i.k, i64 %i.l
  %.072 = getelementptr i8, ptr %2, i64 %.pn      ; 23 uses
  %i.m = and i8 %i.h, 63                          ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 167
  %i.o = load i8, ptr %i.n, align 1               ; 3 uses
  switch i8 %i.o, label %bb.u [
    i8 0, label %bb.d
    i8 -1, label %bb.d
    i8 7, label %bb.c
    i8 8, label %bb.c
    i8 -14, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.p = getelementptr i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 8192
  %i.s = icmp ne i64 %i.r, 0
  %i.t = icmp eq i8 %i.m, 10
  %or.cond = and i1 %i.t, %i.s
  br i1 %or.cond, label %.thread, label %bb.u

bb.d:                                             ; preds = %bb.b, %bb.b
  switch i8 %i.m, label %bb.u [
    i8 1, label %bb.e
    i8 8, label %bb.h
    i8 10, label %.thread
    i8 63, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i8 %i.i, 1
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i16 2561, ptr %.072, align 1
  %i.v = getelementptr i8, ptr %.072, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(10) %i.v, i8 0, i64 10, i1 false)
  br label %ata_msense_rw_recovery.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(12) %.072, ptr noundef nonnull align 1 dereferenceable(12) @def_rw_recovery_mpage, i64 12, i1 false)
  br label %ata_msense_rw_recovery.exit

ata_msense_rw_recovery.exit:                      ; preds = %bb.f, %bb.g
  %i.w = getelementptr i8, ptr %.072, i64 12
  br label %bb.n

bb.h:                                             ; preds = %bb.d
  %i.x = icmp eq i8 %i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i16 4616, ptr %.072, align 1
  %i.y = getelementptr i8, ptr %.072, i64 2
  %i.z = getelementptr i8, ptr %.072, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(17) %i.z, i8 0, i64 17, i1 false)
  store i8 4, ptr %i.y, align 1
  br label %ata_msense_caching.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(20) %.072, ptr noundef nonnull align 16 dereferenceable(20) @def_cache_mpage, i64 20, i1 false)
  %i.aa = getelementptr i8, ptr %0, i64 1070      ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = and i16 %i.ab, -16384
  %.not.i.i = icmp eq i16 %i.ac, 16384
  br i1 %.not.i.i, label %ata_id_wcache_enabled.exit.i, label %ata_id_wcache_enabled.exit.thread.i

ata_id_wcache_enabled.exit.i:                     ; preds = %bb.j
  %i.ad = getelementptr i8, ptr %0, i64 1066
  %i.ae = load i16, ptr %i.ad, align 2
  %.fr15.i = freeze i16 %i.ae
  %i.af = trunc i16 %.fr15.i to i8
  %i.ag = lshr i8 %i.af, 3
  %spec.select.i = and i8 %i.ag, 4
  br label %ata_id_wcache_enabled.exit.thread.i

ata_id_wcache_enabled.exit.thread.i:              ; preds = %ata_id_wcache_enabled.exit.i, %bb.j
  %i.ah = phi i8 [ 0, %bb.j ], [ %spec.select.i, %ata_id_wcache_enabled.exit.i ]
  %i.ai = getelementptr i8, ptr %.072, i64 2
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = load i16, ptr %i.aa, align 2
  %i.ak = and i16 %i.aj, -16384
  %.not.i7.i = icmp eq i16 %i.ak, 16384
  br i1 %.not.i7.i, label %ata_id_rahead_enabled.exit.i, label %ata_id_rahead_enabled.exit.thread.i

ata_id_rahead_enabled.exit.i:                     ; preds = %ata_id_wcache_enabled.exit.thread.i
  %i.al = getelementptr i8, ptr %0, i64 1066
  %i.am = load i16, ptr %i.al, align 2
  %.fr16.i = freeze i16 %i.am
  %i.an = and i16 %.fr16.i, 64
  %.not.i = icmp eq i16 %i.an, 0
  %spec.select14.i = select i1 %.not.i, i8 32, i8 0
  br label %ata_id_rahead_enabled.exit.thread.i

ata_id_rahead_enabled.exit.thread.i:              ; preds = %ata_id_rahead_enabled.exit.i, %ata_id_wcache_enabled.exit.thread.i
  %i.ao = phi i8 [ 32, %ata_id_wcache_enabled.exit.thread.i ], [ %spec.select14.i, %ata_id_rahead_enabled.exit.i ]
  %i.ap = getelementptr i8, ptr %.072, i64 12
  store i8 %i.ao, ptr %i.ap, align 1
  br label %ata_msense_caching.exit

ata_msense_caching.exit:                          ; preds = %bb.i, %ata_id_rahead_enabled.exit.thread.i
  %i.aq = getelementptr i8, ptr %.072, i64 20
  br label %bb.n

.thread:                                          ; preds = %bb.c, %bb.d
  %i.ar = icmp eq i8 %i.i, 1
  %i.as = tail call fastcc i32 @ata_msense_control(ptr noundef %0, ptr noundef %.072, i8 noundef zeroext %i.o, i1 noundef zeroext %i.ar) #19, !srcloc !76
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr i8, ptr %.072, i64 %i.at
  br label %bb.n

bb.k:                                             ; preds = %bb.d
  %i.av = icmp eq i8 %i.i, 1                      ; 2 uses
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i16 2561, ptr %.072, align 1
  %i.aw = getelementptr i8, ptr %.072, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(10) %i.aw, i8 0, i64 10, i1 false)
  %i.ax = getelementptr i8, ptr %.072, i64 12
  store i16 4616, ptr %i.ax, align 1
  %i.ay = getelementptr i8, ptr %.072, i64 14
  %i.az = getelementptr i8, ptr %.072, i64 15
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(17) %i.az, i8 0, i64 17, i1 false)
  store i8 4, ptr %i.ay, align 1
  br label %ata_msense_caching.exit90

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(12) %.072, ptr noundef nonnull align 1 dereferenceable(12) @def_rw_recovery_mpage, i64 12, i1 false)
  %i.ba = getelementptr i8, ptr %.072, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(20) %i.ba, ptr noundef nonnull align 16 dereferenceable(20) @def_cache_mpage, i64 20, i1 false)
  %i.bb = getelementptr i8, ptr %0, i64 1070      ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = and i16 %i.bc, -16384
  %.not.i.i79 = icmp eq i16 %i.bd, 16384
  br i1 %.not.i.i79, label %ata_id_wcache_enabled.exit.i87, label %ata_id_wcache_enabled.exit.thread.i80

ata_id_wcache_enabled.exit.i87:                   ; preds = %bb.m
  %i.be = getelementptr i8, ptr %0, i64 1066
  %i.bf = load i16, ptr %i.be, align 2
  %.fr15.i88 = freeze i16 %i.bf
  %i.bg = trunc i16 %.fr15.i88 to i8
  %i.bh = lshr i8 %i.bg, 3
  %spec.select.i89 = and i8 %i.bh, 4
  br label %ata_id_wcache_enabled.exit.thread.i80

ata_id_wcache_enabled.exit.thread.i80:            ; preds = %ata_id_wcache_enabled.exit.i87, %bb.m
  %i.bi = phi i8 [ 0, %bb.m ], [ %spec.select.i89, %ata_id_wcache_enabled.exit.i87 ]
  %i.bj = getelementptr i8, ptr %.072, i64 14
  store i8 %i.bi, ptr %i.bj, align 1
  %i.bk = load i16, ptr %i.bb, align 2
  %i.bl = and i16 %i.bk, -16384
  %.not.i7.i81 = icmp eq i16 %i.bl, 16384
  br i1 %.not.i7.i81, label %ata_id_rahead_enabled.exit.i83, label %ata_id_rahead_enabled.exit.thread.i82

ata_id_rahead_enabled.exit.i83:                   ; preds = %ata_id_wcache_enabled.exit.thread.i80
  %i.bm = getelementptr i8, ptr %0, i64 1066
  %i.bn = load i16, ptr %i.bm, align 2
  %.fr16.i84 = freeze i16 %i.bn
  %i.bo = and i16 %.fr16.i84, 64
  %.not.i85 = icmp eq i16 %i.bo, 0
  %spec.select14.i86 = select i1 %.not.i85, i8 32, i8 0
  br label %ata_id_rahead_enabled.exit.thread.i82

ata_id_rahead_enabled.exit.thread.i82:            ; preds = %ata_id_rahead_enabled.exit.i83, %ata_id_wcache_enabled.exit.thread.i80
  %i.bp = phi i8 [ 32, %ata_id_wcache_enabled.exit.thread.i80 ], [ %spec.select14.i86, %ata_id_rahead_enabled.exit.i83 ]
  %i.bq = getelementptr i8, ptr %.072, i64 24
  store i8 %i.bp, ptr %i.bq, align 1
  br label %ata_msense_caching.exit90

ata_msense_caching.exit90:                        ; preds = %bb.l, %ata_id_rahead_enabled.exit.thread.i82
  %i.br = getelementptr i8, ptr %.072, i64 32     ; 2 uses
  %i.bs = tail call fastcc i32 @ata_msense_control(ptr noundef %0, ptr noundef %i.br, i8 noundef zeroext %i.o, i1 noundef zeroext %i.av) #19, !srcloc !77
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr i8, ptr %i.br, i64 %i.bt
  br label %bb.n

bb.n:                                             ; preds = %ata_msense_caching.exit90, %.thread, %ata_msense_caching.exit, %ata_msense_rw_recovery.exit
  %.1 = phi ptr [ %i.w, %ata_msense_rw_recovery.exit ], [ %i.aq, %ata_msense_caching.exit ], [ %i.au, %.thread ], [ %i.bu, %ata_msense_caching.exit90 ]
  %i.bv = getelementptr i8, ptr %0, i64 24
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = lshr i64 %i.bw, 5
  %i.by = trunc i64 %i.bx to i8
  %spec.select = and i8 %i.by, 16                 ; 2 uses
  %i.bz = ptrtoint ptr %.1 to i64                 ; 2 uses
  %i.ca = ptrtoint ptr %2 to i64                  ; 2 uses
  br i1 %i.c, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cb = xor i64 %i.ca, -1
  %i.cc = add i64 %i.bz, %i.cb                    ; 2 uses
  %i.cd = trunc i64 %i.cc to i8
  store i8 %i.cd, ptr %2, align 1
  %i.ce = getelementptr i8, ptr %2, i64 2         ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = or i8 %i.cf, %spec.select
  store i8 %i.cg, ptr %i.ce, align 1
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ch = getelementptr i8, ptr %2, i64 3
  store i8 8, ptr %i.ch, align 1
  %i.ci = getelementptr i8, ptr %2, i64 4
  store i64 562949953421312, ptr %i.ci, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cj = trunc i64 %i.cc to i32
  %i.ck = and i32 %i.cj, 255
  %i.cl = add nuw nsw i32 %i.ck, 1
  br label %bb.w

bb.r:                                             ; preds = %bb.n
  %i.cm = sub i64 %i.bz, %i.ca
  %i.cn = trunc i64 %i.cm to i16
  %i.co = add i16 %i.cn, -2                       ; 2 uses
  %i.cp = tail call i16 @llvm.bswap.i16(i16 %i.co)
  store i16 %i.cp, ptr %2, align 1
  %i.cq = getelementptr i8, ptr %2, i64 3         ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = or i8 %i.cr, %spec.select
  store i8 %i.cs, ptr %i.cq, align 1
  br i1 %.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr i8, ptr %2, i64 7
  store i8 8, ptr %i.ct, align 1
  %i.cu = getelementptr i8, ptr %2, i64 8
  store i64 562949953421312, ptr %i.cu, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cv = zext i16 %i.co to i32
  %i.cw = add nuw nsw i32 %i.cv, 2
  br label %bb.w

bb.u:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i16 [ 3, %bb.c ], [ 3, %bb.b ], [ 2, %bb.d ]
  %i.cx = getelementptr i8, ptr %0, i64 24
  %.val77 = load i64, ptr %i.cx, align 8
  %i.cy = trunc i64 %.val77 to i32
  %i.cz = lshr i32 %i.cy, 29
  %i.da = and i32 %i.cz, 1
  tail call void @scsi_build_sense(ptr noundef %1, i32 noundef %i.da, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #15
  %i.db = getelementptr i8, ptr %1, i64 248
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %i.dc, i32 noundef 96, i16 noundef zeroext %.0, i8 noundef zeroext -1, i1 noundef zeroext true) #15 ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.a
  %i.de = getelementptr i8, ptr %0, i64 24
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = trunc i64 %i.df to i32
  %i.dh = lshr i32 %i.dg, 29
  %i.di = and i32 %i.dh, 1
  tail call void @scsi_build_sense(ptr noundef %1, i32 noundef %i.di, i8 noundef zeroext 5, i8 noundef zeroext 57, i8 noundef zeroext 0) #15
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.q
  %.073 = phi i32 [ 0, %bb.u ], [ %i.cl, %bb.q ], [ %i.cw, %bb.t ], [ 0, %bb.v ]
  ret i32 %.073
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 17) i32 @ata_scsiop_read_cap(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 164
  %i.b = getelementptr i8, ptr %0, i64 824
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1                         ; 9 uses
  %i.e = getelementptr i8, ptr %0, i64 1108
  %i.f = load i16, ptr %i.e, align 4              ; 3 uses
  %i.g = and i16 %i.f, -12288
  %i.h = icmp eq i16 %i.g, 20480
  br i1 %i.h, label %bb.b, label %ata_id_logical_sector_size.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 1130
  %i.j = load i32, ptr %i.i, align 2
  %i.k = shl i32 %i.j, 1
  br label %ata_id_logical_sector_size.exit

ata_id_logical_sector_size.exit:                  ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.k, %bb.b ], [ 512, %bb.a ] ; 8 uses
  %i.l = and i16 %i.f, -8192
  %i.m = icmp eq i16 %i.l, 24576
  %i.n = trunc i16 %i.f to i8
  %i.o = and i8 %i.n, 15
  %.0.i77 = select i1 %i.m, i8 %i.o, i8 0         ; 3 uses
  %i.p = zext nneg i8 %.0.i77 to i16
  %i.q = icmp samesign ugt i8 %.0.i77, 1
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %ata_id_logical_sector_size.exit
  %i.r = getelementptr i8, ptr %0, i64 1314
  %i.s = load i16, ptr %i.r, align 2              ; 2 uses
  %i.t = and i16 %i.s, -16384
  %i.u = icmp eq i16 %i.t, 16384
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = and i16 %i.s, 16383                      ; 2 uses
  %.not.i = icmp eq i16 %i.v, 0
  %i.w = shl nuw i16 1, %i.p
  %i.x = sub i16 %i.w, %i.v
  br i1 %.not.i, label %bb.e, label %ata_id_logical_sector_offset.exit

bb.e:                                             ; preds = %bb.d, %bb.c, %ata_id_logical_sector_size.exit
  br label %ata_id_logical_sector_offset.exit

ata_id_logical_sector_offset.exit:                ; preds = %bb.d, %bb.e
  %.1.i = phi i16 [ 0, %bb.e ], [ %i.x, %bb.d ]   ; 2 uses
  %i.y = load i8, ptr %i.a, align 1
  switch i8 %i.y, label %bb.h [
    i8 37, label %bb.f
    i8 -98, label %bb.g
  ]

bb.f:                                             ; preds = %ata_id_logical_sector_offset.exit
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.d, i64 4294967295) ; 4 uses
  %i.z = lshr i64 %spec.store.select, 24
  %i.aa = trunc nuw i64 %i.z to i8
  store i8 %i.aa, ptr %2, align 1
  %i.ab = lshr i64 %spec.store.select, 16
  %i.ac = trunc i64 %i.ab to i8
  %i.ad = getelementptr i8, ptr %2, i64 1
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = lshr i64 %spec.store.select, 8
  %i.af = trunc i64 %i.ae to i8
  %i.ag = getelementptr i8, ptr %2, i64 2
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = trunc i64 %spec.store.select to i8
  %i.ai = getelementptr i8, ptr %2, i64 3
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = lshr i32 %.0.i, 24
  %i.ak = trunc nuw i32 %i.aj to i8
  %i.al = getelementptr i8, ptr %2, i64 4
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = lshr i32 %.0.i, 16
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr i8, ptr %2, i64 5
  store i8 %i.an, ptr %i.ao, align 1
  %i.ap = lshr i32 %.0.i, 8
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = getelementptr i8, ptr %2, i64 6
  store i8 %i.aq, ptr %i.ar, align 1
  %i.as = trunc i32 %.0.i to i8
  %i.at = getelementptr i8, ptr %2, i64 7
  store i8 %i.as, ptr %i.at, align 1
  br label %ata_id_has_trim.exit

bb.g:                                             ; preds = %ata_id_logical_sector_offset.exit
  %i.au = getelementptr i8, ptr %1, i64 165
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = and i8 %i.av, 31
  %.not71 = icmp eq i8 %i.aw, 16
  br i1 %.not71, label %bb.i, label %bb.h

bb.h:                                             ; preds = %ata_id_logical_sector_offset.exit, %bb.g
  %i.ax = getelementptr i8, ptr %0, i64 24
  %.val = load i64, ptr %i.ax, align 8
  %i.ay = trunc i64 %.val to i32
  %i.az = lshr i32 %i.ay, 29
  %i.ba = and i32 %i.az, 1
  tail call void @scsi_build_sense(ptr noundef %1, i32 noundef %i.ba, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #15
  %i.bb = getelementptr i8, ptr %1, i64 248
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %i.bc, i32 noundef 96, i16 noundef zeroext 1, i8 noundef zeroext -1, i1 noundef zeroext true) #15 ; 0 uses
  br label %ata_id_has_trim.exit

bb.i:                                             ; preds = %bb.g
  %i.be = lshr i64 %i.d, 56
  %i.bf = trunc nuw i64 %i.be to i8
end_hunk_4
begin_hunk_5_@ata_scsiop_read_cap:bb.a
  %i.dx = getelementptr i8, ptr %0, i64 8
  %i.dy = load i32, ptr %i.dx, align 8
  %i.dz = add i32 %i.dy, %i.dw
  %i.ea = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %i.du, i32 noundef %i.dz) #20 ; 0 uses
  %i.eb = load i8, ptr %i.cv, align 1
  %i.ec = or i8 %i.eb, 64
  store i8 %i.ec, ptr %i.cv, align 1
  br label %ata_id_has_trim.exit

ata_id_has_trim.exit:                             ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %bb.n, %bb.s, %bb.r, %bb.h, %bb.f
  %.0 = phi i32 [ 8, %bb.f ], [ 0, %bb.h ], [ 16, %bb.m ], [ 16, %bb.r ], [ 16, %bb.s ], [ 16, %bb.n ], [ 16, %bb.l ], [ 16, %bb.o ], [ 16, %bb.p ], [ 16, %bb.q ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 5) i32 @ata_scsiop_maint_in(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 165
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 31
  %cond = icmp eq i8 %i.c, 12
  br i1 %cond, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 166
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  switch i8 %i.e, label %bb.c [
    i8 1, label %bb.d
    i8 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = zext i8 %i.e to i32
  %i.g = load ptr, ptr %0, align 64               ; 2 uses
  %i.h = load ptr, ptr %i.g, align 64
  %i.i = getelementptr i8, ptr %i.h, i64 36
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr i8, ptr %i.g, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = add i32 %i.n, %i.l
  %i.p = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %i.j, i32 noundef %i.o, i32 noundef %i.f) #20 ; 0 uses
  %i.q = getelementptr i8, ptr %0, i64 24
  %.val.i = load i64, ptr %i.q, align 8
  %i.r = trunc i64 %.val.i to i32
  %i.s = lshr i32 %i.r, 29
  %i.t = and i32 %i.s, 1
  tail call void @scsi_build_sense(ptr noundef %1, i32 noundef %i.t, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #15
  %i.u = getelementptr i8, ptr %1, i64 248
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %i.v, i32 noundef 96, i16 noundef zeroext 2, i8 noundef zeroext -1, i1 noundef zeroext true) #15 ; 0 uses
  br label %ata_scsi_report_supported_opcodes.exit

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.x = getelementptr i8, ptr %1, i64 167
  %i.y = load i8, ptr %i.x, align 1
  switch i8 %i.y, label %bb.k [
    i8 18, label %bb.i
    i8 26, label %bb.i
    i8 90, label %bb.i
    i8 37, label %bb.i
    i8 -98, label %bb.i
    i8 -96, label %bb.i
    i8 3, label %bb.i
    i8 53, label %bb.i
    i8 -111, label %bb.i
    i8 1, label %bb.i
    i8 11, label %bb.i
    i8 43, label %bb.i
    i8 0, label %bb.i
    i8 29, label %bb.i
    i8 -93, label %bb.i
    i8 8, label %bb.i
    i8 40, label %bb.i
    i8 10, label %bb.i
    i8 42, label %bb.i
    i8 -95, label %bb.i
    i8 -123, label %bb.i
    i8 47, label %bb.i
    i8 -113, label %bb.i
    i8 21, label %bb.i
    i8 85, label %bb.i
    i8 27, label %bb.i
    i8 -120, label %bb.e
    i8 -118, label %bb.f
    i8 -107, label %bb.g
    i8 -108, label %bb.g
    i8 -94, label %bb.j
    i8 -75, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = and i64 %i.aa, 8192                     ; 2 uses
  %.not28.not.i = icmp eq i64 %i.ab, 0
  %spec.select.i = select i1 %.not28.not.i, i8 3, i8 11
  %.lobit34.i = lshr exact i64 %i.ab, 13
  %spec.select29.i = trunc nuw nsw i64 %.lobit34.i to i8
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr i8, ptr %0, i64 24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = and i64 %i.ad, 8192                     ; 2 uses
  %.not27.not.i = icmp eq i64 %i.ae, 0
  %spec.select30.i = select i1 %.not27.not.i, i8 3, i8 19
  %.lobit.i = lshr exact i64 %i.ae, 13
  %spec.select31.i = trunc nuw nsw i64 %.lobit.i to i8
  br label %bb.k

bb.g:                                             ; preds = %bb.d, %bb.d
  %i.af = getelementptr i8, ptr %0, i64 1034
  %.val33.i = load i16, ptr %i.af, align 2
  %i.ag = and i16 %.val33.i, 3
  %.not26.i = icmp eq i16 %i.ag, 0
  br i1 %.not26.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr i8, ptr %0, i64 840
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = icmp eq i32 %i.ai, 9
  br i1 %i.aj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  br label %bb.k

bb.j:                                             ; preds = %bb.d, %bb.d
  %i.ak = getelementptr i8, ptr %0, i64 24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = and i64 %i.al, 256
  %.not25.i = icmp eq i64 %i.am, 0
  %spec.select32.i = select i1 %.not25.i, i8 0, i8 3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d
  %.021.i = phi i8 [ 0, %bb.d ], [ 3, %bb.i ], [ 0, %bb.h ], [ %spec.select32.i, %bb.j ], [ %spec.select.i, %bb.e ], [ %spec.select30.i, %bb.f ]
  %.020.i = phi i8 [ 0, %bb.d ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.j ], [ %spec.select29.i, %bb.e ], [ %spec.select31.i, %bb.f ]
  store i8 %.020.i, ptr %2, align 1
  %i.an = getelementptr i8, ptr %2, i64 1
  store i8 %.021.i, ptr %i.an, align 1
  br label %ata_scsi_report_supported_opcodes.exit

bb.l:                                             ; preds = %bb.a
  %i.ao = getelementptr i8, ptr %0, i64 24
  %.val = load i64, ptr %i.ao, align 8
  %i.ap = trunc i64 %.val to i32
  %i.aq = lshr i32 %i.ap, 29
  %i.ar = and i32 %i.aq, 1
  tail call void @scsi_build_sense(ptr noundef %1, i32 noundef %i.ar, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #15
  %i.as = getelementptr i8, ptr %1, i64 248
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %i.at, i32 noundef 96, i16 noundef zeroext 1, i8 noundef zeroext -1, i1 noundef zeroext true) #15 ; 0 uses
  br label %ata_scsi_report_supported_opcodes.exit

ata_scsi_report_supported_opcodes.exit:           ; preds = %bb.k, %bb.c, %bb.l
  %.0 = phi i32 [ 0, %bb.l ], [ 0, %bb.c ], [ 4, %bb.k ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 493) i32 @ata_msense_control(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i8 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #12 align 16 prefalign(16) {
bb.a:
  switch i8 %2, label %ata_msense_control_spg0.exit [
    i8 0, label %bb.b
    i8 7, label %bb.e
    i8 8, label %bb.e
    i8 -14, label %bb.f
    i8 -1, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i16 2570, ptr %1, align 1
  %i.a = getelementptr i8, ptr %1, i64 2
  %i.b = getelementptr i8, ptr %1, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(9) %i.b, i8 0, i64 9, i1 false)
  store i8 4, ptr %i.a, align 1
  br label %ata_msense_control_spg0.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(12) %1, ptr noundef nonnull align 1 dereferenceable(12) @def_control_mpage, i64 12, i1 false)
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = trunc i64 %i.d to i32
  %i.f = lshr i32 %i.e, 27
  %i.g = getelementptr i8, ptr %1, i64 2
  %i.h = trunc nuw nsw i32 %i.f to i8
  %i.i = and i8 %i.h, 4
  %i.j = or disjoint i8 %i.i, 2
  store i8 %i.j, ptr %i.g, align 1
  br label %ata_msense_control_spg0.exit

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.k = tail call fastcc i32 @ata_msense_control_spgt2(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #19, !srcloc !78
  br label %ata_msense_control_spg0.exit

bb.f:                                             ; preds = %bb.a
  store i8 74, ptr %1, align 1
  %i.l = getelementptr i8, ptr %1, i64 1
  store i8 -14, ptr %i.l, align 1
  %i.m = getelementptr i8, ptr %1, i64 2
  store i16 3072, ptr %i.m, align 1
  %i.n = getelementptr i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = lshr i64 %i.o, 20
  %i.q = trunc i64 %i.p to i8
  %spec.select.i = and i8 %i.q, 2
  %i.r = getelementptr i8, ptr %1, i64 4
  store i8 %spec.select.i, ptr %i.r, align 1
  br label %ata_msense_control_spg0.exit

bb.g:                                             ; preds = %bb.a
  br i1 %3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i16 2570, ptr %1, align 1
  %i.s = getelementptr i8, ptr %1, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(9) %i.s, i8 0, i64 9, i1 false)
  br label %ata_msense_control_spg0.exit25

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(12) %1, ptr noundef nonnull align 1 dereferenceable(12) @def_control_mpage, i64 12, i1 false)
  %i.t = getelementptr i8, ptr %0, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = trunc i64 %i.u to i32
  %i.w = lshr i32 %i.v, 27
  %i.x = trunc nuw nsw i32 %i.w to i8
  %i.y = and i8 %i.x, 4
  %i.z = or disjoint i8 %i.y, 2
  br label %ata_msense_control_spg0.exit25

ata_msense_control_spg0.exit25:                   ; preds = %bb.h, %bb.i
  %.sink = phi i8 [ 4, %bb.h ], [ %i.z, %bb.i ]
  %i.aa = getelementptr i8, ptr %1, i64 2
  store i8 %.sink, ptr %i.aa, align 1
  %i.ab = getelementptr i8, ptr %1, i64 12
  %i.ac = tail call fastcc i32 @ata_msense_control_spgt2(ptr noundef %0, ptr noundef %i.ab, i8 noundef zeroext 7) #19, !srcloc !79
  %i.ad = add nuw nsw i32 %i.ac, 12               ; 2 uses
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr i8, ptr %1, i64 %i.ae
  %i.ag = tail call fastcc i32 @ata_msense_control_spgt2(ptr noundef %0, ptr noundef %i.af, i8 noundef zeroext 8) #19, !srcloc !80
  %i.ah = add nuw nsw i32 %i.ad, %i.ag            ; 2 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr i8, ptr %1, i64 %i.ai     ; 4 uses
  store i8 74, ptr %i.aj, align 1
  %i.ak = getelementptr i8, ptr %i.aj, i64 1
  store i8 -14, ptr %i.ak, align 1
  %i.al = getelementptr i8, ptr %i.aj, i64 2
  store i16 3072, ptr %i.al, align 1
  %i.am = getelementptr i8, ptr %0, i64 24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = lshr i64 %i.an, 20
  %i.ap = trunc i64 %i.ao to i8
  %spec.select.i26 = and i8 %i.ap, 2
  %i.aq = getelementptr i8, ptr %i.aj, i64 4
  store i8 %spec.select.i26, ptr %i.aq, align 1
  %i.ar = add nuw nsw i32 %i.ah, 16
  br label %ata_msense_control_spg0.exit

ata_msense_control_spg0.exit:                     ; preds = %bb.d, %bb.c, %bb.a, %ata_msense_control_spg0.exit25, %bb.f, %bb.e
  %.0 = phi i32 [ %i.ar, %ata_msense_control_spg0.exit25 ], [ 0, %bb.a ], [ %i.k, %bb.e ], [ 16, %bb.f ], [ 12, %bb.c ], [ 12, %bb.d ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 233) i32 @ata_msense_control_spgt2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i8 noundef zeroext %2) unnamed_addr #12 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 8192
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 2040
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %.not35 = icmp eq ptr %i.e, null
  br i1 %.not35, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 10, ptr %1, align 1
  %i.f = getelementptr i8, ptr %1, i64 1
  store i8 %2, ptr %i.f, align 1
  %i.g = getelementptr i8, ptr %1, i64 2
  store i16 -7168, ptr %i.g, align 1
  %i.h = icmp eq i8 %2, 7
  br i1 %i.h, label %bb.d, label %.loopexit.loopexit

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %i.e, align 1
  %i.j = shl i8 %i.i, 4
  %i.k = and i8 %i.j, 48
  %i.l = getelementptr i8, ptr %1, i64 7
  store i8 %i.k, ptr %i.l, align 1
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.c, %bb.d
  %.sink = phi i64 [ 64, %bb.d ], [ 288, %bb.c ]
  %i.m = getelementptr i8, ptr %i.e, i64 %.sink   ; 21 uses
  %i.n = getelementptr i8, ptr %1, i64 8
  %.val = load i32, ptr %i.e, align 1             ; 2 uses
  %i.o = lshr i32 %.val, 4
  %i.p = trunc i32 %i.o to i8
  %i.q = and i8 %i.p, -16                         ; 8 uses
  %i.r = trunc i32 %.val to i8                    ; 2 uses
  %i.s = lshr i8 %i.r, 4
  %i.t = or disjoint i8 %i.q, %i.s                ; 7 uses
  %i.u = and i8 %i.r, 15                          ; 7 uses
  store i8 10, ptr %i.n, align 1
  %i.v = getelementptr i8, ptr %i.m, i64 8
  %.val38 = load i32, ptr %i.v, align 1
  %i.w = udiv i32 %.val38, 10000
  %i.x = tail call i32 @llvm.umin.i32(i32 %i.w, i32 65535)
  %i.y = trunc nuw i32 %i.x to i16
  %i.z = getelementptr i8, ptr %1, i64 10
  %i.aa = tail call i16 @llvm.bswap.i16(i16 %i.y)
  store i16 %i.aa, ptr %i.z, align 1
  %i.ab = getelementptr i8, ptr %1, i64 14        ; 2 uses
  store i8 %i.q, ptr %i.ab, align 1
  %i.ac = getelementptr i8, ptr %i.m, i64 4
  %.val37 = load i32, ptr %i.ac, align 1
  %i.ad = udiv i32 %.val37, 10000
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 65535)
  %i.af = trunc nuw i32 %i.ae to i16
  %i.ag = getelementptr i8, ptr %1, i64 12
  %i.ah = tail call i16 @llvm.bswap.i16(i16 %i.af)
  store i16 %i.ah, ptr %i.ag, align 1
  store i8 %i.t, ptr %i.ab, align 1
  %i.ai = getelementptr i8, ptr %i.m, i64 16
  %.val36 = load i32, ptr %i.ai, align 1
  %i.aj = udiv i32 %.val36, 10000
  %i.ak = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 65535)
  %i.al = trunc nuw i32 %i.ak to i16
  %i.am = getelementptr i8, ptr %1, i64 18
  %i.an = tail call i16 @llvm.bswap.i16(i16 %i.al)
  store i16 %i.an, ptr %i.am, align 1
  %i.ao = getelementptr i8, ptr %1, i64 22
  store i8 %i.u, ptr %i.ao, align 1
  %i.ap = getelementptr i8, ptr %1, i64 40
  store i8 10, ptr %i.ap, align 1
  %i.aq = getelementptr i8, ptr %i.m, i64 40
  %.val38.1 = load i32, ptr %i.aq, align 1
  %i.ar = udiv i32 %.val38.1, 10000
  %i.as = tail call i32 @llvm.umin.i32(i32 %i.ar, i32 65535)
  %i.at = trunc nuw i32 %i.as to i16
  %i.au = getelementptr i8, ptr %1, i64 42
  %i.av = tail call i16 @llvm.bswap.i16(i16 %i.at)
  store i16 %i.av, ptr %i.au, align 1
  %i.aw = getelementptr i8, ptr %1, i64 46        ; 2 uses
  store i8 %i.q, ptr %i.aw, align 1
  %i.ax = getelementptr i8, ptr %i.m, i64 36
  %.val37.1 = load i32, ptr %i.ax, align 1
  %i.ay = udiv i32 %.val37.1, 10000
  %i.az = tail call i32 @llvm.umin.i32(i32 %i.ay, i32 65535)
  %i.ba = trunc nuw i32 %i.az to i16
  %i.bb = getelementptr i8, ptr %1, i64 44
  %i.bc = tail call i16 @llvm.bswap.i16(i16 %i.ba)
  store i16 %i.bc, ptr %i.bb, align 1
  store i8 %i.t, ptr %i.aw, align 1
  %i.bd = getelementptr i8, ptr %i.m, i64 48
  %.val36.1 = load i32, ptr %i.bd, align 1
  %i.be = udiv i32 %.val36.1, 10000
  %i.bf = tail call i32 @llvm.umin.i32(i32 %i.be, i32 65535)
  %i.bg = trunc nuw i32 %i.bf to i16
  %i.bh = getelementptr i8, ptr %1, i64 50
  %i.bi = tail call i16 @llvm.bswap.i16(i16 %i.bg)
  store i16 %i.bi, ptr %i.bh, align 1
  %i.bj = getelementptr i8, ptr %1, i64 54
  store i8 %i.u, ptr %i.bj, align 1
  %i.bk = getelementptr i8, ptr %1, i64 72
  store i8 10, ptr %i.bk, align 1
  %i.bl = getelementptr i8, ptr %i.m, i64 72
  %.val38.2 = load i32, ptr %i.bl, align 1
  %i.bm = udiv i32 %.val38.2, 10000
  %i.bn = tail call i32 @llvm.umin.i32(i32 %i.bm, i32 65535)
  %i.bo = trunc nuw i32 %i.bn to i16
  %i.bp = getelementptr i8, ptr %1, i64 74
  %i.bq = tail call i16 @llvm.bswap.i16(i16 %i.bo)
  store i16 %i.bq, ptr %i.bp, align 1
  %i.br = getelementptr i8, ptr %1, i64 78        ; 2 uses
  store i8 %i.q, ptr %i.br, align 1
  %i.bs = getelementptr i8, ptr %i.m, i64 68
  %.val37.2 = load i32, ptr %i.bs, align 1
  %i.bt = udiv i32 %.val37.2, 10000
  %i.bu = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 65535)
  %i.bv = trunc nuw i32 %i.bu to i16
  %i.bw = getelementptr i8, ptr %1, i64 76
  %i.bx = tail call i16 @llvm.bswap.i16(i16 %i.bv)
  store i16 %i.bx, ptr %i.bw, align 1
  store i8 %i.t, ptr %i.br, align 1
  %i.by = getelementptr i8, ptr %i.m, i64 80
  %.val36.2 = load i32, ptr %i.by, align 1
  %i.bz = udiv i32 %.val36.2, 10000
  %i.ca = tail call i32 @llvm.umin.i32(i32 %i.bz, i32 65535)
  %i.cb = trunc nuw i32 %i.ca to i16
  %i.cc = getelementptr i8, ptr %1, i64 82
  %i.cd = tail call i16 @llvm.bswap.i16(i16 %i.cb)
  store i16 %i.cd, ptr %i.cc, align 1
  %i.ce = getelementptr i8, ptr %1, i64 86
  store i8 %i.u, ptr %i.ce, align 1
  %i.cf = getelementptr i8, ptr %1, i64 104
  store i8 10, ptr %i.cf, align 1
  %i.cg = getelementptr i8, ptr %i.m, i64 104
  %.val38.3 = load i32, ptr %i.cg, align 1
  %i.ch = udiv i32 %.val38.3, 10000
  %i.ci = tail call i32 @llvm.umin.i32(i32 %i.ch, i32 65535)
  %i.cj = trunc nuw i32 %i.ci to i16
  %i.ck = getelementptr i8, ptr %1, i64 106
  %i.cl = tail call i16 @llvm.bswap.i16(i16 %i.cj)
  store i16 %i.cl, ptr %i.ck, align 1
  %i.cm = getelementptr i8, ptr %1, i64 110       ; 2 uses
  store i8 %i.q, ptr %i.cm, align 1
  %i.cn = getelementptr i8, ptr %i.m, i64 100
  %.val37.3 = load i32, ptr %i.cn, align 1
  %i.co = udiv i32 %.val37.3, 10000
  %i.cp = tail call i32 @llvm.umin.i32(i32 %i.co, i32 65535)
  %i.cq = trunc nuw i32 %i.cp to i16
  %i.cr = getelementptr i8, ptr %1, i64 108
  %i.cs = tail call i16 @llvm.bswap.i16(i16 %i.cq)
  store i16 %i.cs, ptr %i.cr, align 1
  store i8 %i.t, ptr %i.cm, align 1
  %i.ct = getelementptr i8, ptr %i.m, i64 112
  %.val36.3 = load i32, ptr %i.ct, align 1
  %i.cu = udiv i32 %.val36.3, 10000
  %i.cv = tail call i32 @llvm.umin.i32(i32 %i.cu, i32 65535)
  %i.cw = trunc nuw i32 %i.cv to i16
  %i.cx = getelementptr i8, ptr %1, i64 114
  %i.cy = tail call i16 @llvm.bswap.i16(i16 %i.cw)
  store i16 %i.cy, ptr %i.cx, align 1
  %i.cz = getelementptr i8, ptr %1, i64 118
  store i8 %i.u, ptr %i.cz, align 1
  %i.da = getelementptr i8, ptr %1, i64 136
  store i8 10, ptr %i.da, align 1
  %i.db = getelementptr i8, ptr %i.m, i64 136
  %.val38.4 = load i32, ptr %i.db, align 1
  %i.dc = udiv i32 %.val38.4, 10000
  %i.dd = tail call i32 @llvm.umin.i32(i32 %i.dc, i32 65535)
  %i.de = trunc nuw i32 %i.dd to i16
  %i.df = getelementptr i8, ptr %1, i64 138
  %i.dg = tail call i16 @llvm.bswap.i16(i16 %i.de)
  store i16 %i.dg, ptr %i.df, align 1
  %i.dh = getelementptr i8, ptr %1, i64 142       ; 2 uses
  store i8 %i.q, ptr %i.dh, align 1
  %i.di = getelementptr i8, ptr %i.m, i64 132
  %.val37.4 = load i32, ptr %i.di, align 1
  %i.dj = udiv i32 %.val37.4, 10000
  %i.dk = tail call i32 @llvm.umin.i32(i32 %i.dj, i32 65535)
  %i.dl = trunc nuw i32 %i.dk to i16
  %i.dm = getelementptr i8, ptr %1, i64 140
  %i.dn = tail call i16 @llvm.bswap.i16(i16 %i.dl)
  store i16 %i.dn, ptr %i.dm, align 1
  store i8 %i.t, ptr %i.dh, align 1
  %i.do = getelementptr i8, ptr %i.m, i64 144
  %.val36.4 = load i32, ptr %i.do, align 1
  %i.dp = udiv i32 %.val36.4, 10000
  %i.dq = tail call i32 @llvm.umin.i32(i32 %i.dp, i32 65535)
  %i.dr = trunc nuw i32 %i.dq to i16
  %i.ds = getelementptr i8, ptr %1, i64 146
  %i.dt = tail call i16 @llvm.bswap.i16(i16 %i.dr)
  store i16 %i.dt, ptr %i.ds, align 1
  %i.du = getelementptr i8, ptr %1, i64 150
  store i8 %i.u, ptr %i.du, align 1
  %i.dv = getelementptr i8, ptr %1, i64 168
  store i8 10, ptr %i.dv, align 1
  %i.dw = getelementptr i8, ptr %i.m, i64 168
  %.val38.5 = load i32, ptr %i.dw, align 1
  %i.dx = udiv i32 %.val38.5, 10000
  %i.dy = tail call i32 @llvm.umin.i32(i32 %i.dx, i32 65535)
  %i.dz = trunc nuw i32 %i.dy to i16
  %i.ea = getelementptr i8, ptr %1, i64 170
  %i.eb = tail call i16 @llvm.bswap.i16(i16 %i.dz)
  store i16 %i.eb, ptr %i.ea, align 1
  %i.ec = getelementptr i8, ptr %1, i64 174       ; 2 uses
  store i8 %i.q, ptr %i.ec, align 1
  %i.ed = getelementptr i8, ptr %i.m, i64 164
  %.val37.5 = load i32, ptr %i.ed, align 1
  %i.ee = udiv i32 %.val37.5, 10000
  %i.ef = tail call i32 @llvm.umin.i32(i32 %i.ee, i32 65535)
  %i.eg = trunc nuw i32 %i.ef to i16
  %i.eh = getelementptr i8, ptr %1, i64 172
  %i.ei = tail call i16 @llvm.bswap.i16(i16 %i.eg)
  store i16 %i.ei, ptr %i.eh, align 1
  store i8 %i.t, ptr %i.ec, align 1
  %i.ej = getelementptr i8, ptr %i.m, i64 176
  %.val36.5 = load i32, ptr %i.ej, align 1
  %i.ek = udiv i32 %.val36.5, 10000
  %i.el = tail call i32 @llvm.umin.i32(i32 %i.ek, i32 65535)
  %i.em = trunc nuw i32 %i.el to i16
  %i.en = getelementptr i8, ptr %1, i64 178
  %i.eo = tail call i16 @llvm.bswap.i16(i16 %i.em)
  store i16 %i.eo, ptr %i.en, align 1
  %i.ep = getelementptr i8, ptr %1, i64 182
  store i8 %i.u, ptr %i.ep, align 1
  %i.eq = getelementptr i8, ptr %1, i64 200
  store i8 10, ptr %i.eq, align 1
  %i.er = getelementptr i8, ptr %i.m, i64 200
  %.val38.6 = load i32, ptr %i.er, align 1
  %i.es = udiv i32 %.val38.6, 10000
  %i.et = tail call i32 @llvm.umin.i32(i32 %i.es, i32 65535)
  %i.eu = trunc nuw i32 %i.et to i16
  %i.ev = getelementptr i8, ptr %1, i64 202
  %i.ew = tail call i16 @llvm.bswap.i16(i16 %i.eu)
  store i16 %i.ew, ptr %i.ev, align 1
  %i.ex = getelementptr i8, ptr %1, i64 206       ; 2 uses
  store i8 %i.q, ptr %i.ex, align 1
  %i.ey = getelementptr i8, ptr %i.m, i64 196
  %.val37.6 = load i32, ptr %i.ey, align 1
  %i.ez = udiv i32 %.val37.6, 10000
  %i.fa = tail call i32 @llvm.umin.i32(i32 %i.ez, i32 65535)
  %i.fb = trunc nuw i32 %i.fa to i16
  %i.fc = getelementptr i8, ptr %1, i64 204
  %i.fd = tail call i16 @llvm.bswap.i16(i16 %i.fb)
  store i16 %i.fd, ptr %i.fc, align 1
  store i8 %i.t, ptr %i.ex, align 1
  %i.fe = getelementptr i8, ptr %i.m, i64 208
  %.val36.6 = load i32, ptr %i.fe, align 1
  %i.ff = udiv i32 %.val36.6, 10000
  %i.fg = tail call i32 @llvm.umin.i32(i32 %i.ff, i32 65535)
  %i.fh = trunc nuw i32 %i.fg to i16
  %i.fi = getelementptr i8, ptr %1, i64 210
  %i.fj = tail call i16 @llvm.bswap.i16(i16 %i.fh)
  store i16 %i.fj, ptr %i.fi, align 1
  %i.fk = getelementptr i8, ptr %1, i64 214
  store i8 %i.u, ptr %i.fk, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a, %bb.b
  %.033 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 232, %.loopexit.loopexit ]
  ret i32 %.033
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @scsi_remove_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #7 = { nocallback nounwind }
attributes #8 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #9 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { fn_ret_thunk_extern inlinehint mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone nounwind "no-builtin-wcslen" }
attributes #16 = { nounwind }
attributes #17 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #18 = { nounwind memory(none) }
attributes #19 = { noredzone "no-builtin-wcslen" }
attributes #20 = { cold noredzone nounwind "no-builtin-wcslen" }

!llvm.named.register.rsp = !{!2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{!"rsp"}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 8, !"cf-protection-branch", i32 1}
!5 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!7 = !{i32 1, !"Code Model", i32 2}
!8 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!9 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!10 = !{i32 1, !"override-stack-alignment", i32 8}
!11 = !{i32 4, !"SkipRaxSetup", i32 1}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{!"branch_weights", i32 2000, i32 2002}
!15 = !{!"branch_weights", i32 1704200439, i32 443283209}
!16 = !{!"branch_weights", i32 1073741824, i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 1073741824}
!17 = !{!"auto-init"}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"branch_weights", i32 1073741824, i32 -2147483648, i32 1073741824, i32 -2147483648, i32 -2147483648, i32 -2147483648}
!21 = !{i64 2148330671}
!22 = !{i64 2158935158}
!23 = !{i64 2158936377}
!24 = !{i64 2148549103, i64 2148549142, i64 2148549163, i64 2148549200, i64 2148549223, i64 2148549094}
!25 = !{i64 2158986684, i64 2158986559}
!26 = !{i64 2158987207, i64 2158988266, i64 2158988299, i64 2158988334, i64 2158988350, i64 2158989277, i64 2158989335, i64 2158989384, i64 2158989194, i64 2158988409, i64 2158988441, i64 2158988524}
!27 = !{i64 2158989690, i64 2158989566}
!28 = distinct !{!28, !19}
!29 = distinct !{null}
!30 = distinct !{null, null}
!31 = !{i64 2158942364, i64 2158942239}
!32 = !{i64 2158942887, i64 2158943959, i64 2158943992, i64 2158944027, i64 2158944043, i64 2158944970, i64 2158945028, i64 2158945077, i64 2158944887, i64 2158944102, i64 2158944134, i64 2158944217}
!33 = !{i64 2158945382, i64 2158945258}
!34 = !{i64 2158996061, i64 2158995936}
!35 = !{i64 2158996584, i64 2158997623, i64 2158997656, i64 2158997691, i64 2158997707, i64 2158998634, i64 2158998692, i64 2158998741, i64 2158998551, i64 2158997766, i64 2158997798, i64 2158997881}
!36 = !{i64 2158999047, i64 2158998923}
!37 = !{i64 117530}
!38 = !{i64 117631}
!39 = !{i64 117745}
!40 = !{i64 118432}
!41 = distinct !{!41, !19}
!42 = distinct !{!42, !19}
!43 = distinct !{!43, !19}
!44 = distinct !{!44, !19}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19}
!47 = !{i64 128550}
!48 = !{i64 128655}
!49 = distinct !{!49, !19}
!50 = !{i64 2159058232, i64 2159058107}
!51 = !{i64 2159058755, i64 2159059794, i64 2159059827, i64 2159059862, i64 2159059878, i64 2159060805, i64 2159060863, i64 2159060912, i64 2159060722, i64 2159059937, i64 2159059969, i64 2159060052}
!52 = !{i64 2159061218, i64 2159061094}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19}
!56 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!57 = !{i64 2159015528, i64 2159015403}
!58 = !{i64 2159016051, i64 2159017113, i64 2159017146, i64 2159017181, i64 2159017197, i64 2159018124, i64 2159018182, i64 2159018231, i64 2159018041, i64 2159017256, i64 2159017288, i64 2159017371}
!59 = !{i64 2159018537, i64 2159018413}
!60 = !{i64 115696}
!61 = !{i64 112618}
!62 = !{i64 112757}
!63 = distinct !{!63, !19}
!64 = distinct !{!64, !19}
!65 = !{i64 2159021900, i64 2159021775}
!66 = !{i64 2159026484, i64 2159027548, i64 2159027581, i64 2159027616, i64 2159027632, i64 2159028559, i64 2159028617, i64 2159028666, i64 2159028476, i64 2159027691, i64 2159027723, i64 2159027806}
!67 = !{i64 2159028972, i64 2159028848}
!68 = !{i64 101419}
!69 = !{i64 48131}
!70 = !{!"branch_weights", i32 4000000, i32 4001}
!71 = !{i64 78869}
!72 = !{i64 2159002104, i64 2159001979}
!73 = !{i64 2159002627, i64 2159003689, i64 2159003722, i64 2159003757, i64 2159003773, i64 2159004700, i64 2159004758, i64 2159004807, i64 2159004617, i64 2159003832, i64 2159003864, i64 2159003947}
!74 = !{i64 2159005113, i64 2159004989}
!75 = distinct !{!75, !19}
!76 = !{i64 74079}
!77 = !{i64 74277}
!78 = !{i64 71282}
!79 = !{i64 71485}
!80 = !{i64 71551}
end_hunk_5
