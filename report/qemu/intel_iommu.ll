Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/intel_iommu?download=true
inline.NumInlined: 680
inline.NumDeleted: 229
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@.str.95 = private unnamed_addr constant [13 x i8] c"caching-mode\00", align 1
@qdev_prop_bool = external constant %struct.PropertyInfo, align 8
@.str.96 = private unnamed_addr constant [14 x i8] c"scalable-mode\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"fsts\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"snoop-control\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"pasid-bits\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"svm\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c"stale-tm\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"fs1gp\00", align 1
@vtd_properties = internal constant [11 x { ptr, ptr, i64, ptr, i64, %union.anon.14, ptr, i32, i32, i8, i8, [6 x i8] }] [{ ptr, ptr, i64, ptr, i64, %union.anon.14, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.92, ptr @qdev_prop_uint32, i64 4160, ptr null, i64 0, %union.anon.14 zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon.14, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.93, ptr @qdev_prop_on_off_auto, i64 6336, ptr null, i64 0, %union.anon.14 zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon.14, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.94, ptr @qdev_prop_uint8, i64 6340, ptr null, i64 0, %union.anon.14 { i64 48 }, ptr null, i32 0, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon.14, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.95, ptr @qdev_prop_bool, i64 4164, ptr null, i64 0, %union.anon.14 zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon.14, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.96, ptr @qdev_prop_bool, i64 4165, ptr null, i64 0, %union.anon.14 zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon.14, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.97, ptr @qdev_prop_bool, i64 4166, ptr null, i64 0, %union.anon.14 zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon.14, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.98, ptr @qdev_prop_bool, i64 4167, ptr null, i64 0, %union.anon.14 zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon.14, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.99, ptr @qdev_prop_uint8, i64 6341, ptr null, i64 0, %union.anon.14 zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon.14, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.100, ptr @qdev_prop_bool, i64 4168, ptr null, i64 0, %union.anon.14 zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon.14, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.101, ptr @qdev_prop_bool, i64 6343, ptr null, i64 0, %union.anon.14 zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon.14, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.102, ptr @qdev_prop_bool, i64 6342, ptr null, i64 0, %union.anon.14 { i64 1 }, ptr null, i32 0, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer }], align 16
@.str.104 = private unnamed_addr constant [12 x i8] c"intel_iommu\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"vtd-sys-alias\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"machine\00", align 1
@.str.107 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/boards.h\00", align 1
@__func__.MACHINE = private unnamed_addr constant [8 x i8] c"MACHINE\00", align 1
@.str.108 = private unnamed_addr constant [19 x i8] c"generic-pc-machine\00", align 1
@.str.109 = private unnamed_addr constant [47 x i8] c"/opt-bench/work/qemu/qemu/include/hw/i386/pc.h\00", align 1
@__func__.PC_MACHINE = private unnamed_addr constant [11 x i8] c"PC_MACHINE\00", align 1
@.str.110 = private unnamed_addr constant [12 x i8] c"x86-machine\00", align 1
@.str.111 = private unnamed_addr constant [48 x i8] c"/opt-bench/work/qemu/qemu/include/hw/i386/x86.h\00", align 1
@__func__.X86_MACHINE = private unnamed_addr constant [12 x i8] c"X86_MACHINE\00", align 1
@__func__.vtd_decide_config = private unnamed_addr constant [18 x i8] c"vtd_decide_config\00", align 1
@.str.112 = private unnamed_addr constant [46 x i8] c"eim=on cannot be selected without intremap=on\00", align 1
@kvm_kernel_irqchip = external local_unnamed_addr global i8, align 1
@kvm_split_irqchip = external local_unnamed_addr global i8, align 1
@.str.113 = private unnamed_addr constant [75 x i8] c"eim=on requires support on the KVM side(X2APIC_API, first shipped in v4.7)\00", align 1
@.str.114 = private unnamed_addr constant [40 x i8] c"fsts is only available in scalable mode\00", align 1
@.str.115 = private unnamed_addr constant [45 x i8] c"%s: supported values for aw-bits are: %d, %d\00", align 1
@.str.116 = private unnamed_addr constant [24 x i8] c"Scalable mode(fsts=off)\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"Legacy mode\00", align 1
@.str.118 = private unnamed_addr constant [59 x i8] c"Scalable mode(fsts=on): supported value for aw-bits is: %d\00", align 1
@.str.119 = private unnamed_addr constant [36 x i8] c"Need to set scalable mode for PASID\00", align 1
@.str.120 = private unnamed_addr constant [62 x i8] c"PASID width %d exceeds Max PASID Width %d allowed in PCI spec\00", align 1
@.str.121 = private unnamed_addr constant [33 x i8] c"Need to set device IOTLB for svm\00", align 1
@.str.122 = private unnamed_addr constant [25 x i8] c"Need to set fsts for svm\00", align 1
@.str.123 = private unnamed_addr constant [36 x i8] c"Need to set dma-translation for svm\00", align 1
@.str.124 = private unnamed_addr constant [34 x i8] c"Need to set PASID support for svm\00", align 1
@vtd_mem_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], { i32, i32, i8, [7 x i8], ptr }, { i32, i32, i8, [3 x i8] }, [4 x i8] } { ptr @vtd_mem_read, ptr @vtd_mem_write, ptr null, ptr null, i32 2, [4 x i8] zeroinitializer, { i32, i32, i8, [7 x i8], ptr } { i32 4, i32 8, i8 0, [7 x i8] zeroinitializer, ptr null }, { i32, i32, i8, [3 x i8] } { i32 4, i32 8, i8 0, [3 x i8] zeroinitializer }, [4 x i8] zeroinitializer }, align 8
@vtd_mem_read.print_once_ = internal global i8 0, align 1
@.str.126 = private unnamed_addr constant [42 x i8] c"%s: MMIO over range: addr=0x%lx size=0x%x\00", align 1
@__func__.vtd_mem_read = private unnamed_addr constant [13 x i8] c"vtd_mem_read\00", align 1
@_TRACE_VTD_REG_READ_DSTATE = external local_unnamed_addr global i16, align 2
@.str.127 = private unnamed_addr constant [36 x i8] c"vtd_reg_read addr 0x%lx size 0x%lx\0A\00", align 1
@vtd_mem_write.print_once_ = internal global i8 0, align 1
@__func__.vtd_mem_write = private unnamed_addr constant [14 x i8] c"vtd_mem_write\00", align 1
@.str.128 = private unnamed_addr constant [53 x i8] c"%s: invalid %u-byte access to 32-bit reg addr=0x%lx\0A\00", align 1
@_TRACE_VTD_REG_WRITE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.129 = private unnamed_addr constant [49 x i8] c"vtd_reg_write addr 0x%lx size 0x%lx value 0x%lx\0A\00", align 1
@_TRACE_VTD_REG_WRITE_GCMD_DSTATE = external local_unnamed_addr global i16, align 2
@.str.130 = private unnamed_addr constant [43 x i8] c"vtd_reg_write_gcmd status 0x%x value 0x%x\0A\00", align 1
@_TRACE_VTD_DMAR_ENABLE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.131 = private unnamed_addr constant [27 x i8] c"vtd_dmar_enable enable %d\0A\00", align 1
@_TRACE_VTD_REG_DMAR_ROOT_DSTATE = external local_unnamed_addr global i16, align 2
@.str.132 = private unnamed_addr constant [42 x i8] c"vtd_reg_dmar_root addr 0x%lx scalable %d\0A\00", align 1
@vtd_handle_gcmd_qie.print_once_ = internal global i8 0, align 1
@.str.133 = private unnamed_addr constant [81 x i8] c"%s: detected improper state when disable QI (head=0x%x, tail=0x%x, last_type=%d)\00", align 1
@__func__.vtd_handle_gcmd_qie = private unnamed_addr constant [20 x i8] c"vtd_handle_gcmd_qie\00", align 1
@_TRACE_VTD_INV_QI_ENABLE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.134 = private unnamed_addr constant [30 x i8] c"vtd_inv_qi_enable enabled %d\0A\00", align 1
@_TRACE_VTD_INV_QI_SETUP_DSTATE = external local_unnamed_addr global i16, align 2
@.str.135 = private unnamed_addr constant [37 x i8] c"vtd_inv_qi_setup addr 0x%lx size %d\0A\00", align 1
@_TRACE_VTD_WARN_INVALID_QI_TAIL_DSTATE = external local_unnamed_addr global i16, align 2
@.str.136 = private unnamed_addr constant [36 x i8] c"vtd_warn_invalid_qi_tail tail 0x%x\0A\00", align 1
@vtd_fetch_inv_desc.print_once_ = internal global i8 0, align 1
@.str.137 = private unnamed_addr constant [52 x i8] c"%s: detected invalid QI tail (tail=0x%x, size=0x%x)\00", align 1
@__func__.vtd_fetch_inv_desc = private unnamed_addr constant [19 x i8] c"vtd_fetch_inv_desc\00", align 1
@_TRACE_VTD_INV_QI_FETCH_DSTATE = external local_unnamed_addr global i16, align 2
@.str.138 = private unnamed_addr constant [19 x i8] c"vtd_inv_qi_fetch \0A\00", align 1
@.str.139 = private unnamed_addr constant [14 x i8] c"context-cache\00", align 1
@.str.140 = private unnamed_addr constant [6 x i8] c"iotlb\00", align 1
@.str.141 = private unnamed_addr constant [12 x i8] c"pasid-cache\00", align 1
@.str.142 = private unnamed_addr constant [8 x i8] c"p-iotlb\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"iec\00", align 1
@.str.145 = private unnamed_addr constant [14 x i8] c"device-piotlb\00", align 1
@.str.146 = private unnamed_addr constant [20 x i8] c"page group response\00", align 1
@vtd_process_inv_desc.print_once_ = internal global i8 0, align 1
@.str.147 = private unnamed_addr constant [52 x i8] c"%s: invalid inv desc: hi=%lx, lo=%lx (unknown type)\00", align 1
@__func__.vtd_process_inv_desc = private unnamed_addr constant [21 x i8] c"vtd_process_inv_desc\00", align 1
@_TRACE_VTD_INV_QI_HEAD_DSTATE = external local_unnamed_addr global i16, align 2
@.str.148 = private unnamed_addr constant [30 x i8] c"vtd_inv_qi_head read head %d\0A\00", align 1
@vtd_get_inv_desc.print_once_ = internal global i8 0, align 1
@.str.149 = private unnamed_addr constant [22 x i8] c"Read INV DESC failed.\00", align 1
@_TRACE_VTD_INV_DESC_DSTATE = external local_unnamed_addr global i16, align 2
@.str.150 = private unnamed_addr constant [59 x i8] c"vtd_inv_desc invalidate desc type %s high 0x%lx low 0x%lx\0A\00", align 1
@__func__.vtd_process_context_cache_desc = private unnamed_addr constant [31 x i8] c"vtd_process_context_cache_desc\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"cc inv\00", align 1
@vtd_process_context_cache_desc.print_once_ = internal global i8 0, align 1
@.str.152 = private unnamed_addr constant [55 x i8] c"%s: invalid cc inv desc: hi=%lx, lo=%lx (invalid type)\00", align 1
@.str.153 = private unnamed_addr constant [93 x i8] c"%s: invalid %s desc val[3]: 0x%lx val[2]: 0x%lx val[1]=0x%lx val[0]=0x%lx (reserved nonzero)\00", align 1
@.str.154 = private unnamed_addr constant [50 x i8] c"%s: 256-bit %s desc in 128-bit invalidation queue\00", align 1
@.str.155 = private unnamed_addr constant [55 x i8] c"%s: invalid %s desc: hi=%lx, lo=%lx (reserved nonzero)\00", align 1
@_TRACE_VTD_INV_DESC_CC_DOMAIN_DSTATE = external local_unnamed_addr global i16, align 2
@.str.156 = private unnamed_addr constant [55 x i8] c"vtd_inv_desc_cc_domain context invalidate domain 0x%x\0A\00", align 1
@_TRACE_VTD_INV_DESC_CC_GLOBAL_DSTATE = external local_unnamed_addr global i16, align 2
@.str.157 = private unnamed_addr constant [52 x i8] c"vtd_inv_desc_cc_global context invalidate globally\0A\00", align 1
@_TRACE_VTD_INV_DESC_CC_DEVICES_DSTATE = external local_unnamed_addr global i16, align 2
@.str.158 = private unnamed_addr constant [72 x i8] c"vtd_inv_desc_cc_devices context invalidate devices sid 0x%x fmask 0x%x\0A\00", align 1
@_TRACE_VTD_INV_DESC_CC_DEVICE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.159 = private unnamed_addr constant [65 x i8] c"vtd_inv_desc_cc_device context invalidate device %02x:%02x.%02x\0A\00", align 1
@_TRACE_VTD_PASID_CACHE_DEVSI_DSTATE = external local_unnamed_addr global i16, align 2
@.str.160 = private unnamed_addr constant [73 x i8] c"vtd_pasid_cache_devsi Dev selective PC invalidation dev: %02x:%02x.%02x\0A\00", align 1
@__func__.vtd_process_iotlb_desc = private unnamed_addr constant [23 x i8] c"vtd_process_iotlb_desc\00", align 1
@.str.161 = private unnamed_addr constant [10 x i8] c"iotlb inv\00", align 1
@vtd_process_iotlb_desc.print_once_ = internal global i8 0, align 1
@.str.162 = private unnamed_addr constant [69 x i8] c"%s: invalid iotlb inv desc: hi=0x%lx, lo=0x%lx (am=%u > VTD_MAMV=%u)\00", align 1
@vtd_process_iotlb_desc.print_once_.163 = internal global i8 0, align 1
@.str.164 = private unnamed_addr constant [71 x i8] c"%s: invalid iotlb inv desc: hi=0x%lx, lo=0x%lx (type mismatch: 0x%llx)\00", align 1
@_TRACE_VTD_INV_DESC_IOTLB_GLOBAL_DSTATE = external local_unnamed_addr global i16, align 2
@.str.165 = private unnamed_addr constant [51 x i8] c"vtd_inv_desc_iotlb_global iotlb invalidate global\0A\00", align 1
@_TRACE_VTD_INV_DESC_IOTLB_DOMAIN_DSTATE = external local_unnamed_addr global i16, align 2
@.str.166 = private unnamed_addr constant [62 x i8] c"vtd_inv_desc_iotlb_domain iotlb invalidate whole domain 0x%x\0A\00", align 1
@.str.167 = private unnamed_addr constant [15 x i8] c"am <= VTD_MAMV\00", align 1
@__PRETTY_FUNCTION__.vtd_iotlb_page_invalidate = private unnamed_addr constant [77 x i8] c"void vtd_iotlb_page_invalidate(IntelIOMMUState *, uint16_t, hwaddr, uint8_t)\00", align 1
@_TRACE_VTD_INV_DESC_IOTLB_PAGES_DSTATE = external local_unnamed_addr global i16, align 2
@.str.168 = private unnamed_addr constant [76 x i8] c"vtd_inv_desc_iotlb_pages iotlb invalidate domain 0x%x addr 0x%lx mask 0x%x\0A\00", align 1
@__func__.vtd_process_pasid_desc = private unnamed_addr constant [23 x i8] c"vtd_process_pasid_desc\00", align 1
@.str.169 = private unnamed_addr constant [16 x i8] c"pasid cache inv\00", align 1
@vtd_process_pasid_desc.print_once_ = internal global i8 0, align 1
@.str.170 = private unnamed_addr constant [84 x i8] c"invalid granularity field in PASID-cache invalidate descriptor, hi: 0x%lx lo: 0x%lx\00", align 1
@_TRACE_VTD_INV_DESC_PASID_CACHE_DSI_DSTATE = external local_unnamed_addr global i16, align 2
@.str.171 = private unnamed_addr constant [75 x i8] c"vtd_inv_desc_pasid_cache_dsi Domain selective PC invalidation domain 0x%x\0A\00", align 1
@_TRACE_VTD_INV_DESC_PASID_CACHE_PSI_DSTATE = external local_unnamed_addr global i16, align 2
@.str.172 = private unnamed_addr constant [85 x i8] c"vtd_inv_desc_pasid_cache_psi PASID selective PC invalidation domain 0x%x pasid 0x%x\0A\00", align 1
@_TRACE_VTD_INV_DESC_PASID_CACHE_GSI_DSTATE = external local_unnamed_addr global i16, align 2
@.str.173 = private unnamed_addr constant [31 x i8] c"vtd_inv_desc_pasid_cache_gsi \0A\00", align 1
@__func__.vtd_process_piotlb_desc = private unnamed_addr constant [24 x i8] c"vtd_process_piotlb_desc\00", align 1
@.str.174 = private unnamed_addr constant [11 x i8] c"piotlb inv\00", align 1
@vtd_process_piotlb_desc.print_once_ = internal global i8 0, align 1
@.str.175 = private unnamed_addr constant [72 x i8] c"%s: invalid piotlb inv desc: hi=0x%lx, lo=0x%lx (am=%u > VTD_MAMV=%llu)\00", align 1
@vtd_process_piotlb_desc.print_once_.176 = internal global i8 0, align 1
@.str.177 = private unnamed_addr constant [72 x i8] c"%s: invalid piotlb inv desc: hi=0x%lx, lo=0x%lx (type mismatch: 0x%llx)\00", align 1
@__PRETTY_FUNCTION__.vtd_piotlb_page_invalidate = private unnamed_addr constant [95 x i8] c"void vtd_piotlb_page_invalidate(IntelIOMMUState *, uint16_t, uint32_t, hwaddr, uint8_t, _Bool)\00", align 1
@__func__.vtd_process_wait_desc = private unnamed_addr constant [22 x i8] c"vtd_process_wait_desc\00", align 1
@vtd_process_wait_desc.print_once_ = internal global i8 0, align 1
@.str.178 = private unnamed_addr constant [53 x i8] c"%s: invalid wait desc: hi=%lx, lo=%lx (unknown type)\00", align 1
@_TRACE_VTD_INV_DESC_WAIT_SW_DSTATE = external local_unnamed_addr global i16, align 2
@.str.179 = private unnamed_addr constant [72 x i8] c"vtd_inv_desc_wait_sw wait invalidate status write addr 0x%lx data 0x%x\0A\00", align 1
@_TRACE_VTD_INV_DESC_WAIT_WRITE_FAIL_DSTATE = external local_unnamed_addr global i16, align 2
@.str.180 = private unnamed_addr constant [73 x i8] c"vtd_inv_desc_wait_write_fail write fail for wait desc hi 0x%lx lo 0x%lx\0A\00", align 1
@.str.181 = private unnamed_addr constant [26 x i8] c"One pending, skip current\00", align 1
@.str.182 = private unnamed_addr constant [48 x i8] c"IM in IECTL_REG is set, new event not generated\00", align 1
@.str.183 = private unnamed_addr constant [26 x i8] c"Generating complete event\00", align 1
@_TRACE_VTD_INV_DESC_WAIT_IRQ_DSTATE = external local_unnamed_addr global i16, align 2
@.str.184 = private unnamed_addr constant [26 x i8] c"vtd_inv_desc_wait_irq %s\0A\00", align 1
@__func__.vtd_process_inv_iec_desc = private unnamed_addr constant [25 x i8] c"vtd_process_inv_iec_desc\00", align 1
@.str.185 = private unnamed_addr constant [8 x i8] c"iec inv\00", align 1
@_TRACE_VTD_INV_DESC_IEC_DSTATE = external local_unnamed_addr global i16, align 2
@.str.186 = private unnamed_addr constant [56 x i8] c"vtd_inv_desc_iec granularity 0x%x index 0x%x mask 0x%x\0A\00", align 1
@__func__.vtd_process_device_piotlb_desc = private unnamed_addr constant [31 x i8] c"vtd_process_device_piotlb_desc\00", align 1
@.str.187 = private unnamed_addr constant [18 x i8] c"device piotlb inv\00", align 1
@__func__.vtd_process_device_iotlb_desc = private unnamed_addr constant [30 x i8] c"vtd_process_device_iotlb_desc\00", align 1
@.str.188 = private unnamed_addr constant [14 x i8] c"dev-iotlb inv\00", align 1
@vtd_process_page_group_response_desc.print_once_ = internal global i8 0, align 1
@.str.189 = private unnamed_addr constant [72 x i8] c"%s: invalid page group response desc: hi=%lx, lo=%lx (reserved nonzero)\00", align 1
@__func__.vtd_process_page_group_response_desc = private unnamed_addr constant [37 x i8] c"vtd_process_page_group_response_desc\00", align 1
@vtd_process_page_group_response_desc.print_once_.190 = internal global i8 0, align 1
@.str.191 = private unnamed_addr constant [54 x i8] c"Page group response without PASID isnot supported yet\00", align 1
@_TRACE_VTD_REG_IR_ROOT_DSTATE = external local_unnamed_addr global i16, align 2
@.str.192 = private unnamed_addr constant [38 x i8] c"vtd_reg_ir_root addr 0x%lx size 0x%x\0A\00", align 1
@_TRACE_VTD_IR_ENABLE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.193 = private unnamed_addr constant [25 x i8] c"vtd_ir_enable enable %d\0A\00", align 1
@vtd_handle_ccmd_write.print_once_ = internal global i8 0, align 1
@.str.194 = private unnamed_addr constant [72 x i8] c"Queued Invalidation enabled, should not use register-based invalidation\00", align 1
@vtd_context_cache_invalidate.print_once_ = internal global i8 0, align 1
@.str.195 = private unnamed_addr constant [27 x i8] c"%s: invalid context: 0x%lx\00", align 1
@__func__.vtd_context_cache_invalidate = private unnamed_addr constant [29 x i8] c"vtd_context_cache_invalidate\00", align 1
@vtd_handle_iotlb_write.print_once_ = internal global i8 0, align 1
@vtd_iotlb_flush.print_once_ = internal global i8 0, align 1
@.str.196 = private unnamed_addr constant [33 x i8] c"%s: address mask overflow: 0x%lx\00", align 1
@__func__.vtd_iotlb_flush = private unnamed_addr constant [16 x i8] c"vtd_iotlb_flush\00", align 1
@vtd_iotlb_flush.print_once_.197 = internal global i8 0, align 1
@.str.198 = private unnamed_addr constant [31 x i8] c"%s: invalid granularity: 0x%lx\00", align 1
@_TRACE_VTD_FSTS_CLEAR_IP_DSTATE = external local_unnamed_addr global i16, align 2
@.str.199 = private unnamed_addr constant [20 x i8] c"vtd_fsts_clear_ip \0A\00", align 1
@_TRACE_VTD_REG_WRITE_FECTL_DSTATE = external local_unnamed_addr global i16, align 2
@.str.200 = private unnamed_addr constant [32 x i8] c"vtd_reg_write_fectl value 0x%x\0A\00", align 1
@vtd_handle_iqt_write.print_once_ = internal global i8 0, align 1
@.str.201 = private unnamed_addr constant [30 x i8] c"%s: RSV bit is set: val=0x%lx\00", align 1
@__func__.vtd_handle_iqt_write = private unnamed_addr constant [21 x i8] c"vtd_handle_iqt_write\00", align 1
@_TRACE_VTD_INV_QI_TAIL_DSTATE = external local_unnamed_addr global i16, align 2
@.str.202 = private unnamed_addr constant [31 x i8] c"vtd_inv_qi_tail write tail %d\0A\00", align 1
@_TRACE_VTD_REG_ICS_CLEAR_IP_DSTATE = external local_unnamed_addr global i16, align 2
@.str.203 = private unnamed_addr constant [23 x i8] c"vtd_reg_ics_clear_ip \0A\00", align 1
@_TRACE_VTD_REG_WRITE_IECTL_DSTATE = external local_unnamed_addr global i16, align 2
@.str.204 = private unnamed_addr constant [32 x i8] c"vtd_reg_write_iectl value 0x%x\0A\00", align 1
@vtd_mem_ir_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], { i32, i32, i8, [7 x i8], ptr }, { i32, i32, i8, [3 x i8] }, [4 x i8] } { ptr null, ptr null, ptr @vtd_mem_ir_read, ptr @vtd_mem_ir_write, i32 2, [4 x i8] zeroinitializer, { i32, i32, i8, [7 x i8], ptr } { i32 4, i32 4, i8 0, [7 x i8] zeroinitializer, ptr null }, { i32, i32, i8, [3 x i8] } { i32 4, i32 4, i8 0, [3 x i8] zeroinitializer }, [4 x i8] zeroinitializer }, align 8
@.str.206 = private unnamed_addr constant [21 x i8] c"origin && translated\00", align 1
@__PRETTY_FUNCTION__.vtd_interrupt_remap_msi = private unnamed_addr constant [92 x i8] c"int vtd_interrupt_remap_msi(IntelIOMMUState *, MSIMessage *, MSIMessage *, uint16_t, _Bool)\00", align 1
@vtd_interrupt_remap_msi.print_once_ = internal global i8 0, align 1
@.str.207 = private unnamed_addr constant [62 x i8] c"%s: MSI address high 32 bits non-zero detected: address=0x%lx\00", align 1
@__func__.vtd_interrupt_remap_msi = private unnamed_addr constant [24 x i8] c"vtd_interrupt_remap_msi\00", align 1
@vtd_interrupt_remap_msi.print_once_.208 = internal global i8 0, align 1
@.str.209 = private unnamed_addr constant [41 x i8] c"%s: MSI address low 32 bit invalid: 0x%x\00", align 1
@.str.210 = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@vtd_interrupt_remap_msi.print_once_.211 = internal global i8 0, align 1
@.str.212 = private unnamed_addr constant [54 x i8] c"%s: invalid IR MSI (sid=%u, address=0x%lx, data=0x%x)\00", align 1
@.str.213 = private unnamed_addr constant [7 x i8] c"IOAPIC\00", align 1
@_TRACE_VTD_IR_REMAP_MSI_REQ_DSTATE = external local_unnamed_addr global i16, align 2
@.str.214 = private unnamed_addr constant [44 x i8] c"vtd_ir_remap_msi_req addr 0x%lx data 0x%lx\0A\00", align 1
@vtd_irte_get.print_once_ = internal global i8 0, align 1
@.str.215 = private unnamed_addr constant [30 x i8] c"%s: index too large: ind=0x%x\00", align 1
@__func__.vtd_irte_get = private unnamed_addr constant [13 x i8] c"vtd_irte_get\00", align 1
@vtd_irte_get.print_once_.216 = internal global i8 0, align 1
@.str.217 = private unnamed_addr constant [37 x i8] c"%s: read failed: ind=0x%x addr=0x%lx\00", align 1
@vtd_irte_get.print_once_.218 = internal global i8 0, align 1
@.str.219 = private unnamed_addr constant [64 x i8] c"%s: detected non-present IRTE (index=%u, high=0x%lx, low=0x%lx)\00", align 1
@vtd_irte_get.print_once_.220 = internal global i8 0, align 1
@.str.221 = private unnamed_addr constant [70 x i8] c"%s: detected non-zero reserved IRTE (index=%u, high=0x%lx, low=0x%lx)\00", align 1
@vtd_irte_get.print_once_.222 = internal global i8 0, align 1
@.str.223 = private unnamed_addr constant [54 x i8] c"%s: invalid IRTE SID (index=%u, sid=%u, source_id=%u)\00", align 1
@vtd_irte_get.print_once_.224 = internal global i8 0, align 1
@.str.225 = private unnamed_addr constant [55 x i8] c"%s: invalid SVT_BUS (index=%u, bus=%u, min=%u, max=%u)\00", align 1
@vtd_irte_get.print_once_.226 = internal global i8 0, align 1
@.str.227 = private unnamed_addr constant [50 x i8] c"%s: detected invalid IRTE SVT (index=%u, type=%d)\00", align 1
@_TRACE_VTD_IR_IRTE_GET_DSTATE = external local_unnamed_addr global i16, align 2
@.str.228 = private unnamed_addr constant [47 x i8] c"vtd_ir_irte_get index %d low 0x%lx high 0x%lx\0A\00", align 1
@_TRACE_VTD_IR_REMAP_DSTATE = external local_unnamed_addr global i16, align 2
@.str.229 = private unnamed_addr constant [73 x i8] c"vtd_ir_remap index %d trigger %d vector %d deliver %d dest 0x%x mode %d\0A\00", align 1
@_TRACE_VTD_IR_REMAP_TYPE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.230 = private unnamed_addr constant [22 x i8] c"vtd_ir_remap_type %s\0A\00", align 1
@_TRACE_VTD_WARN_IR_VECTOR_DSTATE = external local_unnamed_addr global i16, align 2
@.str.231 = private unnamed_addr constant [61 x i8] c"vtd_warn_ir_vector sid 0x%x index %d vec %d (should be: %d)\0A\00", align 1
@_TRACE_VTD_WARN_IR_TRIGGER_DSTATE = external local_unnamed_addr global i16, align 2
@.str.232 = private unnamed_addr constant [66 x i8] c"vtd_warn_ir_trigger sid 0x%x index %d trigger %d (should be: %d)\0A\00", align 1
@_TRACE_VTD_IR_REMAP_MSI_DSTATE = external local_unnamed_addr global i16, align 2
@.str.233 = private unnamed_addr constant [71 x i8] c"vtd_ir_remap_msi (addr 0x%lx, data 0x%lx) -> (addr 0x%lx, data 0x%lx)\0A\00", align 1
@.str.234 = private unnamed_addr constant [36 x i8] c"0 <= devfn && devfn < PCI_DEVFN_MAX\00", align 1
@__PRETTY_FUNCTION__.vtd_host_dma_iommu = private unnamed_addr constant [56 x i8] c"AddressSpace *vtd_host_dma_iommu(PCIBus *, void *, int)\00", align 1
@.str.235 = private unnamed_addr constant [5 x i8] c"hiod\00", align 1
@__PRETTY_FUNCTION__.vtd_dev_set_iommu_device = private unnamed_addr constant [83 x i8] c"_Bool vtd_dev_set_iommu_device(PCIBus *, void *, int, HostIOMMUDevice *, Error **)\00", align 1
@__func__.vtd_dev_set_iommu_device = private unnamed_addr constant [25 x i8] c"vtd_dev_set_iommu_device\00", align 1
@.str.236 = private unnamed_addr constant [83 x i8] c"Device assignment is not allowed without enabling caching-mode=on for Intel IOMMU.\00", align 1
@.str.237 = private unnamed_addr constant [32 x i8] c"Host IOMMU device already exist\00", align 1
@__func__.vtd_check_hiod = private unnamed_addr constant [15 x i8] c"vtd_check_hiod\00", align 1
@.str.238 = private unnamed_addr constant [27 x i8] c".get_cap() not implemented\00", align 1
@.str.239 = private unnamed_addr constant [29 x i8] c"aw-bits %d > host aw-bits %d\00", align 1
@.str.240 = private unnamed_addr constant [18 x i8] c"host-iommu-device\00", align 1
@.str.241 = private unnamed_addr constant [61 x i8] c"/opt-bench/work/qemu/qemu/include/system/host_iommu_device.h\00", align 1
@__func__.HOST_IOMMU_DEVICE_GET_CLASS = private unnamed_addr constant [28 x i8] c"HOST_IOMMU_DEVICE_GET_CLASS\00", align 1
@error_fatal = external global ptr, align 8
@__const.vtd_iommu_ats_do_translate.entry = private unnamed_addr constant %struct.IOMMUTLBEntry { ptr @address_space_memory, i64 0, i64 0, i64 0, i32 0, i32 0 }, align 8
@vtd_iommu_ats_do_translate.print_once_ = internal global i8 0, align 1
@.str.242 = private unnamed_addr constant [29 x i8] c"Privileged ATS not supported\00", align 1
@vtd_iommu_translate.print_once_ = internal global i8 0, align 1
@.str.243 = private unnamed_addr constant [59 x i8] c"%s: translated request with PASID not allowed (pasid=0x%x)\00", align 1
@__func__.vtd_iommu_translate = private unnamed_addr constant [20 x i8] c"vtd_iommu_translate\00", align 1
@vtd_iommu_translate.print_once_.244 = internal global i8 0, align 1
@.str.245 = private unnamed_addr constant [66 x i8] c"%s: detected translation failure (dev=%02x:%02x:%02x, iova=0x%lx)\00", align 1
@.str.246 = private unnamed_addr constant [29 x i8] c"!vtd_is_interrupt_addr(addr)\00", align 1
@__PRETTY_FUNCTION__.vtd_do_iommu_translate = private unnamed_addr constant [104 x i8] c"_Bool vtd_do_iommu_translate(VTDAddressSpace *, PCIBus *, uint8_t, hwaddr, _Bool, IOMMUTLBEntry *, int)\00", align 1
@vtd_do_iommu_translate.print_once_ = internal global i8 0, align 1
@.str.247 = private unnamed_addr constant [121 x i8] c"%s: xlat address is in interrupt range (iova=0x%lx, level=0x%x, pte=0x%lx, write=%d, xlat=0x%lx, size=0x%lx, pasid=0x%x)\00", align 1
@__func__.vtd_do_iommu_translate = private unnamed_addr constant [23 x i8] c"vtd_do_iommu_translate\00", align 1
@_TRACE_VTD_IOTLB_PAGE_HIT_DSTATE = external local_unnamed_addr global i16, align 2
@.str.248 = private unnamed_addr constant [79 x i8] c"vtd_iotlb_page_hit IOTLB page hit sid 0x%x iova 0x%lx slpte 0x%lx domain 0x%x\0A\00", align 1
@_TRACE_VTD_IOTLB_CC_HIT_DSTATE = external local_unnamed_addr global i16, align 2
@.str.249 = private unnamed_addr constant [84 x i8] c"vtd_iotlb_cc_hit IOTLB context hit bus 0x%x devfn 0x%x high 0x%lx low 0x%lx gen %u\0A\00", align 1
@_TRACE_VTD_IOTLB_CC_UPDATE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.250 = private unnamed_addr constant [100 x i8] c"vtd_iotlb_cc_update IOTLB context update bus 0x%x devfn 0x%x high 0x%lx low 0x%lx gen %u -> gen %u\0A\00", align 1
@_TRACE_VTD_TRANSLATE_PT_DSTATE = external local_unnamed_addr global i16, align 2
@.str.251 = private unnamed_addr constant [45 x i8] c"vtd_translate_pt source id 0x%x, iova 0x%lx\0A\00", align 1
@_TRACE_VTD_PT_ENABLE_FAST_PATH_DSTATE = external local_unnamed_addr global i16, align 2
@.str.252 = private unnamed_addr constant [37 x i8] c"vtd_pt_enable_fast_path sid 0x%x %d\0A\00", align 1
@vtd_iova_to_fspte.print_once_ = internal global i8 0, align 1
@.str.253 = private unnamed_addr constant [56 x i8] c"%s: detected non canonical IOVA (iova=0x%lx,pasid=0x%x)\00", align 1
@__func__.vtd_iova_to_fspte = private unnamed_addr constant [18 x i8] c"vtd_iova_to_fspte\00", align 1
@vtd_iova_to_fspte.print_once_.254 = internal global i8 0, align 1
@.str.255 = private unnamed_addr constant [84 x i8] c"%s: detected fspte reserved non-zero iova=0x%lx, level=0x%xfspte=0x%lx, pasid=0x%X)\00", align 1
@.str.256 = private unnamed_addr constant [26 x i8] c"level < VTD_FPTE_RSVD_LEN\00", align 1
@__PRETTY_FUNCTION__.vtd_fspte_nonzero_rsvd = private unnamed_addr constant [49 x i8] c"_Bool vtd_fspte_nonzero_rsvd(uint64_t, uint32_t)\00", align 1
@vtd_iova_to_sspte.print_once_ = internal global i8 0, align 1
@.str.257 = private unnamed_addr constant [51 x i8] c"%s: detected IOVA overflow (iova=0x%lx,pasid=0x%x)\00", align 1
@__func__.vtd_iova_to_sspte = private unnamed_addr constant [18 x i8] c"vtd_iova_to_sspte\00", align 1
@vtd_iova_to_sspte.print_once_.258 = internal global i8 0, align 1
@.str.259 = private unnamed_addr constant [63 x i8] c"%s: detected read error on DMAR sspte (iova=0x%lx, pasid=0x%x)\00", align 1
@vtd_iova_to_sspte.print_once_.260 = internal global i8 0, align 1
@.str.261 = private unnamed_addr constant [96 x i8] c"%s: detected sspte permission error (iova=0x%lx, level=0x%x, sspte=0x%lx, write=%d, pasid=0x%x)\00", align 1
@vtd_iova_to_sspte.print_once_.262 = internal global i8 0, align 1
@.str.263 = private unnamed_addr constant [83 x i8] c"%s: detected splte reserve non-zero iova=0x%lx, level=0x%xsspte=0x%lx, pasid=0x%X)\00", align 1
@vtd_recoverable_faults = internal unnamed_addr constant <{ [134 x i8], [13 x i8] }> <{ [134 x i8] c"\00\00\00\00\00\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\01\01\00\00\00\01", [13 x i8] zeroinitializer }>, align 16
@.str.265 = private unnamed_addr constant [25 x i8] c"iotlb exceeds size limit\00", align 1
@_TRACE_VTD_IOTLB_PAGE_UPDATE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.266 = private unnamed_addr constant [85 x i8] c"vtd_iotlb_page_update IOTLB page update sid 0x%x iova 0x%lx slpte 0x%lx domain 0x%x\0A\00", align 1
@_TRACE_VTD_IOTLB_RESET_DSTATE = external local_unnamed_addr global i16, align 2
@.str.267 = private unnamed_addr constant [42 x i8] c"vtd_iotlb_reset IOTLB reset (reason: %s)\0A\00", align 1
@_TRACE_VTD_DMAR_TRANSLATE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.268 = private unnamed_addr constant [74 x i8] c"vtd_dmar_translate dev %02x:%02x.%02x iova 0x%lx -> gpa 0x%lx mask 0x%lx\0A\00", align 1
@vtd_pri_request_page.print_once_ = internal global i8 0, align 1
@.str.269 = private unnamed_addr constant [40 x i8] c"IO error, the PQ tail cannot be updated\00", align 1
@vtd_pri_perform_implicit_invalidation.print_once_ = internal global i8 0, align 1
@.str.270 = private unnamed_addr constant [40 x i8] c"Translation type not supported yet : %d\00", align 1
@.str.271 = private unnamed_addr constant [20 x i8] c"iommu-memory-region\00", align 1
@vtd_iommu_memory_region_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.7, ptr @.str.271, i64 0, i64 0, ptr null, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @vtd_iommu_memory_region_class_init, ptr null, ptr null, ptr null }, align 8
@__func__.IOMMU_MEMORY_REGION_CLASS = private unnamed_addr constant [26 x i8] c"IOMMU_MEMORY_REGION_CLASS\00", align 1
@__func__.vtd_iommu_notify_flag_changed = private unnamed_addr constant [30 x i8] c"vtd_iommu_notify_flag_changed\00", align 1
@.str.273 = private unnamed_addr constant [50 x i8] c"Snoop Control with vhost or VFIO is not supported\00", align 1
@.str.274 = private unnamed_addr constant [42 x i8] c"device %02x.%02x.%x requires caching mode\00", align 1
@.str.275 = private unnamed_addr constant [47 x i8] c"device %02x.%02x.%x requires device IOTLB mode\00", align 1
@__const.vtd_iommu_replay.map = private unnamed_addr constant %struct.DMAMap <{ i64 0, i64 0, i64 -1, i32 0 }>, align 8
@.str.276 = private unnamed_addr constant [14 x i8] c"scalable mode\00", align 1
@.str.277 = private unnamed_addr constant [12 x i8] c"legacy mode\00", align 1
@_TRACE_VTD_REPLAY_CE_VALID_DSTATE = external local_unnamed_addr global i16, align 2
@.str.278 = private unnamed_addr constant [98 x i8] c"vtd_replay_ce_valid %s: replay valid context device %02x:%02x.%02x domain 0x%x hi 0x%lx lo 0x%lx\0A\00", align 1
@_TRACE_VTD_REPLAY_CE_INVALID_DSTATE = external local_unnamed_addr global i16, align 2
@.str.279 = private unnamed_addr constant [68 x i8] c"vtd_replay_ce_invalid replay invalid context device %02x:%02x.%02x\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_vtd_register_types, ptr null }]
@switch.table.vtd_context_device_invalidate = private unnamed_addr constant [4 x i16] [i16 -1, i16 -5, i16 -7, i16 -8], align 4

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -80, 1) i32 @vtd_get_pdire_from_pdir_table(i64 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %1, 3
  %i.b = and i32 %i.a, 131064
  %i.c = zext nneg i32 %i.b to i64
  %i.d = add i64 %0, %i.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !13
  fence seq_cst
  %i.e = tail call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %i.d, i64 4294967296, ptr noundef %2, i64 noundef range(i64 4, 65) 8, i1 noundef zeroext false) #17
  %.not = icmp eq i32 %i.e, 0
  %spec.select = select i1 %.not, i32 0, i32 -80
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -91, 1) i32 @vtd_get_pe_in_pasid_leaf_table(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i32 %1, 6
  %i.b = and i32 %i.a, 4032
  %i.c = zext nneg i32 %i.b to i64
  %i.d = add i64 %2, %i.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !13
  fence seq_cst
  %i.e = tail call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %i.d, i64 4294967296, ptr noundef %3, i64 noundef range(i64 4, 65) 64, i1 noundef zeroext false) #17
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.preheader.preheader, label %vtd_pe_type_check.exit.thread

