Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_uc_fw?download=true
inline.NumInlined: 150
inline.NumDeleted: 66
begin_hunk_0
@__UNIQUE_ID_modinfo_810 = internal constant [35 x i8] c"i915.firmware=i915/dg2_huc_gsc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_811 = internal constant [31 x i8] c"i915.firmware=i915/tgl_huc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_812 = internal constant [37 x i8] c"i915.firmware=i915/tgl_huc_7.9.3.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_813 = internal constant [31 x i8] c"i915.firmware=i915/tgl_huc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_814 = internal constant [37 x i8] c"i915.firmware=i915/tgl_huc_7.9.3.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_815 = internal constant [31 x i8] c"i915.firmware=i915/dg1_huc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_816 = internal constant [37 x i8] c"i915.firmware=i915/tgl_huc_7.9.3.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_817 = internal constant [37 x i8] c"i915.firmware=i915/tgl_huc_7.9.3.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_818 = internal constant [37 x i8] c"i915.firmware=i915/ehl_huc_9.0.0.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_819 = internal constant [37 x i8] c"i915.firmware=i915/ehl_huc_9.0.0.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_820 = internal constant [37 x i8] c"i915.firmware=i915/icl_huc_9.0.0.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_821 = internal constant [37 x i8] c"i915.firmware=i915/cml_huc_4.0.0.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_822 = internal constant [37 x i8] c"i915.firmware=i915/kbl_huc_4.0.0.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_823 = internal constant [37 x i8] c"i915.firmware=i915/kbl_huc_4.0.0.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_824 = internal constant [37 x i8] c"i915.firmware=i915/glk_huc_4.0.0.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_825 = internal constant [37 x i8] c"i915.firmware=i915/kbl_huc_4.0.0.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_826 = internal constant [37 x i8] c"i915.firmware=i915/bxt_huc_2.0.0.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_827 = internal constant [37 x i8] c"i915.firmware=i915/skl_huc_2.0.0.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_828 = internal constant [33 x i8] c"i915.firmware=i915/mtl_gsc_1.bin\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [64 x i8] c"[drm] GT%u: %s firmware %s: unexpected version: %u.%u != %u.%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"[drm] GT%u: %s firmware %s (%d.%d.%d) is recommended, but only %s (%d.%d.%d) was found\0A\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"[drm] GT%u: Consider updating your linux-firmware pkg or downloading from %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [86 x i8] c"https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/i915\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"[drm] *ERROR* GT%u: %s firmware %s: fetch failed %pe\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"[drm] GT%u: %s firmware(s) can be downloaded from %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"[drm] *ERROR* GT%u: Failed to load %s firmware %s %pe\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"GT%u: %s fw pin-pages failed %pe\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"GT%u: %s fw rsa data creation failed %pe\0A\00", align 1
@vmemmap_base = external dso_local local_unnamed_addr global i64, align 8
@.str.9 = private unnamed_addr constant [17 x i8] c"%s firmware: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"%s firmware wanted: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"\09status: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"\09version: wanted %u.%u.%u, found %u.%u.%u\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"\09version: found %u.%u.%u\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"\09uCode: %u bytes\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"\09RSA: %u bytes\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"[drm] *ERROR* No blob array for %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [82 x i8] c"[drm] *ERROR* Duplicate %s blobs: %s r%u %s%d.%d.%d [%s] matches %s%d.%d.%d [%s]\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.20 = private unnamed_addr constant [87 x i8] c"[drm] *ERROR* Invalid %s blob order: %s r%u %s%d.%d.%d comes before %s r%u %s%d.%d.%d\0A\00", align 1
@blobs_guc = internal constant [21 x %struct.uc_fw_platform_requirement] [%struct.uc_fw_platform_requirement <{ i32 37, i8 0, %struct.uc_fw_blob <{ ptr @.str.22, i8 0, i8 70, i8 53, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 36, i8 0, %struct.uc_fw_blob <{ ptr @.str.23, i8 0, i8 70, i8 53, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 35, i8 0, %struct.uc_fw_blob <{ ptr @.str.24, i8 0, i8 70, i8 12, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 35, i8 0, %struct.uc_fw_blob <{ ptr @.str.25, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 35, i8 0, %struct.uc_fw_blob <{ ptr @.str.26, i8 1, i8 69, i8 0, i8 3, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 34, i8 0, %struct.uc_fw_blob <{ ptr @.str.27, i8 0, i8 70, i8 12, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 34, i8 0, %struct.uc_fw_blob <{ ptr @.str.28, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 34, i8 0, %struct.uc_fw_blob <{ ptr @.str.29, i8 1, i8 69, i8 0, i8 3, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 33, i8 0, %struct.uc_fw_blob <{ ptr @.str.30, i8 0, i8 70, i8 5, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 32, i8 0, %struct.uc_fw_blob <{ ptr @.str.28, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 31, i8 0, %struct.uc_fw_blob <{ ptr @.str.28, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 30, i8 0, %struct.uc_fw_blob <{ ptr @.str.31, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 29, i8 0, %struct.uc_fw_blob <{ ptr @.str.31, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 28, i8 0, %struct.uc_fw_blob <{ ptr @.str.32, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 27, i8 5, %struct.uc_fw_blob <{ ptr @.str.33, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 27, i8 0, %struct.uc_fw_blob <{ ptr @.str.34, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 26, i8 0, %struct.uc_fw_blob <{ ptr @.str.34, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 25, i8 0, %struct.uc_fw_blob <{ ptr @.str.35, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 24, i8 0, %struct.uc_fw_blob <{ ptr @.str.34, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 23, i8 0, %struct.uc_fw_blob <{ ptr @.str.36, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 22, i8 0, %struct.uc_fw_blob <{ ptr @.str.37, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>], align 16
@blobs_huc = internal constant [19 x %struct.uc_fw_platform_requirement] [%struct.uc_fw_platform_requirement <{ i32 37, i8 0, %struct.uc_fw_blob <{ ptr @.str.38, i8 0, i8 0, i8 0, i8 0, i8 1 }> }>, %struct.uc_fw_platform_requirement <{ i32 36, i8 0, %struct.uc_fw_blob <{ ptr @.str.39, i8 0, i8 0, i8 0, i8 0, i8 1 }> }>, %struct.uc_fw_platform_requirement <{ i32 35, i8 0, %struct.uc_fw_blob <{ ptr @.str.40, i8 0, i8 0, i8 0, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 35, i8 0, %struct.uc_fw_blob <{ ptr @.str.41, i8 1, i8 7, i8 9, i8 3, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 34, i8 0, %struct.uc_fw_blob <{ ptr @.str.40, i8 0, i8 0, i8 0, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 34, i8 0, %struct.uc_fw_blob <{ ptr @.str.41, i8 1, i8 7, i8 9, i8 3, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 33, i8 0, %struct.uc_fw_blob <{ ptr @.str.42, i8 0, i8 0, i8 0, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 32, i8 0, %struct.uc_fw_blob <{ ptr @.str.41, i8 1, i8 7, i8 9, i8 3, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 31, i8 0, %struct.uc_fw_blob <{ ptr @.str.41, i8 1, i8 7, i8 9, i8 3, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 30, i8 0, %struct.uc_fw_blob <{ ptr @.str.43, i8 1, i8 9, i8 0, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 29, i8 0, %struct.uc_fw_blob <{ ptr @.str.43, i8 1, i8 9, i8 0, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 28, i8 0, %struct.uc_fw_blob <{ ptr @.str.44, i8 1, i8 9, i8 0, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 27, i8 5, %struct.uc_fw_blob <{ ptr @.str.45, i8 1, i8 4, i8 0, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 27, i8 0, %struct.uc_fw_blob <{ ptr @.str.46, i8 1, i8 4, i8 0, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 26, i8 0, %struct.uc_fw_blob <{ ptr @.str.46, i8 1, i8 4, i8 0, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 25, i8 0, %struct.uc_fw_blob <{ ptr @.str.47, i8 1, i8 4, i8 0, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 24, i8 0, %struct.uc_fw_blob <{ ptr @.str.46, i8 1, i8 4, i8 0, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 23, i8 0, %struct.uc_fw_blob <{ ptr @.str.48, i8 1, i8 2, i8 0, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 22, i8 0, %struct.uc_fw_blob <{ ptr @.str.49, i8 1, i8 2, i8 0, i8 0, i8 0 }> }>], align 16
@blobs_gsc = internal constant [1 x %struct.uc_fw_platform_requirement] [%struct.uc_fw_platform_requirement <{ i32 37, i8 0, %struct.uc_fw_blob <{ ptr @.str.50, i8 0, i8 1, i8 0, i8 0, i8 1 }> }>], align 16
@blobs_all = internal unnamed_addr constant [3 x { ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8] } { ptr @blobs_guc, i32 21, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @blobs_huc, i32 19, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @blobs_gsc, i32 1, [4 x i8] zeroinitializer }], align 16
@.str.22 = private unnamed_addr constant [20 x i8] c"i915/mtl_guc_70.bin\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"i915/dg2_guc_70.bin\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"i915/adlp_guc_70.bin\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"i915/adlp_guc_70.1.1.bin\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"i915/adlp_guc_69.0.3.bin\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"i915/tgl_guc_70.bin\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"i915/tgl_guc_70.1.1.bin\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"i915/tgl_guc_69.0.3.bin\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"i915/dg1_guc_70.bin\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"i915/ehl_guc_70.1.1.bin\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"i915/icl_guc_70.1.1.bin\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"i915/cml_guc_70.1.1.bin\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"i915/kbl_guc_70.1.1.bin\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"i915/glk_guc_70.1.1.bin\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"i915/bxt_guc_70.1.1.bin\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"i915/skl_guc_70.1.1.bin\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"i915/mtl_huc_gsc.bin\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"i915/dg2_huc_gsc.bin\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"i915/tgl_huc.bin\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"i915/tgl_huc_7.9.3.bin\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"i915/dg1_huc.bin\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"i915/ehl_huc_9.0.0.bin\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"i915/icl_huc_9.0.0.bin\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"i915/cml_huc_4.0.0.bin\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"i915/kbl_huc_4.0.0.bin\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"i915/glk_huc_4.0.0.bin\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"i915/bxt_huc_2.0.0.bin\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"i915/skl_huc_2.0.0.bin\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"i915/mtl_gsc_1.bin\00", align 1
@.str.51 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.52 = private unnamed_addr constant [60 x i8] c"[drm] GT%u: HuC %u.%u.%u is incompatible with GuC %u.%u.%u\0A\00", align 1
@.str.53 = private unnamed_addr constant [75 x i8] c"[drm] GT%u: MTL GuC 70.7.0+ and HuC 8.5.1+ don't work with older releases\0A\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"GuC\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"HuC\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"GSC\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"uC\00", align 1
@.str.58 = private unnamed_addr constant [84 x i8] c"[drm] *ERROR* GT%u: %s firmware %s: size (%zuKB) exceeds max supported size (%uKB)\0A\00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"Missing case (%s == %ld)\0A\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"uc_fw->type\00", align 1
@check_gsc_manifest.__UNIQUE_ID_addressable___SCK__WARN_trap_845 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@__SCK__WARN_trap = external dso_local global %struct.static_call_key, align 8
@.str.61 = private unnamed_addr constant [41 x i8] c"drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c\00", align 1
@.str.62 = private unnamed_addr constant [53 x i8] c"[drm] GT%u: %s firmware %s: invalid size: %zu < %zu\0A\00", align 1
@.str.63 = private unnamed_addr constant [64 x i8] c"[drm] GT%u: %s firmware %s: unexpected header size: %zu != %zu\0A\00", align 1
@.str.64 = private unnamed_addr constant [53 x i8] c"[drm] GT%u: %s firmware %s: invalid size: %zu > %zu\0A\00", align 1
@.str.65 = private unnamed_addr constant [65 x i8] c"[drm] GT%u: %s firmware: invalid file version: 0x%02X:%02X:%02X\0A\00", align 1
@.str.66 = private unnamed_addr constant [67 x i8] c"[drm] GT%u: %s firmware: invalid submit version: 0x%02X:%02X:%02X\0A\00", align 1
@.str.67 = private unnamed_addr constant [55 x i8] c"[drm] *ERROR* GT%u: DMA for %s fw failed, DMA_CTRL=%u\0A\00", align 1
@page_offset_base = external dso_local local_unnamed_addr global i64, align 8
@__preempt_count = external dso_local global i32, section ".data..percpu..hot..__preempt_count", align 4
@current_task = external dso_local global ptr, section ".data..percpu..hot..current_task", align 8
@io_mapping_unmap_atomic.__UNIQUE_ID_addressable___SCK__preempt_schedule_729 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@.str.68 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"UNINITIALIZED\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"DISABLED\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"SELECTED\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"MISSING\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"AVAILABLE\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"INIT FAIL\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"LOADABLE\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"LOAD FAIL\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"TRANSFERRED\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"RUNNING\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"<invalid>\00", align 1
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_modinfo_788, ptr @__UNIQUE_ID_modinfo_789, ptr @__UNIQUE_ID_modinfo_790, ptr @__UNIQUE_ID_modinfo_791, ptr @__UNIQUE_ID_modinfo_792, ptr @__UNIQUE_ID_modinfo_793, ptr @__UNIQUE_ID_modinfo_794, ptr @__UNIQUE_ID_modinfo_795, ptr @__UNIQUE_ID_modinfo_796, ptr @__UNIQUE_ID_modinfo_797, ptr @__UNIQUE_ID_modinfo_798, ptr @__UNIQUE_ID_modinfo_799, ptr @__UNIQUE_ID_modinfo_800, ptr @__UNIQUE_ID_modinfo_801, ptr @__UNIQUE_ID_modinfo_802, ptr @__UNIQUE_ID_modinfo_803, ptr @__UNIQUE_ID_modinfo_804, ptr @__UNIQUE_ID_modinfo_805, ptr @__UNIQUE_ID_modinfo_806, ptr @__UNIQUE_ID_modinfo_807, ptr @__UNIQUE_ID_modinfo_808, ptr @__UNIQUE_ID_modinfo_809, ptr @__UNIQUE_ID_modinfo_810, ptr @__UNIQUE_ID_modinfo_811, ptr @__UNIQUE_ID_modinfo_812, ptr @__UNIQUE_ID_modinfo_813, ptr @__UNIQUE_ID_modinfo_814, ptr @__UNIQUE_ID_modinfo_815, ptr @__UNIQUE_ID_modinfo_816, ptr @__UNIQUE_ID_modinfo_817, ptr @__UNIQUE_ID_modinfo_818, ptr @__UNIQUE_ID_modinfo_819, ptr @__UNIQUE_ID_modinfo_820, ptr @__UNIQUE_ID_modinfo_821, ptr @__UNIQUE_ID_modinfo_822, ptr @__UNIQUE_ID_modinfo_823, ptr @__UNIQUE_ID_modinfo_824, ptr @__UNIQUE_ID_modinfo_825, ptr @__UNIQUE_ID_modinfo_826, ptr @__UNIQUE_ID_modinfo_827, ptr @__UNIQUE_ID_modinfo_828, ptr @check_gsc_manifest.__UNIQUE_ID_addressable___SCK__WARN_trap_845, ptr @io_mapping_unmap_atomic.__UNIQUE_ID_addressable___SCK__preempt_schedule_729], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define dso_local void @intel_uc_fw_version_from_gsc_manifest(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 36
  %i.b = load i16, ptr %i.a, align 1
  %i.c = zext i16 %i.b to i32
  store i32 %i.c, ptr %0, align 4
  %i.d = getelementptr i8, ptr %1, i64 38
  %i.e = load i16, ptr %i.d, align 1
  %i.f = zext i16 %i.e to i32
  %i.g = getelementptr i8, ptr %0, i64 4
  store i32 %i.f, ptr %i.g, align 4
  %i.h = getelementptr i8, ptr %1, i64 40
  %i.i = load i16, ptr %i.h, align 1
  %i.j = zext i16 %i.i to i32
  %i.k = getelementptr i8, ptr %0, i64 8
  store i32 %i.j, ptr %i.k, align 4
  %i.l = getelementptr i8, ptr %1, i64 42
  %i.m = load i16, ptr %i.l, align 1
  %i.n = zext i16 %i.m to i32
  %i.o = getelementptr i8, ptr %0, i64 12
  store i32 %i.n, ptr %i.o, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_uc_fw_init_early(ptr nofree noundef captures(none) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = zext i1 %2 to i8
  switch i32 %1, label %____uc_fw_to_gt.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 -624
  br label %____uc_fw_to_gt.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 -2392
  br label %____uc_fw_to_gt.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 -48
  br label %____uc_fw_to_gt.exit

____uc_fw_to_gt.exit:                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.d, %bb.d ], [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ null, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.0.i, align 8             ; 10 uses
  store i32 %1, ptr %0, align 8
  %i.f = getelementptr i8, ptr %0, i64 80
  store i8 %i.a, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.e, i64 1648     ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 28
  %i.j = load i64, ptr %i.i, align 4
  %i.k = and i64 %i.j, 2048
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %____uc_fw_to_gt.exit.__uc_fw_user_override.exit_crit_edge, label %bb.e

____uc_fw_to_gt.exit.__uc_fw_user_override.exit_crit_edge: ; preds = %____uc_fw_to_gt.exit
  %.phi.trans.insert48 = getelementptr i8, ptr %0, i64 32
  %.pre49 = load ptr, ptr %.phi.trans.insert48, align 8
  br label %__uc_fw_user_override.exit

bb.e:                                             ; preds = %____uc_fw_to_gt.exit
  %i.l = icmp ugt i32 %1, 2
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %intel_uc_fw_type_repr.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %i.e, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  br label %intel_uc_fw_type_repr.exit.i

intel_uc_fw_type_repr.exit.i:                     ; preds = %bb.g, %bb.f
  %i.o = phi ptr [ %i.n, %bb.g ], [ null, %bb.f ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.o, ptr noundef @.str.16, ptr noundef nonnull @.str.57) #9
  br label %validate_fw_table_type.exit

bb.h:                                             ; preds = %bb.e
  %i.p = zext nneg i32 %1 to i64
  %i.q = getelementptr [16 x i8], ptr @blobs_all, i64 %i.p ; 2 uses
  %i.r = load ptr, ptr %i.q, align 16             ; 6 uses
  %i.s = getelementptr i8, ptr %i.q, i64 8
  %i.t = load i32, ptr %i.s, align 8              ; 5 uses
  %.not.i = icmp eq i32 %1, 2
  br i1 %.not.i, label %.loopexit, label %.lr.ph157.i

.lr.ph157.i:                                      ; preds = %bb.h
  %.not.i142.i = icmp eq ptr %i.e, null           ; 2 uses
  %i.u = getelementptr i8, ptr %i.e, i64 8        ; 2 uses
  %umax.i = tail call i32 @llvm.umax.i32(i32 %i.t, i32 2)
  %i.v = icmp eq i32 %1, 0
  %spec.select.i = select i1 %i.v, ptr @.str.54, ptr @.str.55 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.ab, %.lr.ph157.i
  %.0127155.i = phi i32 [ 1, %.lr.ph157.i ], [ %i.w, %bb.ab ] ; 3 uses
  %i.w = add nuw i32 %.0127155.i, 1               ; 5 uses
  %i.x = icmp ult i32 %i.w, %i.t
  %i.y = sext i32 %.0127155.i to i64              ; 2 uses
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.z = getelementptr [18 x i8], ptr %i.r, i64 %i.y ; 7 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 5       ; 4 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 13      ; 2 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 14      ; 2 uses
  %i.ad = getelementptr i8, ptr %i.z, i64 15      ; 2 uses
  %i.ae = getelementptr i8, ptr %i.z, i64 16      ; 2 uses
  br i1 %.not.i142.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.k
  %.0154.us.i = phi i32 [ %i.bo, %bb.k ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %i.af = load i32, ptr %i.z, align 1             ; 2 uses
  %i.ag = sext i32 %.0154.us.i to i64
  %i.ah = getelementptr [18 x i8], ptr %i.r, i64 %i.ag ; 7 uses
  %i.ai = load i32, ptr %i.ah, align 1
  %.not140.us.i = icmp eq i32 %i.af, %i.ai
  br i1 %.not140.us.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split.us.i
  %i.aj = load ptr, ptr %i.aa, align 1
  %i.ak = getelementptr i8, ptr %i.ah, i64 5      ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 1
  %.not141.us.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not141.us.i, label %__drm_to_dev.exit143.us.i, label %bb.k

__drm_to_dev.exit143.us.i:                        ; preds = %bb.j
  %i.am = tail call ptr @intel_platform_name(i32 noundef %i.af) #10
  %i.an = getelementptr i8, ptr %i.ah, i64 4
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i32
  %i.aq = getelementptr i8, ptr %i.ah, i64 13
  %i.ar = load i8, ptr %i.aq, align 1, !range !12, !noundef !13
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = select i1 %i.as, ptr @.str.18, ptr @.str.19
  %i.au = getelementptr i8, ptr %i.ah, i64 14
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = getelementptr i8, ptr %i.ah, i64 15
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i32
  %i.ba = getelementptr i8, ptr %i.ah, i64 16
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i32
  %i.bd = load ptr, ptr %i.ak, align 1
  %i.be = load i8, ptr %i.ab, align 1, !range !12, !noundef !13
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = select i1 %i.bf, ptr @.str.18, ptr @.str.19
  %i.bh = load i8, ptr %i.ac, align 1
  %i.bi = zext i8 %i.bh to i32
  %i.bj = load i8, ptr %i.ad, align 1
  %i.bk = zext i8 %i.bj to i32
  %i.bl = load i8, ptr %i.ae, align 1
  %i.bm = zext i8 %i.bl to i32
  %i.bn = load ptr, ptr %i.aa, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef null, ptr noundef @.str.17, ptr noundef nonnull %spec.select.i, ptr noundef %i.am, i32 noundef %i.ap, ptr noundef nonnull %i.at, i32 noundef %i.aw, i32 noundef %i.az, i32 noundef %i.bc, ptr noundef %i.bd, ptr noundef nonnull %i.bg, i32 noundef %i.bi, i32 noundef %i.bk, i32 noundef %i.bm, ptr noundef %i.bn) #9
  br label %bb.k

bb.k:                                             ; preds = %__drm_to_dev.exit143.us.i, %bb.j, %.lr.ph.split.us.i
  %i.bo = add i32 %.0154.us.i, 1                  ; 2 uses
  %exitcond164.not.i = icmp eq i32 %i.bo, %i.t
  br i1 %exitcond164.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !17

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.m
  %.0154.i = phi i32 [ %i.cz, %bb.m ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %i.bp = load i32, ptr %i.z, align 1             ; 2 uses
  %i.bq = sext i32 %.0154.i to i64
  %i.br = getelementptr [18 x i8], ptr %i.r, i64 %i.bq ; 7 uses
  %i.bs = load i32, ptr %i.br, align 1
  %.not140.i = icmp eq i32 %i.bp, %i.bs
  br i1 %.not140.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.split.i
  %i.bt = load ptr, ptr %i.aa, align 1
  %i.bu = getelementptr i8, ptr %i.br, i64 5      ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 1
  %.not141.i = icmp eq ptr %i.bt, %i.bv
  br i1 %.not141.i, label %__drm_to_dev.exit143.i, label %bb.m

__drm_to_dev.exit143.i:                           ; preds = %bb.l
  %i.bw = load ptr, ptr %i.u, align 8
  %i.bx = tail call ptr @intel_platform_name(i32 noundef %i.bp) #10
  %i.by = getelementptr i8, ptr %i.br, i64 4
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i32
  %i.cb = getelementptr i8, ptr %i.br, i64 13
  %i.cc = load i8, ptr %i.cb, align 1, !range !12, !noundef !13
  %i.cd = trunc nuw i8 %i.cc to i1
  %i.ce = select i1 %i.cd, ptr @.str.18, ptr @.str.19
  %i.cf = getelementptr i8, ptr %i.br, i64 14
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i32
  %i.ci = getelementptr i8, ptr %i.br, i64 15
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = zext i8 %i.cj to i32
  %i.cl = getelementptr i8, ptr %i.br, i64 16
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = zext i8 %i.cm to i32
  %i.co = load ptr, ptr %i.bu, align 1
  %i.cp = load i8, ptr %i.ab, align 1, !range !12, !noundef !13
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = select i1 %i.cq, ptr @.str.18, ptr @.str.19
  %i.cs = load i8, ptr %i.ac, align 1
  %i.ct = zext i8 %i.cs to i32
  %i.cu = load i8, ptr %i.ad, align 1
  %i.cv = zext i8 %i.cu to i32
  %i.cw = load i8, ptr %i.ae, align 1
  %i.cx = zext i8 %i.cw to i32
  %i.cy = load ptr, ptr %i.aa, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bw, ptr noundef @.str.17, ptr noundef nonnull %spec.select.i, ptr noundef %i.bx, i32 noundef %i.ca, ptr noundef nonnull %i.ce, i32 noundef %i.ch, i32 noundef %i.ck, i32 noundef %i.cn, ptr noundef %i.co, ptr noundef nonnull %i.cr, i32 noundef %i.ct, i32 noundef %i.cv, i32 noundef %i.cx, ptr noundef %i.cy) #9
  br label %bb.m

bb.m:                                             ; preds = %__drm_to_dev.exit143.i, %bb.l, %.lr.ph.split.i
  %i.cz = add i32 %.0154.i, 1                     ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cz, %i.t
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !17

._crit_edge.i:                                    ; preds = %bb.m, %bb.k, %bb.i
  %i.da = getelementptr [18 x i8], ptr %i.r, i64 %i.y ; 12 uses
  %i.db = load i32, ptr %i.da, align 1            ; 7 uses
  %i.dc = add i32 %.0127155.i, -1
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr [18 x i8], ptr %i.r, i64 %i.dd ; 11 uses
  %i.df = load i32, ptr %i.de, align 1            ; 3 uses
  %i.dg = icmp ult i32 %i.db, %i.df
  br i1 %i.dg, label %bb.ab, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i
  %i.dh = icmp eq i32 %i.db, %i.df
  br i1 %i.dh, label %bb.o, label %bb.z

bb.o:                                             ; preds = %bb.n
  %i.di = getelementptr i8, ptr %i.da, i64 4
  %i.dj = load i8, ptr %i.di, align 1             ; 2 uses
  %i.dk = getelementptr i8, ptr %i.de, i64 4
  %i.dl = load i8, ptr %i.dk, align 1             ; 2 uses
  %i.dm = icmp ult i8 %i.dj, %i.dl
  br i1 %i.dm, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not136.i = icmp eq i8 %i.dj, %i.dl
  br i1 %.not136.i, label %bb.q, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.dn = getelementptr i8, ptr %i.da, i64 14
  %i.do = load i8, ptr %i.dn, align 1             ; 4 uses
  %i.dp = getelementptr i8, ptr %i.de, i64 14
  %i.dq = load i8, ptr %i.dp, align 1             ; 5 uses
  %i.dr = icmp ult i8 %i.do, %i.dq
  br i1 %i.dr, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ds = getelementptr i8, ptr %i.da, i64 13
  %i.dt = load i8, ptr %i.ds, align 1, !range !12, !noundef !13
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = getelementptr i8, ptr %i.de, i64 13
  %i.dw = load i8, ptr %i.dv, align 1, !range !12, !noundef !13
  %i.dx = trunc nuw i8 %i.dw to i1                ; 2 uses
  br i1 %i.du, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not138.i = icmp ne i8 %i.do, %i.dq
  %or.cond151.not.i = or i1 %.not138.i, %i.dx
  br i1 %or.cond151.not.i, label %bb.z, label %bb.w

bb.t:                                             ; preds = %bb.r
  br i1 %i.dx, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not137.i = icmp eq i8 %i.dq, 0
  %i.dy = icmp eq i8 %i.do, %i.dq
  %or.cond.i = or i1 %.not137.i, %i.dy
  br i1 %or.cond.i, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.not138.old.i = icmp eq i8 %i.do, %i.dq
  br i1 %.not138.old.i, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.dz = getelementptr i8, ptr %i.da, i64 15
  %i.ea = load i8, ptr %i.dz, align 1             ; 2 uses
  %i.eb = getelementptr i8, ptr %i.de, i64 15
  %i.ec = load i8, ptr %i.eb, align 1             ; 2 uses
  %i.ed = icmp ult i8 %i.ea, %i.ec
  br i1 %i.ed, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not139.i = icmp eq i8 %i.ea, %i.ec
  br i1 %.not139.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ee = getelementptr i8, ptr %i.da, i64 16
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = getelementptr i8, ptr %i.de, i64 16
  %i.eh = load i8, ptr %i.eg, align 1
  %i.ei = icmp ult i8 %i.ef, %i.eh
  br i1 %i.ei, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.v, %bb.s, %bb.p, %bb.n
  %.lcssa.i = phi i32 [ %i.df, %bb.n ], [ %i.db, %bb.p ], [ %i.db, %bb.s ], [ %i.db, %bb.v ], [ %i.db, %bb.x ], [ %i.db, %bb.y ]
  br i1 %.not.i142.i, label %__drm_to_dev.exit147.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ej = load ptr, ptr %i.u, align 8
  br label %__drm_to_dev.exit147.i

__drm_to_dev.exit147.i:                           ; preds = %bb.aa, %bb.z
  %i.ek = phi ptr [ %i.ej, %bb.aa ], [ null, %bb.z ]
  %i.el = tail call ptr @intel_platform_name(i32 noundef %.lcssa.i) #10
  %i.em = getelementptr i8, ptr %i.de, i64 4
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = zext i8 %i.en to i32
  %i.ep = getelementptr i8, ptr %i.de, i64 13
  %i.eq = load i8, ptr %i.ep, align 1, !range !12, !noundef !13
  %i.er = trunc nuw i8 %i.eq to i1
  %i.es = select i1 %i.er, ptr @.str.18, ptr @.str.19
  %i.et = getelementptr i8, ptr %i.de, i64 14
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = zext i8 %i.eu to i32
  %i.ew = getelementptr i8, ptr %i.de, i64 15
  %i.ex = load i8, ptr %i.ew, align 1
  %i.ey = zext i8 %i.ex to i32
  %i.ez = getelementptr i8, ptr %i.de, i64 16
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = zext i8 %i.fa to i32
  %i.fc = load i32, ptr %i.da, align 1
  %i.fd = tail call ptr @intel_platform_name(i32 noundef %i.fc) #10
  %i.fe = getelementptr i8, ptr %i.da, i64 4
  %i.ff = load i8, ptr %i.fe, align 1
  %i.fg = zext i8 %i.ff to i32
  %i.fh = getelementptr i8, ptr %i.da, i64 13
  %i.fi = load i8, ptr %i.fh, align 1, !range !12, !noundef !13
  %i.fj = trunc nuw i8 %i.fi to i1
  %i.fk = select i1 %i.fj, ptr @.str.18, ptr @.str.19
  %i.fl = getelementptr i8, ptr %i.da, i64 14
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = zext i8 %i.fm to i32
  %i.fo = getelementptr i8, ptr %i.da, i64 15
  %i.fp = load i8, ptr %i.fo, align 1
  %i.fq = zext i8 %i.fp to i32
  %i.fr = getelementptr i8, ptr %i.da, i64 16
  %i.fs = load i8, ptr %i.fr, align 1
  %i.ft = zext i8 %i.fs to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ek, ptr noundef @.str.20, ptr noundef nonnull %spec.select.i, ptr noundef %i.el, i32 noundef %i.eo, ptr noundef nonnull %i.es, i32 noundef %i.ev, i32 noundef %i.ey, i32 noundef %i.fb, ptr noundef %i.fd, i32 noundef %i.fg, ptr noundef nonnull %i.fk, i32 noundef %i.fn, i32 noundef %i.fq, i32 noundef %i.ft) #9
  br label %validate_fw_table_type.exit

bb.ab:                                            ; preds = %bb.y, %bb.w, %bb.u, %bb.q, %bb.o, %._crit_edge.i
  %exitcond165.not.i = icmp eq i32 %i.w, %umax.i
  br i1 %exitcond165.not.i, label %.loopexit.loopexit, label %bb.i, !llvm.loop !18

validate_fw_table_type.exit:                      ; preds = %__drm_to_dev.exit147.i, %intel_uc_fw_type_repr.exit.i
  %i.fu = getelementptr i8, ptr %.0.i, i64 3009
  store i8 1, ptr %i.fu, align 1
  br label %bb.an

.loopexit.loopexit:                               ; preds = %bb.ab
  %.pre = load ptr, ptr %i.g, align 8
  %.pre43 = load i32, ptr %0, align 8             ; 2 uses
  %.phi.trans.insert = zext i32 %.pre43 to i64
  %.phi.trans.insert44 = getelementptr [16 x i8], ptr @blobs_all, i64 %.phi.trans.insert ; 2 uses
  %.pre45 = load ptr, ptr %.phi.trans.insert44, align 16
  %.phi.trans.insert46 = getelementptr i8, ptr %.phi.trans.insert44, i64 8
  %.pre47 = load i32, ptr %.phi.trans.insert46, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.loopexit.loopexit
  %i.fv = phi i32 [ %.pre47, %.loopexit.loopexit ], [ %i.t, %bb.h ]
  %i.fw = phi ptr [ %.pre45, %.loopexit.loopexit ], [ %i.r, %bb.h ]
  %i.fx = phi i32 [ %.pre43, %.loopexit.loopexit ], [ 2, %bb.h ]
  %i.fy = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.h, %bb.h ]
  %i.fz = load i32, ptr %i.fy, align 8
  %i.ga = getelementptr i8, ptr %i.e, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = getelementptr i8, ptr %i.gb, i64 -128
  %i.gd = load i8, ptr %i.gc, align 8
  %i.ge = getelementptr i8, ptr %i.e, i64 1668
  %i.gf = load i32, ptr %i.ge, align 4            ; 2 uses
  %i.gg = shl i32 %i.gf, 20
  %i.gh = shl i32 %i.gf, 30
  %i.gi = and i32 %i.gg, %i.gh
  %i.gj = icmp slt i32 %i.gi, 0
  %spec.select.i21 = select i1 %i.gj, i32 34, i32 %i.fz ; 2 uses
  %i.gk = getelementptr i8, ptr %0, i64 32        ; 6 uses
  %umax.i22 = tail call i32 @llvm.umax.i32(i32 %i.fv, i32 1)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ai, %.loopexit
  %.04154.i = phi i32 [ 0, %.loopexit ], [ %i.hm, %bb.ai ] ; 2 uses
  %i.gl = sext i32 %.04154.i to i64
  %i.gm = getelementptr [18 x i8], ptr %i.fw, i64 %i.gl ; 7 uses
  %i.gn = load i32, ptr %i.gm, align 1            ; 2 uses
  %.not.i23 = icmp ugt i32 %spec.select.i21, %i.gn
  br i1 %.not.i23, label %.critedge.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.go = getelementptr i8, ptr %i.gm, i64 5      ; 2 uses
  %.not45.i = icmp eq i32 %spec.select.i21, %i.gn
  br i1 %.not45.i, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.gp = getelementptr i8, ptr %i.gm, i64 4
  %i.gq = load i8, ptr %i.gp, align 1
  %i.gr = icmp ult i8 %i.gd, %i.gq
  br i1 %i.gr, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gs = load ptr, ptr %i.gk, align 8            ; 2 uses
  %.not46.i = icmp eq ptr %i.gs, null
  %i.gt = load ptr, ptr %i.go, align 1            ; 3 uses
  br i1 %.not46.i, label %.critedge.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store ptr null, ptr %i.gk, align 8
  br label %bb.ai

.critedge.thread.i:                               ; preds = %bb.af
  store ptr %i.gt, ptr %i.gk, align 8
  %i.gv = load ptr, ptr %i.go, align 1
  %i.gw = getelementptr i8, ptr %0, i64 8
  store ptr %i.gv, ptr %i.gw, align 8
  %i.gx = getelementptr i8, ptr %i.gm, i64 14
  %i.gy = load i8, ptr %i.gx, align 1
  %i.gz = zext i8 %i.gy to i32
  %i.ha = getelementptr i8, ptr %0, i64 16
  store i32 %i.gz, ptr %i.ha, align 8
  %i.hb = getelementptr i8, ptr %i.gm, i64 15
  %i.hc = load i8, ptr %i.hb, align 1
  %i.hd = zext i8 %i.hc to i32
  %i.he = getelementptr i8, ptr %0, i64 20
  store i32 %i.hd, ptr %i.he, align 4
  %i.hf = getelementptr i8, ptr %i.gm, i64 16
  %i.hg = load i8, ptr %i.hf, align 1
  %i.hh = zext i8 %i.hg to i32
  %i.hi = getelementptr i8, ptr %0, i64 24
  store i32 %i.hh, ptr %i.hi, align 8
  %i.hj = getelementptr i8, ptr %i.gm, i64 17
  %i.hk = load i8, ptr %i.hj, align 1, !range !12, !noundef !13
  %i.hl = getelementptr i8, ptr %0, i64 408
  store i8 %i.hk, ptr %i.hl, align 8
  br label %__uc_fw_auto_select.exit

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ad
  %i.hm = add nuw i32 %.04154.i, 1                ; 2 uses
  %exitcond.not.i24 = icmp eq i32 %i.hm, %umax.i22
  br i1 %exitcond.not.i24, label %.critedge.i, label %bb.ac, !llvm.loop !0

.critedge.i:                                      ; preds = %bb.ai, %bb.ac
  %i.hn = load ptr, ptr %i.gk, align 8
  %.not47.i = icmp eq ptr %i.hn, null
  br i1 %.not47.i, label %__uc_fw_auto_select.exit, label %bb.aj

bb.aj:                                            ; preds = %.critedge.i
  store ptr null, ptr %i.gk, align 8
  br label %__uc_fw_auto_select.exit

__uc_fw_auto_select.exit:                         ; preds = %.critedge.thread.i, %.critedge.i, %bb.aj
  %i.ho = phi ptr [ %i.gt, %.critedge.thread.i ], [ null, %.critedge.i ], [ null, %bb.aj ] ; 2 uses
  switch i32 %i.fx, label %__uc_fw_user_override.exit [
    i32 0, label %bb.ak
    i32 1, label %bb.al
    i32 2, label %__override_guc_firmware_path.exit.i
  ]

bb.ak:                                            ; preds = %__uc_fw_auto_select.exit
  %i.hp = getelementptr i8, ptr %i.e, i64 1572
  %i.hq = load i32, ptr %i.hp, align 4
  %i.hr = and i32 %i.hq, 3
  %.not.i.i27 = icmp eq i32 %i.hr, 0
  br i1 %.not.i.i27, label %__uc_fw_user_override.exit.thread, label %__override_guc_firmware_path.exit.i

bb.al:                                            ; preds = %__uc_fw_auto_select.exit
  %i.hs = getelementptr i8, ptr %i.e, i64 1572
  %i.ht = load i32, ptr %i.hs, align 4
  %i.hu = and i32 %i.ht, 2
  %.not.i8.i = icmp eq i32 %i.hu, 0
  br i1 %.not.i8.i, label %__uc_fw_user_override.exit.thread, label %__override_guc_firmware_path.exit.i

__override_guc_firmware_path.exit.i:              ; preds = %bb.al, %bb.ak, %__uc_fw_auto_select.exit
  %.sink.i = phi i64 [ 1584, %bb.ak ], [ 1592, %bb.al ], [ 1600, %__uc_fw_auto_select.exit ]
  %i.hv = getelementptr i8, ptr %i.e, i64 %.sink.i
  %.0.i25 = load ptr, ptr %i.hv, align 8          ; 2 uses
  %.not.i26 = icmp eq ptr %.0.i25, null
  br i1 %.not.i26, label %__uc_fw_user_override.exit, label %__uc_fw_user_override.exit.thread, !prof !19

__uc_fw_user_override.exit.thread:                ; preds = %__override_guc_firmware_path.exit.i, %bb.al, %bb.ak
  %.012.i = phi ptr [ %.0.i25, %__override_guc_firmware_path.exit.i ], [ @.str.51, %bb.ak ], [ @.str.51, %bb.al ] ; 2 uses
  store ptr %.012.i, ptr %i.gk, align 8
  %i.hw = getelementptr i8, ptr %0, i64 56
  store i8 1, ptr %i.hw, align 8
  br label %__uc_fw_user_override.exit

__uc_fw_user_override.exit:                       ; preds = %____uc_fw_to_gt.exit.__uc_fw_user_override.exit_crit_edge, %__uc_fw_user_override.exit.thread, %__override_guc_firmware_path.exit.i, %__uc_fw_auto_select.exit
  %3 = phi ptr [ %.pre49, %____uc_fw_to_gt.exit.__uc_fw_user_override.exit_crit_edge ], [ %.012.i, %__uc_fw_user_override.exit.thread ], [ %i.ho, %__override_guc_firmware_path.exit.i ], [ %i.ho, %__uc_fw_auto_select.exit ] ; 2 uses
  %.not18 = icmp eq ptr %3, null
  br i1 %.not18, label %bb.an, label %bb.am

bb.am:                                            ; preds = %__uc_fw_user_override.exit
  %i.hx = load i8, ptr %3, align 1
  %.not19 = icmp eq i8 %i.hx, 0
  %i.hy = select i1 %.not19, i32 1, i32 2
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %__uc_fw_user_override.exit, %validate_fw_table_type.exit
  %.sink = phi i32 [ -1, %validate_fw_table_type.exit ], [ %i.hy, %bb.am ], [ -1, %__uc_fw_user_override.exit ]
  %i.hz = getelementptr i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.hz, align 4
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -8, 1) i32 @intel_uc_check_file_version(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  switch i32 %i.a, label %__uc_fw_to_gt.exit [
    i32 0, label %bb.b
    i32 1, label %__uc_fw_to_gt.exit.thread
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 -624
  br label %__uc_fw_to_gt.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 -48
  br label %__uc_fw_to_gt.exit

__uc_fw_to_gt.exit:                               ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.c, %bb.c ], [ %i.b, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.0.i.i, align 8
  br label %check_mtl_huc_guc_compatibility.exit.thread

__uc_fw_to_gt.exit.thread:                        ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 -2392      ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.g = getelementptr i8, ptr %i.f, i64 1668
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 8192
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %check_mtl_huc_guc_compatibility.exit.thread, label %.thread

.thread:                                          ; preds = %__uc_fw_to_gt.exit.thread
  %i.j = getelementptr i8, ptr %0, i64 40
  %i.k = getelementptr i8, ptr %0, i64 -1728
  %i.l = load i32, ptr %i.j, align 8              ; 3 uses
  %i.m = icmp ugt i32 %i.l, 8
  br i1 %i.m, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.n = icmp eq i32 %i.l, 8
  br i1 %i.n, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %0, i64 44
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = icmp ugt i32 %i.p, 5
  br i1 %i.q, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i32 %i.p, 5
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %0, i64 48
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp ne i32 %i.t, 0
  %i.v = zext i1 %i.u to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %.thread
  %i.w = phi i32 [ 1, %bb.e ], [ 1, %.thread ], [ 0, %bb.f ], [ %i.v, %bb.g ], [ 0, %bb.d ]
  %i.x = load i32, ptr %i.k, align 8              ; 3 uses
  %i.y = icmp ugt i32 %i.x, 70
  br i1 %i.y, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = icmp eq i32 %i.x, 70
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %0, i64 -1724
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp ugt i32 %i.ab, 6
  %i.ad = zext i1 %i.ac to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ae = phi i32 [ 1, %bb.h ], [ 0, %bb.i ], [ %i.ad, %bb.j ]
  %.not.i = icmp eq i32 %i.w, %i.ae
  br i1 %.not.i, label %check_mtl_huc_guc_compatibility.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr i8, ptr %i.f, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.m, %bb.l
  %i.ah = phi ptr [ %i.ag, %bb.m ], [ null, %bb.l ]
  %i.ai = getelementptr i8, ptr %0, i64 2544      ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %0, i64 44
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = getelementptr i8, ptr %0, i64 48
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = getelementptr i8, ptr %0, i64 -1724
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = getelementptr i8, ptr %0, i64 -1720
  %i.ar = load i32, ptr %i.aq, align 8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %i.ah, ptr noundef @.str.52, i32 noundef %i.aj, i32 noundef %i.l, i32 noundef %i.al, i32 noundef %i.an, i32 noundef %i.x, i32 noundef %i.ap, i32 noundef %i.ar) #9
  %i.as = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i26.i = icmp eq ptr %i.as, null
  br i1 %.not.i26.i, label %check_mtl_huc_guc_compatibility.exit, label %bb.n

bb.n:                                             ; preds = %__drm_to_dev.exit.i
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  br label %check_mtl_huc_guc_compatibility.exit

check_mtl_huc_guc_compatibility.exit:             ; preds = %__drm_to_dev.exit.i, %bb.n
  %i.av = phi ptr [ %i.au, %bb.n ], [ null, %__drm_to_dev.exit.i ]
  %i.aw = load i32, ptr %i.ai, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.av, ptr noundef @.str.53, i32 noundef %i.aw) #9
  br label %bb.aa

check_mtl_huc_guc_compatibility.exit.thread:      ; preds = %__uc_fw_to_gt.exit, %bb.k, %__uc_fw_to_gt.exit.thread
  %i.ax = phi ptr [ %i.f, %__uc_fw_to_gt.exit.thread ], [ %i.d, %__uc_fw_to_gt.exit ], [ %i.f, %bb.k ] ; 2 uses
  %.0.i.i44 = phi ptr [ %i.e, %__uc_fw_to_gt.exit.thread ], [ %.0.i.i, %__uc_fw_to_gt.exit ], [ %i.e, %bb.k ]
  %i.ay = getelementptr i8, ptr %0, i64 32
  %i.az = getelementptr i8, ptr %0, i64 16
  %i.ba = load i32, ptr %i.az, align 8            ; 3 uses
  %.not37 = icmp eq i32 %i.ba, 0
  br i1 %.not37, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %check_mtl_huc_guc_compatibility.exit.thread
  %i.bb = getelementptr i8, ptr %0, i64 40
  %i.bc = load i32, ptr %i.bb, align 8            ; 3 uses
  %.not38 = icmp eq i32 %i.bc, 0
  br i1 %.not38, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not39 = icmp eq i32 %i.bc, %i.ba
  br i1 %.not39, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i41 = icmp eq ptr %i.ax, null
  br i1 %.not.i41, label %__drm_to_dev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr i8, ptr %i.ax, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.q, %bb.r
  %i.bf = phi ptr [ %i.be, %bb.r ], [ null, %bb.q ]
  %i.bg = getelementptr i8, ptr %.0.i.i44, i64 4936
  %i.bh = load i32, ptr %i.bg, align 8
  switch i32 %i.a, label %bb.u [
    i32 0, label %intel_uc_fw_type_repr.exit
    i32 1, label %bb.s
    i32 2, label %bb.t
  ]

bb.s:                                             ; preds = %__drm_to_dev.exit
  br label %intel_uc_fw_type_repr.exit

bb.t:                                             ; preds = %__drm_to_dev.exit
  br label %intel_uc_fw_type_repr.exit

bb.u:                                             ; preds = %__drm_to_dev.exit
  br label %intel_uc_fw_type_repr.exit

intel_uc_fw_type_repr.exit:                       ; preds = %__drm_to_dev.exit, %bb.s, %bb.t, %bb.u
  %.0.i42 = phi ptr [ @.str.57, %bb.u ], [ @.str.56, %bb.t ], [ @.str.55, %bb.s ], [ @.str.54, %__drm_to_dev.exit ]
  %i.bi = load ptr, ptr %i.ay, align 8
  %i.bj = getelementptr i8, ptr %0, i64 44
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = getelementptr i8, ptr %0, i64 20
  %i.bm = load i32, ptr %i.bl, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %i.bf, ptr noundef @.str, i32 noundef %i.bh, ptr noundef nonnull %.0.i42, ptr noundef %i.bi, i32 noundef %i.bc, i32 noundef %i.bk, i32 noundef %i.ba, i32 noundef %i.bm) #9
  %i.bn = getelementptr i8, ptr %0, i64 56
  %.val = load i8, ptr %i.bn, align 8, !range !12, !noundef !13
  %i.bo = trunc nuw i8 %.val to i1
  br i1 %i.bo, label %bb.z, label %bb.aa

bb.v:                                             ; preds = %bb.p
  %.not40 = icmp eq ptr %1, null
  br i1 %.not40, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bp = getelementptr i8, ptr %0, i64 44
  %i.bq = load i32, ptr %i.bp, align 4            ; 2 uses
  %i.br = getelementptr i8, ptr %0, i64 20
  %i.bs = load i32, ptr %i.br, align 4            ; 2 uses
  %i.bt = icmp ult i32 %i.bq, %i.bs
  br i1 %i.bt, label %.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bu = icmp eq i32 %i.bq, %i.bs
  br i1 %i.bu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bv = getelementptr i8, ptr %0, i64 48
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = getelementptr i8, ptr %0, i64 24
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = icmp ult i32 %i.bw, %i.by
  br i1 %i.bz, label %.sink.split, label %bb.z

.sink.split:                                      ; preds = %bb.y, %bb.w
  store i8 1, ptr %1, align 1
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.v, %bb.x, %bb.y, %intel_uc_fw_type_repr.exit
  br label %bb.aa

bb.aa:                                            ; preds = %check_mtl_huc_guc_compatibility.exit, %intel_uc_fw_type_repr.exit, %check_mtl_huc_guc_compatibility.exit.thread, %bb.o, %bb.z
  %.0 = phi i32 [ -8, %check_mtl_huc_guc_compatibility.exit ], [ 0, %bb.z ], [ 0, %check_mtl_huc_guc_compatibility.exit.thread ], [ 0, %bb.o ], [ -8, %intel_uc_fw_type_repr.exit ]
  ret i32 %.0
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @intel_uc_fw_fetch(ptr noundef %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca i8, align 1                       ; 8 uses
  %i.c = load i32, ptr %0, align 8
  switch i32 %i.c, label %__uc_fw_to_gt.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 -624
  br label %__uc_fw_to_gt.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 -2392
  br label %__uc_fw_to_gt.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 -48
  br label %__uc_fw_to_gt.exit

__uc_fw_to_gt.exit:                               ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.f, %bb.d ], [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ null, %bb.a ] ; 9 uses
  %i.g = load ptr, ptr %.0.i.i, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i8 0, ptr %i.b, align 1
  %i.h = call fastcc i32 @try_firmware_load(ptr noundef %0, ptr noundef nonnull %i.a) #12, !srcloc !21 ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.i, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr i8, ptr %0, i64 16 ; 5 uses
  %.sroa.7.sroa.0.0.copyload = load <4 x i32>, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %__uc_fw_to_gt.exit
  %i.j = getelementptr i8, ptr %0, i64 56
  %.val = load i8, ptr %i.j, align 8, !range !12, !noundef !13
  %i.k = trunc nuw i8 %.val to i1
  br i1 %i.k, label %check_fw_header.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %__uc_fw_to_gt.exit
  %i.l = getelementptr i8, ptr %i.g, i64 1648     ; 2 uses
  %i.m = getelementptr i8, ptr %i.g, i64 8
  %i.n = getelementptr i8, ptr %i.g, i64 1668
  %i.o = getelementptr i8, ptr %0, i64 32         ; 5 uses
  %i.p = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 408        ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.p, %bb.f
  %i.s = phi i8 [ 0, %bb.f ], [ 1, %bb.p ]        ; 2 uses
  %.0 = phi i32 [ %i.h, %bb.f ], [ %i.bg, %bb.p ] ; 2 uses
  switch i32 %.0, label %check_fw_header.exit.thread.loopexit [
    i32 -2, label %bb.h
    i32 0, label %.loopexit
  ]

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.l, align 8
  %i.u = load i32, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 -128
  %i.x = load i8, ptr %i.w, align 8
  %i.y = load i32, ptr %i.n, align 4              ; 2 uses
  %i.z = shl i32 %i.y, 20
  %i.aa = shl i32 %i.y, 30
  %i.ab = and i32 %i.z, %i.aa
  %i.ac = icmp slt i32 %i.ab, 0
  %spec.select.i = select i1 %i.ac, i32 34, i32 %i.u ; 2 uses
  %i.ad = load i32, ptr %0, align 8
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr [16 x i8], ptr @blobs_all, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 16
  %i.ah = getelementptr i8, ptr %i.af, i64 8
  %i.ai = load i32, ptr %i.ah, align 8
  %umax.i = call i32 @llvm.umax.i32(i32 %i.ai, i32 1)
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %bb.h
  %.04154.i = phi i32 [ 0, %bb.h ], [ %i.at, %bb.o ] ; 2 uses
  %i.aj = sext i32 %.04154.i to i64
  %i.ak = getelementptr [18 x i8], ptr %i.ag, i64 %i.aj ; 7 uses
  %i.al = load i32, ptr %i.ak, align 1            ; 2 uses
  %.not.i = icmp ugt i32 %spec.select.i, %i.al
  br i1 %.not.i, label %__uc_fw_auto_select.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr i8, ptr %i.ak, i64 5      ; 2 uses
  %.not45.i = icmp eq i32 %spec.select.i, %i.al
  br i1 %.not45.i, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr i8, ptr %i.ak, i64 4
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = icmp ult i8 %i.x, %i.ao
  br i1 %i.ap, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = load ptr, ptr %i.o, align 8             ; 2 uses
  %.not46.i = icmp eq ptr %i.aq, null
  %i.ar = load ptr, ptr %i.am, align 1            ; 3 uses
  br i1 %.not46.i, label %__uc_fw_auto_select.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.o, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %i.at = add nuw i32 %.04154.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.at, %umax.i
  br i1 %exitcond.not.i, label %__uc_fw_auto_select.exit.thread, label %bb.i, !llvm.loop !0

__uc_fw_auto_select.exit:                         ; preds = %bb.l
  store ptr %i.ar, ptr %i.o, align 8
  %i.au = load ptr, ptr %i.am, align 1
  store ptr %i.au, ptr %i.i, align 8
  %i.av = getelementptr i8, ptr %i.ak, i64 14
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i32
  store i32 %i.ax, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ay = getelementptr i8, ptr %i.ak, i64 15
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i32
  store i32 %i.ba, ptr %i.p, align 4
  %i.bb = getelementptr i8, ptr %i.ak, i64 16
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i32
  store i32 %i.bd, ptr %i.q, align 8
  %i.be = getelementptr i8, ptr %i.ak, i64 17
  %i.bf = load i8, ptr %i.be, align 1, !range !12, !noundef !13
  store i8 %i.bf, ptr %i.r, align 8
  %.not69 = icmp eq ptr %i.ar, null
  br i1 %.not69, label %__uc_fw_auto_select.exit.thread, label %bb.p

__uc_fw_auto_select.exit.thread:                  ; preds = %__uc_fw_auto_select.exit, %bb.i, %bb.o
  store i8 1, ptr %i.b, align 1
  store ptr %.sroa.0.0.copyload, ptr %i.o, align 8
  store ptr %.sroa.0.0.copyload, ptr %i.i, align 8
  store <4 x i32> %.sroa.7.sroa.0.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  br label %check_fw_header.exit.thread

bb.p:                                             ; preds = %__uc_fw_auto_select.exit
  %i.bg = call fastcc i32 @try_firmware_load(ptr noundef %0, ptr noundef nonnull %i.a) #12, !srcloc !22
  br label %bb.g, !llvm.loop !20

.loopexit:                                        ; preds = %bb.g
  store i8 %i.s, ptr %i.b, align 1
  %i.bh = load ptr, ptr %i.a, align 8             ; 8 uses
  %i.bi = load i8, ptr %i.r, align 8, !range !12, !noundef !13
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.q, label %check_fw_header.exit

bb.q:                                             ; preds = %.loopexit
  %i.bk = load i32, ptr %0, align 8
  switch i32 %i.bk, label %check_fw_header.exit.thread.thread [
    i32 1, label %bb.r
    i32 2, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr i8, ptr %i.bh, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = load i64, ptr %i.bh, align 8
  %i.bo = call i32 @intel_huc_fw_get_binary_info(ptr noundef %0, ptr noundef %i.bm, i64 noundef %i.bn) #10 ; 2 uses
  %.not30.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not30.i.i, label %bb.t, label %check_fw_header.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.bp = getelementptr i8, ptr %i.bh, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = load i64, ptr %i.bh, align 8
  %i.bs = call i32 @intel_gsc_fw_get_binary_info(ptr noundef %0, ptr noundef %i.bq, i64 noundef %i.br) #10 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i, label %bb.t, label %check_fw_header.exit.thread

check_fw_header.exit.thread.thread:               ; preds = %bb.q
  %i.bt = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.59, ptr @.str.61, i32 678, i32 2321, i64 16) #11, !srcloc !23
  %i.bu = load i32, ptr %0, align 8
  %i.bv = zext i32 %i.bu to i64
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bt, ptr noundef @.str.60, i64 noundef %i.bv) #10
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !24
  br label %.thread

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bw = getelementptr i8, ptr %0, i64 404
  %i.bx = load i32, ptr %i.bw, align 4            ; 2 uses
  %.not31.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not31.i.i, label %check_fw_header.exit.thread95, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = getelementptr i8, ptr %i.bh, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = zext i32 %i.bx to i64                   ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bz, i64 %i.ca
  %i.cc = load i64, ptr %i.bh, align 8
  %i.cd = sub i64 %i.cc, %i.ca
  %i.ce = call fastcc i32 @__check_ccs_header(ptr noundef readonly %.0.i.i, ptr noundef %i.cb, i64 noundef %i.cd, ptr noundef %0) #12, !srcloc !25 ; 0 uses
  br label %check_fw_header.exit.thread95

check_fw_header.exit:                             ; preds = %.loopexit
  %.val.i = load i64, ptr %i.bh, align 8
  %i.cf = getelementptr i8, ptr %i.bh, i64 8
  %.val10.i = load ptr, ptr %i.cf, align 8
  %i.cg = call fastcc range(i32 -71, 1) i32 @__check_ccs_header(ptr noundef readonly %.0.i.i, ptr noundef readonly %.val10.i, i64 noundef %.val.i, ptr noundef %0) #12, !srcloc !26 ; 2 uses
  %.not71 = icmp eq i32 %i.cg, 0
  br i1 %.not71, label %check_fw_header.exit.thread95, label %check_fw_header.exit.thread

check_fw_header.exit.thread95:                    ; preds = %bb.u, %bb.t, %check_fw_header.exit
  %i.ch = load i32, ptr %0, align 8
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %__uc_fw_to_gt.exit.i, label %guc_check_version_range.exit

__uc_fw_to_gt.exit.i:                             ; preds = %check_fw_header.exit.thread95
  %i.cj = getelementptr i8, ptr %0, i64 -624      ; 2 uses
  %i.ck = getelementptr i8, ptr %0, i64 40
  %i.cl = load i32, ptr %i.ck, align 8            ; 2 uses
  %i.cm = icmp ult i32 %i.cl, 255
  br i1 %i.cm, label %bb.v, label %is_ver_8bit.exit.thread.i

bb.v:                                             ; preds = %__uc_fw_to_gt.exit.i
  %i.cn = getelementptr i8, ptr %0, i64 44
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = icmp ult i32 %i.co, 255
  br i1 %i.cp, label %is_ver_8bit.exit.i, label %is_ver_8bit.exit.thread.i

is_ver_8bit.exit.i:                               ; preds = %bb.v
  %i.cq = getelementptr i8, ptr %0, i64 48
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = icmp ult i32 %i.cr, 255
  br i1 %i.cs, label %bb.x, label %is_ver_8bit.exit.thread.i

is_ver_8bit.exit.thread.i:                        ; preds = %is_ver_8bit.exit.i, %bb.v, %__uc_fw_to_gt.exit.i
  %i.ct = load ptr, ptr %i.cj, align 8            ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i76, label %intel_uc_fw_type_repr.exit.i, label %bb.w

bb.w:                                             ; preds = %is_ver_8bit.exit.thread.i
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  br label %intel_uc_fw_type_repr.exit.i

intel_uc_fw_type_repr.exit.i:                     ; preds = %is_ver_8bit.exit.thread.i, %bb.w
  %i.cw = phi ptr [ %i.cv, %bb.w ], [ null, %is_ver_8bit.exit.thread.i ]
  %i.cx = getelementptr i8, ptr %0, i64 4312
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = getelementptr i8, ptr %0, i64 44
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = getelementptr i8, ptr %0, i64 48
  %i.dc = load i32, ptr %i.db, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.cw, ptr noundef @.str.65, i32 noundef %i.cy, ptr noundef nonnull @.str.54, i32 noundef %i.cl, i32 noundef %i.da, i32 noundef %i.dc) #9
  br label %.thread

bb.x:                                             ; preds = %is_ver_8bit.exit.i
  %i.dd = getelementptr i8, ptr %0, i64 1284
  %i.de = load i32, ptr %i.dd, align 4            ; 2 uses
  %i.df = icmp ult i32 %i.de, 255
  br i1 %i.df, label %bb.y, label %is_ver_8bit.exit18.thread.i

bb.y:                                             ; preds = %bb.x
  %i.dg = getelementptr i8, ptr %0, i64 1288
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = icmp ult i32 %i.dh, 255
  br i1 %i.di, label %is_ver_8bit.exit18.i, label %is_ver_8bit.exit18.thread.i

is_ver_8bit.exit18.i:                             ; preds = %bb.y
  %i.dj = getelementptr i8, ptr %0, i64 1292
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = icmp ult i32 %i.dk, 255
  br i1 %i.dl, label %guc_check_version_range.exit, label %is_ver_8bit.exit18.thread.i

is_ver_8bit.exit18.thread.i:                      ; preds = %is_ver_8bit.exit18.i, %bb.y, %bb.x
  %i.dm = load ptr, ptr %i.cj, align 8            ; 2 uses
  %.not.i19.i = icmp eq ptr %i.dm, null
  br i1 %.not.i19.i, label %intel_uc_fw_type_repr.exit22.i, label %bb.z

bb.z:                                             ; preds = %is_ver_8bit.exit18.thread.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  br label %intel_uc_fw_type_repr.exit22.i

intel_uc_fw_type_repr.exit22.i:                   ; preds = %is_ver_8bit.exit18.thread.i, %bb.z
  %i.dp = phi ptr [ %i.do, %bb.z ], [ null, %is_ver_8bit.exit18.thread.i ]
  %i.dq = getelementptr i8, ptr %0, i64 4312
  %i.dr = load i32, ptr %i.dq, align 8
  %i.ds = getelementptr i8, ptr %0, i64 1288
  %i.dt = load i32, ptr %i.ds, align 8
  %i.du = getelementptr i8, ptr %0, i64 1292
  %i.dv = load i32, ptr %i.du, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.dp, ptr noundef @.str.66, i32 noundef %i.dr, ptr noundef nonnull @.str.54, i32 noundef %i.de, i32 noundef %i.dt, i32 noundef %i.dv) #9
  br label %.thread

guc_check_version_range.exit:                     ; preds = %is_ver_8bit.exit18.i, %check_fw_header.exit.thread95
  %i.dw = call i32 @intel_uc_check_file_version(ptr noundef %0, ptr noundef nonnull %i.b) #12 ; 2 uses
  %.not73 = icmp eq i32 %i.dw, 0
  br i1 %.not73, label %bb.aa, label %check_fw_header.exit.thread

bb.aa:                                            ; preds = %guc_check_version_range.exit
  %i.dx = load i8, ptr %i.b, align 1, !range !12, !noundef !13
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %i.dz = getelementptr i8, ptr %0, i64 40
  %i.ea = load i32, ptr %i.dz, align 8            ; 2 uses
  %.not74 = icmp eq i32 %i.ea, 0
  br i1 %.not74, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %.sroa.0.0.copyload, ptr %i.i, align 8
  store <4 x i32> %.sroa.7.sroa.0.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %i.eb = load ptr, ptr %.0.i.i, align 8          ; 2 uses
  %.not.i79 = icmp eq ptr %i.eb, null
  br i1 %.not.i79, label %__drm_to_dev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.ac, %bb.ad
  %i.ee = phi ptr [ %i.ed, %bb.ad ], [ null, %bb.ac ]
  %i.ef = getelementptr i8, ptr %.0.i.i, i64 4936 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 8
  %i.eh = load i32, ptr %0, align 8
  switch i32 %i.eh, label %bb.ag [
    i32 0, label %intel_uc_fw_type_repr.exit
    i32 1, label %bb.ae
    i32 2, label %bb.af
  ]

bb.ae:                                            ; preds = %__drm_to_dev.exit
  br label %intel_uc_fw_type_repr.exit

bb.af:                                            ; preds = %__drm_to_dev.exit
  br label %intel_uc_fw_type_repr.exit

bb.ag:                                            ; preds = %__drm_to_dev.exit
  br label %intel_uc_fw_type_repr.exit

intel_uc_fw_type_repr.exit:                       ; preds = %__drm_to_dev.exit, %bb.ae, %bb.af, %bb.ag
  %.0.i80 = phi ptr [ @.str.57, %bb.ag ], [ @.str.56, %bb.af ], [ @.str.55, %bb.ae ], [ @.str.54, %__drm_to_dev.exit ]
  %i.ei = load i32, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ej = load i32, ptr %i.p, align 4
  %i.ek = load i32, ptr %i.q, align 8
  %i.el = load ptr, ptr %i.o, align 8
  %i.em = getelementptr i8, ptr %0, i64 44
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = getelementptr i8, ptr %0, i64 48
  %i.ep = load i32, ptr %i.eo, align 8
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %i.ee, ptr noundef @.str.1, i32 noundef %i.eg, ptr noundef nonnull %.0.i80, ptr noundef %.sroa.0.0.copyload, i32 noundef %i.ei, i32 noundef %i.ej, i32 noundef %i.ek, ptr noundef %i.el, i32 noundef %i.ea, i32 noundef %i.en, i32 noundef %i.ep) #9
  %i.eq = load ptr, ptr %.0.i.i, align 8          ; 2 uses
  %.not.i81 = icmp eq ptr %i.eq, null
  br i1 %.not.i81, label %__drm_to_dev.exit82, label %bb.ah

bb.ah:                                            ; preds = %intel_uc_fw_type_repr.exit
  %i.er = getelementptr i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  br label %__drm_to_dev.exit82

__drm_to_dev.exit82:                              ; preds = %intel_uc_fw_type_repr.exit, %bb.ah
  %i.et = phi ptr [ %i.es, %bb.ah ], [ null, %intel_uc_fw_type_repr.exit ]
  %i.eu = load i32, ptr %i.ef, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.et, ptr noundef @.str.2, i32 noundef %i.eu, ptr noundef @.str.3) #9
  br label %bb.ai

bb.ai:                                            ; preds = %__drm_to_dev.exit82, %bb.ab, %bb.aa
  %i.ev = load ptr, ptr %i.l, align 8
  %i.ew = getelementptr i8, ptr %i.ev, i64 24
  %i.ex = load i32, ptr %i.ew, align 8
  %i.ey = and i32 %i.ex, 2
  %.not75 = icmp eq i32 %i.ey, 0
  %i.ez = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8            ; 2 uses
  %i.fc = load i64, ptr %i.ez, align 8            ; 2 uses
  br i1 %.not75, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fd = call ptr @i915_gem_object_create_lmem_from_data(ptr noundef %i.g, ptr noundef %i.fb, i64 noundef %i.fc) #10 ; 4 uses
  %i.fe = icmp ugt ptr %i.fd, inttoptr (i64 -4096 to ptr)
  br i1 %i.fe, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ff = getelementptr i8, ptr %i.fd, i64 648    ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8
  %i.fh = or i64 %i.fg, 32
  store i64 %i.fh, ptr %i.ff, align 8
  br label %bb.am

bb.al:                                            ; preds = %bb.ai
  %i.fi = call ptr @i915_gem_object_create_shmem_from_data(ptr noundef %i.g, ptr noundef %i.fb, i64 noundef %i.fc) #10
  br label %bb.am

bb.am:                                            ; preds = %bb.aj, %bb.ak, %bb.al
  %.063 = phi ptr [ %i.fd, %bb.aj ], [ %i.fd, %bb.ak ], [ %i.fi, %bb.al ] ; 3 uses
  %i.fj = icmp ugt ptr %.063, inttoptr (i64 -4096 to ptr)
  br i1 %i.fj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fk = ptrtoint ptr %.063 to i64
  %i.fl = trunc i64 %i.fk to i32
  br label %check_fw_header.exit.thread

bb.ao:                                            ; preds = %bb.am
  %i.fm = getelementptr i8, ptr %0, i64 72
  store ptr %.063, ptr %i.fm, align 8
  %i.fn = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8
  %i.fp = getelementptr i8, ptr %0, i64 64
  store i64 %i.fo, ptr %i.fp, align 8
  %i.fq = getelementptr i8, ptr %0, i64 4
  store i32 5, ptr %i.fq, align 4
  br label %bb.ax

check_fw_header.exit.thread.loopexit:             ; preds = %bb.g
  store i8 %i.s, ptr %i.b, align 1
  br label %check_fw_header.exit.thread

check_fw_header.exit.thread:                      ; preds = %__uc_fw_auto_select.exit.thread, %check_fw_header.exit.thread.loopexit, %bb.s, %bb.r, %guc_check_version_range.exit, %check_fw_header.exit, %bb.e, %bb.an
  %.1 = phi i32 [ %i.h, %bb.e ], [ -2, %__uc_fw_auto_select.exit.thread ], [ %i.cg, %check_fw_header.exit ], [ %i.bo, %bb.r ], [ %i.dw, %guc_check_version_range.exit ], [ %i.fl, %bb.an ], [ %i.bs, %bb.s ], [ %.0, %check_fw_header.exit.thread.loopexit ]
  %.1.fr = freeze i32 %.1                         ; 2 uses
  %i.fr = icmp eq i32 %.1.fr, -2
  %spec.select = select i1 %i.fr, i32 3, i32 4
  br label %.thread

.thread:                                          ; preds = %check_fw_header.exit.thread, %check_fw_header.exit.thread.thread, %intel_uc_fw_type_repr.exit.i, %intel_uc_fw_type_repr.exit22.i
  %.1102 = phi i32 [ -22, %check_fw_header.exit.thread.thread ], [ %.1.fr, %check_fw_header.exit.thread ], [ -22, %intel_uc_fw_type_repr.exit22.i ], [ -22, %intel_uc_fw_type_repr.exit.i ] ; 2 uses
  %i.fs = phi i32 [ 4, %check_fw_header.exit.thread.thread ], [ %spec.select, %check_fw_header.exit.thread ], [ 4, %intel_uc_fw_type_repr.exit22.i ], [ 4, %intel_uc_fw_type_repr.exit.i ]
  %i.ft = getelementptr i8, ptr %0, i64 4
  store i32 %i.fs, ptr %i.ft, align 4
  %i.fu = load ptr, ptr %.0.i.i, align 8          ; 2 uses
  %.not.i83 = icmp eq ptr %i.fu, null
  br i1 %.not.i83, label %__drm_to_dev.exit84, label %bb.ap

bb.ap:                                            ; preds = %.thread
  %i.fv = getelementptr i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  br label %__drm_to_dev.exit84

__drm_to_dev.exit84:                              ; preds = %.thread, %bb.ap
  %i.fx = phi ptr [ %i.fw, %bb.ap ], [ null, %.thread ]
  %i.fy = getelementptr i8, ptr %.0.i.i, i64 4936 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 8
  %i.ga = load i32, ptr %0, align 8
  switch i32 %i.ga, label %bb.as [
    i32 0, label %intel_uc_fw_type_repr.exit86
    i32 1, label %bb.aq
    i32 2, label %bb.ar
  ]

bb.aq:                                            ; preds = %__drm_to_dev.exit84
  br label %intel_uc_fw_type_repr.exit86

bb.ar:                                            ; preds = %__drm_to_dev.exit84
  br label %intel_uc_fw_type_repr.exit86

bb.as:                                            ; preds = %__drm_to_dev.exit84
  br label %intel_uc_fw_type_repr.exit86

intel_uc_fw_type_repr.exit86:                     ; preds = %__drm_to_dev.exit84, %bb.aq, %bb.ar, %bb.as
  %.0.i85 = phi ptr [ @.str.57, %bb.as ], [ @.str.56, %bb.ar ], [ @.str.55, %bb.aq ], [ @.str.54, %__drm_to_dev.exit84 ]
  %i.gb = getelementptr i8, ptr %0, i64 32
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = sext i32 %.1102 to i64
  %i.ge = inttoptr i64 %i.gd to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.fx, ptr noundef @.str.4, i32 noundef %i.fz, ptr noundef nonnull %.0.i85, ptr noundef %i.gc, ptr noundef %i.ge) #9
  %i.gf = load ptr, ptr %.0.i.i, align 8          ; 2 uses
  %.not.i87 = icmp eq ptr %i.gf, null
  br i1 %.not.i87, label %__drm_to_dev.exit88, label %bb.at

bb.at:                                            ; preds = %intel_uc_fw_type_repr.exit86
  %i.gg = getelementptr i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8
  br label %__drm_to_dev.exit88

__drm_to_dev.exit88:                              ; preds = %intel_uc_fw_type_repr.exit86, %bb.at
  %i.gi = phi ptr [ %i.gh, %bb.at ], [ null, %intel_uc_fw_type_repr.exit86 ]
  %i.gj = load i32, ptr %i.fy, align 8
  %i.gk = load i32, ptr %0, align 8
  switch i32 %i.gk, label %bb.aw [
    i32 0, label %intel_uc_fw_type_repr.exit90
    i32 1, label %bb.au
    i32 2, label %bb.av
  ]

bb.au:                                            ; preds = %__drm_to_dev.exit88
  br label %intel_uc_fw_type_repr.exit90

bb.av:                                            ; preds = %__drm_to_dev.exit88
  br label %intel_uc_fw_type_repr.exit90

bb.aw:                                            ; preds = %__drm_to_dev.exit88
  br label %intel_uc_fw_type_repr.exit90

intel_uc_fw_type_repr.exit90:                     ; preds = %__drm_to_dev.exit88, %bb.au, %bb.av, %bb.aw
  %.0.i89 = phi ptr [ @.str.57, %bb.aw ], [ @.str.56, %bb.av ], [ @.str.55, %bb.au ], [ @.str.54, %__drm_to_dev.exit88 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.gi, ptr noundef @.str.5, i32 noundef %i.gj, ptr noundef nonnull %.0.i89, ptr noundef @.str.3) #9
  %i.gl = load ptr, ptr %i.a, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %intel_uc_fw_type_repr.exit90, %bb.ao
  %.sink = phi ptr [ %i.gl, %intel_uc_fw_type_repr.exit90 ], [ %i.fn, %bb.ao ]
  %.064 = phi i32 [ %.1102, %intel_uc_fw_type_repr.exit90 ], [ 0, %bb.ao ]
  call void @release_firmware(ptr noundef %.sink) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.064
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @try_firmware_load(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %0, align 8
  switch i32 %i.a, label %__uc_fw_to_gt.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 -624
  br label %__uc_fw_to_gt.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 -2392
  br label %__uc_fw_to_gt.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 -48
  br label %__uc_fw_to_gt.exit

__uc_fw_to_gt.exit:                               ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.d, %bb.d ], [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ null, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.0.i.i, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 @firmware_request_nowarn(ptr noundef %1, ptr noundef %i.i, ptr noundef %i.g) #10 ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.l

bb.e:                                             ; preds = %__uc_fw_to_gt.exit
  %i.k = getelementptr i8, ptr %0, i64 80
  %i.l = load i8, ptr %i.k, align 8, !range !12, !noundef !13
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %1, align 8
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp ugt i64 %i.o, 2097152
  br i1 %i.p, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %.0.i.i, align 8           ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.g, %bb.h
  %i.t = phi ptr [ %i.s, %bb.h ], [ null, %bb.g ]
  %i.u = getelementptr i8, ptr %.0.i.i, i64 4936
  %i.v = load i32, ptr %i.u, align 8
  %i.w = load i32, ptr %0, align 8
  switch i32 %i.w, label %bb.k [
    i32 0, label %intel_uc_fw_type_repr.exit
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

bb.i:                                             ; preds = %__drm_to_dev.exit
  br label %intel_uc_fw_type_repr.exit

bb.j:                                             ; preds = %__drm_to_dev.exit
  br label %intel_uc_fw_type_repr.exit

bb.k:                                             ; preds = %__drm_to_dev.exit
  br label %intel_uc_fw_type_repr.exit

intel_uc_fw_type_repr.exit:                       ; preds = %__drm_to_dev.exit, %bb.i, %bb.j, %bb.k
  %.0.i = phi ptr [ @.str.57, %bb.k ], [ @.str.56, %bb.j ], [ @.str.55, %bb.i ], [ @.str.54, %__drm_to_dev.exit ]
  %i.x = load ptr, ptr %i.h, align 8
  %i.y = lshr i64 %i.o, 10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.t, ptr noundef @.str.58, i32 noundef %i.v, ptr noundef nonnull %.0.i, ptr noundef %i.x, i64 noundef %i.y, i32 noundef 2048) #9
  %i.z = load ptr, ptr %1, align 8
  tail call void @release_firmware(ptr noundef %i.z) #10
  store ptr null, ptr %1, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.f, %__uc_fw_to_gt.exit, %intel_uc_fw_type_repr.exit
  %.0 = phi i32 [ %i.j, %__uc_fw_to_gt.exit ], [ -2, %intel_uc_fw_type_repr.exit ], [ 0, %bb.f ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_gem_object_create_lmem_from_data(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_gem_object_create_shmem_from_data(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @intel_uc_fw_mark_load_failed(ptr nofree noundef captures(none) %0, i32 noundef returned %1) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  switch i32 %i.a, label %__uc_fw_to_gt.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 -624
  br label %__uc_fw_to_gt.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 -2392
  br label %__uc_fw_to_gt.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 -48
  br label %__uc_fw_to_gt.exit

__uc_fw_to_gt.exit:                               ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.d, %bb.d ], [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ null, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.0.i.i, align 8           ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.e

bb.e:                                             ; preds = %__uc_fw_to_gt.exit
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %__uc_fw_to_gt.exit, %bb.e
  %i.h = phi ptr [ %i.g, %bb.e ], [ null, %__uc_fw_to_gt.exit ]
  %i.i = getelementptr i8, ptr %.0.i.i, i64 4936
  %i.j = load i32, ptr %i.i, align 8
  switch i32 %i.a, label %bb.h [
    i32 0, label %intel_uc_fw_type_repr.exit
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %__drm_to_dev.exit
  br label %intel_uc_fw_type_repr.exit

bb.g:                                             ; preds = %__drm_to_dev.exit
  br label %intel_uc_fw_type_repr.exit

bb.h:                                             ; preds = %__drm_to_dev.exit
  br label %intel_uc_fw_type_repr.exit

intel_uc_fw_type_repr.exit:                       ; preds = %__drm_to_dev.exit, %bb.f, %bb.g, %bb.h
  %.0.i = phi ptr [ @.str.57, %bb.h ], [ @.str.56, %bb.g ], [ @.str.55, %bb.f ], [ @.str.54, %__drm_to_dev.exit ]
  %i.k = getelementptr i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = sext i32 %1 to i64
  %i.n = inttoptr i64 %i.m to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.h, ptr noundef @.str.6, i32 noundef %i.j, ptr noundef nonnull %.0.i, ptr noundef %i.l, ptr noundef %i.n) #9
  %i.o = getelementptr i8, ptr %0, i64 4
  store i32 8, ptr %i.o, align 4
  ret i32 %1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @intel_uc_fw_upload(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val = load i32, ptr %i.a, align 4
  %i.b = icmp sgt i32 %.val, 6
  br i1 %i.b, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8
  switch i32 %i.c, label %__uc_fw_to_gt.exit.i [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 -624
  br label %__uc_fw_to_gt.exit.i

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 -2392
  br label %__uc_fw_to_gt.exit.i

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 -48
  br label %__uc_fw_to_gt.exit.i

__uc_fw_to_gt.exit.i:                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.f, %bb.e ], [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ null, %bb.b ] ; 3 uses
  %i.g = getelementptr i8, ptr %.0.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 14 uses
  tail call void @intel_uncore_forcewake_get(ptr noundef %i.h, i32 noundef 65535) #10
  %i.i = getelementptr i8, ptr %0, i64 336
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %0, i64 404
  %i.l = load i32, ptr %i.k, align 4
  %i.m = zext i32 %i.l to i64
  %i.n = add i64 %i.j, %i.m                       ; 2 uses
  %i.o = trunc i64 %i.n to i32
  %.val47.i = load ptr, ptr %i.h, align 8
  %i.p = getelementptr i8, ptr %i.h, i64 36       ; 9 uses
  %.val48.i = load i32, ptr %i.p, align 4
  %i.q = add i32 %.val48.i, 49920
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr i8, ptr %.val47.i, i64 %i.r
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.o, ptr elementtype(i32) %i.s) #11, !srcloc !27
  %i.t = lshr i64 %i.n, 32
  %i.u = trunc nuw i64 %i.t to i32
  %.val45.i = load ptr, ptr %i.h, align 8
  %.val46.i = load i32, ptr %i.p, align 4
  %i.v = add i32 %.val46.i, 49924
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr i8, ptr %.val45.i, i64 %i.w
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.u, ptr elementtype(i32) %i.x) #11, !srcloc !27
  %.val43.i = load ptr, ptr %i.h, align 8
  %.val44.i = load i32, ptr %i.p, align 4
  %i.y = add i32 %.val44.i, 49928
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr i8, ptr %.val43.i, i64 %i.z
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %1, ptr elementtype(i32) %i.aa) #11, !srcloc !27
  %.val41.i = load ptr, ptr %i.h, align 8
  %.val42.i = load i32, ptr %i.p, align 4
  %i.ab = add i32 %.val42.i, 49932
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr i8, ptr %.val41.i, i64 %i.ac
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 458752, ptr elementtype(i32) %i.ad) #11, !srcloc !27
  %i.ae = getelementptr i8, ptr %0, i64 396
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = add i32 %i.af, 128
  %.val39.i = load ptr, ptr %i.h, align 8
  %.val40.i = load i32, ptr %i.p, align 4
  %i.ah = add i32 %.val40.i, 49936
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr i8, ptr %.val39.i, i64 %i.ai
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ag, ptr elementtype(i32) %i.aj) #11, !srcloc !27
  %i.ak = or i32 %2, 1                            ; 2 uses
  %i.al = shl i32 %i.ak, 16
  %i.am = or i32 %i.al, %i.ak
  %.val37.i = load ptr, ptr %i.h, align 8
  %.val38.i = load i32, ptr %i.p, align 4
  %i.an = add i32 %.val38.i, 49940
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr i8, ptr %.val37.i, i64 %i.ao
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.am, ptr elementtype(i32) %i.ap) #11, !srcloc !27
  %i.aq = tail call i32 @__intel_wait_for_register_fw(ptr noundef %i.h, i32 49940, i32 noundef 1, i32 noundef 0, i32 noundef 2, i32 noundef 100, ptr noundef null) #10 ; 3 uses
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %__uc_fw_to_gt.exit.i
  %i.ar = load ptr, ptr %.0.i.i.i, align 8        ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.g, %bb.f
  %i.au = phi ptr [ %i.at, %bb.g ], [ null, %bb.f ]
  %i.av = getelementptr i8, ptr %.0.i.i.i, i64 4936
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = load i32, ptr %0, align 8
  switch i32 %i.ax, label %bb.j [
    i32 0, label %intel_uc_fw_type_repr.exit.i
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %__drm_to_dev.exit.i
  br label %intel_uc_fw_type_repr.exit.i

bb.i:                                             ; preds = %__drm_to_dev.exit.i
  br label %intel_uc_fw_type_repr.exit.i

bb.j:                                             ; preds = %__drm_to_dev.exit.i
  br label %intel_uc_fw_type_repr.exit.i

intel_uc_fw_type_repr.exit.i:                     ; preds = %bb.j, %bb.i, %bb.h, %__drm_to_dev.exit.i
  %.0.i.i = phi ptr [ @.str.57, %bb.j ], [ @.str.56, %bb.i ], [ @.str.55, %bb.h ], [ @.str.54, %__drm_to_dev.exit.i ]
  %.val49.i = load ptr, ptr %i.h, align 8
  %.val50.i = load i32, ptr %i.p, align 4
  %i.ay = add i32 %.val50.i, 49940
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr i8, ptr %.val49.i, i64 %i.az
  %i.bb = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ba) #11, !srcloc !28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.au, ptr noundef @.str.67, i32 noundef %i.aw, ptr noundef nonnull %.0.i.i, i32 noundef %i.bb) #9
  %i.bc = shl i32 %2, 16
  %.val.i = load ptr, ptr %i.h, align 8
  %.val36.i = load i32, ptr %i.p, align 4
  %i.bd = add i32 %.val36.i, 49940
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr i8, ptr %.val.i, i64 %i.be
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.bc, ptr elementtype(i32) %i.bf) #11, !srcloc !27
  tail call void @intel_uncore_forcewake_put(ptr noundef %i.h, i32 noundef 65535) #10
  %i.bg = load i32, ptr %0, align 8               ; 2 uses
  switch i32 %i.bg, label %__uc_fw_to_gt.exit.i9 [
    i32 0, label %bb.k
    i32 1, label %bb.l
    i32 2, label %bb.m
  ]

.critedge:                                        ; preds = %__uc_fw_to_gt.exit.i
  %i.bh = shl i32 %2, 16
  %.val.i.c = load ptr, ptr %i.h, align 8
  %.val36.i.c = load i32, ptr %i.p, align 4
  %i.bi = add i32 %.val36.i.c, 49940
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr i8, ptr %.val.i.c, i64 %i.bj
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.bh, ptr elementtype(i32) %i.bk) #11, !srcloc !27
  tail call void @intel_uncore_forcewake_put(ptr noundef %i.h, i32 noundef 65535) #10
  br label %.sink.split

bb.k:                                             ; preds = %intel_uc_fw_type_repr.exit.i
  %i.bl = getelementptr i8, ptr %0, i64 -624
  br label %__uc_fw_to_gt.exit.i9

bb.l:                                             ; preds = %intel_uc_fw_type_repr.exit.i
  %i.bm = getelementptr i8, ptr %0, i64 -2392
  br label %__uc_fw_to_gt.exit.i9

bb.m:                                             ; preds = %intel_uc_fw_type_repr.exit.i
  %i.bn = getelementptr i8, ptr %0, i64 -48
  br label %__uc_fw_to_gt.exit.i9

__uc_fw_to_gt.exit.i9:                            ; preds = %bb.m, %bb.l, %bb.k, %intel_uc_fw_type_repr.exit.i
  %.0.i.i.i10 = phi ptr [ %i.bn, %bb.m ], [ %i.bl, %bb.k ], [ %i.bm, %bb.l ], [ null, %intel_uc_fw_type_repr.exit.i ] ; 2 uses
  %i.bo = load ptr, ptr %.0.i.i.i10, align 8      ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i11, label %__drm_to_dev.exit.i12, label %bb.n

bb.n:                                             ; preds = %__uc_fw_to_gt.exit.i9
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  br label %__drm_to_dev.exit.i12

__drm_to_dev.exit.i12:                            ; preds = %bb.n, %__uc_fw_to_gt.exit.i9
  %i.br = phi ptr [ %i.bq, %bb.n ], [ null, %__uc_fw_to_gt.exit.i9 ]
  %i.bs = getelementptr i8, ptr %.0.i.i.i10, i64 4936
  %i.bt = load i32, ptr %i.bs, align 8
  switch i32 %i.bg, label %bb.q [
    i32 0, label %intel_uc_fw_mark_load_failed.exit
    i32 1, label %bb.o
    i32 2, label %bb.p
  ]

bb.o:                                             ; preds = %__drm_to_dev.exit.i12
  br label %intel_uc_fw_mark_load_failed.exit

bb.p:                                             ; preds = %__drm_to_dev.exit.i12
  br label %intel_uc_fw_mark_load_failed.exit

bb.q:                                             ; preds = %__drm_to_dev.exit.i12
  br label %intel_uc_fw_mark_load_failed.exit

intel_uc_fw_mark_load_failed.exit:                ; preds = %__drm_to_dev.exit.i12, %bb.o, %bb.p, %bb.q
  %.0.i.i14 = phi ptr [ @.str.57, %bb.q ], [ @.str.56, %bb.p ], [ @.str.55, %bb.o ], [ @.str.54, %__drm_to_dev.exit.i12 ]
  %i.bu = getelementptr i8, ptr %0, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = sext i32 %i.aq to i64
  %i.bx = inttoptr i64 %i.bw to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.br, ptr noundef @.str.6, i32 noundef %i.bt, ptr noundef nonnull %.0.i.i14, ptr noundef %i.bv, ptr noundef nonnull %i.bx) #9
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %intel_uc_fw_mark_load_failed.exit
  %.sink = phi i32 [ 8, %intel_uc_fw_mark_load_failed.exit ], [ 9, %.critedge ]
  %.0.ph = phi i32 [ %i.aq, %intel_uc_fw_mark_load_failed.exit ], [ 0, %.critedge ]
  store i32 %.sink, ptr %i.a, align 4
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ -8, %bb.a ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @intel_uc_fw_init(ptr noundef %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.b, align 4
  %i.c = icmp sgt i32 %.val, 4
  br i1 %i.c, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i32 @i915_gem_object_pin_pages_unlocked(ptr noundef %i.e) #10 ; 3 uses
  %.not = icmp eq i32 %i.f, 0
  %i.g = load i32, ptr %0, align 8                ; 3 uses
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %i.g, label %__uc_fw_to_gt.exit [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 -624
  br label %__uc_fw_to_gt.exit

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 -2392
  br label %__uc_fw_to_gt.exit

bb.f:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 -48
  br label %__uc_fw_to_gt.exit

__uc_fw_to_gt.exit:                               ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.j, %bb.f ], [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ null, %bb.c ]
  %i.k = load ptr, ptr %.0.i.i, align 8           ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.g

bb.g:                                             ; preds = %__uc_fw_to_gt.exit
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %__uc_fw_to_gt.exit, %bb.g
  %i.n = phi ptr [ %i.m, %bb.g ], [ null, %__uc_fw_to_gt.exit ]
  switch i32 %i.g, label %intel_uc_fw_type_repr.exit [
    i32 0, label %__uc_fw_to_gt.exit21.thread
    i32 1, label %__uc_fw_to_gt.exit21.thread32
    i32 2, label %__uc_fw_to_gt.exit21.thread34
  ]

__uc_fw_to_gt.exit21.thread:                      ; preds = %__drm_to_dev.exit
  %i.o = getelementptr i8, ptr %0, i64 4312
  br label %intel_uc_fw_type_repr.exit

__uc_fw_to_gt.exit21.thread32:                    ; preds = %__drm_to_dev.exit
  %i.p = getelementptr i8, ptr %0, i64 2544
  br label %intel_uc_fw_type_repr.exit

__uc_fw_to_gt.exit21.thread34:                    ; preds = %__drm_to_dev.exit
  %i.q = getelementptr i8, ptr %0, i64 4888
  br label %intel_uc_fw_type_repr.exit

intel_uc_fw_type_repr.exit:                       ; preds = %__drm_to_dev.exit, %__uc_fw_to_gt.exit21.thread34, %__uc_fw_to_gt.exit21.thread32, %__uc_fw_to_gt.exit21.thread
  %.in = phi ptr [ %i.p, %__uc_fw_to_gt.exit21.thread32 ], [ %i.q, %__uc_fw_to_gt.exit21.thread34 ], [ %i.o, %__uc_fw_to_gt.exit21.thread ], [ inttoptr (i64 4936 to ptr), %__drm_to_dev.exit ]
  %.0.i = phi ptr [ @.str.55, %__uc_fw_to_gt.exit21.thread32 ], [ @.str.56, %__uc_fw_to_gt.exit21.thread34 ], [ @.str.54, %__uc_fw_to_gt.exit21.thread ], [ @.str.57, %__drm_to_dev.exit ]
  %i.r = load i32, ptr %.in, align 8
  %i.s = sext i32 %i.f to i64
  %i.t = inttoptr i64 %i.s to ptr
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.n, i32 noundef 1, ptr noundef @.str.7, i32 noundef %i.r, ptr noundef nonnull %.0.i, ptr noundef nonnull %i.t) #10
  br label %bb.x

bb.h:                                             ; preds = %bb.b
  switch i32 %i.g, label %uc_fw_need_rsa_in_memory.exit.i [
    i32 0, label %bb.i
    i32 1, label %uc_fw_need_rsa_in_memory.exit.thread.i
    i32 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %0, i64 -624
  br label %uc_fw_need_rsa_in_memory.exit.i

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr i8, ptr %0, i64 -48
  br label %uc_fw_need_rsa_in_memory.exit.i

uc_fw_need_rsa_in_memory.exit.thread.i:           ; preds = %bb.h
  %i.w = getelementptr i8, ptr %0, i64 -2392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  br label %bb.k

uc_fw_need_rsa_in_memory.exit.i:                  ; preds = %bb.j, %bb.i, %bb.h
  %.0.i.i.ph.i = phi ptr [ null, %bb.h ], [ %i.u, %bb.i ], [ %i.v, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.x = getelementptr i8, ptr %0, i64 392
  %i.y = load i32, ptr %i.x, align 8
  %i.z = icmp ugt i32 %i.y, 256
  br i1 %i.z, label %bb.k, label %uc_fw_rsa_data_create.exit.thread

bb.k:                                             ; preds = %uc_fw_need_rsa_in_memory.exit.i, %uc_fw_need_rsa_in_memory.exit.thread.i
  %.0.i.i1517.i = phi ptr [ %i.w, %uc_fw_need_rsa_in_memory.exit.thread.i ], [ %.0.i.i.ph.i, %uc_fw_need_rsa_in_memory.exit.i ] ; 2 uses
  %i.aa = getelementptr i8, ptr %.0.i.i1517.i, i64 624
  %i.ab = tail call ptr @intel_guc_allocate_vma(ptr noundef %i.aa, i32 noundef 4096) #10 ; 6 uses
  store ptr %i.ab, ptr %i.a, align 8
  %i.ac = icmp ugt ptr %i.ab, inttoptr (i64 -4096 to ptr)
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = trunc i64 %i.ad to i32
  br label %uc_fw_rsa_data_create.exit

bb.m:                                             ; preds = %bb.k
  %i.af = getelementptr i8, ptr %i.ab, i64 184    ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = tail call i32 @intel_gt_coherent_map_type(ptr noundef %.0.i.i1517.i, ptr noundef %i.ag, i1 noundef zeroext true) #10
  %i.ai = tail call ptr @i915_gem_object_pin_map_unlocked(ptr noundef %i.ag, i32 noundef %i.ah) #10 ; 3 uses
  %i.aj = icmp ugt ptr %i.ai, inttoptr (i64 -4096 to ptr)
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @i915_vma_unpin_and_release(ptr noundef nonnull %i.a, i32 noundef 0) #10
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = trunc i64 %i.ak to i32
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.am = getelementptr i8, ptr %i.ab, i64 224
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = trunc i64 %i.an to i32
  %i.ap = tail call i64 @intel_uc_fw_copy_rsa(ptr noundef %0, ptr noundef %i.ai, i32 noundef %i.ao) #12
  %i.aq = load ptr, ptr %i.af, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 688    ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ar, ptr elementtype(i32) %i.ar) #11, !srcloc !15
  %i.as = getelementptr i8, ptr %0, i64 392
  %i.at = load i32, ptr %i.as, align 8
  %i.au = zext i32 %i.at to i64
  %i.av = icmp ult i64 %i.ap, %i.au
  br i1 %i.av, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr i8, ptr %0, i64 384
  store ptr %i.ab, ptr %i.aw, align 8
  br label %uc_fw_rsa_data_create.exit.thread

bb.q:                                             ; preds = %bb.o, %bb.n
  %.0.i22 = phi i32 [ %i.al, %bb.n ], [ -12, %bb.o ]
  call void @i915_vma_unpin_and_release(ptr noundef nonnull %i.a, i32 noundef 0) #10
  br label %uc_fw_rsa_data_create.exit

uc_fw_rsa_data_create.exit.thread:                ; preds = %bb.p, %uc_fw_need_rsa_in_memory.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.w

uc_fw_rsa_data_create.exit:                       ; preds = %bb.l, %bb.q
  %.012.i = phi i32 [ %i.ae, %bb.l ], [ %.0.i22, %bb.q ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not19 = icmp eq i32 %.012.i, 0
  br i1 %.not19, label %bb.w, label %bb.r

bb.r:                                             ; preds = %uc_fw_rsa_data_create.exit
  %i.ax = load i32, ptr %0, align 8               ; 2 uses
  switch i32 %i.ax, label %__uc_fw_to_gt.exit24 [
    i32 0, label %bb.s
    i32 1, label %bb.t
    i32 2, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr i8, ptr %0, i64 -624
  br label %__uc_fw_to_gt.exit24

bb.t:                                             ; preds = %bb.r
  %i.az = getelementptr i8, ptr %0, i64 -2392
  br label %__uc_fw_to_gt.exit24

bb.u:                                             ; preds = %bb.r
  %i.ba = getelementptr i8, ptr %0, i64 -48
  br label %__uc_fw_to_gt.exit24

__uc_fw_to_gt.exit24:                             ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  %.0.i.i23 = phi ptr [ %i.ba, %bb.u ], [ %i.ay, %bb.s ], [ %i.az, %bb.t ], [ null, %bb.r ]
  %i.bb = load ptr, ptr %.0.i.i23, align 8        ; 2 uses
  %.not.i25 = icmp eq ptr %i.bb, null
  br i1 %.not.i25, label %__drm_to_dev.exit26, label %bb.v

bb.v:                                             ; preds = %__uc_fw_to_gt.exit24
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  br label %__drm_to_dev.exit26

__drm_to_dev.exit26:                              ; preds = %__uc_fw_to_gt.exit24, %bb.v
  %i.be = phi ptr [ %i.bd, %bb.v ], [ null, %__uc_fw_to_gt.exit24 ]
  switch i32 %i.ax, label %intel_uc_fw_type_repr.exit30 [
    i32 0, label %__uc_fw_to_gt.exit28.thread
    i32 1, label %__uc_fw_to_gt.exit28.thread39
    i32 2, label %__uc_fw_to_gt.exit28.thread41
  ]

__uc_fw_to_gt.exit28.thread:                      ; preds = %__drm_to_dev.exit26
  %i.bf = getelementptr i8, ptr %0, i64 4312
  br label %intel_uc_fw_type_repr.exit30

__uc_fw_to_gt.exit28.thread39:                    ; preds = %__drm_to_dev.exit26
  %i.bg = getelementptr i8, ptr %0, i64 2544
  br label %intel_uc_fw_type_repr.exit30

__uc_fw_to_gt.exit28.thread41:                    ; preds = %__drm_to_dev.exit26
  %i.bh = getelementptr i8, ptr %0, i64 4888
  br label %intel_uc_fw_type_repr.exit30

intel_uc_fw_type_repr.exit30:                     ; preds = %__drm_to_dev.exit26, %__uc_fw_to_gt.exit28.thread41, %__uc_fw_to_gt.exit28.thread39, %__uc_fw_to_gt.exit28.thread
  %.in43 = phi ptr [ %i.bg, %__uc_fw_to_gt.exit28.thread39 ], [ %i.bh, %__uc_fw_to_gt.exit28.thread41 ], [ %i.bf, %__uc_fw_to_gt.exit28.thread ], [ inttoptr (i64 4936 to ptr), %__drm_to_dev.exit26 ]
  %.0.i29 = phi ptr [ @.str.55, %__uc_fw_to_gt.exit28.thread39 ], [ @.str.56, %__uc_fw_to_gt.exit28.thread41 ], [ @.str.54, %__uc_fw_to_gt.exit28.thread ], [ @.str.57, %__drm_to_dev.exit26 ]
  %i.bi = load i32, ptr %.in43, align 8
  %i.bj = sext i32 %.012.i to i64
  %i.bk = inttoptr i64 %i.bj to ptr
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.be, i32 noundef 1, ptr noundef @.str.8, i32 noundef %i.bi, ptr noundef nonnull %.0.i29, ptr noundef nonnull %i.bk) #10
  %i.bl = load ptr, ptr %i.d, align 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 688    ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bm, ptr elementtype(i32) %i.bm) #11, !srcloc !15
  br label %bb.x

bb.w:                                             ; preds = %uc_fw_rsa_data_create.exit.thread, %uc_fw_rsa_data_create.exit
  call fastcc void @uc_fw_bind_ggtt(ptr noundef %0) #12, !srcloc !29
  br label %bb.x

bb.x:                                             ; preds = %intel_uc_fw_type_repr.exit, %intel_uc_fw_type_repr.exit30, %bb.a, %bb.w
  %.016 = phi i32 [ -8, %bb.a ], [ 0, %bb.w ], [ %i.f, %intel_uc_fw_type_repr.exit ], [ %.012.i, %intel_uc_fw_type_repr.exit30 ]
  ret i32 %.016
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_object_pin_pages_unlocked(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @uc_fw_bind_ggtt(ptr noundef %0) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load i32, ptr %0, align 8                ; 3 uses
  switch i32 %i.c, label %__uc_fw_to_gt.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 -624
  br label %__uc_fw_to_gt.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 -2392
  br label %__uc_fw_to_gt.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 -48
  br label %__uc_fw_to_gt.exit

__uc_fw_to_gt.exit:                               ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.f, %bb.d ], [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ null, %bb.a ]
  %i.g = getelementptr i8, ptr %.0.i.i, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 88
  %i.j = getelementptr i8, ptr %0, i64 80
  %i.k = load i8, ptr %i.j, align 8, !range !12, !noundef !13
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.l

bb.e:                                             ; preds = %__uc_fw_to_gt.exit
  switch i32 %i.c, label %uc_fw_ggtt_offset.exit [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %0, i64 -624
  br label %uc_fw_ggtt_offset.exit

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %0, i64 -2392
  br label %uc_fw_ggtt_offset.exit

bb.h:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %0, i64 -48
  br label %uc_fw_ggtt_offset.exit

uc_fw_ggtt_offset.exit:                           ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i.i.i = phi ptr [ %i.o, %bb.h ], [ %i.m, %bb.f ], [ %i.n, %bb.g ], [ null, %bb.e ] ; 2 uses
  %i.p = getelementptr i8, ptr %.0.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = shl i32 %i.c, 21                         ; 2 uses
  %i.s = getelementptr i8, ptr %.0.i.i.i, i64 16
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp eq i32 %i.t, 2
  %i.v = add i32 %i.r, 8388608
  %spec.select.i = select i1 %i.u, i32 %i.v, i32 %i.r
  %i.w = getelementptr i8, ptr %i.q, i64 1072
  %i.x = load i64, ptr %i.w, align 8
  %.tr.i = trunc i64 %i.x to i32
  %.narrow.i = add i32 %spec.select.i, %.tr.i
  %i.y = zext i32 %.narrow.i to i64
  %i.z = getelementptr i8, ptr %0, i64 336
  store i64 %i.y, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %i.b, i64 216
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %0, i64 344
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %i.b, i64 760
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %0, i64 280       ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = tail call zeroext i1 @i915_gem_object_has_struct_page(ptr noundef %i.b) #10
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %uc_fw_ggtt_offset.exit
  %i.ah = load ptr, ptr %i.af, align 8
  tail call void @drm_clflush_sg(ptr noundef %i.ah) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %uc_fw_ggtt_offset.exit
  %i.ai = tail call zeroext i1 @i915_gem_object_is_lmem(ptr noundef %i.b) #10
  %spec.select = select i1 %i.ai, i32 2, i32 0
  %i.aj = getelementptr i8, ptr %i.h, i64 632
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %bb.k, label %.sink.split

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr i8, ptr %i.h, i64 616
  %i.am = load ptr, ptr %i.al, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.k
  %.sink25 = phi ptr [ %i.am, %bb.k ], [ %i.ak, %bb.j ]
  %i.an = getelementptr i8, ptr %i.h, i64 304
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call i32 @i915_gem_get_pat_index(ptr noundef %i.ao, i32 noundef 0) #10
  tail call void %.sink25(ptr noundef %i.h, ptr noundef %i.i, i32 noundef %i.ap, i32 noundef %spec.select) #10
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %__uc_fw_to_gt.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_uc_fw_fini(ptr noundef %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %0, align 8
  switch i32 %i.a, label %__uc_fw_to_gt.exit.i [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 -624
  br label %__uc_fw_to_gt.exit.i

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 -2392
  br label %__uc_fw_to_gt.exit.i

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 -48
  br label %__uc_fw_to_gt.exit.i

__uc_fw_to_gt.exit.i:                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.d, %bb.d ], [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ null, %bb.a ]
  %i.e = getelementptr i8, ptr %0, i64 344
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %uc_fw_unbind_ggtt.exit, label %bb.e

bb.e:                                             ; preds = %__uc_fw_to_gt.exit.i
  %i.g = getelementptr i8, ptr %.0.i.i.i, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 592
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %0, i64 336
  %i.l = load i64, ptr %i.k, align 8
  tail call void %i.j(ptr noundef %i.h, i64 noundef %i.l, i64 noundef %i.f) #10, !inline_history !30
  br label %uc_fw_unbind_ggtt.exit

uc_fw_unbind_ggtt.exit:                           ; preds = %__uc_fw_to_gt.exit.i, %bb.e
  %i.m = getelementptr i8, ptr %0, i64 384
  tail call void @i915_vma_unpin_and_release(ptr noundef %i.m, i32 noundef 0) #10
  %i.n = getelementptr i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 688      ; 3 uses
  %i.q = load volatile i32, ptr %i.p, align 4
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %uc_fw_unbind_ggtt.exit
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.p, ptr elementtype(i32) %i.p) #11, !srcloc !15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %uc_fw_unbind_ggtt.exit
  %i.r = getelementptr i8, ptr %0, i64 4
  store i32 5, ptr %i.r, align 4
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_uc_fw_resume_mapping(ptr noundef %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.a, align 4
  %i.b = icmp sgt i32 %.val, 4
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 72
end_hunk_0
begin_hunk_1_@intel_uc_fw_cleanup_fetch:bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @intel_uc_fw_copy_rsa(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 720
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 392
  %i.f = load i32, ptr %i.e, align 8
  %i.g = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %2) ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 404
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add i32 %i.i, 128
  %i.k = getelementptr i8, ptr %0, i64 396
  %i.l = load i32, ptr %i.k, align 4
  %i.m = add i32 %i.j, %i.l                       ; 2 uses
  %i.n = lshr i32 %i.m, 12                        ; 2 uses
  %i.o = and i32 %i.m, 4095                       ; 2 uses
  %i.p = tail call zeroext i1 @i915_gem_object_has_struct_page(ptr noundef %i.b) #10
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 760
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load ptr, ptr %i.s, align 8              ; 9 uses
  %.not.i132 = icmp eq ptr %i.t, null             ; 2 uses
  br i1 %i.p, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i132, label %.loopexit, label %__sgt_iter.exit133

__sgt_iter.exit133:                               ; preds = %bb.b
  %.pre = load i64, ptr @vmemmap_base, align 8    ; 4 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !noalias !44 ; 3 uses
  %.val = load i64, ptr %i.t, align 8
  %i.w = and i64 %.val, -4                        ; 2 uses
  %i.x = sub i64 %i.w, %.pre                      ; 2 uses
  %i.y = icmp eq i64 %i.w, %.pre
  %i.z = inttoptr i64 %.pre to ptr
  %i.aa = lshr i32 %i.v, 12
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr i8, ptr %i.z, i64 %i.x
  %i.ad = getelementptr [64 x i8], ptr %i.ac, i64 %i.ab ; 2 uses
  %.not122201215 = icmp eq ptr %i.ad, null
  %.not122216 = select i1 %i.y, i1 true, i1 %.not122201215
  br i1 %.not122216, label %.loopexit, label %.lr.ph226.preheader

.lr.ph226.preheader:                              ; preds = %__sgt_iter.exit133
  %i.ae = getelementptr i8, ptr %i.t, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !noalias !44
  %i.ag = add i32 %i.af, %i.v
  %i.ah = ashr exact i64 %i.x, 6
  br label %.lr.ph226

.lr.ph226:                                        ; preds = %.lr.ph226.preheader, %__sgt_iter.exit131
  %i.ai = phi ptr [ %i.bw, %__sgt_iter.exit131 ], [ %i.ad, %.lr.ph226.preheader ]
  %i.aj = phi i64 [ %i.br, %__sgt_iter.exit131 ], [ %.pre, %.lr.ph226.preheader ]
  %.0225 = phi ptr [ %.1.ph, %__sgt_iter.exit131 ], [ %1, %.lr.ph226.preheader ] ; 3 uses
  %.095224 = phi i32 [ %.196.ph, %__sgt_iter.exit131 ], [ %i.g, %.lr.ph226.preheader ] ; 3 uses
  %.0101223 = phi i32 [ %.1102.ph, %__sgt_iter.exit131 ], [ %i.o, %.lr.ph226.preheader ] ; 3 uses
  %.sroa.0.0222 = phi ptr [ %.sroa.0.1, %__sgt_iter.exit131 ], [ %i.t, %.lr.ph226.preheader ] ; 3 uses
  %.sroa.10.0221 = phi i64 [ %.sroa.10.1, %__sgt_iter.exit131 ], [ %i.ah, %.lr.ph226.preheader ]
  %.0105220 = phi i32 [ %.1106.ph, %__sgt_iter.exit131 ], [ %i.n, %.lr.ph226.preheader ] ; 2 uses
  %.0109219 = phi i64 [ %.1110.ph, %__sgt_iter.exit131 ], [ 0, %.lr.ph226.preheader ] ; 2 uses
  %.sroa.19.0218 = phi i32 [ %.sroa.19.1, %__sgt_iter.exit131 ], [ %i.ag, %.lr.ph226.preheader ] ; 2 uses
  %.sroa.13.0217 = phi i32 [ %.sroa.13.1, %__sgt_iter.exit131 ], [ %i.v, %.lr.ph226.preheader ]
  %i.ak = icmp sgt i32 %.0105220, 0
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph226
  %i.al = add nsw i32 %.0105220, -1
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph226
  %i.am = sub nuw nsw i32 4096, %.0101223
  %i.an = tail call i32 @llvm.umin.i32(i32 %.095224, i32 %i.am) ; 2 uses
  %i.ao = zext nneg i32 %.0101223 to i64
  %i.ap = zext nneg i32 %i.an to i64              ; 3 uses
  %i.aq = ptrtoint ptr %i.ai to i64
  %i.ar = sub i64 %i.aq, %i.aj
  %i.as = shl i64 %i.ar, 6
  %i.at = load i64, ptr @page_offset_base, align 8
  %i.au = add i64 %i.at, %i.as
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0225, ptr align 1 %i.aw, i64 range(i64 0, 4294967296) %i.ap, i1 false)
  %i.ax = getelementptr i8, ptr %.0225, i64 %i.ap
  %i.ay = sub nuw i32 %.095224, %i.an             ; 2 uses
  %i.az = add i64 %.0109219, %i.ap                ; 2 uses
  %.not123 = icmp eq i32 %i.ay, 0
  br i1 %.not123, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1110.ph = phi i64 [ %i.az, %bb.d ], [ %.0109219, %bb.c ] ; 2 uses
  %.1106.ph = phi i32 [ 0, %bb.d ], [ %i.al, %bb.c ]
  %.1102.ph = phi i32 [ 0, %bb.d ], [ %.0101223, %bb.c ]
  %.196.ph = phi i32 [ %i.ay, %bb.d ], [ %.095224, %bb.c ]
  %.1.ph = phi ptr [ %i.ax, %bb.d ], [ %.0225, %bb.c ]
  %i.ba = add i32 %.sroa.13.0217, 4096            ; 2 uses
  %.not124 = icmp ult i32 %i.ba, %.sroa.19.0218
  br i1 %.not124, label %__sgt_iter.exit131, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i = load i64, ptr %.sroa.0.0222, align 8
  %i.bb = and i64 %.val.i, 2
  %.not.i135 = icmp eq i64 %i.bb, 0
  br i1 %.not.i135, label %bb.g, label %__sgt_iter.exit131

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr i8, ptr %.sroa.0.0222, i64 32 ; 2 uses
  %.val.i.i = load i64, ptr %i.bc, align 8        ; 2 uses
  %i.bd = trunc i64 %.val.i.i to i1
  br i1 %i.bd, label %bb.h, label %__sg_next.exit, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.be = and i64 %.val.i.i, -4
  %i.bf = inttoptr i64 %i.be to ptr
  br label %__sg_next.exit

__sg_next.exit:                                   ; preds = %bb.g, %bb.h
  %i.bg = phi ptr [ %i.bc, %bb.g ], [ %i.bf, %bb.h ] ; 5 uses
  %.not.i130 = icmp eq ptr %i.bg, null
  br i1 %.not.i130, label %__sgt_iter.exit131, label %bb.i

bb.i:                                             ; preds = %__sg_next.exit
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !noalias !45 ; 2 uses
  %.val134 = load i64, ptr %i.bg, align 8
  %i.bj = and i64 %.val134, -4
  %i.bk = load i64, ptr @vmemmap_base, align 8, !noalias !45
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 6
  %i.bn = getelementptr i8, ptr %i.bg, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !noalias !45
  %i.bp = add i32 %i.bo, %i.bi
  br label %__sgt_iter.exit131

__sgt_iter.exit131:                               ; preds = %bb.f, %bb.i, %__sg_next.exit, %bb.e
  %.sroa.13.1 = phi i32 [ %i.ba, %bb.e ], [ 0, %__sg_next.exit ], [ %i.bi, %bb.i ], [ 0, %bb.f ] ; 2 uses
  %.sroa.19.1 = phi i32 [ %.sroa.19.0218, %bb.e ], [ 0, %__sg_next.exit ], [ %i.bp, %bb.i ], [ 0, %bb.f ]
  %.sroa.10.1 = phi i64 [ %.sroa.10.0221, %bb.e ], [ 0, %__sg_next.exit ], [ %i.bm, %bb.i ], [ 0, %bb.f ] ; 3 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.0222, %bb.e ], [ null, %__sg_next.exit ], [ %i.bg, %bb.i ], [ null, %bb.f ]
  %i.bq = icmp eq i64 %.sroa.10.1, 0
  %i.br = load i64, ptr @vmemmap_base, align 8    ; 2 uses
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = lshr i32 %.sroa.13.1, 12
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr [64 x i8], ptr %i.bs, i64 %.sroa.10.1
  %i.bw = getelementptr [64 x i8], ptr %i.bv, i64 %i.bu ; 2 uses
  %.not122201 = icmp eq ptr %i.bw, null
  %.not122 = select i1 %i.bq, i1 true, i1 %.not122201
  br i1 %.not122, label %.loopexit, label %.lr.ph226, !llvm.loop !38

bb.j:                                             ; preds = %bb.a
  br i1 %.not.i132, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr i8, ptr %i.t, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !noalias !46 ; 2 uses
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ca = getelementptr i8, ptr %i.t, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !noalias !46 ; 3 uses
  %i.cc = getelementptr i8, ptr %i.t, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !46 ; 2 uses
  %i.ce = add i32 %i.by, %i.cb
  %i.cf = zext i32 %i.cb to i64
  %i.cg = add i64 %i.cd, %i.cf
  %i.ch = getelementptr i8, ptr %i.d, i64 48
  %i.ci = getelementptr i8, ptr %i.d, i64 40
  br label %bb.l

bb.l:                                             ; preds = %__sgt_iter.exit, %.lr.ph
  %i.cj = phi i64 [ %i.cg, %.lr.ph ], [ %i.dz, %__sgt_iter.exit ]
  %.2213 = phi ptr [ %1, %.lr.ph ], [ %.3.ph, %__sgt_iter.exit ] ; 3 uses
  %.297212 = phi i32 [ %i.g, %.lr.ph ], [ %.398.ph, %__sgt_iter.exit ] ; 3 uses
  %.2103211 = phi i32 [ %i.o, %.lr.ph ], [ %.3104.ph, %__sgt_iter.exit ] ; 3 uses
  %.sroa.0.2210 = phi ptr [ %i.t, %.lr.ph ], [ %.sroa.0.3, %__sgt_iter.exit ] ; 3 uses
  %.sroa.10.2209 = phi i64 [ %i.cd, %.lr.ph ], [ %.sroa.10.3, %__sgt_iter.exit ]
  %.2107208 = phi i32 [ %i.n, %.lr.ph ], [ %.3108.ph, %__sgt_iter.exit ] ; 2 uses
  %.3112207 = phi i64 [ 0, %.lr.ph ], [ %.4.ph, %__sgt_iter.exit ] ; 2 uses
  %.sroa.19.2206 = phi i32 [ %i.ce, %.lr.ph ], [ %.sroa.19.3, %__sgt_iter.exit ] ; 2 uses
  %.sroa.13.2205 = phi i32 [ %i.cb, %.lr.ph ], [ %.sroa.13.3, %__sgt_iter.exit ]
  %i.ck = icmp sgt i32 %.2107208, 0
  br i1 %i.ck, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cl = add nsw i32 %.2107208, -1
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.cm = sub nuw nsw i32 4096, %.2103211
  %i.cn = tail call i32 @llvm.umin.i32(i32 %.297212, i32 %i.cm) ; 2 uses
  %i.co = zext nneg i32 %.2103211 to i64
  %i.cp = load i64, ptr %i.ch, align 8
  %i.cq = sub i64 %i.cj, %i.cp
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count, ptr elementtype(i32) @__preempt_count) #11, !srcloc !47
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !48
  %i.cr = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #13, !srcloc !49
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = getelementptr i8, ptr %i.cs, i64 2900   ; 4 uses
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !50
  %.val.i136 = load ptr, ptr %i.ci, align 8
  %i.cw = getelementptr i8, ptr %.val.i136, i64 %i.cq
  %i.cx = getelementptr i8, ptr %i.cw, i64 %i.co
  %i.cy = zext nneg i32 %i.cn to i64              ; 3 uses
  tail call void @memcpy_fromio(ptr noundef %.2213, ptr noundef %i.cx, i64 noundef %i.cy) #10
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !51
  %i.cz = load i32, ptr %i.ct, align 4
  %i.da = add i32 %i.cz, -1
  store i32 %i.da, ptr %i.ct, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !52
  %i.db = tail call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count, ptr elementtype(i32) @__preempt_count) #11, !srcloc !53 ; 2 uses
  %i.dc = icmp ult i8 %i.db, 2
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = trunc nuw i8 %i.db to i1
  br i1 %i.dd, label %bb.o, label %io_mapping_unmap_atomic.exit, !prof !16

bb.o:                                             ; preds = %bb.n
  %i.de = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.df = tail call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.de) #11, !srcloc !54
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.df)
  br label %io_mapping_unmap_atomic.exit

io_mapping_unmap_atomic.exit:                     ; preds = %bb.n, %bb.o
  %i.dg = getelementptr i8, ptr %.2213, i64 %i.cy
  %i.dh = sub i32 %.297212, %i.cn                 ; 2 uses
  %i.di = add i64 %.3112207, %i.cy                ; 2 uses
  %.not120 = icmp eq i32 %i.dh, 0
  br i1 %.not120, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.m, %io_mapping_unmap_atomic.exit
  %.4.ph = phi i64 [ %i.di, %io_mapping_unmap_atomic.exit ], [ %.3112207, %bb.m ] ; 4 uses
  %.3108.ph = phi i32 [ 0, %io_mapping_unmap_atomic.exit ], [ %i.cl, %bb.m ]
  %.3104.ph = phi i32 [ 0, %io_mapping_unmap_atomic.exit ], [ %.2103211, %bb.m ]
  %.398.ph = phi i32 [ %i.dh, %io_mapping_unmap_atomic.exit ], [ %.297212, %bb.m ]
  %.3.ph = phi ptr [ %i.dg, %io_mapping_unmap_atomic.exit ], [ %.2213, %bb.m ]
  %i.dj = add i32 %.sroa.13.2205, 4096            ; 2 uses
  %.not121 = icmp ult i32 %i.dj, %.sroa.19.2206
  br i1 %.not121, label %__sgt_iter.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val.i137 = load i64, ptr %.sroa.0.2210, align 8
  %i.dk = and i64 %.val.i137, 2
  %.not.i138 = icmp eq i64 %i.dk, 0
  br i1 %.not.i138, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.dl = getelementptr i8, ptr %.sroa.0.2210, i64 32 ; 2 uses
  %.val.i.i139 = load i64, ptr %i.dl, align 8     ; 2 uses
  %i.dm = trunc i64 %.val.i.i139 to i1
  br i1 %i.dm, label %bb.s, label %__sg_next.exit140, !prof !16

bb.s:                                             ; preds = %bb.r
  %i.dn = and i64 %.val.i.i139, -4
  %i.do = inttoptr i64 %i.dn to ptr
  br label %__sg_next.exit140

__sg_next.exit140:                                ; preds = %bb.r, %bb.s
  %i.dp = phi ptr [ %i.dl, %bb.r ], [ %i.do, %bb.s ] ; 5 uses
  %.not200 = icmp eq ptr %i.dp, null
  br i1 %.not200, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %__sg_next.exit140
  %i.dq = getelementptr i8, ptr %i.dp, i64 24
  %i.dr = load i32, ptr %i.dq, align 8, !noalias !55 ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dt = getelementptr i8, ptr %i.dp, i64 8
  %i.du = load i32, ptr %i.dt, align 8, !noalias !55 ; 2 uses
  %i.dv = getelementptr i8, ptr %i.dp, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !55
  %i.dx = add i32 %i.dr, %i.du
  br label %__sgt_iter.exit

__sgt_iter.exit:                                  ; preds = %bb.u, %bb.p
  %.sroa.13.3 = phi i32 [ %i.dj, %bb.p ], [ %i.du, %bb.u ] ; 2 uses
  %.sroa.19.3 = phi i32 [ %.sroa.19.2206, %bb.p ], [ %i.dx, %bb.u ]
  %.sroa.10.3 = phi i64 [ %.sroa.10.2209, %bb.p ], [ %i.dw, %bb.u ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %.sroa.0.2210, %bb.p ], [ %i.dp, %bb.u ]
  %i.dy = zext i32 %.sroa.13.3 to i64
  %i.dz = add i64 %.sroa.10.3, %i.dy
  br label %bb.l, !llvm.loop !43

.loopexit:                                        ; preds = %bb.q, %__sg_next.exit140, %bb.t, %io_mapping_unmap_atomic.exit, %__sgt_iter.exit131, %bb.d, %bb.j, %bb.k, %bb.b, %__sgt_iter.exit133
  %.6 = phi i64 [ 0, %bb.b ], [ 0, %bb.j ], [ 0, %__sgt_iter.exit133 ], [ %i.az, %bb.d ], [ 0, %bb.k ], [ %.1110.ph, %__sgt_iter.exit131 ], [ %.4.ph, %bb.t ], [ %i.di, %io_mapping_unmap_atomic.exit ], [ %.4.ph, %bb.q ], [ %.4.ph, %__sg_next.exit140 ]
  ret i64 %.6
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @i915_gem_object_has_struct_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @memcpy_fromio(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_uc_fw_dump(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %0, align 8
  switch i32 %i.a, label %bb.d [
    i32 0, label %intel_uc_fw_type_repr.exit
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %intel_uc_fw_type_repr.exit

bb.c:                                             ; preds = %bb.a
  br label %intel_uc_fw_type_repr.exit

bb.d:                                             ; preds = %bb.a
  br label %intel_uc_fw_type_repr.exit

intel_uc_fw_type_repr.exit:                       ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ @.str.57, %bb.d ], [ @.str.56, %bb.c ], [ @.str.55, %bb.b ], [ @.str.54, %bb.a ]
  %i.b = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef @.str.9, ptr noundef nonnull %.0.i, ptr noundef %i.c) #10
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %intel_uc_fw_type_repr.exit
  %i.g = load i32, ptr %0, align 8
  switch i32 %i.g, label %bb.h [
    i32 0, label %intel_uc_fw_type_repr.exit40
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  br label %intel_uc_fw_type_repr.exit40

bb.g:                                             ; preds = %bb.e
  br label %intel_uc_fw_type_repr.exit40

bb.h:                                             ; preds = %bb.e
  br label %intel_uc_fw_type_repr.exit40

intel_uc_fw_type_repr.exit40:                     ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i39 = phi ptr [ @.str.57, %bb.h ], [ @.str.56, %bb.g ], [ @.str.55, %bb.f ], [ @.str.54, %bb.e ]
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef @.str.10, ptr noundef nonnull %.0.i39, ptr noundef %i.f) #10
  br label %bb.i

bb.i:                                             ; preds = %intel_uc_fw_type_repr.exit40, %intel_uc_fw_type_repr.exit
  %i.h = getelementptr i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4
  switch i32 %i.i, label %bb.u [
    i32 -1, label %intel_uc_fw_status_repr.exit
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
    i32 4, label %bb.n
    i32 5, label %bb.o
    i32 6, label %bb.p
    i32 7, label %bb.q
    i32 8, label %bb.r
    i32 9, label %bb.s
    i32 10, label %bb.t
  ]

bb.j:                                             ; preds = %bb.i
  br label %intel_uc_fw_status_repr.exit

bb.k:                                             ; preds = %bb.i
  br label %intel_uc_fw_status_repr.exit

bb.l:                                             ; preds = %bb.i
  br label %intel_uc_fw_status_repr.exit

bb.m:                                             ; preds = %bb.i
  br label %intel_uc_fw_status_repr.exit

bb.n:                                             ; preds = %bb.i
  br label %intel_uc_fw_status_repr.exit

bb.o:                                             ; preds = %bb.i
  br label %intel_uc_fw_status_repr.exit

bb.p:                                             ; preds = %bb.i
  br label %intel_uc_fw_status_repr.exit

bb.q:                                             ; preds = %bb.i
  br label %intel_uc_fw_status_repr.exit

bb.r:                                             ; preds = %bb.i
  br label %intel_uc_fw_status_repr.exit

bb.s:                                             ; preds = %bb.i
  br label %intel_uc_fw_status_repr.exit

bb.t:                                             ; preds = %bb.i
  br label %intel_uc_fw_status_repr.exit

bb.u:                                             ; preds = %bb.i
  br label %intel_uc_fw_status_repr.exit

intel_uc_fw_status_repr.exit:                     ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.0.i41 = phi ptr [ @.str.80, %bb.u ], [ @.str.79, %bb.t ], [ @.str.69, %bb.j ], [ @.str.70, %bb.k ], [ @.str.71, %bb.l ], [ @.str.72, %bb.m ], [ @.str.73, %bb.n ], [ @.str.74, %bb.o ], [ @.str.75, %bb.p ], [ @.str.76, %bb.q ], [ @.str.77, %bb.r ], [ @.str.78, %bb.s ], [ @.str.68, %bb.i ]
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef @.str.11, ptr noundef nonnull %.0.i41) #10
  %i.j = getelementptr i8, ptr %0, i64 40
  %i.k = load i32, ptr %i.j, align 8              ; 4 uses
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp ult i32 %i.k, %i.m
  br i1 %i.n, label %intel_uc_fw_status_repr.exit._crit_edge, label %bb.v

intel_uc_fw_status_repr.exit._crit_edge:          ; preds = %intel_uc_fw_status_repr.exit
  %.phi.trans.insert42 = getelementptr i8, ptr %0, i64 20
  %.pre43 = load i32, ptr %.phi.trans.insert42, align 4
  %.phi.trans.insert44 = getelementptr i8, ptr %0, i64 44
  %.pre45 = load i32, ptr %.phi.trans.insert44, align 4
  br label %bb.z

bb.v:                                             ; preds = %intel_uc_fw_status_repr.exit
  %i.o = icmp eq i32 %i.k, %i.m
  %i.p = getelementptr i8, ptr %0, i64 44
  %i.q = load i32, ptr %i.p, align 4              ; 6 uses
  br i1 %i.o, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.r = getelementptr i8, ptr %0, i64 20
  %i.s = load i32, ptr %i.r, align 4              ; 3 uses
  %i.t = icmp ult i32 %i.q, %i.s
  br i1 %i.t, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.u = icmp eq i32 %i.q, %i.s
  br i1 %i.u, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.v = getelementptr i8, ptr %0, i64 48
  %i.w = load i32, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %0, i64 24
  %i.y = load i32, ptr %i.x, align 8
  %i.z = icmp ult i32 %i.w, %i.y
  br i1 %i.z, label %bb.z, label %.critedge

.critedge:                                        ; preds = %bb.v, %bb.y, %bb.x
  %i.aa = getelementptr i8, ptr %0, i64 48
  %i.ab = load i32, ptr %i.aa, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef @.str.13, i32 noundef %i.k, i32 noundef %i.q, i32 noundef %i.ab) #10
  br label %bb.aa

bb.z:                                             ; preds = %intel_uc_fw_status_repr.exit._crit_edge, %bb.w, %bb.y
  %i.ac = phi i32 [ %.pre45, %intel_uc_fw_status_repr.exit._crit_edge ], [ %i.q, %bb.w ], [ %i.q, %bb.y ]
  %i.ad = phi i32 [ %.pre43, %intel_uc_fw_status_repr.exit._crit_edge ], [ %i.s, %bb.w ], [ %i.q, %bb.y ]
  %i.ae = getelementptr i8, ptr %0, i64 24
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = getelementptr i8, ptr %0, i64 48
  %i.ah = load i32, ptr %i.ag, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef @.str.12, i32 noundef %i.m, i32 noundef %i.ad, i32 noundef %i.af, i32 noundef %i.k, i32 noundef %i.ac, i32 noundef %i.ah) #10
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge, %bb.z
  %i.ai = getelementptr i8, ptr %0, i64 396
  %i.aj = load i32, ptr %i.ai, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef @.str.14, i32 noundef %i.aj) #10
  %i.ak = getelementptr i8, ptr %0, i64 392
  %i.al = load i32, ptr %i.ak, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef @.str.15, i32 noundef %i.al) #10
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_platform_name(i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @firmware_request_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_huc_fw_get_binary_info(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_gsc_fw_get_binary_info(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -71, 1) i32 @__check_ccs_header(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ult i64 %2, 128
  br i1 %i.a, label %bb.b, label %bb.g, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.b, %bb.c
  %i.e = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ]
  %i.f = getelementptr i8, ptr %0, i64 4936
  %i.g = load i32, ptr %i.f, align 8
  %i.h = load i32, ptr %3, align 8
  switch i32 %i.h, label %bb.f [
    i32 0, label %intel_uc_fw_type_repr.exit
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %__drm_to_dev.exit
  br label %intel_uc_fw_type_repr.exit

bb.e:                                             ; preds = %__drm_to_dev.exit
  br label %intel_uc_fw_type_repr.exit

bb.f:                                             ; preds = %__drm_to_dev.exit
  br label %intel_uc_fw_type_repr.exit

intel_uc_fw_type_repr.exit:                       ; preds = %__drm_to_dev.exit, %bb.d, %bb.e, %bb.f
  %.0.i = phi ptr [ @.str.57, %bb.f ], [ @.str.56, %bb.e ], [ @.str.55, %bb.d ], [ @.str.54, %__drm_to_dev.exit ]
  %i.i = getelementptr i8, ptr %3, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.e, ptr noundef @.str.62, i32 noundef %i.g, ptr noundef nonnull %.0.i, ptr noundef %i.j, i64 noundef %2, i64 noundef 128) #9
  br label %bb.ai

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 1              ; 2 uses
  %i.m = getelementptr i8, ptr %1, i64 28         ; 2 uses
  %i.n = load i32, ptr %i.m, align 1
  %i.o = getelementptr i8, ptr %1, i64 32
  %i.p = load i32, ptr %i.o, align 1
  %i.q = getelementptr i8, ptr %1, i64 36
  %i.r = load i32, ptr %i.q, align 1
  %i.s = add i32 %i.n, %i.p
  %i.t = add i32 %i.s, %i.r
  %i.u = sub i32 %i.l, %i.t
  %.not = icmp eq i32 %i.u, 32
  br i1 %.not, label %bb.m, label %bb.h, !prof !56

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i50 = icmp eq ptr %i.v, null
  br i1 %.not.i50, label %__drm_to_dev.exit51, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  br label %__drm_to_dev.exit51

__drm_to_dev.exit51:                              ; preds = %bb.h, %bb.i
  %i.y = phi ptr [ %i.x, %bb.i ], [ null, %bb.h ]
  %i.z = getelementptr i8, ptr %0, i64 4936
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = load i32, ptr %3, align 8
  switch i32 %i.ab, label %bb.l [
    i32 0, label %intel_uc_fw_type_repr.exit53
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %__drm_to_dev.exit51
  br label %intel_uc_fw_type_repr.exit53

bb.k:                                             ; preds = %__drm_to_dev.exit51
  br label %intel_uc_fw_type_repr.exit53

bb.l:                                             ; preds = %__drm_to_dev.exit51
  br label %intel_uc_fw_type_repr.exit53

intel_uc_fw_type_repr.exit53:                     ; preds = %__drm_to_dev.exit51, %bb.j, %bb.k, %bb.l
  %.0.i52 = phi ptr [ @.str.57, %bb.l ], [ @.str.56, %bb.k ], [ @.str.55, %bb.j ], [ @.str.54, %__drm_to_dev.exit51 ]
  %i.ac = getelementptr i8, ptr %3, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.y, ptr noundef @.str.63, i32 noundef %i.aa, ptr noundef nonnull %.0.i52, ptr noundef %i.ad, i64 noundef %2, i64 noundef 128) #9
  br label %bb.ai

bb.m:                                             ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %1, i64 24
  %i.af = load i32, ptr %i.ae, align 1
  %i.ag = sub i32 %i.af, %i.l
  %i.ah = shl i32 %i.ag, 2                        ; 3 uses
  %i.ai = getelementptr i8, ptr %3, i64 396
  store i32 %i.ah, ptr %i.ai, align 4
  %i.aj = load i32, ptr %i.m, align 1
  %i.ak = shl i32 %i.aj, 2                        ; 2 uses
  %i.al = getelementptr i8, ptr %3, i64 392
  store i32 %i.ak, ptr %i.al, align 8
  %i.am = zext i32 %i.ah to i64
  %i.an = add nuw nsw i64 %i.am, 128
  %i.ao = zext i32 %i.ak to i64
  %i.ap = add nuw nsw i64 %i.an, %i.ao            ; 2 uses
  %i.aq = icmp ult i64 %2, %i.ap
  br i1 %i.aq, label %bb.n, label %bb.s, !prof !16

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i54 = icmp eq ptr %i.ar, null
  br i1 %.not.i54, label %__drm_to_dev.exit55, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  br label %__drm_to_dev.exit55

__drm_to_dev.exit55:                              ; preds = %bb.n, %bb.o
  %i.au = phi ptr [ %i.at, %bb.o ], [ null, %bb.n ]
  %i.av = getelementptr i8, ptr %0, i64 4936
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = load i32, ptr %3, align 8
  switch i32 %i.ax, label %bb.r [
    i32 0, label %intel_uc_fw_type_repr.exit57
    i32 1, label %bb.p
    i32 2, label %bb.q
  ]

bb.p:                                             ; preds = %__drm_to_dev.exit55
  br label %intel_uc_fw_type_repr.exit57

bb.q:                                             ; preds = %__drm_to_dev.exit55
  br label %intel_uc_fw_type_repr.exit57

bb.r:                                             ; preds = %__drm_to_dev.exit55
  br label %intel_uc_fw_type_repr.exit57

intel_uc_fw_type_repr.exit57:                     ; preds = %__drm_to_dev.exit55, %bb.p, %bb.q, %bb.r
  %.0.i56 = phi ptr [ @.str.57, %bb.r ], [ @.str.56, %bb.q ], [ @.str.55, %bb.p ], [ @.str.54, %__drm_to_dev.exit55 ]
  %i.ay = getelementptr i8, ptr %3, i64 32
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.au, ptr noundef @.str.62, i32 noundef %i.aw, ptr noundef nonnull %.0.i56, ptr noundef %i.az, i64 noundef %2, i64 noundef %i.ap) #9
  br label %bb.ai

bb.s:                                             ; preds = %bb.m
  %i.ba = add i32 %i.ah, 128                      ; 2 uses
  %i.bb = getelementptr i8, ptr %0, i64 3064
  %i.bc = load i32, ptr %i.bb, align 8            ; 2 uses
  %.not49 = icmp ult i32 %i.ba, %i.bc
  br i1 %.not49, label %bb.y, label %bb.t, !prof !56

bb.t:                                             ; preds = %bb.s
  %i.bd = zext i32 %i.ba to i64
  %i.be = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i58 = icmp eq ptr %i.be, null
  br i1 %.not.i58, label %__drm_to_dev.exit59, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  br label %__drm_to_dev.exit59

__drm_to_dev.exit59:                              ; preds = %bb.t, %bb.u
  %i.bh = phi ptr [ %i.bg, %bb.u ], [ null, %bb.t ]
  %i.bi = getelementptr i8, ptr %0, i64 4936
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = load i32, ptr %3, align 8
  switch i32 %i.bk, label %bb.x [
    i32 0, label %intel_uc_fw_type_repr.exit61
    i32 1, label %bb.v
    i32 2, label %bb.w
  ]

bb.v:                                             ; preds = %__drm_to_dev.exit59
  br label %intel_uc_fw_type_repr.exit61

bb.w:                                             ; preds = %__drm_to_dev.exit59
  br label %intel_uc_fw_type_repr.exit61

bb.x:                                             ; preds = %__drm_to_dev.exit59
  br label %intel_uc_fw_type_repr.exit61

intel_uc_fw_type_repr.exit61:                     ; preds = %__drm_to_dev.exit59, %bb.v, %bb.w, %bb.x
  %.0.i60 = phi ptr [ @.str.57, %bb.x ], [ @.str.56, %bb.w ], [ @.str.55, %bb.v ], [ @.str.54, %__drm_to_dev.exit59 ]
  %i.bl = getelementptr i8, ptr %3, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = zext i32 %i.bc to i64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.bh, ptr noundef @.str.64, i32 noundef %i.bj, ptr noundef nonnull %.0.i60, ptr noundef %i.bm, i64 noundef %i.bd, i64 noundef %i.bn) #9
  br label %bb.ai

bb.y:                                             ; preds = %bb.s
  %i.bo = getelementptr i8, ptr %3, i64 40
  %i.bp = getelementptr i8, ptr %1, i64 64
  %i.bq = load i32, ptr %i.bp, align 1            ; 3 uses
  %i.br = lshr i32 %i.bq, 16
  %i.bs = and i32 %i.br, 255                      ; 3 uses
  store i32 %i.bs, ptr %i.bo, align 8
  %i.bt = lshr i32 %i.bq, 8
  %i.bu = and i32 %i.bt, 255                      ; 3 uses
  %i.bv = getelementptr i8, ptr %3, i64 44
  store i32 %i.bu, ptr %i.bv, align 4
  %i.bw = and i32 %i.bq, 255
  %i.bx = getelementptr i8, ptr %3, i64 48
  store i32 %i.bw, ptr %i.bx, align 8
  %i.by = load i32, ptr %3, align 8
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.z, label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.ca = icmp samesign ugt i32 %i.bs, 69
  br i1 %i.ca, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.cb = icmp samesign ugt i32 %i.bu, 5
  br i1 %i.cb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cc = getelementptr i8, ptr %3, i64 1284
  %i.cd = getelementptr i8, ptr %1, i64 68
  %i.ce = load i32, ptr %i.cd, align 1            ; 3 uses
  %i.cf = lshr i32 %i.ce, 16
  %i.cg = and i32 %i.cf, 255
  store i32 %i.cg, ptr %i.cc, align 4
  %i.ch = lshr i32 %i.ce, 8
  %i.ci = and i32 %i.ch, 255
  %i.cj = getelementptr i8, ptr %3, i64 1288
  store i32 %i.ci, ptr %i.cj, align 8
  %i.ck = and i32 %i.ce, 255
  %i.cl = getelementptr i8, ptr %3, i64 1292
  store i32 %i.ck, ptr %i.cl, align 4
  br label %guc_read_css_info.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cm = icmp samesign ugt i32 %i.bu, 2
  %i.cn = getelementptr i8, ptr %3, i64 1284
  store i32 1, ptr %i.cn, align 4
  %i.co = getelementptr i8, ptr %3, i64 1288      ; 2 uses
  %i.cp = getelementptr i8, ptr %3, i64 1292      ; 2 uses
  br i1 %i.cm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 1, ptr %i.co, align 8
  store i32 0, ptr %i.cp, align 4
  br label %guc_read_css_info.exit

bb.ae:                                            ; preds = %bb.ac
  store i32 0, ptr %i.co, align 8
  store i32 0, ptr %i.cp, align 4
  br label %guc_read_css_info.exit

bb.af:                                            ; preds = %bb.z
  %i.cq = icmp eq i32 %i.bs, 69
  %i.cr = getelementptr i8, ptr %3, i64 1284
  store i32 0, ptr %i.cr, align 4
  %i.cs = getelementptr i8, ptr %3, i64 1288      ; 2 uses
  %i.ct = getelementptr i8, ptr %3, i64 1292      ; 2 uses
  br i1 %i.cq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 10, ptr %i.cs, align 8
  store i32 0, ptr %i.ct, align 4
  br label %guc_read_css_info.exit

bb.ah:                                            ; preds = %bb.af
  store i32 1, ptr %i.cs, align 8
  store i32 0, ptr %i.ct, align 4
  br label %guc_read_css_info.exit

guc_read_css_info.exit:                           ; preds = %bb.ab, %bb.ad, %bb.ae, %bb.ag, %bb.ah
  %i.cu = getelementptr i8, ptr %1, i64 120
  %i.cv = load i32, ptr %i.cu, align 1
  %i.cw = getelementptr i8, ptr %3, i64 400
  store i32 %i.cv, ptr %i.cw, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.y, %guc_read_css_info.exit, %intel_uc_fw_type_repr.exit61, %intel_uc_fw_type_repr.exit57, %intel_uc_fw_type_repr.exit53, %intel_uc_fw_type_repr.exit
  %.0 = phi i32 [ -61, %intel_uc_fw_type_repr.exit ], [ -71, %intel_uc_fw_type_repr.exit53 ], [ -8, %intel_uc_fw_type_repr.exit57 ], [ -7, %intel_uc_fw_type_repr.exit61 ], [ 0, %guc_read_css_info.exit ], [ 0, %bb.y ]
  ret i32 %.0
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_uncore_forcewake_get(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_uncore_forcewake_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__intel_wait_for_register_fw(ptr noundef, i32, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_guc_allocate_vma(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_gem_object_pin_map_unlocked(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_gt_coherent_map_type(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_vma_unpin_and_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_clflush_sg(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @i915_gem_object_is_lmem(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_get_pat_index(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #6 = { nocallback nounwind }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #10 = { noredzone nounwind "no-builtin-wcslen" }
attributes #11 = { nounwind }
attributes #12 = { noredzone "no-builtin-wcslen" }
attributes #13 = { nounwind memory(none) }

!llvm.named.register.rsp = !{!1}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{!0, !14}
!1 = !{!"rsp"}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 8, !"cf-protection-branch", i32 1}
!4 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6 = !{i32 1, !"Code Model", i32 2}
!7 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!8 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{i32 4, !"SkipRaxSetup", i32 1}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{i64 2148651596, i64 2148651635, i64 2148651656, i64 2148651693, i64 2148651716, i64 2148651587}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!20 = distinct !{!20, !14}
!21 = !{i64 27492}
!22 = !{i64 28172}
!23 = !{i64 2161162732, i64 2161162759, i64 2161163148, i64 2161163181, i64 2161163216, i64 2161163232, i64 2161164073, i64 2161164131, i64 2161164180, i64 2161163990, i64 2161163291, i64 2161163323}
!24 = !{i64 2161161063}
!25 = !{i64 22165}
!26 = !{i64 22377}
!27 = !{i64 2155699109}
!28 = !{i64 2155696716}
!29 = !{i64 37548}
!30 = distinct !{null}
!31 = !{i64 38107}
!32 = !{i64 2148661427, i64 2148661466, i64 2148661487, i64 2148661524, i64 2148661547, i64 2148661556}
!33 = !{i64 2150798034}
!34 = distinct !{!34, i1 true, !"__sgt_iter"}
end_hunk_1
