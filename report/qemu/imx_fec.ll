Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/imx_fec?download=true
inline.NumInlined: 113
inline.NumDeleted: 45
begin_hunk_0
@.str.3 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/hw/net/imx_fec.h\00", align 1
@__func__.IMX_FEC = private unnamed_addr constant [8 x i8] c"IMX_FEC\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"i.MX FEC/ENET Ethernet Controller\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/qdev.h\00", align 1
@__func__.DEVICE_CLASS = private unnamed_addr constant [13 x i8] c"DEVICE_CLASS\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@vmstate_info_uint32 = external constant %struct.VMStateInfo, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"rx_descriptor\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"tx_descriptor[0]\00", align 1
@.compoundliteral = internal constant [4 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.7, i64 9328, i64 4, i64 0, i64 0, i32 400, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 4, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.8, i64 10928, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.9, i64 10932, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@.compoundliteral.10 = internal constant [2 x ptr] [ptr @vmstate_imx_eth_txdescs, ptr null], align 8
@vmstate_imx_eth = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, i8 0, i8 0, [2 x i8] zeroinitializer, i32 3, i32 3, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral, ptr @.compoundliteral.10 }, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"imx.fec/txdescs\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"tx_descriptor[1]\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"tx_descriptor[2]\00", align 1
@.compoundliteral.15 = internal constant [3 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.13, i64 10936, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.14, i64 10940, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@vmstate_imx_eth_txdescs = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.12, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_eth_is_multi_tx_ring, ptr null, ptr @.compoundliteral.15, ptr null }, align 8
@.str.17 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@qdev_prop_macaddr = external constant %struct.PropertyInfo, align 8
@.str.18 = private unnamed_addr constant [7 x i8] c"netdev\00", align 1
@qdev_prop_netdev = external constant %struct.PropertyInfo, align 8
@.str.19 = private unnamed_addr constant [12 x i8] c"tx-ring-num\00", align 1
@qdev_prop_uint32 = external constant %struct.PropertyInfo, align 8
@.str.20 = private unnamed_addr constant [8 x i8] c"phy-num\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"phy-connected\00", align 1
@qdev_prop_bool = external constant %struct.PropertyInfo, align 8
@.str.22 = private unnamed_addr constant [13 x i8] c"phy-consumer\00", align 1
@qdev_prop_link = external constant %struct.PropertyInfo, align 8
@imx_eth_properties = internal constant [6 x { ptr, ptr, i64, ptr, i64, %union.anon.4, ptr, i32, i32, i8, i8, [6 x i8] }] [{ ptr, ptr, i64, ptr, i64, %union.anon.4, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.17, ptr @qdev_prop_macaddr, i64 816, ptr null, i64 0, %union.anon.4 zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 0, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon.4, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.18, ptr @qdev_prop_netdev, i64 824, ptr null, i64 0, %union.anon.4 zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 0, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon.4, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.19, ptr @qdev_prop_uint32, i64 10944, ptr null, i64 0, %union.anon.4 { i64 1 }, ptr null, i32 0, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon.4, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.20, ptr @qdev_prop_uint32, i64 11864, ptr null, i64 0, %union.anon.4 zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon.4, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.21, ptr @qdev_prop_bool, i64 11868, ptr null, i64 0, %union.anon.4 { i64 1 }, ptr null, i32 0, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon.4, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.22, ptr @qdev_prop_link, i64 11872, ptr @.str, i64 0, %union.anon.4 zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 0, [6 x i8] zeroinitializer }], align 16
@.str.24 = private unnamed_addr constant [4 x i8] c"mii\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"lan9118-phy\00", align 1
@.str.26 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/sysbus.h\00", align 1
@__func__.SYS_BUS_DEVICE = private unnamed_addr constant [15 x i8] c"SYS_BUS_DEVICE\00", align 1
@imx_eth_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], { i32, i32, i8, [7 x i8], ptr }, %struct.anon.6, [4 x i8] } { ptr @imx_eth_read, ptr @imx_eth_write, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, { i32, i32, i8, [7 x i8], ptr } { i32 4, i32 4, i8 0, [7 x i8] zeroinitializer, ptr null }, %struct.anon.6 zeroinitializer, [4 x i8] zeroinitializer }, align 8
@.str.28 = private unnamed_addr constant [37 x i8] c"[%s]%s: Bad register at offset 0x%x\0A\00", align 1
@__func__.imx_default_read = private unnamed_addr constant [17 x i8] c"imx_default_read\00", align 1
@qemu_loglevel = external local_unnamed_addr global i32, align 4
@trace_events_enabled_count = external local_unnamed_addr global i32, align 4
@_TRACE_IMX_ETH_READ_DSTATE = external local_unnamed_addr global i16, align 2
@.str.29 = private unnamed_addr constant [35 x i8] c"imx_eth_read reg[%d:%s] => 0x%08x\0A\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"EIR\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"EIMR\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"RDAR\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"TDAR\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"ECR\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"MMFR\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"MSCR\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"MIBC\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"RCR\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"TCR\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"PALR\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"PAUR\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"OPD\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"IAUR\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"IALR\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"GAUR\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"GALR\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"TFWR\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"RDSR\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"TDSR\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"MRBR\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"FRBR\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"FRSR\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"MIIGSK_CFGR\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"MIIGSK_ENR\00", align 1
@imx_default_reg_name.tmp = internal global [20 x i8] zeroinitializer, align 16
@.str.55 = private unnamed_addr constant [9 x i8] c"index %d\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"RSFL\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"RSEM\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"RAEM\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"RAFL\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"TSEM\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"TAEM\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"TAFL\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"TIPG\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"FTRL\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"TACC\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"RACC\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"ATCR\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"ATVR\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"ATOFF\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"ATPER\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"ATCOR\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"ATINC\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"ATSTMP\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"TGSR\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"TCSR0\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"TCCR0\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"TCSR1\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"TCCR1\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"TCSR2\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"TCCR2\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"TCSR3\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"TCCR3\00", align 1
@.str.83 = private unnamed_addr constant [41 x i8] c"[%s]%s: trying to access TDAR2 or TDAR1\0A\00", align 1
@__func__.imx_eth_write = private unnamed_addr constant [14 x i8] c"imx_eth_write\00", align 1
@.str.84 = private unnamed_addr constant [32 x i8] c"[%s]%s: trying to access TDSR1\0A\00", align 1
@.str.85 = private unnamed_addr constant [32 x i8] c"[%s]%s: trying to access TDSR2\0A\00", align 1
@_TRACE_IMX_ETH_WRITE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.86 = private unnamed_addr constant [37 x i8] c"imx_eth_write reg[%d:%s] <= 0x%08lx\0A\00", align 1
@address_space_memory = external global %struct.AddressSpace, align 8
@_TRACE_IMX_FEC_READ_BD_DSTATE = external local_unnamed_addr global i16, align 2
@.str.87 = private unnamed_addr constant [61 x i8] c"imx_fec_read_bd tx_bd 0x%lx flags 0x%04x len %d data 0x%08x\0A\00", align 1
@_TRACE_IMX_ETH_RX_BD_FULL_DSTATE = external local_unnamed_addr global i16, align 2
@.str.88 = private unnamed_addr constant [38 x i8] c"imx_eth_rx_bd_full RX buffer is full\0A\00", align 1
@.str.89 = private unnamed_addr constant [30 x i8] c"%s: bogus value for index %x\0A\00", align 1
@__func__.imx_enet_do_tx = private unnamed_addr constant [15 x i8] c"imx_enet_do_tx\00", align 1
@_TRACE_IMX_ENET_READ_BD_DSTATE = external local_unnamed_addr global i16, align 2
@.str.90 = private unnamed_addr constant [90 x i8] c"imx_enet_read_bd tx_bd 0x%lx flags 0x%04x len %d data 0x%08x option 0x%04x status 0x%04x\0A\00", align 1
@_TRACE_IMX_ETH_TX_BD_BUSY_DSTATE = external local_unnamed_addr global i16, align 2
@.str.91 = private unnamed_addr constant [61 x i8] c"imx_eth_tx_bd_busy tx_bd ran out of descriptors to transmit\0A\00", align 1
@_TRACE_IMX_PHY_READ_NUM_DSTATE = external local_unnamed_addr global i16, align 2
@.str.94 = private unnamed_addr constant [72 x i8] c"imx_phy_read_num read request from unconfigured phy %d (configured %d)\0A\00", align 1
@_TRACE_IMX_PHY_WRITE_NUM_DSTATE = external local_unnamed_addr global i16, align 2
@.str.95 = private unnamed_addr constant [72 x i8] c"imx_phy_write_num write request to unconfigured phy %d (configured %d)\0A\00", align 1
@.str.96 = private unnamed_addr constant [36 x i8] c"[%s]%s: Register FRBR is read only\0A\00", align 1
@__func__.imx_fec_write = private unnamed_addr constant [14 x i8] c"imx_fec_write\00", align 1
@.str.97 = private unnamed_addr constant [36 x i8] c"[%s]%s: Bad address at offset 0x%x\0A\00", align 1
@__func__.imx_default_write = private unnamed_addr constant [18 x i8] c"imx_default_write\00", align 1
@.str.98 = private unnamed_addr constant [38 x i8] c"[%s]%s: Register ATSTMP is read only\0A\00", align 1
@__func__.imx_enet_write = private unnamed_addr constant [15 x i8] c"imx_enet_write\00", align 1
@__func__.DEVICE = private unnamed_addr constant [7 x i8] c"DEVICE\00", align 1
@imx_eth_net_info = internal global { i32, [4 x i8], i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 1, [4 x i8] zeroinitializer, i64 40, ptr @imx_eth_receive, ptr null, ptr @imx_eth_can_receive, ptr null, ptr null, ptr null, ptr @imx_eth_cleanup, ptr @imx_eth_set_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.100 = private unnamed_addr constant [27 x i8] c"[%s]%s: Unexpected packet\0A\00", align 1
@__func__.imx_enet_receive = private unnamed_addr constant [17 x i8] c"imx_enet_receive\00", align 1
@.str.101 = private unnamed_addr constant [27 x i8] c"[%s]%s: Lost end of frame\0A\00", align 1
@_TRACE_IMX_ENET_RECEIVE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.102 = private unnamed_addr constant [26 x i8] c"imx_enet_receive len %zu\0A\00", align 1
@_TRACE_IMX_ENET_RECEIVE_LEN_DSTATE = external local_unnamed_addr global i16, align 2
@.str.103 = private unnamed_addr constant [44 x i8] c"imx_enet_receive_len rx_bd 0x%lx length %d\0A\00", align 1
@_TRACE_IMX_ENET_RECEIVE_LAST_DSTATE = external local_unnamed_addr global i16, align 2
@.str.104 = private unnamed_addr constant [45 x i8] c"imx_enet_receive_last rx frame flags 0x%04x\0A\00", align 1
@__func__.imx_fec_receive = private unnamed_addr constant [16 x i8] c"imx_fec_receive\00", align 1
@_TRACE_IMX_FEC_RECEIVE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.105 = private unnamed_addr constant [25 x i8] c"imx_fec_receive len %zu\0A\00", align 1
@_TRACE_IMX_FEC_RECEIVE_LEN_DSTATE = external local_unnamed_addr global i16, align 2
@.str.106 = private unnamed_addr constant [43 x i8] c"imx_fec_receive_len rx_bd 0x%lx length %d\0A\00", align 1
@_TRACE_IMX_FEC_RECEIVE_LAST_DSTATE = external local_unnamed_addr global i16, align 2
@.str.107 = private unnamed_addr constant [44 x i8] c"imx_fec_receive_last rx frame flags 0x%04x\0A\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"imx.enet\00", align 1
@imx_enet_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.108, ptr @.str, i64 0, i64 0, ptr @imx_enet_init, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr null, ptr null, ptr null, ptr null }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_imx_eth_register_types, ptr null }]

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_imx_eth_register_types() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @imx_eth_register_types, i32 noundef 4) #8
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @imx_eth_register_types() #0 {
bb.a:
  %i.a = tail call ptr @type_register_static(ptr noundef nonnull @imx_fec_info) #8 ; 0 uses
  %i.b = tail call ptr @type_register_static(ptr noundef nonnull @imx_enet_info) #8 ; 0 uses
  ret void
}

