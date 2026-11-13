Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cpregs-pmu?download=true
inline.NumInlined: 174
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ARMCPRegInfo = type { ptr, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr }

@supported_event_map = internal unnamed_addr global [61 x i16] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [27 x i8] c"../target/arm/cpregs-pmu.c\00", align 1
@define_pm_cpregs.pmcr = internal constant { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.3, i8 15, i8 9, i8 12, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 768, i32 255, i32 0, i32 2133, i32 0, i32 0, i32 0, i64 0, i64 1240, [2 x i64] zeroinitializer, ptr @pmreg_access_pmcr, ptr @pmcr_read, ptr @pmcr_write, ptr @raw_read, ptr @raw_write, ptr null }, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"PMCR\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"PMCR_EL0\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"PMCCNTR\00", align 1
@__const.define_pm_cpregs.pmccntr = private unnamed_addr constant { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.5, i8 15, i8 9, i8 13, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 768, i32 255, i32 0, i32 3151, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr @pmreg_access_ccntr, ptr @pmccntr_read, ptr @pmccntr_write32, ptr null, ptr null, ptr null }, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"PMEVCNTR%d\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"PMEVCNTR%d_EL0\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"PMEVTYPER%d\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"PMEVTYPER%d_EL0\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"PMCEID0\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"PMCEID0_EL0\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"PMCEID1\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"PMCEID1_EL0\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"PMCEID2\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"PMCEID3\00", align 1
@define_pm_cpregs.v84_pmmir = internal constant { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.16, i8 0, i8 9, i8 14, i8 3, i8 0, i8 6, [2 x i8] zeroinitializer, i32 2, i32 16, i32 168, i32 0, i32 3158, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr @pmreg_access, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.16 = private unnamed_addr constant [10 x i8] c"PMMIR_EL1\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"counter < 31\00", align 1
@__PRETTY_FUNCTION__.pmevcntr_is_64_bit = private unnamed_addr constant [45 x i8] c"_Bool pmevcntr_is_64_bit(CPUARMState *, int)\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"PMCNTENSET\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"PMCNTENSET_EL0\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"PMCNTENCLR\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"PMCNTENCLR_EL0\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"PMOVSR\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"PMOVSCLR_EL0\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"PMSWINC\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"PMSWINC_EL0\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"PMSELR\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"PMSELR_EL0\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"PMCCNTR_EL0\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"PMCCFILTR\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"PMCCFILTR_EL0\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"PMXEVTYPER\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"PMXEVTYPER_EL0\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"PMXEVCNTR\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"PMXEVCNTR_EL0\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"PMUSERENR\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"PMUSERENR_EL0\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"PMINTENSET\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"PMINTENSET_EL1\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"PMINTENCLR\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"PMINTENCLR_EL1\00", align 1
@v7_pm_reginfo = internal constant [23 x { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr }] [{ ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.23, i8 15, i8 9, i8 12, i8 0, i8 0, i8 1, [2 x i8] zeroinitializer, i32 0, i32 768, i32 255, i32 0, i32 3152, i32 0, i32 0, i32 0, i64 0, i64 1248, [2 x i64] zeroinitializer, ptr @pmreg_access, ptr null, ptr @pmcntenset_write, ptr null, ptr @raw_write, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.24, i8 0, i8 9, i8 12, i8 3, i8 3, i8 1, [2 x i8] zeroinitializer, i32 1, i32 512, i32 255, i32 0, i32 3152, i32 0, i32 0, i32 0, i64 0, i64 1248, [2 x i64] zeroinitializer, ptr @pmreg_access, ptr null, ptr @pmcntenset_write, ptr null, ptr @raw_write, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.25, i8 15, i8 9, i8 12, i8 0, i8 0, i8 2, [2 x i8] zeroinitializer, i32 0, i32 768, i32 255, i32 0, i32 3152, i32 0, i32 0, i32 0, i64 0, i64 1248, [2 x i64] zeroinitializer, ptr @pmreg_access, ptr null, ptr @pmcntenclr_write, ptr null, ptr @raw_write, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.26, i8 0, i8 9, i8 12, i8 3, i8 3, i8 2, [2 x i8] zeroinitializer, i32 1, i32 768, i32 255, i32 0, i32 3152, i32 0, i32 0, i32 0, i64 0, i64 1248, [2 x i64] zeroinitializer, ptr @pmreg_access, ptr null, ptr @pmcntenclr_write, ptr null, ptr @raw_write, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.27, i8 15, i8 9, i8 12, i8 0, i8 0, i8 3, [2 x i8] zeroinitializer, i32 0, i32 512, i32 255, i32 0, i32 3154, i32 0, i32 0, i32 0, i64 0, i64 1256, [2 x i64] zeroinitializer, ptr @pmreg_access, ptr null, ptr @pmovsr_write, ptr null, ptr @raw_write, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.28, i8 0, i8 9, i8 12, i8 3, i8 3, i8 3, [2 x i8] zeroinitializer, i32 1, i32 768, i32 255, i32 0, i32 3154, i32 0, i32 0, i32 0, i64 0, i64 1256, [2 x i64] zeroinitializer, ptr @pmreg_access, ptr null, ptr @pmovsr_write, ptr null, ptr @raw_write, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.29, i8 15, i8 9, i8 12, i8 0, i8 0, i8 4, [2 x i8] zeroinitializer, i32 0, i32 1536, i32 85, i32 0, i32 2132, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr @pmreg_access_swinc, ptr null, ptr @pmswinc_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.30, i8 0, i8 9, i8 12, i8 3, i8 3, i8 4, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 85, i32 0, i32 2132, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr @pmreg_access_swinc, ptr null, ptr @pmswinc_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.31, i8 15, i8 9, i8 12, i8 0, i8 0, i8 5, [2 x i8] zeroinitializer, i32 0, i32 256, i32 255, i32 0, i32 3155, i32 0, i32 0, i32 0, i64 0, i64 1272, [2 x i64] zeroinitializer, ptr @pmreg_access_selr, ptr null, ptr @pmselr_write, ptr null, ptr @raw_write, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.32, i8 0, i8 9, i8 12, i8 3, i8 3, i8 5, [2 x i8] zeroinitializer, i32 1, i32 0, i32 255, i32 0, i32 3155, i32 0, i32 0, i32 0, i64 0, i64 1272, [2 x i64] zeroinitializer, ptr @pmreg_access_selr, ptr null, ptr @pmselr_write, ptr null, ptr @raw_write, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.33, i8 0, i8 9, i8 13, i8 3, i8 3, i8 0, [2 x i8] zeroinitializer, i32 1, i32 512, i32 255, i32 0, i32 3151, i32 0, i32 0, i32 0, i64 0, i64 2256, [2 x i64] zeroinitializer, ptr @pmreg_access_ccntr, ptr @pmccntr_read, ptr @pmccntr_write, ptr @raw_read, ptr @raw_write, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.34, i8 15, i8 14, i8 15, i8 0, i8 0, i8 7, [2 x i8] zeroinitializer, i32 0, i32 768, i32 255, i32 0, i32 3150, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr @pmreg_access, ptr @pmccfiltr_read_a32, ptr @pmccfiltr_write_a32, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.35, i8 0, i8 14, i8 15, i8 3, i8 3, i8 7, [2 x i8] zeroinitializer, i32 1, i32 512, i32 255, i32 0, i32 3150, i32 0, i32 0, i32 0, i64 0, i64 3016, [2 x i64] zeroinitializer, ptr @pmreg_access, ptr null, ptr @pmccfiltr_write, ptr null, ptr @raw_write, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.36, i8 15, i8 9, i8 13, i8 0, i8 0, i8 1, [2 x i8] zeroinitializer, i32 0, i32 1536, i32 255, i32 0, i32 3149, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr @pmreg_access, ptr @pmxevtyper_read, ptr @pmxevtyper_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.37, i8 0, i8 9, i8 13, i8 3, i8 3, i8 1, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 255, i32 0, i32 3149, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr @pmreg_access, ptr @pmxevtyper_read, ptr @pmxevtyper_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.38, i8 15, i8 9, i8 13, i8 0, i8 0, i8 2, [2 x i8] zeroinitializer, i32 0, i32 1536, i32 255, i32 0, i32 3148, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr @pmreg_access_xevcntr, ptr @pmxevcntr_read, ptr @pmxevcntr_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.39, i8 0, i8 9, i8 13, i8 3, i8 3, i8 2, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 255, i32 0, i32 3148, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr @pmreg_access_xevcntr, ptr @pmxevcntr_read, ptr @pmxevcntr_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.40, i8 15, i8 9, i8 14, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 254, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 1264, [2 x i64] zeroinitializer, ptr @access_tpm, ptr null, ptr @pmuserenr_write, ptr null, ptr @raw_write, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.41, i8 0, i8 9, i8 14, i8 3, i8 3, i8 0, [2 x i8] zeroinitializer, i32 1, i32 256, i32 254, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 1264, [2 x i64] zeroinitializer, ptr @access_tpm, ptr null, ptr @pmuserenr_write, ptr null, ptr @raw_write, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.42, i8 15, i8 9, i8 14, i8 0, i8 0, i8 1, [2 x i8] zeroinitializer, i32 0, i32 768, i32 252, i32 0, i32 3153, i32 0, i32 0, i32 0, i64 0, i64 1280, [2 x i64] zeroinitializer, ptr @access_tpm, ptr null, ptr @pmintenset_write, ptr null, ptr @raw_write, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.43, i8 0, i8 9, i8 14, i8 3, i8 0, i8 1, [2 x i8] zeroinitializer, i32 1, i32 512, i32 252, i32 0, i32 3153, i32 0, i32 0, i32 0, i64 0, i64 1280, [2 x i64] zeroinitializer, ptr @access_tpm, ptr null, ptr @pmintenset_write, ptr null, ptr @raw_write, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.44, i8 15, i8 9, i8 14, i8 0, i8 0, i8 2, [2 x i8] zeroinitializer, i32 0, i32 768, i32 252, i32 0, i32 3153, i32 0, i32 0, i32 0, i64 0, i64 1280, [2 x i64] zeroinitializer, ptr @access_tpm, ptr null, ptr @pmintenclr_write, ptr null, ptr @raw_write, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.45, i8 0, i8 9, i8 14, i8 3, i8 0, i8 2, [2 x i8] zeroinitializer, i32 1, i32 768, i32 252, i32 0, i32 3153, i32 0, i32 0, i32 0, i64 0, i64 1280, [2 x i64] zeroinitializer, ptr @access_tpm, ptr null, ptr @pmintenclr_write, ptr null, ptr @raw_write, ptr null }], align 16
@.str.48 = private unnamed_addr constant [32 x i8] c"counter < pmu_num_counters(env)\00", align 1
@__PRETTY_FUNCTION__.pmevcntr_rawread = private unnamed_addr constant [63 x i8] c"uint64_t pmevcntr_rawread(CPUARMState *, const ARMCPRegInfo *)\00", align 1
@__PRETTY_FUNCTION__.pmevcntr_rawwrite = private unnamed_addr constant [70 x i8] c"void pmevcntr_rawwrite(CPUARMState *, const ARMCPRegInfo *, uint64_t)\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"PMOVSSET\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"PMOVSSET_EL0\00", align 1
@pmovsset_cp_reginfo = internal constant [2 x { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr }] [{ ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.49, i8 15, i8 9, i8 14, i8 0, i8 0, i8 3, [2 x i8] zeroinitializer, i32 0, i32 768, i32 255, i32 0, i32 3154, i32 0, i32 0, i32 0, i64 0, i64 1256, [2 x i64] zeroinitializer, ptr @pmreg_access, ptr null, ptr @pmovsset_write, ptr null, ptr @raw_write, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.50, i8 0, i8 9, i8 14, i8 3, i8 3, i8 3, [2 x i8] zeroinitializer, i32 1, i32 768, i32 255, i32 0, i32 3154, i32 0, i32 0, i32 0, i64 0, i64 1256, [2 x i64] zeroinitializer, ptr @pmreg_access, ptr null, ptr @pmovsset_write, ptr null, ptr @raw_write, ptr null }], align 16
@switch.table.pmu_counter_enabled = private unnamed_addr constant [11 x i8] c"\00\01\01\01\01\01\03\01\01\01\02", align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @pmu_init(ptr nofree noundef captures(none) initializes((96616, 96632)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(122) @supported_event_map, i8 -1, i64 122, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96616
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96624 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96624
  store i64 0, ptr %i.c, align 8
  store i16 0, ptr @supported_event_map, align 16
  store i64 1, ptr %i.a, align 8
  %i.d = getelementptr i8, ptr %0, i64 96272
  %.val.i.i = load i64, ptr %i.d, align 8
  %i.e = lshr i64 %.val.i.i, 8
  %i.f = and i64 %i.e, 15                         ; 2 uses
  %.off.i.i = add nsw i64 %i.f, -4
  %switch.i.i = icmp ult i64 %.off.i.i, 11
  br i1 %switch.i.i, label %.thread40, label %pmuv3p1_events_supported.exit

.thread40:                                        ; preds = %bb.a
  store i16 1, ptr getelementptr inbounds nuw (i8, ptr @supported_event_map, i64 70), align 2
  br label %pmuv3p1_events_supported.exit30.thread

pmuv3p1_events_supported.exit:                    ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 96392
  %.val2.i.i = load i64, ptr %i.g, align 8
  %i.h = trunc i64 %.val2.i.i to i32
  %i.i = lshr i32 %i.h, 24
  %i.j = and i32 %i.i, 15
  %.off = add nsw i32 %i.j, -4
  %switch = icmp ult i32 %.off, 11
  br i1 %switch, label %bb.b, label %pmuv3p1_events_supported.exit30

bb.b:                                             ; preds = %pmuv3p1_events_supported.exit
  store i16 1, ptr getelementptr inbounds nuw (i8, ptr @supported_event_map, i64 70), align 2
  store i64 8, ptr %i.b, align 16
  br label %pmuv3p1_events_supported.exit30

pmuv3p1_events_supported.exit30:                  ; preds = %pmuv3p1_events_supported.exit, %bb.b
  %i.k = phi i64 [ 8, %bb.b ], [ 0, %pmuv3p1_events_supported.exit ] ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 96392
  %.val2.i.i28 = load i64, ptr %i.l, align 8
  %i.m = trunc i64 %.val2.i.i28 to i32
  %i.n = lshr i32 %i.m, 24
  %i.o = and i32 %i.n, 15
  %.off36 = add nsw i32 %i.o, -4
  %switch37 = icmp ult i32 %.off36, 11
  br i1 %switch37, label %pmuv3p1_events_supported.exit30.thread, label %bb.c

pmuv3p1_events_supported.exit30.thread:           ; preds = %.thread40, %pmuv3p1_events_supported.exit30
  %i.p = phi i64 [ %i.k, %pmuv3p1_events_supported.exit30 ], [ 8, %.thread40 ]
  store i16 2, ptr getelementptr inbounds nuw (i8, ptr @supported_event_map, i64 72), align 8
  %i.q = or disjoint i64 %i.p, 16                 ; 2 uses
  store i64 %i.q, ptr %i.b, align 16
  br label %bb.c

bb.c:                                             ; preds = %pmuv3p1_events_supported.exit30, %pmuv3p1_events_supported.exit30.thread
  %i.r = phi i64 [ %i.k, %pmuv3p1_events_supported.exit30 ], [ %i.q, %pmuv3p1_events_supported.exit30.thread ]
  %.off.i.i32 = add nsw i64 %i.f, -5
  %switch.i.i33 = icmp ult i64 %.off.i.i32, 10
  br i1 %switch.i.i33, label %pmuv3p4_events_supported.exit.thread, label %pmuv3p4_events_supported.exit

pmuv3p4_events_supported.exit:                    ; preds = %bb.c
  %i.s = getelementptr i8, ptr %0, i64 96392
  %.val2.i.i34 = load i64, ptr %i.s, align 8
  %i.t = trunc i64 %.val2.i.i34 to i32
  %i.u = lshr i32 %i.t, 24
  %i.v = and i32 %i.u, 15
  %.off38 = add nsw i32 %i.v, -5
  %switch39 = icmp ult i32 %.off38, 10
  br i1 %switch39, label %pmuv3p4_events_supported.exit.thread, label %bb.d

pmuv3p4_events_supported.exit.thread:             ; preds = %pmuv3p4_events_supported.exit, %bb.c
  store i16 3, ptr getelementptr inbounds nuw (i8, ptr @supported_event_map, i64 120), align 8
  %i.w = or i64 %i.r, 268435456
  store i64 %i.w, ptr %i.b, align 16
  br label %bb.d

bb.d:                                             ; preds = %pmuv3p4_events_supported.exit, %pmuv3p4_events_supported.exit.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @pmu_op_start(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9 ; 2 uses
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %i.c = extractvalue { i32, i32 } %i.a, 1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw i64 %i.d, 32
  %i.f = zext i32 %i.b to i64
  %i.g = or disjoint i64 %i.e, %i.f               ; 3 uses
  %i.h = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef %0, i8 noundef zeroext 31)
  br i1 %i.h, label %bb.b, label %pmccntr_op_start.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 1240
  %.val.i = load i64, ptr %i.i, align 8           ; 2 uses
  %i.j = and i64 %.val.i, 72
  %i.k = icmp eq i64 %i.j, 8
  %i.l = lshr i64 %i.g, 6
  %spec.select.i = select i1 %i.k, i64 %i.l, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.n = load i64, ptr %i.m, align 8
  %i.o = sub i64 %spec.select.i, %i.n             ; 2 uses
  %i.p = and i64 %.val.i, 64
  %.not.i = icmp eq i64 %i.p, 0
  %i.q = select i1 %.not.i, i64 2147483648, i64 -9223372036854775808
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2256 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = xor i64 %i.o, -1
  %i.u = and i64 %i.q, %i.s
  %i.v = and i64 %i.u, %i.t
  %.not16.i = icmp eq i64 %i.v, 0
  br i1 %.not16.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = or i64 %i.x, 2147483648
  store i64 %i.y, ptr %i.w, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.o, ptr %i.r, align 8
  br label %pmccntr_op_start.exit

pmccntr_op_start.exit:                            ; preds = %bb.a, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2264
  store i64 %i.g, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %0, i64 79728     ; 2 uses
  %.val5 = load i64, ptr %i.aa, align 8
  %i.ab = and i64 %.val5, 63488
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %pmccntr_op_start.exit, %.lr.ph
  %.06 = phi i32 [ %i.ad, %.lr.ph ], [ 0, %pmccntr_op_start.exit ] ; 2 uses
  %i.ac = trunc nuw nsw i32 %.06 to i8
  tail call fastcc void @pmevcntr_op_start(ptr noundef nonnull %0, i8 noundef zeroext %i.ac)
  %i.ad = add nuw nsw i32 %.06, 1                 ; 2 uses
  %.val = load i64, ptr %i.aa, align 8
  %i.ae = trunc i64 %.val to i32
  %i.af = lshr i32 %i.ae, 11
  %i.ag = and i32 %i.af, 31
  %i.ah = icmp samesign ult i32 %i.ad, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %pmccntr_op_start.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pmevcntr_op_start(ptr nofree noundef captures(none) %0, i8 noundef zeroext range(i8 0, 32) %1) unnamed_addr #3 {
event_supported.exit.thread:
  %2 = zext nneg i8 %1 to i64                     ; 3 uses
  %i.a = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext %1)
  br i1 %i.a, label %bb.a, label %bb.h

bb.a:                                             ; preds = %event_supported.exit.thread
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %2
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = sub i64 0, %i.d
  %i.f = zext nneg i8 %1 to i32                   ; 2 uses
  %.not.i = icmp eq i8 %1, 31
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 457, ptr noundef nonnull @__PRETTY_FUNCTION__.pmevcntr_is_64_bit) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 79776
  %.val.i.i = load i64, ptr %i.g, align 8
  %i.h = lshr i64 %.val.i.i, 8
  %i.i = and i64 %i.h, 15
  %.off.i.i = add nsw i64 %i.i, -6
  %switch.i.i = icmp ult i64 %.off.i.i, 9
  br i1 %switch.i.i, label %isar_feature_any_pmuv3p5.exit.thread.i, label %isar_feature_any_pmuv3p5.exit.i

isar_feature_any_pmuv3p5.exit.i:                  ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 79896
  %.val2.i.i = load i64, ptr %i.j, align 8
  %i.k = trunc i64 %.val2.i.i to i32
  %i.l = lshr i32 %i.k, 24
  %i.m = and i32 %i.l, 15
  %.off.i = add nsw i32 %i.m, -6
  %switch.i = icmp ult i32 %.off.i, 9
  br i1 %switch.i, label %isar_feature_any_pmuv3p5.exit.thread.i, label %pmevcntr_is_64_bit.exit.thread

isar_feature_any_pmuv3p5.exit.thread.i:           ; preds = %isar_feature_any_pmuv3p5.exit.i, %bb.c
  %i.n = getelementptr i8, ptr %0, i64 78928
  %.val.i = load i64, ptr %i.n, align 16
  %i.o = and i64 %.val.i, 268435456
  %.not14.i = icmp eq i64 %i.o, 0
  br i1 %.not14.i, label %.split, label %bb.d

bb.d:                                             ; preds = %isar_feature_any_pmuv3p5.exit.thread.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.q = load i64, ptr %i.p, align 16
  %.fr30 = freeze i64 %i.q                        ; 2 uses
  %i.r = trunc i64 %.fr30 to i32
  %i.s = and i32 %i.r, 31
  %.not15.not.i = icmp samesign ugt i32 %i.s, %i.f
  br i1 %.not15.not.i, label %.split, label %pmevcntr_is_64_bit.exit

.split:                                           ; preds = %bb.d, %isar_feature_any_pmuv3p5.exit.thread.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.u = load i64, ptr %i.t, align 8
  %.fr32 = freeze i64 %i.u
  %i.v = and i64 %.fr32, 128
  %.not33 = icmp eq i64 %i.v, 0
  br i1 %.not33, label %pmevcntr_is_64_bit.exit.thread, label %bb.e

pmevcntr_is_64_bit.exit:                          ; preds = %bb.d
  %i.w = and i64 %.fr30, 67108864
  %.not31 = icmp eq i64 %i.w, 0
  br i1 %.not31, label %pmevcntr_is_64_bit.exit.thread, label %bb.e

bb.e:                                             ; preds = %.split, %pmevcntr_is_64_bit.exit
  br label %pmevcntr_is_64_bit.exit.thread

pmevcntr_is_64_bit.exit.thread:                   ; preds = %isar_feature_any_pmuv3p5.exit.i, %.split, %pmevcntr_is_64_bit.exit, %bb.e
  %i.x = phi i64 [ -9223372036854775808, %bb.e ], [ 2147483648, %pmevcntr_is_64_bit.exit ], [ 2147483648, %.split ], [ 2147483648, %isar_feature_any_pmuv3p5.exit.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %2 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %3 = add i64 %i.d, -1
  %i.ab = and i64 %i.x, %3
  %i.ac = and i64 %i.ab, %i.aa
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %pmevcntr_is_64_bit.exit.thread
  %i.ad = shl nuw nsw i32 1, %i.f
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = or i64 %i.ag, %i.ae
  store i64 %i.ah, ptr %i.af, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %pmevcntr_is_64_bit.exit.thread
  store i64 %i.e, ptr %i.z, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %event_supported.exit.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %2
  store i64 0, ptr %i.aj, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @pmu_op_finish(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef %0, i8 noundef zeroext 31)
  br i1 %i.a, label %bb.b, label %pmccntr_op_finish.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 1240
  %.val.i = load i64, ptr %i.d, align 8
  %i.e = and i64 %.val.i, 72
  %i.f = icmp eq i64 %i.e, 8
  %i.g = lshr i64 %i.c, 6
  %spec.select.i = select i1 %i.f, i64 %i.g, i64 %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.i = load i64, ptr %i.h, align 8
  %i.j = sub i64 %spec.select.i, %i.i
  store i64 %i.j, ptr %i.b, align 8
  br label %pmccntr_op_finish.exit

pmccntr_op_finish.exit:                           ; preds = %bb.a, %bb.b
  %i.k = getelementptr i8, ptr %0, i64 79728
  %.val = load i64, ptr %i.k, align 8
  %i.l = trunc i64 %.val to i32
  %i.m = lshr i32 %i.l, 11
  %i.n = and i32 %i.m, 31                         ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %pmccntr_op_finish.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %wide.trip.count = zext nneg i32 %i.n to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %pmevcntr_op_finish.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %pmevcntr_op_finish.exit ] ; 4 uses
  %i.q = trunc i64 %indvars.iv to i8
  %i.r = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext range(i8 0, 32) %i.q)
  br i1 %i.r, label %bb.d, label %pmevcntr_op_finish.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = sub i64 %i.v, %i.t
  store i64 %i.w, ptr %i.u, align 8
  br label %pmevcntr_op_finish.exit

