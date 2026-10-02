Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/npcm_gmac?download=true
inline.NumInlined: 148
inline.NumDeleted: 39
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon.6 = type { i32, i32, i8 }
%struct.AddressSpace = type { %struct.rcu_head, ptr, ptr, ptr, i32, i32, ptr, %union.anon.7, %union.anon.8, i64, i64, %struct.QemuMutex, %struct.anon.9 }
%struct.rcu_head = type { ptr, ptr }
%union.anon.7 = type { %struct.QTailQLink }
%struct.QTailQLink = type { ptr, ptr }
%union.anon.8 = type { %struct.QTailQLink }
%struct.QemuMutex = type { %union.pthread_mutex_t, i8 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.anon.9 = type { ptr }
%struct.VMStateInfo = type { ptr, ptr, ptr, ptr, ptr }
%struct.PropertyInfo = type { ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon = type { i64 }
%struct.NPCMGMACTxDesc = type { i32, i32, i32, i32 }
%struct.NPCMGMACRxDesc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"npcm-gmac\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"sys-bus-device\00", align 1
@npcm_gmac_types = internal constant [1 x { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr }] [{ ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i64 15568, i64 0, ptr null, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @npcm_gmac_class_init, ptr null, ptr null, ptr null }], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"NPCM GMAC Controller\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/qdev.h\00", align 1
@__func__.DEVICE_CLASS = private unnamed_addr constant [13 x i8] c"DEVICE_CLASS\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"/opt-bench/work/qemu/qemu/include/hw/net/npcm_gmac.h\00", align 1
@__func__.NPCM_GMAC = private unnamed_addr constant [10 x i8] c"NPCM_GMAC\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/sysbus.h\00", align 1
@__func__.SYS_BUS_DEVICE = private unnamed_addr constant [15 x i8] c"SYS_BUS_DEVICE\00", align 1
@npcm_gmac_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], { i32, i32, i8, [7 x i8], ptr }, %struct.anon.6, [4 x i8] } { ptr @npcm_gmac_read, ptr @npcm_gmac_write, ptr null, ptr null, i32 2, [4 x i8] zeroinitializer, { i32, i32, i8, [7 x i8], ptr } { i32 4, i32 4, i8 0, [7 x i8] zeroinitializer, ptr null }, %struct.anon.6 zeroinitializer, [4 x i8] zeroinitializer }, align 8
@.str.9 = private unnamed_addr constant [38 x i8] c"%s: invalid register offset: 0x%04lx\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"%s: Read of write-only reg: offset: 0x%04lx\0A\00", align 1
@qemu_loglevel = external local_unnamed_addr global i32, align 4
@__func__.DEVICE = private unnamed_addr constant [7 x i8] c"DEVICE\00", align 1
@trace_events_enabled_count = external local_unnamed_addr global i32, align 4
@_TRACE_NPCM_GMAC_REG_READ_DSTATE = external local_unnamed_addr global i16, align 2
@.str.11 = private unnamed_addr constant [54 x i8] c"npcm_gmac_reg_read %s: offset: 0x%04lx value: 0x%04x\0A\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"%s: Write of read-only reg: offset: 0x%04lx, value: 0x%04lx\0A\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"%s: Only MAC Address 0 is supported. This request is ignored.\0A\00", align 1
@.str.14 = private unnamed_addr constant [69 x i8] c"%s: Write of read-only bits of reg: offset: 0x%04lx, value: 0x%04lx\0A\00", align 1
@_TRACE_NPCM_GMAC_REG_WRITE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.15 = private unnamed_addr constant [55 x i8] c"npcm_gmac_reg_write %s: offset: 0x%04lx value: 0x%04x\0A\00", align 1
@_TRACE_NPCM_GMAC_MDIO_ACCESS_DSTATE = external local_unnamed_addr global i16, align 2
@.str.22 = private unnamed_addr constant [66 x i8] c"npcm_gmac_mdio_access %s: is_write: %u pa: %u gr: %u val: 0x%04x\0A\00", align 1
@npcm_gmac_cold_reset_values = internal constant [1048 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4146, i32 0, i32 0, i32 0, i32 0, i32 65536000, i32 0, i32 0, i32 -2147418113, i32 -1, i32 65535, i32 -1, i32 65535, i32 -1, i32 65535, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 131329, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 269307703, i32 0], align 16
@.str.23 = private unnamed_addr constant [36 x i8] c"TX Descriptor @ 0x%x can't be read\0A\00", align 1
@address_space_memory = external global %struct.AddressSpace, align 8
@.str.24 = private unnamed_addr constant [34 x i8] c"%s: Failed to read packet @ 0x%x\0A\00", align 1
@__func__.gmac_try_send_next_packet = private unnamed_addr constant [26 x i8] c"gmac_try_send_next_packet\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"%s: Failed to read descriptor @ 0x%lx\0A\00", align 1
@__func__.gmac_read_tx_desc = private unnamed_addr constant [18 x i8] c"gmac_read_tx_desc\00", align 1
@_TRACE_NPCM_GMAC_PACKET_DESC_READ_DSTATE = external local_unnamed_addr global i16, align 2
@.str.26 = private unnamed_addr constant [70 x i8] c"npcm_gmac_packet_desc_read %s: attempting to read descriptor @0x%04X\0A\00", align 1
@_TRACE_NPCM_GMAC_DEBUG_DESC_DATA_DSTATE = external local_unnamed_addr global i16, align 2
@.str.27 = private unnamed_addr constant [126 x i8] c"npcm_gmac_debug_desc_data %s: Address: %p Descriptor 0: 0x%04X Descriptor 1: 0x%04XDescriptor 2: 0x%04X Descriptor 3: 0x%04X\0A\00", align 1
@_TRACE_NPCM_GMAC_TX_DESC_OWNER_DSTATE = external local_unnamed_addr global i16, align 2
@.str.28 = private unnamed_addr constant [72 x i8] c"npcm_gmac_tx_desc_owner %s: TX Descriptor @0x%04X is owned by software\0A\00", align 1
@_TRACE_NPCM_GMAC_PACKET_SENT_DSTATE = external local_unnamed_addr global i16, align 2
@.str.29 = private unnamed_addr constant [59 x i8] c"npcm_gmac_packet_sent %s: TX packet sent!, length: 0x%04X\0A\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"%s: Failed to write descriptor @ 0x%lx\0A\00", align 1
@__func__.gmac_write_tx_desc = private unnamed_addr constant [19 x i8] c"gmac_write_tx_desc\00", align 1
@_TRACE_NPCM_GMAC_UPDATE_IRQ_DSTATE = external local_unnamed_addr global i16, align 2
@.str.31 = private unnamed_addr constant [86 x i8] c"npcm_gmac_update_irq %s: Status Reg: 0x%04X Interrupt Enable Reg: 0x%04X IRQ Set: %d\0A\00", align 1
@net_npcm_gmac_info = internal global { i32, [4 x i8], i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 1, [4 x i8] zeroinitializer, i64 40, ptr @gmac_receive, ptr null, ptr @gmac_can_receive, ptr null, ptr null, ptr null, ptr @gmac_cleanup, ptr @gmac_set_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.33 = private unnamed_addr constant [34 x i8] c"GMAC Currently is not able for Rx\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"RX Descriptor @ 0x%x cant be read\0A\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"RX Descriptor @ 0x%x is owned by software\0A\00", align 1
@_TRACE_NPCM_GMAC_PACKET_RECEIVE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.36 = private unnamed_addr constant [55 x i8] c"npcm_gmac_packet_receive %s: RX packet length: 0x%04X\0A\00", align 1
@__func__.gmac_read_rx_desc = private unnamed_addr constant [18 x i8] c"gmac_read_rx_desc\00", align 1
@_TRACE_NPCM_GMAC_PACKET_RECEIVING_BUFFER_DSTATE = external local_unnamed_addr global i16, align 2
@.str.37 = private unnamed_addr constant [92 x i8] c"npcm_gmac_packet_receiving_buffer %s: Receiving into Buffer size: 0x%04X at address 0x%04X\0A\00", align 1
@__func__.gmac_write_rx_desc = private unnamed_addr constant [19 x i8] c"gmac_write_rx_desc\00", align 1
@_TRACE_NPCM_GMAC_PACKET_RECEIVED_DSTATE = external local_unnamed_addr global i16, align 2
@.str.38 = private unnamed_addr constant [71 x i8] c"npcm_gmac_packet_received %s: Reception finished, packet left: 0x%04X\0A\00", align 1
@_TRACE_NPCM_GMAC_SET_LINK_DSTATE = external local_unnamed_addr global i16, align 2
@.str.39 = private unnamed_addr constant [40 x i8] c"npcm_gmac_set_link Set link: active=%u\0A\00", align 1
@phy_reg_init = internal constant [16 x i16] [i16 4416, i16 30989, i16 866, i16 24170, i16 481, i16 17889, i16 101, i16 8193, i16 0, i16 512, i16 2048, i16 0, i16 0, i16 0, i16 0, i16 12288], align 16
@_TRACE_NPCM_GMAC_RESET_DSTATE = external local_unnamed_addr global i16, align 2
@.str.40 = private unnamed_addr constant [44 x i8] c"npcm_gmac_reset %s: phy_regs[0][1]: 0x%04x\0A\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@vmstate_info_uint32 = external constant %struct.VMStateInfo, align 8
@.compoundliteral = internal global [2 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.41, i64 9320, i64 4, i64 0, i64 0, i32 1048, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 4, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@vmstate_npcm_gmac = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral, ptr null }, align 8
@.str.43 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@qdev_prop_macaddr = external constant %struct.PropertyInfo, align 8
@.str.44 = private unnamed_addr constant [7 x i8] c"netdev\00", align 1
@qdev_prop_netdev = external constant %struct.PropertyInfo, align 8
@npcm_gmac_properties = internal constant [2 x { ptr, ptr, i64, ptr, i64, %union.anon, ptr, i32, i32, i8, i8, [6 x i8] }] [{ ptr, ptr, i64, ptr, i64, %union.anon, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.43, ptr @qdev_prop_macaddr, i64 1104, ptr null, i64 0, %union.anon zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 0, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.44, ptr @qdev_prop_netdev, i64 1112, ptr null, i64 0, %union.anon zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 0, [6 x i8] zeroinitializer }], align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_do_qemu_init_npcm_gmac_types, ptr null }]

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_do_qemu_init_npcm_gmac_types() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @do_qemu_init_npcm_gmac_types, i32 noundef 4) #7
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_npcm_gmac_types() #0 {
bb.a:
  tail call void @type_register_static_array(ptr noundef nonnull @npcm_gmac_types, i32 noundef 1) #7
  ret void
}

