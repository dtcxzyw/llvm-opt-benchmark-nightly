Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.01?download=true
inline.NumInlined: 3173
inline.NumDeleted: 1166
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN4anki9scheduler9answering16CardStateUpdater9into_card17h964002a57b76a9a8E:bb.a
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #45
  unreachable

common.resume:                                    ; preds = %bb.d, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn, %bb.d ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr49drop_in_place$LT$anki..deckconfig..DeckConfig$GT$17hb084b21ef4d188d6E.exit": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i"
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 576
  tail call fastcc void @"_ZN4core3ptr65drop_in_place$LT$anki_proto..deck_config..deck_config..Config$GT$17h8cd7d46a28072120E"(ptr noalias noundef align 8 dereferenceable(336) %i.m)
  ret void

bb.k:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, float } @"_ZN4anki9scheduler9answering34_$LT$impl$u20$anki..card..Card$GT$15get_fuzz_factor17h9a7a3e1a70ccff62E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(152) %0, i1 noundef zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [320 x i8], align 16              ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !1533, !noundef !11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1533, !noundef !11
  %i.h = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4anki17PYTHON_UNIT_TESTS17h43767944e6a3b243E, i64 8) acquire, align 8, !noalias !1533
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4anki9scheduler9answering13get_fuzz_seed17ha0f7669b5650e8c3E.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1533
  store ptr @_ZN4anki17PYTHON_UNIT_TESTS17h43767944e6a3b243E, ptr %i.c, align 8, !noalias !1533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1533
  store ptr %i.c, ptr %i.b, align 8, !noalias !1533
  call void @_ZN3std3sys4sync4once5futex4Once4call17h2423c0c333975c13E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN4anki17PYTHON_UNIT_TESTS17h43767944e6a3b243E, i64 8), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @67, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !1533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1533
  br label %_ZN4anki9scheduler9answering13get_fuzz_seed17ha0f7669b5650e8c3E.exit

_ZN4anki9scheduler9answering13get_fuzz_seed17ha0f7669b5650e8c3E.exit: ; preds = %bb.a, %bb.b
  %i.j = load i8, ptr @_ZN4anki17PYTHON_UNIT_TESTS17h43767944e6a3b243E, align 8, !range !12, !noalias !1533, !noundef !11
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN4anki9scheduler9answering15get_fuzz_factor17h05637909c6deaed6E.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4anki9scheduler9answering13get_fuzz_seed17ha0f7669b5650e8c3E.exit
  %i.l = call i32 @llvm.usub.sat.i32(i32 %i.e, i32 1)
  %.sroa.0.0.i = select i1 %1, i32 %i.l, i32 %i.e
  %i.m = zext i32 %.sroa.0.0.i to i64
  %i.n = add i64 %i.g, %i.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN9rand_core11SeedableRng13seed_from_u6417hcc8144888d03ca89E(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(address) dereferenceable(320) %i.a, i64 noundef %i.n)
  %i.o = call noundef float @_ZN4rand3rng3Rng12random_range17ha87417ecab203941E(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.a, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN4anki9scheduler9answering15get_fuzz_factor17h05637909c6deaed6E.exit

_ZN4anki9scheduler9answering15get_fuzz_factor17h05637909c6deaed6E.exit: ; preds = %_ZN4anki9scheduler9answering13get_fuzz_seed17ha0f7669b5650e8c3E.exit, %bb.c
  %.sroa.02.0.i = phi i32 [ 1, %bb.c ], [ 0, %_ZN4anki9scheduler9answering13get_fuzz_seed17ha0f7669b5650e8c3E.exit ]
  %.sroa.3.0.i = phi float [ %i.o, %bb.c ], [ undef, %_ZN4anki9scheduler9answering13get_fuzz_seed17ha0f7669b5650e8c3E.exit ]
  %i.p = insertvalue { i32, float } poison, i32 %.sroa.02.0.i, 0
  %i.q = insertvalue { i32, float } %i.p, float %.sroa.3.0.i, 1
  ret { i32, float } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18current_card_state17hdc90cc5c8ce27d4cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([60 x i8]) align 4 captures(none) dereferenceable(60) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(1032) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [320 x i8], align 16              ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [320 x i8], align 16              ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.21 = alloca [3 x i8], align 1            ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.h = load i64, ptr %i.g, align 8, !range !10, !noundef !11
  %i.i = icmp eq i64 %i.h, -9223372036854775808   ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.k = load i32, ptr %i.j, align 4, !noundef !11 ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.v, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.n = load i8, ptr %i.m, align 4, !range !30, !noundef !11
  %i.o = icmp eq i8 %i.n, 2
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.q = load i32, ptr %i.p, align 8, !noundef !11 ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.s = load i32, ptr %i.r, align 8, !noundef !11
  %.sroa.0.0.i = tail call noundef i32 @llvm.smin.i32(i32 %i.s, i32 %i.q)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.v, %bb.b, %bb.d
  %.sroa.0.0 = phi i32 [ %i.db, %bb.v ], [ %i.k, %bb.b ], [ %.sroa.0.0.i, %bb.d ], [ %i.q, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.u = load i32, ptr %i.t, align 4, !alias.scope !1538, !noalias !1537, !noundef !11 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !1538, !noalias !1537, !noundef !11 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 146
  %i.y = load i16, ptr %i.x, align 2, !alias.scope !1538, !noalias !1537, !noundef !11
  %i.z = uitofp i16 %i.y to float
  %i.aa = fdiv float %i.z, 1.000000e+03           ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ac = load i32, ptr %i.ab, align 8, !alias.scope !1538, !noalias !1537, !noundef !11
  %i.ad = urem i32 %i.ac, 1000                    ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.ag = load i8, ptr %i.af, align 4, !range !30, !alias.scope !1538, !noalias !1537, !noundef !11
  switch i8 %i.ag, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.n
    i8 3, label %bb.o
  ]

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.i.i = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %.sroa.0.0, i32 0)
  br label %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state17h938d9803811fa6f5E.exit"