pmevcntr_op_finish.exit:                          ; preds = %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !1

._crit_edge:                                      ; preds = %pmevcntr_op_finish.exit, %pmccntr_op_finish.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @pmu_pre_el_change(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16496 ; 2 uses
  %i.b = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9 ; 2 uses
  %i.c = extractvalue { i32, i32 } %i.b, 0
  %i.d = extractvalue { i32, i32 } %i.b, 1
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw i64 %i.e, 32
  %i.g = zext i32 %i.c to i64
  %i.h = or disjoint i64 %i.f, %i.g               ; 3 uses
  %i.i = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %i.a, i8 noundef zeroext 31)
  br i1 %i.i, label %bb.b, label %pmccntr_op_start.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 17736
  %.val.i.i = load i64, ptr %i.j, align 8         ; 2 uses
  %i.k = and i64 %.val.i.i, 72
  %i.l = icmp eq i64 %i.k, 8
  %i.m = lshr i64 %i.h, 6
  %spec.select.i.i = select i1 %i.l, i64 %i.m, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 18760
  %i.o = load i64, ptr %i.n, align 8
  %i.p = sub i64 %spec.select.i.i, %i.o           ; 2 uses
  %i.q = and i64 %.val.i.i, 64
  %.not.i.i = icmp eq i64 %i.q, 0
  %i.r = select i1 %.not.i.i, i64 2147483648, i64 -9223372036854775808
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 18752 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = xor i64 %i.p, -1
  %i.v = and i64 %i.r, %i.t
  %i.w = and i64 %i.v, %i.u
  %.not16.i.i = icmp eq i64 %i.w, 0
  br i1 %.not16.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 17752 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = or i64 %i.y, 2147483648
  store i64 %i.z, ptr %i.x, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.p, ptr %i.s, align 8
  br label %pmccntr_op_start.exit.i

pmccntr_op_start.exit.i:                          ; preds = %bb.d, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 18760
  store i64 %i.h, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %0, i64 96224     ; 2 uses
  %.val5.i = load i64, ptr %i.ab, align 8
  %i.ac = and i64 %.val5.i, 63488
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %pmu_op_start.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %pmccntr_op_start.exit.i, %.lr.ph.i
  %.06.i = phi i32 [ %i.ae, %.lr.ph.i ], [ 0, %pmccntr_op_start.exit.i ] ; 2 uses
  %i.ad = trunc nuw nsw i32 %.06.i to i8
  tail call fastcc void @pmevcntr_op_start(ptr noundef nonnull %i.a, i8 noundef zeroext %i.ad)
  %i.ae = add nuw nsw i32 %.06.i, 1               ; 2 uses
  %.val.i = load i64, ptr %i.ab, align 8
  %i.af = trunc i64 %.val.i to i32
  %i.ag = lshr i32 %i.af, 11
  %i.ah = and i32 %i.ag, 31
  %i.ai = icmp samesign ult i32 %i.ae, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %pmu_op_start.exit, !llvm.loop !0

pmu_op_start.exit:                                ; preds = %.lr.ph.i, %pmccntr_op_start.exit.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @pmu_post_el_change(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16496 ; 2 uses
  %i.b = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %i.a, i8 noundef zeroext 31)
  br i1 %i.b, label %bb.b, label %pmccntr_op_finish.exit.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18760 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 17736
  %.val.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.val.i.i, 72
  %i.g = icmp eq i64 %i.f, 8
  %i.h = lshr i64 %i.d, 6
  %spec.select.i.i = select i1 %i.g, i64 %i.h, i64 %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 18752
  %i.j = load i64, ptr %i.i, align 8
  %i.k = sub i64 %spec.select.i.i, %i.j
  store i64 %i.k, ptr %i.c, align 8
  br label %pmccntr_op_finish.exit.i

pmccntr_op_finish.exit.i:                         ; preds = %bb.b, %bb.a
  %i.l = getelementptr i8, ptr %0, i64 96224
  %.val.i = load i64, ptr %i.l, align 8
  %i.m = trunc i64 %.val.i to i32
  %i.n = lshr i32 %i.m, 11
  %i.o = and i32 %i.n, 31                         ; 2 uses
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %pmu_op_finish.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %pmccntr_op_finish.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 18768
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 19016
  %wide.trip.count.i = zext nneg i32 %i.o to i64
  br label %bb.c

bb.c:                                             ; preds = %pmevcntr_op_finish.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %pmevcntr_op_finish.exit.i ] ; 4 uses
  %i.r = trunc i64 %indvars.iv.i to i8
  %i.s = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %i.a, i8 noundef zeroext range(i8 0, 32) %i.r)
  br i1 %i.s, label %bb.d, label %pmevcntr_op_finish.exit.i

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = sub i64 %i.w, %i.u
  store i64 %i.x, ptr %i.v, align 8
  br label %pmevcntr_op_finish.exit.i

pmevcntr_op_finish.exit.i:                        ; preds = %bb.d, %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %pmu_op_finish.exit, label %bb.c, !llvm.loop !1

pmu_op_finish.exit:                               ; preds = %pmevcntr_op_finish.exit.i, %pmccntr_op_finish.exit.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @arm_pmu_timer_cb(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16496 ; 4 uses
  %i.b = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9 ; 2 uses
  %i.c = extractvalue { i32, i32 } %i.b, 0
  %i.d = extractvalue { i32, i32 } %i.b, 1
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw i64 %i.e, 32
  %i.g = zext i32 %i.c to i64
  %i.h = or disjoint i64 %i.f, %i.g               ; 3 uses
  %i.i = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %i.a, i8 noundef zeroext 31)
  br i1 %i.i, label %bb.b, label %pmccntr_op_start.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 17736
  %.val.i.i = load i64, ptr %i.j, align 8         ; 2 uses
  %i.k = and i64 %.val.i.i, 72
  %i.l = icmp eq i64 %i.k, 8
  %i.m = lshr i64 %i.h, 6
  %spec.select.i.i = select i1 %i.l, i64 %i.m, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 18760
  %i.o = load i64, ptr %i.n, align 8
  %i.p = sub i64 %spec.select.i.i, %i.o           ; 2 uses
  %i.q = and i64 %.val.i.i, 64
  %.not.i.i = icmp eq i64 %i.q, 0
  %i.r = select i1 %.not.i.i, i64 2147483648, i64 -9223372036854775808
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 18752 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = xor i64 %i.p, -1
  %i.v = and i64 %i.r, %i.t
  %i.w = and i64 %i.v, %i.u
  %.not16.i.i = icmp eq i64 %i.w, 0
  br i1 %.not16.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 17752 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = or i64 %i.y, 2147483648
  store i64 %i.z, ptr %i.x, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.p, ptr %i.s, align 8
  br label %pmccntr_op_start.exit.i

pmccntr_op_start.exit.i:                          ; preds = %bb.d, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 18760 ; 3 uses
  store i64 %i.h, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %0, i64 96224     ; 2 uses
  %.val5.i = load i64, ptr %i.ab, align 8         ; 2 uses
  %i.ac = and i64 %.val5.i, 63488
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %pmu_op_start.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %pmccntr_op_start.exit.i, %.lr.ph.i
  %.06.i = phi i32 [ %i.ae, %.lr.ph.i ], [ 0, %pmccntr_op_start.exit.i ] ; 2 uses
  %i.ad = trunc nuw nsw i32 %.06.i to i8
  tail call fastcc void @pmevcntr_op_start(ptr noundef nonnull %i.a, i8 noundef zeroext %i.ad)
  %i.ae = add nuw nsw i32 %.06.i, 1               ; 2 uses
  %.val.i = load i64, ptr %i.ab, align 8          ; 2 uses
  %i.af = trunc i64 %.val.i to i32
  %i.ag = lshr i32 %i.af, 11
  %i.ah = and i32 %i.ag, 31
  %i.ai = icmp samesign ult i32 %i.ae, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %pmu_op_start.exit, !llvm.loop !0

pmu_op_start.exit:                                ; preds = %.lr.ph.i, %pmccntr_op_start.exit.i
  %.val.i3 = phi i64 [ %.val5.i, %pmccntr_op_start.exit.i ], [ %.val.i, %.lr.ph.i ]
  %i.aj = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %i.a, i8 noundef zeroext 31)
  br i1 %i.aj, label %bb.e, label %pmccntr_op_finish.exit.i

bb.e:                                             ; preds = %pmu_op_start.exit
  %i.ak = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.al = getelementptr i8, ptr %0, i64 17736
  %.val.i.i6 = load i64, ptr %i.al, align 8
  %i.am = and i64 %.val.i.i6, 72
  %i.an = icmp eq i64 %i.am, 8
  %i.ao = lshr i64 %i.ak, 6
  %spec.select.i.i7 = select i1 %i.an, i64 %i.ao, i64 %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 18752
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = sub i64 %spec.select.i.i7, %i.aq
  store i64 %i.ar, ptr %i.aa, align 8
  br label %pmccntr_op_finish.exit.i

pmccntr_op_finish.exit.i:                         ; preds = %bb.e, %pmu_op_start.exit
  %i.as = trunc i64 %.val.i3 to i32
  %i.at = lshr i32 %i.as, 11
  %i.au = and i32 %i.at, 31                       ; 2 uses
  %.not.i4 = icmp eq i32 %i.au, 0
  br i1 %.not.i4, label %pmu_op_finish.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %pmccntr_op_finish.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 18768
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 19016
  %wide.trip.count.i = zext nneg i32 %i.au to i64
  br label %bb.f

bb.f:                                             ; preds = %pmevcntr_op_finish.exit.i, %.lr.ph.i5
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i5 ], [ %indvars.iv.next.i, %pmevcntr_op_finish.exit.i ] ; 4 uses
  %i.ax = trunc i64 %indvars.iv.i to i8
  %i.ay = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %i.a, i8 noundef zeroext range(i8 0, 32) %i.ax)
  br i1 %i.ay, label %bb.g, label %pmevcntr_op_finish.exit.i

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.i
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.i ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = sub i64 %i.bc, %i.ba
  store i64 %i.bd, ptr %i.bb, align 8
  br label %pmevcntr_op_finish.exit.i

pmevcntr_op_finish.exit.i:                        ; preds = %bb.g, %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %pmu_op_finish.exit, label %bb.f, !llvm.loop !1

