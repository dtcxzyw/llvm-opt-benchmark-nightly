Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/smmu-common?download=true
inline.NumInlined: 118
inline.NumDeleted: 47
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AddressSpace = type { %struct.rcu_head, ptr, ptr, ptr, i32, i32, ptr, %union.anon.3, %union.anon.4, i64, i64, %struct.QemuMutex, %struct.anon.5 }
%struct.rcu_head = type { ptr, ptr }
%union.anon.3 = type { %struct.QTailQLink }
%struct.QTailQLink = type { ptr, ptr }
%union.anon.4 = type { %struct.QTailQLink }
%struct.QemuMutex = type { %union.pthread_mutex_t, i8 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.anon.5 = type { ptr }
%struct.PropertyInfo = type { ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.9 = type { i64 }
%struct.PCIIOMMUOps = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SMMUIOTLBKey = type { i64, i32, i32, i8, i8 }
%struct.SMMUSIDRange = type { i32, i32 }
%struct.SMMUIOTLBPageInvInfo = type { i32, i32, i64, i64 }
%struct.SMMUTLBEntry = type { %struct.IOMMUTLBEntry, i8, i8, i32 }
%struct.IOMMUTLBEntry = type { ptr, i64, i64, i64, i32, i32 }
%struct.SMMUTransTableInfo = type { i8, i64, i8, i8, i8 }
%struct._GHashTableIter = type { ptr, ptr, ptr, i32, i32, ptr }

@smmu_init_sdev.index = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s-%d-%d\00", align 1
@trace_events_enabled_count = external local_unnamed_addr global i32, align 4
@_TRACE_SMMU_IOTLB_LOOKUP_HIT_DSTATE = external local_unnamed_addr global i16, align 2
@.str.1 = private unnamed_addr constant [93 x i8] c"smmu_iotlb_lookup_hit IOTLB cache HIT asid=%d vmid=%d addr=0x%lx hit=%d miss=%d hit rate=%d\0A\00", align 1
@qemu_loglevel = external local_unnamed_addr global i32, align 4
@_TRACE_SMMU_IOTLB_LOOKUP_MISS_DSTATE = external local_unnamed_addr global i16, align 2
@.str.2 = private unnamed_addr constant [95 x i8] c"smmu_iotlb_lookup_miss IOTLB cache MISS asid=%d vmid=%d addr=0x%lx hit=%d miss=%d hit rate=%d\0A\00", align 1
@_TRACE_SMMU_IOTLB_INSERT_DSTATE = external local_unnamed_addr global i16, align 2
@.str.3 = private unnamed_addr constant [70 x i8] c"smmu_iotlb_insert IOTLB ++ asid=%d vmid=%d addr=0x%lx tg=%d level=%d\0A\00", align 1
@_TRACE_SMMU_IOTLB_INV_ALL_DSTATE = external local_unnamed_addr global i16, align 2
@.str.4 = private unnamed_addr constant [41 x i8] c"smmu_iotlb_inv_all IOTLB invalidate all\0A\00", align 1
@_TRACE_SMMU_CONFIGS_INV_SID_RANGE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.5 = private unnamed_addr constant [73 x i8] c"smmu_configs_inv_sid_range Config cache INV SID range from 0x%x to 0x%x\0A\00", align 1
@_TRACE_SMMU_CONFIG_CACHE_INV_DSTATE = external local_unnamed_addr global i16, align 2
@.str.6 = private unnamed_addr constant [53 x i8] c"smmu_config_cache_inv Config cache INV for sid=0x%x\0A\00", align 1
@_TRACE_SMMU_IOTLB_INV_ASID_VMID_DSTATE = external local_unnamed_addr global i16, align 2
@.str.7 = private unnamed_addr constant [59 x i8] c"smmu_iotlb_inv_asid_vmid IOTLB invalidate asid=%d vmid=%d\0A\00", align 1
@_TRACE_SMMU_IOTLB_INV_VMID_DSTATE = external local_unnamed_addr global i16, align 2
@.str.8 = private unnamed_addr constant [46 x i8] c"smmu_iotlb_inv_vmid IOTLB invalidate vmid=%d\0A\00", align 1
@_TRACE_SMMU_IOTLB_INV_VMID_S1_DSTATE = external local_unnamed_addr global i16, align 2
@.str.9 = private unnamed_addr constant [49 x i8] c"smmu_iotlb_inv_vmid_s1 IOTLB invalidate vmid=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"start >= 0 && length > 0 && length <= 64 - start\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"/opt-bench/work/qemu/qemu/include/qemu/bitops.h\00", align 1
@__PRETTY_FUNCTION__.extract64 = private unnamed_addr constant [39 x i8] c"uint64_t extract64(uint64_t, int, int)\00", align 1
@__PRETTY_FUNCTION__.sextract64 = private unnamed_addr constant [39 x i8] c"int64_t sextract64(uint64_t, int, int)\00", align 1
@address_space_memory = external global %struct.AddressSpace, align 8
@_TRACE_SMMU_GET_PTE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.12 = private unnamed_addr constant [66 x i8] c"smmu_get_pte baseaddr=0x%lx index=0x%x, pteaddr=0x%lx, pte=0x%lx\0A\00", align 1
@_TRACE_SMMU_PTW_LEVEL_DSTATE = external local_unnamed_addr global i16, align 2
@.str.13 = private unnamed_addr constant [100 x i8] c"smmu_ptw_level stage=%d level=%d iova=0x%lx subpage_sz=0x%zx baseaddr=0x%lx offset=%d => pte=0x%lx\0A\00", align 1
@_TRACE_SMMU_PTW_INVALID_PTE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.14 = private unnamed_addr constant [83 x i8] c"smmu_ptw_invalid_pte stage=%d level=%d base@=0x%lx pte@=0x%lx offset=%d pte=0x%lx\0A\00", align 1
@_TRACE_SMMU_PTW_PAGE_PTE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.15 = private unnamed_addr constant [102 x i8] c"smmu_ptw_page_pte stage=%d level=%d iova=0x%lx base@=0x%lx pte@=0x%lx pte=0x%lx page address = 0x%lx\0A\00", align 1
@_TRACE_SMMU_PTW_BLOCK_PTE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.16 = private unnamed_addr constant [124 x i8] c"smmu_ptw_block_pte stage=%d level=%d base@=0x%lx pte@=0x%lx pte=0x%lx iova=0x%lx block address = 0x%lx block size = %d MiB\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"memory-region\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"/opt-bench/work/qemu/qemu/include/system/memory.h\00", align 1
@__func__.MEMORY_REGION = private unnamed_addr constant [14 x i8] c"MEMORY_REGION\00", align 1
@_TRACE_SMMU_ADD_MR_DSTATE = external local_unnamed_addr global i16, align 2
@.str.19 = private unnamed_addr constant [16 x i8] c"smmu_add_mr %s\0A\00", align 1
@_TRACE_SMMU_INV_NOTIFIERS_MR_DSTATE = external local_unnamed_addr global i16, align 2
@.str.20 = private unnamed_addr constant [35 x i8] c"smmu_inv_notifiers_mr iommu mr=%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"arm-smmu\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"sys-bus-device\00", align 1
@smmu_base_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.21, ptr @.str.22, i64 3552, i64 0, ptr null, ptr null, ptr null, i8 1, [7 x i8] zeroinitializer, i64 200, ptr @smmu_base_class_init, ptr null, ptr null, ptr null }, align 8
@.str.24 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/qdev.h\00", align 1
@__func__.DEVICE_CLASS = private unnamed_addr constant [13 x i8] c"DEVICE_CLASS\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"resettable\00", align 1
@.str.27 = private unnamed_addr constant [55 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/resettable.h\00", align 1
@__func__.RESETTABLE_CLASS = private unnamed_addr constant [17 x i8] c"RESETTABLE_CLASS\00", align 1
@.str.28 = private unnamed_addr constant [55 x i8] c"/opt-bench/work/qemu/qemu/include/hw/arm/smmu-common.h\00", align 1
@__func__.ARM_SMMU_CLASS = private unnamed_addr constant [15 x i8] c"ARM_SMMU_CLASS\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"bus_num\00", align 1
@qdev_prop_uint8 = external constant %struct.PropertyInfo, align 8
@.str.30 = private unnamed_addr constant [13 x i8] c"smmu_per_bus\00", align 1
@qdev_prop_bool = external constant %struct.PropertyInfo, align 8
@.str.31 = private unnamed_addr constant [12 x i8] c"primary-bus\00", align 1
@qdev_prop_link = external constant %struct.PropertyInfo, align 8
@.str.32 = private unnamed_addr constant [4 x i8] c"PCI\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"secure-memory\00", align 1
@smmu_dev_properties = internal constant [5 x { ptr, ptr, i64, ptr, i64, %union.anon.9, ptr, i32, i32, i8, i8, [6 x i8] }] [{ ptr, ptr, i64, ptr, i64, %union.anon.9, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.29, ptr @qdev_prop_uint8, i64 3176, ptr null, i64 0, %union.anon.9 zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon.9, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.30, ptr @qdev_prop_bool, i64 3192, ptr null, i64 0, %union.anon.9 zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon.9, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.31, ptr @qdev_prop_link, i64 3184, ptr @.str.32, i64 0, %union.anon.9 zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 0, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon.9, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.33, ptr @qdev_prop_link, i64 3200, ptr @.str.17, i64 0, %union.anon.9 zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 0, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon.9, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.34, ptr @qdev_prop_link, i64 3368, ptr @.str.17, i64 0, %union.anon.9 zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 0, [6 x i8] zeroinitializer }], align 16
@.str.36 = private unnamed_addr constant [24 x i8] c"../hw/arm/smmu-common.c\00", align 1
@__func__.smmu_base_realize = private unnamed_addr constant [18 x i8] c"smmu_base_realize\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"SMMU is not attached to any PCI bus!\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"s->memory\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"smmu-memory-view\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"smmu-secure-memory-view\00", align 1
@smmu_ops = internal constant %struct.PCIIOMMUOps { ptr null, ptr @smmu_find_add_as, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.41 = private unnamed_addr constant [16 x i8] c"pci-host-bridge\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"pxb-pcie-bus\00", align 1
@.str.43 = private unnamed_addr constant [96 x i8] c"SMMU should be attached to a default PCIe root complex(pcie.0) or a pxb-pcie based root complex\00", align 1
@__func__.ARM_SMMU = private unnamed_addr constant [9 x i8] c"ARM_SMMU\00", align 1
@__func__.ARM_SMMU_GET_CLASS = private unnamed_addr constant [19 x i8] c"ARM_SMMU_GET_CLASS\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_smmu_base_register_types, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local void @smmu_get_iotlb_key(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.SMMUIOTLBKey) align 8 captures(none) initializes((0, 24)) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  store i64 %3, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %4, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %5, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.e, i8 0, i64 6, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @smmu_iotlb_lookup(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.SMMUIOTLBKey, align 8       ; 9 uses
  %5 = alloca %struct.SMMUIOTLBKey, align 8       ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 17 ; 5 uses
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = zext i8 %i.b to i16
  %.lhs.trunc.i = add nsw i16 %i.c, -10
  %i.d = sdiv i16 %.lhs.trunc.i, 2
  %i.e = trunc nsw i16 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = sub i8 64, %i.g
  %i.i = add i8 %i.b, -3
  %i.j = zext i8 %i.h to i16
  %.lhs.trunc23.i = add nsw i16 %i.j, -4
  %.rhs.trunc.i = zext i8 %i.i to i16
  %i.k = sdiv i16 %.lhs.trunc23.i, %.rhs.trunc.i
  %6 = trunc i16 %i.k to i8
  %7 = sub i8 4, %6                               ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 17
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %umax.i = tail call i8 @llvm.umax.i8(i8 %7, i8 4)
  %wide.trip.count.i = zext i8 %umax.i to i32
  %exitcond.not.i75 = icmp ugt i8 %7, 3
  br i1 %exitcond.not.i75, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = zext nneg i8 %7 to i32
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i76, 1 ; 2 uses
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.i76 = phi i32 [ %i.o, %.lr.ph ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.p = load i8, ptr %i.a, align 1
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = sub nuw nsw i32 3, %indvars.iv.i76
  %i.s = add nsw i32 %i.q, -3
  %i.t = mul nsw i32 %i.s, %i.r
  %i.u = add nsw i32 %i.t, %i.q
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i = shl nsw i64 -1, %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.w = load i32, ptr %i.l, align 4
  %i.x = load i32, ptr %i.m, align 8
  %i.y = and i64 %notmask.i, %3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.8.0..sroa_idx.i, i8 0, i64 6, i1 false)
  store i64 %i.y, ptr %5, align 8
  store i32 %i.w, ptr %.sroa.4.0..sroa_idx.i, align 8
  store i32 %i.x, ptr %.sroa.5.0..sroa_idx.i, align 4
  store i8 %i.e, ptr %.sroa.6.0..sroa_idx.i, align 8
  %i.z = trunc nuw i32 %indvars.iv.i76 to i8
  store i8 %i.z, ptr %.sroa.7.0..sroa_idx.i, align 1
  %i.aa = load ptr, ptr %i.n, align 16
  %i.ab = call ptr @g_hash_table_lookup(ptr noundef %i.aa, ptr noundef nonnull %5) #10 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br i1 %.not.i, label %bb.b, label %smmu_iotlb_lookup_all_levels.exit

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ac = load i32, ptr %1, align 8
  %i.ad = icmp eq i32 %i.ac, 3
  br i1 %i.ad, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.af = load i8, ptr %i.ae, align 4             ; 4 uses
  %i.ag = load i8, ptr %i.a, align 1
  %.not34 = icmp eq i8 %i.af, %i.ag
  br i1 %.not34, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 %i.af, ptr %i.a, align 1
  %i.ah = zext i8 %i.af to i16
  %.lhs.trunc.i36 = add nsw i16 %i.ah, -10
  %i.ai = sdiv i16 %.lhs.trunc.i36, 2
  %i.aj = trunc nsw i16 %i.ai to i8
  %i.ak = load i8, ptr %i.f, align 8
  %i.al = sub i8 64, %i.ak
  %i.am = add i8 %i.af, -3
  %i.an = zext i8 %i.al to i16
  %.lhs.trunc23.i37 = add nsw i16 %i.an, -4
  %.rhs.trunc.i38 = zext i8 %i.am to i16
  %i.ao = sdiv i16 %.lhs.trunc23.i37, %.rhs.trunc.i38
  %8 = trunc i16 %i.ao to i8
  %9 = sub i8 4, %8                               ; 3 uses
  %.sroa.4.0..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.5.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.6.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.7.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %4, i64 17
  %.sroa.8.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %4, i64 18
  %umax.i44 = call i8 @llvm.umax.i8(i8 %9, i8 4)
  %wide.trip.count.i45 = zext i8 %umax.i44 to i32
  %exitcond.not.i4777 = icmp ugt i8 %9, 3
  br i1 %exitcond.not.i4777, label %.loopexit, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.e
  %i.ap = zext nneg i8 %9 to i32
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i50 = add nuw nsw i32 %indvars.iv.i4678, 1 ; 2 uses
  %exitcond.not.i47 = icmp eq i32 %indvars.iv.next.i50, %wide.trip.count.i45
  br i1 %exitcond.not.i47, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph80, %bb.f
  %indvars.iv.i4678 = phi i32 [ %i.ap, %.lr.ph80 ], [ %indvars.iv.next.i50, %bb.f ] ; 3 uses
  %i.aq = load i8, ptr %i.a, align 1
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %i.as = sub nuw nsw i32 3, %indvars.iv.i4678
  %i.at = add nsw i32 %i.ar, -3
  %i.au = mul nsw i32 %i.at, %i.as
  %i.av = add nsw i32 %i.au, %i.ar
  %i.aw = zext nneg i32 %i.av to i64
  %notmask.i48 = shl nsw i64 -1, %i.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.ax = load i32, ptr %i.l, align 4
  %i.ay = load i32, ptr %i.m, align 8
  %i.az = and i64 %notmask.i48, %3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.8.0..sroa_idx.i43, i8 0, i64 6, i1 false)
  store i64 %i.az, ptr %4, align 8
  store i32 %i.ax, ptr %.sroa.4.0..sroa_idx.i39, align 8
  store i32 %i.ay, ptr %.sroa.5.0..sroa_idx.i40, align 4
  store i8 %i.aj, ptr %.sroa.6.0..sroa_idx.i41, align 8
  %i.ba = trunc nuw i32 %indvars.iv.i4678 to i8
  store i8 %i.ba, ptr %.sroa.7.0..sroa_idx.i42, align 1
  %i.bb = load ptr, ptr %i.n, align 16
  %i.bc = call ptr @g_hash_table_lookup(ptr noundef %i.bb, ptr noundef nonnull %4) #10 ; 2 uses
  %.not.i49 = icmp eq ptr %i.bc, null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br i1 %.not.i49, label %bb.f, label %smmu_iotlb_lookup_all_levels.exit

smmu_iotlb_lookup_all_levels.exit:                ; preds = %bb.c, %bb.g
  %.0 = phi ptr [ %i.bc, %bb.g ], [ %i.ab, %bb.c ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = add i32 %i.be, 1                        ; 4 uses
  store i32 %i.bf, ptr %i.bd, align 8
  %i.bg = load i32, ptr %i.l, align 4
  %i.bh = load i32, ptr %i.m, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %i.bk = mul i32 %i.bf, 100
  %i.bl = add i32 %i.bj, %i.bf
  %i.bm = udiv i32 %i.bk, %i.bl
  %i.bn = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i53 = icmp eq i32 %i.bn, 0
  br i1 %.not.i53, label %trace_smmu_iotlb_lookup_hit.exit, label %bb.h, !prof !7

bb.h:                                             ; preds = %smmu_iotlb_lookup_all_levels.exit
  %i.bo = load i16, ptr @_TRACE_SMMU_IOTLB_LOOKUP_HIT_DSTATE, align 2
  %.not6.i = icmp eq i16 %i.bo, 0
  br i1 %.not6.i, label %trace_smmu_iotlb_lookup_hit.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = load i32, ptr @qemu_loglevel, align 4
  %i.bq = and i32 %i.bp, 32768
  %.not7.i = icmp eq i32 %i.bq, 0
  br i1 %.not7.i, label %trace_smmu_iotlb_lookup_hit.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.1, i32 noundef %i.bg, i32 noundef %i.bh, i64 noundef %3, i32 noundef %i.bf, i32 noundef %i.bj, i32 noundef %i.bm) #10
  br label %trace_smmu_iotlb_lookup_hit.exit

.loopexit:                                        ; preds = %bb.f, %bb.e, %._crit_edge, %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = add i32 %i.bs, 1                        ; 3 uses
  store i32 %i.bt, ptr %i.br, align 4
  %i.bu = load i32, ptr %i.l, align 4
  %i.bv = load i32, ptr %i.m, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = load i32, ptr %i.bw, align 8            ; 3 uses
  %i.by = mul i32 %i.bx, 100
  %i.bz = add i32 %i.bx, %i.bt
  %i.ca = udiv i32 %i.by, %i.bz
  %i.cb = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i54 = icmp eq i32 %i.cb, 0
  br i1 %.not.i54, label %trace_smmu_iotlb_lookup_hit.exit, label %bb.k, !prof !7

bb.k:                                             ; preds = %.loopexit
  %i.cc = load i16, ptr @_TRACE_SMMU_IOTLB_LOOKUP_MISS_DSTATE, align 2
  %.not6.i55 = icmp eq i16 %i.cc, 0
  br i1 %.not6.i55, label %trace_smmu_iotlb_lookup_hit.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = load i32, ptr @qemu_loglevel, align 4
  %i.ce = and i32 %i.cd, 32768
  %.not7.i56 = icmp eq i32 %i.ce, 0
  br i1 %.not7.i56, label %trace_smmu_iotlb_lookup_hit.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.2, i32 noundef %i.bu, i32 noundef %i.bv, i64 noundef %3, i32 noundef %i.bx, i32 noundef %i.bt, i32 noundef %i.ca) #10
  br label %trace_smmu_iotlb_lookup_hit.exit

trace_smmu_iotlb_lookup_hit.exit:                 ; preds = %bb.m, %bb.l, %bb.k, %.loopexit, %bb.j, %bb.i, %bb.h, %smmu_iotlb_lookup_all_levels.exit
  %.062 = phi ptr [ %.0, %bb.j ], [ %.0, %smmu_iotlb_lookup_all_levels.exit ], [ %.0, %bb.h ], [ %.0, %bb.i ], [ null, %.loopexit ], [ null, %bb.k ], [ null, %bb.l ], [ null, %bb.m ]
  ret ptr %.062
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @smmu_iotlb_insert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @g_malloc0(i64 noundef 24) #11 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 41
  %i.c = load i8, ptr %i.b, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 16
  %i.f = tail call i32 @g_hash_table_size(ptr noundef %i.e) #10
  %i.g = icmp ugt i32 %i.f, 255
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %smmu_iotlb_inv_all.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.i = load i16, ptr @_TRACE_SMMU_IOTLB_INV_ALL_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.i, 0
  br i1 %.not1.i.i, label %smmu_iotlb_inv_all.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr @qemu_loglevel, align 4
  %i.k = and i32 %i.j, 32768
  %.not2.i.i = icmp eq i32 %i.k, 0
  br i1 %.not2.i.i, label %smmu_iotlb_inv_all.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.4) #10
  br label %smmu_iotlb_inv_all.exit

