Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/gicv5-cpuif?download=true
inline.NumInlined: 99
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ARMCPRegInfo = type { ptr, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [21 x i8] c"ppi >= 0 && ppi < 64\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"../target/arm/tcg/gicv5-cpuif.c\00", align 1
@__PRETTY_FUNCTION__.gicv5_update_ppi_state = private unnamed_addr constant [55 x i8] c"void gicv5_update_ppi_state(CPUARMState *, int, _Bool)\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"ICC_PPI_PRIORITYR%d_EL1\00", align 1
@__func__.gicv5_logical_domain = private unnamed_addr constant [21 x i8] c"gicv5_logical_domain\00", align 1
@trace_events_enabled_count = external local_unnamed_addr global i32, align 4
@_TRACE_GICV5_UPDATE_IRQ_FIQ_DSTATE = external local_unnamed_addr global i16, align 2
@.str.9 = private unnamed_addr constant [47 x i8] c"gicv5_update_irq_fiq now IRQ %d FIQ %d NMI %d\0A\00", align 1
@qemu_loglevel = external local_unnamed_addr global i32, align 4
@_TRACE_GICV5_UPDATE_PPI_STATE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.11 = private unnamed_addr constant [51 x i8] c"gicv5_update_ppi_state PPI %d source level now %d\0A\00", align 1
@_TRACE_GICV5_RECALC_PPI_HPPI_DSTATE = external local_unnamed_addr global i16, align 2
@.str.12 = private unnamed_addr constant [62 x i8] c"gicv5_recalc_ppi_hppi domain %d new PPI HPPI id 0x%x prio %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"GSB_SYS\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"GSB_ACK\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"GIC_CDDIS\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"GIC_CDEN\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"GIC_CDPRI\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"GIC_CDAFF\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"GIC_CDPEND\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"GIC_CDRCFG\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"GIC_CDEOI\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"GIC_CDDI\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"GIC_CDHM\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"GICR_CDIA\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"GICR_CDNMIA\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"ICC_IDR0_EL1\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"ICC_ICSR_EL1\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"ICC_IAFFIDR_EL1\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"ICC_PPI_CACTIVER0_EL1\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"ICC_PPI_CACTIVER1_EL1\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"ICC_PPI_SACTIVER0_EL1\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"ICC_PPI_SACTIVER1_EL1\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"ICC_PPI_HMR0_EL1\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"ICC_PPI_HMR1_EL1\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"ICC_HPPIR_EL1\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"ICC_PPI_ENABLER0_EL1\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"ICC_PPI_ENABLER1_EL1\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"ICC_PPI_CPENDR0_EL1\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"ICC_PPI_CPENDR1_EL1\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"ICC_PPI_SPENDR0_EL1\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"ICC_APR_EL1\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"ICC_CR0_EL1\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"ICC_PCR_EL1\00", align 1
@gicv5_cpuif_reginfo = internal constant [32 x { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr }] [{ ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.13, i8 0, i8 12, i8 0, i8 1, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 84, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.14, i8 0, i8 12, i8 0, i8 1, i8 0, i8 1, [2 x i8] zeroinitializer, i32 1, i32 1, i32 84, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.15, i8 0, i8 12, i8 1, i8 1, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 84, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr null, ptr null, ptr @gic_cddis_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.16, i8 0, i8 12, i8 1, i8 1, i8 0, i8 1, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 84, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr null, ptr null, ptr @gic_cden_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.17, i8 0, i8 12, i8 1, i8 1, i8 0, i8 2, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 84, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr null, ptr null, ptr @gic_cdpri_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.18, i8 0, i8 12, i8 1, i8 1, i8 0, i8 3, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 84, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr null, ptr null, ptr @gic_cdaff_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.19, i8 0, i8 12, i8 1, i8 1, i8 0, i8 4, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 84, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr null, ptr null, ptr @gic_cdpend_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.20, i8 0, i8 12, i8 1, i8 1, i8 0, i8 5, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 84, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr null, ptr null, ptr @gic_cdrcfg_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.21, i8 0, i8 12, i8 1, i8 1, i8 0, i8 7, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 84, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr null, ptr null, ptr @gic_cdeoi_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.22, i8 0, i8 12, i8 2, i8 1, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 84, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr null, ptr null, ptr @gic_cddi_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.23, i8 0, i8 12, i8 2, i8 1, i8 0, i8 1, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 84, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr null, ptr null, ptr @gic_cdhm_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.24, i8 0, i8 12, i8 3, i8 1, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 168, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr null, ptr @gicr_cdia_read, ptr null, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.25, i8 0, i8 12, i8 3, i8 1, i8 0, i8 1, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 168, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr null, ptr @gicr_cdia_read, ptr null, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.26, i8 0, i8 12, i8 10, i8 3, i8 0, i8 2, [2 x i8] zeroinitializer, i32 1, i32 1040, i32 168, i32 0, i32 0, i32 0, i32 0, i32 0, i64 65, i64 0, [2 x i64] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.27, i8 0, i8 12, i8 10, i8 3, i8 0, i8 4, [2 x i8] zeroinitializer, i32 1, i32 1024, i32 252, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 3312, [2 x i64] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.28, i8 0, i8 12, i8 10, i8 3, i8 0, i8 5, [2 x i8] zeroinitializer, i32 1, i32 1024, i32 168, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 79096, [2 x i64] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @arm_cp_reset_ignore }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.29, i8 0, i8 12, i8 13, i8 3, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1792, i32 252, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 3416, [2 x i64] zeroinitializer, ptr null, ptr null, ptr @gic_ppi_cactive_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.30, i8 0, i8 12, i8 13, i8 3, i8 0, i8 1, [2 x i8] zeroinitializer, i32 1, i32 1792, i32 252, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 3424, [2 x i64] zeroinitializer, ptr null, ptr null, ptr @gic_ppi_cactive_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.31, i8 0, i8 12, i8 13, i8 3, i8 0, i8 2, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 252, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 3416, [2 x i64] zeroinitializer, ptr null, ptr null, ptr @gic_ppi_sactive_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.32, i8 0, i8 12, i8 13, i8 3, i8 0, i8 3, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 252, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 3424, [2 x i64] zeroinitializer, ptr null, ptr null, ptr @gic_ppi_sactive_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.33, i8 0, i8 12, i8 10, i8 3, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 168, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -9, i64 3432, [2 x i64] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.34, i8 0, i8 12, i8 10, i8 3, i8 0, i8 1, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 168, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1, i64 3440, [2 x i64] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.35, i8 0, i8 12, i8 10, i8 3, i8 0, i8 3, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 168, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr null, ptr @gic_icc_hppir_el1_read, ptr null, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.36, i8 0, i8 12, i8 10, i8 3, i8 0, i8 6, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 252, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 3464, [2 x i64] zeroinitializer, ptr null, ptr null, ptr @gic_ppi_enable_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.37, i8 0, i8 12, i8 10, i8 3, i8 0, i8 7, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 252, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 3472, [2 x i64] zeroinitializer, ptr null, ptr null, ptr @gic_ppi_enable_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.38, i8 0, i8 12, i8 13, i8 3, i8 0, i8 4, [2 x i8] zeroinitializer, i32 1, i32 1792, i32 252, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 3448, [2 x i64] zeroinitializer, ptr null, ptr null, ptr @gic_ppi_cpend_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.39, i8 0, i8 12, i8 13, i8 3, i8 0, i8 5, [2 x i8] zeroinitializer, i32 1, i32 1792, i32 252, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 3456, [2 x i64] zeroinitializer, ptr null, ptr null, ptr @gic_ppi_cpend_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.40, i8 0, i8 12, i8 13, i8 3, i8 0, i8 6, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 252, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 3448, [2 x i64] zeroinitializer, ptr null, ptr null, ptr @gic_ppi_spend_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.40, i8 0, i8 12, i8 13, i8 3, i8 0, i8 7, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 252, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 3456, [2 x i64] zeroinitializer, ptr null, ptr null, ptr @gic_ppi_spend_write, ptr null, ptr null, ptr null }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.41, i8 0, i8 12, i8 0, i8 3, i8 1, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 252, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr null, ptr @gic_icc_apr_el1_read, ptr @gic_icc_apr_el1_write, ptr null, ptr null, ptr @gic_icc_apr_el1_reset }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.42, i8 0, i8 12, i8 0, i8 3, i8 1, i8 1, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 252, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr null, ptr @gic_icc_cr0_el1_read, ptr @gic_icc_cr0_el1_write, ptr null, ptr null, ptr @gic_icc_cr0_el1_reset }, { ptr, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.43, i8 0, i8 12, i8 0, i8 3, i8 1, i8 2, [2 x i8] zeroinitializer, i32 1, i32 1536, i32 252, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, [2 x i64] zeroinitializer, ptr null, ptr @gic_icc_pcr_el1_read, ptr @gic_icc_pcr_el1_write, ptr null, ptr null, ptr @gic_icc_pcr_el1_reset }], align 16
@_TRACE_GICV5_CDEOI_DSTATE = external local_unnamed_addr global i16, align 2
@.str.45 = private unnamed_addr constant [54 x i8] c"gicv5_cdeoi domain %d CDEOI performing priority drop\0A\00", align 1
@_TRACE_GICV5_CDDI_DSTATE = external local_unnamed_addr global i16, align 2
@.str.46 = private unnamed_addr constant [58 x i8] c"gicv5_cddi domain %d CDDI deactivating interrupt ID 0x%x\0A\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"no available interrupt to acknowledge\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"CDNMIA but HPPI is not NMI\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"CDIA but HPPI is NMI\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"id < GICV5_NUM_PPIS\00", align 1
@__PRETTY_FUNCTION__.gicr_cdia_read = private unnamed_addr constant [61 x i8] c"uint64_t gicr_cdia_read(CPUARMState *, const ARMCPRegInfo *)\00", align 1
@__func__.gicr_cdia_read = private unnamed_addr constant [15 x i8] c"gicr_cdia_read\00", align 1
@_TRACE_GICV5_GICR_CDIA_FAIL_DSTATE = external local_unnamed_addr global i16, align 2
@.str.51 = private unnamed_addr constant [56 x i8] c"gicv5_gicr_cdia_fail domain %d CDIA attempt failed: %s\0A\00", align 1
@_TRACE_GICV5_GICR_CDIA_DSTATE = external local_unnamed_addr global i16, align 2
@.str.52 = private unnamed_addr constant [62 x i8] c"gicv5_gicr_cdia domain %d CDIA acknowledge of interrupt 0x%x\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gicv5_forward_interrupt(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16496
  tail call fastcc void @gicv5_update_irq_fiq(ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gicv5_update_irq_fiq(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 78928      ; 2 uses
  %.val.i.i = load i64, ptr %i.a, align 16
  %i.b = and i64 %.val.i.i, 128
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %arm_current_el.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 336
  %.val11.i.i = load i8, ptr %i.c, align 16, !range !7, !noundef !8
  %i.d = trunc nuw i8 %.val11.i.i to i1
  br i1 %i.d, label %arm_current_el.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 31
  switch i32 %i.g, label %bb.d [
    i32 16, label %arm_current_el.exit.thread.i
    i32 26, label %arm_current_el.exit.thread.i
    i32 22, label %gicv5_current_phys_domain.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @arm_security_space(ptr noundef nonnull %0) #8
  %i.i = and i32 %i.h, -3
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %arm_current_el.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %.val12.i.i = load i64, ptr %i.a, align 16
  %i.k = and i64 %.val12.i.i, 33554432
  %.not14.i.i = icmp eq i64 %i.k, 0
  br i1 %.not14.i.i, label %gicv5_current_phys_domain.exit, label %arm_current_el.exit.thread.i

arm_current_el.exit.i:                            ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.m = load i64, ptr %i.l, align 8
  %i.n = and i64 %i.m, 12
  %i.o = icmp eq i64 %i.n, 12
  br i1 %i.o, label %gicv5_current_phys_domain.exit, label %arm_current_el.exit.thread.i

arm_current_el.exit.thread.i:                     ; preds = %arm_current_el.exit.i, %bb.e, %bb.d, %bb.c, %bb.c, %bb.a
  %i.p = tail call i32 @arm_security_space_below_el3(ptr noundef nonnull %0) #8 ; 4 uses
  switch i32 %i.p, label %bb.f [
    i32 0, label %gicv5_current_phys_domain.exit
    i32 1, label %gicv5_current_phys_domain.exit
    i32 3, label %gicv5_current_phys_domain.exit
  ]

bb.f:                                             ; preds = %arm_current_el.exit.thread.i
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 107, ptr noundef nonnull @__func__.gicv5_logical_domain, ptr noundef null) #9
  unreachable

gicv5_current_phys_domain.exit:                   ; preds = %bb.c, %bb.e, %arm_current_el.exit.i, %arm_current_el.exit.thread.i, %arm_current_el.exit.thread.i, %arm_current_el.exit.thread.i
  %.0.i = phi i32 [ %i.p, %arm_current_el.exit.thread.i ], [ 2, %arm_current_el.exit.i ], [ %i.p, %arm_current_el.exit.thread.i ], [ %i.p, %arm_current_el.exit.thread.i ], [ 2, %bb.e ], [ 2, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %i.r = zext nneg i32 %.0.i to i64               ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = and i64 %i.t, 1
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %gic_hppi.exit, label %bb.g

bb.g:                                             ; preds = %gicv5_current_phys_domain.exit
  %i.v = getelementptr i8, ptr %0, i64 79088
  %.val.i = load ptr, ptr %i.v, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 79096
  %i.x = load i64, ptr %i.w, align 8
  %i.y = trunc i64 %i.x to i32
  %i.z = tail call i64 @gicv5_get_hppi(ptr noundef %.val.i, i32 noundef range(i32 0, 4) %.0.i, i32 noundef %i.y) #8
  %.sroa.5.0.extract.shift.i = lshr i64 %i.z, 32  ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.r
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 3612
  %i.ac = load i8, ptr %i.ab, align 4             ; 2 uses
  %1 = zext i8 %i.ac to i32
  %2 = trunc nuw i64 %.sroa.5.0.extract.shift.i to i32
  %3 = and i32 %2, 255
  %.not28.i = icmp samesign ult i32 %3, %1
  %.sroa.5.0.extract.trunc.i = trunc i64 %.sroa.5.0.extract.shift.i to i8
  %.sroa.6.0.i = select i1 %.not28.i, i8 %.sroa.5.0.extract.trunc.i, i8 %i.ac ; 3 uses
  %4 = icmp eq i8 %.sroa.6.0.i, -1
  br i1 %4, label %gic_hppi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = zext i8 %.sroa.6.0.i to i64             ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3384
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.r
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = icmp ult i64 %i.ag, %i.ad
  br i1 %i.ah, label %gic_hppi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3320
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.r
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ak, i1 false) ; 2 uses
  %i.am = icmp samesign ult i64 %i.al, 32
  %i.an = select i1 %i.am, i64 %i.al, i64 255
  %.not29.i = icmp samesign ugt i64 %i.an, %i.ad
  %i.ao = zext i8 %.sroa.6.0.i to i32
  %spec.select = select i1 %.not29.i, i32 %i.ao, i32 255
  br label %gic_hppi.exit

gic_hppi.exit:                                    ; preds = %bb.i, %gicv5_current_phys_domain.exit, %bb.g, %bb.h
  %.sroa.7.0.i = phi i32 [ 255, %gicv5_current_phys_domain.exit ], [ 255, %bb.g ], [ %spec.select, %bb.i ], [ 255, %bb.h ] ; 2 uses
  %i.ap = icmp eq i32 %.sroa.7.0.i, 0             ; 3 uses
  %i.aq = icmp ne i32 %.sroa.7.0.i, 255
  %i.ar = xor i1 %i.ap, %i.aq                     ; 2 uses
  %i.as = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i14 = icmp eq i32 %i.as, 0
  br i1 %.not.i14, label %trace_gicv5_update_irq_fiq.exit, label %bb.j, !prof !9

bb.j:                                             ; preds = %gic_hppi.exit
  %i.at = load i16, ptr @_TRACE_GICV5_UPDATE_IRQ_FIQ_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.at, 0
  br i1 %.not3.i, label %trace_gicv5_update_irq_fiq.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = load i32, ptr @qemu_loglevel, align 4
  %i.av = and i32 %i.au, 32768
  %.not4.i = icmp eq i32 %i.av, 0
  br i1 %.not4.i, label %trace_gicv5_update_irq_fiq.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = zext i1 %i.ar to i32
  %i.ax = zext i1 %i.ap to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, i32 noundef %i.aw, i32 noundef 0, i32 noundef %i.ax) #8
  br label %trace_gicv5_update_irq_fiq.exit

trace_gicv5_update_irq_fiq.exit:                  ; preds = %gic_hppi.exit, %bb.j, %bb.k, %bb.l
  %i.ay = getelementptr inbounds i8, ptr %0, i64 -16496 ; 5 uses
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %trace_gicv5_update_irq_fiq.exit
  tail call void @cpu_interrupt(ptr noundef nonnull %i.ay, i32 noundef 2) #8
  br label %cpu_interrupt_update.exit

bb.n:                                             ; preds = %trace_gicv5_update_irq_fiq.exit
  tail call void @cpu_reset_interrupt(ptr noundef nonnull %i.ay, i32 noundef 2) #8
  br label %cpu_interrupt_update.exit

cpu_interrupt_update.exit:                        ; preds = %bb.m, %bb.n
  tail call void @cpu_reset_interrupt(ptr noundef nonnull %i.ay, i32 noundef 16) #8
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %cpu_interrupt_update.exit
  tail call void @cpu_interrupt(ptr noundef nonnull %i.ay, i32 noundef 4096) #8
  br label %cpu_interrupt_update.exit15

bb.p:                                             ; preds = %cpu_interrupt_update.exit
  tail call void @cpu_reset_interrupt(ptr noundef nonnull %i.ay, i32 noundef 4096) #8
  br label %cpu_interrupt_update.exit15

cpu_interrupt_update.exit15:                      ; preds = %bb.o, %bb.p
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gicv5_update_ppi_state(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 79784
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 61440
  %.not17 = icmp eq i64 %i.b, 0
  br i1 %.not17, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp ult i32 %1, 64
  br i1 %or.cond, label %extract64.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 331, ptr noundef nonnull @__PRETTY_FUNCTION__.gicv5_update_ppi_state) #9
  unreachable

extract64.exit:                                   ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3448 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = zext nneg i32 %1 to i64                  ; 3 uses
  %i.f = lshr i64 %i.d, %i.e
  %i.g = zext i1 %2 to i64
  %i.h = trunc i64 %i.f to i1
  %i.i = xor i1 %2, %i.h
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %extract64.exit
  %i.j = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i16 = icmp eq i32 %i.j, 0
  br i1 %.not.i16, label %trace_gicv5_update_ppi_state.exit, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.k = load i16, ptr @_TRACE_GICV5_UPDATE_PPI_STATE_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.k, 0
  br i1 %.not2.i, label %trace_gicv5_update_ppi_state.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr @qemu_loglevel, align 4
  %i.m = and i32 %i.l, 32768
  %.not3.i = icmp eq i32 %i.m, 0
  br i1 %.not3.i, label %trace_gicv5_update_ppi_state.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = zext i1 %2 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.11, i32 noundef range(i32 0, 64) %1, i32 noundef %i.n) #8
  %.pre = load i64, ptr %i.c, align 8
  br label %trace_gicv5_update_ppi_state.exit

