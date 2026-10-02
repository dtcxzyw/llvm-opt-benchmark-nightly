Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/npcm7xx_emc?download=true
inline.NumInlined: 122
inline.NumDeleted: 40
begin_hunk_0

@.str = private unnamed_addr constant [12 x i8] c"npcm7xx-emc\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"sys-bus-device\00", align 1
@npcm7xx_emc_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i64 9568, i64 0, ptr null, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @npcm7xx_emc_class_init, ptr null, ptr null, ptr null }, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"NPCM7xx EMC Controller\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/qdev.h\00", align 1
@__func__.DEVICE_CLASS = private unnamed_addr constant [13 x i8] c"DEVICE_CLASS\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"/opt-bench/work/qemu/qemu/include/hw/net/npcm7xx_emc.h\00", align 1
@__func__.NPCM7XX_EMC = private unnamed_addr constant [12 x i8] c"NPCM7XX_EMC\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/sysbus.h\00", align 1
@__func__.SYS_BUS_DEVICE = private unnamed_addr constant [15 x i8] c"SYS_BUS_DEVICE\00", align 1
@npcm7xx_emc_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], { i32, i32, i8, [7 x i8], ptr }, %struct.anon.6, [4 x i8] } { ptr @npcm7xx_emc_read, ptr @npcm7xx_emc_write, ptr null, ptr null, i32 2, [4 x i8] zeroinitializer, { i32, i32, i8, [7 x i8], ptr } { i32 4, i32 4, i8 0, [7 x i8] zeroinitializer, ptr null }, %struct.anon.6 zeroinitializer, [4 x i8] zeroinitializer }, align 8
@.str.9 = private unnamed_addr constant [28 x i8] c"%s: Invalid offset 0x%04lx\0A\00", align 1
@__func__.npcm7xx_emc_read = private unnamed_addr constant [17 x i8] c"npcm7xx_emc_read\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%s: Read of MIID, returning 0\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"%s: Read of write-only reg, %s/%d\0A\00", align 1
@qemu_loglevel = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"CAMCMR\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"CAMEN\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"TXDLSA\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"RXDLSA\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"MCMDR\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"MIID\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"MIIDA\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"FFTCR\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"TSDR\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"RSDR\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"DMARFC\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"MIEN\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"MISTA\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"MGSTA\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"MPCNT\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"MRPC\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"MRPCC\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"MREPC\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"DMARFS\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"CTXDSA\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"CTXBSA\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"CRXDSA\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"CRXBSA\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"CAM0M\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"CAM0L\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"CAM<n>L\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"CAM<n>M\00", align 1
@trace_events_enabled_count = external local_unnamed_addr global i32, align 4
@_TRACE_NPCM7XX_EMC_REG_READ_DSTATE = external local_unnamed_addr global i16, align 2
@.str.40 = private unnamed_addr constant [47 x i8] c"npcm7xx_emc_reg_read emc%d: 0x%x = reg[%s/%d]\0A\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"../hw/net/npcm7xx_emc.c\00", align 1
@__func__.npcm7xx_emc_write = private unnamed_addr constant [18 x i8] c"npcm7xx_emc_write\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"size == sizeof(uint32_t)\00", align 1
@.str.43 = private unnamed_addr constant [56 x i8] c"%s: Only CAM0 is supported, cannot enable others: 0x%x\0A\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c"%s: Write to read-only reg %s/%d\0A\00", align 1
@.str.45 = private unnamed_addr constant [38 x i8] c"%s: Write to unimplemented reg %s/%d\0A\00", align 1
@_TRACE_NPCM7XX_EMC_REG_WRITE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.46 = private unnamed_addr constant [48 x i8] c"npcm7xx_emc_reg_write emc%d: reg[%s/%d] = 0x%x\0A\00", align 1
@_TRACE_NPCM7XX_EMC_RESET_DSTATE = external local_unnamed_addr global i16, align 2
@.str.47 = private unnamed_addr constant [35 x i8] c"npcm7xx_emc_reset Resetting emc%d\0A\00", align 1
@_TRACE_NPCM7XX_EMC_SET_MISTA_DSTATE = external local_unnamed_addr global i16, align 2
@.str.48 = private unnamed_addr constant [45 x i8] c"npcm7xx_emc_set_mista ORing 0x%x into MISTA\0A\00", align 1
@_TRACE_NPCM7XX_EMC_UPDATE_TX_IRQ_DSTATE = external local_unnamed_addr global i16, align 2
@.str.51 = private unnamed_addr constant [48 x i8] c"npcm7xx_emc_update_tx_irq Setting tx irq to %d\0A\00", align 1
@_TRACE_NPCM7XX_EMC_UPDATE_RX_IRQ_DSTATE = external local_unnamed_addr global i16, align 2
@.str.52 = private unnamed_addr constant [48 x i8] c"npcm7xx_emc_update_rx_irq Setting rx irq to %d\0A\00", align 1
@address_space_memory = external global %struct.AddressSpace, align 8
@.str.53 = private unnamed_addr constant [34 x i8] c"%s: Failed to read packet @ 0x%x\0A\00", align 1
@__func__.emc_try_send_next_packet = private unnamed_addr constant [25 x i8] c"emc_try_send_next_packet\00", align 1
@.str.54 = private unnamed_addr constant [39 x i8] c"%s: Failed to read descriptor @ 0x%lx\0A\00", align 1
@__func__.emc_read_tx_desc = private unnamed_addr constant [17 x i8] c"emc_read_tx_desc\00", align 1
@_TRACE_NPCM7XX_EMC_CPU_OWNED_DESC_DSTATE = external local_unnamed_addr global i16, align 2
@.str.55 = private unnamed_addr constant [69 x i8] c"npcm7xx_emc_cpu_owned_desc Can't process cpu-owned descriptor @0x%x\0A\00", align 1
@.str.56 = private unnamed_addr constant [40 x i8] c"%s: Failed to write descriptor @ 0x%lx\0A\00", align 1
@__func__.emc_write_tx_desc = private unnamed_addr constant [18 x i8] c"emc_write_tx_desc\00", align 1
@_TRACE_NPCM7XX_EMC_TX_DONE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.57 = private unnamed_addr constant [42 x i8] c"npcm7xx_emc_tx_done TX done, CTXDSA=0x%x\0A\00", align 1
@_TRACE_NPCM7XX_EMC_SENT_PACKET_DSTATE = external local_unnamed_addr global i16, align 2
@.str.58 = private unnamed_addr constant [45 x i8] c"npcm7xx_emc_sent_packet Sent %u byte packet\0A\00", align 1
@net_npcm7xx_emc_info = internal global { i32, [4 x i8], i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 1, [4 x i8] zeroinitializer, i64 40, ptr @emc_receive, ptr null, ptr @emc_can_receive, ptr null, ptr null, ptr null, ptr @emc_cleanup, ptr @emc_set_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.60 = private unnamed_addr constant [23 x i8] c"%s: Unexpected packet\0A\00", align 1
@__func__.emc_receive = private unnamed_addr constant [12 x i8] c"emc_receive\00", align 1
@.str.61 = private unnamed_addr constant [31 x i8] c"%s: Dropped frame of %u bytes\0A\00", align 1
@.str.62 = private unnamed_addr constant [30 x i8] c"%s: Bus error writing packet\0A\00", align 1
@_TRACE_NPCM7XX_EMC_RECEIVING_PACKET_DSTATE = external local_unnamed_addr global i16, align 2
@.str.63 = private unnamed_addr constant [55 x i8] c"npcm7xx_emc_receiving_packet Receiving %u byte packet\0A\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"Broadcast packet disabled\00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"Multicast packet disabled\00", align 1
@.str.66 = private unnamed_addr constant [41 x i8] c"MACADDR matched, comparison complemented\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"MACADDR didn't match\00", align 1
@_TRACE_NPCM7XX_EMC_PACKET_FILTERED_OUT_DSTATE = external local_unnamed_addr global i16, align 2
@.str.68 = private unnamed_addr constant [57 x i8] c"npcm7xx_emc_packet_filtered_out Packet filtered out: %s\0A\00", align 1
@_TRACE_NPCM7XX_EMC_PACKET_DROPPED_DSTATE = external local_unnamed_addr global i16, align 2
@.str.69 = private unnamed_addr constant [51 x i8] c"npcm7xx_emc_packet_dropped %u byte packet dropped\0A\00", align 1
@__func__.emc_read_rx_desc = private unnamed_addr constant [17 x i8] c"emc_read_rx_desc\00", align 1
@__func__.emc_write_rx_desc = private unnamed_addr constant [18 x i8] c"emc_write_rx_desc\00", align 1
@_TRACE_NPCM7XX_EMC_RX_DONE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.70 = private unnamed_addr constant [42 x i8] c"npcm7xx_emc_rx_done RX done, CRXDSA=0x%x\0A\00", align 1
@_TRACE_NPCM7XX_EMC_RECEIVED_PACKET_DSTATE = external local_unnamed_addr global i16, align 2
@.str.71 = private unnamed_addr constant [53 x i8] c"npcm7xx_emc_received_packet Received %u byte packet\0A\00", align 1
@_TRACE_NPCM7XX_EMC_CAN_RECEIVE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.72 = private unnamed_addr constant [41 x i8] c"npcm7xx_emc_can_receive Can receive: %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"emc_num\00", align 1
@vmstate_info_uint8 = external constant %struct.VMStateInfo, align 8
@.str.74 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@vmstate_info_uint32 = external constant %struct.VMStateInfo, align 8
@.str.75 = private unnamed_addr constant [10 x i8] c"tx_active\00", align 1
@vmstate_info_bool = external constant %struct.VMStateInfo, align 8
@.str.76 = private unnamed_addr constant [10 x i8] c"rx_active\00", align 1
@.compoundliteral = internal constant [5 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.73, i64 9328, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.74, i64 9332, i64 4, i64 0, i64 0, i32 55, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 4, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.75, i64 9552, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_bool, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.76, i64 9553, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_bool, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@vmstate_npcm7xx_emc = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral, ptr null }, align 8
@.str.78 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@qdev_prop_macaddr = external constant %struct.PropertyInfo, align 8
@.str.79 = private unnamed_addr constant [7 x i8] c"netdev\00", align 1
@qdev_prop_netdev = external constant %struct.PropertyInfo, align 8
@npcm7xx_emc_properties = internal constant [2 x { ptr, ptr, i64, ptr, i64, %union.anon, ptr, i32, i32, i8, i8, [6 x i8] }] [{ ptr, ptr, i64, ptr, i64, %union.anon, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.78, ptr @qdev_prop_macaddr, i64 1112, ptr null, i64 0, %union.anon zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 0, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.79, ptr @qdev_prop_netdev, i64 1120, ptr null, i64 0, %union.anon zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 0, [6 x i8] zeroinitializer }], align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_npcm7xx_emc_register_type, ptr null }]
@switch.table.emc_reg_name = private unnamed_addr constant [55 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.37, ptr @.str.38, ptr @.str.37, ptr @.str.38, ptr @.str.37, ptr @.str.38, ptr @.str.37, ptr @.str.38, ptr @.str.37, ptr @.str.38, ptr @.str.37, ptr @.str.38, ptr @.str.37, ptr @.str.38, ptr @.str.37, ptr @.str.38, ptr @.str.37, ptr @.str.38, ptr @.str.37, ptr @.str.38, ptr @.str.37, ptr @.str.38, ptr @.str.37, ptr @.str.38, ptr @.str.37, ptr @.str.38, ptr @.str.37, ptr @.str.38, ptr @.str.37, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], align 8

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_npcm7xx_emc_register_type() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @npcm7xx_emc_register_type, i32 noundef 4) #9
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @npcm7xx_emc_register_type() #0 {
bb.a:
  %i.a = tail call ptr @type_register_static(ptr noundef nonnull @npcm7xx_emc_info) #9 ; 0 uses
  ret void
}