declare void @type_register_static_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @npcm_gmac_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #7 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 8
  store i64 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr @.str.3, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr @npcm_gmac_realize, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr @npcm_gmac_unrealize, ptr %i.g, align 8
  tail call void @device_class_set_legacy_reset(ptr noundef %i.a, ptr noundef nonnull @npcm_gmac_reset) #7
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr @vmstate_npcm_gmac, ptr %i.h, align 8
  tail call void @device_class_set_props_n(ptr noundef %i.a, ptr noundef nonnull @npcm_gmac_properties, i64 noundef 2) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @npcm_gmac_realize(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 172, ptr noundef nonnull @__func__.NPCM_GMAC) #7 ; 14 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 816 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.c, ptr noundef %i.a, ptr noundef nonnull @npcm_gmac_ops, ptr noundef %i.a, ptr noundef nonnull @.str, i64 noundef 8192) #7
  tail call void @sysbus_init_mmio(ptr noundef %i.b, ptr noundef nonnull %i.c) #7
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  tail call void @sysbus_init_irq(ptr noundef %i.b, ptr noundef nonnull %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1104 ; 4 uses
  tail call void @qemu_macaddr_default_if_unset(ptr noundef nonnull %i.e) #7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = tail call ptr @qemu_new_nic(ptr noundef nonnull @net_npcm_gmac_info, ptr noundef nonnull %i.e, ptr noundef nonnull @.str, ptr noundef %i.g, ptr noundef nonnull %i.h, ptr noundef %i.a) #7 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  store ptr %i.i, ptr %i.j, align 8
  %i.k = tail call ptr @qemu_get_queue(ptr noundef %i.i) #7
  tail call void @qemu_format_nic_info_str(ptr noundef %i.k, ptr noundef nonnull %i.e) #7
  %i.l = load i8, ptr %i.e, align 16
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1105
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.n, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 9384
  store i32 %i.r, ptr %i.s, align 8
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 1106
  %3 = load i8, ptr %2, align 2
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 %4, 24
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 1107
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 16
  %10 = or disjoint i32 %9, %5
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 1108
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = or disjoint i32 %10, %14
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1109
  %16 = load i8, ptr %i.t, align 1
  %17 = zext i8 %16 to i32
  %18 = or disjoint i32 %15, %17
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 9388
  store i32 %18, ptr %i.u, align 4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @npcm_gmac_unrealize(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 172, ptr noundef nonnull @__func__.NPCM_GMAC) #7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @qemu_del_nic(ptr noundef %i.c) #7
  ret void
}

