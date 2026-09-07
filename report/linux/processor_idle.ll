Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/processor_idle?download=true
inline.NumInlined: 46
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0
@.str.2 = private unnamed_addr constant [37 x i8] c"\013ACPI: CPU%u: Invalid FFH LPI data\0A\00", align 1
@osc_pc_lpi_support_confirmed = external dso_local local_unnamed_addr global i8, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_LPI\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"ACPI0010\00", align 1
@__const.acpi_processor_evaluate_lpi.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@.str.5 = private unnamed_addr constant [51 x i8] c"\014ACPI: Limiting number of LPI states to max (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"\014ACPI: Please increase ACPI_PROCESSOR_MAX_POWER if needed.\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s+%s\00", align 1
@acpi_gbl_FADT = external dso_local local_unnamed_addr global %struct.acpi_table_fadt, align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"ACPI P_LVL2 IOPORT 0x%x\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"ACPI P_LVL3 IOPORT 0x%x\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"ACPI HLT\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"\015ACPI: FW issue: working around C-state latencies out of order\0A\00", align 1
@acpi_processor_power_verify_c3.bm_check_flag = internal unnamed_addr global i32 -1, align 4
@acpi_processor_power_verify_c3.bm_control_flag = internal unnamed_addr global i32 -1, align 4
@errata = external dso_local local_unnamed_addr global %struct.acpi_processor_errata, align 4
@local_apic_timer_c2_ok = external dso_local local_unnamed_addr global i32, align 4
@cpu_info = external dso_local global %struct.cpuinfo_x86, section ".data..percpu..read_mostly", align 8
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.12 = private unnamed_addr constant [18 x i8] c"TSC halts in idle\00", align 1
@acpi_cstate = internal global [10 x ptr] zeroinitializer, section ".data..percpu", align 16
@processor_power_dmi_table = internal constant [4 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr @set_max_cstate, ptr @.str.14, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Phoenix Technologies LTD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 2, [79 x i8] c"SHE845M0.86C.0013.D.0302131307\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr inttoptr (i64 2 to ptr) }, %struct.dmi_system_id { ptr @set_max_cstate, ptr @.str.15, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Hewlett-Packard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Pavilion zv5000 (DS502A#ABA)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr inttoptr (i64 1 to ptr) }, %struct.dmi_system_id { ptr @set_max_cstate, ptr @.str.16, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"ASUSTeK Computer Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"L8400B series Notebook PC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr inttoptr (i64 1 to ptr) }, %struct.dmi_system_id zeroinitializer], align 16
@.str.13 = private unnamed_addr constant [45 x i8] c"\015ACPI: processor limited to max C-state %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Clevo 5600D\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Pavilion zv5000\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Asus L8400B\00", align 1
@.str.17 = private unnamed_addr constant [92 x i8] c"\015ACPI: %s detected - limiting to C%ld max_cstate. Override with \22processor.max_cstate=%d\22\0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"LPI-%d\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"C%d\00", align 1
@acpi_idle_enter_bm.safe_cx = internal global { i8, i8, [2 x i8], i32, i8, i8, [2 x i8], i32, i8, [32 x i8], [3 x i8] } { i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i8 2, i8 0, [2 x i8] zeroinitializer, i32 0, i8 0, [32 x i8] zeroinitializer, [3 x i8] zeroinitializer }, align 4
@c3_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@c3_cpu_count = internal unnamed_addr global i32 0, align 4
@pv_info = external dso_local local_unnamed_addr global %struct.pv_info, align 8
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@current_task = external dso_local global ptr, section ".data..percpu..hot..current_task", align 8
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_modinfo_680, ptr @__UNIQUE_ID_modinfo_681, ptr @__UNIQUE_ID_modinfo_682, ptr @__UNIQUE_ID_modinfo_683, ptr @__UNIQUE_ID_modinfo_689, ptr @__param_bm_check_disable, ptr @__param_latency_factor, ptr @__param_max_cstate, ptr @__param_nocst], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @acpi_idle_rescan_dead_smt_siblings() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @cpuidle_get_driver() #15
  %i.b = icmp eq ptr %i.a, @acpi_idle_driver
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @arch_cpu_rescan_dead_smt_siblings() #15 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @cpuidle_get_driver() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @arch_cpu_rescan_dead_smt_siblings() local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak dso_local i32 @acpi_processor_ffh_lpi_probe(i32 noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  ret i32 -95
}

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define weak dso_local i32 @acpi_processor_ffh_lpi_enter(ptr noundef %0) local_unnamed_addr #2 section ".cpuidle.text" align 16 prefalign(16) {
bb.a:
  ret i32 -19
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @acpi_processor_hotplug(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, ptrtoint (ptr @acpi_cpuidle_device to i64)
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = load i64, ptr @boot_option_idle_override, align 8
  %i.j = and i64 %i.i, -3
  %.not = icmp eq i64 %i.j, 1
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.l = load i16, ptr %i.k, align 8
  %i.m = and i16 %i.l, 256
  %i.n = icmp ne i16 %i.m, 0
  %i.o = icmp ne ptr %i.h, null
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.c, label %bb.ac

bb.c:                                             ; preds = %bb.b
  tail call void @cpuidle_pause_and_lock() #15
  tail call void @cpuidle_disable_device(ptr noundef nonnull %i.h) #15
  %i.p = tail call fastcc i32 @acpi_processor_get_power_info(ptr noundef %0) #16, !srcloc !22 ; 2 uses
  %.not16 = icmp eq i32 %i.p, 0
  br i1 %.not16, label %bb.d, label %bb.ab

bb.d:                                             ; preds = %bb.c
  %i.q = load i16, ptr %i.k, align 8              ; 2 uses
  %i.r = and i16 %i.q, 1
  %.not17 = icmp eq i16 %i.r, 0
  br i1 %.not17, label %bb.ab, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = and i16 %i.q, 257
  %or.cond.i = icmp eq i16 %i.s, 257
  br i1 %or.cond.i, label %bb.f, label %acpi_processor_setup_cpuidle_dev.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.a, align 8
  %i.u = getelementptr i8, ptr %i.h, i64 4        ; 8 uses
  store i32 %i.t, ptr %i.u, align 4
  %i.v = load i16, ptr %i.k, align 8
  %i.w = and i16 %i.v, 128
  %.not9.i = icmp eq i16 %i.w, 0
  br i1 %.not9.i, label %bb.g, label %acpi_processor_setup_cpuidle_dev.exit

bb.g:                                             ; preds = %bb.f
  %i.x = load i32, ptr @max_cstate, align 4       ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.h, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr @max_cstate, align 4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.g
  %i.z = phi i32 [ 1, %bb.h ], [ %i.x, %bb.g ]
  %i.aa = add i32 %i.z, -1                        ; 2 uses
  %umin.i.i = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 6)
  %i.ab = add nuw nsw i32 %umin.i.i, 2            ; 5 uses
  %i.ac = getelementptr i8, ptr %0, i64 100       ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 4
  %.not.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ae = load i32, ptr %i.u, align 4
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = add i64 %i.ah, ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @acpi_cstate, i64 8) to i64)
  %i.aj = inttoptr i64 %i.ai to ptr
  store ptr %i.ac, ptr %i.aj, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.1.i.i = phi i32 [ 2, %bb.i ], [ 1, %.lr.ph.i.i ] ; 3 uses
  %exitcond.not.i.i = icmp eq i32 %i.aa, 0
  br i1 %exitcond.not.i.i, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %0, i64 152       ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8
  %.not.i.i.1 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = zext nneg i32 %.1.i.i to i64
  %i.an = getelementptr [8 x i8], ptr @acpi_cstate, i64 %i.am
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = load i32, ptr %i.u, align 4
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = add i64 %i.as, %i.ao
  %i.au = inttoptr i64 %i.at to ptr
  store ptr %i.ak, ptr %i.au, align 8
  %i.av = add nuw nsw i32 %.1.i.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.i.i.1 = phi i32 [ %i.av, %bb.l ], [ %.1.i.i, %bb.k ] ; 3 uses
  %exitcond.not.i.i.1 = icmp eq i32 %i.ab, 3
  br i1 %exitcond.not.i.i.1, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr i8, ptr %0, i64 204       ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 4
  %.not.i.i.2 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.2, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = sext i32 %.1.i.i.1 to i64
  %i.az = getelementptr [8 x i8], ptr @acpi_cstate, i64 %i.ay
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = load i32, ptr %i.u, align 4
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = add i64 %i.be, %i.ba
  %i.bg = inttoptr i64 %i.bf to ptr
  store ptr %i.aw, ptr %i.bg, align 8
  %i.bh = add nsw i32 %.1.i.i.1, 1                ; 2 uses
  %1 = icmp eq i32 %i.bh, 10
  br i1 %1, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1.i.i.2 = phi i32 [ %i.bh, %bb.o ], [ %.1.i.i.1, %bb.n ] ; 3 uses
  %exitcond.not.i.i.2 = icmp eq i32 %i.ab, 4
  br i1 %exitcond.not.i.i.2, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr i8, ptr %0, i64 256       ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 8
  %.not.i.i.3 = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = sext i32 %.1.i.i.2 to i64
  %i.bl = getelementptr [8 x i8], ptr @acpi_cstate, i64 %i.bk
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = load i32, ptr %i.u, align 4
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = add i64 %i.bq, %i.bm
  %i.bs = inttoptr i64 %i.br to ptr
  store ptr %i.bi, ptr %i.bs, align 8
  %i.bt = add nsw i32 %.1.i.i.2, 1                ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 10
  br i1 %i.bu, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1.i.i.3 = phi i32 [ %i.bt, %bb.r ], [ %.1.i.i.2, %bb.q ] ; 3 uses
  %exitcond.not.i.i.3 = icmp eq i32 %i.ab, 5
  br i1 %exitcond.not.i.i.3, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr i8, ptr %0, i64 308       ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 4
  %.not.i.i.4 = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.4, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = sext i32 %.1.i.i.3 to i64
  %i.by = getelementptr [8 x i8], ptr @acpi_cstate, i64 %i.bx
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = load i32, ptr %i.u, align 4
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = add i64 %i.cd, %i.bz
  %i.cf = inttoptr i64 %i.ce to ptr
  store ptr %i.bv, ptr %i.cf, align 8
  %i.cg = add i32 %.1.i.i.3, 1                    ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 10
  br i1 %i.ch, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1.i.i.4 = phi i32 [ %i.cg, %bb.u ], [ %.1.i.i.3, %bb.t ] ; 3 uses
  %exitcond.not.i.i.4 = icmp eq i32 %i.ab, 6
  br i1 %exitcond.not.i.i.4, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = getelementptr i8, ptr %0, i64 360       ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 8
  %.not.i.i.5 = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.5, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ck = sext i32 %.1.i.i.4 to i64
  %i.cl = getelementptr [8 x i8], ptr @acpi_cstate, i64 %i.ck
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = load i32, ptr %i.u, align 4
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = add i64 %i.cq, %i.cm
  %i.cs = inttoptr i64 %i.cr to ptr
  store ptr %i.ci, ptr %i.cs, align 8
  %i.ct = add i32 %.1.i.i.4, 1                    ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 10
  br i1 %i.cu, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1.i.i.5 = phi i32 [ %i.ct, %bb.x ], [ %.1.i.i.4, %bb.w ]
  %exitcond.not.i.i.5 = icmp eq i32 %i.ab, 7
  br i1 %exitcond.not.i.i.5, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cv = getelementptr i8, ptr %0, i64 412       ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 4
  %.not.i.i.6 = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.6, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cx = sext i32 %.1.i.i.5 to i64
  %i.cy = getelementptr [8 x i8], ptr @acpi_cstate, i64 %i.cx
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = load i32, ptr %i.u, align 4
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = add i64 %i.dd, %i.cz
  %i.df = inttoptr i64 %i.de to ptr
  store ptr %i.cv, ptr %i.df, align 8
  br label %acpi_processor_setup_cpuidle_dev.exit