declare ptr @type_register_static(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @npcm7xx_emc_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #9 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 8
  store i64 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr @.str.3, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr @npcm7xx_emc_realize, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr @npcm7xx_emc_unrealize, ptr %i.g, align 8
  tail call void @device_class_set_legacy_reset(ptr noundef %i.a, ptr noundef nonnull @npcm7xx_emc_reset) #9
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr @vmstate_npcm7xx_emc, ptr %i.h, align 8
  tail call void @device_class_set_props_n(ptr noundef %i.a, ptr noundef nonnull @npcm7xx_emc_properties, i64 noundef 2) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @npcm7xx_emc_realize(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 281, ptr noundef nonnull @__func__.NPCM7XX_EMC) #9 ; 9 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #9 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 816 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.c, ptr noundef %i.a, ptr noundef nonnull @npcm7xx_emc_ops, ptr noundef %i.a, ptr noundef nonnull @.str, i64 noundef 4096) #9
  tail call void @sysbus_init_mmio(ptr noundef %i.b, ptr noundef nonnull %i.c) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  tail call void @sysbus_init_irq(ptr noundef %i.b, ptr noundef nonnull %i.d) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  tail call void @sysbus_init_irq(ptr noundef %i.b, ptr noundef nonnull %i.e) #9
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1112 ; 3 uses
  tail call void @qemu_macaddr_default_if_unset(ptr noundef nonnull %i.f) #9
  %i.g = tail call ptr @object_get_typename(ptr noundef %0) #9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = tail call ptr @qemu_new_nic(ptr noundef nonnull @net_npcm7xx_emc_info, ptr noundef nonnull %i.f, ptr noundef %i.g, ptr noundef %i.i, ptr noundef nonnull %i.j, ptr noundef %i.a) #9 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  store ptr %i.k, ptr %i.l, align 16
  %i.m = tail call ptr @qemu_get_queue(ptr noundef %i.k) #9
  tail call void @qemu_format_nic_info_str(ptr noundef %i.m, ptr noundef nonnull %i.f) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @npcm7xx_emc_unrealize(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 281, ptr noundef nonnull @__func__.NPCM7XX_EMC) #9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  %i.c = load ptr, ptr %i.b, align 16
  tail call void @qemu_del_nic(ptr noundef %i.c) #9
  ret void
}

