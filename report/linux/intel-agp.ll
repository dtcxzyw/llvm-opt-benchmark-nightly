Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel-agp?download=true
inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section\09\22.initcall6.init\22, \22a\22\09\09"
    "__initcall__kmod_intel_agp__558_919_agp_intel_init6:\09\09\09"
    ".long\09agp_intel_init - .\09"
    ".previous\09\09\09\09\09"

%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.pci_bus_region = type { i64, i64 }

@__UNIQUE_ID_addressable_agp_intel_init_559 = internal global ptr @agp_intel_init, section ".discard.addressable", align 8
@__UNIQUE_ID_modinfo_560 = internal constant [44 x i8] c"intel_agp.author=Dave Jones, Various @Intel\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_561 = internal constant [45 x i8] c"intel_agp.description=Intel AGPGART routines\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_562 = internal constant [42 x i8] c"intel_agp.file=drivers/char/agp/intel-agp\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_563 = internal constant [44 x i8] c"intel_agp.license=GPL and additional rights\00", section ".modinfo", align 1
@__mod_device_table__kmod_intel_agp__pci__agp_intel_pci_table = internal constant [53 x { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] }] [{ i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 4663, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 29056, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 29072, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 29088, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 28960, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 28962, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 28964, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 4400, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 9472, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 9473, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 13685, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 6689, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 6704, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 9568, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 9520, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 13708, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 13120, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 13696, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 9521, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 9584, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 9592, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 9552, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 9565, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 9608, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 9600, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 9616, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 10096, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 10144, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 10156, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 40976, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 40960, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 10608, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 10624, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 10640, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 10656, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 10752, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 10768, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 10688, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 10672, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 10704, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 10816, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 11776, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 11792, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 11808, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 11824, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 11840, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 11920, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 64, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 105, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 68, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 98, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } { i32 32902, i32 106, i32 -1, i32 -1, i32 393216, i32 -1, i64 0, i32 0, [4 x i8] zeroinitializer }, { i32, i32, i32, i32, i32, i32, i64, i32, [4 x i8] } zeroinitializer], align 16
@.str = private unnamed_addr constant [14 x i8] c"agpgart-intel\00", align 1
@agp_intel_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @agp_intel_resume, ptr null, ptr @agp_intel_resume, ptr null, ptr @agp_intel_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@agp_intel_pci_driver = internal global { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon }, %struct.pci_dynids, i8, [7 x i8] } { ptr @.str, ptr @__mod_device_table__kmod_intel_agp__pci__agp_intel_pci_table, ptr @agp_intel_probe, ptr @agp_intel_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, { ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon } { ptr null, ptr null, ptr null, ptr null, i8 0, [3 x i8] zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @agp_intel_pm_ops, ptr null, ptr null, %struct.anon zeroinitializer }, %struct.pci_dynids zeroinitializer, i8 0, [7 x i8] zeroinitializer }, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"unsupported Intel chipset [%04x/%04x]\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Intel %s Chipset\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"can't assign resource 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"can't enable PCI device\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"440LX\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"440BX\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"440GX\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"i815\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"i820\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"830M\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"i840\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"i845\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"845G\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"i850\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"854\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"855PM\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"855GM\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"i860\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"865\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"i875\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"E7505\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"E7205\00", align 1
@intel_agp_chipsets = internal unnamed_addr constant [20 x { i32, [4 x i8], ptr, ptr }] [{ i32, [4 x i8], ptr, ptr } { i32 29056, [4 x i8] zeroinitializer, ptr @.str.7, ptr @intel_generic_driver }, { i32, [4 x i8], ptr, ptr } { i32 29072, [4 x i8] zeroinitializer, ptr @.str.8, ptr @intel_generic_driver }, { i32, [4 x i8], ptr, ptr } { i32 29088, [4 x i8] zeroinitializer, ptr @.str.9, ptr @intel_generic_driver }, { i32, [4 x i8], ptr, ptr } { i32 4400, [4 x i8] zeroinitializer, ptr @.str.10, ptr @intel_815_driver }, { i32, [4 x i8], ptr, ptr } { i32 9472, [4 x i8] zeroinitializer, ptr @.str.11, ptr @intel_820_driver }, { i32, [4 x i8], ptr, ptr } { i32 9473, [4 x i8] zeroinitializer, ptr @.str.11, ptr @intel_820_driver }, { i32, [4 x i8], ptr, ptr } { i32 13685, [4 x i8] zeroinitializer, ptr @.str.12, ptr @intel_830mp_driver }, { i32, [4 x i8], ptr, ptr } { i32 6689, [4 x i8] zeroinitializer, ptr @.str.13, ptr @intel_840_driver }, { i32, [4 x i8], ptr, ptr } { i32 6704, [4 x i8] zeroinitializer, ptr @.str.14, ptr @intel_845_driver }, { i32, [4 x i8], ptr, ptr } { i32 9568, [4 x i8] zeroinitializer, ptr @.str.15, ptr @intel_845_driver }, { i32, [4 x i8], ptr, ptr } { i32 9520, [4 x i8] zeroinitializer, ptr @.str.16, ptr @intel_850_driver }, { i32, [4 x i8], ptr, ptr } { i32 13708, [4 x i8] zeroinitializer, ptr @.str.17, ptr @intel_845_driver }, { i32, [4 x i8], ptr, ptr } { i32 13120, [4 x i8] zeroinitializer, ptr @.str.18, ptr @intel_845_driver }, { i32, [4 x i8], ptr, ptr } { i32 13696, [4 x i8] zeroinitializer, ptr @.str.19, ptr @intel_845_driver }, { i32, [4 x i8], ptr, ptr } { i32 9521, [4 x i8] zeroinitializer, ptr @.str.20, ptr @intel_860_driver }, { i32, [4 x i8], ptr, ptr } { i32 9584, [4 x i8] zeroinitializer, ptr @.str.21, ptr @intel_845_driver }, { i32, [4 x i8], ptr, ptr } { i32 9592, [4 x i8] zeroinitializer, ptr @.str.22, ptr @intel_845_driver }, { i32, [4 x i8], ptr, ptr } { i32 9552, [4 x i8] zeroinitializer, ptr @.str.23, ptr @intel_7505_driver }, { i32, [4 x i8], ptr, ptr } { i32 9565, [4 x i8] zeroinitializer, ptr @.str.24, ptr @intel_7505_driver }, { i32, [4 x i8], ptr, ptr } zeroinitializer], align 16
@intel_generic_driver = internal constant { ptr, ptr, i32, i32, i8, i8, [6 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr null, ptr @intel_generic_sizes, i32 7, i32 1, i8 0, i8 1, [6 x i8] zeroinitializer, ptr @intel_generic_masks, ptr @intel_fetch_size, ptr @intel_configure, ptr @agp_generic_enable, ptr @intel_cleanup, ptr @intel_tlbflush, ptr @agp_generic_mask_memory, ptr @global_cache_flush, ptr @agp_generic_create_gatt_table, ptr @agp_generic_free_gatt_table, ptr @agp_generic_insert_memory, ptr @agp_generic_remove_memory, ptr @agp_generic_alloc_by_type, ptr @agp_generic_free_by_type, ptr @agp_generic_alloc_page, ptr @agp_generic_alloc_pages, ptr @agp_generic_destroy_page, ptr @agp_generic_destroy_pages, ptr @agp_generic_type_to_mask_type }, align 8
@intel_generic_sizes = internal constant [7 x { i32, i32, i32, i16, [2 x i8] }] [{ i32, i32, i32, i16, [2 x i8] } { i32 256, i32 65536, i32 6, i16 0, [2 x i8] zeroinitializer }, { i32, i32, i32, i16, [2 x i8] } { i32 128, i32 32768, i32 5, i16 32, [2 x i8] zeroinitializer }, { i32, i32, i32, i16, [2 x i8] } { i32 64, i32 16384, i32 4, i16 48, [2 x i8] zeroinitializer }, { i32, i32, i32, i16, [2 x i8] } { i32 32, i32 8192, i32 3, i16 56, [2 x i8] zeroinitializer }, { i32, i32, i32, i16, [2 x i8] } { i32 16, i32 4096, i32 2, i16 60, [2 x i8] zeroinitializer }, { i32, i32, i32, i16, [2 x i8] } { i32 8, i32 2048, i32 1, i16 62, [2 x i8] zeroinitializer }, { i32, i32, i32, i16, [2 x i8] } { i32 4, i32 1024, i32 0, i16 63, [2 x i8] zeroinitializer }], align 16
@intel_generic_masks = internal constant [1 x { i64, i32, [4 x i8] }] [{ i64, i32, [4 x i8] } { i64 23, i32 0, [4 x i8] zeroinitializer }], align 16
@agp_bridge = external dso_local local_unnamed_addr global ptr, align 8
@intel_815_driver = internal constant { ptr, ptr, i32, i32, i8, i8, [6 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr null, ptr @intel_815_sizes, i32 2, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer, ptr @intel_generic_masks, ptr @intel_815_fetch_size, ptr @intel_815_configure, ptr @agp_generic_enable, ptr @intel_8xx_cleanup, ptr @intel_8xx_tlbflush, ptr @agp_generic_mask_memory, ptr @global_cache_flush, ptr @agp_generic_create_gatt_table, ptr @agp_generic_free_gatt_table, ptr @agp_generic_insert_memory, ptr @agp_generic_remove_memory, ptr @agp_generic_alloc_by_type, ptr @agp_generic_free_by_type, ptr @agp_generic_alloc_page, ptr @agp_generic_alloc_pages, ptr @agp_generic_destroy_page, ptr @agp_generic_destroy_pages, ptr @agp_generic_type_to_mask_type }, align 8
@intel_815_sizes = internal constant [2 x { i32, i32, i32, i8, [3 x i8] }] [{ i32, i32, i32, i8, [3 x i8] } { i32 64, i32 16384, i32 4, i8 0, [3 x i8] zeroinitializer }, { i32, i32, i32, i8, [3 x i8] } { i32 32, i32 8192, i32 3, i8 8, [3 x i8] zeroinitializer }], align 16
@.str.31 = private unnamed_addr constant [23 x i8] c"gatt bus addr too high\00", align 1
@intel_820_driver = internal constant { ptr, ptr, i32, i32, i8, i8, [6 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr null, ptr @intel_8xx_sizes, i32 7, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer, ptr @intel_generic_masks, ptr @intel_8xx_fetch_size, ptr @intel_820_configure, ptr @agp_generic_enable, ptr @intel_820_cleanup, ptr @intel_820_tlbflush, ptr @agp_generic_mask_memory, ptr @global_cache_flush, ptr @agp_generic_create_gatt_table, ptr @agp_generic_free_gatt_table, ptr @agp_generic_insert_memory, ptr @agp_generic_remove_memory, ptr @agp_generic_alloc_by_type, ptr @agp_generic_free_by_type, ptr @agp_generic_alloc_page, ptr @agp_generic_alloc_pages, ptr @agp_generic_destroy_page, ptr @agp_generic_destroy_pages, ptr @agp_generic_type_to_mask_type }, align 8
@intel_8xx_sizes = internal constant [7 x { i32, i32, i32, i8, [3 x i8] }] [{ i32, i32, i32, i8, [3 x i8] } { i32 256, i32 65536, i32 6, i8 0, [3 x i8] zeroinitializer }, { i32, i32, i32, i8, [3 x i8] } { i32 128, i32 32768, i32 5, i8 32, [3 x i8] zeroinitializer }, { i32, i32, i32, i8, [3 x i8] } { i32 64, i32 16384, i32 4, i8 48, [3 x i8] zeroinitializer }, { i32, i32, i32, i8, [3 x i8] } { i32 32, i32 8192, i32 3, i8 56, [3 x i8] zeroinitializer }, { i32, i32, i32, i8, [3 x i8] } { i32 16, i32 4096, i32 2, i8 60, [3 x i8] zeroinitializer }, { i32, i32, i32, i8, [3 x i8] } { i32 8, i32 2048, i32 1, i8 62, [3 x i8] zeroinitializer }, { i32, i32, i32, i8, [3 x i8] } { i32 4, i32 1024, i32 0, i8 63, [3 x i8] zeroinitializer }], align 16
@intel_830mp_driver = internal constant { ptr, ptr, i32, i32, i8, i8, [6 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr null, ptr @intel_830mp_sizes, i32 4, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer, ptr @intel_generic_masks, ptr @intel_8xx_fetch_size, ptr @intel_830mp_configure, ptr @agp_generic_enable, ptr @intel_8xx_cleanup, ptr @intel_8xx_tlbflush, ptr @agp_generic_mask_memory, ptr @global_cache_flush, ptr @agp_generic_create_gatt_table, ptr @agp_generic_free_gatt_table, ptr @agp_generic_insert_memory, ptr @agp_generic_remove_memory, ptr @agp_generic_alloc_by_type, ptr @agp_generic_free_by_type, ptr @agp_generic_alloc_page, ptr @agp_generic_alloc_pages, ptr @agp_generic_destroy_page, ptr @agp_generic_destroy_pages, ptr @agp_generic_type_to_mask_type }, align 8
@intel_830mp_sizes = internal constant [4 x { i32, i32, i32, i8, [3 x i8] }] [{ i32, i32, i32, i8, [3 x i8] } { i32 256, i32 65536, i32 6, i8 0, [3 x i8] zeroinitializer }, { i32, i32, i32, i8, [3 x i8] } { i32 128, i32 32768, i32 5, i8 32, [3 x i8] zeroinitializer }, { i32, i32, i32, i8, [3 x i8] } { i32 64, i32 16384, i32 4, i8 48, [3 x i8] zeroinitializer }, { i32, i32, i32, i8, [3 x i8] } { i32 32, i32 8192, i32 3, i8 56, [3 x i8] zeroinitializer }], align 16
@intel_840_driver = internal constant { ptr, ptr, i32, i32, i8, i8, [6 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr null, ptr @intel_8xx_sizes, i32 7, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer, ptr @intel_generic_masks, ptr @intel_8xx_fetch_size, ptr @intel_840_configure, ptr @agp_generic_enable, ptr @intel_8xx_cleanup, ptr @intel_8xx_tlbflush, ptr @agp_generic_mask_memory, ptr @global_cache_flush, ptr @agp_generic_create_gatt_table, ptr @agp_generic_free_gatt_table, ptr @agp_generic_insert_memory, ptr @agp_generic_remove_memory, ptr @agp_generic_alloc_by_type, ptr @agp_generic_free_by_type, ptr @agp_generic_alloc_page, ptr @agp_generic_alloc_pages, ptr @agp_generic_destroy_page, ptr @agp_generic_destroy_pages, ptr @agp_generic_type_to_mask_type }, align 8
@intel_845_driver = internal constant { ptr, ptr, i32, i32, i8, i8, [6 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr null, ptr @intel_8xx_sizes, i32 7, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer, ptr @intel_generic_masks, ptr @intel_8xx_fetch_size, ptr @intel_845_configure, ptr @agp_generic_enable, ptr @intel_8xx_cleanup, ptr @intel_8xx_tlbflush, ptr @agp_generic_mask_memory, ptr @global_cache_flush, ptr @agp_generic_create_gatt_table, ptr @agp_generic_free_gatt_table, ptr @agp_generic_insert_memory, ptr @agp_generic_remove_memory, ptr @agp_generic_alloc_by_type, ptr @agp_generic_free_by_type, ptr @agp_generic_alloc_page, ptr @agp_generic_alloc_pages, ptr @agp_generic_destroy_page, ptr @agp_generic_destroy_pages, ptr @agp_generic_type_to_mask_type }, align 8
@intel_850_driver = internal constant { ptr, ptr, i32, i32, i8, i8, [6 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr null, ptr @intel_8xx_sizes, i32 7, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer, ptr @intel_generic_masks, ptr @intel_8xx_fetch_size, ptr @intel_850_configure, ptr @agp_generic_enable, ptr @intel_8xx_cleanup, ptr @intel_8xx_tlbflush, ptr @agp_generic_mask_memory, ptr @global_cache_flush, ptr @agp_generic_create_gatt_table, ptr @agp_generic_free_gatt_table, ptr @agp_generic_insert_memory, ptr @agp_generic_remove_memory, ptr @agp_generic_alloc_by_type, ptr @agp_generic_free_by_type, ptr @agp_generic_alloc_page, ptr @agp_generic_alloc_pages, ptr @agp_generic_destroy_page, ptr @agp_generic_destroy_pages, ptr @agp_generic_type_to_mask_type }, align 8
@intel_860_driver = internal constant { ptr, ptr, i32, i32, i8, i8, [6 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr null, ptr @intel_8xx_sizes, i32 7, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer, ptr @intel_generic_masks, ptr @intel_8xx_fetch_size, ptr @intel_860_configure, ptr @agp_generic_enable, ptr @intel_8xx_cleanup, ptr @intel_8xx_tlbflush, ptr @agp_generic_mask_memory, ptr @global_cache_flush, ptr @agp_generic_create_gatt_table, ptr @agp_generic_free_gatt_table, ptr @agp_generic_insert_memory, ptr @agp_generic_remove_memory, ptr @agp_generic_alloc_by_type, ptr @agp_generic_free_by_type, ptr @agp_generic_alloc_page, ptr @agp_generic_alloc_pages, ptr @agp_generic_destroy_page, ptr @agp_generic_destroy_pages, ptr @agp_generic_type_to_mask_type }, align 8
@intel_7505_driver = internal constant { ptr, ptr, i32, i32, i8, i8, [6 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr null, ptr @intel_8xx_sizes, i32 7, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer, ptr @intel_generic_masks, ptr @intel_8xx_fetch_size, ptr @intel_7505_configure, ptr @agp_generic_enable, ptr @intel_8xx_cleanup, ptr @intel_8xx_tlbflush, ptr @agp_generic_mask_memory, ptr @global_cache_flush, ptr @agp_generic_create_gatt_table, ptr @agp_generic_free_gatt_table, ptr @agp_generic_insert_memory, ptr @agp_generic_remove_memory, ptr @agp_generic_alloc_by_type, ptr @agp_generic_free_by_type, ptr @agp_generic_alloc_page, ptr @agp_generic_alloc_pages, ptr @agp_generic_destroy_page, ptr @agp_generic_destroy_pages, ptr @agp_generic_type_to_mask_type }, align 8
@agp_off = external dso_local local_unnamed_addr global i32, align 4
@.str.41 = private unnamed_addr constant [10 x i8] c"intel_agp\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_addressable_agp_intel_init_559, ptr @__UNIQUE_ID_modinfo_560, ptr @__UNIQUE_ID_modinfo_561, ptr @__UNIQUE_ID_modinfo_562, ptr @__UNIQUE_ID_modinfo_563, ptr @__mod_device_table__kmod_intel_agp__pci__agp_intel_pci_table, ptr @agp_intel_cleanup], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @agp_intel_cleanup() #0 section ".exit.text" align 16 prefalign(16) {
bb.a:
  tail call void @pci_unregister_driver(ptr noundef @agp_intel_pci_driver) #7
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @agp_intel_init() #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @agp_off, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @__pci_register_driver(ptr noundef @agp_intel_pci_driver, ptr noundef null, ptr noundef @.str.41) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @agp_intel_probe(ptr noundef %0, ptr nofree readnone captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = tail call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef 2) #7 ; 3 uses
  %i.b = tail call ptr @agp_alloc_bridge() #7     ; 13 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %i.a to i32
  %i.d = getelementptr i8, ptr %i.b, i64 144      ; 2 uses
  store i32 %i.c, ptr %i.d, align 8
  %i.e = tail call i32 @intel_gmch_probe(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.b) #7
  %.not42 = icmp eq i32 %i.e, 0
  br i1 %.not42, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 62         ; 2 uses
  %i.g = load i16, ptr %i.f, align 2
  switch i16 %i.g, label %.loopexit.a [
    i16 29056, label %bb.c
    i16 29072, label %.fold.split
    i16 29088, label %.fold.split61
    i16 4400, label %.fold.split62
    i16 9472, label %.fold.split63
    i16 9473, label %.fold.split64
    i16 13685, label %.fold.split65
    i16 6689, label %.fold.split66
    i16 6704, label %.fold.split67
    i16 9568, label %.fold.split68
    i16 9520, label %.fold.split69
    i16 13708, label %.fold.split70
    i16 13120, label %.fold.split71
    i16 13696, label %.fold.split72
    i16 9521, label %.fold.split73
    i16 9584, label %.fold.split74
    i16 9592, label %.fold.split75
    i16 9552, label %.fold.split76
    i16 9565, label %.fold.split77
  ]

.loopexit.a:                                      ; preds = %.preheader
  %.phi.trans.insert = getelementptr i8, ptr %i.b, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.d

.fold.split:                                      ; preds = %.preheader
  br label %bb.c

.fold.split61:                                    ; preds = %.preheader
  br label %bb.c

.fold.split62:                                    ; preds = %.preheader
  br label %bb.c

.fold.split63:                                    ; preds = %.preheader
  br label %bb.c

.fold.split64:                                    ; preds = %.preheader
  br label %bb.c

.fold.split65:                                    ; preds = %.preheader
  br label %bb.c

.fold.split66:                                    ; preds = %.preheader
  br label %bb.c

.fold.split67:                                    ; preds = %.preheader
  br label %bb.c

.fold.split68:                                    ; preds = %.preheader
  br label %bb.c

.fold.split69:                                    ; preds = %.preheader
  br label %bb.c

.fold.split70:                                    ; preds = %.preheader
  br label %bb.c

.fold.split71:                                    ; preds = %.preheader
  br label %bb.c

.fold.split72:                                    ; preds = %.preheader
  br label %bb.c

.fold.split73:                                    ; preds = %.preheader
  br label %bb.c

.fold.split74:                                    ; preds = %.preheader
  br label %bb.c

.fold.split75:                                    ; preds = %.preheader
  br label %bb.c

.fold.split76:                                    ; preds = %.preheader
  br label %bb.c

.fold.split77:                                    ; preds = %.preheader
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %.fold.split77, %.fold.split76, %.fold.split75, %.fold.split74, %.fold.split73, %.fold.split72, %.fold.split71, %.fold.split70, %.fold.split69, %.fold.split68, %.fold.split67, %.fold.split66, %.fold.split65, %.fold.split64, %.fold.split63, %.fold.split62, %.fold.split61, %.fold.split
  %.lcssa56 = phi ptr [ @.str.7, %.preheader ], [ @.str.23, %.fold.split76 ], [ @.str.8, %.fold.split ], [ @.str.9, %.fold.split61 ], [ @.str.10, %.fold.split62 ], [ @.str.11, %.fold.split63 ], [ @.str.11, %.fold.split64 ], [ @.str.12, %.fold.split65 ], [ @.str.13, %.fold.split66 ], [ @.str.14, %.fold.split67 ], [ @.str.15, %.fold.split68 ], [ @.str.16, %.fold.split69 ], [ @.str.17, %.fold.split70 ], [ @.str.18, %.fold.split71 ], [ @.str.19, %.fold.split72 ], [ @.str.20, %.fold.split73 ], [ @.str.21, %.fold.split74 ], [ @.str.22, %.fold.split75 ], [ @.str.24, %.fold.split77 ]
  %.lcssa = phi ptr [ @intel_agp_chipsets, %.preheader ], [ getelementptr inbounds nuw (i8, ptr @intel_agp_chipsets, i64 408), %.fold.split76 ], [ getelementptr inbounds nuw (i8, ptr @intel_agp_chipsets, i64 24), %.fold.split ], [ getelementptr inbounds nuw (i8, ptr @intel_agp_chipsets, i64 48), %.fold.split61 ], [ getelementptr inbounds nuw (i8, ptr @intel_agp_chipsets, i64 72), %.fold.split62 ], [ getelementptr inbounds nuw (i8, ptr @intel_agp_chipsets, i64 96), %.fold.split63 ], [ getelementptr inbounds nuw (i8, ptr @intel_agp_chipsets, i64 120), %.fold.split64 ], [ getelementptr inbounds nuw (i8, ptr @intel_agp_chipsets, i64 144), %.fold.split65 ], [ getelementptr inbounds nuw (i8, ptr @intel_agp_chipsets, i64 168), %.fold.split66 ], [ getelementptr inbounds nuw (i8, ptr @intel_agp_chipsets, i64 192), %.fold.split67 ], [ getelementptr inbounds nuw (i8, ptr @intel_agp_chipsets, i64 216), %.fold.split68 ], [ getelementptr inbounds nuw (i8, ptr @intel_agp_chipsets, i64 240), %.fold.split69 ], [ getelementptr inbounds nuw (i8, ptr @intel_agp_chipsets, i64 264), %.fold.split70 ], [ getelementptr inbounds nuw (i8, ptr @intel_agp_chipsets, i64 288), %.fold.split71 ], [ getelementptr inbounds nuw (i8, ptr @intel_agp_chipsets, i64 312), %.fold.split72 ], [ getelementptr inbounds nuw (i8, ptr @intel_agp_chipsets, i64 336), %.fold.split73 ], [ getelementptr inbounds nuw (i8, ptr @intel_agp_chipsets, i64 360), %.fold.split74 ], [ getelementptr inbounds nuw (i8, ptr @intel_agp_chipsets, i64 384), %.fold.split75 ], [ getelementptr inbounds nuw (i8, ptr @intel_agp_chipsets, i64 432), %.fold.split77 ]
  %i.h = getelementptr i8, ptr %.lcssa, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.a, %bb.c
  %i.k = phi ptr [ %i.i, %bb.c ], [ %.pre, %.loopexit.a ]
  %.pn = phi ptr [ %.lcssa56, %bb.c ], [ null, %.loopexit.a ]
  %.not44 = icmp eq ptr %i.k, null
  br i1 %.not44, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not45 = icmp eq i8 %i.a, 0
  br i1 %.not45, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %0, i64 200
  %i.m = getelementptr i8, ptr %0, i64 60
  %i.n = load i16, ptr %i.m, align 4
  %i.o = zext i16 %i.n to i32
  %i.p = load i16, ptr %i.f, align 2
  %i.q = zext i16 %i.p to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.l, ptr noundef @.str.3, i32 noundef %i.o, i32 noundef %i.q) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @agp_put_bridge(ptr noundef nonnull %i.b) #7
  br label %bb.q

bb.h:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.b, i64 48
  store ptr %0, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %i.b, i64 40
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %0, i64 200        ; 3 uses
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.t, ptr noundef @.str.4, ptr noundef %.pn) #8
  %i.u = getelementptr i8, ptr %0, i64 968
  %i.v = load i64, ptr %i.u, align 8
  %.not46 = icmp eq i64 %i.v, 0
  br i1 %.not46, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr i8, ptr %0, i64 976
  %i.x = load i64, ptr %i.w, align 8
  %.not47 = icmp eq i64 %i.x, 0
  br i1 %.not47, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = tail call i32 @pci_assign_resource(ptr noundef %0, i32 noundef 0) #7
  %.not48 = icmp eq i32 %i.y, 0
  br i1 %.not48, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.t, ptr noundef @.str.5) #8
  tail call void @agp_put_bridge(ptr noundef nonnull %i.b) #7
  br label %bb.q

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.z = tail call i32 @pci_enable_device(ptr noundef %0) #7
  %.not49 = icmp eq i32 %i.z, 0
  br i1 %.not49, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.t, ptr noundef @.str.6) #8
  tail call void @agp_put_bridge(ptr noundef nonnull %i.b) #7
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %.not50 = icmp eq i8 %i.a, 0
  br i1 %.not50, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = load i32, ptr %i.d, align 8
  %i.ab = add i32 %i.aa, 4
  %i.ac = getelementptr i8, ptr %i.b, i64 112
  %i.ad = tail call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %i.ab, ptr noundef %i.ac) #7 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.b
  %i.ae = getelementptr i8, ptr %0, i64 320
  store ptr %i.b, ptr %i.ae, align 8
  %i.af = tail call i32 @agp_add_bridge(ptr noundef nonnull %i.b) #7
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p, %bb.m, %bb.k, %bb.g
  %.040 = phi i32 [ %i.af, %bb.p ], [ -19, %bb.m ], [ -19, %bb.k ], [ -19, %bb.g ], [ -12, %bb.a ]
  ret i32 %.040
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @agp_intel_remove(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 320
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  tail call void @agp_remove_bridge(ptr noundef %.val) #7
  tail call void @intel_gmch_remove() #7
  tail call void @agp_put_bridge(ptr noundef %.val) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @agp_alloc_bridge() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_gmch_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @agp_put_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_assign_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @agp_add_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @intel_fetch_size() #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i16 0, ptr %i.a, align 2, !annotation !11
  %i.b = load ptr, ptr @agp_bridge, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call i32 @pci_read_config_word(ptr noundef %i.d, i32 noundef 180, ptr noundef nonnull %i.a) #7 ; 0 uses
  %i.f = load ptr, ptr @agp_bridge, align 8       ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.h, i64 16
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.n = load i16, ptr %i.a, align 2
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.o = getelementptr [16 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 12
  %i.q = load i16, ptr %i.p, align 4
  %i.r = icmp eq i16 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  %i.t = getelementptr i8, ptr %i.f, i64 32
  store ptr %i.o, ptr %i.t, align 8
  %i.u = load ptr, ptr @agp_bridge, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 24
  store ptr %i.o, ptr %i.v, align 8
  %i.w = load ptr, ptr @agp_bridge, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 140
  store i32 %i.s, ptr %i.x, align 4
  %i.y = load i32, ptr %i.o, align 4
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !13

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.c
  %.09 = phi i32 [ %i.y, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.09
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @intel_configure() #2 align 16 prefalign(16) {
bb.a:
  %0 = alloca %struct.pci_bus_region, align 8     ; 5 uses
  %i.a = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i16 0, ptr %i.a, align 2, !annotation !11
  %i.b = load ptr, ptr @agp_bridge, align 8       ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.d, i64 12
  %i.h = load i16, ptr %i.g, align 4
  %i.i = tail call i32 @pci_write_config_word(ptr noundef %i.f, i32 noundef 180, i16 noundef zeroext %i.h) #7 ; 0 uses
  %i.j = load ptr, ptr @agp_bridge, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !11
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.l, i64 968
  call void @pcibios_resource_to_bus(ptr noundef %i.n, ptr noundef nonnull %0, ptr noundef %i.o) #7
  %i.p = load i64, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9
  %i.q = load ptr, ptr @agp_bridge, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 96
  store i64 %i.p, ptr %i.r, align 8
  %i.s = load ptr, ptr @agp_bridge, align 8       ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %i.s, i64 104
  %i.w = load i64, ptr %i.v, align 8
  %i.x = trunc i64 %i.w to i32
  %i.y = call i32 @pci_write_config_dword(ptr noundef %i.u, i32 noundef 184, i32 noundef %i.x) #7 ; 0 uses
  %i.z = load ptr, ptr @agp_bridge, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i32 @pci_write_config_dword(ptr noundef %i.ab, i32 noundef 176, i32 noundef 8832) #7 ; 0 uses
end_hunk_0