.preheader.preheader:                             ; preds = %bb.a
  %.val = load i64, ptr %3, align 8               ; 2 uses
  %i.f = lshr i64 %.val, 6
  %i.g = and i64 %i.f, 7                          ; 2 uses
  switch i64 %i.g, label %vtd_pe_type_check.exit.thread [
    i64 1, label %vtd_pe_type_check.exit
    i64 2, label %bb.b
    i64 4, label %bb.c
  ]

bb.b:                                             ; preds = %.preheader.preheader
  br label %vtd_pe_type_check.exit

bb.c:                                             ; preds = %.preheader.preheader
  br label %vtd_pe_type_check.exit

vtd_pe_type_check.exit:                           ; preds = %.preheader.preheader, %bb.b, %bb.c
  %.sink2.i = phi i64 [ 64, %bb.c ], [ 70368744177664, %bb.b ], [ 140737488355328, %.preheader.preheader ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4216
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, %.sink2.i
  %.not33 = icmp eq i64 %i.j, 0
  br i1 %.not33, label %vtd_pe_type_check.exit.thread, label %bb.d

bb.d:                                             ; preds = %vtd_pe_type_check.exit
  %i.k = trunc nuw nsw i64 %i.g to i32
  switch i32 %i.k, label %bb.g [
    i32 2, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = lshr i64 %.val, 2
  %i.m = and i64 %i.l, 7
  %i.n = getelementptr i8, ptr %0, i64 4208
  %.val31 = load i64, ptr %i.n, align 16
  %i.o = shl nuw nsw i64 256, %i.m
  %i.p = and i64 %i.o, 7936
  %i.q = and i64 %i.p, %.val31
  %.not34 = icmp eq i64 %i.q, 0
  br i1 %.not34, label %vtd_pe_type_check.exit.thread, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load i64, ptr %i.r, align 8
  %i.t = and i64 %i.s, 12
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.g, label %vtd_pe_type_check.exit.thread

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f
  br label %vtd_pe_type_check.exit.thread

vtd_pe_type_check.exit.thread:                    ; preds = %.preheader.preheader, %bb.f, %bb.e, %vtd_pe_type_check.exit, %bb.a, %bb.g
  %.030 = phi i32 [ -88, %bb.a ], [ 0, %bb.g ], [ -91, %bb.e ], [ -91, %vtd_pe_type_check.exit ], [ -91, %bb.f ], [ -91, %.preheader.preheader ]
  ret i32 %.030
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -91, 1) i32 @vtd_dev_to_context_entry(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.VTDPASIDEntry, align 8      ; 4 uses
  %5 = alloca %struct.VTDRootEntry, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !annotation !14
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 28, ptr noundef nonnull @__func__.X86_IOMMU_DEVICE) #17
  %i.b = getelementptr i8, ptr %0, i64 4176
  %.val41 = load i64, ptr %i.b, align 16
  %i.c = zext i8 %1 to i64
  %i.d = shl nuw nsw i64 %i.c, 4
  %i.e = add i64 %.val41, %i.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !13
  fence seq_cst
  %i.f = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %i.e, i64 4294967296, ptr noundef nonnull %5, i64 noundef range(i64 4, 65) 16, i1 noundef zeroext false) #17
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %trace_vtd_re_not_present.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 4184       ; 2 uses
  %.val42 = load i8, ptr %i.g, align 8, !range !15, !noundef !16
  %i.h = trunc nuw i8 %.val42 to i1               ; 3 uses
  %i.i = icmp slt i8 %2, 0
  %or.cond.i = and i1 %i.i, %i.h
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.gep.val = load i64, ptr %.sroa.gep, align 8 ; 4 uses
  %.val66 = load i64, ptr %5, align 8             ; 4 uses
  %.0.in.i = select i1 %or.cond.i, i64 %.sroa.gep.val, i64 %.val66 ; 2 uses
  %.0.i51 = trunc i64 %.0.in.i to i1
  br i1 %.0.i51, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i52 = icmp eq i32 %i.j, 0
  br i1 %.not.i52, label %trace_vtd_re_not_present.exit, label %bb.d, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.k = load i16, ptr @_TRACE_VTD_RE_NOT_PRESENT_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.k, 0
  br i1 %.not1.i, label %trace_vtd_re_not_present.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr @qemu_loglevel, align 4
  %i.m = and i32 %i.l, 32768
  %.not2.i = icmp eq i32 %i.m, 0
  br i1 %.not2.i, label %trace_vtd_re_not_present.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = zext i8 %1 to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.14, i32 noundef %i.n) #17
  br label %trace_vtd_re_not_present.exit