declare void @device_class_set_legacy_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @npcm7xx_emc_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 281, ptr noundef nonnull @__func__.NPCM7XX_EMC) #9 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9328
  %i.c = load i8, ptr %i.b, align 16
  %i.d = zext i8 %i.c to i32
  %i.e = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %emc_reset.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr @_TRACE_NPCM7XX_EMC_RESET_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.f, 0
  br i1 %.not1.i.i, label %emc_reset.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @qemu_loglevel, align 4
  %i.h = and i32 %i.g, 32768
  %.not2.i.i = icmp eq i32 %i.h, 0
  br i1 %.not2.i.i, label %emc_reset.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.47, i32 noundef range(i32 0, 256) %i.d) #9
  br label %emc_reset.exit

emc_reset.exit:                                   ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9332
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(220) %i.i, i8 noundef 0, i64 noundef 220, i1 noundef false) #9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 9468
  store i32 -4, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 9472
  store i32 -4, ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 9484
  store i32 9437184, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 9488
  store i32 257, ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 9500
  store i32 2048, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 9516
  store i32 32767, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 9552
  store i8 0, ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 9553
  store i8 0, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1112
  %1 = load i32, ptr %i.r, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 9340
  store i32 %2, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1116
  %i.u = load i8, ptr %i.t, align 4
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw i32 %i.v, 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1117
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 16
  %i.ab = or disjoint i32 %i.aa, %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 9344
  store i32 %i.ab, ptr %i.ac, align 16
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