pmu_op_finish.exit:                               ; preds = %pmevcntr_op_finish.exit.i, %pmccntr_op_finish.exit.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @define_pm_cpregs(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.ARMCPRegInfo, align 8       ; 19 uses
  %2 = alloca %struct.ARMCPRegInfo, align 8       ; 5 uses
  %3 = alloca [4 x %struct.ARMCPRegInfo], align 16 ; 62 uses
  %4 = alloca [5 x %struct.ARMCPRegInfo], align 16 ; 59 uses
  %5 = alloca [2 x %struct.ARMCPRegInfo], align 16 ; 25 uses
  %i.a = getelementptr i8, ptr %0, i64 95424      ; 4 uses
  %.val48 = load i64, ptr %i.a, align 16          ; 2 uses
  %i.b = and i64 %.val48, 8
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  store ptr @.str.4, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <4 x i8> <i8 0, i8 9, i8 12, i8 3>, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 3, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 0, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 0, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> <i32 1, i32 512, i32 255, i32 0>, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> <i32 2133, i32 0, i32 0, i32 0>, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = getelementptr i8, ptr %0, i64 96224      ; 2 uses
  %i.k = load i64, ptr %i.j, align 16
  store i64 %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 1240, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr @pmreg_access_pmcr, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr @pmcr_read, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr @pmcr_write, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr @raw_read, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr @raw_write, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr null, ptr %i.s, align 8
  tail call void @define_one_arm_cp_reg(ptr noundef nonnull %0, ptr noundef nonnull @define_pm_cpregs.pmcr) #13
  call void @define_one_arm_cp_reg(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  call void @define_arm_cp_regs_len(ptr noundef nonnull %0, ptr noundef nonnull @v7_pm_reginfo, i64 noundef 23) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(128) @__const.define_pm_cpregs.pmccntr, i64 128, i1 false)
  %.val47 = load i64, ptr %i.a, align 16
  %i.t = and i64 %.val47, 16777216
  %.not42 = icmp eq i64 %i.t, 0
  br i1 %.not42, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 33536, ptr %i.u, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @define_one_arm_cp_reg(ptr noundef nonnull %0, ptr noundef nonnull %2) #13
  %.val49 = load i64, ptr %i.j, align 16
  %i.v = trunc i64 %.val49 to i32
  %i.w = lshr i32 %i.v, 11
  %i.x = and i32 %i.w, 31                         ; 2 uses
  %.not60 = icmp eq i32 %i.x, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 13
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 137
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 138
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 139
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 140
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 141
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 142
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 164
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 265
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 266
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 267
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 268
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 269
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 270
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 292
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 336
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 352
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 384
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 392
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 393
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 394
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 395
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 396
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 397
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 398
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 400
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 416
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 420
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 464
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 480
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 488
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 496
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 504
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %.val46.pre = load i64, ptr %i.a, align 16
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.059 = phi i32 [ 0, %.lr.ph ], [ %i.co, %bb.e ] ; 6 uses
  %i.ce = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.6, i32 noundef %.059) #13 ; 2 uses
  %i.cf = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.7, i32 noundef %.059) #13 ; 2 uses
  %i.cg = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.8, i32 noundef %.059) #13 ; 2 uses
  %i.ch = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.9, i32 noundef %.059) #13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %i.ce, ptr %3, align 16
  store i8 15, ptr %i.y, align 8
  store i8 14, ptr %i.z, align 1
  %i.ci = trunc nsw i32 %.059 to i8               ; 2 uses
  %i.cj = lshr i8 %i.ci, 3
  %i.ck = and i8 %i.cj, 3                         ; 2 uses
  %i.cl = or disjoint i8 %i.ck, 8                 ; 2 uses
  store i8 %i.cl, ptr %i.aa, align 2
  store i8 0, ptr %i.ab, align 1
  store i8 0, ptr %i.ac, align 4
  %i.cm = and i8 %i.ci, 7                         ; 4 uses
  store i8 %i.cm, ptr %i.ad, align 1
  store i16 0, ptr %i.ae, align 2
  store <4 x i32> <i32 0, i32 768, i32 255, i32 0>, ptr %i.af, align 16
  store i32 3148, ptr %i.ag, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.ah, i8 0, i64 44, i1 false)
  store <2 x ptr> <ptr @pmreg_access_xevcntr, ptr @pmevcntr_readfn>, ptr %i.ai, align 16
  store ptr @pmevcntr_writefn, ptr %i.aj, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  store ptr %i.cf, ptr %i.al, align 16
  store i8 0, ptr %i.am, align 8
  store i8 14, ptr %i.an, align 1
  store i8 %i.cl, ptr %i.ao, align 2
  store i8 3, ptr %i.ap, align 1
  store i8 3, ptr %i.aq, align 4
  store i8 %i.cm, ptr %i.ar, align 1
  store i16 0, ptr %i.as, align 2
  store <4 x i32> <i32 1, i32 512, i32 255, i32 0>, ptr %i.at, align 16
  store i32 3148, ptr %i.au, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.av, i8 0, i64 44, i1 false)
  store <2 x ptr> <ptr @pmreg_access_xevcntr, ptr @pmevcntr_readfn>, ptr %i.aw, align 16
  store <2 x ptr> <ptr @pmevcntr_writefn, ptr @pmevcntr_rawread>, ptr %i.ax, align 16
  store ptr @pmevcntr_rawwrite, ptr %i.ay, align 16
  store ptr null, ptr %i.az, align 8
  store ptr %i.cg, ptr %i.ba, align 16
  store i8 15, ptr %i.bb, align 8
  store i8 14, ptr %i.bc, align 1
  %i.cn = or disjoint i8 %i.ck, 12                ; 2 uses
  store i8 %i.cn, ptr %i.bd, align 2
  store i8 0, ptr %i.be, align 1
  store i8 0, ptr %i.bf, align 4
  store i8 %i.cm, ptr %i.bg, align 1
  store i16 0, ptr %i.bh, align 2
  store <4 x i32> <i32 0, i32 768, i32 255, i32 0>, ptr %i.bi, align 16
  store i32 3149, ptr %i.bj, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.bk, i8 0, i64 44, i1 false)
  store <2 x ptr> <ptr @pmreg_access, ptr @pmevtyper_readfn>, ptr %i.bl, align 16
  store ptr @pmevtyper_writefn, ptr %i.bm, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  store ptr %i.ch, ptr %i.bo, align 16
  store i8 0, ptr %i.bp, align 8
  store i8 14, ptr %i.bq, align 1
  store i8 %i.cn, ptr %i.br, align 2
  store i8 3, ptr %i.bs, align 1
  store i8 3, ptr %i.bt, align 4
  store i8 %i.cm, ptr %i.bu, align 1
  store i16 0, ptr %i.bv, align 2
  store <4 x i32> <i32 1, i32 512, i32 255, i32 0>, ptr %i.bw, align 16
  store i32 3149, ptr %i.bx, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.by, i8 0, i64 44, i1 false)
  store <2 x ptr> <ptr @pmreg_access, ptr @pmevtyper_readfn>, ptr %i.bz, align 16
  store ptr @pmevtyper_writefn, ptr %i.ca, align 16
  store ptr null, ptr %i.cb, align 8
  store ptr @pmevtyper_rawwrite, ptr %i.cc, align 16
  store ptr null, ptr %i.cd, align 8
  call void @define_arm_cp_regs_len(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef 4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @g_free(ptr noundef %i.ch) #13
  call void @g_free(ptr noundef %i.cg) #13
  call void @g_free(ptr noundef %i.cf) #13
  call void @g_free(ptr noundef %i.ce) #13
  %i.co = add nuw nsw i32 %.059, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.co, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !13

bb.f:                                             ; preds = %._crit_edge, %bb.a
  %.val46 = phi i64 [ %.val46.pre, %._crit_edge ], [ %.val48, %bb.a ] ; 2 uses
  %i.cp = and i64 %.val46, 2048
  %.not43 = icmp eq i64 %i.cp, 0
  br i1 %.not43, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @define_arm_cp_regs_len(ptr noundef nonnull %0, ptr noundef nonnull @pmovsset_cp_reginfo, i64 noundef 2) #13
  %.val45.pre = load i64, ptr %i.a, align 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.val45 = phi i64 [ %.val45.pre, %bb.g ], [ %.val46, %bb.f ]
  %i.cq = and i64 %.val45, 16777216
  %.not44 = icmp eq i64 %i.cq, 0
  br i1 %.not44, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 544
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.cr, i8 0, i64 96, i1 false), !annotation !14
  store ptr @.str.10, ptr %4, align 16
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <4 x i8> <i8 15, i8 9, i8 12, i8 0>, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 0, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 13
  store i8 6, ptr %i.cu, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 0, ptr %i.cv, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x i32> <i32 0, i32 16, i32 170, i32 0>, ptr %i.cw, align 16
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store <4 x i32> <i32 3194, i32 0, i32 0, i32 0>, ptr %i.cx, align 16
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 96616
  %i.da = load i64, ptr %i.cz, align 8            ; 2 uses
  %i.db = and i64 %i.da, 4294967295
  store i64 %i.db, ptr %i.cy, align 16
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i8 0, i64 24, i1 false)
  store ptr @pmreg_access, ptr %i.dd, align 16
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.de, i8 0, i64 40, i1 false)
  store ptr @.str.11, ptr %i.df, align 16
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 136
  store <4 x i8> <i8 0, i8 9, i8 12, i8 3>, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 140
  store i8 3, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 141
  store i8 6, ptr %i.di, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 142
  store i16 0, ptr %i.dj, align 2
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 144
  store <4 x i32> <i32 1, i32 16, i32 170, i32 0>, ptr %i.dk, align 16
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 160
  store <4 x i32> <i32 3194, i32 0, i32 0, i32 0>, ptr %i.dl, align 16
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 176
  store i64 %i.da, ptr %i.dm, align 16
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, i8 0, i64 24, i1 false)
  store ptr @pmreg_access, ptr %i.do, align 16
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dp, i8 0, i64 40, i1 false)
  store ptr @.str.12, ptr %i.dq, align 16
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 264
  store <4 x i8> <i8 15, i8 9, i8 12, i8 0>, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 268
  store i8 0, ptr %i.ds, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 269
  store i8 7, ptr %i.dt, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 270
  store i16 0, ptr %i.du, align 2
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 272
  store <4 x i32> <i32 0, i32 16, i32 170, i32 0>, ptr %i.dv, align 16
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 288
  store <4 x i32> <i32 3194, i32 0, i32 0, i32 0>, ptr %i.dw, align 16
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 304
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 96624
  %i.dz = load i64, ptr %i.dy, align 16           ; 2 uses
  %i.ea = and i64 %i.dz, 4294967295
  store i64 %i.ea, ptr %i.dx, align 16
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 312
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i8 0, i64 24, i1 false)
  store ptr @pmreg_access, ptr %i.ec, align 16
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 344
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ed, i8 0, i64 40, i1 false)
  store ptr @.str.13, ptr %i.ee, align 16
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 392
  store <4 x i8> <i8 0, i8 9, i8 12, i8 3>, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 396
  store i8 3, ptr %i.eg, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 397
  store i8 7, ptr %i.eh, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 398
  store i16 0, ptr %i.ei, align 2
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 400
  store <4 x i32> <i32 1, i32 16, i32 170, i32 0>, ptr %i.ej, align 16
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 416
  store <4 x i32> <i32 3194, i32 0, i32 0, i32 0>, ptr %i.ek, align 16
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 432
  store i64 %i.dz, ptr %i.el, align 16
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 440
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 464
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, i8 0, i64 24, i1 false)
  store ptr @pmreg_access, ptr %i.en, align 16
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 472
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.eo, i8 0, i64 40, i1 false)
  store ptr @.str.5, ptr %i.ep, align 16
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 520
  store i8 15, ptr %i.eq, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 521
  store i8 0, ptr %i.er, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 522
  store i8 9, ptr %i.es, align 2
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 523
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 532
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.et, i8 0, i64 9, i1 false)
  store <4 x i32> <i32 800, i32 255, i32 0, i32 3151>, ptr %i.eu, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 548
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 592
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.ev, i8 0, i64 44, i1 false)
  store ptr @pmreg_access_ccntr, ptr %i.ew, align 16
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 600
  store ptr @pmccntr_read, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 608
  store ptr @pmccntr_write, ptr %i.ey, align 16
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 616
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i8 0, i64 24, i1 false)
  call void @define_arm_cp_regs_len(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.fa = getelementptr i8, ptr %0, i64 96392     ; 2 uses
  %.val = load i64, ptr %i.fa, align 8
  %i.fb = trunc i64 %.val to i32
  %i.fc = lshr i32 %i.fb, 24
  %i.fd = and i32 %i.fc, 15
  %.off = add nsw i32 %i.fd, -4
  %switch = icmp ult i32 %.off, 11
  br i1 %switch, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr @.str.14, ptr %5, align 16
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <4 x i8> <i8 15, i8 9, i8 14, i8 0>, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 0, ptr %i.ff, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.fg, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 0, ptr %i.fh, align 2
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <4 x i32> <i32 0, i32 16, i32 170, i32 0>, ptr %i.fi, align 16
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 32
  store <4 x i32> <i32 3194, i32 0, i32 0, i32 0>, ptr %i.fj, align 16
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 96616
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = lshr i64 %i.fm, 32
  store i64 %i.fn, ptr %i.fk, align 16
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, i8 0, i64 24, i1 false)
  store ptr @pmreg_access, ptr %i.fp, align 16
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fq, i8 0, i64 40, i1 false)
  store ptr @.str.15, ptr %i.fr, align 16
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 136
  store <4 x i8> <i8 15, i8 9, i8 14, i8 0>, ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 140
  store i8 0, ptr %i.ft, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %5, i64 141
  store i8 5, ptr %i.fu, align 1
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 142
  store i16 0, ptr %i.fv, align 2
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 144
  store <4 x i32> <i32 0, i32 16, i32 170, i32 0>, ptr %i.fw, align 16
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 160
  store <4 x i32> <i32 3194, i32 0, i32 0, i32 0>, ptr %i.fx, align 16
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 96624
  %i.ga = load i64, ptr %i.fz, align 16
  %i.gb = lshr i64 %i.ga, 32
  store i64 %i.gb, ptr %i.fy, align 16
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gc, i8 0, i64 24, i1 false)
  store ptr @pmreg_access, ptr %i.gd, align 16
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ge, i8 0, i64 40, i1 false)
  call void @define_arm_cp_regs_len(ptr noundef nonnull %0, ptr noundef nonnull %5, i64 noundef 2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.gf = getelementptr i8, ptr %0, i64 96272
  %.val.i = load i64, ptr %i.gf, align 16
  %i.gg = lshr i64 %.val.i, 8
  %i.gh = and i64 %i.gg, 15
  %.off.i = add nsw i64 %i.gh, -5
  %switch.i = icmp ult i64 %.off.i, 10
  br i1 %switch.i, label %isar_feature_any_pmuv3p4.exit.thread, label %isar_feature_any_pmuv3p4.exit

isar_feature_any_pmuv3p4.exit:                    ; preds = %bb.l
  %.val2.i = load i64, ptr %i.fa, align 8
  %i.gi = trunc i64 %.val2.i to i32
  %i.gj = lshr i32 %i.gi, 24
  %i.gk = and i32 %i.gj, 15
  %.off57 = add nsw i32 %i.gk, -5
  %switch58 = icmp ult i32 %.off57, 10
  br i1 %switch58, label %isar_feature_any_pmuv3p4.exit.thread, label %bb.m

isar_feature_any_pmuv3p4.exit.thread:             ; preds = %isar_feature_any_pmuv3p4.exit, %bb.l
  call void @define_one_arm_cp_reg(ptr noundef nonnull %0, ptr noundef nonnull @define_pm_cpregs.v84_pmmir) #13
  br label %bb.m

bb.m:                                             ; preds = %isar_feature_any_pmuv3p4.exit, %isar_feature_any_pmuv3p4.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 8) i32 @pmreg_access_pmcr(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i1 zeroext %2) #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 78928
  %.val.i.i = load i64, ptr %i.a, align 16
  %i.b = and i64 %.val.i.i, 128
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 3728
  %.val10.i.i = load i32, ptr %i.c, align 16
  %.not12.i.i = icmp eq i32 %.val10.i.i, 0
  br i1 %.not12.i.i, label %bb.c, label %.thread21.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3668
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3752
  %i.f = load i32, ptr %i.e, align 8
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 1
  %i.k = xor i32 %i.j, 1
  br label %arm_current_el.exit.i

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 336
  %.val11.i.i = load i8, ptr %i.l, align 16, !range !11, !noundef !12
  %i.m = trunc nuw i8 %.val11.i.i to i1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.o = load i64, ptr %i.n, align 8
  %i.p = trunc i64 %i.o to i32
  %i.q = lshr i32 %i.p, 2
  %i.r = and i32 %i.q, 3
  br label %arm_current_el.exit.i

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.t = load i32, ptr %i.s, align 8
  %i.u = and i32 %i.t, 31
  switch i32 %i.u, label %.thread21.i [
    i32 16, label %arm_current_el.exit.thread15.i
    i32 22, label %arm_current_el.exit.thread.thread.thread25.i
  ]

arm_current_el.exit.i:                            ; preds = %bb.e, %bb.c
  %.0.i.i = phi i32 [ %i.k, %bb.c ], [ %i.r, %bb.e ] ; 2 uses
  %i.v = icmp eq i32 %.0.i.i, 0
  br i1 %i.v, label %arm_current_el.exit.thread15.i, label %arm_current_el.exit.thread.thread.i

arm_current_el.exit.thread15.i:                   ; preds = %arm_current_el.exit.i, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.x = load i64, ptr %i.w, align 16
  %i.y = and i64 %i.x, 1
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %do_pmreg_access.exit, label %.thread21.i

arm_current_el.exit.thread.thread.i:              ; preds = %arm_current_el.exit.i
  %i.z = icmp samesign ult i32 %.0.i.i, 3
  br i1 %i.z, label %.thread21.i, label %arm_current_el.exit.thread.thread.thread25.i

.thread21.i:                                      ; preds = %arm_current_el.exit.thread.thread.i, %arm_current_el.exit.thread15.i, %bb.f, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = and i64 %i.ab, 64
  %.not12.i = icmp eq i64 %i.ac, 0
  br i1 %.not12.i, label %arm_current_el.exit.thread.thread.thread25.i, label %do_pmreg_access.exit

arm_current_el.exit.thread.thread.thread25.i:     ; preds = %.thread21.i, %arm_current_el.exit.thread.thread.i, %bb.f
  br label %do_pmreg_access.exit

do_pmreg_access.exit:                             ; preds = %arm_current_el.exit.thread15.i, %.thread21.i, %arm_current_el.exit.thread.thread.thread25.i
  %.1.i = phi i32 [ 5, %arm_current_el.exit.thread15.i ], [ 0, %arm_current_el.exit.thread.thread.thread25.i ], [ 7, %.thread21.i ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal i64 @pmcr_read(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #5 {
arm_current_el.exit.thread:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @pmcr_write(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9 ; 2 uses
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %i.c = extractvalue { i32, i32 } %i.a, 1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw i64 %i.d, 32
  %i.f = zext i32 %i.b to i64
  %i.g = or disjoint i64 %i.e, %i.f               ; 3 uses
  %i.h = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef %0, i8 noundef zeroext 31)
  br i1 %i.h, label %bb.b, label %pmccntr_op_start.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 1240
  %.val.i.i = load i64, ptr %i.i, align 8         ; 2 uses
  %i.j = and i64 %.val.i.i, 72
  %i.k = icmp eq i64 %i.j, 8
  %i.l = lshr i64 %i.g, 6
  %spec.select.i.i = select i1 %i.k, i64 %i.l, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.n = load i64, ptr %i.m, align 8
  %i.o = sub i64 %spec.select.i.i, %i.n           ; 2 uses
  %i.p = and i64 %.val.i.i, 64
  %.not.i.i = icmp eq i64 %i.p, 0
  %i.q = select i1 %.not.i.i, i64 2147483648, i64 -9223372036854775808
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2256 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = xor i64 %i.o, -1
  %i.u = and i64 %i.q, %i.s
  %i.v = and i64 %i.u, %i.t
  %.not16.i.i = icmp eq i64 %i.v, 0
  br i1 %.not16.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = or i64 %i.x, 2147483648
  store i64 %i.y, ptr %i.w, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.o, ptr %i.r, align 8
  br label %pmccntr_op_start.exit.i

pmccntr_op_start.exit.i:                          ; preds = %bb.d, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 3 uses
  store i64 %i.g, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %0, i64 79728     ; 3 uses
  %.val5.i = load i64, ptr %i.aa, align 8         ; 2 uses
  %i.ab = and i64 %.val5.i, 63488
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %pmu_op_start.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %pmccntr_op_start.exit.i, %.lr.ph.i
  %.06.i = phi i32 [ %i.ad, %.lr.ph.i ], [ 0, %pmccntr_op_start.exit.i ] ; 2 uses
  %i.ac = trunc nuw nsw i32 %.06.i to i8
  tail call fastcc void @pmevcntr_op_start(ptr noundef nonnull %0, i8 noundef zeroext %i.ac)
  %i.ad = add nuw nsw i32 %.06.i, 1               ; 2 uses
  %.val.i = load i64, ptr %i.aa, align 8          ; 2 uses
  %i.ae = trunc i64 %.val.i to i32
  %i.af = lshr i32 %i.ae, 11
  %i.ag = and i32 %i.af, 31
  %i.ah = icmp samesign ult i32 %i.ad, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %pmu_op_start.exit, !llvm.loop !0

pmu_op_start.exit:                                ; preds = %.lr.ph.i, %pmccntr_op_start.exit.i
  %.val18 = phi i64 [ %.val5.i, %pmccntr_op_start.exit.i ], [ %.val.i, %.lr.ph.i ] ; 2 uses
  %i.ai = and i64 %2, 4
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %pmu_op_start.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2256
  store i64 0, ptr %i.aj, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %pmu_op_start.exit
  %i.ak = and i64 %2, 2
  %.not12 = icmp eq i64 %i.ak, 0
  %i.al = and i64 %.val18, 63488
  %.not20 = icmp eq i64 %i.al, 0
  %or.cond = or i1 %.not12, %.not20
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2272
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  store i64 0, ptr %i.an, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ao = lshr i64 %.val, 11
  %i.ap = and i64 %i.ao, 31
  %i.aq = icmp samesign ult i64 %indvars.iv.next, %i.ap
  br i1 %i.aq, label %bb.g, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %bb.g, %bb.f
  %.val.i13 = phi i64 [ %.val18, %bb.f ], [ %.val, %bb.g ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = and i64 %i.as, -250
  %i.au = and i64 %2, 249
  %i.av = or disjoint i64 %i.at, %i.au
  store i64 %i.av, ptr %i.ar, align 8
  %i.aw = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext 31)
  br i1 %i.aw, label %bb.h, label %pmccntr_op_finish.exit.i

bb.h:                                             ; preds = %.loopexit
  %i.ax = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ay = and i64 %2, 72
  %i.az = icmp eq i64 %i.ay, 8
  %i.ba = lshr i64 %i.ax, 6
  %spec.select.i.i17 = select i1 %i.az, i64 %i.ba, i64 %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = sub i64 %spec.select.i.i17, %i.bc
  store i64 %i.bd, ptr %i.z, align 8
  br label %pmccntr_op_finish.exit.i

pmccntr_op_finish.exit.i:                         ; preds = %bb.h, %.loopexit
  %i.be = trunc i64 %.val.i13 to i32
  %i.bf = lshr i32 %i.be, 11
  %i.bg = and i32 %i.bf, 31                       ; 2 uses
  %.not.i14 = icmp eq i32 %i.bg, 0
  br i1 %.not.i14, label %pmu_op_finish.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %pmccntr_op_finish.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %wide.trip.count.i = zext nneg i32 %i.bg to i64
  br label %bb.i

bb.i:                                             ; preds = %pmevcntr_op_finish.exit.i, %.lr.ph.i15
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i15 ], [ %indvars.iv.next.i, %pmevcntr_op_finish.exit.i ] ; 4 uses
  %i.bj = trunc i64 %indvars.iv.i to i8
  %i.bk = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext range(i8 0, 32) %i.bj)
  br i1 %i.bk, label %bb.j, label %pmevcntr_op_finish.exit.i

bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.i ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = sub i64 %i.bo, %i.bm
  store i64 %i.bp, ptr %i.bn, align 8
  br label %pmevcntr_op_finish.exit.i

pmevcntr_op_finish.exit.i:                        ; preds = %bb.j, %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %pmu_op_finish.exit, label %bb.i, !llvm.loop !1

pmu_op_finish.exit:                               ; preds = %pmevcntr_op_finish.exit.i, %pmccntr_op_finish.exit.i
  ret void
}

declare i64 @raw_read(ptr noundef, ptr noundef) #6

declare void @raw_write(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @define_one_arm_cp_reg(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @define_arm_cp_regs_len(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 8) i32 @pmreg_access_ccntr(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i1 noundef zeroext %2) #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 78928
  %.val = load i64, ptr %i.a, align 16            ; 2 uses
  %i.b = and i64 %.val, 16777216
  %.not = icmp eq i64 %i.b, 0
  %.pre = and i64 %.val, 128                      ; 2 uses
  br i1 %.not, label %arm_current_el.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %.pre, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 3728
  %.val10.i = load i32, ptr %i.c, align 16
  %.not12.i = icmp eq i32 %.val10.i, 0
  br i1 %.not12.i, label %bb.d, label %arm_current_el.exit.thread.thread14

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3668
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3752
  %i.f = load i32, ptr %i.e, align 8
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 1
  %i.k = xor i32 %i.j, 1
  br label %arm_current_el.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 336
  %.val11.i = load i8, ptr %i.l, align 16, !range !11, !noundef !12
  %i.m = trunc nuw i8 %.val11.i to i1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.o = load i64, ptr %i.n, align 8
  %i.p = trunc i64 %i.o to i32
  %i.q = lshr i32 %i.p, 2
  %i.r = and i32 %i.q, 3
  br label %arm_current_el.exit

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.t = load i32, ptr %i.s, align 8
  %i.u = and i32 %i.t, 31
  %cond = icmp eq i32 %i.u, 16
  br i1 %cond, label %arm_current_el.exit.thread9, label %arm_current_el.exit.thread.thread

arm_current_el.exit:                              ; preds = %bb.d, %bb.f
  %.0.i = phi i32 [ %i.k, %bb.d ], [ %i.r, %bb.f ]
  %i.v = icmp eq i32 %.0.i, 0
  br i1 %i.v, label %arm_current_el.exit.thread9, label %arm_current_el.exit.thread

arm_current_el.exit.thread9:                      ; preds = %bb.g, %arm_current_el.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.x = load i64, ptr %i.w, align 16
  %i.y = and i64 %i.x, 4
  %i.z = icmp ne i64 %i.y, 0
  %or.cond = and i1 %2, %i.z
  br i1 %or.cond, label %pmreg_access.exit, label %arm_current_el.exit.thread

arm_current_el.exit.thread:                       ; preds = %bb.a, %arm_current_el.exit.thread9, %arm_current_el.exit
  %.not.i.i.i = icmp eq i64 %.pre, 0
  br i1 %.not.i.i.i, label %arm_current_el.exit.thread.thread, label %arm_current_el.exit.thread.thread14

arm_current_el.exit.thread.thread14:              ; preds = %bb.c, %arm_current_el.exit.thread
  %i.aa = getelementptr i8, ptr %0, i64 3728
  %.val10.i.i.i = load i32, ptr %i.aa, align 16
  %.not12.i.i.i = icmp eq i32 %.val10.i.i.i, 0
  br i1 %.not12.i.i.i, label %bb.h, label %.thread21.i.i

bb.h:                                             ; preds = %arm_current_el.exit.thread.thread14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3668
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3752
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, 1
  %i.ai = xor i32 %i.ah, 1
  br label %arm_current_el.exit.i.i

arm_current_el.exit.thread.thread:                ; preds = %bb.g, %arm_current_el.exit.thread
  %i.aj = getelementptr i8, ptr %0, i64 336
  %.val11.i.i.i = load i8, ptr %i.aj, align 16, !range !11, !noundef !12
  %i.ak = trunc nuw i8 %.val11.i.i.i to i1
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %arm_current_el.exit.thread.thread
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.am = load i64, ptr %i.al, align 8
  %i.an = trunc i64 %i.am to i32
  %i.ao = lshr i32 %i.an, 2
  %i.ap = and i32 %i.ao, 3
  br label %arm_current_el.exit.i.i

bb.j:                                             ; preds = %arm_current_el.exit.thread.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = and i32 %i.ar, 31
  switch i32 %i.as, label %.thread21.i.i [
    i32 16, label %arm_current_el.exit.thread15.i.i
    i32 22, label %arm_current_el.exit.thread.thread.thread25.i.i
  ]

arm_current_el.exit.i.i:                          ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i32 [ %i.ai, %bb.h ], [ %i.ap, %bb.i ] ; 2 uses
  %i.at = icmp eq i32 %.0.i.i.i, 0
  br i1 %i.at, label %arm_current_el.exit.thread15.i.i, label %arm_current_el.exit.thread.thread.i.i

arm_current_el.exit.thread15.i.i:                 ; preds = %arm_current_el.exit.i.i, %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.av = load i64, ptr %i.au, align 16
  %i.aw = and i64 %i.av, 1
  %.not.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i, label %pmreg_access.exit, label %.thread21.i.i

arm_current_el.exit.thread.thread.i.i:            ; preds = %arm_current_el.exit.i.i
  %i.ax = icmp samesign ult i32 %.0.i.i.i, 3
  br i1 %i.ax, label %.thread21.i.i, label %arm_current_el.exit.thread.thread.thread25.i.i

.thread21.i.i:                                    ; preds = %arm_current_el.exit.thread.thread.i.i, %arm_current_el.exit.thread15.i.i, %bb.j, %arm_current_el.exit.thread.thread14
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = and i64 %i.az, 64
  %.not12.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not12.i.i, label %arm_current_el.exit.thread.thread.thread25.i.i, label %pmreg_access.exit

arm_current_el.exit.thread.thread.thread25.i.i:   ; preds = %.thread21.i.i, %arm_current_el.exit.thread.thread.i.i, %bb.j
  br label %pmreg_access.exit

pmreg_access.exit:                                ; preds = %arm_current_el.exit.thread.thread.thread25.i.i, %.thread21.i.i, %arm_current_el.exit.thread15.i.i, %arm_current_el.exit.thread9
  %.0 = phi i32 [ 0, %arm_current_el.exit.thread9 ], [ 5, %arm_current_el.exit.thread15.i.i ], [ 0, %arm_current_el.exit.thread.thread.thread25.i.i ], [ 7, %.thread21.i.i ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @pmccntr_read(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  %i.a = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9 ; 2 uses
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %i.c = extractvalue { i32, i32 } %i.a, 1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw i64 %i.d, 32
  %i.f = zext i32 %i.b to i64
  %i.g = or disjoint i64 %i.e, %i.f               ; 5 uses
  %i.h = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef %0, i8 noundef zeroext 31)
  br i1 %i.h, label %bb.b, label %.pmccntr_op_start.exit_crit_edge

.pmccntr_op_start.exit_crit_edge:                 ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %pmccntr_op_start.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 1240
  %.val.i = load i64, ptr %i.i, align 8           ; 2 uses
  %i.j = and i64 %.val.i, 72
  %i.k = icmp eq i64 %i.j, 8
  %i.l = lshr i64 %i.g, 6
  %spec.select.i = select i1 %i.k, i64 %i.l, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.n = load i64, ptr %i.m, align 8
  %i.o = sub i64 %spec.select.i, %i.n             ; 3 uses
  %i.p = and i64 %.val.i, 64
  %.not.i = icmp eq i64 %i.p, 0
  %i.q = select i1 %.not.i, i64 2147483648, i64 -9223372036854775808
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2256 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = xor i64 %i.o, -1
  %i.u = and i64 %i.q, %i.s
  %i.v = and i64 %i.u, %i.t
  %.not16.i = icmp eq i64 %i.v, 0
  br i1 %.not16.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = or i64 %i.x, 2147483648
  store i64 %i.y, ptr %i.w, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.o, ptr %i.r, align 8
  br label %pmccntr_op_start.exit

pmccntr_op_start.exit:                            ; preds = %.pmccntr_op_start.exit_crit_edge, %bb.d
  %i.z = phi i64 [ %.pre, %.pmccntr_op_start.exit_crit_edge ], [ %i.o, %bb.d ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 2 uses
  store i64 %i.g, ptr %i.aa, align 8
  %i.ab = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext 31)
  br i1 %i.ab, label %bb.e, label %pmccntr_op_finish.exit

bb.e:                                             ; preds = %pmccntr_op_start.exit
  %i.ac = getelementptr i8, ptr %0, i64 1240
  %.val.i3 = load i64, ptr %i.ac, align 8
  %i.ad = and i64 %.val.i3, 72
  %i.ae = icmp eq i64 %i.ad, 8
  %i.af = lshr i64 %i.g, 6
  %spec.select.i4 = select i1 %i.ae, i64 %i.af, i64 %i.g
  %i.ag = sub i64 %spec.select.i4, %i.z
  store i64 %i.ag, ptr %i.aa, align 8
  br label %pmccntr_op_finish.exit

pmccntr_op_finish.exit:                           ; preds = %pmccntr_op_start.exit, %bb.e
  ret i64 %i.z
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @pmccntr_write32(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9 ; 2 uses
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %i.c = extractvalue { i32, i32 } %i.a, 1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw i64 %i.d, 32
  %i.f = zext i32 %i.b to i64
  %i.g = or disjoint i64 %i.e, %i.f               ; 5 uses
  %i.h = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef %0, i8 noundef zeroext 31)
  br i1 %i.h, label %bb.b, label %.pmccntr_op_start.exit_crit_edge.i

.pmccntr_op_start.exit_crit_edge.i:               ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %pmccntr_op_start.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 1240
  %.val.i.i = load i64, ptr %i.i, align 8         ; 2 uses
  %i.j = and i64 %.val.i.i, 72
  %i.k = icmp eq i64 %i.j, 8
  %i.l = lshr i64 %i.g, 6
  %spec.select.i.i = select i1 %i.k, i64 %i.l, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.n = load i64, ptr %i.m, align 8
  %i.o = sub i64 %spec.select.i.i, %i.n           ; 3 uses
  %i.p = and i64 %.val.i.i, 64
  %.not.i.i = icmp eq i64 %i.p, 0
  %i.q = select i1 %.not.i.i, i64 2147483648, i64 -9223372036854775808
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2256 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = xor i64 %i.o, -1
  %i.u = and i64 %i.q, %i.s
  %i.v = and i64 %i.u, %i.t
  %.not16.i.i = icmp eq i64 %i.v, 0
  br i1 %.not16.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = or i64 %i.x, 2147483648
  store i64 %i.y, ptr %i.w, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.o, ptr %i.r, align 8
  br label %pmccntr_op_start.exit.i

pmccntr_op_start.exit.i:                          ; preds = %bb.d, %.pmccntr_op_start.exit_crit_edge.i
  %i.z = phi i64 [ %.pre.i, %.pmccntr_op_start.exit_crit_edge.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 5 uses
  store i64 %i.g, ptr %i.aa, align 8
  %i.ab = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext 31)
  br i1 %i.ab, label %bb.e, label %pmccntr_read.exit

bb.e:                                             ; preds = %pmccntr_op_start.exit.i
  %i.ac = getelementptr i8, ptr %0, i64 1240
  %.val.i3.i = load i64, ptr %i.ac, align 8
  %i.ad = and i64 %.val.i3.i, 72
  %i.ae = icmp eq i64 %i.ad, 8
  %i.af = lshr i64 %i.g, 6
  %spec.select.i4.i = select i1 %i.ae, i64 %i.af, i64 %i.g
  %i.ag = sub i64 %spec.select.i4.i, %i.z
  store i64 %i.ag, ptr %i.aa, align 8
  br label %pmccntr_read.exit

pmccntr_read.exit:                                ; preds = %pmccntr_op_start.exit.i, %bb.e
  %i.ah = and i64 %i.z, -4294967296
  %i.ai = and i64 %2, 4294967295
  %i.aj = or disjoint i64 %i.ah, %i.ai            ; 2 uses
  %i.ak = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9 ; 2 uses
  %i.al = extractvalue { i32, i32 } %i.ak, 0
  %i.am = extractvalue { i32, i32 } %i.ak, 1
  %i.an = zext i32 %i.am to i64
  %i.ao = shl nuw i64 %i.an, 32
  %i.ap = zext i32 %i.al to i64
  %i.aq = or disjoint i64 %i.ao, %i.ap            ; 5 uses
  %i.ar = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext 31)
  br i1 %i.ar, label %bb.f, label %pmccntr_op_start.exit.i4

bb.f:                                             ; preds = %pmccntr_read.exit
  %i.as = getelementptr i8, ptr %0, i64 1240
  %.val.i.i7 = load i64, ptr %i.as, align 8       ; 2 uses
  %i.at = and i64 %.val.i.i7, 72
  %i.au = icmp eq i64 %i.at, 8
  %i.av = lshr i64 %i.aq, 6
  %spec.select.i.i8 = select i1 %i.au, i64 %i.av, i64 %i.aq
  %i.aw = load i64, ptr %i.aa, align 8
  %i.ax = and i64 %.val.i.i7, 64
  %.not.i.i9 = icmp eq i64 %i.ax, 0
  %i.ay = select i1 %.not.i.i9, i64 2147483648, i64 -9223372036854775808
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = xor i64 %spec.select.i.i8, -1
  %i.bc = add i64 %i.aw, %i.bb
  %i.bd = and i64 %i.ay, %i.ba
  %i.be = and i64 %i.bd, %i.bc
  %.not16.i.i10 = icmp eq i64 %i.be, 0
  br i1 %.not16.i.i10, label %pmccntr_op_start.exit.i4, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = or i64 %i.bg, 2147483648
  store i64 %i.bh, ptr %i.bf, align 8
  br label %pmccntr_op_start.exit.i4

pmccntr_op_start.exit.i4:                         ; preds = %bb.g, %bb.f, %pmccntr_read.exit
  store i64 %i.aq, ptr %i.aa, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2256
  store i64 %i.aj, ptr %i.bi, align 8
  %i.bj = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext 31)
  br i1 %i.bj, label %bb.h, label %pmccntr_write.exit

bb.h:                                             ; preds = %pmccntr_op_start.exit.i4
  %i.bk = getelementptr i8, ptr %0, i64 1240
  %.val.i3.i5 = load i64, ptr %i.bk, align 8
  %i.bl = and i64 %.val.i3.i5, 72
  %i.bm = icmp eq i64 %i.bl, 8
  %i.bn = lshr i64 %i.aq, 6
  %spec.select.i4.i6 = select i1 %i.bm, i64 %i.bn, i64 %i.aq
  %i.bo = sub i64 %spec.select.i4.i6, %i.aj
  store i64 %i.bo, ptr %i.aa, align 8
  br label %pmccntr_write.exit

pmccntr_write.exit:                               ; preds = %pmccntr_op_start.exit.i4, %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 8) i32 @pmreg_access_xevcntr(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i1 noundef zeroext %2) #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 78928
  %.val = load i64, ptr %i.a, align 16            ; 2 uses
  %i.b = and i64 %.val, 16777216
  %.not = icmp eq i64 %i.b, 0
  %.pre = and i64 %.val, 128                      ; 2 uses
  br i1 %.not, label %arm_current_el.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %.pre, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 3728
  %.val10.i = load i32, ptr %i.c, align 16
  %.not12.i = icmp eq i32 %.val10.i, 0
  br i1 %.not12.i, label %bb.d, label %arm_current_el.exit.thread.thread14

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3668
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3752
  %i.f = load i32, ptr %i.e, align 8
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 1
  %i.k = xor i32 %i.j, 1
  br label %arm_current_el.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 336
  %.val11.i = load i8, ptr %i.l, align 16, !range !11, !noundef !12
  %i.m = trunc nuw i8 %.val11.i to i1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.o = load i64, ptr %i.n, align 8
  %i.p = trunc i64 %i.o to i32
  %i.q = lshr i32 %i.p, 2
  %i.r = and i32 %i.q, 3
  br label %arm_current_el.exit

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.t = load i32, ptr %i.s, align 8
  %i.u = and i32 %i.t, 31
  %cond = icmp eq i32 %i.u, 16
  br i1 %cond, label %arm_current_el.exit.thread9, label %arm_current_el.exit.thread.thread

arm_current_el.exit:                              ; preds = %bb.d, %bb.f
  %.0.i = phi i32 [ %i.k, %bb.d ], [ %i.r, %bb.f ]
  %i.v = icmp eq i32 %.0.i, 0
  br i1 %i.v, label %arm_current_el.exit.thread9, label %arm_current_el.exit.thread

arm_current_el.exit.thread9:                      ; preds = %bb.g, %arm_current_el.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.x = load i64, ptr %i.w, align 16
  %i.y = and i64 %i.x, 8
  %i.z = icmp ne i64 %i.y, 0
  %or.cond = and i1 %2, %i.z
  br i1 %or.cond, label %pmreg_access.exit, label %arm_current_el.exit.thread

arm_current_el.exit.thread:                       ; preds = %bb.a, %arm_current_el.exit.thread9, %arm_current_el.exit
  %.not.i.i.i = icmp eq i64 %.pre, 0
  br i1 %.not.i.i.i, label %arm_current_el.exit.thread.thread, label %arm_current_el.exit.thread.thread14

arm_current_el.exit.thread.thread14:              ; preds = %bb.c, %arm_current_el.exit.thread
  %i.aa = getelementptr i8, ptr %0, i64 3728
  %.val10.i.i.i = load i32, ptr %i.aa, align 16
  %.not12.i.i.i = icmp eq i32 %.val10.i.i.i, 0
  br i1 %.not12.i.i.i, label %bb.h, label %.thread21.i.i

bb.h:                                             ; preds = %arm_current_el.exit.thread.thread14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3668
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3752
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, 1
  %i.ai = xor i32 %i.ah, 1
  br label %arm_current_el.exit.i.i

arm_current_el.exit.thread.thread:                ; preds = %bb.g, %arm_current_el.exit.thread
  %i.aj = getelementptr i8, ptr %0, i64 336
  %.val11.i.i.i = load i8, ptr %i.aj, align 16, !range !11, !noundef !12
  %i.ak = trunc nuw i8 %.val11.i.i.i to i1
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %arm_current_el.exit.thread.thread
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.am = load i64, ptr %i.al, align 8
  %i.an = trunc i64 %i.am to i32
  %i.ao = lshr i32 %i.an, 2
  %i.ap = and i32 %i.ao, 3
  br label %arm_current_el.exit.i.i

bb.j:                                             ; preds = %arm_current_el.exit.thread.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = and i32 %i.ar, 31
  switch i32 %i.as, label %.thread21.i.i [
    i32 16, label %arm_current_el.exit.thread15.i.i
    i32 22, label %arm_current_el.exit.thread.thread.thread25.i.i
  ]

arm_current_el.exit.i.i:                          ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i32 [ %i.ai, %bb.h ], [ %i.ap, %bb.i ] ; 2 uses
  %i.at = icmp eq i32 %.0.i.i.i, 0
  br i1 %i.at, label %arm_current_el.exit.thread15.i.i, label %arm_current_el.exit.thread.thread.i.i

arm_current_el.exit.thread15.i.i:                 ; preds = %arm_current_el.exit.i.i, %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.av = load i64, ptr %i.au, align 16
  %i.aw = and i64 %i.av, 1
  %.not.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i, label %pmreg_access.exit, label %.thread21.i.i

arm_current_el.exit.thread.thread.i.i:            ; preds = %arm_current_el.exit.i.i
  %i.ax = icmp samesign ult i32 %.0.i.i.i, 3
  br i1 %i.ax, label %.thread21.i.i, label %arm_current_el.exit.thread.thread.thread25.i.i