declare void @device_class_set_legacy_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @npcm_gmac_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 172, ptr noundef nonnull @__func__.NPCM_GMAC) #7 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9320
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4192) %i.b, ptr noundef nonnull align 16 dereferenceable(4192) @npcm_gmac_cold_reset_values, i64 noundef 4192, i1 noundef false) #7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 13416 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, -2
  store i32 %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 13512
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 16 dereferenceable(32) @phy_reg_init, i64 noundef 32, i1 noundef false) #7
  %i.g = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 13514
  %i.k = load i16, ptr %i.j, align 2
  %i.l = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %trace_npcm_gmac_reset.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.m = load i16, ptr @_TRACE_NPCM_GMAC_RESET_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.m, 0
  br i1 %.not1.i, label %trace_npcm_gmac_reset.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr @qemu_loglevel, align 4
  %i.o = and i32 %i.n, 32768
  %.not2.i = icmp eq i32 %i.o, 0
  br i1 %.not2.i, label %trace_npcm_gmac_reset.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = zext i16 %i.k to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.40, ptr noundef %i.i, i32 noundef %i.p) #7
  br label %trace_npcm_gmac_reset.exit

trace_npcm_gmac_reset.exit:                       ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @sysbus_init_mmio(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @sysbus_init_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qemu_macaddr_default_if_unset(ptr noundef) local_unnamed_addr #1

declare ptr @qemu_new_nic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qemu_format_nic_info_str(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qemu_get_queue(ptr noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @npcm_gmac_read(ptr noundef %0, i64 noundef %1, i32 %2) #0 {
bb.a:
  %i.a = icmp ugt i64 %1, 4191
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @qemu_loglevel, align 4
  %i.c = and i32 %i.b, 2048
  %.not16 = icmp eq i32 %i.c, 0
  br i1 %.not16, label %bb.l, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, ptr noundef %i.f, i64 noundef %1) #7
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  switch i64 %1, label %bb.g [
    i64 4100, label %bb.e
    i64 4104, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.g = load i32, ptr @qemu_loglevel, align 4
  %i.h = and i32 %i.g, 2048
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.h, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.10, ptr noundef %i.k, i64 noundef %1) #7
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9320
  %i.m = lshr i64 %1, 2
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.0 = phi i32 [ %i.o, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %trace_npcm_gmac_reg_read.exit, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.t = load i16, ptr @_TRACE_NPCM_GMAC_REG_READ_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.t, 0
  br i1 %.not2.i, label %trace_npcm_gmac_reg_read.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load i32, ptr @qemu_loglevel, align 4
  %i.v = and i32 %i.u, 32768
  %.not3.i = icmp eq i32 %i.v, 0
  br i1 %.not3.i, label %trace_npcm_gmac_reg_read.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.11, ptr noundef %i.r, i64 noundef range(i64 0, 4192) %1, i32 noundef %.0) #7
  br label %trace_npcm_gmac_reg_read.exit

trace_npcm_gmac_reg_read.exit:                    ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %i.w = zext i32 %.0 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.c, %trace_npcm_gmac_reg_read.exit
  %.014 = phi i64 [ %i.w, %trace_npcm_gmac_reg_read.exit ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i64 %.014
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @npcm_gmac_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = trunc i64 %2 to i32                      ; 9 uses
  %i.e = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %trace_npcm_gmac_reg_write.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr @_TRACE_NPCM_GMAC_REG_WRITE_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.f, 0
  br i1 %.not2.i, label %trace_npcm_gmac_reg_write.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @qemu_loglevel, align 4
  %i.h = and i32 %i.g, 32768
  %.not3.i = icmp eq i32 %i.h, 0
  br i1 %.not3.i, label %trace_npcm_gmac_reg_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.15, ptr noundef %i.c, i64 noundef %1, i32 noundef %i.d) #7
  br label %trace_npcm_gmac_reg_write.exit

trace_npcm_gmac_reg_write.exit:                   ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.i = icmp ugt i64 %1, 4191
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %trace_npcm_gmac_reg_write.exit
  %i.j = load i32, ptr @qemu_loglevel, align 4
  %i.k = and i32 %i.j, 2048
  %.not75 = icmp eq i32 %i.k, 0
  br i1 %.not75, label %bb.ag, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, ptr noundef %i.n, i64 noundef %1) #7
  br label %bb.ag

end_hunk_0
begin_hunk_1_@gmac_receive:bb.a
  %i.fo = load i32, ptr %i.be, align 4
  %.not71 = icmp sgt i32 %i.fo, -1
  br i1 %.not71, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.thread194
  %i.fp = or i32 %i.fm, 655424
  store i32 %i.fp, ptr %i.ab, align 4
  call fastcc void @gmac_update_irq(ptr noundef nonnull %i.b)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.thread194
  %i.fq = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = load i32, ptr %5, align 16
  %i.fu = load i32, ptr %i.be, align 4
  %i.fv = load i32, ptr %i.bg, align 8
  %i.fw = load i32, ptr %i.bi, align 4
  %i.fx = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i117 = icmp eq i32 %i.fx, 0
  br i1 %.not.i117, label %trace_npcm_gmac_debug_desc_data.exit120, label %bb.ay, !prof !7

bb.ay:                                            ; preds = %bb.ax
  %i.fy = load i16, ptr @_TRACE_NPCM_GMAC_DEBUG_DESC_DATA_DSTATE, align 2
  %.not5.i118 = icmp eq i16 %i.fy, 0
  br i1 %.not5.i118, label %trace_npcm_gmac_debug_desc_data.exit120, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fz = load i32, ptr @qemu_loglevel, align 4
  %i.ga = and i32 %i.fz, 32768
  %.not6.i119 = icmp eq i32 %i.ga, 0
  br i1 %.not6.i119, label %trace_npcm_gmac_debug_desc_data.exit120, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.27, ptr noundef %i.fs, ptr noundef nonnull %5, i32 noundef %i.ft, i32 noundef %i.fu, i32 noundef %i.fv, i32 noundef %i.fw) #7
  br label %trace_npcm_gmac_debug_desc_data.exit120