trace_gicv5_update_ppi_state.exit:                ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.o = phi i64 [ %i.d, %bb.d ], [ %i.d, %bb.e ], [ %i.d, %bb.f ], [ %.pre, %bb.g ]
  %i.p = shl nuw i64 1, %i.e
  %i.q = xor i64 %i.p, -1
  %i.r = and i64 %i.o, %i.q
  %i.s = shl nuw i64 %i.g, %i.e
  %i.t = or i64 %i.r, %i.s
  store i64 %i.t, ptr %i.c, align 8
  tail call fastcc void @gic_recalc_ppi_hppi(ptr noundef nonnull %0)
  br label %bb.h

bb.h:                                             ; preds = %extract64.exit, %trace_gicv5_update_ppi_state.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gic_recalc_ppi_hppi(ptr noundef initializes((3608, 3640)) %0) unnamed_addr #0 {
.preheader54:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3608
  %.sroa.3.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %0, i64 3637
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.3.0..sroa_idx.3, i8 0, i64 3, i1 false)
  store i32 0, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3612
  store i8 -1, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3613
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %.sroa.2.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %0, i64 3620 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx, i8 0, i64 7, i1 false)
  store i8 -1, ptr %.sroa.2.0..sroa_idx.1, align 4
  %.sroa.3.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %0, i64 3621
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3624
  %.sroa.2.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %0, i64 3628 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx.1, i8 0, i64 7, i1 false)
  store i8 -1, ptr %.sroa.2.0..sroa_idx.2, align 4
  %.sroa.3.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %0, i64 3629
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3632
  %.sroa.2.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %0, i64 3636 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx.2, i8 0, i64 7, i1 false)
  store i8 -1, ptr %.sroa.2.0..sroa_idx.3, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3464
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3448
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3416
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3480 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3620 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3616 ; 2 uses
  %i.k = load i64, ptr %i.e, align 8
  %i.l = load i64, ptr %i.f, align 8
  %i.m = and i64 %i.l, %i.k
  %i.n = load i64, ptr %i.g, align 8
  %i.o = xor i64 %i.n, -1
  %i.p = and i64 %i.m, %i.o                       ; 2 uses
  %.not56 = icmp eq i64 %i.p, 0
  br i1 %.not56, label %._crit_edge, label %extract64.exit