.thread21.i.i:                                    ; preds = %arm_current_el.exit.thread.thread.i.i, %arm_current_el.exit.thread15.i.i, %bb.j, %arm_current_el.exit.thread.thread14
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = and i64 %i.az, 64
  %.not12.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not12.i.i, label %arm_current_el.exit.thread.thread.thread25.i.i, label %pmreg_access.exit

arm_current_el.exit.thread.thread.thread25.i.i:   ; preds = %.thread21.i.i, %arm_current_el.exit.thread.thread.i.i, %bb.j
  br label %pmreg_access.exit

pmreg_access.exit:                                ; preds = %arm_current_el.exit.thread.thread.thread25.i.i, %.thread21.i.i, %arm_current_el.exit.thread15.i.i, %arm_current_el.exit.thread9
  %.0 = phi i32 [ 0, %arm_current_el.exit.thread9 ], [ 5, %arm_current_el.exit.thread15.i.i ], [ 0, %arm_current_el.exit.thread.thread.thread25.i.i ], [ 7, %.thread21.i.i ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @pmevcntr_readfn(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i8, ptr %i.a, align 2
  %i.c = shl i8 %i.b, 3
  %i.d = and i8 %i.c, 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.f = load i8, ptr %i.e, align 1
  %i.g = and i8 %i.f, 7
  %i.h = or disjoint i8 %i.d, %i.g                ; 4 uses
  %i.i = zext nneg i8 %i.h to i32
  %i.j = getelementptr i8, ptr %0, i64 79728
  %.val.i = load i64, ptr %i.j, align 8
  %i.k = trunc i64 %.val.i to i32
  %i.l = lshr i32 %i.k, 11
  %i.m = and i32 %i.l, 31
  %i.n = icmp samesign ugt i32 %i.m, %i.i
  br i1 %i.n, label %bb.b, label %pmevcntr_read.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @pmevcntr_op_start(ptr noundef nonnull %0, i8 noundef zeroext range(i8 0, 32) %i.h)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.p = zext nneg i8 %i.h to i64                 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8              ; 3 uses
  %i.s = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext range(i8 0, 32) %i.h)
  br i1 %i.s, label %bb.c, label %pmevcntr_op_finish.exit.i

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.p ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = sub i64 %i.v, %i.r
  store i64 %i.w, ptr %i.u, align 8
  br label %pmevcntr_op_finish.exit.i

pmevcntr_op_finish.exit.i:                        ; preds = %bb.c, %bb.b
  %i.x = getelementptr i8, ptr %0, i64 79776
  %.val.i.i = load i64, ptr %i.x, align 8
  %i.y = lshr i64 %.val.i.i, 8
  %i.z = and i64 %i.y, 15
  %.off.i.i = add nsw i64 %i.z, -6
  %switch.i.i = icmp ult i64 %.off.i.i, 9
  br i1 %switch.i.i, label %isar_feature_any_pmuv3p5.exit.thread.i, label %isar_feature_any_pmuv3p5.exit.i

isar_feature_any_pmuv3p5.exit.i:                  ; preds = %pmevcntr_op_finish.exit.i
  %i.aa = getelementptr i8, ptr %0, i64 79896
  %.val2.i.i = load i64, ptr %i.aa, align 8
  %i.ab = trunc i64 %.val2.i.i to i32
  %i.ac = lshr i32 %i.ab, 24
  %i.ad = and i32 %i.ac, 15                       ; 2 uses
  %i.ae = icmp samesign ugt i32 %i.ad, 5
  %i.af = icmp ne i32 %i.ad, 15
  %spec.select.i3.i.i = and i1 %i.ae, %i.af
  %i.ag = and i64 %i.r, 4294967295
  %cond.fr.i = freeze i1 %spec.select.i3.i.i
  br i1 %cond.fr.i, label %isar_feature_any_pmuv3p5.exit.thread.i, label %pmevcntr_read.exit

isar_feature_any_pmuv3p5.exit.thread.i:           ; preds = %isar_feature_any_pmuv3p5.exit.i, %pmevcntr_op_finish.exit.i
  br label %pmevcntr_read.exit

pmevcntr_read.exit:                               ; preds = %bb.a, %isar_feature_any_pmuv3p5.exit.i, %isar_feature_any_pmuv3p5.exit.thread.i
  %.0.i = phi i64 [ 0, %bb.a ], [ %i.r, %isar_feature_any_pmuv3p5.exit.thread.i ], [ %i.ag, %isar_feature_any_pmuv3p5.exit.i ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @pmevcntr_writefn(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i8, ptr %i.a, align 2
  %i.c = shl i8 %i.b, 3
  %i.d = and i8 %i.c, 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.f = load i8, ptr %i.e, align 1
  %i.g = and i8 %i.f, 7
  %i.h = or disjoint i8 %i.d, %i.g                ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 79776
  %.val.i.i = load i64, ptr %i.i, align 8
  %i.j = lshr i64 %.val.i.i, 8
  %i.k = and i64 %i.j, 15
  %.off.i.i = add nsw i64 %i.k, -6
  %switch.i.i = icmp ult i64 %.off.i.i, 9
  br i1 %switch.i.i, label %isar_feature_any_pmuv3p5.exit.thread.i, label %isar_feature_any_pmuv3p5.exit.i

isar_feature_any_pmuv3p5.exit.i:                  ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 79896
  %.val2.i.i = load i64, ptr %i.l, align 8
  %i.m = trunc i64 %.val2.i.i to i32
  %i.n = lshr i32 %i.m, 24
  %i.o = and i32 %i.n, 15                         ; 2 uses
  %i.p = icmp samesign ugt i32 %i.o, 5
  %i.q = icmp ne i32 %i.o, 15
  %spec.select.i3.i.i = and i1 %i.p, %i.q
  %i.r = and i64 %2, 4294967295
  %cond.fr.i = freeze i1 %spec.select.i3.i.i
  br i1 %cond.fr.i, label %isar_feature_any_pmuv3p5.exit.thread.i, label %bb.b

isar_feature_any_pmuv3p5.exit.thread.i:           ; preds = %isar_feature_any_pmuv3p5.exit.i, %bb.a
  br label %bb.b

bb.b:                                             ; preds = %isar_feature_any_pmuv3p5.exit.thread.i, %isar_feature_any_pmuv3p5.exit.i
  %i.s = phi i64 [ %2, %isar_feature_any_pmuv3p5.exit.thread.i ], [ %i.r, %isar_feature_any_pmuv3p5.exit.i ] ; 2 uses
  %i.t = zext nneg i8 %i.h to i32
  %i.u = getelementptr i8, ptr %0, i64 79728
  %.val.i = load i64, ptr %i.u, align 8
  %i.v = trunc i64 %.val.i to i32
  %i.w = lshr i32 %i.v, 11
  %i.x = and i32 %i.w, 31
  %i.y = icmp samesign ugt i32 %i.x, %i.t
  br i1 %i.y, label %bb.c, label %pmevcntr_write.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @pmevcntr_op_start(ptr noundef nonnull %0, i8 noundef zeroext range(i8 0, 32) %i.h)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.aa = zext nneg i8 %i.h to i64                ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  store i64 %i.s, ptr %i.ab, align 8
  %i.ac = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext range(i8 0, 32) %i.h)
  br i1 %i.ac, label %bb.d, label %pmevcntr_write.exit

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.aa ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = sub i64 %i.af, %i.s
  store i64 %i.ag, ptr %i.ae, align 8
  br label %pmevcntr_write.exit

pmevcntr_write.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @pmevcntr_rawread(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i8, ptr %i.a, align 2
  %i.c = shl i8 %i.b, 3
  %i.d = and i8 %i.c, 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.f = load i8, ptr %i.e, align 1
  %i.g = and i8 %i.f, 7
  %i.h = or disjoint i8 %i.d, %i.g                ; 2 uses
  %i.i = zext nneg i8 %i.h to i32
  %i.j = getelementptr i8, ptr %0, i64 79728
  %.val = load i64, ptr %i.j, align 8
  %i.k = trunc i64 %.val to i32
  %i.l = lshr i32 %i.k, 11
  %i.m = and i32 %i.l, 31
  %i.n = icmp samesign ugt i32 %i.m, %i.i
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1, i32 noundef 973, ptr noundef nonnull @__PRETTY_FUNCTION__.pmevcntr_rawread) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.p = zext nneg i8 %i.h to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8
  ret i64 %i.r
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @pmevcntr_rawwrite(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i8, ptr %i.a, align 2
  %i.c = shl i8 %i.b, 3
  %i.d = and i8 %i.c, 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.f = load i8, ptr %i.e, align 1
  %i.g = and i8 %i.f, 7
  %i.h = or disjoint i8 %i.d, %i.g                ; 4 uses
  %i.i = zext nneg i8 %i.h to i32
  %i.j = getelementptr i8, ptr %0, i64 79728
  %.val = load i64, ptr %i.j, align 8
  %i.k = trunc i64 %.val to i32
  %i.l = lshr i32 %i.k, 11
  %i.m = and i32 %i.l, 31
  %i.n = icmp samesign ugt i32 %i.m, %i.i
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1, i32 noundef 965, ptr noundef nonnull @__PRETTY_FUNCTION__.pmevcntr_rawwrite) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.p = zext nneg i8 %i.h to i64                 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p ; 2 uses
  store i64 %2, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %0, i64 79776
  %.val.i.i = load i64, ptr %i.r, align 8
  %i.s = lshr i64 %.val.i.i, 8
  %i.t = and i64 %i.s, 15
  %.off.i.i = add nsw i64 %i.t, -6
  %switch.i.i = icmp ult i64 %.off.i.i, 9
  br i1 %switch.i.i, label %isar_feature_any_pmuv3p5.exit.thread.i, label %isar_feature_any_pmuv3p5.exit.i

isar_feature_any_pmuv3p5.exit.i:                  ; preds = %bb.c
  %i.u = getelementptr i8, ptr %0, i64 79896
  %.val2.i.i = load i64, ptr %i.u, align 8
  %i.v = trunc i64 %.val2.i.i to i32
  %i.w = lshr i32 %i.v, 24
  %i.x = and i32 %i.w, 15                         ; 2 uses
  %i.y = icmp samesign ugt i32 %i.x, 5
  %i.z = icmp ne i32 %i.x, 15
  %spec.select.i3.i.i = and i1 %i.y, %i.z
  %i.aa = and i64 %2, 4294967295
  %cond.fr.i = freeze i1 %spec.select.i3.i.i
  br i1 %cond.fr.i, label %isar_feature_any_pmuv3p5.exit.thread.i, label %bb.d

isar_feature_any_pmuv3p5.exit.thread.i:           ; preds = %isar_feature_any_pmuv3p5.exit.i, %bb.c
  br label %bb.d

bb.d:                                             ; preds = %isar_feature_any_pmuv3p5.exit.i, %isar_feature_any_pmuv3p5.exit.thread.i
  %i.ab = phi i64 [ %2, %isar_feature_any_pmuv3p5.exit.thread.i ], [ %i.aa, %isar_feature_any_pmuv3p5.exit.i ] ; 2 uses
  tail call fastcc void @pmevcntr_op_start(ptr noundef nonnull %0, i8 noundef zeroext range(i8 0, 32) %i.h)
  store i64 %i.ab, ptr %i.q, align 8
  %i.ac = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext range(i8 0, 32) %i.h)
  br i1 %i.ac, label %bb.e, label %pmevcntr_write.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.p ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = sub i64 %i.af, %i.ab
  store i64 %i.ag, ptr %i.ae, align 8
  br label %pmevcntr_write.exit

pmevcntr_write.exit:                              ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 8) i32 @pmreg_access(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i1 zeroext %2) #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 78928
  %.val.i.i = load i64, ptr %i.a, align 16
  %i.b = and i64 %.val.i.i, 128
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 3728
  %.val10.i.i = load i32, ptr %i.c, align 16
  %.not12.i.i = icmp eq i32 %.val10.i.i, 0
  br i1 %.not12.i.i, label %bb.c, label %.thread21.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3668
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3752
  %i.f = load i32, ptr %i.e, align 8
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 1
  %i.k = xor i32 %i.j, 1
  br label %arm_current_el.exit.i

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 336
  %.val11.i.i = load i8, ptr %i.l, align 16, !range !11, !noundef !12
  %i.m = trunc nuw i8 %.val11.i.i to i1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.o = load i64, ptr %i.n, align 8
  %i.p = trunc i64 %i.o to i32
  %i.q = lshr i32 %i.p, 2
  %i.r = and i32 %i.q, 3
  br label %arm_current_el.exit.i

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.t = load i32, ptr %i.s, align 8
  %i.u = and i32 %i.t, 31
  switch i32 %i.u, label %.thread21.i [
    i32 16, label %arm_current_el.exit.thread15.i
    i32 22, label %arm_current_el.exit.thread.thread.thread25.i
  ]

arm_current_el.exit.i:                            ; preds = %bb.e, %bb.c
  %.0.i.i = phi i32 [ %i.k, %bb.c ], [ %i.r, %bb.e ] ; 2 uses
  %i.v = icmp eq i32 %.0.i.i, 0
  br i1 %i.v, label %arm_current_el.exit.thread15.i, label %arm_current_el.exit.thread.thread.i

arm_current_el.exit.thread15.i:                   ; preds = %arm_current_el.exit.i, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.x = load i64, ptr %i.w, align 16
  %i.y = and i64 %i.x, 1
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %do_pmreg_access.exit, label %.thread21.i

arm_current_el.exit.thread.thread.i:              ; preds = %arm_current_el.exit.i
  %i.z = icmp samesign ult i32 %.0.i.i, 3
  br i1 %i.z, label %.thread21.i, label %arm_current_el.exit.thread.thread.thread25.i

.thread21.i:                                      ; preds = %arm_current_el.exit.thread.thread.i, %arm_current_el.exit.thread15.i, %bb.f, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = and i64 %i.ab, 64
  %.not12.i = icmp eq i64 %i.ac, 0
  br i1 %.not12.i, label %arm_current_el.exit.thread.thread.thread25.i, label %do_pmreg_access.exit

arm_current_el.exit.thread.thread.thread25.i:     ; preds = %.thread21.i, %arm_current_el.exit.thread.thread.i, %bb.f
  br label %do_pmreg_access.exit