bb.g:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i53 = icmp eq i64 %.sroa.gep.val, 0
  br i1 %.not.i53, label %bb.i, label %vtd_root_entry_rsvd_bits_check.exit

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 6340
  %i.p = load i8, ptr %i.o, align 4
  %i.q = zext nneg i8 %i.p to i64
  %notmask.i = shl nsw i64 -1, %i.q
  %i.r = or i64 %notmask.i, 4094
  %i.s = and i64 %i.r, %.val66
  %.not11.i = icmp eq i64 %i.s, 0
  br i1 %.not11.i, label %bb.k, label %vtd_root_entry_rsvd_bits_check.exit

bb.j:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6340
  %i.u = load i8, ptr %i.t, align 4
  %i.v = zext nneg i8 %i.u to i64
  %notmask12.i = shl nsw i64 -1, %i.v
  %i.w = or i64 %notmask12.i, 4094                ; 2 uses
  %i.x = and i64 %i.w, %.val66
  %.not13.i = icmp eq i64 %i.x, 0
  %i.y = and i64 %i.w, %.sroa.gep.val
  %.not14.i = icmp eq i64 %i.y, 0
  %or.cond.i55 = select i1 %.not13.i, i1 %.not14.i, i1 false
  br i1 %or.cond.i55, label %bb.k, label %vtd_root_entry_rsvd_bits_check.exit

