Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.12?download=true
inline.NumInlined: 803
inline.NumDeleted: 402
begin_hunk_0_@_RNvMNtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB2_7CodeMap23init_func_as_uncompiled:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %.sroa.0.0.copyload, ptr %i.aw, align 8, !alias.scope !1443, !noalias !1490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 56 ; 2 uses
  %i.ay = load atomic i8, ptr %i.ax monotonic, align 1, !noalias !1491
  %.not.i9 = icmp eq i8 %i.ay, 0
  br i1 %.not.i9, label %bb.aa, label %bb.w, !prof !1198

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 67 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #42
          to label %bb.x unwind label %bb.y, !noalias !1491

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6engine8code_map19UncompiledFuncEntryEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h) #39
          to label %.body.thread unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.aa:                                            ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false)
  store atomic i8 1, ptr %i.ax release, align 8, !noalias !1494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

.body.thread:                                     ; preds = %bb.ac, %bb.ab, %bb.ad, %bb.y, %.body.i, %bb.h
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.az, %bb.y ], [ %.pn.i, %.body.i ], [ %.pn.i, %bb.h ], [ %i.bb, %bb.ad ], [ %i.bb, %bb.ab ], [ %i.bb, %bb.ac ]
  resume { ptr, i32 } %eh.lpad-body16

