Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/ibs?download=true
inline.NumInlined: 120
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@cpu_number = external dso_local global i32, section ".data..percpu..hot..cpu_number", align 4
@.str.10 = private unnamed_addr constant [85 x i8] c"\013[Firmware Bug]: cpu %d, IBS interrupt offset %d not available (MSR%08X=0x%016llx)\0A\00", align 1
@ibs_eilvt_valid.__UNIQUE_ID_addressable___SCK__preempt_schedule_675 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8
@perf_ibs_syscore = internal global %struct.syscore { %struct.list_head zeroinitializer, ptr @perf_ibs_syscore_ops, ptr null }, align 8
@perf_ibs_syscore_ops = internal constant %struct.syscore_ops { ptr @perf_ibs_suspend, ptr @perf_ibs_resume, ptr null }, align 8
@.str.11 = private unnamed_addr constant [42 x i8] c"\014perf: IBS APIC setup failed on cpu #%d\0A\00", align 1
@perf_event_ibs_init.perf_ibs_nmi_handler_na = internal global %struct.nmiaction { %struct.list_head { ptr @perf_event_ibs_init.perf_ibs_nmi_handler_na, ptr @perf_event_ibs_init.perf_ibs_nmi_handler_na }, ptr @perf_ibs_nmi_handler, i64 0, i64 0, ptr @.str.12 }, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"perf_ibs\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"\016perf: AMD IBS detected (0x%08x)\0A\00", align 1
@fetch_attr_groups = internal global [3 x ptr] [ptr @group_fetch_formats, ptr @empty_caps_group, ptr null], align 16
@fetch_attr_update = internal global [5 x ptr] [ptr @group_fetch_l3missonly, ptr @group_zen4_ibs_extensions, ptr @group_ibs_fetch_lat_cap, ptr @group_ibs_fetch_lat_format, ptr null], align 16
@.str.14 = private unnamed_addr constant [10 x i8] c"ibs_fetch\00", align 1
@group_fetch_formats = internal global %struct.attribute_group { ptr @.str.15, %union.anon.42 zeroinitializer, ptr null, ptr null, %union.anon.43 { ptr @fetch_attrs }, ptr null }, align 8
@empty_caps_group = internal global %struct.attribute_group { ptr @.str.22, %union.anon.42 zeroinitializer, ptr null, ptr null, %union.anon.43 { ptr @attrs_empty }, ptr null }, align 8
@.str.15 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@fetch_attrs = internal global [3 x ptr] [ptr @format_attr_rand_en, ptr @format_attr_swfilt, ptr null], align 16
@.str.16 = private unnamed_addr constant [8 x i8] c"rand_en\00", align 1
@format_attr_rand_en = internal global { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 } { { ptr, i16, [6 x i8] } { ptr @.str.16, i16 292, [6 x i8] zeroinitializer }, %union.anon.44 { ptr @rand_en_show }, %union.anon.45 zeroinitializer }, align 8
@.str.18 = private unnamed_addr constant [11 x i8] c"config:57\0A\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"swfilt\00", align 1
@format_attr_swfilt = internal global { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 } { { ptr, i16, [6 x i8] } { ptr @.str.19, i16 292, [6 x i8] zeroinitializer }, %union.anon.44 { ptr @swfilt_show }, %union.anon.45 zeroinitializer }, align 8
@.str.21 = private unnamed_addr constant [11 x i8] c"config2:0\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"caps\00", align 1
@attrs_empty = internal global [1 x ptr] zeroinitializer, align 8
@group_fetch_l3missonly = internal global %struct.attribute_group { ptr @.str.15, %union.anon.42 { ptr @zen4_ibs_extensions_is_visible }, ptr null, ptr null, %union.anon.43 { ptr @fetch_l3missonly_attrs }, ptr null }, align 8
@group_zen4_ibs_extensions = internal global %struct.attribute_group { ptr @.str.22, %union.anon.42 { ptr @zen4_ibs_extensions_is_visible }, ptr null, ptr null, %union.anon.43 { ptr @zen4_ibs_extensions_attrs }, ptr null }, align 8
@group_ibs_fetch_lat_cap = internal global %struct.attribute_group { ptr @.str.22, %union.anon.42 { ptr @ibs_fetch_lat_is_visible }, ptr null, ptr null, %union.anon.43 { ptr @ibs_fetch_lat_cap_attrs }, ptr null }, align 8
@group_ibs_fetch_lat_format = internal global %struct.attribute_group { ptr @.str.15, %union.anon.42 { ptr @ibs_fetch_lat_is_visible }, ptr null, ptr null, %union.anon.43 { ptr @ibs_fetch_lat_format_attrs }, ptr null }, align 8
@fetch_l3missonly_attrs = internal global [2 x ptr] [ptr @fetch_l3missonly, ptr null], align 16
@.str.23 = private unnamed_addr constant [11 x i8] c"l3missonly\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"config:59\00", align 1
@fetch_l3missonly = internal global { { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 }, i64, ptr } { { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 } { { ptr, i16, [6 x i8] } { ptr @.str.23, i16 292, [6 x i8] zeroinitializer }, %union.anon.44 { ptr @perf_event_sysfs_show }, %union.anon.45 zeroinitializer }, i64 0, ptr @.str.24 }, align 8
@zen4_ibs_extensions_attrs = internal global [2 x ptr] [ptr @zen4_ibs_extensions, ptr null], align 16
@.str.26 = private unnamed_addr constant [20 x i8] c"zen4_ibs_extensions\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@zen4_ibs_extensions = internal global { { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 }, i64, ptr } { { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 } { { ptr, i16, [6 x i8] } { ptr @.str.26, i16 292, [6 x i8] zeroinitializer }, %union.anon.44 { ptr @perf_event_sysfs_show }, %union.anon.45 zeroinitializer }, i64 0, ptr @.str.27 }, align 8
@ibs_fetch_lat_cap_attrs = internal global [2 x ptr] [ptr @ibs_fetch_lat_cap, ptr null], align 16
@.str.29 = private unnamed_addr constant [9 x i8] c"fetchlat\00", align 1
@ibs_fetch_lat_cap = internal global { { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 }, i64, ptr } { { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 } { { ptr, i16, [6 x i8] } { ptr @.str.29, i16 292, [6 x i8] zeroinitializer }, %union.anon.44 { ptr @perf_event_sysfs_show }, %union.anon.45 zeroinitializer }, i64 0, ptr @.str.27 }, align 8
@ibs_fetch_lat_format_attrs = internal global [2 x ptr] [ptr @ibs_fetch_lat_format, ptr null], align 16
@.str.31 = private unnamed_addr constant [13 x i8] c"config1:0-10\00", align 1
@ibs_fetch_lat_format = internal global { { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 }, i64, ptr } { { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 } { { ptr, i16, [6 x i8] } { ptr @.str.29, i16 292, [6 x i8] zeroinitializer }, %union.anon.44 { ptr @perf_event_sysfs_show }, %union.anon.45 zeroinitializer }, i64 0, ptr @.str.31 }, align 8
@op_attr_groups = internal global [3 x ptr] [ptr @group_op_formats, ptr @empty_caps_group, ptr null], align 16
@op_attr_update = internal global [10 x ptr] [ptr @group_cnt_ctl, ptr @group_op_l3missonly, ptr @group_zen4_ibs_extensions, ptr @group_ibs_op_ldlat_cap, ptr @group_ibs_op_ldlat_format, ptr @group_ibs_op_dtlb_pgsize_cap, ptr @group_ibs_op_strmst_cap, ptr @group_ibs_op_strmst_format, ptr @group_ibs_op_rmtsocket_cap, ptr null], align 16
@.str.33 = private unnamed_addr constant [7 x i8] c"ibs_op\00", align 1
@group_op_formats = internal global %struct.attribute_group { ptr @.str.15, %union.anon.42 zeroinitializer, ptr null, ptr null, %union.anon.43 { ptr @op_attrs }, ptr null }, align 8
@op_attrs = internal global [2 x ptr] [ptr @format_attr_swfilt, ptr null], align 16
@group_cnt_ctl = internal global %struct.attribute_group { ptr @.str.15, %union.anon.42 { ptr @cnt_ctl_is_visible }, ptr null, ptr null, %union.anon.43 { ptr @cnt_ctl_attrs }, ptr null }, align 8
@group_op_l3missonly = internal global %struct.attribute_group { ptr @.str.15, %union.anon.42 { ptr @zen4_ibs_extensions_is_visible }, ptr null, ptr null, %union.anon.43 { ptr @op_l3missonly_attrs }, ptr null }, align 8
@group_ibs_op_ldlat_cap = internal global %struct.attribute_group { ptr @.str.22, %union.anon.42 { ptr @ibs_op_ldlat_is_visible }, ptr null, ptr null, %union.anon.43 { ptr @ibs_op_ldlat_cap_attrs }, ptr null }, align 8
@group_ibs_op_ldlat_format = internal global %struct.attribute_group { ptr @.str.15, %union.anon.42 { ptr @ibs_op_ldlat_is_visible }, ptr null, ptr null, %union.anon.43 { ptr @ibs_op_ldlat_format_attrs }, ptr null }, align 8
@group_ibs_op_dtlb_pgsize_cap = internal global %struct.attribute_group { ptr @.str.22, %union.anon.42 { ptr @ibs_op_dtlb_pgsize_is_visible }, ptr null, ptr null, %union.anon.43 { ptr @ibs_op_dtlb_pgsize_cap_attrs }, ptr null }, align 8
@group_ibs_op_strmst_cap = internal global %struct.attribute_group { ptr @.str.22, %union.anon.42 { ptr @ibs_op_strmst_is_visible }, ptr null, ptr null, %union.anon.43 { ptr @ibs_op_strmst_cap_attrs }, ptr null }, align 8
@group_ibs_op_strmst_format = internal global %struct.attribute_group { ptr @.str.15, %union.anon.42 { ptr @ibs_op_strmst_is_visible }, ptr null, ptr null, %union.anon.43 { ptr @ibs_op_strmst_format_attrs }, ptr null }, align 8
@group_ibs_op_rmtsocket_cap = internal global %struct.attribute_group { ptr @.str.22, %union.anon.42 { ptr @ibs_op_rmtsocket_is_visible }, ptr null, ptr null, %union.anon.43 { ptr @ibs_op_rmtsocket_cap_attrs }, ptr null }, align 8
@cnt_ctl_attrs = internal global [2 x ptr] [ptr @format_attr_cnt_ctl, ptr null], align 16
@.str.34 = private unnamed_addr constant [8 x i8] c"cnt_ctl\00", align 1
@format_attr_cnt_ctl = internal global { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 } { { ptr, i16, [6 x i8] } { ptr @.str.34, i16 292, [6 x i8] zeroinitializer }, %union.anon.44 { ptr @cnt_ctl_show }, %union.anon.45 zeroinitializer }, align 8
@.str.36 = private unnamed_addr constant [11 x i8] c"config:19\0A\00", align 1
@op_l3missonly_attrs = internal global [2 x ptr] [ptr @op_l3missonly, ptr null], align 16
@.str.37 = private unnamed_addr constant [10 x i8] c"config:16\00", align 1
@op_l3missonly = internal global { { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 }, i64, ptr } { { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 } { { ptr, i16, [6 x i8] } { ptr @.str.23, i16 292, [6 x i8] zeroinitializer }, %union.anon.44 { ptr @perf_event_sysfs_show }, %union.anon.45 zeroinitializer }, i64 0, ptr @.str.37 }, align 8
@ibs_op_ldlat_cap_attrs = internal global [2 x ptr] [ptr @ibs_op_ldlat_cap, ptr null], align 16
@.str.39 = private unnamed_addr constant [6 x i8] c"ldlat\00", align 1
@ibs_op_ldlat_cap = internal global { { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 }, i64, ptr } { { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 } { { ptr, i16, [6 x i8] } { ptr @.str.39, i16 292, [6 x i8] zeroinitializer }, %union.anon.44 { ptr @perf_event_sysfs_show }, %union.anon.45 zeroinitializer }, i64 0, ptr @.str.27 }, align 8
@ibs_op_ldlat_format_attrs = internal global [2 x ptr] [ptr @ibs_op_ldlat_format, ptr null], align 16
@.str.41 = private unnamed_addr constant [13 x i8] c"config1:0-11\00", align 1
@ibs_op_ldlat_format = internal global { { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 }, i64, ptr } { { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 } { { ptr, i16, [6 x i8] } { ptr @.str.39, i16 292, [6 x i8] zeroinitializer }, %union.anon.44 { ptr @perf_event_sysfs_show }, %union.anon.45 zeroinitializer }, i64 0, ptr @.str.41 }, align 8
@ibs_op_dtlb_pgsize_cap_attrs = internal global [2 x ptr] [ptr @ibs_op_dtlb_pgsize_cap, ptr null], align 16
@.str.43 = private unnamed_addr constant [12 x i8] c"dtlb_pgsize\00", align 1
@ibs_op_dtlb_pgsize_cap = internal global { { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 }, i64, ptr } { { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 } { { ptr, i16, [6 x i8] } { ptr @.str.43, i16 292, [6 x i8] zeroinitializer }, %union.anon.44 { ptr @perf_event_sysfs_show }, %union.anon.45 zeroinitializer }, i64 0, ptr @.str.27 }, align 8
@ibs_op_strmst_cap_attrs = internal global [2 x ptr] [ptr @ibs_op_strmst_cap, ptr null], align 16
@.str.45 = private unnamed_addr constant [7 x i8] c"strmst\00", align 1
@ibs_op_strmst_cap = internal global { { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 }, i64, ptr } { { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 } { { ptr, i16, [6 x i8] } { ptr @.str.45, i16 292, [6 x i8] zeroinitializer }, %union.anon.44 { ptr @perf_event_sysfs_show }, %union.anon.45 zeroinitializer }, i64 0, ptr @.str.27 }, align 8
@ibs_op_strmst_format_attrs = internal global [2 x ptr] [ptr @ibs_op_strmst_format, ptr null], align 16
@.str.47 = private unnamed_addr constant [11 x i8] c"config1:12\00", align 1
@ibs_op_strmst_format = internal global { { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 }, i64, ptr } { { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 } { { ptr, i16, [6 x i8] } { ptr @.str.45, i16 292, [6 x i8] zeroinitializer }, %union.anon.44 { ptr @perf_event_sysfs_show }, %union.anon.45 zeroinitializer }, i64 0, ptr @.str.47 }, align 8
@ibs_op_rmtsocket_cap_attrs = internal global [2 x ptr] [ptr @ibs_op_rmtsocket_cap, ptr null], align 16
@.str.49 = private unnamed_addr constant [10 x i8] c"rmtsocket\00", align 1
@ibs_op_rmtsocket_cap = internal global { { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 }, i64, ptr } { { { ptr, i16, [6 x i8] }, %union.anon.44, %union.anon.45 } { { ptr, i16, [6 x i8] } { ptr @.str.49, i16 292, [6 x i8] zeroinitializer }, %union.anon.44 { ptr @perf_event_sysfs_show }, %union.anon.45 zeroinitializer }, i64 0, ptr @.str.27 }, align 8
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_addressable_amd_ibs_init_679, ptr @__UNIQUE_ID_addressable_get_ibs_caps_674, ptr @_kbl_addr_perf_ibs_nmi_handler, ptr @force_ibs_eilvt_setup.__UNIQUE_ID_addressable___SCK__preempt_schedule_676, ptr @force_ibs_eilvt_setup.__UNIQUE_ID_addressable___SCK__preempt_schedule_677, ptr @ibs_eilvt_valid.__UNIQUE_ID_addressable___SCK__preempt_schedule_675], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 -95, -1) i32 @forward_event_to_ibs(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 216        ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 256
  %i.c = load i64, ptr %i.b, align 8
  %i.d = lshr i64 %i.c, 15
  %i.e = and i64 %i.d, 3
  %.off = add nsw i64 %i.e, -1
  %switch = icmp ult i64 %.off, 2
  br i1 %switch, label %bb.b, label %core_pmu_ibs_config.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 8
  switch i32 %i.f, label %core_pmu_ibs_config.exit.thread [
    i32 0, label %bb.c
    i32 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 224
  %i.h = load i64, ptr %i.g, align 8
  %cond.i = icmp eq i64 %i.h, 0
  br i1 %cond.i, label %core_pmu_ibs_config.exit, label %core_pmu_ibs_config.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 224
  %i.j = load i64, ptr %i.i, align 8
  switch i64 %i.j, label %core_pmu_ibs_config.exit.thread [
    i64 118, label %core_pmu_ibs_config.exit
    i64 193, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %core_pmu_ibs_config.exit

core_pmu_ibs_config.exit:                         ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i = phi i64 [ 524288, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ]
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @perf_ibs_op, i64 88), align 8
  store i32 %i.k, ptr %i.a, align 8
  %i.l = getelementptr i8, ptr %0, i64 224
  store i64 %.sink.i, ptr %i.l, align 8
  br label %core_pmu_ibs_config.exit.thread

core_pmu_ibs_config.exit.thread:                  ; preds = %bb.b, %bb.d, %bb.c, %bb.a, %core_pmu_ibs_config.exit
  %.0 = phi i32 [ -2, %core_pmu_ibs_config.exit ], [ -95, %bb.a ], [ -2, %bb.c ], [ -2, %bb.d ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 3) i32 @perf_ibs_nmi_handler(i32 %0, ptr noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @sched_clock() #18
  %i.b = tail call fastcc i32 @perf_ibs_handle_irq(ptr noundef nonnull @perf_ibs_fetch, ptr noundef %1) #19, !srcloc !31
  %i.c = tail call fastcc i32 @perf_ibs_handle_irq(ptr noundef nonnull @perf_ibs_op, ptr noundef %1) #19, !srcloc !32
  %i.d = add nuw nsw i32 %i.c, %i.b               ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) getelementptr inbounds nuw (i8, ptr @irq_stat, i64 12), ptr nonnull elementtype(i32) getelementptr inbounds nuw (i8, ptr @irq_stat, i64 12)) #20, !srcloc !33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call i64 @sched_clock() #18
  %i.f = sub i64 %i.e, %i.a
  tail call void @perf_sample_event_took(i64 noundef %i.f) #18
  ret i32 %i.d
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none)
define dso_local i32 @get_ibs_caps() #3 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @ibs_caps, align 4
  ret i32 %i.a
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @amd_ibs_init() #4 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @__get_ibs_caps() #21, !srcloc !34 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @ibs_eilvt_setup() #19, !srcloc !35
  %i.b = tail call fastcc i32 @ibs_eilvt_valid() #19, !srcloc !36
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @register_syscore(ptr noundef nonnull @perf_ibs_syscore) #18
  store i32 %i.a, ptr @ibs_caps, align 4
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !37
  %i.c = tail call i32 @__cpuhp_setup_state(i32 noundef 105, ptr noundef nonnull @.str.6, i1 noundef zeroext true, ptr noundef nonnull @x86_pmu_amd_ibs_starting_cpu, ptr noundef nonnull @x86_pmu_amd_ibs_dying_cpu, i1 noundef zeroext false) #18 ; 0 uses
  %i.d = tail call fastcc i32 @perf_event_ibs_init() #21, !srcloc !38
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ -19, %bb.a ], [ -22, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef range(i32 -95, 1) i32 @perf_ibs_init(ptr nofree noundef captures(address) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 368
  %i.b = getelementptr i8, ptr %0, i64 216
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @perf_ibs_fetch, i64 88), align 8
  %i.e = icmp ne i32 %i.d, %i.c                   ; 5 uses
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @perf_ibs_op, i64 88), align 8
  %i.g = icmp eq i32 %i.f, %i.c                   ; 3 uses
  %perf_ibs_op..i = select i1 %i.g, ptr @perf_ibs_op, ptr null ; 3 uses
  %.0.i149 = select i1 %i.e, ptr %perf_ibs_op..i, ptr @perf_ibs_fetch ; 14 uses
  %.not = icmp eq ptr %.0.i149, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 224
  %i.i = load i64, ptr %i.h, align 8              ; 7 uses
  %i.j = getelementptr i8, ptr %0, i64 432        ; 15 uses
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %0, i64 440        ; 7 uses
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %0, i64 152
  %i.m = load ptr, ptr %i.l, align 8
  %.not123 = icmp eq ptr %i.m, %.0.i149
  br i1 %.not123, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %.0.i149, i64 328
  %i.o = load i64, ptr %i.n, align 8
  %i.p = xor i64 %i.o, -1
  %i.q = and i64 %i.i, %i.p
  %.not124 = icmp eq i64 %i.q, 0
  br i1 %.not124, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %0, i64 240
  %.val = load i64, ptr %i.r, align 8
  %i.s = and i64 %.val, 2048
  %.not163 = icmp eq i64 %i.s, 0
  br i1 %.not163, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %0, i64 256        ; 5 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = and i64 %i.u, 1572992
  %or.cond146 = icmp eq i64 %i.v, 0
  br i1 %or.cond146, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %0, i64 144
  %i.x = load ptr, ptr %i.w, align 8              ; 5 uses
  %i.y = icmp eq ptr %i.x, %0
  br i1 %i.y, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr i8, ptr %i.x, i64 152
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.aa, %.0.i149
  br i1 %i.ab, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.x, i64 144
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = icmp eq ptr %i.ad, %i.x
  br i1 %i.ae, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr i8, ptr %i.x, i64 16      ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.pn.in.i = phi ptr [ %i.af, %bb.i ], [ %.pn.i, %bb.k ]
  %.pn.i = load ptr, ptr %.pn.in.i, align 8       ; 3 uses
  %.not.i = icmp eq ptr %.pn.i, %i.af
  br i1 %.not.i, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr i8, ptr %.pn.i, i64 136
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = icmp eq ptr %i.ah, %.0.i149
  br i1 %i.ai, label %.critedge, label %bb.j, !llvm.loop !39