declare ptr @type_register_static(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @imx_fec_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 29, ptr noundef nonnull @__func__.IMX_FEC) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 11880
  store i8 1, ptr %i.b, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @imx_eth_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr @vmstate_imx_eth, ptr %i.b, align 8
  tail call void @device_class_set_legacy_reset(ptr noundef %i.a, ptr noundef nonnull @imx_eth_reset) #8
  tail call void @device_class_set_props_n(ptr noundef %i.a, ptr noundef nonnull @imx_eth_properties, i64 noundef 6) #8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr @imx_eth_realize, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr @.str.4, ptr %i.d, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @device_class_set_legacy_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @imx_eth_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 29, ptr noundef nonnull @__func__.IMX_FEC) #8 ; 23 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1600) %i.b, i8 noundef 0, i64 noundef 1600, i1 noundef false) #8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 9364
  store i32 -268435456, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 9428
  store i32 -1073741824, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 9460
  store i32 99483649, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 9564
  store i32 65536, ptr %i.f, align 4
  %1 = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  %2 = load i8, ptr %1, align 16
  %3 = zext i8 %2 to i32
  %4 = shl nuw i32 %3, 24
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 817
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 16
  %9 = or disjoint i32 %8, %4
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 818
  %11 = load i8, ptr %10, align 2
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = or disjoint i32 %9, %13
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 819
  %15 = load i8, ptr %i.g, align 1
  %16 = zext i8 %15 to i32
  %17 = or disjoint i32 %14, %16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 9556
  store i32 %17, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 820
  %i.j = load i8, ptr %i.i, align 4
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw i32 %i.k, 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 821
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 16
  %i.q = or disjoint i32 %i.l, %i.p
  %i.r = or disjoint i32 %i.q, 34824
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 9560
  store i32 %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 11880
  %i.u = load i8, ptr %i.t, align 8, !range !7, !noundef !8
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 9660
  store i32 1536, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 9664
  store i32 1280, ptr %i.x, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 10104
  store i32 6, ptr %i.y, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 9736
  store i32 4, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 9740
  store i32 4, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 9748
  store <4 x i32> <i32 4, i32 8, i32 12, i32 2047>, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 10364
  store i32 1000000000, ptr %i.ac, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 10928
  store i32 0, ptr %i.ad, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 10932
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ae, i8 noundef 0, i64 noundef 12, i1 noundef false) #8
  ret void
}

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @imx_eth_realize(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 29, ptr noundef nonnull @__func__.IMX_FEC) #8 ; 11 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.26, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 9056 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.c, ptr noundef %0, ptr noundef nonnull @imx_eth_ops, ptr noundef %i.a, ptr noundef nonnull @.str, i64 noundef 16384) #8
  tail call void @sysbus_init_mmio(ptr noundef %i.b, ptr noundef nonnull %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 9032
  tail call void @sysbus_init_irq(ptr noundef %i.b, ptr noundef nonnull %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 9040
  tail call void @sysbus_init_irq(ptr noundef %i.b, ptr noundef nonnull %i.e) #8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 11792 ; 2 uses
  tail call void @qemu_init_irq(ptr noundef nonnull %i.f, ptr noundef nonnull @imx_phy_update_irq, ptr noundef %i.a, i32 noundef 0) #8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 10952 ; 3 uses
  tail call void @object_initialize_child_internal(ptr noundef %i.a, ptr noundef nonnull @.str.24, ptr noundef nonnull %i.g, i64 noundef 840, ptr noundef nonnull @.str.25) #8
  %i.h = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.26, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #8
  %i.i = tail call zeroext i1 @sysbus_realize_and_unref(ptr noundef %i.h, ptr noundef %1) #8
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #8
  tail call void @qdev_connect_gpio_out(ptr noundef %i.j, i32 noundef 0, ptr noundef nonnull %i.f) #8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 816 ; 3 uses
  tail call void @qemu_macaddr_default_if_unset(ptr noundef nonnull %i.k) #8
  %i.l = tail call ptr @object_get_typename(ptr noundef %0) #8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = tail call ptr @qemu_new_nic(ptr noundef nonnull @imx_eth_net_info, ptr noundef nonnull %i.k, ptr noundef %i.l, ptr noundef %i.n, ptr noundef nonnull %i.o, ptr noundef nonnull %i.a) #8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  store ptr %i.p, ptr %i.q, align 8
  %i.r = tail call ptr @qemu_get_queue(ptr noundef %i.p) #8
  tail call void @qemu_format_nic_info_str(ptr noundef %i.r, ptr noundef nonnull %i.k) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @imx_eth_is_multi_tx_ring(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 29, ptr noundef nonnull @__func__.IMX_FEC) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10944
  %i.c = load i32, ptr %i.b, align 16
  %i.d = icmp ugt i32 %i.c, 1
  ret i1 %i.d
}

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @sysbus_init_mmio(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @sysbus_init_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qemu_init_irq(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @imx_phy_update_irq(ptr nofree noundef readonly captures(none) %0, i32 %1, i32 %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9332 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9336 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.b, -32564
  %i.f = and i32 %i.e, %i.d
  %.not.i = icmp ne i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9040
  %i.h = load ptr, ptr %i.g, align 8
  %..i = zext i1 %.not.i to i32
  tail call void @qemu_set_irq(ptr noundef %i.h, i32 noundef %..i) #8
  %i.i = load i32, ptr %i.a, align 4
  %i.j = load i32, ptr %i.c, align 8
  %i.k = and i32 %i.i, -65332
  %i.l = and i32 %i.k, %i.j
  %.not8.i = icmp ne i32 %i.l, 0
  %.sink10.i = zext i1 %.not8.i to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9032
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @qemu_set_irq(ptr noundef %i.n, i32 noundef %.sink10.i) #8
  ret void
}

declare void @object_initialize_child_internal(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @sysbus_realize_and_unref(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qdev_connect_gpio_out(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @qemu_macaddr_default_if_unset(ptr noundef) local_unnamed_addr #1

declare ptr @qemu_new_nic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_get_typename(ptr noundef) local_unnamed_addr #1

declare void @qemu_format_nic_info_str(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qemu_get_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @imx_eth_read(ptr noundef %0, i64 noundef %1, i32 %2) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 29, ptr noundef nonnull @__func__.IMX_FEC) #8 ; 5 uses
  %i.b = lshr i64 %1, 2                           ; 4 uses
  %i.c = trunc i64 %i.b to i32                    ; 7 uses
  switch i32 %i.c, label %bb.c [
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 4, label %bb.b
    i32 5, label %bb.b
    i32 9, label %bb.b
    i32 16, label %bb.b
    i32 17, label %bb.b
    i32 25, label %bb.b
    i32 33, label %bb.b
    i32 49, label %bb.b
    i32 57, label %bb.b
    i32 58, label %bb.b
    i32 59, label %bb.b
    i32 70, label %bb.b
    i32 71, label %bb.b
    i32 72, label %bb.b
    i32 73, label %bb.b
    i32 81, label %bb.b
    i32 96, label %bb.b
    i32 97, label %bb.b
    i32 98, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 9328
  %i.e = and i64 %i.b, 4294967295
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4
  br label %imx_fec_read.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 11880
  %i.i = load i8, ptr %i.h, align 8, !range !7, !noundef !8
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  switch i32 %i.c, label %bb.f [
    i32 83, label %bb.e
    i32 84, label %bb.e
    i32 192, label %bb.e
    i32 194, label %bb.e
  ]

end_hunk_0
