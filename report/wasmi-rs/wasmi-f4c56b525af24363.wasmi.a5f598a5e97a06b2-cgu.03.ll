Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.03?download=true
inline.NumInlined: 4814
inline.NumDeleted: 1768
loop-unroll.NumCompletelyUnrolled: 193
loop-unroll.NumUnrolled: 193
begin_hunk_0_@_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator20copy_operand_to_slot:bb.a
  br label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator17select_copy_sr_op.exit

switch.lookup4.i:                                 ; preds = %bb.j
  %switch.offset5.i = add nuw nsw i16 %i.aa, 1074
  br label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator17select_copy_sr_op.exit

bb.m:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %.sroa.0.0.i27, ptr %i.ad, align 4, !alias.scope !2160
  br label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator17select_copy_sr_op.exit

bb.n:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %.sroa.0.0.i27, ptr %i.ae, align 4, !alias.scope !2160
  br label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator17select_copy_sr_op.exit

bb.o:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.6.0.copyload, ptr %i.af, align 4
  br label %bb.v

bb.p:                                             ; preds = %bb.f
  %i.ag = ptrtoint ptr %.sroa.719.0.copyload to i64 ; 3 uses
  switch i8 %.sroa.0.0.i22, label %default.unreachable2.i [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %bb.q
    i8 3, label %bb.r
    i8 4, label %bb.s
    i8 5, label %bb.q
    i8 6, label %bb.q
  ]

default.unreachable2.i:                           ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %.sroa.0.0.i27, ptr %i.ai, align 4, !alias.scope !2161, !noalias !2162
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.ah, ptr %i.aj, align 8, !alias.scope !2161, !noalias !2162
  br label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator17select_copy_sr_op.exit

bb.r:                                             ; preds = %bb.p, %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %.sroa.0.0.i27, ptr %i.ak, align 4, !alias.scope !2161, !noalias !2162
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ag, ptr %i.al, align 8, !alias.scope !2161, !noalias !2162
  br label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator17select_copy_sr_op.exit

bb.s:                                             ; preds = %bb.p
  %i.am = zext i64 %.sroa.820.0.copyload to i128
  %i.an = shl nuw i128 %i.am, 64
  %i.ao = zext i64 %i.ag to i128
  %i.ap = or disjoint i128 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %.sroa.0.0.i27, ptr %i.aq, align 4, !alias.scope !2161, !noalias !2162
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i128 %i.ap, ptr %i.ar, align 8, !alias.scope !2161, !noalias !2162
  br label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator17select_copy_sr_op.exit

_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator17select_copy_sr_op.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.n, %bb.m, %switch.lookup4.i, %switch.lookup2.i, %switch.lookup.i, %bb.l
  %storemerge35 = phi i16 [ 1019, %bb.m ], [ 1011, %bb.n ], [ %switch.offset5.i, %switch.lookup4.i ], [ 1016, %bb.l ], [ %switch.offset3.i, %switch.lookup2.i ], [ %switch.offset.i, %switch.lookup.i ], [ 1133, %bb.s ], [ 1013, %bb.r ], [ 1008, %bb.q ]
  store i16 %storemerge35, ptr %i.c, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.at = call { i64, ptr } @_RNvMsf_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoderNtB5_9OpEncoder9encode_op(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.as, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c) ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.at, 0
  %i.av = trunc nuw i64 %i.au to i1
  br i1 %i.av, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator17select_copy_sr_op.exit
  %i.aw = extractvalue { i64, ptr } %i.at, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8
  br label %bb.v

