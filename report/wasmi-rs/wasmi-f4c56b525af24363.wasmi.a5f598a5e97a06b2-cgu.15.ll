Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.15?download=true
inline.NumInlined: 1440
inline.NumDeleted: 651
begin_hunk_0_@_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack11dealloc_reg:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap7dealloc.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap7dealloc.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19, !noalias !1133
  unreachable

_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap7dealloc.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i.i = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ] ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %.sroa.0.0.i.i, align 8, !alias.scope !1136 ; 2 uses
  %.sroa.510.0..sroa.0.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa.0.0.i.i.sroa_idx, align 8, !alias.scope !1136 ; 3 uses
  store i32 2, ptr %.sroa.0.0.i.i, align 8, !alias.scope !1131, !noalias !1128
  %.not = icmp eq i32 %.sroa.0.0.copyload, 2
  %i.d = trunc i32 %.sroa.0.0.copyload to i1
  %or.cond = or i1 %.not, %i.d
  br i1 %or.cond, label %bb.j, label %bb.e

bb.e:                                             ; preds = %_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap7dealloc.exit
  %i.e = add i64 %.sroa.510.0.copyload, -1        ; 3 uses
  %i.f = icmp ne i64 %.sroa.510.0.copyload, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !12 ; 2 uses
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !12, !noundef !12
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.e ; 4 uses
  %i.m = load i8, ptr %i.l, align 8, !range !107, !noundef !12
  %i.n = icmp eq i8 %i.m, 1
  br i1 %i.n, label %bb.h, label %bb.i, !prof !131

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #19
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.p = load i32, ptr %i.o, align 4, !noundef !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !18, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 2 uses
  %i.t = load i8, ptr %i.s, align 2, !range !13, !noundef !12
  store i8 0, ptr %i.s, align 2
  store i64 %.sroa.510.0.copyload, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.p, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.r, ptr %.sroa.54.0..sroa_idx, align 4
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #19
  unreachable

