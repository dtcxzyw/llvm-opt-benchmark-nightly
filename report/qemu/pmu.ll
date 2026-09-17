Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/pmu?download=true
inline.NumInlined: 20
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"../target/riscv/tcg/pmu.c\00", align 1
@__func__.riscv_pmu_init = private unnamed_addr constant [15 x i8] c"riscv_pmu_init\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"\22pmu-mask\22 contains invalid bits (0-2) set\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Unable to allocate PMU event hash table\00", align 1
@use_icount = external local_unnamed_addr global i32, align 4
@__func__.riscv_pmu_cycle_update_priv = private unnamed_addr constant [28 x i8] c"riscv_pmu_cycle_update_priv\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"env->priv <= PRV_S\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"newpriv <= PRV_S\00", align 1
@__func__.riscv_pmu_icount_update_priv = private unnamed_addr constant [29 x i8] c"riscv_pmu_icount_update_priv\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @riscv_pmu_update_fixed_ctrs(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @use_icount, align 4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @icount_get() #6
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !9 ; 2 uses
  %i.d = extractvalue { i32, i32 } %i.c, 0
  %i.e = extractvalue { i32, i32 } %i.c, 1
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw i64 %i.f, 32
  %i.h = zext i32 %i.d to i64
  %i.i = or disjoint i64 %i.g, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.026.i = phi i64 [ %i.b, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5040 ; 2 uses
  %i.k = load i8, ptr %i.j, align 16, !range !7, !noundef !8
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5017
  %i.n = load i8, ptr %i.m, align 1
  %i.o = icmp ugt i8 %i.n, 1
  br i1 %i.o, label %bb.f, label %bb.g, !prof !10

bb.f:                                             ; preds = %bb.e
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 121, ptr noundef nonnull @__func__.riscv_pmu_cycle_update_priv, ptr noundef nonnull @.str.4) #7
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.p = phi i64 [ 12976, %bb.e ], [ 12912, %bb.d ]
  %i.q = phi i64 [ 12992, %bb.e ], [ 12944, %bb.d ]
  br i1 %2, label %bb.h, label %riscv_pmu_cycle_update_priv.exit

bb.h:                                             ; preds = %bb.g
  %i.r = icmp ugt i8 %1, 1
  br i1 %i.r, label %bb.i, label %riscv_pmu_cycle_update_priv.exit, !prof !10

bb.i:                                             ; preds = %bb.h
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 130, ptr noundef nonnull @__func__.riscv_pmu_cycle_update_priv, ptr noundef nonnull @.str.5) #7
  unreachable

riscv_pmu_cycle_update_priv.exit:                 ; preds = %bb.g, %bb.h
  %i.s = phi i64 [ 12992, %bb.h ], [ 12944, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5017 ; 3 uses
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64                      ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = sub i64 %.026.i, %i.aa
  %i.ac = zext i8 %1 to i64                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ac
  store i64 %.026.i, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.y ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = add i64 %i.ab, %i.af
  store i64 %i.ag, ptr %i.ae, align 8
  %i.ah = load i32, ptr @use_icount, align 4
  %.not.i5 = icmp eq i32 %i.ah, 0
  br i1 %.not.i5, label %bb.k, label %bb.j

bb.j:                                             ; preds = %riscv_pmu_cycle_update_priv.exit
  %i.ai = tail call i64 @icount_get_raw() #6
  br label %bb.l

bb.k:                                             ; preds = %riscv_pmu_cycle_update_priv.exit
  %i.aj = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !9 ; 2 uses
  %i.ak = extractvalue { i32, i32 } %i.aj, 0
  %i.al = extractvalue { i32, i32 } %i.aj, 1
  %i.am = zext i32 %i.al to i64
  %i.an = shl nuw i64 %i.am, 32
  %i.ao = zext i32 %i.ak to i64
  %i.ap = or disjoint i64 %i.an, %i.ao
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.026.i6 = phi i64 [ %i.ai, %bb.j ], [ %i.ap, %bb.k ] ; 2 uses
  %i.aq = load i8, ptr %i.j, align 16, !range !7, !noundef !8
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.as = load i8, ptr %i.w, align 1
  %i.at = icmp ugt i8 %i.as, 1
  br i1 %i.at, label %bb.n, label %bb.o, !prof !10

bb.n:                                             ; preds = %bb.m
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 80, ptr noundef nonnull @__func__.riscv_pmu_icount_update_priv, ptr noundef nonnull @.str.4) #7
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.au = phi i64 [ 13072, %bb.m ], [ 13008, %bb.l ]
  %i.av = phi i64 [ 13088, %bb.m ], [ 13040, %bb.l ]
  br i1 %2, label %bb.p, label %riscv_pmu_icount_update_priv.exit