extract64.exit:                                   ; preds = %.preheader54, %bb.b
  %i.q = phi i32 [ %i.ae, %bb.b ], [ 0, %.preheader54 ]
  %i.r = phi i8 [ %i.af, %bb.b ], [ -1, %.preheader54 ] ; 2 uses
  %.04957 = phi i64 [ %i.v, %bb.b ], [ %i.p, %.preheader54 ] ; 2 uses
  %i.s = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.04957, i1 true) ; 4 uses
  %i.t = shl nuw i64 1, %i.s
  %i.u = xor i64 %i.t, -1
  %i.v = and i64 %.04957, %i.u                    ; 2 uses
  %i.w = lshr i64 %i.s, 3
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8
  %i.z = shl nuw nsw i64 %i.s, 3
  %i.aa = and i64 %i.z, 56
  %i.ab = lshr i64 %i.y, %i.aa
  %1 = and i64 %i.ab, 31                          ; 2 uses
  %2 = zext i8 %i.r to i64
  %3 = icmp samesign ult i64 %1, %2
  br i1 %3, label %bb.a, label %bb.b

bb.a:                                             ; preds = %extract64.exit
  %i.ac = trunc nuw nsw i64 %i.s to i32
  %4 = trunc nuw nsw i64 %1 to i8                 ; 2 uses
  %i.ad = or disjoint i32 %i.ac, 536870912        ; 2 uses
  store i32 %i.ad, ptr %i.j, align 8
  store i8 %4, ptr %i.i, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %extract64.exit
  %i.ae = phi i32 [ %i.ad, %bb.a ], [ %i.q, %extract64.exit ] ; 2 uses
  %i.af = phi i8 [ %4, %bb.a ], [ %i.r, %extract64.exit ] ; 2 uses
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %._crit_edge, label %extract64.exit, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.b, %.preheader54
  %i.ag = phi i32 [ 0, %.preheader54 ], [ %i.ae, %bb.b ] ; 2 uses
  %.promoted.1 = phi i8 [ -1, %.preheader54 ], [ %i.af, %bb.b ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3472
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = and i64 %i.ak, %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3424
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = xor i64 %i.an, -1
  %i.ap = and i64 %i.al, %i.ao                    ; 2 uses
  %.not56.1 = icmp eq i64 %i.ap, 0
  br i1 %.not56.1, label %._crit_edge.1, label %extract64.exit.1

extract64.exit.1:                                 ; preds = %._crit_edge, %bb.d
  %i.aq = phi i32 [ %i.bf, %bb.d ], [ %i.ag, %._crit_edge ]
  %i.ar = phi i8 [ %i.bg, %bb.d ], [ %.promoted.1, %._crit_edge ] ; 2 uses
  %.04957.1 = phi i64 [ %i.av, %bb.d ], [ %i.ap, %._crit_edge ] ; 2 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.04957.1, i1 true) ; 4 uses
  %i.at = shl nuw i64 1, %i.as
  %i.au = xor i64 %i.at, -1
  %i.av = and i64 %.04957.1, %i.au                ; 2 uses
  %i.aw = lshr i64 %i.as, 3
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = shl nuw nsw i64 %i.as, 3
  %i.bb = and i64 %i.ba, 56
  %i.bc = lshr i64 %i.az, %i.bb
  %5 = and i64 %i.bc, 31                          ; 2 uses
  %6 = zext i8 %i.ar to i64
  %7 = icmp samesign ult i64 %5, %6
  br i1 %7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %extract64.exit.1
  %i.bd = trunc nuw nsw i64 %i.as to i32
  %8 = trunc nuw nsw i64 %5 to i8                 ; 2 uses
  %i.be = or disjoint i32 %i.bd, 536870976        ; 2 uses
  store i32 %i.be, ptr %i.j, align 8
  store i8 %8, ptr %i.i, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %extract64.exit.1
  %i.bf = phi i32 [ %i.be, %bb.c ], [ %i.aq, %extract64.exit.1 ] ; 2 uses
  %i.bg = phi i8 [ %8, %bb.c ], [ %i.ar, %extract64.exit.1 ] ; 2 uses
  %.not.1 = icmp eq i64 %i.av, 0
  br i1 %.not.1, label %._crit_edge.1, label %extract64.exit.1, !llvm.loop !11