bb.g:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !1538, !noalias !1537, !nonnull !11, !noundef !11
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !1538, !noalias !1537, !noundef !11
  %i.al = tail call noundef i32 @_ZN4anki9scheduler6states5steps13LearningSteps18current_delay_secs17h76c33e9b461a2170E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ai, i64 noundef %i.ak, i32 noundef %i.ad), !noalias !1539 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 149
  %i.an = load i8, ptr %i.am, align 1, !range !31, !alias.scope !1538, !noalias !1537, !noundef !11
  switch i8 %i.an, label %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit.i" [
    i8 1, label %bb.h
    i8 3, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !1538, !noalias !1537, !noundef !11
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ar = load i32, ptr %i.aq, align 8, !alias.scope !1538, !noalias !1537, !noundef !11
  %i.as = add i32 %i.ar, -1
  %i.at = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4anki17PYTHON_UNIT_TESTS17h43767944e6a3b243E, i64 8) acquire, align 8, !noalias !1539
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN4anki9scheduler9answering29get_fuzz_seed_for_id_and_reps17h2cd40e4a6e55ee49E.exit.i.i, label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1539
  store ptr @_ZN4anki17PYTHON_UNIT_TESTS17h43767944e6a3b243E, ptr %i.f, align 8, !noalias !1539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1539
  store ptr %i.f, ptr %i.e, align 8, !noalias !1539
  call void @_ZN3std3sys4sync4once5futex4Once4call17h2423c0c333975c13E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN4anki17PYTHON_UNIT_TESTS17h43767944e6a3b243E, i64 8), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @67, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !1539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1539
  br label %_ZN4anki9scheduler9answering29get_fuzz_seed_for_id_and_reps17h2cd40e4a6e55ee49E.exit.i.i

_ZN4anki9scheduler9answering29get_fuzz_seed_for_id_and_reps17h2cd40e4a6e55ee49E.exit.i.i: ; preds = %bb.i, %bb.h
  %i.av = load i8, ptr @_ZN4anki17PYTHON_UNIT_TESTS17h43767944e6a3b243E, align 8, !range !12, !noalias !1539, !noundef !11
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %"_ZN4anki9scheduler9answering8learning62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$22learning_ivl_with_fuzz17hdf6da1c7a0210421E.exit.i.i", label %bb.j