trace_npcm_gmac_debug_desc_data.exit120:          ; preds = %bb.ax, %bb.ay, %bb.az, %bb.ba
  %i.gb = load i32, ptr %i.bt, align 8
  %i.gc = or i32 %i.gb, 16777216
  store i32 %i.gc, ptr %i.bt, align 8
  %i.gd = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 48
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i121 = icmp eq i32 %i.gg, 0
  br i1 %.not.i121, label %trace_npcm_gmac_packet_received.exit, label %bb.bb, !prof !7

bb.bb:                                            ; preds = %trace_npcm_gmac_debug_desc_data.exit120
  %i.gh = load i16, ptr @_TRACE_NPCM_GMAC_PACKET_RECEIVED_DSTATE, align 2
  %.not1.i122 = icmp eq i16 %i.gh, 0
  br i1 %.not1.i122, label %trace_npcm_gmac_packet_received.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gi = load i32, ptr @qemu_loglevel, align 4
  %i.gj = and i32 %i.gi, 32768
  %.not2.i123 = icmp eq i32 %i.gj, 0
  br i1 %.not2.i123, label %trace_npcm_gmac_packet_received.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.38, ptr noundef %i.gf, i32 noundef %.1155) #7
  br label %trace_npcm_gmac_packet_received.exit