._crit_edge.1:                                    ; preds = %bb.d, %._crit_edge
  %i.bh = phi i8 [ %.promoted.1, %._crit_edge ], [ %i.bg, %bb.d ]
  %i.bi = phi i32 [ %i.ag, %._crit_edge ], [ %i.bf, %bb.d ]
  %i.bj = load i32, ptr @trace_events_enabled_count, align 4
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.split.us, label %.preheader.split.preheader, !prof !9

.split.us:                                        ; preds = %trace_gicv5_recalc_ppi_hppi.exit, %trace_gicv5_recalc_ppi_hppi.exit.1, %trace_gicv5_recalc_ppi_hppi.exit.2, %trace_gicv5_recalc_ppi_hppi.exit.2.thread83, %bb.h, %bb.i, %._crit_edge.1
  tail call fastcc void @gicv5_update_irq_fiq(ptr noundef nonnull %0)
  ret void

.preheader.split.preheader:                       ; preds = %._crit_edge.1
  %i.bl = load i16, ptr @_TRACE_GICV5_RECALC_PPI_HPPI_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.bl, 0
  br i1 %.not3.i, label %trace_gicv5_recalc_ppi_hppi.exit.1.thread, label %bb.e, !prof !12

bb.e:                                             ; preds = %.preheader.split.preheader
  %i.bm = load i32, ptr @qemu_loglevel, align 4
  %i.bn = and i32 %i.bm, 32768
  %.not4.i = icmp eq i32 %i.bn, 0
  br i1 %.not4.i, label %trace_gicv5_recalc_ppi_hppi.exit.thread, label %trace_gicv5_recalc_ppi_hppi.exit, !prof !12

trace_gicv5_recalc_ppi_hppi.exit:                 ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 0, i32 noundef 255) #8
  %.pre = load i32, ptr %i.b, align 8
  %.pre65 = load i8, ptr %.sroa.2.0..sroa_idx.1, align 4
  %.pre66 = load i32, ptr @trace_events_enabled_count, align 4
  %i.bo = icmp eq i32 %.pre66, 0
  br i1 %i.bo, label %.split.us, label %trace_gicv5_recalc_ppi_hppi.exit.thread, !prof !13

trace_gicv5_recalc_ppi_hppi.exit.thread:          ; preds = %bb.e, %trace_gicv5_recalc_ppi_hppi.exit
  %.ph = phi i32 [ %i.bi, %bb.e ], [ %.pre, %trace_gicv5_recalc_ppi_hppi.exit ]
  %.ph85 = phi i8 [ %i.bh, %bb.e ], [ %.pre65, %trace_gicv5_recalc_ppi_hppi.exit ]
  %.pr = load i16, ptr @_TRACE_GICV5_RECALC_PPI_HPPI_DSTATE, align 2
  %.not3.i.1 = icmp eq i16 %.pr, 0
  br i1 %.not3.i.1, label %trace_gicv5_recalc_ppi_hppi.exit.1.thread, label %bb.f, !prof !14

bb.f:                                             ; preds = %trace_gicv5_recalc_ppi_hppi.exit.thread
  %i.bp = load i32, ptr @qemu_loglevel, align 4
  %i.bq = and i32 %i.bp, 32768
  %.not4.i.1 = icmp eq i32 %i.bq, 0
  br i1 %.not4.i.1, label %trace_gicv5_recalc_ppi_hppi.exit.1.thread, label %trace_gicv5_recalc_ppi_hppi.exit.1, !prof !12

trace_gicv5_recalc_ppi_hppi.exit.1:               ; preds = %bb.f
  %i.br = zext i8 %.ph85 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.12, i32 noundef 1, i32 noundef %.ph, i32 noundef %i.br) #8
  %.pre67 = load i32, ptr @trace_events_enabled_count, align 4
  %i.bs = icmp eq i32 %.pre67, 0
  br i1 %i.bs, label %.split.us, label %trace_gicv5_recalc_ppi_hppi.exit.1.thread, !prof !15

trace_gicv5_recalc_ppi_hppi.exit.1.thread:        ; preds = %trace_gicv5_recalc_ppi_hppi.exit.thread, %bb.f, %.preheader.split.preheader, %trace_gicv5_recalc_ppi_hppi.exit.1
  %i.bt = load i32, ptr %i.c, align 8
  %i.bu = load i8, ptr %.sroa.2.0..sroa_idx.2, align 4
  %i.bv = load i16, ptr @_TRACE_GICV5_RECALC_PPI_HPPI_DSTATE, align 2
  %.not3.i.2 = icmp eq i16 %i.bv, 0
  br i1 %.not3.i.2, label %trace_gicv5_recalc_ppi_hppi.exit.2.thread83, label %bb.g, !prof !12

bb.g:                                             ; preds = %trace_gicv5_recalc_ppi_hppi.exit.1.thread
  %i.bw = load i32, ptr @qemu_loglevel, align 4
  %i.bx = and i32 %i.bw, 32768
  %.not4.i.2 = icmp eq i32 %i.bx, 0
  br i1 %.not4.i.2, label %trace_gicv5_recalc_ppi_hppi.exit.2.thread83, label %trace_gicv5_recalc_ppi_hppi.exit.2, !prof !12

trace_gicv5_recalc_ppi_hppi.exit.2:               ; preds = %bb.g
  %i.by = zext i8 %i.bu to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.12, i32 noundef 2, i32 noundef %i.bt, i32 noundef %i.by) #8
  %.pre68 = load i32, ptr @trace_events_enabled_count, align 4
  %i.bz = icmp eq i32 %.pre68, 0
  br i1 %i.bz, label %.split.us, label %trace_gicv5_recalc_ppi_hppi.exit.2.thread83, !prof !16

trace_gicv5_recalc_ppi_hppi.exit.2.thread83:      ; preds = %trace_gicv5_recalc_ppi_hppi.exit.1.thread, %bb.g, %trace_gicv5_recalc_ppi_hppi.exit.2
  %i.ca = load i32, ptr %i.d, align 8
  %i.cb = load i8, ptr %.sroa.2.0..sroa_idx.3, align 4
  %i.cc = load i16, ptr @_TRACE_GICV5_RECALC_PPI_HPPI_DSTATE, align 2
  %.not3.i.3 = icmp eq i16 %i.cc, 0
  br i1 %.not3.i.3, label %.split.us, label %bb.h