declare ptr @object_get_typename(ptr noundef) local_unnamed_addr #1

declare void @qemu_format_nic_info_str(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qemu_get_queue(ptr noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @npcm7xx_emc_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 %2) #0 {
bb.a:
  %i.a = lshr i64 %1, 2                           ; 2 uses
  %i.b = trunc i64 %i.a to i32                    ; 6 uses
  %i.c = icmp ugt i32 %i.b, 54
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @qemu_loglevel, align 4
  %i.e = and i32 %i.d, 2048
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %bb.n, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.npcm7xx_emc_read, i64 noundef %1) #9
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  switch i32 %i.b, label %bb.i [
    i32 37, label %bb.e
    i32 40, label %bb.g
    i32 41, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 1024
  %.not16 = icmp eq i32 %i.g, 0
  br i1 %.not16, label %bb.j, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.npcm7xx_emc_read) #9
  br label %bb.j

bb.g:                                             ; preds = %bb.d, %bb.d
  %i.h = load i32, ptr @qemu_loglevel, align 4
  %i.i = and i32 %i.h, 2048
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.n, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.j = tail call fastcc ptr @emc_reg_name(i32 noundef %i.b)
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.npcm7xx_emc_read, ptr noundef nonnull %i.j, i32 noundef %i.b) #9
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9332
  %i.l = and i64 %i.a, 63
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.f, %bb.i
  %.0 = phi i32 [ %i.n, %bb.i ], [ 0, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9328
  %i.p = load i8, ptr %i.o, align 16
  %i.q = zext i8 %i.p to i32
  %i.r = tail call fastcc ptr @emc_reg_name(i32 noundef %i.b)
  %i.s = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %trace_npcm7xx_emc_reg_read.exit, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.t = load i16, ptr @_TRACE_NPCM7XX_EMC_REG_READ_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.t, 0
  br i1 %.not3.i, label %trace_npcm7xx_emc_reg_read.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = load i32, ptr @qemu_loglevel, align 4
  %i.v = and i32 %i.u, 32768
  %.not4.i = icmp eq i32 %i.v, 0
  br i1 %.not4.i, label %trace_npcm7xx_emc_reg_read.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.40, i32 noundef range(i32 0, 256) %i.q, i32 noundef %.0, ptr noundef nonnull %i.r, i32 noundef range(i32 0, 55) %i.b) #9
  br label %trace_npcm7xx_emc_reg_read.exit