bb.ab:                                            ; preds = %bb.d, %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_5Funcs10get_within.exit.thread
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  %i.bc = load ptr, ptr %6, align 8, !alias.scope !1497, !noundef !4 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.body.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !noalias !1500
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.ad, label %.body.thread

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs9FmeSmcCnTG_10wasmparser9validator4core6ModuleE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %6) #41
          to label %.body.thread unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack10push_block(ptr noalias nofree noundef align 8 dereferenceable(216) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = call noundef i16 @_RNvMNtNtCsefoF4u9kbII_5wasmi6engine10block_typeNtB2_9BlockType10len_params(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1509, !noalias !1512, !noundef !4 ; 2 uses
  %i.j = icmp ult i64 %i.i, 288230376151711744
  call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1, !noalias !1514
  call void @_RINvMNtNtCsefoF4u9kbII_5wasmi6engine10block_typeNtB3_9BlockType14func_type_withINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtNtNtB5_10translator4func5stack7control12BranchParamsNtNtB7_5error5ErrorENCNvMs0_B1V_NtB1V_5Stack13branch_params0EB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.l = load i8, ptr %i.k, align 2, !range !1229, !noundef !4 ; 2 uses
  %i.m = icmp eq i8 %i.l, -2
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.e, align 8, !nonnull !4, !align !400, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = zext i16 %i.g to i64
  %i.p = sub nsw i64 %i.i, %i.o
  %.sroa.09.0.copyload = load ptr, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0.copyload = load i16, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 11
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.8.0..sroa_idx8, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.6.0..sroa_idx, i64 5, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %.sroa.09.0.copyload, ptr %i.d, align 8
  %.sroa.7.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i16 %.sroa.4.0.copyload, ptr %.sroa.7.0..sroa_idx3, align 8
  %.sroa.75.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  store i8 %i.l, ptr %.sroa.75.0..sroa_idx6, align 2
  %i.q = load i64, ptr %0, align 8, !range !1199, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8
  call void @_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack10push_block(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, i64 noundef %i.p, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.d, i64 noundef %2, i64 noundef %i.q, i64 %i.s)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.n, %bb.b ], [ null, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack10push_local(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(216) %1, i32 noundef %2, i8 noundef range(i8 0, 7) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call fastcc void @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack10push_local(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %i.a, i32 noundef %2, i8 noundef %3) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack11dealloc_reg(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(216) %1, i8 noundef range(i8 0, 7) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack11dealloc_reg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a, i8 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack11pop_control(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef align 8 dereferenceable(216) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack3pop(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !1519, !noundef !4
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.a, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @16, ptr noundef nonnull inttoptr (i64 91 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack12branch_slots(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %2, align 8, !range !44, !noundef !4
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.d = load i16, ptr %i.c, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i16
  %.sroa.0.0 = select i1 %i.b, i16 %i.d, i16 %i.g ; 2 uses
  %i.h = icmp eq i16 %.sroa.0.0, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 202
  %i.j = load i16, ptr %i.i, align 2, !noundef !4
  %i.k = zext i16 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 3
  br label %_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand10temp_slots.exit

bb.c:                                             ; preds = %bb.a
  %i.m = zext i16 %.sroa.0.0 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.o = add nsw i64 %i.m, -1
  %i.p = tail call noundef i64 @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack18depth_to_stack_pos(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.n, i64 noundef range(i64 0, 65535) %i.o), !noalias !1520
  %i.q = add i64 %i.p, -1                         ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !1523, !noalias !1520, !noundef !4 ; 2 uses
  %i.t = icmp ult i64 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1523, !noalias !1520, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.q ; 5 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.w, align 8, !noalias !1520
  %.sroa.84.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.sroa.84.0.copyload.i = load i32, ptr %.sroa.84.0..sroa_idx.i, align 4, !noalias !1520 ; 4 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.11.0.copyload.i = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !1520
  %.sroa.11.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.11.0.copyload.i to i32
  switch i8 %.sroa.0.0.copyload.i, label %default.unreachable26.i.i [
    i8 0, label %_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand10temp_slots.exit
    i8 2, label %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit
    i8 1, label %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread.thread67
  ]

default.unreachable26.i.i:                        ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #38, !noalias !1520
  unreachable

_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit: ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1, !noalias !1520
  %.sroa.4.0.copyload.i.fr = freeze i8 %.sroa.4.0.copyload.i ; 2 uses
  %i.x = icmp ugt i8 %.sroa.4.0.copyload.i.fr, 6
  br i1 %i.x, label %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread, label %_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand10temp_slots.exit

_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread: ; preds = %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.13.0.copyload.i8.a = load i32, ptr %.sroa.13.0..sroa_idx.i, align 8
  switch i8 %.sroa.4.0.copyload.i.fr, label %bb.f [
    i8 7, label %_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand10temp_slots.exit
    i8 8, label %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread.thread67
    i8 9, label %.thread
  ]

bb.f:                                             ; preds = %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread
  unreachable

_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread.thread67: ; preds = %bb.d, %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread
  %.sroa.8.sroa.8.03575.in = phi i32 [ %.sroa.13.0.copyload.i8.a, %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread ], [ %.sroa.84.0.copyload.i, %bb.d ]
  br label %_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand10temp_slots.exit

.thread:                                          ; preds = %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread
  br label %_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand10temp_slots.exit

_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand10temp_slots.exit: ; preds = %bb.d, %.thread, %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread.thread67, %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread, %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit, %bb.b
  %.sroa.01.0 = phi i32 [ %i.l, %bb.b ], [ %.sroa.11.sroa.0.0.extract.trunc.i, %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread ], [ %.sroa.8.sroa.8.03575.in, %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread.thread67 ], [ %.sroa.84.0.copyload.i, %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit ], [ %.sroa.84.0.copyload.i, %.thread ], [ %.sroa.84.0.copyload.i, %bb.d ]
  %i.y = icmp eq i8 %3, 1
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand10temp_slots.exit
  %i.z = tail call { ptr, i64 } @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType6params(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  br label %bb.i

bb.h:                                             ; preds = %_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand10temp_slots.exit
  %i.aa = tail call { ptr, i64 } @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType7results(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i64 } [ %i.z, %bb.g ], [ %i.aa, %bb.h ] ; 2 uses
  %.sroa.02.0 = extractvalue { ptr, i64 } %.pn, 0 ; 3 uses
  %.sroa.3.0 = extractvalue { ptr, i64 } %.pn, 1  ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  %i.ab = icmp samesign eq i64 %.sroa.3.0, 0
  br i1 %i.ab, label %bb.k, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.sroa.3.0, 4
  br i1 %min.iters.check, label %.preheader.i.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.preheader
  %n.vec = and i64 %.sroa.3.0, -4                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi76 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %wide.load = load <2 x i8>, ptr %i.ac, align 1, !alias.scope !1525, !noalias !1528
  %wide.load77 = load <2 x i8>, ptr %i.ad, align 1, !alias.scope !1525, !noalias !1528
  %i.ae = icmp eq <2 x i8> %wide.load, splat (i8 4)
  %i.af = icmp eq <2 x i8> %wide.load77, splat (i8 4)
  %i.ag = select <2 x i1> %i.ae, <2 x i64> splat (i64 2), <2 x i64> splat (i64 1)
  %i.ah = select <2 x i1> %i.af, <2 x i64> splat (i64 2), <2 x i64> splat (i64 1)
  %i.ai = add <2 x i64> %i.ag, %vec.phi           ; 2 uses
  %i.aj = add <2 x i64> %i.ah, %vec.phi76         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1530

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aj, %i.ai
  %i.al = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.sroa.3.0, %n.vec
  br i1 %cmp.n, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENvNtNtNtCsefoF4u9kbII_5wasmi6engine10translator5utils21required_cells_for_tyENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldtjjNvYjINtNtBc_7convert4FromtE4fromNCINvXsK_NtB3M_5accumjNtB5l_3Sum3sumIBO_BN_B4G_EE0E0EB2B_.exit.i, label %.preheader.i.preheader78

.preheader.i.preheader78:                         ; preds = %.preheader.i.preheader, %middle.block
  %.sroa.04.0.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %i.al, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader78, %.preheader.i
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.aq, %.preheader.i ], [ %.sroa.04.0.i.i.i.i.ph, %.preheader.i.preheader78 ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ %i.ap, %.preheader.i ], [ %.sroa.02.0.i.i.i.i.ph, %.preheader.i.preheader78 ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 %.sroa.04.0.i.i.i.i
  %.val.i.i.i.i = load i8, ptr %i.am, align 1, !range !1222, !alias.scope !1525, !noalias !1528, !noundef !4
  %i.an = icmp eq i8 %.val.i.i.i.i, 4
  %i.ao = select i1 %i.an, i64 2, i64 1
  %i.ap = add i64 %i.ao, %.sroa.02.0.i.i.i.i      ; 2 uses
  %i.aq = add nuw nsw i64 %.sroa.04.0.i.i.i.i, 1  ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %.sroa.3.0
  br i1 %i.ar, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENvNtNtNtCsefoF4u9kbII_5wasmi6engine10translator5utils21required_cells_for_tyENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldtjjNvYjINtNtBc_7convert4FromtE4fromNCINvXsK_NtB3M_5accumjNtB5l_3Sum3sumIBO_BN_B4G_EE0E0EB2B_.exit.i, label %.preheader.i, !llvm.loop !1531

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENvNtNtNtCsefoF4u9kbII_5wasmi6engine10translator5utils21required_cells_for_tyENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldtjjNvYjINtNtBc_7convert4FromtE4fromNCINvXsK_NtB3M_5accumjNtB5l_3Sum3sumIBO_BN_B4G_EE0E0EB2B_.exit.i: ; preds = %.preheader.i, %middle.block
  %.lcssa = phi i64 [ %i.al, %middle.block ], [ %i.ap, %.preheader.i ] ; 2 uses
  %i.as = icmp ugt i64 %.lcssa, 65535
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENvNtNtNtCsefoF4u9kbII_5wasmi6engine10translator5utils21required_cells_for_tyENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldtjjNvYjINtNtBc_7convert4FromtE4fromNCINvXsK_NtB3M_5accumjNtB5l_3Sum3sumIBO_BN_B4G_EE0E0EB2B_.exit.i
  %i.at = tail call fastcc noundef nonnull align 8 ptr @_RNvXsc_NtCsefoF4u9kbII_5wasmi5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtNtB7_6engine10translator5error16TranslationErrorE4from(i64 10) #37, !noalias !1532
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.au, align 8
  br label %bb.l

bb.k:                                             ; preds = %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENvNtNtNtCsefoF4u9kbII_5wasmi6engine10translator5utils21required_cells_for_tyENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldtjjNvYjINtNtBc_7convert4FromtE4fromNCINvXsK_NtB3M_5accumjNtB5l_3Sum3sumIBO_BN_B4G_EE0E0EB2B_.exit.i, %bb.i
  %.sroa.0.0.i.i.i6.i = phi i64 [ %.lcssa, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENvNtNtNtCsefoF4u9kbII_5wasmi6engine10translator5utils21required_cells_for_tyENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldtjjNvYjINtNtBc_7convert4FromtE4fromNCINvXsK_NtB3M_5accumjNtB5l_3Sum3sumIBO_BN_B4G_EE0E0EB2B_.exit.i ], [ 0, %bb.i ]
  %i.av = trunc nuw i64 %.sroa.0.0.i.i.i6.i to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.01.0, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.av, ptr %i.ax, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %storemerge = phi i32 [ 0, %bb.k ], [ 1, %bb.j ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack12peek_control(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack12push_operand(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(216) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call fastcc void @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack12push_operand(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %i.a, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack13branch_params(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %1, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %3, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @_RINvMNtNtCsefoF4u9kbII_5wasmi6engine10block_typeNtB3_9BlockType14func_type_withINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtNtNtB5_10translator4func5stack7control12BranchParamsNtNtB7_5error5ErrorENCNvMs0_B1V_NtB1V_5Stack13branch_params0EB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack15operand_to_temp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(216) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  %i.c = tail call noundef i64 @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack18depth_to_stack_pos(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.b, i64 noundef %2), !noalias !1533 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1536
  call void @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack18operand_to_temp_at(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.b, i64 noundef %i.c), !noalias !1533
  %i.d = load i8, ptr %i.a, align 8, !range !1538, !noalias !1536, !noundef !4
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !1222, !noalias !1536, !noundef !4
  %i.h = load <2 x i32>, ptr %i.e, align 4, !noalias !1536
  store <2 x i32> %i.h, ptr %0, align 8, !alias.scope !1533, !noalias !1539
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.g, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !1533, !noalias !1539
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1, !alias.scope !1533, !noalias !1539
  br label %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack15operand_to_temp.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noalias !1536, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.l = load i8, ptr %i.k, align 1, !range !1222, !noalias !1536, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.n = load i8, ptr %i.m, align 2, !range !44, !noalias !1536, !noundef !4
  store i64 %i.c, ptr %0, align 8, !alias.scope !1533, !noalias !1539
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !1533, !noalias !1539
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.l, ptr %.sroa.58.0..sroa_idx.i, align 4, !alias.scope !1533, !noalias !1539
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.n, ptr %.sroa.69.0..sroa_idx.i, align 1, !alias.scope !1533, !noalias !1539
  br label %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack15operand_to_temp.exit

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !1222, !noalias !1536, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.r = load i32, ptr %i.q, align 4, !noalias !1536, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load <2 x i64>, ptr %i.s, align 8, !noalias !1536
  store <2 x i64> %i.t, ptr %0, align 8, !alias.scope !1533, !noalias !1539
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.r, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1533, !noalias !1539
  br label %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack15operand_to_temp.exit

_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack15operand_to_temp.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sink.i = phi i8 [ %i.p, %bb.d ], [ 8, %bb.c ], [ 7, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sink.i, ptr %i.u, align 4, !alias.scope !1533, !noalias !1539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1536
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack15preserve_locals(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(216) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack15preserve_locals(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a, i32 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack15push_func_block(ptr noalias nofree noundef align 8 dereferenceable(216) %0, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %1, i64 noundef %2, i64 noundef range(i64 0, 2) %3, i64 %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
end_hunk_0