bb.j:                                             ; preds = %_ZN4anki9scheduler9answering29get_fuzz_seed_for_id_and_reps17h2cd40e4a6e55ee49E.exit.i.i
  %i.ax = zext i32 %i.as to i64
  %i.ay = add i64 %i.ap, %i.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1539
  call void @_ZN9rand_core11SeedableRng13seed_from_u6417hcc8144888d03ca89E(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(address) dereferenceable(320) %i.d, i64 noundef %i.ay), !noalias !1539
  %i.az = uitofp i32 %i.al to float
  %i.ba = fmul nnan float %i.az, 2.500000e-01
  %i.bb = call float @llvm.minnum.f32(float %i.ba, float 3.000000e+02)
  %i.bc = call float @llvm.floor.f32(float %i.bb)
  %i.bd = call i32 @llvm.fptoui.sat.i32.f32(float %i.bc)
  %i.be = add i32 %i.bd, %i.al                    ; 2 uses
  %.not.i.i.i = icmp ult i32 %i.al, %i.be
  br i1 %.not.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bf = call noundef i32 @_ZN4rand3rng3Rng12random_range17h1e03cfde3267e85eE(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.d, i32 noundef %i.al, i32 noundef %i.be, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163), !noalias !1539
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.02.0.i.i.i = phi i32 [ %i.bf, %bb.k ], [ %i.al, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1539
  br label %"_ZN4anki9scheduler9answering8learning62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$22learning_ivl_with_fuzz17hdf6da1c7a0210421E.exit.i.i"

"_ZN4anki9scheduler9answering8learning62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$22learning_ivl_with_fuzz17hdf6da1c7a0210421E.exit.i.i": ; preds = %bb.l, %_ZN4anki9scheduler9answering29get_fuzz_seed_for_id_and_reps17h2cd40e4a6e55ee49E.exit.i.i
  %.sroa.02.1.i.i.i = phi i32 [ %.sroa.02.0.i.i.i, %bb.l ], [ %i.al, %_ZN4anki9scheduler9answering29get_fuzz_seed_for_id_and_reps17h2cd40e4a6e55ee49E.exit.i.i ]
  %2 = zext i32 %.sroa.0.0 to i64
  %3 = zext i32 %.sroa.02.1.i.i.i to i64
  %.neg.i.i = sub nsw i64 %3, %2
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 968
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !1538, !noalias !1537, !noundef !11
  %4 = add i64 %.neg.i.i, %i.bh
  %5 = trunc i64 %4 to i32
  br label %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit.i"

bb.m:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.bj = load i32, ptr %i.bi, align 8, !alias.scope !1538, !noalias !1537, !noundef !11
  %i.bk = udiv i32 %i.al, 86400
  %.sroa.0.0.i.i.i = tail call noundef range(i32 1, 0) i32 @llvm.umax.i32(i32 %i.bk, i32 1)
  %i.bl = sub i32 %.sroa.0.0.i.i.i, %.sroa.0.0
  %i.bm = add i32 %i.bl, %i.bj
  %i.bn = mul i32 %i.bm, 86400
  br label %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit.i"

"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit.i": ; preds = %bb.m, %"_ZN4anki9scheduler9answering8learning62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$22learning_ivl_with_fuzz17hdf6da1c7a0210421E.exit.i.i", %bb.g
  %.sroa.0.0.i24.i = phi i32 [ %i.bn, %bb.m ], [ %5, %"_ZN4anki9scheduler9answering8learning62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$22learning_ivl_with_fuzz17hdf6da1c7a0210421E.exit.i.i" ], [ 0, %bb.g ]
  %.sroa.6.4.copyload9 = load i32, ptr %i.ae, align 8, !alias.scope !1539
  %.sroa.9.4..sroa_idx14 = getelementptr inbounds nuw i8, ptr %1, i64 108
  %.sroa.9.4.copyload15 = load i32, ptr %.sroa.9.4..sroa_idx14, align 4, !alias.scope !1539
  %.sroa.916.4..sroa_idx19 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.916.4.copyload20 = load i32, ptr %.sroa.916.4..sroa_idx19, align 8, !alias.scope !1539
  br label %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state17h938d9803811fa6f5E.exit"

bb.n:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.bp = load i32, ptr %i.bo, align 8, !alias.scope !1538, !noalias !1537, !noundef !11
  %.neg.i = sub i32 %i.u, %.sroa.0.0
  %i.bq = add i32 %.neg.i, %i.bp
  %.sroa.0.0.i25.i = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.bq, i32 0)
  %.sroa.6.4.copyload = load i32, ptr %i.ae, align 8, !alias.scope !1539
  %.sroa.9.4..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 108
  %.sroa.9.4.copyload = load i32, ptr %.sroa.9.4..sroa_idx, align 4, !alias.scope !1539
  %.sroa.916.4..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.916.4.copyload = load i32, ptr %.sroa.916.4..sroa_idx, align 8, !alias.scope !1539
  %i.br = bitcast float %i.aa to i32
  br label %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state17h938d9803811fa6f5E.exit"