do_pmreg_access.exit:                             ; preds = %arm_current_el.exit.thread15.i, %.thread21.i, %arm_current_el.exit.thread.thread.thread25.i
  %.1.i = phi i32 [ 5, %arm_current_el.exit.thread15.i ], [ 0, %arm_current_el.exit.thread.thread.thread25.i ], [ 7, %.thread21.i ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal i64 @pmevtyper_readfn(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i8, ptr %i.a, align 2
  %i.c = shl i8 %i.b, 3
  %i.d = and i8 %i.c, 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.f = load i8, ptr %i.e, align 1
  %i.g = and i8 %i.f, 7
  %i.h = or disjoint i8 %i.d, %i.g                ; 3 uses
  %i.i = icmp eq i8 %i.h, 31
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3016
  %i.k = load i64, ptr %i.j, align 8
  br label %pmevtyper_read.exit

bb.c:                                             ; preds = %bb.a
  %i.l = zext nneg i8 %i.h to i32
  %i.m = getelementptr i8, ptr %0, i64 79728
  %.val.i = load i64, ptr %i.m, align 8
  %i.n = trunc i64 %.val.i to i32
  %i.o = lshr i32 %i.n, 11
  %i.p = and i32 %i.o, 31
  %i.q = icmp samesign ugt i32 %i.p, %i.l
  br i1 %i.q, label %bb.d, label %pmevtyper_read.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.s = zext nneg i8 %i.h to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8
  br label %pmevtyper_read.exit

pmevtyper_read.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i64 [ %i.k, %bb.b ], [ %i.u, %bb.d ], [ 0, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @pmevtyper_writefn(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i8, ptr %i.a, align 2
  %i.c = shl i8 %i.b, 3
  %i.d = and i8 %i.c, 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.f = load i8, ptr %i.e, align 1
  %i.g = and i8 %i.f, 7
  %i.h = or disjoint i8 %i.d, %i.g
  tail call fastcc void @pmevtyper_write(ptr noundef %0, i64 noundef %2, i8 noundef zeroext %i.h)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @pmevtyper_rawwrite(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i8, ptr %i.a, align 2
  %i.c = shl i8 %i.b, 3
  %i.d = and i8 %i.c, 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.f = load i8, ptr %i.e, align 1
  %i.g = and i8 %i.f, 7
  %i.h = or disjoint i8 %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.j = zext nneg i8 %i.h to i64                 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  store i64 %2, ptr %i.k, align 8
  %i.l = trunc i64 %2 to i16
  %i.m = icmp ugt i16 %i.l, 60
  br i1 %i.m, label %event_supported.exit.thread, label %event_supported.exit

event_supported.exit:                             ; preds = %bb.a
  %i.n = and i64 %2, 63
  %i.o = getelementptr inbounds nuw [2 x i8], ptr @supported_event_map, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2
  %.not = icmp eq i16 %i.p, -1
  br i1 %.not, label %event_supported.exit.thread, label %bb.b

bb.b:                                             ; preds = %event_supported.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.j
  store i64 0, ptr %i.r, align 8
  br label %event_supported.exit.thread

event_supported.exit.thread:                      ; preds = %event_supported.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @pmccntr_write(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9 ; 2 uses
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %i.c = extractvalue { i32, i32 } %i.a, 1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw i64 %i.d, 32
  %i.f = zext i32 %i.b to i64
  %i.g = or disjoint i64 %i.e, %i.f               ; 5 uses
  %i.h = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef %0, i8 noundef zeroext 31)
  br i1 %i.h, label %bb.b, label %pmccntr_op_start.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 1240
  %.val.i = load i64, ptr %i.i, align 8           ; 2 uses
  %i.j = and i64 %.val.i, 72
  %i.k = icmp eq i64 %i.j, 8
  %i.l = lshr i64 %i.g, 6
  %spec.select.i = select i1 %i.k, i64 %i.l, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %.val.i, 64
  %.not.i = icmp eq i64 %i.o, 0
  %i.p = select i1 %.not.i, i64 2147483648, i64 -9223372036854775808
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.r = load i64, ptr %i.q, align 8
  %i.s = xor i64 %spec.select.i, -1
  %i.t = add i64 %i.n, %i.s
  %i.u = and i64 %i.p, %i.r
  %i.v = and i64 %i.u, %i.t
  %.not16.i = icmp eq i64 %i.v, 0
  br i1 %.not16.i, label %pmccntr_op_start.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = or i64 %i.x, 2147483648
  store i64 %i.y, ptr %i.w, align 8
  br label %pmccntr_op_start.exit

pmccntr_op_start.exit:                            ; preds = %bb.b, %bb.c, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 2 uses
  store i64 %i.g, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2256
  store i64 %2, ptr %i.aa, align 8
  %i.ab = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef %0, i8 noundef zeroext 31)
  br i1 %i.ab, label %bb.d, label %pmccntr_op_finish.exit

bb.d:                                             ; preds = %pmccntr_op_start.exit
  %i.ac = getelementptr i8, ptr %0, i64 1240
  %.val.i3 = load i64, ptr %i.ac, align 8
  %i.ad = and i64 %.val.i3, 72
  %i.ae = icmp eq i64 %i.ad, 8
  %i.af = lshr i64 %i.g, 6
  %spec.select.i4 = select i1 %i.ae, i64 %i.af, i64 %i.g
  %i.ag = sub i64 %spec.select.i4, %2
  store i64 %i.ag, ptr %i.z, align 8
  br label %pmccntr_op_finish.exit

pmccntr_op_finish.exit:                           ; preds = %pmccntr_op_start.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal fastcc noundef i64 @swinc_get_count(ptr nofree readnone captures(none) %0) unnamed_addr #9 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal fastcc noundef i64 @zero_event_get_count(ptr nofree readnone captures(none) %0) unnamed_addr #9 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc zeroext i1 @pmu_counter_enabled(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext range(i8 0, 32) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 78928
  %.val.i = load i64, ptr %i.a, align 16          ; 5 uses
  %i.b = and i64 %.val.i, 128
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 3728
  %.val10.i = load i32, ptr %i.c, align 16
  %.not12.i = icmp eq i32 %.val10.i, 0
  br i1 %.not12.i, label %bb.c, label %arm_current_el.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3668
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3752
  %i.f = load i32, ptr %i.e, align 8
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 1
  %i.k = xor i32 %i.j, 1
  br label %arm_current_el.exit

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 336
  %.val11.i = load i8, ptr %i.l, align 16, !range !11, !noundef !12
  %i.m = trunc nuw i8 %.val11.i to i1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.o = load i64, ptr %i.n, align 8
  %i.p = trunc i64 %i.o to i32
  %i.q = lshr i32 %i.p, 2
  %i.r = and i32 %i.q, 3
  br label %arm_current_el.exit

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.t = load i32, ptr %i.s, align 8
  %i.u = and i32 %i.t, 31
  %switch.tableidx = add nsw i32 %i.u, -16        ; 2 uses
  %i.v = icmp ult i32 %switch.tableidx, 11
  br i1 %i.v, label %switch.lookup, label %arm_current_el.exit

switch.lookup:                                    ; preds = %bb.f
  %i.w = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.pmu_counter_enabled, i64 %i.w
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %arm_current_el.exit

arm_current_el.exit:                              ; preds = %bb.f, %switch.lookup, %bb.b, %bb.c, %bb.e
  %.0.i = phi i32 [ %switch.ext, %switch.lookup ], [ %i.r, %bb.e ], [ %i.k, %bb.c ], [ 1, %bb.b ], [ 1, %bb.f ] ; 3 uses
  %i.x = and i64 %.val.i, 2147483648
  %.not83 = icmp eq i64 %i.x, 0
  br i1 %.not83, label %event_supported.exit.thread, label %bb.g

bb.g:                                             ; preds = %arm_current_el.exit
  %i.y = and i64 %.val.i, 268435456
  %.not84 = icmp eq i64 %i.y, 0                   ; 3 uses
  %i.z = icmp eq i8 %1, 31                        ; 3 uses
  %or.cond = or i1 %i.z, %.not84
  br i1 %or.cond, label %bb.h, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.g
  %i.aa = icmp eq i32 %.0.i, 2
  br label %.critedge94

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.af = load i64, ptr %i.ae, align 16
  %i.ag = zext nneg i8 %1 to i32
  %i.ah = shl nuw i32 1, %i.ag
  %i.ai = sext i32 %i.ah to i64
  %i.aj = and i64 %i.af, %i.ai
  %i.ak = icmp ne i64 %i.aj, 0
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.h
  %.not = phi i1 [ false, %bb.h ], [ %i.ak, %bb.i ] ; 2 uses
  %i.al = icmp eq i32 %.0.i, 2                    ; 2 uses
  br i1 %i.z, label %isar_feature_any_pmuv3p5.exit, label %.critedge94

isar_feature_any_pmuv3p5.exit:                    ; preds = %.critedge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3016
  br label %bb.j

.critedge94:                                      ; preds = %.critedge.thread, %.critedge
  %i.an = phi i1 [ %i.aa, %.critedge.thread ], [ %i.al, %.critedge ]
  %.not105 = phi i1 [ false, %.critedge.thread ], [ %.not, %.critedge ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.ap = zext nneg i8 %1 to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  br label %bb.j

bb.j:                                             ; preds = %.critedge94, %isar_feature_any_pmuv3p5.exit
  %i.ar = phi i1 [ %i.al, %isar_feature_any_pmuv3p5.exit ], [ %i.an, %.critedge94 ]
  %.not104 = phi i1 [ %.not, %isar_feature_any_pmuv3p5.exit ], [ %.not105, %.critedge94 ]
  %.077.in = phi ptr [ %i.am, %isar_feature_any_pmuv3p5.exit ], [ %i.aq, %.critedge94 ]
  %.077 = load i64, ptr %.077.in, align 8         ; 8 uses
  %i.as = and i64 %.077, 2147483648
  %i.at = icmp ne i64 %i.as, 0                    ; 2 uses
  %i.au = trunc i64 %.val.i to i32
  %i.av = lshr i32 %i.au, 29                      ; 2 uses
  %i.aw = and i32 %i.av, 1                        ; 3 uses
  %i.ax = trunc i32 %i.av to i1                   ; 2 uses
  %i.ay = and i64 %.077, 536870912
  %i.az = icmp ne i64 %i.ay, 0
  %i.ba = select i1 %i.ax, i1 %i.az, i1 false
  %i.bb = and i64 %.077, 268435456
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = select i1 %i.ax, i1 %i.bc, i1 false
  %i.be = and i64 %.077, 134217728
  %i.bf = icmp eq i64 %i.be, 0
  %.not88 = select i1 %.not84, i1 true, i1 %i.bf
  %i.bg = and i64 %.val.i, 570425344
  switch i64 %i.bg, label %arm_el_is_aa64.exit.thread107 [
    i64 570425344, label %bb.k
    i64 33554432, label %arm_el_is_aa64.exit.thread
  ]

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.bi = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.bj = and i64 %i.bi, 1024
  %.not.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i, label %bb.l, label %arm_el_is_aa64.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bk = and i64 %i.bi, 1
  %.not8.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not8.i.i, label %.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.not84, label %arm_el_is_aa64.exit.thread107, label %.split109

.split109:                                        ; preds = %bb.m
  %i.bl = getelementptr i8, ptr %0, i64 79736
  %.val10.i.i = load i64, ptr %i.bl, align 8
  %i.bm = and i64 %.val10.i.i, 3584
  %.not11.i.i = icmp ne i64 %i.bm, 0
  %.not85 = icmp eq i32 %i.aw, 0
  %or.cond111 = or i1 %.not85, %.not11.i.i
  br i1 %or.cond111, label %arm_el_is_aa64.exit.thread107, label %bb.n

.split:                                           ; preds = %bb.l
  %i.bn = and i64 %i.bi, 262144
  %i.bo = icmp eq i64 %i.bn, 0
  %.not85.old = icmp eq i32 %i.aw, 0
  %or.cond112 = or i1 %.not85.old, %i.bo
  br i1 %or.cond112, label %arm_el_is_aa64.exit.thread107, label %bb.n

arm_el_is_aa64.exit.thread:                       ; preds = %bb.j, %bb.k
  %.not85.old.old = icmp eq i32 %i.aw, 0
  br i1 %.not85.old.old, label %arm_el_is_aa64.exit.thread107, label %bb.n

bb.n:                                             ; preds = %.split, %.split109, %arm_el_is_aa64.exit.thread
  %i.bp = trunc i64 %.077 to i32
  %i.bq = lshr i32 %i.bp, 26
  %i.br = and i32 %i.bq, 1
  br label %arm_el_is_aa64.exit.thread107

arm_el_is_aa64.exit.thread107:                    ; preds = %bb.j, %bb.m, %.split109, %.split, %bb.n, %arm_el_is_aa64.exit.thread
  %i.bs = phi i32 [ 0, %arm_el_is_aa64.exit.thread ], [ 0, %bb.j ], [ %i.br, %bb.n ], [ 0, %.split109 ], [ 0, %.split ], [ 0, %bb.m ]
  switch i32 %.0.i, label %bb.q [
    i32 0, label %bb.o
    i32 1, label %bb.p
  ]

bb.o:                                             ; preds = %arm_el_is_aa64.exit.thread107
  %i.bt = and i64 %.077, 1073741824
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = xor i1 %i.bu, %i.bd
  br label %bb.s

bb.p:                                             ; preds = %arm_el_is_aa64.exit.thread107
  %i.bw = xor i1 %i.at, %i.ba
  br label %bb.s

bb.q:                                             ; preds = %arm_el_is_aa64.exit.thread107
  br i1 %i.ar, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = zext i1 %i.at to i32
  %i.by = icmp ne i32 %i.bs, %i.bx
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.r, %bb.o
  %.079.in = phi i1 [ %i.bv, %bb.o ], [ %i.bw, %bb.p ], [ %i.by, %bb.r ], [ %.not88, %bb.q ]
  br i1 %i.z, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = trunc i64 %.077 to i16
  %i.ca = icmp ugt i16 %i.bz, 60
  br i1 %i.ca, label %event_supported.exit.thread, label %event_supported.exit

event_supported.exit:                             ; preds = %bb.t
  %i.cb = and i64 %.077, 63
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr @supported_event_map, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2
  %.not113 = icmp eq i16 %i.cd, -1
  br i1 %.not113, label %event_supported.exit.thread, label %bb.u

bb.u:                                             ; preds = %event_supported.exit, %bb.s
  %i.ce = xor i1 %.079.in, true
  %i.cf = select i1 %.not104, i1 %i.ce, i1 false
  br label %event_supported.exit.thread

event_supported.exit.thread:                      ; preds = %bb.t, %arm_current_el.exit, %event_supported.exit, %bb.u
  %.1 = phi i1 [ %i.cf, %bb.u ], [ false, %event_supported.exit ], [ false, %arm_current_el.exit ], [ false, %bb.t ]
  ret i1 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @pmcntenset_write(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9 ; 2 uses
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %i.c = extractvalue { i32, i32 } %i.a, 1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw i64 %i.d, 32
  %i.f = zext i32 %i.b to i64
  %i.g = or disjoint i64 %i.e, %i.f               ; 3 uses
  %i.h = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef %0, i8 noundef zeroext 31)
  br i1 %i.h, label %bb.b, label %pmccntr_op_start.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 1240
  %.val.i.i = load i64, ptr %i.i, align 8         ; 2 uses
  %i.j = and i64 %.val.i.i, 72
  %i.k = icmp eq i64 %i.j, 8
  %i.l = lshr i64 %i.g, 6
  %spec.select.i.i = select i1 %i.k, i64 %i.l, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.n = load i64, ptr %i.m, align 8
  %i.o = sub i64 %spec.select.i.i, %i.n           ; 2 uses
  %i.p = and i64 %.val.i.i, 64
  %.not.i.i = icmp eq i64 %i.p, 0
  %i.q = select i1 %.not.i.i, i64 2147483648, i64 -9223372036854775808
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2256 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = xor i64 %i.o, -1
  %i.u = and i64 %i.q, %i.s
  %i.v = and i64 %i.u, %i.t
  %.not16.i.i = icmp eq i64 %i.v, 0
  br i1 %.not16.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = or i64 %i.x, 2147483648
  store i64 %i.y, ptr %i.w, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.o, ptr %i.r, align 8
  br label %pmccntr_op_start.exit.i

pmccntr_op_start.exit.i:                          ; preds = %bb.d, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 3 uses
  store i64 %i.g, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %0, i64 79728     ; 2 uses
  %.val5.i = load i64, ptr %i.aa, align 8         ; 2 uses
  %i.ab = and i64 %.val5.i, 63488
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %pmu_op_start.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %pmccntr_op_start.exit.i, %.lr.ph.i
  %.06.i = phi i32 [ %i.ad, %.lr.ph.i ], [ 0, %pmccntr_op_start.exit.i ] ; 2 uses
  %i.ac = trunc nuw nsw i32 %.06.i to i8
  tail call fastcc void @pmevcntr_op_start(ptr noundef nonnull %0, i8 noundef zeroext %i.ac)
  %i.ad = add nuw nsw i32 %.06.i, 1               ; 2 uses
  %.val.i = load i64, ptr %i.aa, align 8          ; 2 uses
  %i.ae = trunc i64 %.val.i to i32
  %i.af = lshr i32 %i.ae, 11
  %i.ag = and i32 %i.af, 31
  %i.ah = icmp samesign ult i32 %i.ad, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %pmu_op_start.exit, !llvm.loop !0

pmu_op_start.exit:                                ; preds = %.lr.ph.i, %pmccntr_op_start.exit.i
  %.val = phi i64 [ %.val5.i, %pmccntr_op_start.exit.i ], [ %.val.i, %.lr.ph.i ] ; 2 uses
  %i.ai = lshr i64 %.val, 11
  %i.aj = and i64 %i.ai, 31
  %notmask.i = shl nsw i64 -1, %i.aj
  %i.ak = xor i64 %notmask.i, -1
  %i.al = or disjoint i64 %i.ak, 2147483648
  %i.am = and i64 %i.al, %2
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = or i64 %i.am, %i.ao
  store i64 %i.ap, ptr %i.an, align 8
  %i.aq = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext 31)
  br i1 %i.aq, label %bb.e, label %pmccntr_op_finish.exit.i

bb.e:                                             ; preds = %pmu_op_start.exit
  %i.ar = load i64, ptr %i.z, align 8             ; 2 uses
  %i.as = getelementptr i8, ptr %0, i64 1240
  %.val.i.i8 = load i64, ptr %i.as, align 8
  %i.at = and i64 %.val.i.i8, 72
  %i.au = icmp eq i64 %i.at, 8
  %i.av = lshr i64 %i.ar, 6
  %spec.select.i.i9 = select i1 %i.au, i64 %i.av, i64 %i.ar
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = sub i64 %spec.select.i.i9, %i.ax
  store i64 %i.ay, ptr %i.z, align 8
  br label %pmccntr_op_finish.exit.i

pmccntr_op_finish.exit.i:                         ; preds = %bb.e, %pmu_op_start.exit
  %i.az = trunc i64 %.val to i32
  %i.ba = lshr i32 %i.az, 11
  %i.bb = and i32 %i.ba, 31                       ; 2 uses
  %.not.i6 = icmp eq i32 %i.bb, 0
  br i1 %.not.i6, label %pmu_op_finish.exit, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %pmccntr_op_finish.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %wide.trip.count.i = zext nneg i32 %i.bb to i64
  br label %bb.f

bb.f:                                             ; preds = %pmevcntr_op_finish.exit.i, %.lr.ph.i7
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i7 ], [ %indvars.iv.next.i, %pmevcntr_op_finish.exit.i ] ; 4 uses
  %i.be = trunc i64 %indvars.iv.i to i8
  %i.bf = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext range(i8 0, 32) %i.be)
  br i1 %i.bf, label %bb.g, label %pmevcntr_op_finish.exit.i

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = sub i64 %i.bj, %i.bh
  store i64 %i.bk, ptr %i.bi, align 8
  br label %pmevcntr_op_finish.exit.i

pmevcntr_op_finish.exit.i:                        ; preds = %bb.g, %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %pmu_op_finish.exit, label %bb.f, !llvm.loop !1

pmu_op_finish.exit:                               ; preds = %pmevcntr_op_finish.exit.i, %pmccntr_op_finish.exit.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @pmcntenclr_write(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9 ; 2 uses
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %i.c = extractvalue { i32, i32 } %i.a, 1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw i64 %i.d, 32
  %i.f = zext i32 %i.b to i64
  %i.g = or disjoint i64 %i.e, %i.f               ; 3 uses
  %i.h = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef %0, i8 noundef zeroext 31)
  br i1 %i.h, label %bb.b, label %pmccntr_op_start.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 1240
  %.val.i.i = load i64, ptr %i.i, align 8         ; 2 uses
  %i.j = and i64 %.val.i.i, 72
  %i.k = icmp eq i64 %i.j, 8
  %i.l = lshr i64 %i.g, 6
  %spec.select.i.i = select i1 %i.k, i64 %i.l, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.n = load i64, ptr %i.m, align 8
  %i.o = sub i64 %spec.select.i.i, %i.n           ; 2 uses
  %i.p = and i64 %.val.i.i, 64
  %.not.i.i = icmp eq i64 %i.p, 0
  %i.q = select i1 %.not.i.i, i64 2147483648, i64 -9223372036854775808
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2256 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = xor i64 %i.o, -1
  %i.u = and i64 %i.q, %i.s
  %i.v = and i64 %i.u, %i.t
  %.not16.i.i = icmp eq i64 %i.v, 0
  br i1 %.not16.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = or i64 %i.x, 2147483648
  store i64 %i.y, ptr %i.w, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.o, ptr %i.r, align 8
  br label %pmccntr_op_start.exit.i

pmccntr_op_start.exit.i:                          ; preds = %bb.d, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 3 uses
  store i64 %i.g, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %0, i64 79728     ; 2 uses
  %.val5.i = load i64, ptr %i.aa, align 8         ; 2 uses
  %i.ab = and i64 %.val5.i, 63488
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %pmu_op_start.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %pmccntr_op_start.exit.i, %.lr.ph.i
  %.06.i = phi i32 [ %i.ad, %.lr.ph.i ], [ 0, %pmccntr_op_start.exit.i ] ; 2 uses
  %i.ac = trunc nuw nsw i32 %.06.i to i8
  tail call fastcc void @pmevcntr_op_start(ptr noundef nonnull %0, i8 noundef zeroext %i.ac)
  %i.ad = add nuw nsw i32 %.06.i, 1               ; 2 uses
  %.val.i = load i64, ptr %i.aa, align 8          ; 2 uses
  %i.ae = trunc i64 %.val.i to i32
  %i.af = lshr i32 %i.ae, 11
  %i.ag = and i32 %i.af, 31
  %i.ah = icmp samesign ult i32 %i.ad, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %pmu_op_start.exit, !llvm.loop !0

pmu_op_start.exit:                                ; preds = %.lr.ph.i, %pmccntr_op_start.exit.i
  %.val = phi i64 [ %.val5.i, %pmccntr_op_start.exit.i ], [ %.val.i, %.lr.ph.i ] ; 2 uses
  %i.ai = lshr i64 %.val, 11
  %i.aj = and i64 %i.ai, 31
  %notmask.i = shl nsw i64 -1, %i.aj
  %i.ak = xor i64 %notmask.i, -1
  %i.al = or disjoint i64 %i.ak, 2147483648
  %i.am = and i64 %i.al, %2
  %i.an = xor i64 %i.am, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = and i64 %i.ap, %i.an
  store i64 %i.aq, ptr %i.ao, align 8
  %i.ar = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext 31)
  br i1 %i.ar, label %bb.e, label %pmccntr_op_finish.exit.i

bb.e:                                             ; preds = %pmu_op_start.exit
  %i.as = load i64, ptr %i.z, align 8             ; 2 uses
  %i.at = getelementptr i8, ptr %0, i64 1240
  %.val.i.i8 = load i64, ptr %i.at, align 8
  %i.au = and i64 %.val.i.i8, 72
  %i.av = icmp eq i64 %i.au, 8
  %i.aw = lshr i64 %i.as, 6
  %spec.select.i.i9 = select i1 %i.av, i64 %i.aw, i64 %i.as
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = sub i64 %spec.select.i.i9, %i.ay
  store i64 %i.az, ptr %i.z, align 8
  br label %pmccntr_op_finish.exit.i

pmccntr_op_finish.exit.i:                         ; preds = %bb.e, %pmu_op_start.exit
  %i.ba = trunc i64 %.val to i32
  %i.bb = lshr i32 %i.ba, 11
  %i.bc = and i32 %i.bb, 31                       ; 2 uses
  %.not.i6 = icmp eq i32 %i.bc, 0
  br i1 %.not.i6, label %pmu_op_finish.exit, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %pmccntr_op_finish.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %wide.trip.count.i = zext nneg i32 %i.bc to i64
  br label %bb.f

bb.f:                                             ; preds = %pmevcntr_op_finish.exit.i, %.lr.ph.i7
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i7 ], [ %indvars.iv.next.i, %pmevcntr_op_finish.exit.i ] ; 4 uses
  %i.bf = trunc i64 %indvars.iv.i to i8
  %i.bg = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext range(i8 0, 32) %i.bf)
  br i1 %i.bg, label %bb.g, label %pmevcntr_op_finish.exit.i

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = sub i64 %i.bk, %i.bi
  store i64 %i.bl, ptr %i.bj, align 8
  br label %pmevcntr_op_finish.exit.i