acpi_processor_setup_cpuidle_dev.exit:            ; preds = %bb.aa, %bb.j, %bb.m, %bb.o, %bb.p, %bb.r, %bb.s, %bb.u, %bb.v, %bb.x, %bb.y, %bb.z, %bb.e, %bb.f
  %i.dg = tail call i32 @cpuidle_enable_device(ptr noundef nonnull %i.h) #15
  br label %bb.ab

bb.ab:                                            ; preds = %acpi_processor_setup_cpuidle_dev.exit, %bb.d, %bb.c
  %.0 = phi i32 [ %i.p, %bb.c ], [ %i.dg, %acpi_processor_setup_cpuidle_dev.exit ], [ 0, %bb.d ]
  tail call void @cpuidle_resume_and_unlock() #15
  br label %bb.ac

bb.ac:                                            ; preds = %bb.b, %bb.a, %bb.ab
  %.013 = phi i32 [ 0, %bb.a ], [ %.0, %bb.ab ], [ -19, %bb.b ]
  ret i32 %.013
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpuidle_pause_and_lock() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpuidle_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @acpi_processor_get_power_info(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %1 = alloca [2 x %struct.acpi_lpi_states_array], align 16 ; 11 uses
  %i.b = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.c = getelementptr i8, ptr %0, i64 16         ; 7 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = tail call i32 @acpi_processor_ffh_lpi_probe(i32 noundef %i.d) #16
  %i.f = icmp ne i32 %i.e, -95
  %i.g = load i8, ptr @osc_pc_lpi_support_confirmed, align 1, !range !12
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond.i = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.i = tail call zeroext i1 @acpi_has_method(ptr noundef %i.b, ptr noundef nonnull @.str.3) #15
  br i1 %i.i, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !annotation !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %1, i8 0, i64 160, i1 false), !annotation !31
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  %i.k = call fastcc i32 @acpi_processor_evaluate_lpi(ptr noundef %i.j, ptr noundef nonnull %1) #16, !srcloc !32
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load i32, ptr %1, align 16               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  store i32 0, ptr %i.p, align 4
  %i.q = icmp sgt i32 %i.m, 0
  br i1 %i.q, label %.lr.ph61.i.i, label %flatten_lpi_states.exit.i