bb.o:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !1538, !noalias !1537, !nonnull !11, !noundef !11
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !1538, !noalias !1537, !noundef !11
  %i.bw = tail call noundef i32 @_ZN4anki9scheduler6states5steps13LearningSteps18current_delay_secs17h76c33e9b461a2170E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.bt, i64 noundef %i.bv, i32 noundef %i.ad), !noalias !1539 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 149
  %i.by = load i8, ptr %i.bx, align 1, !range !31, !alias.scope !1538, !noalias !1537, !noundef !11
  switch i8 %i.by, label %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit34.i" [
    i8 1, label %bb.p
    i8 3, label %bb.u
  ]

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !1538, !noalias !1537, !noundef !11
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cc = load i32, ptr %i.cb, align 8, !alias.scope !1538, !noalias !1537, !noundef !11
  %i.cd = add i32 %i.cc, -1
  %i.ce = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4anki17PYTHON_UNIT_TESTS17h43767944e6a3b243E, i64 8) acquire, align 8, !noalias !1539
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_ZN4anki9scheduler9answering29get_fuzz_seed_for_id_and_reps17h2cd40e4a6e55ee49E.exit.i28.i, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1539
  store ptr @_ZN4anki17PYTHON_UNIT_TESTS17h43767944e6a3b243E, ptr %i.c, align 8, !noalias !1539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1539
  store ptr %i.c, ptr %i.b, align 8, !noalias !1539
  call void @_ZN3std3sys4sync4once5futex4Once4call17h2423c0c333975c13E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN4anki17PYTHON_UNIT_TESTS17h43767944e6a3b243E, i64 8), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @67, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !1539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1539
  br label %_ZN4anki9scheduler9answering29get_fuzz_seed_for_id_and_reps17h2cd40e4a6e55ee49E.exit.i28.i

_ZN4anki9scheduler9answering29get_fuzz_seed_for_id_and_reps17h2cd40e4a6e55ee49E.exit.i28.i: ; preds = %bb.q, %bb.p
  %i.cg = load i8, ptr @_ZN4anki17PYTHON_UNIT_TESTS17h43767944e6a3b243E, align 8, !range !12, !noalias !1539, !noundef !11
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %"_ZN4anki9scheduler9answering8learning62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$22learning_ivl_with_fuzz17hdf6da1c7a0210421E.exit.i31.i", label %bb.r