trace_npcm_gmac_packet_received.exit:             ; preds = %trace_npcm_gmac_debug_desc_data.exit120, %bb.bb, %bb.bc, %bb.bd
  %i.gk = load i32, ptr %i.ab, align 4
  %i.gl = and i32 %i.gk, -917505
  %i.gm = or disjoint i32 %i.gl, 393216
  store i32 %i.gm, ptr %i.ab, align 4
  %i.gn = zext i32 %.2197 to i64                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.go = load <4 x i32>, ptr %5, align 16
  store <4 x i32> %i.go, ptr %3, align 16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !9
  fence seq_cst
  %i.gp = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef range(i64 0, 4294967296) %i.gn, i64 4294967296, ptr noundef nonnull %3, i64 noundef range(i64 0, 2048) 16, i1 noundef zeroext true) #7
  %.not.i124 = icmp eq i32 %i.gp, 0
  br i1 %.not.i124, label %gmac_write_rx_desc.exit127, label %bb.be

bb.be:                                            ; preds = %trace_npcm_gmac_packet_received.exit
  %i.gq = load i32, ptr @qemu_loglevel, align 4
  %i.gr = and i32 %i.gq, 2048
  %.not14.i125 = icmp eq i32 %i.gr, 0
  br i1 %.not14.i125, label %gmac_write_rx_desc.exit127, label %bb.bf, !prof !7