.loopexit:                                        ; preds = %bb.j, %bb.h, %bb.f
  %i.aj = tail call i32 @perf_allow_kernel() #18
  %.not129 = icmp eq i32 %i.aj, 0
  br i1 %.not129, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.ak = getelementptr i8, ptr %0, i64 428       ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = or i32 %i.al, 2097152
  store i32 %i.am, ptr %i.ak, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit
  %i.an = load i32, ptr @ibs_caps, align 4        ; 4 uses
  %i.ao = and i32 %i.an, 8192
  %.not130 = icmp eq i32 %i.ao, 0
  br i1 %.not130, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr i8, ptr %.0.i149, i64 352
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = xor i64 %i.aq, -1
  %i.as = load i64, ptr %i.j, align 8
  %i.at = and i64 %i.as, %i.ar
  store i64 %i.at, ptr %i.j, align 8
  %i.au = getelementptr i8, ptr %.0.i149, i64 324
  %i.av = load i32, ptr %i.au, align 4
  store i32 %i.av, ptr %i.k, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aw = and i32 %i.an, 32768
  %.not131 = icmp eq i32 %i.aw, 0
  br i1 %.not131, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = load i64, ptr %i.t, align 8             ; 3 uses
  %i.ay = and i64 %i.ax, 32
  %.not136 = icmp eq i64 %i.ay, 0                 ; 2 uses
  br i1 %i.e, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load i64, ptr %i.j, align 8
  %i.ba = or i64 %i.az, 32
  store i64 %i.ba, ptr %i.j, align 8
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @perf_ibs_fetch, i64 324), align 4
  store i32 %i.bb, ptr %i.k, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bc = and i64 %i.ax, 16
  %.not139 = icmp eq i64 %i.bc, 0
  br i1 %.not139, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = load i64, ptr %i.j, align 8
  %i.be = or i64 %i.bd, 64
  store i64 %i.be, ptr %i.j, align 8
  br label %.sink.split