.lr.ph61.i.i:                                     ; preds = %bb.d
  %i.r = getelementptr i8, ptr %0, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph61.split.us.i.i

.lr.ph61.split.us.i.i:                            ; preds = %bb.g, %.lr.ph61.i.i
  %i.t = phi i32 [ %i.ae, %bb.g ], [ 0, %.lr.ph61.i.i ] ; 4 uses
  %.060.us.i.i = phi i32 [ %.4.ph.us.i.i, %bb.g ], [ 0, %.lr.ph61.i.i ] ; 5 uses
  %.03858.us.i.i = phi ptr [ %i.ag, %bb.g ], [ %i.o, %.lr.ph61.i.i ] ; 3 uses
  %.03957.us.i.i = phi i32 [ %i.af, %bb.g ], [ 0, %.lr.ph61.i.i ]
  %i.u = getelementptr i8, ptr %.03858.us.i.i, i64 8
  %i.v = load i32, ptr %i.u, align 8
  %i.w = and i32 %i.v, 1
  %.not.us.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.us.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph61.split.us.i.i
  %i.x = icmp ugt i32 %.060.us.i.i, 7
  br i1 %i.x, label %.split.us.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = zext nneg i32 %.060.us.i.i to i64
  %i.z = getelementptr [72 x i8], ptr %i.r, i64 %i.y ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(72) %i.z, ptr noundef align 8 dereferenceable(72) %.03858.us.i.i, i64 72, i1 false)
  %i.aa = add i32 %i.t, 1
  %i.ab = zext i32 %i.t to i64
  %i.ac = getelementptr [8 x i8], ptr %i.s, i64 %i.ab
  store ptr %i.z, ptr %i.ac, align 8
  %i.ad = add nuw nsw i32 %.060.us.i.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph61.split.us.i.i
  %i.ae = phi i32 [ %i.aa, %bb.f ], [ %i.t, %.lr.ph61.split.us.i.i ] ; 2 uses
  %.4.ph.us.i.i = phi i32 [ %i.ad, %bb.f ], [ %.060.us.i.i, %.lr.ph61.split.us.i.i ] ; 2 uses
  %i.af = add nuw nsw i32 %.03957.us.i.i, 1       ; 2 uses
  %i.ag = getelementptr i8, ptr %.03858.us.i.i, i64 72
  %exitcond69.not.i.i = icmp eq i32 %i.af, %i.m
  br i1 %exitcond69.not.i.i, label %flatten_lpi_states.exit.loopexit.i, label %.lr.ph61.split.us.i.i, !llvm.loop !23