pmevcntr_op_finish.exit.i:                        ; preds = %bb.g, %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %pmu_op_finish.exit, label %bb.f, !llvm.loop !1

pmu_op_finish.exit:                               ; preds = %pmevcntr_op_finish.exit.i, %pmccntr_op_finish.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @pmovsr_write(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 79728
  %.val = load i64, ptr %i.a, align 8
  %i.b = lshr i64 %.val, 11
  %i.c = and i64 %i.b, 31
  %notmask.i = shl nsw i64 -1, %i.c
  %i.d = xor i64 %notmask.i, -1
  %i.e = or disjoint i64 %i.d, 2147483648
  %i.f = and i64 %i.e, %2
  %i.g = xor i64 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, %i.g
  store i64 %i.j, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 8) i32 @pmreg_access_swinc(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i1 noundef zeroext %2) #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 78928
  %.val = load i64, ptr %i.a, align 16            ; 2 uses
  %i.b = and i64 %.val, 16777216
  %.not = icmp eq i64 %i.b, 0
  %.pre = and i64 %.val, 128                      ; 2 uses
  br i1 %.not, label %arm_current_el.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %.pre, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 3728
  %.val10.i = load i32, ptr %i.c, align 16
  %.not12.i = icmp eq i32 %.val10.i, 0
  br i1 %.not12.i, label %bb.d, label %arm_current_el.exit.thread.thread14

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3668
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3752
  %i.f = load i32, ptr %i.e, align 8
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 1
  %i.k = xor i32 %i.j, 1
  br label %arm_current_el.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 336
  %.val11.i = load i8, ptr %i.l, align 16, !range !11, !noundef !12
  %i.m = trunc nuw i8 %.val11.i to i1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.o = load i64, ptr %i.n, align 8
  %i.p = trunc i64 %i.o to i32
  %i.q = lshr i32 %i.p, 2
  %i.r = and i32 %i.q, 3
  br label %arm_current_el.exit

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.t = load i32, ptr %i.s, align 8
  %i.u = and i32 %i.t, 31
  %cond = icmp eq i32 %i.u, 16
  br i1 %cond, label %arm_current_el.exit.thread9, label %arm_current_el.exit.thread.thread

arm_current_el.exit:                              ; preds = %bb.d, %bb.f
  %.0.i = phi i32 [ %i.k, %bb.d ], [ %i.r, %bb.f ]
  %i.v = icmp eq i32 %.0.i, 0
  br i1 %i.v, label %arm_current_el.exit.thread9, label %arm_current_el.exit.thread

arm_current_el.exit.thread9:                      ; preds = %bb.g, %arm_current_el.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.x = load i64, ptr %i.w, align 16
  %i.y = and i64 %i.x, 2
  %i.z = icmp eq i64 %i.y, 0
  %or.cond = or i1 %2, %i.z
  br i1 %or.cond, label %arm_current_el.exit.thread, label %pmreg_access.exit

arm_current_el.exit.thread:                       ; preds = %bb.a, %arm_current_el.exit.thread9, %arm_current_el.exit
  %.not.i.i.i = icmp eq i64 %.pre, 0
  br i1 %.not.i.i.i, label %arm_current_el.exit.thread.thread, label %arm_current_el.exit.thread.thread14

arm_current_el.exit.thread.thread14:              ; preds = %bb.c, %arm_current_el.exit.thread
  %i.aa = getelementptr i8, ptr %0, i64 3728
  %.val10.i.i.i = load i32, ptr %i.aa, align 16
  %.not12.i.i.i = icmp eq i32 %.val10.i.i.i, 0
  br i1 %.not12.i.i.i, label %bb.h, label %.thread21.i.i

bb.h:                                             ; preds = %arm_current_el.exit.thread.thread14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3668
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3752
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, 1
  %i.ai = xor i32 %i.ah, 1
  br label %arm_current_el.exit.i.i

arm_current_el.exit.thread.thread:                ; preds = %bb.g, %arm_current_el.exit.thread
  %i.aj = getelementptr i8, ptr %0, i64 336
  %.val11.i.i.i = load i8, ptr %i.aj, align 16, !range !11, !noundef !12
  %i.ak = trunc nuw i8 %.val11.i.i.i to i1
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %arm_current_el.exit.thread.thread
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.am = load i64, ptr %i.al, align 8
  %i.an = trunc i64 %i.am to i32
  %i.ao = lshr i32 %i.an, 2
  %i.ap = and i32 %i.ao, 3
  br label %arm_current_el.exit.i.i

bb.j:                                             ; preds = %arm_current_el.exit.thread.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = and i32 %i.ar, 31
  switch i32 %i.as, label %.thread21.i.i [
    i32 16, label %arm_current_el.exit.thread15.i.i
    i32 22, label %arm_current_el.exit.thread.thread.thread25.i.i
  ]

arm_current_el.exit.i.i:                          ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i32 [ %i.ai, %bb.h ], [ %i.ap, %bb.i ] ; 2 uses
  %i.at = icmp eq i32 %.0.i.i.i, 0
  br i1 %i.at, label %arm_current_el.exit.thread15.i.i, label %arm_current_el.exit.thread.thread.i.i

arm_current_el.exit.thread15.i.i:                 ; preds = %arm_current_el.exit.i.i, %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.av = load i64, ptr %i.au, align 16
  %i.aw = and i64 %i.av, 1
  %.not.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i, label %pmreg_access.exit, label %.thread21.i.i

arm_current_el.exit.thread.thread.i.i:            ; preds = %arm_current_el.exit.i.i
  %i.ax = icmp samesign ult i32 %.0.i.i.i, 3
  br i1 %i.ax, label %.thread21.i.i, label %arm_current_el.exit.thread.thread.thread25.i.i

.thread21.i.i:                                    ; preds = %arm_current_el.exit.thread.thread.i.i, %arm_current_el.exit.thread15.i.i, %bb.j, %arm_current_el.exit.thread.thread14
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = and i64 %i.az, 64
  %.not12.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not12.i.i, label %arm_current_el.exit.thread.thread.thread25.i.i, label %pmreg_access.exit

arm_current_el.exit.thread.thread.thread25.i.i:   ; preds = %.thread21.i.i, %arm_current_el.exit.thread.thread.i.i, %bb.j
  br label %pmreg_access.exit

pmreg_access.exit:                                ; preds = %arm_current_el.exit.thread.thread.thread25.i.i, %.thread21.i.i, %arm_current_el.exit.thread15.i.i, %arm_current_el.exit.thread9
  %.0 = phi i32 [ 0, %arm_current_el.exit.thread9 ], [ 5, %arm_current_el.exit.thread15.i.i ], [ 0, %arm_current_el.exit.thread.thread.thread25.i.i ], [ 7, %.thread21.i.i ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @pmswinc_write(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 79728      ; 2 uses
  %.val34 = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val34, 63488
  %.not36 = icmp eq i64 %i.b, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.e = getelementptr i8, ptr %0, i64 79776
  %i.f = getelementptr i8, ptr %0, i64 79896
  %i.g = getelementptr i8, ptr %0, i64 78928
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2520
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %pmevcntr_op_finish.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %pmevcntr_op_finish.exit ] ; 7 uses
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  %i.m = shl nuw nsw i32 1, %i.l
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = and i64 %2, %i.n
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %pmevcntr_op_finish.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = trunc nuw nsw i64 %indvars.iv to i8      ; 3 uses
  %i.q = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext %i.p)
  br i1 %i.q, label %bb.d, label %pmevcntr_op_finish.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.s = load i64, ptr %i.r, align 8
  %i.t = and i64 %i.s, 65535
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.e, label %pmevcntr_op_finish.exit

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @pmevcntr_op_start(ptr noundef nonnull %0, i8 noundef zeroext %i.p)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.w = load i64, ptr %i.v, align 8              ; 3 uses
  %i.x = add i64 %i.w, 1                          ; 2 uses
  %.val.i.i = load i64, ptr %i.e, align 8
  %i.y = lshr i64 %.val.i.i, 8
  %i.z = and i64 %i.y, 15
  %.off.i.i = add nsw i64 %i.z, -6
  %switch.i.i = icmp ult i64 %.off.i.i, 9
  br i1 %switch.i.i, label %isar_feature_any_pmuv3p5.exit.thread.i, label %isar_feature_any_pmuv3p5.exit.i

isar_feature_any_pmuv3p5.exit.i:                  ; preds = %bb.e
  %.val2.i.i = load i64, ptr %i.f, align 8
  %i.aa = trunc i64 %.val2.i.i to i32
  %i.ab = lshr i32 %i.aa, 24
  %i.ac = and i32 %i.ab, 15
  %.off.i = add nsw i32 %i.ac, -6
  %switch.i = icmp ult i32 %.off.i, 9
  br i1 %switch.i, label %isar_feature_any_pmuv3p5.exit.thread.i, label %pmevcntr_is_64_bit.exit.thread

isar_feature_any_pmuv3p5.exit.thread.i:           ; preds = %isar_feature_any_pmuv3p5.exit.i, %bb.e
  %.val.i = load i64, ptr %i.g, align 16
  %i.ad = and i64 %.val.i, 268435456
  %.not14.i = icmp eq i64 %i.ad, 0
  br i1 %.not14.i, label %.split, label %bb.f

bb.f:                                             ; preds = %isar_feature_any_pmuv3p5.exit.thread.i
  %i.ae = load i64, ptr %i.h, align 16
  %.fr30 = freeze i64 %i.ae                       ; 2 uses
  %i.af = and i64 %.fr30, 31
  %.not15.not.i = icmp samesign ult i64 %indvars.iv, %i.af
  br i1 %.not15.not.i, label %.split, label %pmevcntr_is_64_bit.exit

.split:                                           ; preds = %bb.f, %isar_feature_any_pmuv3p5.exit.thread.i
  %i.ag = load i64, ptr %i.i, align 8
  %.fr32 = freeze i64 %i.ag
  %i.ah = and i64 %.fr32, 128
  %.not33 = icmp eq i64 %i.ah, 0
  br i1 %.not33, label %pmevcntr_is_64_bit.exit.thread, label %bb.g

pmevcntr_is_64_bit.exit:                          ; preds = %bb.f
  %i.ai = and i64 %.fr30, 67108864
  %.not31 = icmp eq i64 %i.ai, 0
  br i1 %.not31, label %pmevcntr_is_64_bit.exit.thread, label %bb.g

bb.g:                                             ; preds = %.split, %pmevcntr_is_64_bit.exit
  br label %pmevcntr_is_64_bit.exit.thread

pmevcntr_is_64_bit.exit.thread:                   ; preds = %isar_feature_any_pmuv3p5.exit.i, %.split, %pmevcntr_is_64_bit.exit, %bb.g
  %i.aj = phi i64 [ -9223372036854775808, %bb.g ], [ 2147483648, %pmevcntr_is_64_bit.exit ], [ 2147483648, %.split ], [ 2147483648, %isar_feature_any_pmuv3p5.exit.i ]
  %i.ak = sub i64 -2, %i.w
  %i.al = and i64 %i.ak, %i.aj
  %i.am = and i64 %i.al, %i.w
  %.not26 = icmp eq i64 %i.am, 0
  br i1 %.not26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %pmevcntr_is_64_bit.exit.thread
  %i.an = load i64, ptr %i.j, align 8
  %i.ao = or i64 %i.an, %i.n
  store i64 %i.ao, ptr %i.j, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %pmevcntr_is_64_bit.exit.thread
  store i64 %i.x, ptr %i.v, align 8
  %i.ap = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext range(i8 0, 32) %i.p)
  br i1 %i.ap, label %bb.j, label %pmevcntr_op_finish.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = sub i64 %i.ar, %i.x
  store i64 %i.as, ptr %i.aq, align 8
  br label %pmevcntr_op_finish.exit

pmevcntr_op_finish.exit:                          ; preds = %bb.j, %bb.i, %bb.b, %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i64, ptr %i.a, align 8
  %i.at = lshr i64 %.val, 11
  %i.au = and i64 %i.at, 31
  %i.av = icmp samesign ult i64 %indvars.iv.next, %i.au
  br i1 %i.av, label %bb.b, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %pmevcntr_op_finish.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 8) i32 @pmreg_access_selr(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i1 zeroext %2) #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 78928
  %.val = load i64, ptr %i.a, align 16            ; 2 uses
  %i.b = and i64 %.val, 16777216
  %.not = icmp eq i64 %i.b, 0
  %.pre = and i64 %.val, 128                      ; 2 uses
  br i1 %.not, label %arm_current_el.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %.pre, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 3728
  %.val10.i = load i32, ptr %i.c, align 16
  %.not12.i = icmp eq i32 %.val10.i, 0
  br i1 %.not12.i, label %bb.d, label %arm_current_el.exit.thread.thread13

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3668
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3752
  %i.f = load i32, ptr %i.e, align 8
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 1
  %i.k = xor i32 %i.j, 1
  br label %arm_current_el.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 336
  %.val11.i = load i8, ptr %i.l, align 16, !range !11, !noundef !12
  %i.m = trunc nuw i8 %.val11.i to i1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.o = load i64, ptr %i.n, align 8
  %i.p = trunc i64 %i.o to i32
  %i.q = lshr i32 %i.p, 2
  %i.r = and i32 %i.q, 3
  br label %arm_current_el.exit

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.t = load i32, ptr %i.s, align 8
  %i.u = and i32 %i.t, 31
  %cond = icmp eq i32 %i.u, 16
  br i1 %cond, label %arm_current_el.exit.thread8, label %arm_current_el.exit.thread.thread

arm_current_el.exit:                              ; preds = %bb.d, %bb.f
  %.0.i = phi i32 [ %i.k, %bb.d ], [ %i.r, %bb.f ]
  %i.v = icmp eq i32 %.0.i, 0
  br i1 %i.v, label %arm_current_el.exit.thread8, label %arm_current_el.exit.thread

arm_current_el.exit.thread8:                      ; preds = %bb.g, %arm_current_el.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.x = load i64, ptr %i.w, align 16
  %i.y = and i64 %i.x, 8
  %.not6 = icmp eq i64 %i.y, 0
  br i1 %.not6, label %arm_current_el.exit.thread, label %pmreg_access.exit

arm_current_el.exit.thread:                       ; preds = %bb.a, %arm_current_el.exit.thread8, %arm_current_el.exit
  %.not.i.i.i = icmp eq i64 %.pre, 0
  br i1 %.not.i.i.i, label %arm_current_el.exit.thread.thread, label %arm_current_el.exit.thread.thread13

arm_current_el.exit.thread.thread13:              ; preds = %bb.c, %arm_current_el.exit.thread
  %i.z = getelementptr i8, ptr %0, i64 3728
  %.val10.i.i.i = load i32, ptr %i.z, align 16
  %.not12.i.i.i = icmp eq i32 %.val10.i.i.i, 0
  br i1 %.not12.i.i.i, label %bb.h, label %.thread21.i.i

bb.h:                                             ; preds = %arm_current_el.exit.thread.thread13
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3668
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3752
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, 1
  %i.ah = xor i32 %i.ag, 1
  br label %arm_current_el.exit.i.i

arm_current_el.exit.thread.thread:                ; preds = %bb.g, %arm_current_el.exit.thread
  %i.ai = getelementptr i8, ptr %0, i64 336
  %.val11.i.i.i = load i8, ptr %i.ai, align 16, !range !11, !noundef !12
  %i.aj = trunc nuw i8 %.val11.i.i.i to i1
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %arm_current_el.exit.thread.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = trunc i64 %i.al to i32
  %i.an = lshr i32 %i.am, 2
  %i.ao = and i32 %i.an, 3
  br label %arm_current_el.exit.i.i

bb.j:                                             ; preds = %arm_current_el.exit.thread.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = and i32 %i.aq, 31
  switch i32 %i.ar, label %.thread21.i.i [
    i32 16, label %arm_current_el.exit.thread15.i.i
    i32 22, label %arm_current_el.exit.thread.thread.thread25.i.i
  ]

arm_current_el.exit.i.i:                          ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i32 [ %i.ah, %bb.h ], [ %i.ao, %bb.i ] ; 2 uses
  %i.as = icmp eq i32 %.0.i.i.i, 0
  br i1 %i.as, label %arm_current_el.exit.thread15.i.i, label %arm_current_el.exit.thread.thread.i.i

arm_current_el.exit.thread15.i.i:                 ; preds = %arm_current_el.exit.i.i, %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.au = load i64, ptr %i.at, align 16
  %i.av = and i64 %i.au, 1
  %.not.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i, label %pmreg_access.exit, label %.thread21.i.i

arm_current_el.exit.thread.thread.i.i:            ; preds = %arm_current_el.exit.i.i
  %i.aw = icmp samesign ult i32 %.0.i.i.i, 3
  br i1 %i.aw, label %.thread21.i.i, label %arm_current_el.exit.thread.thread.thread25.i.i

.thread21.i.i:                                    ; preds = %arm_current_el.exit.thread.thread.i.i, %arm_current_el.exit.thread15.i.i, %bb.j, %arm_current_el.exit.thread.thread13
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = and i64 %i.ay, 64
  %.not12.i.i = icmp eq i64 %i.az, 0
  br i1 %.not12.i.i, label %arm_current_el.exit.thread.thread.thread25.i.i, label %pmreg_access.exit

arm_current_el.exit.thread.thread.thread25.i.i:   ; preds = %.thread21.i.i, %arm_current_el.exit.thread.thread.i.i, %bb.j
  br label %pmreg_access.exit