bb.h:                                             ; preds = %trace_gicv5_recalc_ppi_hppi.exit.2.thread83
  %i.cd = load i32, ptr @qemu_loglevel, align 4
  %i.ce = and i32 %i.cd, 32768
  %.not4.i.3 = icmp eq i32 %i.ce, 0
  br i1 %.not4.i.3, label %.split.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cf = zext i8 %i.cb to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.12, i32 noundef 3, i32 noundef %i.ca, i32 noundef %i.cf) #8
  br label %.split.us
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @define_gicv5_cpuif_regs(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.ARMCPRegInfo, align 8       ; 19 uses
  %i.a = getelementptr i8, ptr %0, i64 96280
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 61440
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @define_arm_cp_regs_len(ptr noundef nonnull %0, ptr noundef nonnull @gicv5_cpuif_reginfo, i64 noundef 32) #8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  %i.s = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.2, i32 noundef %i.r) #8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  store ptr %i.s, ptr %1, align 8
  store i8 0, ptr %i.c, align 8
  store i8 12, ptr %i.d, align 1
  %i.t = lshr i64 %indvars.iv, 3
  %i.u = trunc i64 %i.t to i8
  %i.v = or disjoint i8 %i.u, 14
  store i8 %i.v, ptr %i.e, align 2
  store i8 3, ptr %i.f, align 1
  store i8 0, ptr %i.g, align 4
  %i.w = trunc i64 %indvars.iv to i8
  %i.x = and i8 %i.w, 7
  store i8 %i.x, ptr %i.h, align 1
  store i16 0, ptr %i.i, align 2
  store i32 1, ptr %i.j, align 8
  store i32 1536, ptr %i.k, align 4
  store i32 252, ptr %i.l, align 8
  %i.y = shl nuw nsw i64 %indvars.iv, 3
  %i.z = add nuw nsw i64 %i.y, 3480
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.m, i8 0, i64 28, i1 false)
  store i64 %i.z, ptr %i.n, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  store <2 x ptr> <ptr @gic_ppi_priority_write, ptr null>, ptr %i.p, align 8
  store <2 x ptr> <ptr @raw_write, ptr null>, ptr %i.q, align 8
  call void @define_one_arm_cp_reg(ptr noundef nonnull %0, ptr noundef nonnull %1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  call void @g_free(ptr noundef %i.s) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !17

.loopexit:                                        ; preds = %bb.c, %bb.a
  ret void
}

declare void @define_arm_cp_regs_len(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind sspstrong uwtable
define internal void @gic_ppi_priority_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  tail call void @raw_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) #8
  tail call fastcc void @gic_recalc_ppi_hppi(ptr noundef %0)
  ret void
}

declare void @raw_write(ptr noundef, ptr noundef, i64 noundef) #3