.split.us.i.i:                                    ; preds = %bb.e
  store i32 %i.t, ptr %i.p, align 4
  %i.ah = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 8) #18 ; 0 uses
  %i.ai = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #18 ; 0 uses
  br label %flatten_lpi_states.exit.i

flatten_lpi_states.exit.loopexit.i:               ; preds = %bb.g
  store i32 %i.ae, ptr %i.p, align 4
  br label %flatten_lpi_states.exit.i

flatten_lpi_states.exit.i:                        ; preds = %flatten_lpi_states.exit.loopexit.i, %.split.us.i.i, %bb.d
  %.051.i.i = phi i32 [ %.060.us.i.i, %.split.us.i.i ], [ 0, %bb.d ], [ %.4.ph.us.i.i, %flatten_lpi_states.exit.loopexit.i ] ; 2 uses
  tail call void @kfree(ptr noundef %i.o) #15
  %i.aj = call i32 @acpi_get_parent(ptr noundef %i.j, ptr noundef nonnull %i.a) #15
  %.not4668.i = icmp eq i32 %i.aj, 0
  br i1 %.not4668.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %flatten_lpi_states.exit.i
  %i.ak = getelementptr i8, ptr %0, i64 48        ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %flatten_lpi_states.exit61.i, %.lr.ph.i
  %.071.i = phi i32 [ %.051.i.i, %.lr.ph.i ], [ %.051.i51.i, %flatten_lpi_states.exit61.i ] ; 7 uses
  %.03870.i = phi ptr [ %i.l, %.lr.ph.i ], [ %.03969.i, %flatten_lpi_states.exit61.i ] ; 6 uses
  %.03969.i = phi ptr [ %1, %.lr.ph.i ], [ %.03870.i, %flatten_lpi_states.exit61.i ] ; 4 uses
  %i.al = load ptr, ptr %i.a, align 8
  %i.am = call ptr @acpi_fetch_acpi_dev(ptr noundef %i.al) #15 ; 2 uses
  %.not47.i = icmp eq ptr %i.am, null
  br i1 %.not47.i, label %._crit_edge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.ao = call ptr @acpi_device_hid(ptr noundef nonnull %i.am) #15
  %i.ap = call i32 @strcmp(ptr noundef %i.ao, ptr noundef nonnull dereferenceable(9) @.str.4) #15
  %.not48.i = icmp eq i32 %i.ap, 0
  br i1 %.not48.i, label %bb.j, label %._crit_edge.i

bb.j:                                             ; preds = %bb.i
  %i.aq = call zeroext i1 @acpi_has_method(ptr noundef %i.an, ptr noundef nonnull @.str.3) #15
  br i1 %i.aq, label %bb.k, label %._crit_edge.i

bb.k:                                             ; preds = %bb.j
  %i.ar = call fastcc i32 @acpi_processor_evaluate_lpi(ptr noundef %i.an, ptr noundef %.03870.i) #16, !srcloc !33
  %.not49.i = icmp eq i32 %i.ar, 0
  br i1 %.not49.i, label %bb.l, label %._crit_edge.i

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %.03870.i, align 8        ; 3 uses
  %i.at = getelementptr i8, ptr %.03870.i, i64 8  ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr i8, ptr %.03870.i, i64 4  ; 5 uses
  store i32 0, ptr %i.av, align 4
  %i.aw = icmp sgt i32 %i.as, 0
  br i1 %i.aw, label %.lr.ph61.i52.i, label %flatten_lpi_states.exit61.i