bb.j:                                             ; preds = %_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap7dealloc.exit, %bb.h
  %.sink = phi i8 [ %i.t, %bb.h ], [ 2, %_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap7dealloc.exit ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %.sink, ptr %i.u, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef range(i64 1, 288230376151711745) i64 @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack14next_stack_pos(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #7 {
_RNvXs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB4_8StackPosINtNtCskKLDkoKarTP_4core7convert4FromjE4from.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !12 ; 2 uses
  %i.c = icmp ult i64 %i.b, 288230376151711744
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nuw nsw i64 %i.b, 1
  ret i64 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack15pop_temp_offset(ptr noalias nofree noundef align 8 dereferenceable(112) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  %i.d = icmp ugt i64 %1, 65535
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nuw i64 %1 to i16                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.e, ptr %i.c, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 106 ; 3 uses
  %i.g = load i16, ptr %i.f, align 2, !noundef !12 ; 2 uses
  %i.h = icmp ult i16 %i.g, %i.e
  br i1 %i.h, label %bb.e, label %bb.d, !prof !126

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i64 9, ptr %i.i, align 4
  store i8 21, ptr %i.a, align 8
  %i.j = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = sub nuw i16 %i.g, %i.e
  store i16 %i.k, ptr %i.f, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs3_NtNtNtCskKLDkoKarTP_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.l, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs3_NtNtNtCskKLDkoKarTP_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #19
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0 = phi ptr [ %i.j, %bb.c ], [ null, %bb.d ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack15preserve_locals(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 2 uses
  %i.d = icmp ugt i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !12, !noundef !12
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !12
  store i64 0, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.09.0.copyload.i = load i32, ptr %i.i, align 8, !alias.scope !1137
  %i.j = trunc i32 %.sroa.09.0.copyload.i to i1
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !1137
  %i.k = icmp eq i32 %.sroa.6.0.copyload.i, %2
  %or.cond.i = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond.i, label %_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap19is_local_in_any_reg.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.011.0.copyload.i = load i32, ptr %i.l, align 8, !alias.scope !1137
  %i.m = trunc i32 %.sroa.011.0.copyload.i to i1
  %.sroa.613.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.sroa.613.0.copyload.i = load i32, ptr %.sroa.613.0..sroa_idx.i, align 4, !alias.scope !1137
  %i.n = icmp eq i32 %.sroa.613.0.copyload.i, %2
  %or.cond19.i = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond19.i, label %_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap19is_local_in_any_reg.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.015.0.copyload.i = load i32, ptr %i.o, align 8, !alias.scope !1137
  %i.p = trunc i32 %.sroa.015.0.copyload.i to i1
  br i1 %i.p, label %bb.e, label %_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap19is_local_in_any_reg.exit

bb.e:                                             ; preds = %bb.d
  %.sroa.617.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 84
  %.sroa.617.0.copyload.i = load i32, ptr %.sroa.617.0..sroa_idx.i, align 4, !alias.scope !1137
  %i.q = icmp eq i32 %.sroa.617.0.copyload.i, %2
  %i.r = zext i1 %i.q to i8
  br label %_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap19is_local_in_any_reg.exit

_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap19is_local_in_any_reg.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.i = phi i8 [ 1, %bb.c ], [ %i.r, %bb.e ], [ 1, %bb.b ], [ 0, %bb.d ]
  store ptr %1, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.0.0.i, ptr %i.t, align 8
  ret void

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack15register_locals(ptr noalias nofree noundef align 8 dereferenceable(112) %0, i64 noundef %1, i8 noundef range(i8 0, 7) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = alloca [112 x i8], align 8               ; 5 uses
  %i.c = alloca [112 x i8], align 8               ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands8StackPosEE14extend_trustedINtNtNtNtBL_4iter7sources8repeat_n7RepeatNBG_EEB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %1, i64 0)
  %3 = icmp eq i8 %2, 4                           ; 2 uses
  %i.e = icmp ugt i64 %1, 65535
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.04.0 = select i1 %3, i16 2, i16 1
  %i.f = trunc nuw i64 %1 to i16                  ; 2 uses
  %i.g = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %i.f, i16 %.sroa.04.0)
  %i.h = extractvalue { i16, i1 } %i.g, 1
  br i1 %i.h, label %bb.g, label %bb.d, !prof !126

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i64 17, ptr %i.i, align 4
  store i8 21, ptr %i.c, align 8
  %i.j = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack16push_local_slots.exit

bb.d:                                             ; preds = %bb.b
  %4 = zext i1 %3 to i16
  %5 = shl nuw i16 %i.f, %4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.l = load i16, ptr %i.k, align 8, !alias.scope !1140, !noundef !12 ; 2 uses
  %i.m = add i16 %i.l, %5                         ; 4 uses
  %i.n = icmp ult i16 %i.m, %i.l
  br i1 %i.n, label %bb.f, label %bb.e, !prof !126

bb.e:                                             ; preds = %bb.d
  store i16 %i.m, ptr %i.k, align 8, !alias.scope !1140
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i16 %i.m, ptr %i.o, align 2, !alias.scope !1140
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.q = load i16, ptr %i.p, align 4, !alias.scope !1140, !noundef !12
  %..i.i = tail call noundef i16 @llvm.umax.i16(i16 %i.m, i16 %i.q)
  store i16 %..i.i, ptr %i.p, align 4, !alias.scope !1140
  br label %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack16push_local_slots.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1140
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i64 9, ptr %i.r, align 4, !noalias !1140
  store i8 21, ptr %i.b, align 8, !noalias !1140
  %i.s = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.b), !noalias !1140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1140
  br label %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack16push_local_slots.exit

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i64 9, ptr %i.t, align 4
  store i8 21, ptr %i.a, align 8
  %i.u = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack16push_local_slots.exit

_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack16push_local_slots.exit: ; preds = %bb.f, %bb.e, %bb.c, %bb.g
  %.sroa.0.0 = phi ptr [ %i.u, %bb.g ], [ %i.j, %bb.c ], [ %i.s, %bb.f ], [ null, %bb.e ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack16push_temp_offset(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %1, i16 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 106 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !noundef !12 ; 3 uses
  %i.d = add i16 %i.c, %2                         ; 3 uses
  %i.e = icmp ult i16 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.b, !prof !126

bb.b:                                             ; preds = %bb.a
  store i16 %i.d, ptr %i.b, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 2 uses
  %i.g = load i16, ptr %i.f, align 4, !noundef !12
  %..i = tail call noundef i16 @llvm.umax.i16(i16 %i.d, i16 %i.g)
  store i16 %..i, ptr %i.f, align 4
  %i.h = zext i16 %i.c to i32
  %i.i = shl nuw nsw i32 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.i, ptr %i.j, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i64 9, ptr %i.k, align 4
  store i8 21, ptr %i.a, align 8
  %i.l = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 1, 0) i64 @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack18depth_to_stack_pos(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(112) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !12 ; 4 uses
  %i.e = icmp ult i64 %i.d, 288230376151711744
  tail call void @llvm.assume(i1 %i.e)
  %i.f = xor i64 %1, -1
  %i.g = add i64 %i.d, %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.b, align 8
  %.not.i = icmp eq i64 %i.d, %1
  br i1 %.not.i, label %bb.b, label %_RNvXs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB4_8StackPosINtNtCskKLDkoKarTP_4core7convert4FromjE4from.exit, !prof !126

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.44.0..sroa_idx.i, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @754, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @755) #19
  unreachable

_RNvXs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB4_8StackPosINtNtCskKLDkoKarTP_4core7convert4FromjE4from.exit: ; preds = %bb.a
  %i.h = sub i64 %i.d, %1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack18operand_to_temp_at(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #2 {
bb.a:
  %i.a = add i64 %2, -1                           ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !12 ; 5 uses
  %i.e = icmp ult i64 %i.a, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.h = load i8, ptr %0, align 8, !range !107, !noundef !12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = load i8, ptr %i.k, align 1, !range !18, !noundef !12 ; 2 uses
  switch i8 %i.h, label %default.unreachable14 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #19
  unreachable

default.unreachable14:                            ; preds = %bb.g, %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8, !noundef !12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !12
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !noundef !12
  tail call void @_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack12unlink_local(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i32 noundef %i.n, i64 noundef %i.p, i64 noundef %i.r)
  %.pre = load i64, ptr %i.c, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.t = load i8, ptr %i.s, align 2, !range !13, !noundef !12
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.b, %_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap7dealloc.exit, %bb.d, %bb.e
  %i.v = phi i64 [ %.pre, %bb.d ], [ %i.d, %_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap7dealloc.exit ], [ %i.d, %bb.e ], [ %i.d, %bb.b ] ; 2 uses
  %i.w = icmp ult i64 %i.a, %i.v
  br i1 %i.w, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  switch i8 %i.l, label %default.unreachable14 [
    i8 0, label %_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap7dealloc.exit
    i8 1, label %_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap7dealloc.exit
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
    i8 5, label %_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap7dealloc.exit
    i8 6, label %_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap7dealloc.exit
  ], !prof !1119

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap7dealloc.exit

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap7dealloc.exit

bb.j:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19, !noalias !1146
  unreachable

_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap7dealloc.exit: ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i.i = phi ptr [ %i.y, %bb.h ], [ %i.z, %bb.i ], [ %i.x, %bb.g ], [ %i.x, %bb.g ], [ %i.x, %bb.g ], [ %i.x, %bb.g ]
  store i32 2, ptr %.sroa.0.0.i.i, align 8, !alias.scope !1143, !noalias !1150
  br label %bb.f

bb.k:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.a ; 4 uses
  store i8 1, ptr %i.ab, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store i8 %i.l, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %i.j, ptr %.sroa.63.0..sroa_idx, align 4
  ret void
end_hunk_0