bb.r:                                             ; preds = %_ZN4anki9scheduler9answering29get_fuzz_seed_for_id_and_reps17h2cd40e4a6e55ee49E.exit.i28.i
  %i.ci = zext i32 %i.cd to i64
  %i.cj = add i64 %i.ca, %i.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1539
  call void @_ZN9rand_core11SeedableRng13seed_from_u6417hcc8144888d03ca89E(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(address) dereferenceable(320) %i.a, i64 noundef %i.cj), !noalias !1539
  %i.ck = uitofp i32 %i.bw to float
  %i.cl = fmul nnan float %i.ck, 2.500000e-01
  %i.cm = call float @llvm.minnum.f32(float %i.cl, float 3.000000e+02)
  %i.cn = call float @llvm.floor.f32(float %i.cm)
  %i.co = call i32 @llvm.fptoui.sat.i32.f32(float %i.cn)
  %i.cp = add i32 %i.co, %i.bw                    ; 2 uses
  %.not.i.i29.i = icmp ult i32 %i.bw, %i.cp
  br i1 %.not.i.i29.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cq = call noundef i32 @_ZN4rand3rng3Rng12random_range17h1e03cfde3267e85eE(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.a, i32 noundef %i.bw, i32 noundef %i.cp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163), !noalias !1539
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.02.0.i.i30.i = phi i32 [ %i.cq, %bb.s ], [ %i.bw, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1539
  br label %"_ZN4anki9scheduler9answering8learning62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$22learning_ivl_with_fuzz17hdf6da1c7a0210421E.exit.i31.i"

"_ZN4anki9scheduler9answering8learning62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$22learning_ivl_with_fuzz17hdf6da1c7a0210421E.exit.i31.i": ; preds = %bb.t, %_ZN4anki9scheduler9answering29get_fuzz_seed_for_id_and_reps17h2cd40e4a6e55ee49E.exit.i28.i
  %.sroa.02.1.i.i32.i = phi i32 [ %.sroa.02.0.i.i30.i, %bb.t ], [ %i.bw, %_ZN4anki9scheduler9answering29get_fuzz_seed_for_id_and_reps17h2cd40e4a6e55ee49E.exit.i28.i ]
  %6 = zext i32 %.sroa.0.0 to i64
  %7 = zext i32 %.sroa.02.1.i.i32.i to i64
  %.neg.i33.i = sub nsw i64 %7, %6
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 968
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !1538, !noalias !1537, !noundef !11
  %8 = add i64 %.neg.i33.i, %i.cs
  %9 = trunc i64 %8 to i32
  br label %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit34.i"

bb.u:                                             ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.cu = load i32, ptr %i.ct, align 8, !alias.scope !1538, !noalias !1537, !noundef !11
  %i.cv = udiv i32 %i.bw, 86400
  %.sroa.0.0.i.i26.i = tail call noundef range(i32 1, 0) i32 @llvm.umax.i32(i32 %i.cv, i32 1)
  %i.cw = sub i32 %.sroa.0.0.i.i26.i, %.sroa.0.0
  %i.cx = add i32 %i.cw, %i.cu
  %i.cy = mul i32 %i.cx, 86400
  br label %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit34.i"

"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit34.i": ; preds = %bb.u, %"_ZN4anki9scheduler9answering8learning62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$22learning_ivl_with_fuzz17hdf6da1c7a0210421E.exit.i31.i", %bb.o
  %.sroa.0.0.i27.i = phi i32 [ %i.cy, %bb.u ], [ %9, %"_ZN4anki9scheduler9answering8learning62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$22learning_ivl_with_fuzz17hdf6da1c7a0210421E.exit.i31.i" ], [ 0, %bb.o ]
  %.sroa.0.0.copyload4 = load i32, ptr %i.ae, align 8, !alias.scope !1539 ; 2 uses
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %1, i64 108
  %.sroa.6.0.copyload8 = load i32, ptr %.sroa.6.0..sroa_idx7, align 4, !alias.scope !1539 ; 2 uses
  %.sroa.9.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.9.0.copyload13 = load i32, ptr %.sroa.9.0..sroa_idx12, align 8, !alias.scope !1539 ; 2 uses
  %i.cz = trunc i32 %.sroa.9.0.copyload13 to i8
  %.sroa.21.24..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.21, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.21.24..sroa_idx, i64 3, i1 false), !alias.scope !1539
  br label %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state17h938d9803811fa6f5E.exit"

"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state17h938d9803811fa6f5E.exit": ; preds = %bb.f, %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit.i", %bb.n, %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit34.i"
  %.sroa.20.0 = phi i8 [ undef, %bb.f ], [ undef, %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit.i" ], [ 0, %bb.n ], [ %i.cz, %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit34.i" ] ; 2 uses
  %.sroa.19.0 = phi i32 [ undef, %bb.f ], [ undef, %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit.i" ], [ %i.w, %bb.n ], [ %.sroa.6.0.copyload8, %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit34.i" ] ; 2 uses
  %.sroa.16.0 = phi i32 [ undef, %bb.f ], [ %.sroa.0.0.i24.i, %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit.i" ], [ %i.br, %bb.n ], [ %.sroa.0.0.copyload4, %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit34.i" ] ; 2 uses
  %.sroa.13.0 = phi i32 [ undef, %bb.f ], [ %i.al, %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit.i" ], [ %.sroa.0.0.i25.i, %bb.n ], [ %.sroa.0.0.i27.i, %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit34.i" ] ; 2 uses
  %.sroa.10.0 = phi i32 [ undef, %bb.f ], [ %i.ad, %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit.i" ], [ %i.u, %bb.n ], [ %i.bw, %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit34.i" ] ; 2 uses
  %.sroa.916.0 = phi i32 [ undef, %bb.f ], [ %.sroa.916.4.copyload20, %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit.i" ], [ %.sroa.916.4.copyload, %bb.n ], [ %i.ad, %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit34.i" ] ; 2 uses
  %.sroa.9.0 = phi i32 [ undef, %bb.f ], [ %.sroa.9.4.copyload15, %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit.i" ], [ %.sroa.9.4.copyload, %bb.n ], [ %.sroa.9.0.copyload13, %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit34.i" ] ; 2 uses
  %.sroa.6.0 = phi i32 [ %.sroa.0.0.i.i, %bb.f ], [ %.sroa.6.4.copyload9, %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit.i" ], [ %.sroa.6.4.copyload, %bb.n ], [ %.sroa.6.0.copyload8, %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit34.i" ] ; 2 uses
  %.sroa.0.068 = phi i32 [ 2, %bb.f ], [ 3, %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit.i" ], [ 4, %bb.n ], [ %.sroa.0.0.copyload4, %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state28_$u7b$$u7b$closure$u7d$$u7d$17hf94b7fbeb4dcba13E.exit34.i" ] ; 2 uses
  br i1 %i.i, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.b
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.db = load i32, ptr %i.da, align 8, !noundef !11
  br label %bb.e