bb.u:                                             ; preds = %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator17select_copy_sr_op.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.0.i27, ptr %i.ay, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.e, %bb.o, %bb.t, %bb.u
  %storemerge.sink = phi i32 [ 0, %bb.u ], [ 1, %bb.t ], [ 0, %bb.o ], [ 1, %bb.e ]
  store i32 %storemerge.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator20copy_operands_to_dst(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %1, i32 noundef %2, i16 noundef %3, i16 noundef range(i16 0, 4) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.3 = alloca [6 x i8], align 2             ; 2 uses
  %.sroa.512 = alloca [16 x i8], align 8          ; 2 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = add i16 %4, %3                           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 408
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.n = icmp ult i16 %4, %i.e
  br i1 %i.n, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand2ty.exit
  %i.o = icmp ult i16 %4, %i.r
  br i1 %i.o, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.sroa.048.0.lcssa = phi i16 [ 0, %bb.a ], [ %i.ar, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.048.0.lcssa, ptr %i.q, align 8
  store i32 0, ptr %0, align 8
  br label %bb.l

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0159 = phi i16 [ %i.r, %bb.b ], [ %i.e, %bb.a ]
  %.sroa.048.0158 = phi i16 [ %i.ar, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.r = add i16 %.sroa.0.0159, -1                ; 3 uses
  %i.s = zext i16 %i.r to i64
  %i.t = call noundef i64 @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack18depth_to_stack_pos(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.f, i64 noundef %i.s), !noalias !2173 ; 3 uses
  %i.u = add i64 %i.t, -1                         ; 3 uses
  %i.v = load i64, ptr %i.g, align 8, !alias.scope !2174, !noalias !2173, !noundef !10 ; 2 uses
  %i.w = icmp ult i64 %i.u, %i.v
  br i1 %i.w, label %bb.c, label %bb.k

bb.c:                                             ; preds = %.lr.ph
  %i.x = load ptr, ptr %i.h, align 8, !alias.scope !2174, !noalias !2173, !nonnull !10, !noundef !10
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.u ; 6 uses
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.y, align 8, !noalias !2173
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !noalias !2173 ; 6 uses
  %.sroa.84.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %.sroa.84.0.copyload.i.i = load i32, ptr %.sroa.84.0..sroa_idx.i.i, align 4, !noalias !2173 ; 7 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !2173 ; 5 uses
  %.sroa.11.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.11.0.copyload.i.i to i32 ; 2 uses
  switch i8 %.sroa.0.0.copyload.i.i, label %default.unreachable26.i.i.i [
    i8 0, label %bb.d
    i8 2, label %bb.j
    i8 1, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  switch i8 %.sroa.4.0.copyload.i.i, label %default.unreachable26.i.i.i [
    i8 0, label %bb.g
    i8 1, label %bb.g
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack4peek.exit
    i8 5, label %bb.g
    i8 6, label %bb.g
  ]

default.unreachable26.i.i.i:                      ; preds = %bb.d, %bb.c
  unreachable

bb.e:                                             ; preds = %bb.d
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.d, %bb.d, %bb.d
  %.sink.i.i.i = phi i64 [ 36, %bb.f ], [ 20, %bb.e ], [ 4, %bb.d ], [ 4, %bb.d ], [ 4, %bb.d ], [ 4, %bb.d ]
  %.sroa.03.0.in.i.i.i = phi ptr [ %i.j, %bb.f ], [ %i.k, %bb.e ], [ %i.i, %bb.d ], [ %i.i, %bb.d ], [ %i.i, %bb.d ], [ %i.i, %bb.d ]
  %.sroa.03.0.i.i.i = load i32, ptr %.sroa.03.0.in.i.i.i, align 8, !alias.scope !2175, !noalias !2176
  %i.z = trunc i32 %.sroa.03.0.i.i.i to i1
  br i1 %i.z, label %bb.h, label %_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack4peek.exit

bb.h:                                             ; preds = %bb.g
  %.sroa.8.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink.i.i.i
  %.sroa.8.0.i.i.i = load i32, ptr %.sroa.8.0..sroa_idx9.i.i.i, align 4, !alias.scope !2175, !noalias !2176
  %i.aa = icmp eq i32 %.sroa.8.0.i.i.i, %.sroa.11.sroa.0.0.extract.trunc.i.i
  %i.ab = zext i1 %i.aa to i32
  br label %_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack4peek.exit

bb.i:                                             ; preds = %bb.c
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.7.0..sroa_idx.i.i, align 2, !noalias !2173
  %.sroa.0.sroa.0.0.extract.trunc = trunc i64 %i.t to i32
  %.sroa.0.sroa.7.0.extract.shift = lshr i64 %i.t, 32
  %.sroa.8.sroa.0.sroa.0.0.extract.trunc = trunc i32 %.sroa.84.0.copyload.i.i to i8
  %.sroa.8.sroa.0.sroa.8.0.extract.shift = lshr i32 %.sroa.84.0.copyload.i.i, 8
  %.sroa.8.sroa.0.sroa.9.0.extract.shift = lshr i32 %.sroa.84.0.copyload.i.i, 16
  br label %_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack4peek.exit

bb.j:                                             ; preds = %bb.c
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.13.0.copyload.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !noalias !2173 ; 6 uses
  %.sroa.0.sroa.7.0.extract.shift79 = lshr i64 %.sroa.11.0.copyload.i.i, 32
  %.sroa.8.sroa.0.sroa.0.0.extract.trunc73 = trunc i64 %.sroa.13.0.copyload.i.i to i8
  %.sroa.8.sroa.0.sroa.8.0.extract.shift7481 = lshr i64 %.sroa.13.0.copyload.i.i, 8
  %.sroa.8.sroa.0.sroa.8.0.extract.trunc75 = trunc i64 %.sroa.8.sroa.0.sroa.8.0.extract.shift7481 to i32
  %5 = lshr i64 %.sroa.13.0.copyload.i.i, 16
  %.sroa.8.sroa.0.sroa.9.0.extract.trunc77 = trunc i64 %5 to i32
  %.sroa.8.sroa.9.0.extract.shift = lshr i64 %.sroa.13.0.copyload.i.i, 32
  %.sroa.8.sroa.9.0.extract.trunc = trunc i64 %.sroa.8.sroa.9.0.extract.shift to i8
  %.sroa.8.sroa.11.0.extract.shift = lshr i64 %.sroa.13.0.copyload.i.i, 40
  %.sroa.8.sroa.11.0.extract.trunc = trunc i64 %.sroa.8.sroa.11.0.extract.shift to i8
  %.sroa.8.sroa.12.0.extract.shift = and i64 %.sroa.13.0.copyload.i.i, -281474976710656
  %6 = and i32 %.sroa.8.sroa.0.sroa.9.0.extract.trunc77, 65535
  br label %_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack4peek.exit

bb.k:                                             ; preds = %.lr.ph
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.u, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #28, !noalias !2173
  unreachable

_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack4peek.exit: ; preds = %bb.d, %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.0.sroa.7.0 = phi i64 [ %.sroa.0.sroa.7.0.extract.shift, %bb.i ], [ %.sroa.0.sroa.7.0.extract.shift79, %bb.j ], [ %.sroa.11.0.copyload.i.i, %bb.h ], [ %.sroa.11.0.copyload.i.i, %bb.g ], [ %.sroa.11.0.copyload.i.i, %bb.d ]
  %.sroa.0.sroa.0.0 = phi i32 [ %.sroa.0.sroa.0.0.extract.trunc, %bb.i ], [ %.sroa.11.sroa.0.0.extract.trunc.i.i, %bb.j ], [ %.sroa.84.0.copyload.i.i, %bb.h ], [ %.sroa.84.0.copyload.i.i, %bb.g ], [ %.sroa.84.0.copyload.i.i, %bb.d ]
  %.sroa.8.sroa.0.sroa.9.0 = phi i32 [ %.sroa.8.sroa.0.sroa.9.0.extract.shift, %bb.i ], [ %6, %bb.j ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.d ]
  %.sroa.8.sroa.0.sroa.8.0 = phi i32 [ %.sroa.8.sroa.0.sroa.8.0.extract.shift, %bb.i ], [ %.sroa.8.sroa.0.sroa.8.0.extract.trunc75, %bb.j ], [ %i.ab, %bb.h ], [ 0, %bb.g ], [ 0, %bb.d ]
  %.sroa.8.sroa.0.sroa.0.0 = phi i8 [ %.sroa.8.sroa.0.sroa.0.0.extract.trunc, %bb.i ], [ %.sroa.8.sroa.0.sroa.0.0.extract.trunc73, %bb.j ], [ %.sroa.4.0.copyload.i.i, %bb.h ], [ %.sroa.4.0.copyload.i.i, %bb.g ], [ %.sroa.4.0.copyload.i.i, %bb.d ] ; 2 uses
  %.sroa.8.sroa.12.0 = phi i64 [ 0, %bb.i ], [ %.sroa.8.sroa.12.0.extract.shift, %bb.j ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.d ]
  %.sroa.8.sroa.11.0 = phi i8 [ %.sroa.7.0.copyload.i.i, %bb.i ], [ %.sroa.8.sroa.11.0.extract.trunc, %bb.j ], [ undef, %bb.h ], [ undef, %bb.g ], [ undef, %bb.d ]
  %.sroa.8.sroa.9.0 = phi i8 [ %.sroa.4.0.copyload.i.i, %bb.i ], [ %.sroa.8.sroa.9.0.extract.trunc, %bb.j ], [ undef, %bb.h ], [ undef, %bb.g ], [ undef, %bb.d ] ; 2 uses
  %.sroa.16.0 = phi i32 [ undef, %bb.i ], [ %.sroa.84.0.copyload.i.i, %bb.j ], [ undef, %bb.h ], [ undef, %bb.g ], [ undef, %bb.d ]
  %.sink27.i.i.i = phi i8 [ 8, %bb.i ], [ %.sroa.4.0.copyload.i.i, %bb.j ], [ 7, %bb.h ], [ 7, %bb.g ], [ 7, %bb.d ] ; 4 uses
  %i.ac = zext i16 %.sroa.048.0158 to i32
  %i.ad = shl nuw nsw i32 %i.ac, 3
  %i.ae = add i32 %i.ad, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.0.sroa.7.0.insert.ext = shl i64 %.sroa.0.sroa.7.0, 32
  %.sroa.0.sroa.0.0.insert.ext = zext i32 %.sroa.0.sroa.0.0 to i64
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.7.0.insert.ext, %.sroa.0.sroa.0.0.insert.ext
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.b, align 8
  %.sroa.8.sroa.0.sroa.9.0.insert.shift = shl nuw i32 %.sroa.8.sroa.0.sroa.9.0, 16
  %.sroa.8.sroa.0.sroa.8.0.insert.ext = shl i32 %.sroa.8.sroa.0.sroa.8.0, 8
  %.sroa.8.sroa.0.sroa.8.0.insert.shift = and i32 %.sroa.8.sroa.0.sroa.8.0.insert.ext, 65280
  %.sroa.8.sroa.0.sroa.8.0.insert.insert = or disjoint i32 %.sroa.8.sroa.0.sroa.8.0.insert.shift, %.sroa.8.sroa.0.sroa.9.0.insert.shift
  %.sroa.8.sroa.0.sroa.0.0.insert.ext = zext i8 %.sroa.8.sroa.0.sroa.0.0 to i32
  %.sroa.8.sroa.0.sroa.0.0.insert.insert = or disjoint i32 %.sroa.8.sroa.0.sroa.8.0.insert.insert, %.sroa.8.sroa.0.sroa.0.0.insert.ext
  %.sroa.8.sroa.11.0.insert.ext = zext i8 %.sroa.8.sroa.11.0 to i64
  %.sroa.8.sroa.11.0.insert.shift = shl nuw nsw i64 %.sroa.8.sroa.11.0.insert.ext, 40
  %.sroa.8.sroa.11.0.insert.insert = or disjoint i64 %.sroa.8.sroa.11.0.insert.shift, %.sroa.8.sroa.12.0
  %.sroa.8.sroa.9.0.insert.ext = zext i8 %.sroa.8.sroa.9.0 to i64
  %.sroa.8.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.8.sroa.9.0.insert.ext, 32
  %.sroa.8.sroa.9.0.insert.insert = or disjoint i64 %.sroa.8.sroa.11.0.insert.insert, %.sroa.8.sroa.9.0.insert.shift
  %.sroa.8.sroa.0.0.insert.ext = zext i32 %.sroa.8.sroa.0.sroa.0.0.insert.insert to i64
  %.sroa.8.sroa.0.0.insert.insert = or disjoint i64 %.sroa.8.sroa.9.0.insert.insert, %.sroa.8.sroa.0.0.insert.ext
  store i64 %.sroa.8.sroa.0.0.insert.insert, ptr %.sroa.8.0..sroa_idx, align 8
  store i32 %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 8
  store i8 %.sink27.i.i.i, ptr %.sroa.17.0..sroa_idx, align 4
  call fastcc void @_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator17select_copy_sx_op(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d, i32 noundef %i.ae, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.af = load i16, ptr %i.d, align 8, !range !28, !noundef !10 ; 3 uses
  %i.ag = icmp eq i16 %i.af, -2
  br i1 %i.ag, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.m, %bb.p, %bb.v, %._crit_edge
  ret void

bb.m:                                             ; preds = %_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack4peek.exit
  %i.ah = load ptr, ptr %.sroa.554.0..sroa_idx, align 8, !nonnull !10, !align !15, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  store i32 1, ptr %0, align 8
  br label %bb.l

bb.n:                                             ; preds = %_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack4peek.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.453.0..sroa_idx, i64 6, i1 false)
  %.sroa.554.0.copyload = load ptr, ptr %.sroa.554.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.655.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq i16 %i.af, -1
  br i1 %.not, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.af, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3, i64 6, i1 false)
  store ptr %.sroa.554.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512, i64 16, i1 false)
  %i.aj = call { i64, ptr } @_RNvMsf_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoderNtB5_9OpEncoder9encode_op(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c) ; 2 uses
  %i.ak = extractvalue { i64, ptr } %i.aj, 0
  %i.al = trunc nuw i64 %i.ak to i1
  br i1 %i.al, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.am = extractvalue { i64, ptr } %i.aj, 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8
  store i32 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q
  %i.ao = add nsw i8 %.sink27.i.i.i, -7
  %i.ap = icmp samesign ugt i8 %.sink27.i.i.i, 6
  %narrow.i = select i1 %i.ap, i8 %i.ao, i8 2
  switch i8 %narrow.i, label %bb.s [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand2ty.exit
  ]

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r
  br label %_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand2ty.exit

bb.u:                                             ; preds = %bb.r
  br label %_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand2ty.exit

_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand2ty.exit: ; preds = %bb.r, %bb.t, %bb.u
  %.sroa.0.0.i = phi i8 [ %.sroa.8.sroa.0.sroa.0.0, %bb.t ], [ %.sroa.8.sroa.9.0, %bb.u ], [ %.sink27.i.i.i, %bb.r ]
  %i.aq = icmp eq i8 %.sroa.0.0.i, 4
  %..i = select i1 %i.aq, i16 2, i16 1
  %i.ar = add i16 %..i, %.sroa.048.0158           ; 3 uses
  %i.as = icmp ult i16 %i.ar, %.sroa.048.0158
  br i1 %i.as, label %bb.v, label %bb.b, !prof !18

bb.v:                                             ; preds = %_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand2ty.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i64 9, ptr %i.at, align 4
  store i8 21, ptr %i.a, align 8
  %i.au = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.av, align 8
  store i32 1, ptr %0, align 8
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator20preserve_reg_of_type(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %0, i8 noundef range(i8 0, 7) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack11dealloc_reg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %0, i8 noundef %1)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  %i.e = load i8, ptr %i.d, align 1, !range !20, !noundef !10
  %.not = icmp eq i8 %i.e, 2
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8 ; 7 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator12fuse_copy_sr(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(496) %0, i32 noundef %.sroa.4.0.copyload, i8 noundef %1)
  %i.f = load i16, ptr %i.b, align 8, !range !21, !noundef !10
  %.not5 = icmp eq i16 %i.f, -1
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @_RNvMsf_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoderNtB5_9OpEncoder11drop_staged(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.g)
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2179)
  switch i8 %.sroa.5.0.copyload, label %default.unreachable1.i [
    i8 0, label %bb.e
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.e
    i8 6, label %bb.e
  ], !prof !32

default.unreachable1.i:                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.h = lshr i32 %.sroa.4.0.copyload, 3
  %i.i = trunc i32 %i.h to i16                    ; 2 uses
  %i.j = icmp ult i16 %i.i, 10
  br i1 %i.j, label %switch.lookup.i, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.k = lshr i32 %.sroa.4.0.copyload, 3
  %i.l = trunc i32 %i.k to i16                    ; 2 uses
  %i.m = icmp ult i16 %i.l, 10
  br i1 %i.m, label %switch.lookup2.i, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.n = lshr i32 %.sroa.4.0.copyload, 3
  %i.o = trunc i32 %i.n to i16                    ; 2 uses
  %i.p = icmp ult i16 %i.o, 10
  br i1 %i.p, label %switch.lookup4.i, label %bb.j

bb.h:                                             ; preds = %bb.d
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #28, !noalias !2179
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.4.0.copyload, ptr %i.q, align 4, !alias.scope !2179
  br label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator17select_copy_sr_op.exit

switch.lookup.i:                                  ; preds = %bb.e
  %switch.offset.i = add nuw nsw i16 %i.i, 1054
  br label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator17select_copy_sr_op.exit

switch.lookup2.i:                                 ; preds = %bb.f
  %switch.offset3.i = add nuw nsw i16 %i.l, 1064
  br label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator17select_copy_sr_op.exit

switch.lookup4.i:                                 ; preds = %bb.g
  %switch.offset5.i = add nuw nsw i16 %i.o, 1074
  br label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator17select_copy_sr_op.exit

bb.j:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.4.0.copyload, ptr %i.r, align 4, !alias.scope !2179
  br label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator17select_copy_sr_op.exit

bb.k:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.4.0.copyload, ptr %i.s, align 4, !alias.scope !2179
  br label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator17select_copy_sr_op.exit

_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator17select_copy_sr_op.exit: ; preds = %bb.i, %switch.lookup.i, %switch.lookup2.i, %switch.lookup4.i, %bb.j, %bb.k
  %.sink.i = phi i16 [ 1011, %bb.k ], [ %switch.offset5.i, %switch.lookup4.i ], [ 1016, %bb.i ], [ %switch.offset3.i, %switch.lookup2.i ], [ %switch.offset.i, %switch.lookup.i ], [ 1019, %bb.j ]
  store i16 %.sink.i, ptr %i.a, align 8, !alias.scope !2179
  br label %bb.l

end_hunk_0
