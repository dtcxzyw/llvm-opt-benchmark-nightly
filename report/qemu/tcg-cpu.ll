Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tcg-cpu?download=true
inline.NumInlined: 14
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PropValue = type { ptr, ptr }
%struct.ExtSaveArea = type { i32, i32, i32, [2 x %struct.FeatureMask] }
%struct.FeatureMask = type { i32, i64 }
%struct.TCGTBCPUState = type { i64, i32, i32, i64 }

@x86_tcg_ops = dso_local local_unnamed_addr constant { i8, i8, [2 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i8 1, i8 1, [2 x i8] zeroinitializer, i32 13, ptr @tcg_x86_init, ptr @x86_translate_code, ptr @x86_get_tb_cpu_state, ptr @x86_cpu_synchronize_from_tb, ptr @x86_restore_state_to_opc, ptr @x86_cpu_exec_enter, ptr @x86_cpu_exec_exit, ptr null, ptr @x86_cpu_mmu_index, ptr @x86_cpu_do_interrupt, ptr @x86_cpu_record_sigsegv, ptr @x86_cpu_record_sigbus, ptr null }, align 8
@.str = private unnamed_addr constant [11 x i8] c"x86_64-cpu\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"../target/i386/cpu-qom.h\00", align 1
@__func__.X86_CPU = private unnamed_addr constant [8 x i8] c"X86_CPU\00", align 1
@tcg_allowed = external local_unnamed_addr global i8, align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"tcg-accel-x86_64-cpu\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"accel-x86_64-cpu\00", align 1
@x86_tcg_cpu_accel_type_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.2, ptr @.str.3, i64 0, i64 0, ptr null, ptr null, ptr null, i8 1, [7 x i8] zeroinitializer, i64 0, ptr @x86_tcg_cpu_accel_class_init, ptr null, ptr null, ptr null }, align 8
@.str.5 = private unnamed_addr constant [59 x i8] c"/opt-bench/work/qemu/qemu/include/accel/accel-cpu-target.h\00", align 1
@__func__.ACCEL_CPU_CLASS = private unnamed_addr constant [16 x i8] c"ACCEL_CPU_CLASS\00", align 1
@x86_tcg_default_props = internal global [2 x %struct.PropValue] [%struct.PropValue { ptr @.str.6, ptr @.str.7 }, %struct.PropValue zeroinitializer], align 16
@__func__.X86_CPU_GET_CLASS = private unnamed_addr constant [18 x i8] c"X86_CPU_GET_CLASS\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"vme\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@x86_ext_save_areas = external local_unnamed_addr global [20 x %struct.ExtSaveArea], align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_x86_tcg_cpu_accel_register_types, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 6) i32 @x86_mmu_index_pl(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load i32, ptr %i.a, align 16             ; 2 uses
  %i.c = icmp eq i32 %1, 3
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 8388608
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32
  %i.h = lshr i32 %i.g, 16
  %i.i = and i32 %i.h, 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = phi i32 [ 2, %bb.a ], [ %i.i, %bb.c ], [ 4, %bb.b ]
  %i.k = lshr i32 %i.b, 15
  %.lobit = and i32 %i.k, 1
  %i.l = or disjoint i32 %i.j, %.lobit
  %i.m = xor i32 %i.l, 1
  ret i32 %i.m
}

declare void @tcg_x86_init() #1