bb.u:                                             ; preds = %bb.p
  br i1 %.not136, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = load i64, ptr %i.j, align 8
  %i.bg = or i64 %i.bf, 4
  store i64 %i.bg, ptr %i.j, align 8
  %1 = getelementptr i8, ptr %perf_ibs_op..i, i64 324
  %i.bh = load i32, ptr %1, align 4
  store i32 %i.bh, ptr %i.k, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bi = and i64 %i.ax, 16
  %.not137 = icmp eq i64 %i.bi, 0
  br i1 %.not137, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bj = load i64, ptr %i.j, align 8
  %i.bk = or i64 %i.bj, 2
  store i64 %i.bk, ptr %i.j, align 8
  %2 = getelementptr i8, ptr %perf_ibs_op..i, i64 324
  br label %.sink.split

bb.y:                                             ; preds = %bb.o
  %i.bl = getelementptr i8, ptr %0, i64 280
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = and i64 %i.bm, 1
  %.not132 = icmp eq i64 %i.bn, 0
  br i1 %.not132, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bo = load i64, ptr %i.t, align 8
  %i.bp = and i64 %i.bo, 112
  %or.cond148 = icmp eq i64 %i.bp, 0
  br i1 %or.cond148, label %bb.aa, label %.critedge

.sink.split:                                      ; preds = %bb.x, %bb.t
  %.sink.in = phi ptr [ getelementptr inbounds nuw (i8, ptr @perf_ibs_fetch, i64 324), %bb.t ], [ %2, %bb.x ]
  %.sink = load i32, ptr %.sink.in, align 4
  store i32 %.sink, ptr %i.k, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %bb.z, %bb.y, %bb.s, %bb.w
  %i.bq = getelementptr i8, ptr %0, i64 520       ; 5 uses
  %i.br = load i64, ptr %i.bq, align 8            ; 2 uses
  %.not140 = icmp eq i64 %i.br, 0
  br i1 %.not140, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bs = getelementptr i8, ptr %.0.i149, i64 336
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = and i64 %i.bt, %i.i
  %.not143 = icmp eq i64 %i.bu, 0
  br i1 %.not143, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.bv = load i64, ptr %i.t, align 8
  %i.bw = and i64 %i.bv, 1024
  %.not144 = icmp eq i64 %i.bw, 0
  br i1 %.not144, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bx = getelementptr i8, ptr %.0.i149, i64 368
  %i.by = load i16, ptr %i.bx, align 8
  %i.bz = zext i16 %i.by to i64
  store i64 %i.bz, ptr %i.bq, align 8
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  %i.ca = and i64 %i.br, -16                      ; 2 uses
  store i64 %i.ca, ptr %i.bq, align 8
  %i.cb = getelementptr i8, ptr %.0.i149, i64 368
  %i.cc = load i16, ptr %i.cb, align 8
  %i.cd = zext i16 %i.cc to i64
  %i.ce = icmp ult i64 %i.ca, %i.cd
  br i1 %i.ce, label %.critedge, label %bb.ah