.lr.ph61.i52.i:                                   ; preds = %bb.l
  %.not43.i.i = icmp eq ptr %.03969.i, null
  %i.ax = getelementptr i8, ptr %.03969.i, i64 4  ; 2 uses
  %i.ay = getelementptr i8, ptr %.03969.i, i64 16
  %i.az = getelementptr i8, ptr %.03870.i, i64 16 ; 2 uses
  br i1 %.not43.i.i, label %.lr.ph61.split.us.i54.i, label %.lr.ph61.split.i.i

.lr.ph61.split.us.i54.i:                          ; preds = %.lr.ph61.i52.i, %bb.o
  %.060.us.i55.i = phi i32 [ %.4.ph.us.i59.i, %bb.o ], [ %.071.i, %.lr.ph61.i52.i ] ; 5 uses
  %.03858.us.i56.i = phi ptr [ %i.bm, %bb.o ], [ %i.au, %.lr.ph61.i52.i ] ; 3 uses
  %.03957.us.i57.i = phi i32 [ %i.bl, %bb.o ], [ 0, %.lr.ph61.i52.i ]
  %i.ba = getelementptr i8, ptr %.03858.us.i56.i, i64 8
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = and i32 %i.bb, 1
  %.not.us.i58.i = icmp eq i32 %i.bc, 0
  br i1 %.not.us.i58.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph61.split.us.i54.i
  %i.bd = icmp ugt i32 %.060.us.i55.i, 7
  br i1 %i.bd, label %.split.us.i53.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = zext nneg i32 %.060.us.i55.i to i64
  %i.bf = getelementptr [72 x i8], ptr %i.ak, i64 %i.be ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(72) %i.bf, ptr noundef align 8 dereferenceable(72) %.03858.us.i56.i, i64 72, i1 false)
  %i.bg = load i32, ptr %i.av, align 4            ; 2 uses
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.av, align 4
  %i.bi = zext i32 %i.bg to i64
  %i.bj = getelementptr [8 x i8], ptr %i.az, i64 %i.bi
  store ptr %i.bf, ptr %i.bj, align 8
  %i.bk = add nuw nsw i32 %.060.us.i55.i, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph61.split.us.i54.i
  %.4.ph.us.i59.i = phi i32 [ %i.bk, %bb.n ], [ %.060.us.i55.i, %.lr.ph61.split.us.i54.i ] ; 2 uses
  %i.bl = add nuw nsw i32 %.03957.us.i57.i, 1     ; 2 uses
  %i.bm = getelementptr i8, ptr %.03858.us.i56.i, i64 72
  %exitcond69.not.i60.i = icmp eq i32 %i.bl, %i.as
  br i1 %exitcond69.not.i60.i, label %flatten_lpi_states.exit61.i, label %.lr.ph61.split.us.i54.i, !llvm.loop !23

.lr.ph61.split.i.i:                               ; preds = %.lr.ph61.i52.i, %.loopexit.i.i
end_hunk_0
begin_hunk_1_@acpi_processor_register_idle_driver:bb.a
  %i.dg = load i8, ptr %i.cv, align 1
  %i.dh = icmp eq i8 %i.dg, 3
  br i1 %i.dh, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.di = or disjoint i32 %i.df, 32
  store i32 %i.di, ptr %i.ct, align 8
  %i.dj = load i16, ptr %i.ag, align 8
  %i.dk = and i16 %i.dj, 32
  %.not42.i.i = icmp eq i16 %i.dk, 0
  br i1 %.not42.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = or disjoint i32 %i.df, 96
  store i32 %i.dl, ptr %i.ct, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.dm = add i32 %.046.i.i, 1                    ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 10
  br i1 %i.dn, label %.sink.split.i, label %._crit_edge51.i.i

._crit_edge51.i.i:                                ; preds = %bb.aa
  %.pre.i.i = load i32, ptr @max_cstate, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge51.i.i, %bb.r
  %i.do = phi i32 [ %.pre.i.i, %._crit_edge51.i.i ], [ %i.cc, %bb.r ] ; 2 uses
  %.1.i.i = phi i32 [ %i.dm, %._crit_edge51.i.i ], [ %.046.i.i, %bb.r ] ; 2 uses
  %indvars.iv.next.i15.i = add nuw nsw i64 %indvars.iv.i13.i, 1
  %i.dp = icmp samesign ult i64 %indvars.iv.i13.i, 7
  %i.dq = zext i32 %i.do to i64
  %i.dr = icmp samesign ult i64 %indvars.iv.i13.i, %i.dq
  %i.ds = select i1 %i.dp, i1 %i.dr, i1 false
  br i1 %i.ds, label %bb.r, label %.sink.split.i, !llvm.loop !38

.sink.split.i:                                    ; preds = %bb.ab, %bb.aa, %bb.q, %._crit_edge.loopexit.loopexit.i.i, %bb.l, %.preheader.i.i
  %.2.i.sink.i = phi i32 [ %i.bw, %._crit_edge.loopexit.loopexit.i.i ], [ 0, %.preheader.i.i ], [ 1, %bb.l ], [ 1, %bb.q ], [ 10, %bb.aa ], [ %.1.i.i, %bb.ab ]
  store i32 %.2.i.sink.i, ptr getelementptr inbounds nuw (i8, ptr @acpi_idle_driver, i64 1064), align 8
  br label %acpi_processor_setup_cpuidle_states.exit.thread