pmreg_access.exit:                                ; preds = %arm_current_el.exit.thread.thread.thread25.i.i, %.thread21.i.i, %arm_current_el.exit.thread15.i.i, %arm_current_el.exit.thread8
  %.0 = phi i32 [ 0, %arm_current_el.exit.thread8 ], [ 5, %arm_current_el.exit.thread15.i.i ], [ 0, %arm_current_el.exit.thread.thread.thread25.i.i ], [ 7, %.thread21.i.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal void @pmselr_write(ptr nofree noundef writeonly captures(none) initializes((1272, 1280)) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #12 {
bb.a:
  %i.a = and i64 %2, 31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store i64 %i.a, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i64 0, 4160749569) i64 @pmccfiltr_read_a32(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3016
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4160749568
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @pmccfiltr_write_a32(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9 ; 2 uses
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %i.c = extractvalue { i32, i32 } %i.a, 1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw i64 %i.d, 32
  %i.f = zext i32 %i.b to i64
  %i.g = or disjoint i64 %i.e, %i.f               ; 5 uses
  %i.h = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef %0, i8 noundef zeroext 31)
  br i1 %i.h, label %bb.b, label %pmccntr_op_start.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 1240
  %.val.i = load i64, ptr %i.i, align 8           ; 2 uses
  %i.j = and i64 %.val.i, 72
  %i.k = icmp eq i64 %i.j, 8
  %i.l = lshr i64 %i.g, 6
  %spec.select.i = select i1 %i.k, i64 %i.l, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.n = load i64, ptr %i.m, align 8
  %i.o = sub i64 %spec.select.i, %i.n             ; 2 uses
  %i.p = and i64 %.val.i, 64
  %.not.i = icmp eq i64 %i.p, 0
  %i.q = select i1 %.not.i, i64 2147483648, i64 -9223372036854775808
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2256 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = xor i64 %i.o, -1
  %i.u = and i64 %i.q, %i.s
  %i.v = and i64 %i.u, %i.t
  %.not16.i = icmp eq i64 %i.v, 0
  br i1 %.not16.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = or i64 %i.x, 2147483648
  store i64 %i.y, ptr %i.w, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.o, ptr %i.r, align 8
  br label %pmccntr_op_start.exit

pmccntr_op_start.exit:                            ; preds = %bb.a, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 2 uses
  store i64 %i.g, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3016 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = and i64 %i.ab, 67108864
  %i.ad = and i64 %2, 4160749568
  %i.ae = or disjoint i64 %i.ac, %i.ad
  store i64 %i.ae, ptr %i.aa, align 8
  %i.af = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef %0, i8 noundef zeroext 31)
  br i1 %i.af, label %bb.e, label %pmccntr_op_finish.exit

bb.e:                                             ; preds = %pmccntr_op_start.exit
  %i.ag = getelementptr i8, ptr %0, i64 1240
  %.val.i4 = load i64, ptr %i.ag, align 8
  %i.ah = and i64 %.val.i4, 72
  %i.ai = icmp eq i64 %i.ah, 8
  %i.aj = lshr i64 %i.g, 6
  %spec.select.i5 = select i1 %i.ai, i64 %i.aj, i64 %i.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = sub i64 %spec.select.i5, %i.al
  store i64 %i.am, ptr %i.z, align 8
  br label %pmccntr_op_finish.exit

pmccntr_op_finish.exit:                           ; preds = %pmccntr_op_start.exit, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @pmccfiltr_write(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9 ; 2 uses
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %i.c = extractvalue { i32, i32 } %i.a, 1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw i64 %i.d, 32
  %i.f = zext i32 %i.b to i64
  %i.g = or disjoint i64 %i.e, %i.f               ; 5 uses
  %i.h = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef %0, i8 noundef zeroext 31)
  br i1 %i.h, label %bb.b, label %pmccntr_op_start.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 1240
  %.val.i = load i64, ptr %i.i, align 8           ; 2 uses
  %i.j = and i64 %.val.i, 72
  %i.k = icmp eq i64 %i.j, 8
  %i.l = lshr i64 %i.g, 6
  %spec.select.i = select i1 %i.k, i64 %i.l, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.n = load i64, ptr %i.m, align 8
  %i.o = sub i64 %spec.select.i, %i.n             ; 2 uses
  %i.p = and i64 %.val.i, 64
  %.not.i = icmp eq i64 %i.p, 0
  %i.q = select i1 %.not.i, i64 2147483648, i64 -9223372036854775808
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2256 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = xor i64 %i.o, -1
  %i.u = and i64 %i.q, %i.s
  %i.v = and i64 %i.u, %i.t
  %.not16.i = icmp eq i64 %i.v, 0
  br i1 %.not16.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = or i64 %i.x, 2147483648
  store i64 %i.y, ptr %i.w, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.o, ptr %i.r, align 8
  br label %pmccntr_op_start.exit

pmccntr_op_start.exit:                            ; preds = %bb.a, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 2 uses
  store i64 %i.g, ptr %i.z, align 8
  %i.aa = and i64 %2, 4227858432
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3016
  store i64 %i.aa, ptr %i.ab, align 8
  %i.ac = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef %0, i8 noundef zeroext 31)
  br i1 %i.ac, label %bb.e, label %pmccntr_op_finish.exit

bb.e:                                             ; preds = %pmccntr_op_start.exit
  %i.ad = getelementptr i8, ptr %0, i64 1240
  %.val.i3 = load i64, ptr %i.ad, align 8
  %i.ae = and i64 %.val.i3, 72
  %i.af = icmp eq i64 %i.ae, 8
  %i.ag = lshr i64 %i.g, 6
  %spec.select.i4 = select i1 %i.af, i64 %i.ag, i64 %i.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = sub i64 %spec.select.i4, %i.ai
  store i64 %i.aj, ptr %i.z, align 8
  br label %pmccntr_op_finish.exit

pmccntr_op_finish.exit:                           ; preds = %pmccntr_op_start.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal i64 @pmxevtyper_read(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = trunc i64 %i.b to i8
  %i.d = and i8 %i.c, 31                          ; 2 uses
  %i.e = icmp eq i8 %i.d, 31
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3016
  %i.g = load i64, ptr %i.f, align 8
  br label %pmevtyper_read.exit

bb.c:                                             ; preds = %bb.a
  %i.h = zext nneg i8 %i.d to i32
  %i.i = getelementptr i8, ptr %0, i64 79728
  %.val.i = load i64, ptr %i.i, align 8
  %i.j = trunc i64 %.val.i to i32
  %i.k = lshr i32 %i.j, 11
  %i.l = and i32 %i.k, 31
  %i.m = icmp samesign ugt i32 %i.l, %i.h
  br i1 %i.m, label %bb.d, label %pmevtyper_read.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.o = and i64 %i.b, 31
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8
  br label %pmevtyper_read.exit

pmevtyper_read.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i64 [ %i.g, %bb.b ], [ %i.q, %bb.d ], [ 0, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @pmxevtyper_write(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i8
  %i.d = and i8 %i.c, 31
  tail call fastcc void @pmevtyper_write(ptr noundef %0, i64 noundef %2, i8 noundef zeroext %i.d)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @pmxevcntr_read(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = trunc i64 %i.b to i8
  %i.d = and i8 %i.c, 31                          ; 3 uses
  %i.e = zext nneg i8 %i.d to i32
  %i.f = getelementptr i8, ptr %0, i64 79728
  %.val.i = load i64, ptr %i.f, align 8
  %i.g = trunc i64 %.val.i to i32
  %i.h = lshr i32 %i.g, 11
  %i.i = and i32 %i.h, 31
  %i.j = icmp samesign ugt i32 %i.i, %i.e
  br i1 %i.j, label %bb.b, label %pmevcntr_read.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @pmevcntr_op_start(ptr noundef nonnull %0, i8 noundef zeroext range(i8 0, 32) %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.l = and i64 %i.b, 31                         ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8              ; 3 uses
  %i.o = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext range(i8 0, 32) %i.d)
  br i1 %i.o, label %bb.c, label %pmevcntr_op_finish.exit.i

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = sub i64 %i.r, %i.n
  store i64 %i.s, ptr %i.q, align 8
  br label %pmevcntr_op_finish.exit.i

pmevcntr_op_finish.exit.i:                        ; preds = %bb.c, %bb.b
  %i.t = getelementptr i8, ptr %0, i64 79776
  %.val.i.i = load i64, ptr %i.t, align 8
  %i.u = lshr i64 %.val.i.i, 8
  %i.v = and i64 %i.u, 15
  %.off.i.i = add nsw i64 %i.v, -6
  %switch.i.i = icmp ult i64 %.off.i.i, 9
  br i1 %switch.i.i, label %isar_feature_any_pmuv3p5.exit.thread.i, label %isar_feature_any_pmuv3p5.exit.i

isar_feature_any_pmuv3p5.exit.i:                  ; preds = %pmevcntr_op_finish.exit.i
  %i.w = getelementptr i8, ptr %0, i64 79896
  %.val2.i.i = load i64, ptr %i.w, align 8
  %i.x = trunc i64 %.val2.i.i to i32
  %i.y = lshr i32 %i.x, 24
  %i.z = and i32 %i.y, 15                         ; 2 uses
  %i.aa = icmp samesign ugt i32 %i.z, 5
  %i.ab = icmp ne i32 %i.z, 15
  %spec.select.i3.i.i = and i1 %i.aa, %i.ab
  %i.ac = and i64 %i.n, 4294967295
  %cond.fr.i = freeze i1 %spec.select.i3.i.i
  br i1 %cond.fr.i, label %isar_feature_any_pmuv3p5.exit.thread.i, label %pmevcntr_read.exit

isar_feature_any_pmuv3p5.exit.thread.i:           ; preds = %isar_feature_any_pmuv3p5.exit.i, %pmevcntr_op_finish.exit.i
  br label %pmevcntr_read.exit

pmevcntr_read.exit:                               ; preds = %bb.a, %isar_feature_any_pmuv3p5.exit.i, %isar_feature_any_pmuv3p5.exit.thread.i
  %.0.i = phi i64 [ 0, %bb.a ], [ %i.n, %isar_feature_any_pmuv3p5.exit.thread.i ], [ %i.ac, %isar_feature_any_pmuv3p5.exit.i ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @pmxevcntr_write(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = trunc i64 %i.b to i8
  %i.d = and i8 %i.c, 31                          ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 79776
  %.val.i.i = load i64, ptr %i.e, align 8
  %i.f = lshr i64 %.val.i.i, 8
  %i.g = and i64 %i.f, 15
  %.off.i.i = add nsw i64 %i.g, -6
  %switch.i.i = icmp ult i64 %.off.i.i, 9
  br i1 %switch.i.i, label %isar_feature_any_pmuv3p5.exit.thread.i, label %isar_feature_any_pmuv3p5.exit.i

isar_feature_any_pmuv3p5.exit.i:                  ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 79896
  %.val2.i.i = load i64, ptr %i.h, align 8
  %i.i = trunc i64 %.val2.i.i to i32
  %i.j = lshr i32 %i.i, 24
  %i.k = and i32 %i.j, 15                         ; 2 uses
  %i.l = icmp samesign ugt i32 %i.k, 5
  %i.m = icmp ne i32 %i.k, 15
  %spec.select.i3.i.i = and i1 %i.l, %i.m
  %i.n = and i64 %2, 4294967295
  %cond.fr.i = freeze i1 %spec.select.i3.i.i
  br i1 %cond.fr.i, label %isar_feature_any_pmuv3p5.exit.thread.i, label %bb.b

isar_feature_any_pmuv3p5.exit.thread.i:           ; preds = %isar_feature_any_pmuv3p5.exit.i, %bb.a
  br label %bb.b

bb.b:                                             ; preds = %isar_feature_any_pmuv3p5.exit.thread.i, %isar_feature_any_pmuv3p5.exit.i
  %i.o = phi i64 [ %2, %isar_feature_any_pmuv3p5.exit.thread.i ], [ %i.n, %isar_feature_any_pmuv3p5.exit.i ] ; 2 uses
  %i.p = zext nneg i8 %i.d to i32
  %i.q = getelementptr i8, ptr %0, i64 79728
  %.val.i = load i64, ptr %i.q, align 8
  %i.r = trunc i64 %.val.i to i32
  %i.s = lshr i32 %i.r, 11
  %i.t = and i32 %i.s, 31
  %i.u = icmp samesign ugt i32 %i.t, %i.p
  br i1 %i.u, label %bb.c, label %pmevcntr_write.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @pmevcntr_op_start(ptr noundef nonnull %0, i8 noundef zeroext range(i8 0, 32) %i.d)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.w = and i64 %i.b, 31                         ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  store i64 %i.o, ptr %i.x, align 8
  %i.y = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext range(i8 0, 32) %i.d)
  br i1 %i.y, label %bb.d, label %pmevcntr_write.exit

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.w ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = sub i64 %i.ab, %i.o
  store i64 %i.ac, ptr %i.aa, align 8
  br label %pmevcntr_write.exit

pmevcntr_write.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 8) i32 @access_tpm(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i1 zeroext %2) #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 78928
  %.val.i = load i64, ptr %i.a, align 16
  %i.b = and i64 %.val.i, 128
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %arm_current_el.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 336
  %.val11.i = load i8, ptr %i.c, align 16, !range !11, !noundef !12
  %i.d = trunc nuw i8 %.val11.i to i1
  br i1 %i.d, label %arm_current_el.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 31
  %cond = icmp eq i32 %i.g, 22
  br i1 %cond, label %arm_current_el.exit.thread7, label %arm_current_el.exit.thread

arm_current_el.exit:                              ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 12
  %.not9 = icmp eq i64 %i.j, 12
  br i1 %.not9, label %arm_current_el.exit.thread7, label %arm_current_el.exit.thread

arm_current_el.exit.thread:                       ; preds = %bb.a, %bb.c, %arm_current_el.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %i.l, 64
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %arm_current_el.exit.thread7, label %bb.d

arm_current_el.exit.thread7:                      ; preds = %bb.c, %arm_current_el.exit.thread, %arm_current_el.exit
  br label %bb.d

bb.d:                                             ; preds = %arm_current_el.exit.thread, %arm_current_el.exit.thread7
  %.0 = phi i32 [ 0, %arm_current_el.exit.thread7 ], [ 7, %arm_current_el.exit.thread ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @pmuserenr_write(ptr nofree noundef captures(none) initializes((1264, 1272)) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 78928
  %.val = load i64, ptr %i.a, align 16
  %i.b = and i64 %.val, 16777216
  %.not = icmp eq i64 %i.b, 0
  %. = select i1 %.not, i64 1, i64 15
  %i.c = and i64 %2, %.
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1264
  store i64 %i.c, ptr %i.d, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @pmintenset_write(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 79728
  %.val = load i64, ptr %i.a, align 8
  %i.b = lshr i64 %.val, 11
  %i.c = and i64 %i.b, 31
  %notmask.i = shl nsw i64 -1, %i.c
  %i.d = xor i64 %notmask.i, -1
  %i.e = or disjoint i64 %i.d, 2147483648
  %i.f = and i64 %i.e, %2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = or i64 %i.f, %i.h
  store i64 %i.i, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @pmintenclr_write(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 79728
  %.val = load i64, ptr %i.a, align 8
  %i.b = lshr i64 %.val, 11
  %i.c = and i64 %i.b, 31
  %notmask.i = shl nsw i64 -1, %i.c
  %i.d = xor i64 %notmask.i, -1
  %i.e = or disjoint i64 %i.d, 2147483648
  %i.f = and i64 %i.e, %2
  %i.g = xor i64 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, %i.g
  store i64 %i.j, ptr %i.h, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pmevtyper_write(ptr nofree noundef captures(none) %0, i64 noundef %1, i8 noundef zeroext range(i8 0, 32) %2) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i8 %2, 31
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9 ; 2 uses
  %i.c = extractvalue { i32, i32 } %i.b, 0
  %i.d = extractvalue { i32, i32 } %i.b, 1
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw i64 %i.e, 32
  %i.g = zext i32 %i.c to i64
  %i.h = or disjoint i64 %i.f, %i.g               ; 5 uses
  %i.i = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef %0, i8 noundef zeroext 31)
  br i1 %i.i, label %bb.c, label %pmccntr_op_start.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 1240
  %.val.i.i = load i64, ptr %i.j, align 8         ; 2 uses
  %i.k = and i64 %.val.i.i, 72
  %i.l = icmp eq i64 %i.k, 8
  %i.m = lshr i64 %i.h, 6
  %spec.select.i.i = select i1 %i.l, i64 %i.m, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.o = load i64, ptr %i.n, align 8
  %i.p = sub i64 %spec.select.i.i, %i.o           ; 2 uses
  %i.q = and i64 %.val.i.i, 64
  %.not.i.i = icmp eq i64 %i.q, 0
  %i.r = select i1 %.not.i.i, i64 2147483648, i64 -9223372036854775808
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2256 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = xor i64 %i.p, -1
  %i.v = and i64 %i.r, %i.t
  %i.w = and i64 %i.v, %i.u
  %.not16.i.i = icmp eq i64 %i.w, 0
  br i1 %.not16.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = or i64 %i.y, 2147483648
  store i64 %i.z, ptr %i.x, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i64 %i.p, ptr %i.s, align 8
  br label %pmccntr_op_start.exit.i

pmccntr_op_start.exit.i:                          ; preds = %bb.e, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 2 uses
  store i64 %i.h, ptr %i.aa, align 8
  %i.ab = and i64 %1, 4227858432
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3016
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef %0, i8 noundef zeroext 31)
  br i1 %i.ad, label %bb.f, label %pmccfiltr_write.exit

bb.f:                                             ; preds = %pmccntr_op_start.exit.i
  %i.ae = getelementptr i8, ptr %0, i64 1240
  %.val.i3.i = load i64, ptr %i.ae, align 8
  %i.af = and i64 %.val.i3.i, 72
  %i.ag = icmp eq i64 %i.af, 8
  %i.ah = lshr i64 %i.h, 6
  %spec.select.i4.i = select i1 %i.ag, i64 %i.ah, i64 %i.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = sub i64 %spec.select.i4.i, %i.aj
  store i64 %i.ak, ptr %i.aa, align 8
  br label %pmccfiltr_write.exit

bb.g:                                             ; preds = %bb.a
  %i.al = zext nneg i8 %2 to i32
  %i.am = getelementptr i8, ptr %0, i64 79728
  %.val = load i64, ptr %i.am, align 8
  %i.an = trunc i64 %.val to i32
  %i.ao = lshr i32 %i.an, 11
  %i.ap = and i32 %i.ao, 31
  %i.aq = icmp samesign ugt i32 %i.ap, %i.al
  br i1 %i.aq, label %bb.h, label %pmccfiltr_write.exit

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @pmevcntr_op_start(ptr noundef nonnull %0, i8 noundef zeroext %2)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.as = zext nneg i8 %2 to i64                  ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as ; 2 uses
  %i.au = load i64, ptr %i.at, align 8
  %i.av = xor i64 %i.au, %1
  %i.aw = and i64 %i.av, 65535
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = trunc i64 %1 to i16
  %i.ay = icmp ugt i16 %i.ax, 60
  br i1 %i.ay, label %event_supported.exit.thread, label %event_supported.exit

event_supported.exit:                             ; preds = %bb.i
  %i.az = and i64 %1, 63
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr @supported_event_map, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2
  switch i16 %i.bb, label %default.switch.case.unreachable [
    i16 -1, label %event_supported.exit.thread
    i16 0, label %call.0
    i16 1, label %call.1
    i16 2, label %call.2
    i16 3, label %bb.j
  ]

default.switch.case.unreachable:                  ; preds = %event_supported.exit
  unreachable

call.0:                                           ; preds = %event_supported.exit
  %3 = tail call fastcc i64 @swinc_get_count(ptr nonnull poison) #13
  br label %event_supported.exit.thread

call.1:                                           ; preds = %event_supported.exit
  %4 = tail call fastcc i64 @zero_event_get_count(ptr nonnull poison) #13
  br label %event_supported.exit.thread

call.2:                                           ; preds = %event_supported.exit
  %5 = tail call fastcc i64 @zero_event_get_count(ptr nonnull poison) #13
  br label %event_supported.exit.thread

bb.j:                                             ; preds = %event_supported.exit
  %6 = tail call fastcc i64 @zero_event_get_count(ptr nonnull poison) #13
  br label %event_supported.exit.thread

event_supported.exit.thread:                      ; preds = %event_supported.exit, %call.0, %call.1, %call.2, %bb.j, %bb.i
  %.0 = phi i64 [ 0, %bb.i ], [ 0, %event_supported.exit ], [ %3, %call.0 ], [ %4, %call.1 ], [ %5, %call.2 ], [ %6, %bb.j ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.as
  store i64 %.0, ptr %i.bd, align 8
  br label %bb.k

bb.k:                                             ; preds = %event_supported.exit.thread, %bb.h
  %i.be = and i64 %1, 4261478399
  store i64 %i.be, ptr %i.at, align 8
  %i.bf = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext range(i8 0, 32) %2)
  br i1 %i.bf, label %bb.l, label %pmccfiltr_write.exit

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.as
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.as ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = sub i64 %i.bl, %i.bi
  store i64 %i.bm, ptr %i.bk, align 8
  br label %pmccfiltr_write.exit

pmccfiltr_write.exit:                             ; preds = %bb.l, %bb.k, %bb.f, %pmccntr_op_start.exit.i, %bb.g
  ret void
}

declare void @g_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @pmovsset_write(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 79728
  %.val = load i64, ptr %i.a, align 8
  %i.b = lshr i64 %.val, 11
  %i.c = and i64 %i.b, 31
  %notmask.i = shl nsw i64 -1, %i.c
  %i.d = xor i64 %notmask.i, -1
  %i.e = or disjoint i64 %i.d, 2147483648
  %i.f = and i64 %i.e, %2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = or i64 %i.f, %i.h
  store i64 %i.i, ptr %i.g, align 8
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{!0, !10}
!1 = distinct !{!1, !10}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!9 = !{i64 2710016}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = distinct !{!13, !10}
!14 = !{!"auto-init"}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
end_hunk_0