bb.af:                                            ; preds = %bb.aa
  %i.cf = load i64, ptr %i.t, align 8
  %i.cg = and i64 %i.cf, 1024
  %.not141 = icmp eq i64 %i.cg, 0
  br i1 %.not141, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  %i.ch = select i1 %i.e, i1 %i.g, i1 false
  %i.ci = shl i64 %i.i, 4
  %i.cj = and i64 %i.ci, 1048560
  %i.ck = and i32 %i.an, 64
  %.not142 = icmp ne i32 %i.ck, 0
  %or.cond172.not = and i1 %.not142, %i.ch
  %i.cl = and i64 %i.i, 133169152
  %i.cm = select i1 %or.cond172.not, i64 %i.cl, i64 0
  %.0110 = or disjoint i64 %i.cj, %i.cm           ; 3 uses
  %i.cn = getelementptr i8, ptr %.0.i149, i64 336
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = xor i64 %i.co, -1
  %i.cq = and i64 %i.i, %i.cp
  %i.cr = getelementptr i8, ptr %0, i64 232
  store i64 %.0110, ptr %i.cr, align 8
  store i64 %.0110, ptr %i.bq, align 8
  %i.cs = getelementptr i8, ptr %.0.i149, i64 368
  %i.ct = load i16, ptr %i.cs, align 8
  %i.cu = zext i16 %i.ct to i64
  %.not164 = icmp samesign ult i64 %.0110, %i.cu
  br i1 %.not164, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad, %bb.ae
  %.1115 = phi i64 [ %i.i, %bb.ad ], [ %i.i, %bb.ae ], [ %i.cq, %bb.ag ] ; 3 uses
  %i.cv = select i1 %i.e, i1 %i.g, i1 false       ; 2 uses
  %i.cw = and i32 %i.an, 4096
  %.not.i151 = icmp ne i32 %i.cw, 0
  %or.cond162.not = and i1 %i.cv, %.not.i151
  br i1 %or.cond162.not, label %perf_ibs_ldlat_event.exit, label %perf_ibs_ldlat_event.exit.thread