bb.ac:                                            ; preds = %bb.i, %bb.h
  %i.dt = phi i64 [ %.pre, %bb.i ], [ %i.s, %bb.h ]
  %i.du = add nuw nsw i64 %i.w, 1
  %i.dv = and i64 %i.du, 127                      ; 2 uses
  %i.dw = icmp samesign ugt i64 %i.dv, 63
  br i1 %i.dw, label %acpi_processor_setup_cpuidle_states.exit, label %bb.g, !prof !16, !llvm.loop !39

acpi_processor_setup_cpuidle_states.exit.thread:  ; preds = %.sink.split.i, %bb.j
  %i.dx = tail call i32 @cpuidle_register_driver(ptr noundef nonnull @acpi_idle_driver) #15
  %.not22 = icmp eq i32 %i.dx, 0
  br i1 %.not22, label %acpi_processor_setup_cpuidle_states.exit, label %bb.ad

bb.ad:                                            ; preds = %acpi_processor_setup_cpuidle_states.exit.thread
  %i.dy = getelementptr i8, ptr %i.ae, i64 32     ; 2 uses
  %i.dz = load i16, ptr %i.dy, align 8
  %i.ea = and i16 %i.dz, -257
  store i16 %i.ea, ptr %i.dy, align 8
  br label %acpi_processor_setup_cpuidle_states.exit