trace_npcm7xx_emc_reg_read.exit:                  ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %i.w = zext i32 %.0 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.h, %bb.b, %bb.c, %trace_npcm7xx_emc_reg_read.exit
  %.014 = phi i64 [ 0, %bb.b ], [ %i.w, %trace_npcm7xx_emc_reg_read.exit ], [ 0, %bb.c ], [ 0, %bb.h ], [ 0, %bb.g ]
  ret i64 %.014
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @npcm7xx_emc_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %4 = alloca %struct.NPCM7xxEMCTxDesc, align 4   ; 12 uses
  %i.b = lshr i64 %1, 2                           ; 11 uses
  %i.c = trunc i64 %i.b to i32                    ; 6 uses
  %i.d = trunc i64 %2 to i32                      ; 16 uses
  %.not = icmp eq i32 %3, 4
  br i1 %.not, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 660, ptr noundef nonnull @__func__.npcm7xx_emc_write, ptr noundef nonnull @.str.42) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ugt i32 %i.c, 54
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 2048
  %.not104 = icmp eq i32 %i.g, 0
  br i1 %.not104, label %.loopexit, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.npcm7xx_emc_write, i64 noundef %1) #9
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 9328
  %i.i = load i8, ptr %i.h, align 16
  %i.j = zext i8 %i.i to i32
  %i.k = tail call fastcc ptr @emc_reg_name(i32 noundef %i.c) ; 3 uses
  %i.l = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %trace_npcm7xx_emc_reg_write.exit, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.m = load i16, ptr @_TRACE_NPCM7XX_EMC_REG_WRITE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.m, 0
  br i1 %.not3.i, label %trace_npcm7xx_emc_reg_write.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = load i32, ptr @qemu_loglevel, align 4
  %i.o = and i32 %i.n, 32768
  %.not4.i = icmp eq i32 %i.o, 0
  br i1 %.not4.i, label %trace_npcm7xx_emc_reg_write.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.46, i32 noundef range(i32 0, 256) %i.j, ptr noundef nonnull %i.k, i32 noundef range(i32 0, 55) %i.c, i32 noundef %i.d) #9
  br label %trace_npcm7xx_emc_reg_write.exit

trace_npcm7xx_emc_reg_write.exit:                 ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  switch i32 %i.c, label %bb.cm [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.o
    i32 3, label %bb.p
    i32 36, label %bb.q
    i32 34, label %bb.ab
    i32 35, label %bb.ab
    i32 42, label %bb.ab
    i32 37, label %bb.ab
    i32 43, label %bb.ac
    i32 44, label %bb.ad
    i32 45, label %bb.ae
    i32 40, label %bb.af
    i32 41, label %bb.ch
    i32 38, label %bb.cj
    i32 47, label %bb.ck
    i32 48, label %bb.ck
    i32 49, label %bb.ck
    i32 51, label %bb.ck
end_hunk_0
begin_hunk_1_@npcm7xx_emc_write:bb.a
  br i1 %.not1.i.i78.i, label %emc_set_mista.exit83.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fy = load i32, ptr @qemu_loglevel, align 4
  %i.fz = and i32 %i.fy, 32768
  %.not2.i.i79.i = icmp eq i32 %i.fz, 0
  br i1 %.not2.i.i79.i, label %emc_set_mista.exit83.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.48, i32 noundef range(i32 0, 16777217) 262144) #9
  br label %emc_set_mista.exit83.i

emc_set_mista.exit83.i:                           ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.bu
  %i.ga = load i32, ptr %i.bv, align 4
  %i.gb = or i32 %i.ga, 262144                    ; 2 uses
  %i.gc = load i32, ptr %i.bw, align 16           ; 2 uses
  %i.gd = and i32 %i.gb, 25427968
  %i.ge = and i32 %i.gd, %i.gc
  %.not.i7.i80.i = icmp eq i32 %i.ge, 0
  %i.gf = and i32 %i.gb, -65537
  %masksel.i.i81.i = select i1 %.not.i7.i80.i, i32 0, i32 65536 ; 2 uses
  %storemerge.i.i82.i = or disjoint i32 %masksel.i.i81.i, %i.gf
  store i32 %storemerge.i.i82.i, ptr %i.bv, align 4
  br label %bb.by

bb.by:                                            ; preds = %emc_set_mista.exit83.i, %trace_npcm7xx_emc_sent_packet.exit._crit_edge.i
  %i.gg = phi i32 [ %.pre102.i, %trace_npcm7xx_emc_sent_packet.exit._crit_edge.i ], [ %i.gc, %emc_set_mista.exit83.i ]
  %i.gh = phi i32 [ %i.fv, %trace_npcm7xx_emc_sent_packet.exit._crit_edge.i ], [ %masksel.i.i81.i, %emc_set_mista.exit83.i ]
  %i.gi = and i32 %i.gh, %i.gg
  %.not49.i = icmp eq i32 %i.gi, 0
  br i1 %.not49.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.gj = load i32, ptr %i.by, align 4
  %i.gk = or i32 %i.gj, 65536
  store i32 %i.gk, ptr %i.by, align 4
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  call fastcc void @emc_set_next_tx_descriptor(ptr noundef nonnull %0, ptr noundef %4, i32 noundef %i.cd)
  %i.gl = load i32, ptr %i.bv, align 4
  %i.gm = load i32, ptr %i.bw, align 16
  %i.gn = and i32 %i.gm, %i.gl
  %i.go = lshr i32 %i.gn, 16
  %.lobit.i84.i = and i32 %i.go, 1                ; 2 uses
  %i.gp = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i85.i = icmp eq i32 %i.gp, 0
  br i1 %.not.i.i85.i, label %emc_update_tx_irq.exit88.i, label %bb.cb, !prof !7