bb.bf:                                            ; preds = %bb.be
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.gmac_write_rx_desc, i64 noundef range(i64 0, 4294967296) %i.gn) #7
  br label %gmac_write_rx_desc.exit127

gmac_write_rx_desc.exit127:                       ; preds = %trace_npcm_gmac_packet_received.exit, %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %i.gs = load i32, ptr %i.be, align 4
  %i.gt = zext i32 %i.gs to i64                   ; 2 uses
  %i.gu = and i64 %i.gt, 33554432
  %.not72 = icmp eq i64 %i.gu, 0
  br i1 %.not72, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %gmac_write_rx_desc.exit127
  %i.gv = load i32, ptr %i.bs, align 4
  br label %bb.bk

bb.bh:                                            ; preds = %gmac_write_rx_desc.exit127
  %i.gw = and i64 %i.gt, 16777216
  %.not73 = icmp eq i64 %i.gw, 0
  br i1 %.not73, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gx = load i32, ptr %i.bi, align 4
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.gy = add i32 %.2197, 16
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %bb.bg
  %.3 = phi i32 [ %i.gv, %bb.bg ], [ %i.gx, %bb.bi ], [ %i.gy, %bb.bj ]
  store i32 %.3, ptr %i.u, align 4
  br label %bb.bl

bb.bl:                                            ; preds = %gmac_can_receive.exit.thread, %bb.e, %bb.bk, %.thread192, %bb.q, %.thread
  %.068 = phi i64 [ -1, %.thread ], [ %2, %.thread192 ], [ %2, %bb.bk ], [ %2, %bb.q ], [ -1, %bb.e ], [ -1, %gmac_can_receive.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret i64 %.068
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @gmac_can_receive(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @qemu_get_nic_opaque(ptr noundef %0) #7
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 172, ptr noundef nonnull @__func__.NPCM_GMAC) #7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 9320
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 13440
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 2
  %.not4 = icmp ne i32 %i.h, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %.not4, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal void @gmac_cleanup(ptr nofree readnone captures(none) %0) #5 {
bb.a:
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gmac_set_link(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @qemu_get_nic_opaque(ptr noundef %0) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 4 uses
  %.not = icmp eq i32 %i.c, 0
  %i.d = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %trace_npcm_gmac_set_link.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr @_TRACE_NPCM_GMAC_SET_LINK_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.e, 0
  br i1 %.not1.i, label %trace_npcm_gmac_set_link.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 32768
  %.not2.i = icmp eq i32 %i.g, 0
  br i1 %.not2.i, label %trace_npcm_gmac_set_link.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = zext i1 %.not to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.39, i32 noundef %i.h) #7
  %.pre = load i32, ptr %i.b, align 8
  br label %trace_npcm_gmac_set_link.exit

trace_npcm_gmac_set_link.exit:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.i = phi i32 [ %i.c, %bb.a ], [ %i.c, %bb.b ], [ %i.c, %bb.c ], [ %.pre, %bb.d ]
  %.not4 = icmp eq i32 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 13514 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2
  %i.l = and i16 %i.k, -37
  %masksel.i = select i1 %.not4, i16 36, i16 0
  %.sink.i = or disjoint i16 %i.l, %masksel.i
  store i16 %.sink.i, ptr %i.j, align 2
  ret void
}

declare ptr @qemu_get_nic_opaque(ptr noundef) local_unnamed_addr #1

declare void @qemu_del_nic(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{!"auto-init"}
!9 = !{i64 2152518632}
!10 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
end_hunk_1