acpi_processor_setup_cpuidle_states.exit:         ; preds = %find_next_bit.exit, %bb.ac, %bb.g, %acpi_processor_setup_cpuidle_states.exit.thread, %bb.a, %bb.ad
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @acpi_processor_power_init(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @cpuidle_get_driver() #15
  %.not = icmp eq ptr %i.a, @acpi_idle_driver
  br i1 %.not, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @boot_option_idle_override, align 8
  %i.c = and i64 %i.b, -3
  %.not24 = icmp eq i64 %i.c, 1
  br i1 %.not24, label %bb.ad, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc i32 @acpi_processor_get_power_info(ptr noundef %0) #16, !srcloc !42
  %.not20 = icmp eq i32 %i.d, 0
  %i.e = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.f = load i16, ptr %i.e, align 8              ; 2 uses
  br i1 %.not20, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.g = or i16 %i.f, 256                         ; 2 uses
  store i16 %i.g, ptr %i.e, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.h = phi i16 [ %i.g, %bb.d ], [ %i.f, %bb.c ]
  %i.i = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.j = and i16 %i.h, 1
  %.not21 = icmp eq i16 %i.j, 0
  br i1 %.not21, label %bb.ad, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 80), align 16
  %i.l = tail call noalias align 8 dereferenceable_or_null(800) ptr @__kmalloc_cache_noprof(ptr noundef %i.k, i32 noundef 3520, i64 noundef range(i64 72, 1717986917601) 800) #20 ; 5 uses
  %.not22 = icmp eq ptr %i.l, null
  br i1 %.not22, label %bb.ad, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, ptrtoint (ptr @acpi_cpuidle_device to i64)
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.l, ptr %i.s, align 8
  %i.t = load i16, ptr %i.i, align 8              ; 2 uses
  %i.u = and i16 %i.t, 257
  %or.cond.i = icmp eq i16 %i.u, 257
  br i1 %or.cond.i, label %bb.g, label %acpi_processor_setup_cpuidle_dev.exit

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.m, align 8
  %i.w = getelementptr i8, ptr %i.l, i64 4        ; 8 uses
  store i32 %i.v, ptr %i.w, align 4
  %i.x = and i16 %i.t, 128
  %.not9.i = icmp eq i16 %i.x, 0
  br i1 %.not9.i, label %bb.h, label %acpi_processor_setup_cpuidle_dev.exit

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr @max_cstate, align 4       ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %.lr.ph.i.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr @max_cstate, align 4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.h
  %i.aa = phi i32 [ 1, %bb.i ], [ %i.y, %bb.h ]
  %i.ab = add i32 %i.aa, -1                       ; 2 uses
  %umin.i.i = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 6)
  %i.ac = add nuw nsw i32 %umin.i.i, 2            ; 5 uses
  %i.ad = getelementptr i8, ptr %0, i64 100       ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 4
  %.not.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.af = load i32, ptr %i.w, align 4
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = add i64 %i.ai, ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @acpi_cstate, i64 8) to i64)
  %i.ak = inttoptr i64 %i.aj to ptr
  store ptr %i.ad, ptr %i.ak, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i
  %.1.i.i = phi i32 [ 2, %bb.j ], [ 1, %.lr.ph.i.i ] ; 3 uses
  %exitcond.not.i.i = icmp eq i32 %i.ab, 0
  br i1 %exitcond.not.i.i, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr i8, ptr %0, i64 152       ; 2 uses
  %i.am = load i8, ptr %i.al, align 8
  %.not.i.i.1 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = zext nneg i32 %.1.i.i to i64
  %i.ao = getelementptr [8 x i8], ptr @acpi_cstate, i64 %i.an
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = load i32, ptr %i.w, align 4
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8
  %i.au = add i64 %i.at, %i.ap
  %i.av = inttoptr i64 %i.au to ptr
  store ptr %i.al, ptr %i.av, align 8
  %i.aw = add nuw nsw i32 %.1.i.i, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1.i.i.1 = phi i32 [ %i.aw, %bb.m ], [ %.1.i.i, %bb.l ] ; 3 uses
  %exitcond.not.i.i.1 = icmp eq i32 %i.ac, 3
  br i1 %exitcond.not.i.i.1, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr i8, ptr %0, i64 204       ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 4
  %.not.i.i.2 = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.2, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = sext i32 %.1.i.i.1 to i64
  %i.ba = getelementptr [8 x i8], ptr @acpi_cstate, i64 %i.az
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = load i32, ptr %i.w, align 4
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = add i64 %i.bf, %i.bb
  %i.bh = inttoptr i64 %i.bg to ptr
  store ptr %i.ax, ptr %i.bh, align 8
  %i.bi = add nsw i32 %.1.i.i.1, 1                ; 2 uses
  %1 = icmp eq i32 %i.bi, 10
  br i1 %1, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.i.i.2 = phi i32 [ %i.bi, %bb.p ], [ %.1.i.i.1, %bb.o ] ; 3 uses
  %exitcond.not.i.i.2 = icmp eq i32 %i.ac, 4
  br i1 %exitcond.not.i.i.2, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr i8, ptr %0, i64 256       ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 8
  %.not.i.i.3 = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.3, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = sext i32 %.1.i.i.2 to i64
  %i.bm = getelementptr [8 x i8], ptr @acpi_cstate, i64 %i.bl
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = load i32, ptr %i.w, align 4
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = add i64 %i.br, %i.bn
  %i.bt = inttoptr i64 %i.bs to ptr
  store ptr %i.bj, ptr %i.bt, align 8
  %i.bu = add nsw i32 %.1.i.i.2, 1                ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 10
  br i1 %i.bv, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1.i.i.3 = phi i32 [ %i.bu, %bb.s ], [ %.1.i.i.2, %bb.r ] ; 3 uses
  %exitcond.not.i.i.3 = icmp eq i32 %i.ac, 5
  br i1 %exitcond.not.i.i.3, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr i8, ptr %0, i64 308       ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 4
  %.not.i.i.4 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.4, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = sext i32 %.1.i.i.3 to i64
  %i.bz = getelementptr [8 x i8], ptr @acpi_cstate, i64 %i.by
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = load i32, ptr %i.w, align 4
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = add i64 %i.ce, %i.ca
  %i.cg = inttoptr i64 %i.cf to ptr
  store ptr %i.bw, ptr %i.cg, align 8
  %i.ch = add i32 %.1.i.i.3, 1                    ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 10
  br i1 %i.ci, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1.i.i.4 = phi i32 [ %i.ch, %bb.v ], [ %.1.i.i.3, %bb.u ] ; 3 uses
  %exitcond.not.i.i.4 = icmp eq i32 %i.ac, 6
  br i1 %exitcond.not.i.i.4, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = getelementptr i8, ptr %0, i64 360       ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 8
  %.not.i.i.5 = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.5, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = sext i32 %.1.i.i.4 to i64
  %i.cm = getelementptr [8 x i8], ptr @acpi_cstate, i64 %i.cl
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = load i32, ptr %i.w, align 4
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = add i64 %i.cr, %i.cn
  %i.ct = inttoptr i64 %i.cs to ptr
  store ptr %i.cj, ptr %i.ct, align 8
  %i.cu = add i32 %.1.i.i.4, 1                    ; 2 uses
  %i.cv = icmp eq i32 %i.cu, 10
  br i1 %i.cv, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.1.i.i.5 = phi i32 [ %i.cu, %bb.y ], [ %.1.i.i.4, %bb.x ]
  %exitcond.not.i.i.5 = icmp eq i32 %i.ac, 7
  br i1 %exitcond.not.i.i.5, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cw = getelementptr i8, ptr %0, i64 412       ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 4
  %.not.i.i.6 = icmp eq i8 %i.cx, 0
  br i1 %.not.i.i.6, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = sext i32 %.1.i.i.5 to i64
  %i.cz = getelementptr [8 x i8], ptr @acpi_cstate, i64 %i.cy
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = load i32, ptr %i.w, align 4
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = add i64 %i.de, %i.da
  %i.dg = inttoptr i64 %i.df to ptr
  store ptr %i.cw, ptr %i.dg, align 8
  br label %acpi_processor_setup_cpuidle_dev.exit

acpi_processor_setup_cpuidle_dev.exit:            ; preds = %bb.ab, %bb.k, %bb.n, %bb.p, %bb.q, %bb.s, %bb.t, %bb.v, %bb.w, %bb.y, %bb.z, %bb.aa, %bb.f, %bb.g
  %i.dh = tail call i32 @cpuidle_register_device(ptr noundef nonnull %i.l) #15
  %.not23 = icmp eq i32 %i.dh, 0
  br i1 %.not23, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %acpi_processor_setup_cpuidle_dev.exit
  %i.di = load i32, ptr %i.m, align 8
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = add i64 %i.dl, ptrtoint (ptr @acpi_cpuidle_device to i64)
  %i.dn = inttoptr i64 %i.dm to ptr
  store ptr null, ptr %i.dn, align 8
  %i.do = load i16, ptr %i.i, align 8
  %i.dp = and i16 %i.do, -257
  store i16 %i.dp, ptr %i.i, align 8
  tail call void @kfree(ptr noundef nonnull %i.l) #15
  br label %bb.ad