declare void @x86_translate_code(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @x86_get_tb_cpu_state(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.TCGTBCPUState) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16800
  %i.b = load i32, ptr %i.a, align 16             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16760
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i32 %i.b, 32768
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16752
  %i.g = load i64, ptr %i.f, align 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16840
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16752
  %i.k = load i64, ptr %i.j, align 16
  %i.l = add i64 %i.k, %i.i
  %i.m = and i64 %i.l, 4294967295
  %i.n = and i64 %i.i, 4294967295
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.010 = phi i64 [ 0, %bb.b ], [ %i.n, %bb.c ]
  %.0 = phi i64 [ %i.g, %bb.b ], [ %i.m, %bb.c ]
  %i.o = trunc i64 %i.d to i32
  %i.p = and i32 %i.o, 471296
  %i.q = or i32 %i.p, %i.b
  store i64 %.0, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.010, ptr %i.t, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @x86_cpu_synchronize_from_tb(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = and i32 %i.b, 131072
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 32768
  %.not8 = icmp eq i32 %i.f, 0
  %i.g = load i64, ptr %1, align 8                ; 2 uses
  br i1 %.not8, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = sub i64 %i.g, %i.i
  %i.k = and i64 %i.j, 4294967295
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ %i.k, %bb.c ], [ %i.g, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16752
  store i64 %.sink, ptr %i.l, align 16
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_restore_state_to_opc(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load atomic i32, ptr %i.e monotonic, align 4
  %i.g = and i32 %i.f, 131072
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16752
  %i.i = load i64, ptr %i.h, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, %i.i
  %i.m = and i64 %i.l, -4096
  %i.n = load i64, ptr %2, align 8
  %i.o = or i64 %i.m, %i.n
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = load i64, ptr %2, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.o, %bb.b ], [ %i.p, %bb.c ]  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i32, ptr %i.q, align 8
  %i.s = and i32 %i.r, 32768
  %.not18 = icmp eq i32 %i.s, 0
  br i1 %.not18, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8
  %i.v = sub i64 %.0, %i.u
  %i.w = and i64 %i.v, 4294967295
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0.sink = phi i64 [ %i.w, %bb.e ], [ %.0, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16752
  store i64 %.0.sink, ptr %i.x, align 16
  %.not19 = icmp eq i32 %i.d, 60
  br i1 %.not19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16792
  store i32 %i.d, ptr %i.y, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_cpu_exec_enter(ptr noundef %0) #4 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #5 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16760 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = and i64 %i.c, 2261
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16776
  store i64 %i.d, ptr %i.e, align 8
  %i.f = trunc i64 %i.c to i32
  %i.g = lshr i32 %i.f, 9
  %i.h = and i32 %i.g, 2
  %i.i = sub nsw i32 1, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16796
  store i32 %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16792
  store i32 0, ptr %i.k, align 8
  %i.l = and i64 %i.c, -3286
  store i64 %i.l, ptr %i.b, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_cpu_exec_exit(ptr noundef %0) #4 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16760 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = load i8, ptr @tcg_allowed, align 1, !range !7, !noundef !8
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %cpu_compute_eflags.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16496
  %i.h = tail call i32 @cpu_cc_compute_all(ptr noundef nonnull %i.g) #5
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16796
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, 1024
  %i.l = or i32 %i.h, %i.k
  %i.m = or i32 %i.l, %i.d
  br label %cpu_compute_eflags.exit

cpu_compute_eflags.exit:                          ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.m, %bb.b ], [ %i.d, %bb.a ]
  %i.n = zext i32 %.0.i to i64
  store i64 %i.n, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 6) i32 @x86_cpu_mmu_index(ptr nofree noundef readonly captures(none) %0, i1 zeroext %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16800
  %i.b = load i32, ptr %i.a, align 16             ; 3 uses
  %i.c = and i32 %i.b, 3
  %i.d = icmp eq i32 %i.c, 3
  br i1 %i.d, label %x86_mmu_index_pl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 8388608
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %x86_mmu_index_pl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16760
  %i.g = load i64, ptr %i.f, align 8
  %i.h = trunc i64 %i.g to i32
  %i.i = lshr i32 %i.h, 16
  %i.j = and i32 %i.i, 4
  br label %x86_mmu_index_pl.exit

x86_mmu_index_pl.exit:                            ; preds = %bb.a, %bb.b, %bb.c
  %i.k = phi i32 [ 2, %bb.a ], [ %i.j, %bb.c ], [ 4, %bb.b ]
  %i.l = lshr i32 %i.b, 15
  %.lobit.i = and i32 %i.l, 1
  %i.m = or disjoint i32 %i.k, %.lobit.i
  %i.n = xor i32 %i.m, 1
  ret i32 %i.n
}

declare void @x86_cpu_do_interrupt(ptr noundef) #1

declare void @x86_cpu_record_sigsegv(ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i64 noundef) #1

declare void @x86_cpu_record_sigbus(ptr noundef, i64 noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_x86_tcg_cpu_accel_register_types() #4 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @x86_tcg_cpu_accel_register_types, i32 noundef 4) #5
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_tcg_cpu_accel_register_types() #4 {
bb.a:
  %i.a = tail call ptr @type_register_static(ptr noundef nonnull @x86_tcg_cpu_accel_type_info) #5 ; 0 uses
  ret void
}

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @cpu_cc_compute_all(ptr noundef) local_unnamed_addr #1

declare ptr @type_register_static(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_tcg_cpu_accel_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #4 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, i32 noundef 29, ptr noundef nonnull @__func__.ACCEL_CPU_CLASS) #5
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr @x86_tcg_cpu_instance_init, ptr %i.b, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_tcg_cpu_instance_init(ptr noundef %0) #4 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #5 ; 2 uses
  %i.b = tail call ptr @object_get_class(ptr noundef %i.a) #5
  %i.c = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU_GET_CLASS) #5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  %i.e = load ptr, ptr %i.d, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @x86_cpu_apply_props(ptr noundef %i.a, ptr noundef nonnull @x86_tcg_default_props) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 0, ptr @x86_ext_save_areas, align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @x86_ext_save_areas, i64 48), align 16
  store i32 576, ptr getelementptr inbounds nuw (i8, ptr @x86_ext_save_areas, i64 96), align 16
  store i32 960, ptr getelementptr inbounds nuw (i8, ptr @x86_ext_save_areas, i64 144), align 16
  store i32 1024, ptr getelementptr inbounds nuw (i8, ptr @x86_ext_save_areas, i64 192), align 16
  store i32 1088, ptr getelementptr inbounds nuw (i8, ptr @x86_ext_save_areas, i64 240), align 16
  store i32 1152, ptr getelementptr inbounds nuw (i8, ptr @x86_ext_save_areas, i64 288), align 16
  store i32 1664, ptr getelementptr inbounds nuw (i8, ptr @x86_ext_save_areas, i64 336), align 16
  store i32 2688, ptr getelementptr inbounds nuw (i8, ptr @x86_ext_save_areas, i64 432), align 16
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @x86_cpu_apply_props(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_get_class(ptr noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { mustprogress norecurse nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{i8 0, i8 2}
!8 = !{}
end_hunk_0