vtd_root_entry_rsvd_bits_check.exit:              ; preds = %bb.h, %bb.i, %bb.j
  %i.z = call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_root_entry_rsvd_bits_check.print_once_, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.vtd_root_entry_rsvd_bits_check, i64 noundef %.sroa.gep.val, i64 noundef %.val66) #17 ; 0 uses
  br label %trace_vtd_re_not_present.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aa = phi i64 [ 5, %bb.j ], [ 4, %bb.i ]
  %i.ab = phi i64 [ 32, %bb.j ], [ 16, %bb.i ]
  %i.ac = and i8 %2, 127
  %.031.i = select i1 %i.h, i8 %i.ac, i8 %2
  %.032.i = and i64 %.0.in.i, -4096
  %i.ad = zext i8 %.031.i to i64
  %i.ae = shl nuw nsw i64 %i.ad, %i.aa
  %i.af = add i64 %.032.i, %i.ae
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !13
  fence seq_cst
  %i.ag = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %i.af, i64 4294967296, ptr noundef %3, i64 noundef range(i64 8, 65) %i.ab, i1 noundef zeroext false) #17
  %.not.i57 = icmp eq i32 %i.ag, 0
  br i1 %.not.i57, label %bb.l, label %trace_vtd_re_not_present.exit

bb.l:                                             ; preds = %bb.k
  %.val46 = load i64, ptr %3, align 8
  %i.ah = trunc i64 %.val46 to i1
  br i1 %i.ah, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