perf_ibs_ldlat_event.exit:                        ; preds = %bb.ah
  %i.cx = getelementptr i8, ptr %0, i64 272
  %i.cy = load i64, ptr %i.cx, align 8            ; 2 uses
  %i.cz = and i64 %i.cy, 4095                     ; 2 uses
  %.not165 = icmp eq i64 %i.cz, 0
  br i1 %.not165, label %perf_ibs_ldlat_event.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %perf_ibs_ldlat_event.exit
  %i.da = add nsw i64 %i.cz, -128
  %or.cond = icmp ult i64 %i.da, 1921
  br i1 %or.cond, label %bb.aj, label %.critedge

bb.aj:                                            ; preds = %bb.ai
  %i.db = shl i64 %i.cy, 52
  %i.dc = and i64 %i.db, 8646911284551352320
  %i.dd = add nuw i64 %i.dc, 8646911284551352320
  %i.de = or i64 %i.dd, %.1115                    ; 2 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 101, i32 32, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 60)) #20
          to label %bb.ak [label %bb.ak, label %_static_cpu_has.exit], !srcloc !40

_static_cpu_has.exit:                             ; preds = %bb.aj
  %i.df = or i64 %i.de, -9223372036854775808
  br label %perf_ibs_ldlat_event.exit.thread