smmu_iotlb_inv_all.exit:                          ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.l = load ptr, ptr %i.d, align 16
  tail call void @g_hash_table_remove_all(ptr noundef %i.l) #10
  br label %bb.f

bb.f:                                             ; preds = %smmu_iotlb_inv_all.exit, %bb.a
  %i.m = zext i8 %i.c to i16
  %.lhs.trunc = add nsw i16 %i.m, -10
  %i.n = sdiv i16 %.lhs.trunc, 2                  ; 2 uses
  %i.o = trunc nsw i16 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.w = load i8, ptr %i.v, align 8               ; 2 uses
  store i64 %i.u, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.s, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.o, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.w, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.8.0..sroa_idx, i8 0, i64 6, i1 false)
  %i.x = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %trace_smmu_iotlb_insert.exit, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.y = load i16, ptr @_TRACE_SMMU_IOTLB_INSERT_DSTATE, align 2
  %.not5.i = icmp eq i16 %i.y, 0
  br i1 %.not5.i, label %trace_smmu_iotlb_insert.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load i32, ptr @qemu_loglevel, align 4
  %i.aa = and i32 %i.z, 32768
  %.not6.i = icmp eq i32 %i.aa, 0
  br i1 %.not6.i, label %trace_smmu_iotlb_insert.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.mask = and i16 %i.n, 255
  %i.ab = zext nneg i16 %.mask to i32
  %i.ac = zext i8 %i.w to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.3, i32 noundef %i.q, i32 noundef %i.s, i64 noundef %i.u, i32 noundef %i.ab, i32 noundef %i.ac) #10
  br label %trace_smmu_iotlb_insert.exit