end_hunk_0
begin_hunk_1_@vtd_fetch_inv_desc:bb.a

vtd_process_page_group_response_desc.exit.thread.i: ; preds = %bb.ff, %bb.fe, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.loopexit

vtd_process_page_group_response_desc.exit.i:      ; preds = %bb.fc, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.loopexit19

bb.fg:                                            ; preds = %bb.k
  %i.ql = call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_process_inv_desc.print_once_, ptr noundef nonnull @.str.147, ptr noundef nonnull @__func__.vtd_process_inv_desc, i64 noundef %i.cp, i64 noundef %i.ci) #17 ; 0 uses
  br label %.loopexit19

.loopexit19:                                      ; preds = %vtd_process_wait_desc.exit.i, %bb.fg, %bb.j, %._crit_edge.i.i120.i, %._crit_edge.i.i.i, %vtd_process_pasid_desc.exit.i, %._crit_edge.i.i31.i, %._crit_edge.i.i74.i, %bb.bp, %bb.ed, %vtd_process_page_group_response_desc.exit.i, %._crit_edge1.i.i105.i, %._crit_edge1.i.i126.i, %bb.y, %._crit_edge1.i.i.i, %bb.ak, %bb.am, %._crit_edge1.i.i35.i, %bb.cd, %bb.ca, %._crit_edge1.i.i62.i, %bb.dl, %._crit_edge1.i.i82.i, %._crit_edge1.i.i97.i, %._crit_edge.i.i92.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 1972 ; 2 uses
  %.val.i.i15 = load i32, ptr %i.qm, align 4      ; 2 uses
  %i.qn = or i32 %.val.i.i15, 16
  store i32 %i.qn, ptr %i.qm, align 4
  call fastcc void @vtd_generate_fault_event(ptr noundef nonnull %0, i32 noundef %.val.i.i15)
  br label %.loopexit18

.loopexit:                                        ; preds = %bb.ei, %bb.eg, %vtd_process_page_group_response_desc.exit.thread.i, %do_invalidate_device_tlb.exit.i123.i, %bb.et, %do_invalidate_device_tlb.exit35.i.i, %bb.ej, %bb.ee, %vtd_process_inv_iec_desc.exit.i, %vtd_process_wait_desc.exit.i, %vtd_piotlb_page_invalidate.exit.i.i, %vtd_piotlb_pasid_invalidate.exit.i.i, %vtd_process_pasid_desc.exit.thread.i, %bb.al, %bb.ai, %bb.ah, %bb.x, %trace_vtd_inv_desc_cc_domain.exit.i.i
  %i.qo = load i16, ptr %i.m, align 2
  %i.qp = add i16 %i.qo, 1                        ; 2 uses
  %i.qq = load i16, ptr %i.k, align 8
  %i.qr = icmp eq i16 %i.qp, %i.qq
  %spec.store.select.i = select i1 %i.qr, i16 0, i16 %i.qp ; 4 uses
  store i16 %spec.store.select.i, ptr %i.m, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.qs = zext i16 %spec.store.select.i to i64
  %i.qt = shl nuw nsw i64 %i.qs, %i.bj
  %i.qu = and i64 %i.qt, 524272
  store i64 %i.qu, ptr %i.bk, align 16
  %i.qv = load i16, ptr %i.i, align 4
  %.not13 = icmp eq i16 %spec.store.select.i, %i.qv
  br i1 %.not13, label %.loopexit18, label %bb.f, !llvm.loop !38

.loopexit18:                                      ; preds = %.loopexit, %.preheader, %.loopexit19, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vtd_context_global_invalidate(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.VTDPASIDCacheInfo, align 4  ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %2 = alloca %struct._GHashTableIter, align 8    ; 6 uses
  %i.b = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %trace_vtd_inv_desc_cc_global.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr @_TRACE_VTD_INV_DESC_CC_GLOBAL_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.c, 0
  br i1 %.not1.i, label %trace_vtd_inv_desc_cc_global.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @qemu_loglevel, align 4
  %i.e = and i32 %i.d, 32768
  %.not2.i = icmp eq i32 %i.e, 0
  br i1 %.not2.i, label %trace_vtd_inv_desc_cc_global.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.157) #17
  br label %trace_vtd_inv_desc_cc_global.exit

trace_vtd_inv_desc_cc_global.exit:                ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.f = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6344 ; 4 uses
  tail call void %i.f(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.1, i32 noundef 187) #17, !inline_history !0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4224 ; 3 uses
  %i.i = load i32, ptr %i.h, align 16
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %i.h, align 16
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.e, label %bb.i

bb.e:                                             ; preds = %trace_vtd_inv_desc_cc_global.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.l = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %trace_vtd_context_cache_reset.exit.i, label %bb.f, !prof !17

bb.f:                                             ; preds = %bb.e
  %i.m = load i16, ptr @_TRACE_VTD_CONTEXT_CACHE_RESET_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.m, 0
  br i1 %.not1.i.i, label %trace_vtd_context_cache_reset.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load i32, ptr @qemu_loglevel, align 4
  %i.o = and i32 %i.n, 32768
  %.not2.i.i = icmp eq i32 %i.o, 0
  br i1 %.not2.i.i, label %trace_vtd_context_cache_reset.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.58) #17
  br label %trace_vtd_context_cache_reset.exit.i

trace_vtd_context_cache_reset.exit.i:             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  store ptr null, ptr %i.a, align 8, !annotation !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !14
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4240
  %i.q = load ptr, ptr %i.p, align 16
  call void @g_hash_table_iter_init(ptr noundef nonnull %2, ptr noundef %i.q) #17
  %i.r = call i32 @g_hash_table_iter_next(ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull %i.a) #17
  %.not2.i8 = icmp eq i32 %i.r, 0
  br i1 %.not2.i8, label %vtd_reset_context_cache_locked.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %trace_vtd_context_cache_reset.exit.i, %.lr.ph.i
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1560
  store i32 0, ptr %i.t, align 8
  %i.u = call i32 @g_hash_table_iter_next(ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull %i.a) #17
  %.not.i9 = icmp eq i32 %i.u, 0
  br i1 %.not.i9, label %vtd_reset_context_cache_locked.exit, label %.lr.ph.i, !llvm.loop !3

vtd_reset_context_cache_locked.exit:              ; preds = %.lr.ph.i, %trace_vtd_context_cache_reset.exit.i
  store i32 1, ptr %i.h, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.i