bb.cb:                                            ; preds = %bb.ca
  %i.gq = load i16, ptr @_TRACE_NPCM7XX_EMC_UPDATE_TX_IRQ_DSTATE, align 2
  %.not1.i.i86.i = icmp eq i16 %i.gq, 0
  br i1 %.not1.i.i86.i, label %emc_update_tx_irq.exit88.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gr = load i32, ptr @qemu_loglevel, align 4
  %i.gs = and i32 %i.gr, 32768
  %.not2.i.i87.i = icmp eq i32 %i.gs, 0
  br i1 %.not2.i.i87.i, label %emc_update_tx_irq.exit88.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.51, i32 noundef range(i32 0, 2) %.lobit.i84.i) #9
  br label %emc_update_tx_irq.exit88.i

emc_update_tx_irq.exit88.i:                       ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.ca
  %i.gt = load ptr, ptr %i.bx, align 16
  call void @qemu_set_irq(ptr noundef %i.gt, i32 noundef %.lobit.i84.i) #9
  %i.gu = load i32, ptr %i.bu, align 16
  %i.gv = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i89.i = icmp eq i32 %i.gv, 0
  br i1 %.not.i89.i, label %emc_try_send_next_packet.exit, label %bb.ce, !prof !7

bb.ce:                                            ; preds = %emc_update_tx_irq.exit88.i
  %i.gw = load i16, ptr @_TRACE_NPCM7XX_EMC_TX_DONE_DSTATE, align 2
  %.not1.i90.i = icmp eq i16 %i.gw, 0
  br i1 %.not1.i90.i, label %emc_try_send_next_packet.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gx = load i32, ptr @qemu_loglevel, align 4
  %i.gy = and i32 %i.gx, 32768
  %.not2.i91.i = icmp eq i32 %i.gy, 0
  br i1 %.not2.i91.i, label %emc_try_send_next_packet.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.57, i32 noundef %i.gu) #9
  br label %emc_try_send_next_packet.exit

emc_try_send_next_packet.exit:                    ; preds = %emc_update_tx_irq.exit.i, %emc_update_tx_irq.exit62.i, %emc_update_tx_irq.exit70.i, %bb.bl, %bb.bm, %bb.bn, %emc_update_tx_irq.exit88.i, %bb.ce, %bb.cf, %bb.cg
  %.1.i = phi ptr [ null, %emc_update_tx_irq.exit62.i ], [ %.093.i, %bb.bn ], [ null, %emc_update_tx_irq.exit.i ], [ %.093.i, %emc_update_tx_irq.exit70.i ], [ %.093.i, %bb.bl ], [ %.093.i, %bb.bm ], [ %.093.i, %emc_update_tx_irq.exit88.i ], [ %.093.i, %bb.ce ], [ %.093.i, %bb.cf ], [ %.093.i, %bb.cg ]
  call void @g_free(ptr noundef %.1.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.gz = load i8, ptr %i.bt, align 16, !range !12, !noundef !13
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.ag, label %.loopexit, !llvm.loop !14

bb.ch:                                            ; preds = %trace_npcm7xx_emc_reg_write.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 9476
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = and i32 %i.hc, 1
  %.not80 = icmp eq i32 %i.hd, 0
  br i1 %.not80, label %.loopexit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  tail call fastcc void @emc_enable_rx_and_flush(ptr noundef nonnull %0)
  br label %.loopexit

bb.cj:                                            ; preds = %trace_npcm7xx_emc_reg_write.exit
  %i.he = and i32 %i.d, -131073
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 9332
  %i.hg = and i64 %i.b, 63
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.hg
  store i32 %i.he, ptr %i.hh, align 4
  br label %.loopexit

bb.ck:                                            ; preds = %trace_npcm7xx_emc_reg_write.exit, %trace_npcm7xx_emc_reg_write.exit, %trace_npcm7xx_emc_reg_write.exit, %trace_npcm7xx_emc_reg_write.exit, %trace_npcm7xx_emc_reg_write.exit, %trace_npcm7xx_emc_reg_write.exit, %trace_npcm7xx_emc_reg_write.exit
  %i.hi = load i32, ptr @qemu_loglevel, align 4
  %i.hj = and i32 %i.hi, 2048
  %.not101 = icmp eq i32 %i.hj, 0
  br i1 %.not101, label %.loopexit, label %bb.cl, !prof !7

bb.cl:                                            ; preds = %bb.ck
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.npcm7xx_emc_write, ptr noundef nonnull %i.k, i32 noundef %i.c) #9
  br label %.loopexit