bb.w:                                             ; preds = %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state17h938d9803811fa6f5E.exit"
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.dd = load i8, ptr %i.dc, align 8, !range !12, !noundef !11
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br i1 %i.de, label %bb.aa, label %bb.z

bb.x:                                             ; preds = %"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18normal_study_state17h938d9803811fa6f5E.exit"
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.068, ptr %i.dg, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.916.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.916.0, ptr %.sroa.916.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.19.0, ptr %.sroa.19.0..sroa_idx, align 4
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %.sroa.20.0, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.21.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.21, i64 3, i1 false)
  %.sroa.2132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.u, ptr %.sroa.2132.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.u, ptr %.sroa.22.0..sroa_idx, align 4
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.aa, ptr %.sroa.23.0..sroa_idx, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.w, ptr %.sroa.24.0..sroa_idx, align 4
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %.sroa.25.0..sroa_idx, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.aa, %bb.x
  %.sink = phi i32 [ 1, %bb.z ], [ 1, %bb.aa ], [ 0, %bb.x ]
  store i32 %.sink, ptr %0, align 4
  ret void

bb.z:                                             ; preds = %bb.w
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 300
  %i.di = load i32, ptr %i.dh, align 4, !noundef !11
  store i32 5, ptr %i.df, align 4
  store i32 %i.di, ptr %.sroa.453.0..sroa_idx, align 4
  store i8 0, ptr %.sroa.554.0..sroa_idx, align 4
  br label %bb.y

bb.aa:                                            ; preds = %bb.w
  %.sroa.1261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.1261.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.21, i64 3, i1 false)
  store i32 %.sroa.0.068, ptr %i.df, align 4
  store i32 %.sroa.6.0, ptr %.sroa.453.0..sroa_idx, align 4
  store i32 %.sroa.9.0, ptr %.sroa.554.0..sroa_idx, align 4
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.916.0, ptr %.sroa.655.0..sroa_idx, align 4
  %.sroa.756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.10.0, ptr %.sroa.756.0..sroa_idx, align 4
  %.sroa.857.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.13.0, ptr %.sroa.857.0..sroa_idx, align 4
  %.sroa.958.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.16.0, ptr %.sroa.958.0..sroa_idx, align 4
  %.sroa.1059.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.19.0, ptr %.sroa.1059.0..sroa_idx, align 4
  %.sroa.1160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %.sroa.20.0, ptr %.sroa.1160.0..sroa_idx, align 4
  %.sroa.1362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.u, ptr %.sroa.1362.0..sroa_idx, align 4
  %.sroa.1463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.u, ptr %.sroa.1463.0..sroa_idx, align 4
  %.sroa.1564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.aa, ptr %.sroa.1564.0..sroa_idx, align 4
  %.sroa.1665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.w, ptr %.sroa.1665.0..sroa_idx, align 4
  %.sroa.1766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %.sroa.1766.0..sroa_idx, align 4
  br label %bb.y
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h9d30d5fd02a40103E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !11 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h324368e06f0c1e66E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h71af0f1b11b0c758E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17h0e918bcedc8a8efcE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h4f95e52b89e105e1E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !11 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h3e6719412690f4f3E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hf9cd6342de4889e1E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h6192b4cb291c0d57E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i64$GT$3fmt17hd2d59792f5b35c70E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !11 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17heff53219669ec040E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hace3f0074abbba1bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h91640ff198c59aadE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f
end_hunk_0