bb.i:                                             ; preds = %vtd_reset_context_cache_locked.exit, %trace_vtd_inv_desc_cc_global.exit
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.1, i32 noundef 192) #17
  call fastcc void @vtd_address_space_refresh_all(ptr noundef nonnull %0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 6296
  %.04.i = load ptr, ptr %i.v, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %.04.i, null
  br i1 %.not5.i, label %vtd_iommu_replay_all.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %bb.i, %.lr.ph.i10
  %.06.i = phi ptr [ %.0.i, %.lr.ph.i10 ], [ %.04.i, %bb.i ] ; 2 uses
  call fastcc void @vtd_address_space_sync(ptr noundef nonnull %.06.i)
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i, i64 1672
  %.0.i = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not.i11 = icmp eq ptr %.0.i, null
  br i1 %.not.i11, label %vtd_iommu_replay_all.exit, label %.lr.ph.i10, !llvm.loop !5

vtd_iommu_replay_all.exit:                        ; preds = %.lr.ph.i10, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) @__const.vtd_replay_pasid_bindings_all.pc_info, i64 12, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4184
  %i.y = load i8, ptr %i.x, align 8, !range !15, !noundef !16
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.j, label %vtd_replay_pasid_bindings_all.exit

bb.j:                                             ; preds = %vtd_iommu_replay_all.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4185
  %i.ab = load i8, ptr %i.aa, align 1, !range !15, !noundef !16
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.k, label %vtd_replay_pasid_bindings_all.exit

bb.k:                                             ; preds = %bb.j
  %i.ad = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  call void %i.ad(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.1, i32 noundef 187) #17, !inline_history !4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4240
  %i.af = load ptr, ptr %i.ae, align 16
  call void @g_hash_table_foreach(ptr noundef %i.af, ptr noundef nonnull @vtd_pasid_cache_sync_locked, ptr noundef nonnull %1) #17
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.1, i32 noundef 192) #17
  call void @vtd_accel_pasid_cache_sync(ptr noundef nonnull %0, ptr noundef nonnull %1) #17
  br label %vtd_replay_pasid_bindings_all.exit

vtd_replay_pasid_bindings_all.exit:               ; preds = %vtd_iommu_replay_all.exit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vtd_context_device_invalidate(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext range(i16 0, 4) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.VTDPASIDCacheInfo, align 4  ; 5 uses
  %4 = alloca %struct._GHashTableIter, align 8    ; 6 uses
  %i.a = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %switch.lookup, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr @_TRACE_VTD_INV_DESC_CC_DEVICES_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.c, 0
  br i1 %.not2.i, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @qemu_loglevel, align 4
  %i.e = and i32 %i.d, 32768
  %.not3.i = icmp eq i32 %i.e, 0
  br i1 %.not3.i, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = zext i16 %1 to i32
  %i.g = zext nneg i16 %2 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.158, i32 noundef %i.f, i32 noundef %i.g) #17
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = zext nneg i16 %2 to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.vtd_context_device_invalidate, i64 %i.h
  %switch.load = load i16, ptr %switch.gep, align 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false), !annotation !14
  store ptr null, ptr %i.a, align 8, !annotation !14
  %i.i = lshr i16 %1, 8
  %i.j = zext nneg i16 %i.i to i32                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4240
  %i.l = load ptr, ptr %i.k, align 16
  call void @g_hash_table_iter_init(ptr noundef nonnull %4, ptr noundef %i.l) #17
  %i.m = call i32 @g_hash_table_iter_next(ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %i.a) #17
  %.not15 = icmp eq i32 %i.m, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %switch.lookup
  %5 = and i16 %1, 255
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 6344 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.q
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = load ptr, ptr %i.n, align 16
  %i.p = call i32 @pci_bus_num(ptr noundef %i.o) #17
  %i.q = icmp eq i32 %i.p, %i.j
  br i1 %i.q, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i8, ptr %i.s, align 8               ; 3 uses
  %i.u = zext i8 %i.t to i16
  %i.v = xor i16 %5, %i.u
  %i.w = and i16 %switch.load, %i.v
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.y = lshr i8 %i.t, 3
  %i.z = and i8 %i.t, 7
  %i.aa = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i13 = icmp eq i32 %i.aa, 0
  br i1 %.not.i13, label %trace_vtd_inv_desc_cc_device.exit, label %bb.h, !prof !17

bb.h:                                             ; preds = %bb.g
  %i.ab = load i16, ptr @_TRACE_VTD_INV_DESC_CC_DEVICE_DSTATE, align 2
  %.not3.i14 = icmp eq i16 %i.ab, 0
  br i1 %.not3.i14, label %trace_vtd_inv_desc_cc_device.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i32, ptr @qemu_loglevel, align 4
  %i.ad = and i32 %i.ac, 32768
  %.not4.i = icmp eq i32 %i.ad, 0
  br i1 %.not4.i, label %trace_vtd_inv_desc_cc_device.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = zext nneg i8 %i.y to i32
  %i.af = zext nneg i8 %i.z to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.159, i32 noundef %i.j, i32 noundef %i.ae, i32 noundef %i.af) #17
  br label %trace_vtd_inv_desc_cc_device.exit

trace_vtd_inv_desc_cc_device.exit:                ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %i.ag = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  call void %i.ag(ptr noundef nonnull %6, ptr noundef nonnull @.str.1, i32 noundef 187) #17, !inline_history !0
  %i.ah = load ptr, ptr %i.a, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1560
  store i32 0, ptr %i.ai, align 8
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %6, ptr noundef nonnull @.str.1, i32 noundef 192) #17
  %i.aj = load ptr, ptr %i.a, align 8
  %i.ak = call fastcc zeroext i1 @vtd_switch_address_space(ptr noundef %i.aj) ; 0 uses
  %i.al = load ptr, ptr %i.a, align 8
  call fastcc void @vtd_address_space_sync(ptr noundef %i.al)
  %i.am = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1552
  %i.ao = load ptr, ptr %i.an, align 16           ; 3 uses
  %i.ap = load ptr, ptr %i.am, align 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load i8, ptr %i.aq, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 4166
  %i.at = load i8, ptr %i.as, align 2, !range !15, !noundef !16
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.k, label %vtd_pasid_cache_devsi.exit

bb.k:                                             ; preds = %trace_vtd_inv_desc_cc_device.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 4184
  %i.aw = load i8, ptr %i.av, align 8, !range !15, !noundef !16
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.l, label %vtd_pasid_cache_devsi.exit

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 4185
  %i.az = load i8, ptr %i.ay, align 1, !range !15, !noundef !16
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.m, label %vtd_pasid_cache_devsi.exit

bb.m:                                             ; preds = %bb.l
  %i.bb = call i32 @pci_bus_num(ptr noundef %i.ap) #17
  %i.bc = lshr i8 %i.ar, 3
  %i.bd = and i8 %i.ar, 7
  %i.be = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i, label %trace_vtd_pasid_cache_devsi.exit.i, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.bf = load i16, ptr @_TRACE_VTD_PASID_CACHE_DEVSI_DSTATE, align 2
  %.not3.i.i = icmp eq i16 %i.bf, 0
  br i1 %.not3.i.i, label %trace_vtd_pasid_cache_devsi.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = load i32, ptr @qemu_loglevel, align 4
  %i.bh = and i32 %i.bg, 32768
  %.not4.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not4.i.i, label %trace_vtd_pasid_cache_devsi.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = and i32 %i.bb, 255
  %i.bj = zext nneg i8 %i.bc to i32
  %i.bk = zext nneg i8 %i.bd to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.160, i32 noundef %i.bi, i32 noundef %i.bj, i32 noundef %i.bk) #17
  br label %trace_vtd_pasid_cache_devsi.exit.i

trace_vtd_pasid_cache_devsi.exit.i:               ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false), !annotation !14
  store i8 3, ptr %3, align 4
  call void @vtd_pasid_cache_sync_locked(ptr nonnull poison, ptr noundef nonnull %i.am, ptr noundef nonnull %3)
  br label %vtd_pasid_cache_devsi.exit

vtd_pasid_cache_devsi.exit:                       ; preds = %trace_vtd_inv_desc_cc_device.exit, %bb.k, %bb.l, %trace_vtd_pasid_cache_devsi.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.q

bb.q:                                             ; preds = %vtd_pasid_cache_devsi.exit, %bb.f, %bb.e
  %i.bl = call i32 @g_hash_table_iter_next(ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.bl, 0
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !41

._crit_edge:                                      ; preds = %bb.q, %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void
}

declare void @error_report(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vtd_iotlb_global_invalidate(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %trace_vtd_inv_desc_iotlb_global.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_VTD_INV_DESC_IOTLB_GLOBAL_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.b, 0
  br i1 %.not1.i, label %trace_vtd_inv_desc_iotlb_global.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2.i = icmp eq i32 %i.d, 0
  br i1 %.not2.i, label %trace_vtd_inv_desc_iotlb_global.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.165) #17
  br label %trace_vtd_inv_desc_iotlb_global.exit

trace_vtd_inv_desc_iotlb_global.exit:             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.e = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6344 ; 2 uses
  tail call void %i.e(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.1, i32 noundef 187) #17, !inline_history !42
  %i.g = getelementptr i8, ptr %0, i64 4232
  %.val.i = load ptr, ptr %i.g, align 8           ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %bb.e, label %vtd_reset_iotlb.exit

bb.e:                                             ; preds = %trace_vtd_inv_desc_iotlb_global.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.1, i32 noundef 375, ptr noundef nonnull @__PRETTY_FUNCTION__.vtd_reset_iotlb_locked) #19
  unreachable

vtd_reset_iotlb.exit:                             ; preds = %trace_vtd_inv_desc_iotlb_global.exit
  tail call void @g_hash_table_remove_all(ptr noundef nonnull %.val.i) #17
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.1, i32 noundef 192) #17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 6296
  %.04.i = load ptr, ptr %i.h, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %.04.i, null
  br i1 %.not5.i, label %vtd_iommu_replay_all.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %vtd_reset_iotlb.exit, %.lr.ph.i
  %.06.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.04.i, %vtd_reset_iotlb.exit ] ; 2 uses
  tail call fastcc void @vtd_address_space_sync(ptr noundef nonnull %.06.i)
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i, i64 1672
  %.0.i = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not.i2 = icmp eq ptr %.0.i, null
  br i1 %.not.i2, label %vtd_iommu_replay_all.exit, label %.lr.ph.i, !llvm.loop !5

vtd_iommu_replay_all.exit:                        ; preds = %.lr.ph.i, %vtd_reset_iotlb.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vtd_iotlb_domain_invalidate(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.VTDPASIDEntry, align 8      ; 5 uses
  %i.a = alloca i16, align 2                      ; 3 uses
  %3 = alloca %struct.VTDContextEntry, align 8    ; 6 uses
  store i16 %1, ptr %i.a, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.b = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %trace_vtd_inv_desc_iotlb_domain.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr @_TRACE_VTD_INV_DESC_IOTLB_DOMAIN_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.c, 0
  br i1 %.not1.i, label %trace_vtd_inv_desc_iotlb_domain.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @qemu_loglevel, align 4
  %i.e = and i32 %i.d, 32768
  %.not2.i = icmp eq i32 %i.e, 0
  br i1 %.not2.i, label %trace_vtd_inv_desc_iotlb_domain.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = zext i16 %1 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.166, i32 noundef %i.f) #17
  br label %trace_vtd_inv_desc_iotlb_domain.exit