bb.cm:                                            ; preds = %trace_npcm7xx_emc_reg_write.exit
  %i.hk = load i32, ptr @qemu_loglevel, align 4
  %i.hl = and i32 %i.hk, 1024
  %.not103 = icmp eq i32 %i.hl, 0
  br i1 %.not103, label %.loopexit, label %bb.cn, !prof !7

bb.cn:                                            ; preds = %bb.cm
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.npcm7xx_emc_write, ptr noundef nonnull %i.k, i32 noundef %i.c) #9
  br label %.loopexit

.loopexit:                                        ; preds = %emc_try_send_next_packet.exit, %bb.j, %bb.n, %bb.o, %bb.p, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.cj, %bb.af, %bb.ci, %bb.ch, %bb.cl, %bb.ck, %bb.cn, %bb.cm, %bb.z, %bb.aa, %bb.r, %bb.d, %bb.e
  ret void
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @emc_reg_name(i32 noundef range(i32 0, 55) %0) unnamed_addr #3 {
switch.lookup:
  %i.a = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.emc_reg_name, i64 %i.a
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @emc_soft_reset(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9476 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9328
  %i.d = load i8, ptr %i.c, align 16
  %i.e = zext i8 %i.d to i32
  %i.f = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %emc_reset.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.g = load i16, ptr @_TRACE_NPCM7XX_EMC_RESET_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.g, 0
  br i1 %.not1.i.i, label %emc_reset.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr @qemu_loglevel, align 4
  %i.i = and i32 %i.h, 32768
  %.not2.i.i = icmp eq i32 %i.i, 0
  br i1 %.not2.i.i, label %emc_reset.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.47, i32 noundef range(i32 0, 256) %i.e) #9
  br label %emc_reset.exit