declare void @define_one_arm_cp_reg(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @gicv5_get_hppi(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #5

declare i32 @arm_security_space(ptr noundef) local_unnamed_addr #3

declare i32 @arm_security_space_below_el3(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #3

declare void @cpu_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @cpu_reset_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @gic_cddis_write(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #0 {
bb.a:
end_hunk_0
begin_hunk_1_@gic_cddi_write:bb.a
  %i.r = trunc i64 %2 to i32                      ; 2 uses
  %i.s = lshr i32 %i.r, 29                        ; 2 uses
  %i.t = and i64 %2, 16777215                     ; 3 uses
  %i.u = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %trace_gicv5_cddi.exit, label %bb.g, !prof !9

bb.g:                                             ; preds = %gicv5_current_phys_domain.exit
  %i.v = load i16, ptr @_TRACE_GICV5_CDDI_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.v, 0
  br i1 %.not2.i, label %trace_gicv5_cddi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load i32, ptr @qemu_loglevel, align 4
  %i.x = and i32 %i.w, 32768
  %.not3.i = icmp eq i32 %i.x, 0
  br i1 %.not3.i, label %trace_gicv5_cddi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.46, i32 noundef range(i32 0, 4) %.0.i, i32 noundef %i.r) #8
  br label %trace_gicv5_cddi.exit

trace_gicv5_cddi.exit:                            ; preds = %gicv5_current_phys_domain.exit, %bb.g, %bb.h, %bb.i
  switch i32 %i.s, label %bb.m [
    i32 1, label %bb.j
    i32 2, label %bb.l
    i32 3, label %bb.l
  ]

bb.j:                                             ; preds = %trace_gicv5_cddi.exit
  %i.y = icmp samesign ugt i64 %i.t, 127
  br i1 %i.y, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = lshr i64 %i.t, 6
  %i.aa = and i64 %2, 63
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = xor i64 %i.ac, 4294967295
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3416
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.z ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.ad
  store i64 %i.ah, ptr %i.af, align 8
  tail call fastcc void @gic_recalc_ppi_hppi(ptr noundef nonnull %0)
  br label %bb.m

bb.l:                                             ; preds = %trace_gicv5_cddi.exit, %trace_gicv5_cddi.exit
  %i.ai = trunc nuw nsw i64 %i.t to i32
  tail call void @gicv5_deactivate(ptr noundef %.val, i32 noundef %i.ai, i32 noundef %.0.i, i32 noundef %i.s, i1 noundef zeroext false) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.j, %trace_gicv5_cddi.exit, %bb.l
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gic_cdhm_write(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 79088
  %.val = load ptr, ptr %i.a, align 16
  %i.b = getelementptr i8, ptr %0, i64 78928      ; 2 uses
  %.val.i.i = load i64, ptr %i.b, align 16
  %i.c = and i64 %.val.i.i, 128
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %arm_current_el.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 336
  %.val11.i.i = load i8, ptr %i.d, align 16, !range !7, !noundef !8
  %i.e = trunc nuw i8 %.val11.i.i to i1
  br i1 %i.e, label %arm_current_el.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 31
  switch i32 %i.h, label %bb.d [
    i32 16, label %arm_current_el.exit.thread.i
    i32 26, label %arm_current_el.exit.thread.i
    i32 22, label %gicv5_current_phys_domain.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @arm_security_space(ptr noundef nonnull %0) #8
  %i.j = and i32 %i.i, -3
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %arm_current_el.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %.val12.i.i = load i64, ptr %i.b, align 16
  %i.l = and i64 %.val12.i.i, 33554432
  %.not14.i.i = icmp eq i64 %i.l, 0
  br i1 %.not14.i.i, label %gicv5_current_phys_domain.exit, label %arm_current_el.exit.thread.i

arm_current_el.exit.i:                            ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 12
  %i.p = icmp eq i64 %i.o, 12
  br i1 %i.p, label %gicv5_current_phys_domain.exit, label %arm_current_el.exit.thread.i

arm_current_el.exit.thread.i:                     ; preds = %arm_current_el.exit.i, %bb.e, %bb.d, %bb.c, %bb.c, %bb.a
  %i.q = tail call i32 @arm_security_space_below_el3(ptr noundef nonnull %0) #8 ; 4 uses
  switch i32 %i.q, label %bb.f [
    i32 0, label %gicv5_current_phys_domain.exit
    i32 1, label %gicv5_current_phys_domain.exit
    i32 3, label %gicv5_current_phys_domain.exit
  ]

bb.f:                                             ; preds = %arm_current_el.exit.thread.i
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 107, ptr noundef nonnull @__func__.gicv5_logical_domain, ptr noundef null) #9
  unreachable

gicv5_current_phys_domain.exit:                   ; preds = %bb.c, %bb.e, %arm_current_el.exit.i, %arm_current_el.exit.thread.i, %arm_current_el.exit.thread.i, %arm_current_el.exit.thread.i
  %.0.i = phi i32 [ %i.q, %arm_current_el.exit.thread.i ], [ 2, %arm_current_el.exit.i ], [ %i.q, %arm_current_el.exit.thread.i ], [ %i.q, %arm_current_el.exit.thread.i ], [ 2, %bb.e ], [ 2, %bb.c ]
  %i.r = trunc i64 %2 to i32                      ; 2 uses
  %i.s = and i32 %i.r, 16777215
  %i.t = lshr i32 %i.r, 29
  %i.u = lshr i64 %2, 32
  %i.v = trunc nuw i64 %i.u to i32
  %i.w = and i32 %i.v, 1
  tail call void @gicv5_set_handling(ptr noundef %.val, i32 noundef %i.s, i32 noundef %i.w, i32 noundef %.0.i, i32 noundef %i.t, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 8589934592) i64 @gicr_cdia_read(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 79088      ; 2 uses
  %.val = load ptr, ptr %i.a, align 16
  %i.b = getelementptr i8, ptr %0, i64 78928      ; 4 uses
  %.val.i.i = load i64, ptr %i.b, align 16
  %i.c = and i64 %.val.i.i, 128
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %arm_current_el.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 336
  %.val11.i.i = load i8, ptr %i.d, align 16, !range !7, !noundef !8
  %i.e = trunc nuw i8 %.val11.i.i to i1
  br i1 %i.e, label %arm_current_el.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 31
  switch i32 %i.h, label %bb.d [
    i32 16, label %arm_current_el.exit.thread.i
    i32 26, label %arm_current_el.exit.thread.i
    i32 22, label %gicv5_current_phys_domain.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @arm_security_space(ptr noundef nonnull %0) #8
  %i.j = and i32 %i.i, -3
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %arm_current_el.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %.val12.i.i = load i64, ptr %i.b, align 16
  %i.l = and i64 %.val12.i.i, 33554432
  %.not14.i.i = icmp eq i64 %i.l, 0
  br i1 %.not14.i.i, label %gicv5_current_phys_domain.exit, label %arm_current_el.exit.thread.i

arm_current_el.exit.i:                            ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 12
  %i.p = icmp eq i64 %i.o, 12
  br i1 %i.p, label %gicv5_current_phys_domain.exit, label %arm_current_el.exit.thread.i

arm_current_el.exit.thread.i:                     ; preds = %arm_current_el.exit.i, %bb.e, %bb.d, %bb.c, %bb.c, %bb.a
  %i.q = tail call i32 @arm_security_space_below_el3(ptr noundef nonnull %0) #8 ; 4 uses
  switch i32 %i.q, label %bb.f [
    i32 0, label %gicv5_current_phys_domain.exit
    i32 1, label %gicv5_current_phys_domain.exit
    i32 3, label %gicv5_current_phys_domain.exit
  ]

bb.f:                                             ; preds = %arm_current_el.exit.thread.i
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 107, ptr noundef nonnull @__func__.gicv5_logical_domain, ptr noundef null) #9
  unreachable

gicv5_current_phys_domain.exit:                   ; preds = %bb.c, %bb.e, %arm_current_el.exit.i, %arm_current_el.exit.thread.i, %arm_current_el.exit.thread.i, %arm_current_el.exit.thread.i
  %.0.i = phi i32 [ %i.q, %arm_current_el.exit.thread.i ], [ 2, %arm_current_el.exit.i ], [ %i.q, %arm_current_el.exit.thread.i ], [ %i.q, %arm_current_el.exit.thread.i ], [ 2, %bb.e ], [ 2, %bb.c ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %i.s = zext nneg i32 %.0.i to i64               ; 5 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8
  %i.v = and i64 %i.u, 1
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %gic_hppi.exit.thread, label %bb.g

bb.g:                                             ; preds = %gicv5_current_phys_domain.exit
  %.val.i = load ptr, ptr %i.a, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 79096
  %i.x = load i64, ptr %i.w, align 8
  %i.y = trunc i64 %i.x to i32
  %i.z = tail call i64 @gicv5_get_hppi(ptr noundef %.val.i, i32 noundef range(i32 0, 4) %.0.i, i32 noundef %i.y) #8 ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i64 %i.z, 32  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3608
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.s ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i8, ptr %i.ac, align 4             ; 2 uses
  %2 = zext i8 %i.ad to i32
  %3 = trunc nuw i64 %.sroa.5.0.extract.shift.i to i32
  %4 = and i32 %3, 255
  %.not28.i = icmp samesign ult i32 %4, %2
  br i1 %.not28.i, label %bb.h, label %5

5:                                                ; preds = %bb.g
  %.sroa.03.0.copyload.i = load i32, ptr %i.ab, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.5.0.extract.trunc.i = trunc i64 %.sroa.5.0.extract.shift.i to i8
  %.sroa.01.0.extract.trunc.i = trunc i64 %i.z to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %5
  %.sroa.03.0.i = phi i32 [ %.sroa.03.0.copyload.i, %5 ], [ %.sroa.01.0.extract.trunc.i, %bb.h ] ; 3 uses
  %.sroa.6.0.i = phi i8 [ %i.ad, %5 ], [ %.sroa.5.0.extract.trunc.i, %bb.h ] ; 3 uses
  %i.ae = icmp eq i8 %.sroa.6.0.i, -1
  br i1 %i.ae, label %gic_hppi.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = zext i8 %.sroa.6.0.i to i64             ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3384
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.s
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = icmp ult i64 %i.ai, %i.af
  br i1 %i.aj, label %gic_hppi.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 3320
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.s
  %i.am = load i64, ptr %i.al, align 8
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.am, i1 false) ; 2 uses
  %i.ao = icmp samesign ult i64 %i.an, 32
  %i.ap = select i1 %i.ao, i64 %i.an, i64 255
  %.not29.i = icmp samesign ugt i64 %i.ap, %i.af
  br i1 %.not29.i, label %gic_hppi.exit, label %gic_hppi.exit.thread

gic_hppi.exit:                                    ; preds = %bb.k
  %i.aq = zext i32 %.sroa.03.0.i to i64           ; 3 uses
  %i.ar = lshr i32 %.sroa.03.0.i, 29              ; 2 uses
  %i.as = and i64 %i.aq, 16777215                 ; 3 uses
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = icmp eq i8 %i.av, 1                     ; 3 uses
  %cond = icmp eq i8 %.sroa.6.0.i, 0
  br i1 %cond, label %bb.o, label %.gic_hppi_is_nmi.exit_crit_edge

gic_hppi.exit.thread:                             ; preds = %bb.i, %bb.j, %bb.k, %gicv5_current_phys_domain.exit
  %i.ax = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i45 = icmp eq i32 %i.ax, 0
  br i1 %.not.i45, label %trace_gicv5_gicr_cdia_fail.exit, label %bb.l, !prof !9

bb.l:                                             ; preds = %gic_hppi.exit.thread
  %i.ay = load i16, ptr @_TRACE_GICV5_GICR_CDIA_FAIL_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.ay, 0
  br i1 %.not1.i, label %trace_gicv5_gicr_cdia_fail.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = load i32, ptr @qemu_loglevel, align 4
  %i.ba = and i32 %i.az, 32768
  %.not2.i = icmp eq i32 %i.ba, 0
  br i1 %.not2.i, label %trace_gicv5_gicr_cdia_fail.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.51, i32 noundef range(i32 0, 4) %.0.i, ptr noundef nonnull @.str.47) #8
  br label %trace_gicv5_gicr_cdia_fail.exit

.gic_hppi_is_nmi.exit_crit_edge:                  ; preds = %gic_hppi.exit
  br i1 %i.aw, label %bb.z, label %bb.ad

bb.o:                                             ; preds = %gic_hppi.exit
  %.val.i.i46 = load i64, ptr %i.b, align 16
  %i.bb = and i64 %.val.i.i46, 128
  %.not.i.i47 = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i47, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr i8, ptr %0, i64 3728
  %.val10.i.i = load i32, ptr %i.bc, align 16
  %.not13.i.i = icmp eq i32 %.val10.i.i, 0
  br i1 %.not13.i.i, label %bb.q, label %gic_hppi_is_nmi.exit

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 3668
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3752
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = and i32 %i.bi, 1
  %i.bk = xor i32 %i.bj, 1
  br label %gic_hppi_is_nmi.exit

bb.r:                                             ; preds = %bb.o
  %i.bl = getelementptr i8, ptr %0, i64 336
  %.val11.i.i49 = load i8, ptr %i.bl, align 16, !range !7, !noundef !8
  %i.bm = trunc nuw i8 %.val11.i.i49 to i1
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = lshr i32 %i.bp, 2
  %i.br = and i32 %i.bq, 3
  br label %gic_hppi_is_nmi.exit

bb.t:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = and i32 %i.bt, 31
  switch i32 %i.bu, label %bb.w [
    i32 16, label %gic_hppi_is_nmi.exit
    i32 26, label %bb.u
    i32 22, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  br label %gic_hppi_is_nmi.exit

bb.v:                                             ; preds = %bb.t
  br label %gic_hppi_is_nmi.exit

bb.w:                                             ; preds = %bb.t
  %i.bv = tail call i32 @arm_security_space(ptr noundef nonnull %0) #8
  %i.bw = and i32 %i.bv, -3
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %.val12.i.i50 = load i64, ptr %i.b, align 16
  %i.by = and i64 %.val12.i.i50, 33554432
  %.not14.i.i51 = icmp eq i64 %i.by, 0
  br i1 %.not14.i.i51, label %gic_hppi_is_nmi.exit, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br label %gic_hppi_is_nmi.exit

gic_hppi_is_nmi.exit:                             ; preds = %bb.p, %bb.q, %bb.s, %bb.t, %bb.u, %bb.v, %bb.x, %bb.y
  %.0.i.i = phi i32 [ 3, %bb.v ], [ %i.br, %bb.s ], [ 1, %bb.y ], [ 0, %bb.t ], [ %i.bk, %bb.q ], [ 2, %bb.u ], [ 1, %bb.p ], [ 3, %bb.x ]
  %i.bz = tail call i64 @arm_sctlr(ptr noundef nonnull %0, i32 noundef %.0.i.i) #8
  %i.ca = and i64 %i.bz, 2305843009213693952
  %i.cb = icmp ne i64 %i.ca, 0
  %i.cc = xor i1 %i.aw, %i.cb
  br i1 %i.cc, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %.gic_hppi_is_nmi.exit_crit_edge, %gic_hppi_is_nmi.exit
  %i.cd = select i1 %i.aw, ptr @.str.48, ptr @.str.49
  %i.ce = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i52 = icmp eq i32 %i.ce, 0
  br i1 %.not.i52, label %trace_gicv5_gicr_cdia_fail.exit, label %bb.aa, !prof !9

bb.aa:                                            ; preds = %bb.z
  %i.cf = load i16, ptr @_TRACE_GICV5_GICR_CDIA_FAIL_DSTATE, align 2
  %.not1.i53 = icmp eq i16 %i.cf, 0
  br i1 %.not1.i53, label %trace_gicv5_gicr_cdia_fail.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cg = load i32, ptr @qemu_loglevel, align 4
  %i.ch = and i32 %i.cg, 32768
  %.not2.i54 = icmp eq i32 %i.ch, 0
  br i1 %.not2.i54, label %trace_gicv5_gicr_cdia_fail.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.51, i32 noundef range(i32 0, 4) %.0.i, ptr noundef nonnull %i.cd) #8
  br label %trace_gicv5_gicr_cdia_fail.exit

bb.ad:                                            ; preds = %.gic_hppi_is_nmi.exit_crit_edge, %gic_hppi_is_nmi.exit
  %i.ci = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i56 = icmp eq i32 %i.ci, 0
  br i1 %.not.i56, label %trace_gicv5_gicr_cdia.exit, label %bb.ae, !prof !9

bb.ae:                                            ; preds = %bb.ad
  %i.cj = load i16, ptr @_TRACE_GICV5_GICR_CDIA_DSTATE, align 2
  %.not2.i57 = icmp eq i16 %i.cj, 0
  br i1 %.not2.i57, label %trace_gicv5_gicr_cdia.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ck = load i32, ptr @qemu_loglevel, align 4
  %i.cl = and i32 %i.ck, 32768
  %.not3.i = icmp eq i32 %i.cl, 0
  br i1 %.not3.i, label %trace_gicv5_gicr_cdia.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.52, i32 noundef range(i32 0, 4) %.0.i, i32 noundef %.sroa.03.0.i) #8
  br label %trace_gicv5_gicr_cdia.exit

trace_gicv5_gicr_cdia.exit:                       ; preds = %bb.ad, %bb.ae, %bb.af, %bb.ag
  %i.cm = shl nuw i64 1, %i.af
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 3320
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.s ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = or i64 %i.cp, %i.cm
  store i64 %i.cq, ptr %i.co, align 8
  switch i32 %i.ar, label %bb.an [
    i32 1, label %bb.ah
    i32 2, label %bb.am
    i32 3, label %bb.am
  ]

bb.ah:                                            ; preds = %trace_gicv5_gicr_cdia.exit
  %i.cr = icmp samesign ult i64 %i.as, 128
  br i1 %i.cr, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 640, ptr noundef nonnull @__PRETTY_FUNCTION__.gicr_cdia_read) #9
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.cs = lshr i64 %i.as, 6                       ; 3 uses
  %i.ct = and i64 %i.aq, 63
  %i.cu = shl nuw i64 1, %i.ct                    ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 3416
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cs ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = or i64 %i.cx, %i.cu
  store i64 %i.cy, ptr %i.cw, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 3432
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cs
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = and i64 %i.db, %i.cu
  %.not = icmp eq i64 %i.dc, 0
  br i1 %.not, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dd = xor i64 %i.cu, -1
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 3448
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.cs ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = and i64 %i.dg, %i.dd
  store i64 %i.dh, ptr %i.df, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  tail call fastcc void @gic_recalc_ppi_hppi(ptr noundef nonnull %0)
  br label %bb.ao

bb.am:                                            ; preds = %trace_gicv5_gicr_cdia.exit, %trace_gicv5_gicr_cdia.exit
  tail call void @gicv5_activate(ptr noundef %.val, i32 noundef %i.at, i32 noundef %.0.i, i32 noundef %i.ar, i1 noundef zeroext false) #8
  br label %bb.ao

bb.an:                                            ; preds = %trace_gicv5_gicr_cdia.exit
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 662, ptr noundef nonnull @__func__.gicr_cdia_read, ptr noundef null) #9
  unreachable

bb.ao:                                            ; preds = %bb.am, %bb.al
  %i.di = or disjoint i64 %i.aq, 4294967296
  br label %trace_gicv5_gicr_cdia_fail.exit

trace_gicv5_gicr_cdia_fail.exit:                  ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.n, %bb.m, %bb.l, %gic_hppi.exit.thread, %bb.ao
  %.0 = phi i64 [ %i.di, %bb.ao ], [ 0, %bb.n ], [ 0, %gic_hppi.exit.thread ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 0, %bb.ac ]
  ret i64 %.0
}