trace_vtd_inv_desc_iotlb_domain.exit:             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false), !annotation !14
  %i.g = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 6344 ; 2 uses
  tail call void %i.g(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.1, i32 noundef 187) #17, !inline_history !0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4232
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call i32 @g_hash_table_foreach_remove(ptr noundef %i.j, ptr noundef nonnull @vtd_hash_remove_by_domain, ptr noundef nonnull %i.a) #17 ; 0 uses
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.1, i32 noundef 192) #17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 6296
  %.013 = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not14 = icmp eq ptr %.013, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %trace_vtd_inv_desc_iotlb_domain.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4184
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.j
  %.015 = phi ptr [ %.013, %.lr.ph ], [ %.0, %bb.j ] ; 5 uses
  %i.p = load ptr, ptr %.015, align 16
  %i.q = call i32 @pci_bus_num(ptr noundef %i.p) #17
  %i.r = trunc i32 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %.015, i64 8
  %i.t = load i8, ptr %i.s, align 8
  %i.u = call i32 @vtd_dev_to_context_entry(ptr noundef %0, i8 noundef zeroext %i.r, i8 noundef zeroext %i.t, ptr noundef nonnull %3)
  %.not12 = icmp eq i32 %i.u, 0
  br i1 %.not12, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.v = load i16, ptr %i.a, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %.015, i64 12
  %i.x = load i32, ptr %i.w, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.y = load i8, ptr %i.m, align 8, !range !15, !noundef !16
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.g, label %bb.h

end_hunk_1
begin_hunk_2_@vtd_interrupt_remap_msi:bb.a
bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.214, i64 noundef %i.c, i64 noundef range(i64 0, 4294967296) %i.f) #17
  br label %trace_vtd_ir_remap_msi_req.exit

trace_vtd_ir_remap_msi_req.exit:                  ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %trace_vtd_ir_remap_msi_req.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6312
  %i.l = load i8, ptr %i.k, align 8, !range !15, !noundef !16
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %trace_vtd_ir_remap_msi_req.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 16, i1 noundef false) #17
  br label %bb.bf

bb.i:                                             ; preds = %bb.g
  %i.n = load i64, ptr %1, align 8                ; 4 uses
  %.not63 = icmp ult i64 %i.n, 4294967296
  br i1 %.not63, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = tail call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_interrupt_remap_msi.print_once_, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.vtd_interrupt_remap_msi, i64 noundef %i.n) #17 ; 0 uses
  br i1 %4, label %bb.k, label %trace_vtd_ir_remap_msi.exit

bb.k:                                             ; preds = %bb.j
  %i.p = zext i16 %3 to i64                       ; 2 uses
  %i.q = or disjoint i64 %i.p, 137438953472
  tail call fastcc void @vtd_report_frcd_fault(ptr noundef nonnull %0, i64 noundef range(i64 0, 65536) %i.p, i64 noundef %i.q, i64 noundef 0)
  br label %trace_vtd_ir_remap_msi.exit

bb.l:                                             ; preds = %bb.i
  %i.r = trunc nuw i64 %i.n to i32                ; 6 uses
  %.mask = and i32 %i.r, -1048576
  %.not64 = icmp eq i32 %.mask, -18874368
  br i1 %.not64, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = tail call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_interrupt_remap_msi.print_once_.208, ptr noundef nonnull @.str.209, ptr noundef nonnull @__func__.vtd_interrupt_remap_msi, i32 noundef %i.r) #17 ; 0 uses
  br i1 %4, label %bb.n, label %trace_vtd_ir_remap_msi.exit

bb.n:                                             ; preds = %bb.m
  %i.t = zext i16 %3 to i64                       ; 2 uses
  %i.u = or disjoint i64 %i.t, 137438953472
  tail call fastcc void @vtd_report_frcd_fault(ptr noundef nonnull %0, i64 noundef range(i64 0, 65536) %i.t, i64 noundef %i.u, i64 noundef 0)
  br label %trace_vtd_ir_remap_msi.exit

bb.o:                                             ; preds = %bb.l
  %i.v = and i32 %i.r, 16
  %.not65.not = icmp eq i32 %i.v, 0
  br i1 %.not65.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 16, i1 noundef false) #17
  br label %bb.bf

bb.q:                                             ; preds = %bb.o
  %i.w = shl i32 %i.r, 13
  %i.x = and i32 %i.w, 32768
  %i.y = lshr i32 %i.r, 5
  %i.z = or disjoint i32 %i.x, %i.y               ; 2 uses
  %i.aa = and i32 %i.r, 8
  %.not66 = icmp eq i32 %i.aa, 0                  ; 2 uses
  br i1 %.not66, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = load i32, ptr %i.d, align 8
  %i.ac = add i32 %i.ab, %i.z
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.055.in = phi i32 [ %i.ac, %bb.r ], [ %i.z, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.ad = and i32 %.055.in, 65535                 ; 14 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 6328
  %i.af = load i32, ptr %i.ae, align 8
  %.not.i.i = icmp ugt i32 %i.af, %i.ad
  br i1 %.not.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = tail call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_irte_get.print_once_, ptr noundef nonnull @.str.215, ptr noundef nonnull @__func__.vtd_irte_get, i32 noundef %i.ad) #17 ; 0 uses
  br i1 %4, label %bb.u, label %vtd_remap_irq_get.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.ah = zext i16 %3 to i64                      ; 2 uses
  %i.ai = zext nneg i32 %i.ad to i64
  %i.aj = shl nuw i64 %i.ai, 48
  %i.ak = or disjoint i64 %i.ah, 141733920768
  tail call fastcc void @vtd_report_frcd_fault(ptr noundef nonnull %0, i64 noundef range(i64 0, 65536) %i.ah, i64 noundef %i.ak, i64 noundef %i.aj)
  br label %vtd_remap_irq_get.exit.thread

bb.v:                                             ; preds = %bb.s
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 6320
  %i.am = load i64, ptr %i.al, align 16
  %i.an = zext nneg i32 %i.ad to i64              ; 7 uses
  %i.ao = shl nuw nsw i64 %i.an, 4
  %i.ap = add i64 %i.am, %i.ao                    ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !13
  fence seq_cst
  %i.aq = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %i.ap, i64 4294967296, ptr noundef nonnull %5, i64 noundef range(i64 4, 65) 16, i1 noundef zeroext false) #17
  %.not92.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not92.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_irte_get.print_once_.216, ptr noundef nonnull @.str.217, ptr noundef nonnull @__func__.vtd_irte_get, i32 noundef %i.ad, i64 noundef %i.ap) #17 ; 0 uses
  br i1 %4, label %bb.x, label %vtd_remap_irq_get.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.as = zext i16 %3 to i64                      ; 2 uses
  %i.at = shl nuw i64 %i.an, 48
  %i.au = or disjoint i64 %i.as, 150323855360
  call fastcc void @vtd_report_frcd_fault(ptr noundef nonnull %0, i64 noundef range(i64 0, 65536) %i.as, i64 noundef %i.au, i64 noundef %i.at)
  br label %vtd_remap_irq_get.exit.thread

bb.y:                                             ; preds = %bb.v
  %i.av = load i64, ptr %5, align 8               ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i, label %trace_vtd_ir_irte_get.exit.i.i, label %bb.z, !prof !17

bb.z:                                             ; preds = %bb.y
  %i.az = load i16, ptr @_TRACE_VTD_IR_IRTE_GET_DSTATE, align 2
  %.not3.i.i.i = icmp eq i16 %i.az, 0
  br i1 %.not3.i.i.i, label %trace_vtd_ir_irte_get.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ba = load i32, ptr @qemu_loglevel, align 4
  %i.bb = and i32 %i.ba, 32768
  %.not4.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not4.i.i.i, label %trace_vtd_ir_irte_get.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.228, i32 noundef range(i32 0, 65536) %i.ad, i64 noundef %i.ax, i64 noundef %i.av) #17
  %.pre.i.i = load i64, ptr %5, align 8
  br label %trace_vtd_ir_irte_get.exit.i.i

trace_vtd_ir_irte_get.exit.i.i:                   ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %i.bc = phi i64 [ %i.av, %bb.y ], [ %i.av, %bb.z ], [ %i.av, %bb.aa ], [ %.pre.i.i, %bb.ab ] ; 9 uses
  %i.bd = and i64 %i.bc, 2
  %.not93.i.i = icmp eq i64 %i.bd, 0
  %spec.select.i.i = and i1 %4, %.not93.i.i       ; 5 uses
  %i.be = and i64 %i.bc, 1
  %.not94.i.i = icmp eq i64 %i.be, 0
  br i1 %.not94.i.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %trace_vtd_ir_irte_get.exit.i.i
  %i.bf = load i64, ptr %i.aw, align 8
  %i.bg = call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_irte_get.print_once_.218, ptr noundef nonnull @.str.219, ptr noundef nonnull @__func__.vtd_irte_get, i32 noundef %i.ad, i64 noundef %i.bf, i64 noundef %i.bc) #17 ; 0 uses
  br i1 %spec.select.i.i, label %bb.ad, label %vtd_remap_irq_get.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.bh = zext i16 %3 to i64                      ; 2 uses
  %i.bi = shl nuw i64 %i.an, 48
  %i.bj = or disjoint i64 %i.bh, 146028888064
  call fastcc void @vtd_report_frcd_fault(ptr noundef nonnull %0, i64 noundef range(i64 0, 65536) %i.bh, i64 noundef %i.bj, i64 noundef %i.bi)
  br label %vtd_remap_irq_get.exit.thread

bb.ae:                                            ; preds = %trace_vtd_ir_irte_get.exit.i.i
  %i.bk = and i64 %i.bc, 4278218752
  %or.cond.i.i = icmp eq i64 %i.bk, 0
  %.pre103.i.i = load i64, ptr %i.aw, align 8     ; 6 uses
  %.not97.i.i = icmp ult i64 %.pre103.i.i, 1048576
  %or.cond107.i.i = select i1 %or.cond.i.i, i1 %.not97.i.i, i1 false
  br i1 %or.cond107.i.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bl = call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_irte_get.print_once_.220, ptr noundef nonnull @.str.221, ptr noundef nonnull @__func__.vtd_irte_get, i32 noundef %i.ad, i64 noundef %.pre103.i.i, i64 noundef %i.bc) #17 ; 0 uses
  br i1 %spec.select.i.i, label %bb.ag, label %vtd_remap_irq_get.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.bm = zext i16 %3 to i64                      ; 2 uses
  %i.bn = shl nuw i64 %i.an, 48
  %i.bo = or disjoint i64 %i.bm, 154618822656
  call fastcc void @vtd_report_frcd_fault(ptr noundef nonnull %0, i64 noundef range(i64 0, 65536) %i.bm, i64 noundef %i.bo, i64 noundef %i.bn)
  br label %vtd_remap_irq_get.exit.thread