emc_reset.exit:                                   ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9332
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(220) %i.j, i8 noundef 0, i64 noundef 220, i1 noundef false) #9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9468
  store i32 -4, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9472
  store i32 -4, ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9484
  store i32 9437184, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9488
  store i32 257, ptr %i.n, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9500
  store i32 2048, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 9516
  store i32 32767, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 9552
  store i8 0, ptr %i.q, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 9553
  store i8 0, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %1 = load i32, ptr %i.s, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 9340
  store i32 %2, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %i.v = load i8, ptr %i.u, align 4
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw i32 %i.w, 24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1117
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 16
  %i.ac = or disjoint i32 %i.ab, %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 9344
  store i32 %i.ac, ptr %i.ad, align 16
  %i.ae = and i32 %i.b, 3145728
  store i32 %i.ae, ptr %i.a, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ag = load ptr, ptr %i.af, align 16
  tail call void @qemu_set_irq(ptr noundef %i.ag, i32 noundef 0) #9
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void @qemu_set_irq(ptr noundef %i.ai, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @emc_halt_tx(ptr nofree noundef captures(none) initializes((9552, 9553)) %0, i32 noundef range(i32 0, 16777217) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9552
  store i8 0, ptr %i.a, align 16
  %i.b = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %trace_npcm7xx_emc_set_mista.exit.i, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr @_TRACE_NPCM7XX_EMC_SET_MISTA_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.c, 0
  br i1 %.not1.i.i, label %trace_npcm7xx_emc_set_mista.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @qemu_loglevel, align 4
  %i.e = and i32 %i.d, 32768
  %.not2.i.i = icmp eq i32 %i.e, 0
  br i1 %.not2.i.i, label %trace_npcm7xx_emc_set_mista.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.48, i32 noundef range(i32 0, 16777217) %1) #9
  br label %trace_npcm7xx_emc_set_mista.exit.i

trace_npcm7xx_emc_set_mista.exit.i:               ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9508 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = or i32 %i.g, %1                          ; 4 uses
  store i32 %i.h, ptr %i.f, align 4
  %.not.i = icmp samesign ult i32 %1, 65536
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %trace_npcm7xx_emc_set_mista.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9504
  %i.j = load i32, ptr %i.i, align 16
  %i.k = and i32 %i.h, 25427968
  %i.l = and i32 %i.k, %i.j
  %.not.i7.i = icmp eq i32 %i.l, 0
  %i.m = and i32 %i.h, -65537
  %masksel.i.i = select i1 %.not.i7.i, i32 0, i32 65536
  %storemerge.i.i = or disjoint i32 %masksel.i.i, %i.m ; 2 uses
  store i32 %storemerge.i.i, ptr %i.f, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %trace_npcm7xx_emc_set_mista.exit.i
  %i.n = phi i32 [ %storemerge.i.i, %bb.e ], [ %i.h, %trace_npcm7xx_emc_set_mista.exit.i ] ; 2 uses
  %i.o = and i32 %1, 65535
  %.not6.i = icmp eq i32 %i.o, 0
  br i1 %.not6.i, label %emc_set_mista.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 9504
  %i.q = load i32, ptr %i.p, align 16
  %i.r = and i32 %i.n, 3088
  %i.s = and i32 %i.r, %i.q
  %.not.i8.i = icmp ne i32 %i.s, 0
  %i.t = and i32 %i.n, -2
  %masksel.i9.i = zext i1 %.not.i8.i to i32
  %storemerge.i10.i = or disjoint i32 %i.t, %masksel.i9.i
  store i32 %storemerge.i10.i, ptr %i.f, align 4
  br label %emc_set_mista.exit

emc_set_mista.exit:                               ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @emc_enable_rx_and_flush(ptr nofree noundef captures(none) initializes((9553, 9554)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9553
  store i8 1, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.c = load ptr, ptr %i.b, align 16
  %i.d = tail call ptr @qemu_get_queue(ptr noundef %i.c) #9
  tail call void @qemu_flush_queued_packets(ptr noundef %i.d) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @emc_halt_rx(ptr nofree noundef captures(none) initializes((9553, 9554)) %0, i32 noundef range(i32 0, 2049) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9553
  store i8 0, ptr %i.a, align 1
  %i.b = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %trace_npcm7xx_emc_set_mista.exit.i, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr @_TRACE_NPCM7XX_EMC_SET_MISTA_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.c, 0
  br i1 %.not1.i.i, label %trace_npcm7xx_emc_set_mista.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @qemu_loglevel, align 4
  %i.e = and i32 %i.d, 32768
  %.not2.i.i = icmp eq i32 %i.e, 0
  br i1 %.not2.i.i, label %trace_npcm7xx_emc_set_mista.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.48, i32 noundef range(i32 0, 16777217) %1) #9
  br label %trace_npcm7xx_emc_set_mista.exit.i

trace_npcm7xx_emc_set_mista.exit.i:               ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9508 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = or i32 %i.g, %1                          ; 3 uses
  store i32 %i.h, ptr %i.f, align 4
  %.not6.i = icmp eq i32 %1, 0
  br i1 %.not6.i, label %emc_set_mista.exit, label %bb.e

bb.e:                                             ; preds = %trace_npcm7xx_emc_set_mista.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9504
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.h, 3088
  %i.l = and i32 %i.k, %i.j
  %.not.i8.i = icmp ne i32 %i.l, 0
  %i.m = and i32 %i.h, -2
  %masksel.i9.i = zext i1 %.not.i8.i to i32
  %storemerge.i10.i = or disjoint i32 %i.m, %masksel.i9.i
  store i32 %storemerge.i10.i, ptr %i.f, align 4
  br label %emc_set_mista.exit

emc_set_mista.exit:                               ; preds = %trace_npcm7xx_emc_set_mista.exit.i, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @emc_update_irq_from_reg_change(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9508 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9504 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = and i32 %i.b, 25427968
  %i.f = and i32 %i.e, %i.d
  %.not.i = icmp eq i32 %i.f, 0
  %i.g = and i32 %i.b, -65537
  %masksel.i = select i1 %.not.i, i32 0, i32 65536 ; 2 uses
  %storemerge.i = or disjoint i32 %masksel.i, %i.g
  store i32 %storemerge.i, ptr %i.a, align 4
  %i.h = and i32 %masksel.i, %i.d
  %i.i = lshr exact i32 %i.h, 16                  ; 2 uses
  %i.j = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %emc_update_tx_irq.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.k = load i16, ptr @_TRACE_NPCM7XX_EMC_UPDATE_TX_IRQ_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.k, 0
  br i1 %.not1.i.i, label %emc_update_tx_irq.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr @qemu_loglevel, align 4
  %i.m = and i32 %i.l, 32768
  %.not2.i.i = icmp eq i32 %i.m, 0
  br i1 %.not2.i.i, label %emc_update_tx_irq.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.51, i32 noundef range(i32 0, 2) %i.i) #9
  br label %emc_update_tx_irq.exit

emc_update_tx_irq.exit:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.o = load ptr, ptr %i.n, align 16
  tail call void @qemu_set_irq(ptr noundef %i.o, i32 noundef %i.i) #9
  %i.p = load i32, ptr %i.a, align 4              ; 2 uses
  %i.q = load i32, ptr %i.c, align 16             ; 2 uses
  %i.r = and i32 %i.p, 3088
  %i.s = and i32 %i.r, %i.q
  %.not.i4 = icmp ne i32 %i.s, 0
  %i.t = and i32 %i.p, -2
  %masksel.i5 = zext i1 %.not.i4 to i32           ; 2 uses
  %storemerge.i6 = or disjoint i32 %i.t, %masksel.i5
  store i32 %storemerge.i6, ptr %i.a, align 4
  %i.u = and i32 %i.q, %masksel.i5                ; 2 uses
  %i.v = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i7 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i7, label %emc_update_rx_irq.exit, label %bb.e, !prof !7
end_hunk_1