bb.ak:                                            ; preds = %bb.aj, %bb.aj
  %i.dg = or i64 %i.de, -9223372036854710272
  br label %perf_ibs_ldlat_event.exit.thread

perf_ibs_ldlat_event.exit.thread:                 ; preds = %_static_cpu_has.exit, %bb.ak, %bb.ah, %perf_ibs_ldlat_event.exit
  %.4118 = phi i64 [ %.1115, %bb.ah ], [ %.1115, %perf_ibs_ldlat_event.exit ], [ %i.dg, %bb.ak ], [ %i.df, %_static_cpu_has.exit ]
  br i1 %i.e, label %perf_ibs_fetch_lat_event.exit.thread, label %bb.al

bb.al:                                            ; preds = %perf_ibs_ldlat_event.exit.thread
  %i.dh = load i32, ptr @ibs_caps, align 4
  %i.di = and i32 %i.dh, 16384
  %.not.i152 = icmp eq i32 %i.di, 0
  br i1 %.not.i152, label %perf_ibs_fetch_lat_event.exit.thread, label %perf_ibs_fetch_lat_event.exit

perf_ibs_fetch_lat_event.exit:                    ; preds = %bb.al
  %i.dj = getelementptr i8, ptr %0, i64 272
  %i.dk = load i64, ptr %i.dj, align 8            ; 2 uses
  %i.dl = and i64 %i.dk, 2047                     ; 2 uses
  %.not166 = icmp eq i64 %i.dl, 0
  br i1 %.not166, label %perf_ibs_fetch_lat_event.exit.thread, label %bb.am