bb.ah:                                            ; preds = %bb.ae
  %i.bp = zext i16 %3 to i32                      ; 3 uses
  %.not98.i.i = icmp eq i16 %3, -1
  br i1 %.not98.i.i, label %vtd_irte_get.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bq = lshr i64 %.pre103.i.i, 18
  %i.br = trunc nuw nsw i64 %i.bq to i32
  switch i32 %i.br, label %default.unreachable [
    i32 0, label %vtd_irte_get.exit.i
    i32 1, label %bb.aj
    i32 2, label %bb.am
    i32 3, label %bb.ap
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.bs = trunc nuw nsw i64 %.pre103.i.i to i32   ; 2 uses
  %i.bt = lshr i64 %.pre103.i.i, 16
  %i.bu = and i64 %i.bt, 3
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr @switch.table.vtd_context_device_invalidate, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = zext i16 %i.bw to i32
  %i.by = xor i32 %i.bs, %i.bp
  %i.bz = and i32 %i.by, %i.bx
  %.not99.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not99.i.i, label %vtd_irte_get.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ca = and i32 %i.bs, 65535
  %i.cb = call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_irte_get.print_once_.222, ptr noundef nonnull @.str.223, ptr noundef nonnull @__func__.vtd_irte_get, i32 noundef %i.ad, i32 noundef %i.bp, i32 noundef %i.ca) #17 ; 0 uses
  br i1 %spec.select.i.i, label %bb.al, label %vtd_remap_irq_get.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.cc = zext i16 %3 to i64                      ; 2 uses
  %i.cd = shl nuw i64 %i.an, 48
  %i.ce = or disjoint i64 %i.cc, 163208757248
  call fastcc void @vtd_report_frcd_fault(ptr noundef nonnull %0, i64 noundef range(i64 0, 65536) %i.cc, i64 noundef %i.ce, i64 noundef %i.cd)
  br label %vtd_remap_irq_get.exit.thread

bb.am:                                            ; preds = %bb.ai
  %i.cf = trunc nuw nsw i64 %.pre103.i.i to i32   ; 2 uses
  %i.cg = lshr i32 %i.cf, 8
  %i.ch = lshr i16 %3, 8
  %i.ci = zext nneg i16 %i.ch to i32              ; 3 uses
  %i.cj = and i32 %i.cg, 255                      ; 2 uses
  %i.ck = icmp samesign ult i32 %i.cj, %i.ci
  %i.cl = and i32 %i.cf, 255                      ; 2 uses
  %i.cm = icmp samesign ugt i32 %i.cl, %i.ci
  %or.cond102.i.i = select i1 %i.ck, i1 true, i1 %i.cm
  br i1 %or.cond102.i.i, label %bb.an, label %vtd_irte_get.exit.i

bb.an:                                            ; preds = %bb.am
  %i.cn = call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_irte_get.print_once_.224, ptr noundef nonnull @.str.225, ptr noundef nonnull @__func__.vtd_irte_get, i32 noundef %i.ad, i32 noundef %i.ci, i32 noundef %i.cl, i32 noundef %i.cj) #17 ; 0 uses
  br i1 %spec.select.i.i, label %bb.ao, label %vtd_remap_irq_get.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.co = zext i16 %3 to i64                      ; 2 uses
  %i.cp = shl nuw i64 %i.an, 48
  %i.cq = or disjoint i64 %i.co, 163208757248
  call fastcc void @vtd_report_frcd_fault(ptr noundef nonnull %0, i64 noundef range(i64 0, 65536) %i.co, i64 noundef %i.cq, i64 noundef %i.cp)
  br label %vtd_remap_irq_get.exit.thread

default.unreachable:                              ; preds = %bb.ai
  unreachable

bb.ap:                                            ; preds = %bb.ai
  %i.cr = call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_irte_get.print_once_.226, ptr noundef nonnull @.str.227, ptr noundef nonnull @__func__.vtd_irte_get, i32 noundef %i.ad, i32 noundef 3) #17 ; 0 uses
  br i1 %spec.select.i.i, label %bb.aq, label %vtd_remap_irq_get.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.cs = zext i16 %3 to i64                      ; 2 uses
  %i.ct = shl nuw i64 %i.an, 48
  %i.cu = or disjoint i64 %i.cs, 163208757248
  call fastcc void @vtd_report_frcd_fault(ptr noundef nonnull %0, i64 noundef range(i64 0, 65536) %i.cs, i64 noundef %i.cu, i64 noundef %i.ct)
  br label %vtd_remap_irq_get.exit.thread

vtd_irte_get.exit.i:                              ; preds = %bb.am, %bb.aj, %bb.ai, %bb.ah
  %i.cv = trunc i64 %i.bc to i8                   ; 4 uses
  %i.cw = lshr i8 %i.cv, 4
  %i.cx = and i8 %i.cw, 1                         ; 2 uses
  store i8 %i.cx, ptr %6, align 4
  %i.cy = lshr i64 %i.bc, 16                      ; 3 uses
  %i.cz = trunc i64 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.cz, ptr %i.da, align 1
  %i.db = lshr i8 %i.cv, 5                        ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.db, ptr %i.dc, align 2
  %i.dd = lshr i64 %i.bc, 32
  %i.de = trunc nuw i64 %i.dd to i32              ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store i32 %i.de, ptr %i.df, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 6332
  %i.dh = load i8, ptr %i.dg, align 4, !range !15, !noundef !16
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %vtd_irte_get.exit.i
  %i.dj = lshr i64 %i.bc, 40
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = and i32 %i.dk, 255                      ; 2 uses
  store i32 %i.dl, ptr %i.df, align 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %vtd_irte_get.exit.i
  %i.dm = phi i32 [ %i.dl, %bb.ar ], [ %i.de, %vtd_irte_get.exit.i ]
  %i.dn = lshr i8 %i.cv, 2
  %i.do = and i8 %i.dn, 1                         ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.do, ptr %i.dp, align 4
  %i.dq = lshr i8 %i.cv, 3
  %i.dr = and i8 %i.dq, 1
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 9
  store i8 %i.dr, ptr %i.ds, align 1
  %i.dt = zext nneg i8 %i.cx to i32               ; 3 uses
  %i.du = trunc i64 %i.cy to i32
  %i.dv = and i32 %i.du, 255
  %i.dw = zext nneg i8 %i.db to i32
  %i.dx = zext nneg i8 %i.do to i32
  %i.dy = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i19.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i19.i, label %bb.aw, label %bb.at, !prof !17

bb.at:                                            ; preds = %bb.as
  %i.dz = load i16, ptr @_TRACE_VTD_IR_REMAP_DSTATE, align 2
  %.not6.i.i = icmp eq i16 %i.dz, 0
  br i1 %.not6.i.i, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ea = load i32, ptr @qemu_loglevel, align 4
  %i.eb = and i32 %i.ea, 32768
  %.not7.i.i = icmp eq i32 %i.eb, 0
  br i1 %.not7.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.229, i32 noundef range(i32 0, 65536) %i.ad, i32 noundef range(i32 0, 256) %i.dt, i32 noundef range(i32 0, 256) %i.dv, i32 noundef range(i32 0, 256) %i.dw, i32 noundef %i.dm, i32 noundef range(i32 0, 256) %i.dx) #17
  br label %bb.aw

vtd_remap_irq_get.exit.thread:                    ; preds = %bb.w, %bb.t, %bb.ac, %bb.ap, %bb.af, %bb.ak, %bb.an, %bb.u, %bb.x, %bb.ad, %bb.ag, %bb.al, %bb.ao, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %trace_vtd_ir_remap_msi.exit

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br i1 %.not66, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call fastcc void @trace_vtd_ir_remap_type(ptr noundef nonnull @.str.210)
  %i.ec = load i32, ptr %i.d, align 8             ; 2 uses
  %.not69 = icmp ult i32 %i.ec, 65536
  br i1 %.not69, label %bb.be, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ed = load i64, ptr %1, align 8
  %i.ee = call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_interrupt_remap_msi.print_once_.211, ptr noundef nonnull @.str.212, ptr noundef nonnull @__func__.vtd_interrupt_remap_msi, i32 noundef %i.bp, i64 noundef %i.ed, i32 noundef %i.ec) #17 ; 0 uses
  br i1 %4, label %bb.az, label %trace_vtd_ir_remap_msi.exit

bb.az:                                            ; preds = %bb.ay
  %i.ef = zext i16 %3 to i64                      ; 2 uses
  %i.eg = or disjoint i64 %i.ef, 137438953472
  call fastcc void @vtd_report_frcd_fault(ptr noundef nonnull %0, i64 noundef range(i64 0, 65536) %i.ef, i64 noundef %i.eg, i64 noundef 0)
  br label %trace_vtd_ir_remap_msi.exit

bb.ba:                                            ; preds = %bb.aw
  %i.eh = load i32, ptr %i.d, align 8             ; 2 uses
  %i.ei = lshr i32 %i.eh, 15
  %i.ej = and i32 %i.ei, 1                        ; 2 uses
  call fastcc void @trace_vtd_ir_remap_type(ptr noundef nonnull @.str.213)
  %i.ek = and i32 %i.eh, 255                      ; 2 uses
  %i.el = trunc i64 %i.cy to i32
  %i.em = and i32 %i.el, 255                      ; 2 uses
  %.not67 = icmp eq i32 %i.ek, %i.em
  br i1 %.not67, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call fastcc void @trace_vtd_warn_ir_vector(i16 noundef zeroext %3, i32 noundef %i.ad, i32 noundef %i.ek, i32 noundef %i.em)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.not68 = icmp eq i32 %i.ej, %i.dt
  br i1 %.not68, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call fastcc void @trace_vtd_warn_ir_trigger(i16 noundef zeroext %3, i32 noundef %i.ad, i32 noundef %i.ej, i32 noundef %i.dt)
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd, %bb.ax
  %i.en = trunc i64 %i.n to i8
  %i.eo = and i8 %i.en, 3
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 10
  store i8 %i.eo, ptr %i.ep, align 2
  call void @x86_iommu_irq_to_msi_message(ptr noundef nonnull %6, ptr noundef nonnull %2) #17
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.p, %bb.h
  %i.eq = load i64, ptr %1, align 8
  %i.er = load i32, ptr %i.d, align 8
  %i.es = zext i32 %i.er to i64
  %i.et = load i64, ptr %2, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ev = load i32, ptr %i.eu, align 8
  %i.ew = zext i32 %i.ev to i64
  %i.ex = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i70 = icmp eq i32 %i.ex, 0
  br i1 %.not.i70, label %trace_vtd_ir_remap_msi.exit, label %bb.bg, !prof !17

bb.bg:                                            ; preds = %bb.bf
  %i.ey = load i16, ptr @_TRACE_VTD_IR_REMAP_MSI_DSTATE, align 2
  %.not4.i = icmp eq i16 %i.ey, 0
  br i1 %.not4.i, label %trace_vtd_ir_remap_msi.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ez = load i32, ptr @qemu_loglevel, align 4
  %i.fa = and i32 %i.ez, 32768
  %.not5.i = icmp eq i32 %i.fa, 0
  br i1 %.not5.i, label %trace_vtd_ir_remap_msi.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.233, i64 noundef %i.eq, i64 noundef range(i64 0, 4294967296) %i.es, i64 noundef %i.et, i64 noundef range(i64 0, 4294967296) %i.ew) #17
  br label %trace_vtd_ir_remap_msi.exit
end_hunk_2