bb.p:                                             ; preds = %bb.o
  %i.aw = icmp ugt i8 %1, 1
  br i1 %i.aw, label %bb.q, label %riscv_pmu_icount_update_priv.exit, !prof !10

bb.q:                                             ; preds = %bb.p
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 89, ptr noundef nonnull @__func__.riscv_pmu_icount_update_priv, ptr noundef nonnull @.str.5) #7
  unreachable

riscv_pmu_icount_update_priv.exit:                ; preds = %bb.o, %bb.p
  %i.ax = phi i64 [ 13088, %bb.p ], [ 13040, %bb.o ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.au
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %i.av
  %i.bb = load i8, ptr %i.w, align 1
  %i.bc = zext i8 %i.bb to i64                    ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = sub i64 %.026.i6, %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ac
  store i64 %.026.i6, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bc ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = add i64 %i.bf, %i.bi
  store i64 %i.bj, ptr %i.bh, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -1, 1) i32 @riscv_pmu_incr_ctr(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16496
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 21536
  %i.c = load i8, ptr %i.b, align 16, !range !7, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1                  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32312
  %i.f = load i32, ptr %i.e, align 8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %riscv_pmu_counter_enabled.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32360
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = zext i32 %1 to i64
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = tail call ptr @g_hash_table_lookup(ptr noundef %i.h, ptr noundef %i.j) #6 ; 2 uses
  %.not48 = icmp eq ptr %i.k, null
  br i1 %.not48, label %riscv_pmu_counter_enabled.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %i.m, -32
  %or.cond.i.i = icmp ult i32 %i.n, -29
  br i1 %or.cond.i.i, label %riscv_pmu_counter_enabled.exit, label %riscv_pmu_counter_valid.exit.i

riscv_pmu_counter_valid.exit.i:                   ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32352
  %i.p = load i32, ptr %i.o, align 16
  %i.q = zext i32 %i.p to i64
  %i.r = and i64 %i.l, 4294967295                 ; 8 uses
  %i.s = shl nuw nsw i64 1, %i.r                  ; 2 uses
  %i.t = and i64 %i.s, %i.q
  %.not.i.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.not.i, label %riscv_pmu_counter_enabled.exit, label %bb.d

bb.d:                                             ; preds = %riscv_pmu_counter_valid.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28360
  %i.v = load i32, ptr %i.u, align 8
  %i.w = zext i32 %i.v to i64
  %i.x = and i64 %i.s, %i.w
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %bb.e, label %riscv_pmu_counter_enabled.exit

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 21513
  %i.z = load i8, ptr %i.y, align 1               ; 5 uses
  %i.aa = icmp eq i8 %i.z, 3
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 29152
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.r
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = and i64 %i.ad, 4611686018427387904
  %.not49 = icmp eq i64 %i.ae, 0
  br i1 %.not49, label %.thread62, label %riscv_pmu_counter_enabled.exit

bb.g:                                             ; preds = %bb.e
  %i.af = icmp eq i8 %i.z, 1
  %or.cond = and i1 %i.af, %i.d
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 29152
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.r
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = and i64 %i.ai, 576460752303423488
  %.not50 = icmp eq i64 %i.aj, 0
  br i1 %.not50, label %.thread62, label %riscv_pmu_counter_enabled.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = icmp eq i8 %i.z, 0
  %or.cond3 = and i1 %i.ak, %i.d
  br i1 %or.cond3, label %bb.j, label %.thread57

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 29152
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.r
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = and i64 %i.an, 288230376151711744
  %.not51 = icmp eq i64 %i.ao, 0
  br i1 %.not51, label %.thread62, label %riscv_pmu_counter_enabled.exit

.thread57:                                        ; preds = %bb.i
  %i.ap = icmp ne i8 %i.z, 1
  %or.cond5 = or i1 %i.ap, %i.d
  br i1 %or.cond5, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread57
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 29152
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.r
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = and i64 %i.as, 2305843009213693952
  %.not52 = icmp eq i64 %i.at, 0
  br i1 %.not52, label %.thread62, label %riscv_pmu_counter_enabled.exit

bb.l:                                             ; preds = %.thread57
  %2 = icmp ne i8 %i.z, 0
  %or.cond7 = or i1 %2, %i.d
  br i1 %or.cond7, label %.thread62, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 29152
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.r
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = and i64 %i.aw, 1152921504606846976
  %.not53 = icmp eq i64 %i.ax, 0
  br i1 %.not53, label %.thread62, label %riscv_pmu_counter_enabled.exit

.thread62:                                        ; preds = %bb.f, %bb.h, %bb.j, %bb.k, %bb.m, %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 28384
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.r ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = icmp eq i64 %i.ba, -1
  br i1 %i.bb, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.thread62
  store i64 0, ptr %i.az, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 29152
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.r ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %.not54 = icmp sgt i64 %i.be, -1
  br i1 %.not54, label %bb.o, label %riscv_pmu_counter_enabled.exit

bb.o:                                             ; preds = %bb.n
  %i.bf = or disjoint i64 %i.be, -9223372036854775808
  store i64 %i.bf, ptr %i.bd, align 8
  %i.bg = tail call i64 @riscv_cpu_update_mip(ptr noundef nonnull %i.a, i64 noundef 8192, i64 noundef -1) #6 ; 0 uses
  br label %riscv_pmu_counter_enabled.exit

bb.p:                                             ; preds = %.thread62
  %i.bh = add nuw i64 %i.ba, 1
  store i64 %i.bh, ptr %i.az, align 8
  br label %riscv_pmu_counter_enabled.exit

riscv_pmu_counter_enabled.exit:                   ; preds = %bb.d, %riscv_pmu_counter_valid.exit.i, %bb.c, %bb.p, %bb.o, %bb.n, %bb.f, %bb.h, %bb.j, %bb.k, %bb.m, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.p ], [ 0, %bb.f ], [ -1, %bb.b ], [ 0, %bb.a ], [ 0, %bb.m ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.n ], [ 0, %bb.o ], [ -1, %bb.c ], [ -1, %riscv_pmu_counter_valid.exit.i ], [ -1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @g_hash_table_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @riscv_cpu_update_mip(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @riscv_pmu_ctr_monitor_instructions(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 2
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 15864
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @g_hash_table_lookup(ptr noundef nonnull %i.c, ptr noundef nonnull inttoptr (i64 2 to ptr)) #6
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %.not11 = icmp ne i32 %i.f, 0
  %i.g = icmp eq i32 %1, %i.f
  %spec.select = and i1 %.not11, %i.g
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %spec.select, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @riscv_pmu_ctr_monitor_cycles(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 15864
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @g_hash_table_lookup(ptr noundef nonnull %i.c, ptr noundef nonnull inttoptr (i64 1 to ptr)) #6
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = trunc i64 %i.e to i32
  %i.g = icmp eq i32 %1, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %i.g, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -1, 1) i32 @riscv_pmu_update_event_map(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %2, -32
  %or.cond.i = icmp ult i32 %i.a, -29
  br i1 %or.cond.i, label %riscv_pmu_counter_valid.exit.thread, label %riscv_pmu_counter_valid.exit

riscv_pmu_counter_valid.exit:                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 15856
  %i.c = load i32, ptr %i.b, align 16
  %i.d = zext i32 %i.c to i64
  %i.e = zext nneg i32 %2 to i64                  ; 3 uses
  %i.f = shl nuw nsw i64 1, %i.e
  %i.g = and i64 %i.f, %i.d
  %.not.i.not = icmp eq i64 %i.g, 0
  br i1 %.not.i.not, label %riscv_pmu_counter_valid.exit.thread, label %bb.b

bb.b:                                             ; preds = %riscv_pmu_counter_valid.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 15864 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %riscv_pmu_counter_valid.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i64 %1, 9223372036854775807
  %.not16 = icmp eq i64 %i.j, 0
  br i1 %.not16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = inttoptr i64 %i.e to ptr
  %i.l = tail call i32 @g_hash_table_foreach_remove(ptr noundef nonnull %i.i, ptr noundef nonnull @pmu_remove_event_map, ptr noundef %i.k) #6 ; 0 uses
  br label %riscv_pmu_counter_valid.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.m = and i64 %1, 4294967295
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = tail call ptr @g_hash_table_lookup(ptr noundef nonnull %i.i, ptr noundef %i.n) #6
  %.not17 = icmp eq ptr %i.o, null
  br i1 %.not17, label %bb.f, label %riscv_pmu_counter_valid.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.p = trunc i64 %1 to i32
  switch i32 %i.p, label %riscv_pmu_counter_valid.exit.thread [
    i32 1, label %bb.g
    i32 2, label %bb.g
    i32 65561, label %bb.g
    i32 65563, label %bb.g
    i32 65569, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.q = load ptr, ptr %i.h, align 8
  %i.r = inttoptr i64 %i.e to ptr
  %i.s = tail call i32 @g_hash_table_insert(ptr noundef %i.q, ptr noundef %i.n, ptr noundef %i.r) #6 ; 0 uses
  br label %riscv_pmu_counter_valid.exit.thread

riscv_pmu_counter_valid.exit.thread:              ; preds = %bb.a, %bb.f, %bb.e, %riscv_pmu_counter_valid.exit, %bb.b, %bb.g, %bb.d
  %.0 = phi i32 [ -1, %riscv_pmu_counter_valid.exit ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.d ], [ -1, %bb.b ], [ -1, %bb.f ], [ -1, %bb.a ]
  ret i32 %.0
}

declare i32 @g_hash_table_foreach_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal range(i32 0, 2) i32 @pmu_remove_event_map(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #3 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = trunc i64 %i.a to i32
  %i.c = ptrtoint ptr %2 to i64
  %i.d = trunc i64 %i.c to i32
  %i.e = icmp eq i32 %i.b, %i.d
  %i.f = zext i1 %i.e to i32
  ret i32 %i.f
}

declare i32 @g_hash_table_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @riscv_pmu_timer_cb(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @pmu_timer_trigger_irq(ptr noundef %0, i32 noundef 1)
  tail call fastcc void @pmu_timer_trigger_irq(ptr noundef %0, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pmu_timer_trigger_irq(ptr noundef %0, i32 noundef range(i32 1, 3) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16496 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32360
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = zext nneg i32 %1 to i64
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @g_hash_table_lookup(ptr noundef %i.e, ptr noundef nonnull %i.g) #6
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = trunc i64 %i.i to i32                    ; 4 uses
  %i.k = add i32 %i.j, -32
  %or.cond.i.i = icmp ult i32 %i.k, -29
  br i1 %or.cond.i.i, label %riscv_pmu_counter_enabled.exit, label %riscv_pmu_counter_valid.exit.i

riscv_pmu_counter_valid.exit.i:                   ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32352 ; 2 uses
  %i.m = load i32, ptr %i.l, align 16
  %i.n = zext i32 %i.m to i64
  %i.o = and i64 %i.i, 4294967295                 ; 3 uses
  %i.p = shl nuw i64 1, %i.o                      ; 3 uses
end_hunk_0