bb.am:                                            ; preds = %perf_ibs_fetch_lat_event.exit
  %i.dm = add nsw i64 %i.dl, -128
  %or.cond5 = icmp ult i64 %i.dm, 1793
  br i1 %or.cond5, label %bb.an, label %.critedge

bb.an:                                            ; preds = %bb.am
  %i.dn = load i32, ptr getelementptr inbounds nuw (i8, ptr @perf_ibs_fetch, i64 324), align 4
  store i32 %i.dn, ptr %i.k, align 8
  %i.do = lshr i64 %i.dk, 6
  %i.dp = and i64 %i.do, 30
  %i.dq = load i64, ptr %i.j, align 8
  %i.dr = or i64 %i.dq, %i.dp
  store i64 %i.dr, ptr %i.j, align 8
  br label %perf_ibs_fetch_lat_event.exit.thread

perf_ibs_fetch_lat_event.exit.thread:             ; preds = %perf_ibs_ldlat_event.exit.thread, %bb.al, %bb.an, %perf_ibs_fetch_lat_event.exit
  br i1 %i.cv, label %bb.ao, label %perf_ibs_strmst_event.exit.thread

bb.ao:                                            ; preds = %perf_ibs_fetch_lat_event.exit.thread
  %i.ds = load i32, ptr @ibs_caps, align 4
  %i.dt = and i32 %i.ds, 65536
  %.not.i153 = icmp eq i32 %i.dt, 0
  br i1 %.not.i153, label %perf_ibs_strmst_event.exit.thread, label %perf_ibs_strmst_event.exit