trace_smmu_iotlb_insert.exit:                     ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %i.ad = load ptr, ptr %i.d, align 16
  %i.ae = tail call i32 @g_hash_table_insert(ptr noundef %i.ad, ptr noundef nonnull %i.a, ptr noundef nonnull %2) #10 ; 0 uses
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #4

declare i32 @g_hash_table_size(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @smmu_iotlb_inv_all(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %trace_smmu_iotlb_inv_all.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_SMMU_IOTLB_INV_ALL_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.b, 0
  br i1 %.not1.i, label %trace_smmu_iotlb_inv_all.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2.i = icmp eq i32 %i.d, 0
  br i1 %.not2.i, label %trace_smmu_iotlb_inv_all.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.4) #10
  br label %trace_smmu_iotlb_inv_all.exit

trace_smmu_iotlb_inv_all.exit:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.f = load ptr, ptr %i.e, align 16
end_hunk_0
begin_hunk_1_@smmu_base_realize:bb.a

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @smmu_base_reset_exit(ptr noundef %0, i32 %1) #2 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.28, i32 noundef 183, ptr noundef nonnull @__func__.ARM_SMMU) #10 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %i.b, i8 noundef 0, i64 noundef 2048, i1 noundef false) #10
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @g_hash_table_remove_all(ptr noundef %i.d) #10
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  %i.f = load ptr, ptr %i.e, align 16
  tail call void @g_hash_table_remove_all(ptr noundef %i.f) #10
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @error_propagate(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @g_hash_table_new_full(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal i32 @smmu_iotlb_key_hash(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = add i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = add i32 %i.e, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i8, ptr %i.j, align 8
  %i.l = zext i8 %i.k to i32
  %i.m = add i32 %i.i, %i.l
  %i.n = load i64, ptr %0, align 8                ; 2 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = add i32 %i.o, -559038713                 ; 2 uses
  %i.q = lshr i64 %i.n, 32
  %i.r = trunc nuw i64 %i.q to i32                ; 2 uses
  %i.s = add i32 %i.r, -559038713                 ; 3 uses
  %i.t = sub i32 %i.m, %i.r
  %i.u = tail call noundef i32 @llvm.fshl.i32(i32 %i.s, i32 %i.s, i32 4)
  %i.v = xor i32 %i.u, %i.t                       ; 4 uses
  %i.w = add i32 %i.s, %i.p                       ; 2 uses
  %i.x = sub i32 %i.p, %i.v
  %i.y = tail call noundef i32 @llvm.fshl.i32(i32 %i.v, i32 %i.v, i32 6)
  %i.z = xor i32 %i.x, %i.y                       ; 4 uses
  %i.aa = add i32 %i.v, %i.w                      ; 2 uses
  %i.ab = sub i32 %i.w, %i.z
  %i.ac = tail call noundef i32 @llvm.fshl.i32(i32 %i.z, i32 %i.z, i32 8)
  %i.ad = xor i32 %i.ab, %i.ac                    ; 4 uses
  %i.ae = add i32 %i.z, %i.aa                     ; 2 uses
  %i.af = sub i32 %i.aa, %i.ad
  %i.ag = tail call noundef i32 @llvm.fshl.i32(i32 %i.ad, i32 %i.ad, i32 16)
  %i.ah = xor i32 %i.af, %i.ag                    ; 4 uses
  %i.ai = add i32 %i.ad, %i.ae                    ; 2 uses
  %i.aj = sub i32 %i.ae, %i.ah
  %i.ak = tail call noundef i32 @llvm.fshl.i32(i32 %i.ah, i32 %i.ah, i32 19)
  %i.al = xor i32 %i.aj, %i.ak                    ; 4 uses
  %i.am = add i32 %i.ah, %i.ai                    ; 2 uses
  %i.an = sub i32 %i.ai, %i.al
  %i.ao = tail call noundef i32 @llvm.fshl.i32(i32 %i.al, i32 %i.al, i32 4)
  %i.ap = xor i32 %i.an, %i.ao
  %i.aq = add i32 %i.al, %i.am                    ; 4 uses
  %i.ar = xor i32 %i.ap, %i.aq
  %i.as = tail call noundef i32 @llvm.fshl.i32(i32 %i.aq, i32 %i.aq, i32 14)
  %i.at = sub i32 %i.ar, %i.as                    ; 4 uses
  %i.au = xor i32 %i.at, %i.am
  %i.av = tail call noundef i32 @llvm.fshl.i32(i32 %i.at, i32 %i.at, i32 11)
  %i.aw = sub i32 %i.au, %i.av                    ; 4 uses
  %i.ax = xor i32 %i.aw, %i.aq
  %i.ay = tail call noundef i32 @llvm.fshl.i32(i32 %i.aw, i32 %i.aw, i32 25)
  %i.az = sub i32 %i.ax, %i.ay                    ; 4 uses
  %i.ba = xor i32 %i.az, %i.at
  %i.bb = tail call noundef i32 @llvm.fshl.i32(i32 %i.az, i32 %i.az, i32 16)
  %i.bc = sub i32 %i.ba, %i.bb                    ; 4 uses
  %i.bd = xor i32 %i.bc, %i.aw
  %i.be = tail call noundef i32 @llvm.fshl.i32(i32 %i.bc, i32 %i.bc, i32 4)
  %i.bf = sub i32 %i.bd, %i.be                    ; 3 uses
  %i.bg = xor i32 %i.bf, %i.az
  %i.bh = tail call noundef i32 @llvm.fshl.i32(i32 %i.bf, i32 %i.bf, i32 14)
  %i.bi = sub i32 %i.bg, %i.bh                    ; 3 uses
  %i.bj = xor i32 %i.bi, %i.bc
  %i.bk = tail call noundef i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 24)
  %i.bl = sub i32 %i.bj, %i.bk
  ret i32 %i.bl
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @smmu_iotlb_key_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8
  %i.g = load i64, ptr %1, align 8
  %i.h = icmp eq i64 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.j = load i8, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i8, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i8, ptr %i.p, align 8
  %i.r = icmp eq i8 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp eq i32 %i.t, %i.v
  %i.x = zext i1 %i.w to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.y = phi i32 [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.x, %bb.e ]
  ret i32 %i.y
}

declare ptr @g_hash_table_new(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare zeroext i1 @pci_bus_is_express(ptr noundef) local_unnamed_addr #5

declare ptr @object_dynamic_cast(ptr noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i1 @pci_setup_iommu_per_bus(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @pci_setup_iommu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @object_get_class(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal nonnull ptr @smmu_find_add_as(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1088 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16
  %i.c = tail call ptr @g_hash_table_lookup(ptr noundef %i.b, ptr noundef %0) #10 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %smmu_get_sbus.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(2056) ptr @g_malloc0(i64 noundef 2056) #11 ; 3 uses
  store ptr %0, ptr %i.d, align 8
  %i.e = load ptr, ptr %i.a, align 16
  %i.f = tail call i32 @g_hash_table_insert(ptr noundef %i.e, ptr noundef %0, ptr noundef nonnull %i.d) #10 ; 0 uses
  br label %smmu_get_sbus.exit

smmu_get_sbus.exit:                               ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.a ], [ %i.d, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %smmu_get_sbus.exit
  %i.k = tail call noalias dereferenceable_or_null(512) ptr @g_malloc0(i64 noundef 512) #11 ; 3 uses
  store ptr %i.k, ptr %i.i, align 8
  tail call void @smmu_init_sdev(ptr noundef nonnull %1, ptr noundef %i.k, ptr noundef %0, i32 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %smmu_get_sbus.exit
  %.024 = phi ptr [ %i.j, %smmu_get_sbus.exit ], [ %i.k, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %.024, i64 320
  ret ptr %i.l
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { noreturn nounwind }

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
!8 = !{!9}
!9 = distinct !{!9, !10, !"smmu_get_iotlb_key: argument 0"}
!10 = distinct !{!10, !"smmu_get_iotlb_key"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"smmu_get_iotlb_key: argument 0"}
!13 = distinct !{!13, !"smmu_get_iotlb_key"}
!14 = !{!"auto-init"}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = !{i64 2152728369}
!18 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!19 = distinct !{null}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_1