bb.ad:                                            ; preds = %acpi_processor_setup_cpuidle_dev.exit, %bb.ac, %bb.e, %._crit_edge, %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @cpuidle_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpuidle_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @cpuidle_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @acpi_processor_power_exit(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, ptrtoint (ptr @acpi_cpuidle_device to i64)
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load i64, ptr @boot_option_idle_override, align 8
  %i.j = and i64 %i.i, -3
  %.not = icmp eq i64 %i.j, 1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.l = load i16, ptr %i.k, align 8              ; 2 uses
  %i.m = and i16 %i.l, 1
  %.not6 = icmp eq i16 %i.m, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @cpuidle_unregister_device(ptr noundef %i.h) #15
  tail call void @kfree(ptr noundef %i.h) #15
  %.pre = load i16, ptr %i.k, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i16 [ %.pre, %bb.c ], [ %i.l, %bb.b ]
  %i.o = and i16 %i.n, -257
  store i16 %i.o, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpuidle_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @acpi_has_method(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -61, 1) i32 @acpi_processor_evaluate_lpi(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.acpi_buffer, align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) @__const.acpi_processor_evaluate_lpi.buffer, i64 16, i1 false)
  %i.a = call i32 @acpi_evaluate_object(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef null, ptr noundef nonnull %2) #15
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %.not81 = icmp eq ptr %i.c, null
  br i1 %.not81, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.c, align 8
  %.not82 = icmp eq i32 %i.d, 4
  br i1 %.not82, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %i.c, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp ult i32 %i.f, 4
  br i1 %i.g, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %i.c, i64 8        ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 56
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = trunc i64 %i.k to i32                    ; 4 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = add i32 %i.f, -3
  %.not83 = icmp eq i32 %i.n, %i.l
  %or.cond = and i1 %i.m, %.not83
  br i1 %or.cond, label %_kzalloc_noprof.exit, label %.loopexit

_kzalloc_noprof.exit:                             ; preds = %bb.e
  %i.o = and i64 %i.k, 2147483647
  %i.p = mul nuw nsw i64 %i.o, 72
  %i.q = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 72, 1717986917601) %i.p, i32 noundef 3520) #21 ; 3 uses
  %.not84 = icmp eq ptr %i.q, null
  br i1 %.not84, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_kzalloc_noprof.exit
  store i32 %i.l, ptr %1, align 8
  %i.r = getelementptr i8, ptr %1, i64 8
  store ptr %i.q, ptr %i.r, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %.071127 = phi i32 [ %i.ck, %bb.m ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.072126 = phi i32 [ %i.cj, %bb.m ], [ 3, %.lr.ph.preheader ] ; 2 uses
  %.074124 = phi ptr [ %i.cl, %bb.m ], [ %i.q, %.lr.ph.preheader ] ; 13 uses
  %i.s = load ptr, ptr %i.h, align 8
  %i.t = sext i32 %.072126 to i64
  %i.u = getelementptr [24 x i8], ptr %i.s, i64 %i.t ; 3 uses
  %i.v = load i32, ptr %i.u, align 8
  %.not86 = icmp eq i32 %i.v, 4
  br i1 %.not86, label %bb.f, label %bb.m

bb.f:                                             ; preds = %.lr.ph
  %i.w = getelementptr i8, ptr %i.u, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp ult i32 %i.x, 7
  br i1 %i.y, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr i8, ptr %i.u, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 17 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 144
  %i.ac = load i32, ptr %i.ab, align 8
  switch i32 %i.ac, label %bb.m [
    i32 3, label %bb.h
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %i.aa, i64 152
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 3      ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1
  switch i8 %i.ag, label %bb.m [
    i8 1, label %.critedge
    i8 127, label %.critedge
  ]

.critedge:                                        ; preds = %bb.h, %bb.h
  %i.ah = getelementptr i8, ptr %i.ae, i64 7
  %i.ai = load i64, ptr %i.ah, align 1
  %i.aj = getelementptr i8, ptr %.074124, i64 24
  store i64 %i.ai, ptr %i.aj, align 8
  %i.ak = load i8, ptr %i.af, align 1
  %i.al = icmp eq i8 %i.ak, 127
  %i.am = zext i1 %i.al to i8
  %i.an = getelementptr i8, ptr %.074124, i64 33
  store i8 %i.am, ptr %i.an, align 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ao = getelementptr i8, ptr %.074124, i64 33
  store i8 3, ptr %i.ao, align 1
  %i.ap = getelementptr i8, ptr %i.aa, i64 152
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr i8, ptr %.074124, i64 24
  store i64 %i.aq, ptr %i.ar, align 8
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.i
  %i.as = getelementptr i8, ptr %i.aa, i64 216
  %i.at = load i32, ptr %i.as, align 8
  %i.au = icmp eq i32 %i.at, 2
  br i1 %i.au, label %bb.k, label %bb.l
end_hunk_1