perf_ibs_strmst_event.exit:                       ; preds = %bb.ao
  %i.du = getelementptr i8, ptr %0, i64 272
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = and i64 %i.dv, 4096
  %.not167 = icmp eq i64 %i.dw, 0
  br i1 %.not167, label %perf_ibs_strmst_event.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %perf_ibs_strmst_event.exit
  %i.dx = getelementptr i8, ptr %.0.i149, i64 324
  %i.dy = load i32, ptr %i.dx, align 4
  store i32 %i.dy, ptr %i.k, align 8
  %i.dz = load i64, ptr %i.j, align 8
  %i.ea = or i64 %i.dz, 8
  store i64 %i.ea, ptr %i.j, align 8
  br label %perf_ibs_strmst_event.exit.thread

perf_ibs_strmst_event.exit.thread:                ; preds = %perf_ibs_fetch_lat_event.exit.thread, %bb.ao, %bb.ap, %perf_ibs_strmst_event.exit
  %i.eb = load i64, ptr %i.bq, align 8            ; 2 uses
  %i.ec = getelementptr i8, ptr %0, i64 528
  store i64 %i.eb, ptr %i.ec, align 8
  %i.ed = getelementptr i8, ptr %0, i64 536
  store volatile i64 %i.eb, ptr %i.ed, align 8
  %i.ee = getelementptr i8, ptr %.0.i149, i64 320
  %i.ef = load i32, ptr %i.ee, align 8
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr i8, ptr %0, i64 400
  store i64 %i.eg, ptr %i.eh, align 8
  store i64 %.4118, ptr %i.a, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.af, %bb.ai, %bb.g, %bb.am, %bb.ae, %bb.ab, %bb.z, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.ag, %perf_ibs_strmst_event.exit.thread
  %.5 = phi i32 [ -2, %bb.a ], [ -2, %bb.b ], [ -22, %bb.c ], [ -95, %bb.d ], [ -22, %bb.e ], [ -22, %bb.z ], [ 0, %perf_ibs_strmst_event.exit.thread ], [ -22, %bb.am ], [ -22, %bb.ai ], [ -22, %bb.ab ], [ -22, %bb.ag ], [ -22, %bb.ae ], [ -22, %bb.g ], [ -22, %bb.af ], [ -22, %bb.k ]
  ret i32 %.5
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -28, 1) i32 @perf_ibs_add(ptr noundef %0, i32 noundef %1) #2 align 16 prefalign(16) {
bb.a:
end_hunk_0