declare void @arm_cp_reset_ignore(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @gic_ppi_cactive_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @raw_read(ptr noundef %0, ptr noundef %1) #8
  %i.b = xor i64 %2, -1
  %i.c = and i64 %i.a, %i.b
  tail call void @raw_write(ptr noundef %0, ptr noundef %1, i64 noundef %i.c) #8
  tail call fastcc void @gic_recalc_ppi_hppi(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gic_ppi_sactive_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @raw_read(ptr noundef %0, ptr noundef %1) #8
  %i.b = or i64 %i.a, %2
  tail call void @raw_write(ptr noundef %0, ptr noundef %1, i64 noundef %i.b) #8
  tail call fastcc void @gic_recalc_ppi_hppi(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 8589934592) i64 @gic_icc_hppir_el1_read(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @arm_security_space_below_el3(ptr noundef %0) #8 ; 3 uses
  switch i32 %i.a, label %bb.b [
    i32 0, label %gicv5_logical_domain.exit
    i32 1, label %gicv5_logical_domain.exit
    i32 3, label %gicv5_logical_domain.exit
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 107, ptr noundef nonnull @__func__.gicv5_logical_domain, ptr noundef null) #9
  unreachable

gicv5_logical_domain.exit:                        ; preds = %bb.a, %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %i.c = zext nneg i32 %i.a to i64                ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %gic_hppi.exit, label %bb.c

bb.c:                                             ; preds = %gicv5_logical_domain.exit
  %i.g = getelementptr i8, ptr %0, i64 79088
  %.val.i = load ptr, ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 79096
  %i.i = load i64, ptr %i.h, align 8
  %i.j = trunc i64 %i.i to i32
  %i.k = tail call i64 @gicv5_get_hppi(ptr noundef %.val.i, i32 noundef range(i32 0, 4) %i.a, i32 noundef %i.j) #8 ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i64 %i.k, 32  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3608
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.c ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i8, ptr %i.n, align 4               ; 2 uses
  %2 = zext i8 %i.o to i32
  %3 = trunc nuw i64 %.sroa.5.0.extract.shift.i to i32
  %4 = and i32 %3, 255
  %.not28.i = icmp samesign ult i32 %4, %2
  br i1 %.not28.i, label %bb.d, label %5

5:                                                ; preds = %bb.c
  %.sroa.03.0.copyload.i = load i32, ptr %i.m, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0.extract.trunc.i = trunc i64 %.sroa.5.0.extract.shift.i to i8
  %.sroa.01.0.extract.trunc.i = trunc i64 %i.k to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %5
  %.sroa.03.0.i = phi i32 [ %.sroa.03.0.copyload.i, %5 ], [ %.sroa.01.0.extract.trunc.i, %bb.d ]
  %.sroa.6.0.i = phi i8 [ %i.o, %5 ], [ %.sroa.5.0.extract.trunc.i, %bb.d ] ; 2 uses
  %i.p = icmp eq i8 %.sroa.6.0.i, -1
  br i1 %i.p, label %gic_hppi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = zext i8 %.sroa.6.0.i to i64              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3384
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.c
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp ult i64 %i.t, %i.q
  br i1 %i.u, label %gic_hppi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3320
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.c
  %i.x = load i64, ptr %i.w, align 8
  %i.y = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.x, i1 false) ; 2 uses
  %i.z = icmp samesign ult i64 %i.y, 32
  %i.aa = select i1 %i.z, i64 %i.y, i64 255
  %.not29.i = icmp samesign ugt i64 %i.aa, %i.q
  br i1 %.not29.i, label %bb.h, label %gic_hppi.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = shl nuw nsw i64 %i.q, 32
  %i.ac = zext i32 %.sroa.03.0.i to i64
  %i.ad = or disjoint i64 %i.ab, %i.ac
  br label %gic_hppi.exit

gic_hppi.exit:                                    ; preds = %gicv5_logical_domain.exit, %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.7.0.i = phi i64 [ 1095216660480, %gicv5_logical_domain.exit ], [ %i.ad, %bb.h ], [ 1095216660480, %bb.g ], [ 1095216660480, %bb.f ], [ 1095216660480, %bb.e ] ; 2 uses
  %i.ae = and i64 %.sroa.7.0.i, 1095216660480
  %i.af = icmp eq i64 %i.ae, 1095216660480
  %i.ag = and i64 %.sroa.7.0.i, 4294967295
  %i.ah = or disjoint i64 %i.ag, 4294967296
  %.0 = select i1 %i.af, i64 0, i64 %i.ah
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gic_ppi_enable_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  tail call void @raw_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) #8
  tail call fastcc void @gic_recalc_ppi_hppi(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gic_ppi_cpend_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @raw_read(ptr noundef %0, ptr noundef %1) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3432
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8
  %.not = xor i64 %2, -1
  %i.i = or i64 %i.h, %.not
  %i.j = and i64 %i.i, %i.a
  tail call void @raw_write(ptr noundef %0, ptr noundef %1, i64 noundef %i.j) #8
  tail call fastcc void @gic_recalc_ppi_hppi(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gic_ppi_spend_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @raw_read(ptr noundef %0, ptr noundef %1) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3432
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8
  %i.i = xor i64 %i.h, -1
  %i.j = and i64 %2, %i.i
  %i.k = or i64 %i.j, %i.a
  tail call void @raw_write(ptr noundef %0, ptr noundef %1, i64 noundef %i.k) #8
  tail call fastcc void @gic_recalc_ppi_hppi(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @gic_icc_apr_el1_read(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @arm_security_space_below_el3(ptr noundef %0) #8 ; 2 uses
  switch i32 %i.a, label %bb.b [
    i32 0, label %gicv5_logical_domain.exit
    i32 1, label %gicv5_logical_domain.exit
    i32 3, label %gicv5_logical_domain.exit
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 107, ptr noundef nonnull @__func__.gicv5_logical_domain, ptr noundef null) #9
  unreachable

gicv5_logical_domain.exit:                        ; preds = %bb.a, %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3320
  %i.c = zext nneg i32 %i.a to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gic_icc_apr_el1_write(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @arm_security_space_below_el3(ptr noundef %0) #8 ; 2 uses
  switch i32 %i.a, label %bb.b [
    i32 0, label %gicv5_logical_domain.exit
    i32 1, label %gicv5_logical_domain.exit
    i32 3, label %gicv5_logical_domain.exit
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 107, ptr noundef nonnull @__func__.gicv5_logical_domain, ptr noundef null) #9
  unreachable

gicv5_logical_domain.exit:                        ; preds = %bb.a, %bb.a, %bb.a
  %i.b = and i64 %2, 4294967295
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3320
  %i.d = zext nneg i32 %i.a to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d
  store i64 %i.b, ptr %i.e, align 8
  tail call fastcc void @gicv5_update_irq_fiq(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal void @gic_icc_apr_el1_reset(ptr nofree noundef writeonly captures(none) initializes((3320, 3352)) %0, ptr nofree readnone captures(none) %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @gic_icc_cr0_el1_read(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @arm_security_space_below_el3(ptr noundef %0) #8 ; 2 uses
  switch i32 %i.a, label %bb.b [
    i32 0, label %gicv5_logical_domain.exit
    i32 1, label %gicv5_logical_domain.exit
    i32 3, label %gicv5_logical_domain.exit
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 107, ptr noundef nonnull @__func__.gicv5_logical_domain, ptr noundef null) #9
  unreachable

gicv5_logical_domain.exit:                        ; preds = %bb.a, %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %i.c = zext nneg i32 %i.a to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gic_icc_cr0_el1_write(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @arm_security_space_below_el3(ptr noundef %0) #8 ; 2 uses
  switch i32 %i.a, label %bb.b [
    i32 0, label %gicv5_logical_domain.exit
    i32 1, label %gicv5_logical_domain.exit
    i32 3, label %gicv5_logical_domain.exit
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 107, ptr noundef nonnull @__func__.gicv5_logical_domain, ptr noundef null) #9
  unreachable

gicv5_logical_domain.exit:                        ; preds = %bb.a, %bb.a, %bb.a
  %i.b = and i64 %2, 1
  %i.c = or disjoint i64 %i.b, 6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %i.e = zext nneg i32 %i.a to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  store i64 %i.c, ptr %i.f, align 8
  tail call fastcc void @gicv5_update_irq_fiq(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal void @gic_icc_cr0_el1_reset(ptr nofree noundef writeonly captures(none) initializes((3352, 3384)) %0, ptr nofree readnone captures(none) %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3352
  store <4 x i64> splat (i64 6), ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @gic_icc_pcr_el1_read(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @arm_security_space_below_el3(ptr noundef %0) #8 ; 2 uses
  switch i32 %i.a, label %bb.b [
    i32 0, label %gicv5_logical_domain.exit
    i32 1, label %gicv5_logical_domain.exit
    i32 3, label %gicv5_logical_domain.exit
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 107, ptr noundef nonnull @__func__.gicv5_logical_domain, ptr noundef null) #9
  unreachable

gicv5_logical_domain.exit:                        ; preds = %bb.a, %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3384
  %i.c = zext nneg i32 %i.a to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gic_icc_pcr_el1_write(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @arm_security_space_below_el3(ptr noundef %0) #8 ; 2 uses
  switch i32 %i.a, label %bb.b [
    i32 0, label %gicv5_logical_domain.exit
    i32 1, label %gicv5_logical_domain.exit
    i32 3, label %gicv5_logical_domain.exit
  ]

end_hunk_1
