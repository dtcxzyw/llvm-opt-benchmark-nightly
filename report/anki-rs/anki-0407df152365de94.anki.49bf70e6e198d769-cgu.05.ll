Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.05?download=true
inline.NumInlined: 5793
inline.NumDeleted: 2830
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@"_ZN5hyper5proto2h14conn21Conn$LT$I$C$B$C$T$GT$9set_timer17hb435034cfc2732acE":bb.a
          cleanup
  store ptr %1, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr %2, ptr %i.f, align 8
  resume { ptr, i32 } %i.e

"_ZN4core3ptr46drop_in_place$LT$hyper..common..time..Time$GT$17h73ef5cb4b26f912fE.exit": ; preds = %bb.b, %bb.a, %bb.c
  store ptr %1, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr %2, ptr %i.g, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5hyper5proto2h14conn5State14try_keep_alive17hf2496af961a8c120E(ptr noalias noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 7 uses
  %i.c = load i64, ptr %i.a, align 8, !range !1543, !noundef !3
  switch i64 %i.c, label %_ZN5hyper5proto2h14conn5State4idle17h01c817db43b07d28E.exit [
    i64 3, label %bb.b
    i64 4, label %bb.c
  ]

_ZN5hyper5proto2h14conn5State4idle17h01c817db43b07d28E.exit: ; preds = %bb.n, %"_ZN4core3ptr52drop_in_place$LT$hyper..proto..h1..conn..Writing$GT$17h6e5198c414679bceE.exit.i", %bb.p, %bb.e, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !range !5069, !noundef !3 ; 6 uses
  %i.e = icmp ne i64 %i.d, -9223372036854775804
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, 9223372036854775805
  %i.g = icmp ugt i64 %i.d, -9223372036854775806
  %i.h = select i1 %i.g, i64 %i.f, i64 1
  switch i64 %i.h, label %_ZN5hyper5proto2h14conn5State4idle17h01c817db43b07d28E.exit [
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.b, align 8, !range !5069, !noundef !3 ; 2 uses
  %i.j = icmp ne i64 %i.i, -9223372036854775804
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, -9223372036854775803
  br i1 %i.k, label %bb.e, label %_ZN5hyper5proto2h14conn5State4idle17h01c817db43b07d28E.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 375 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !range !833, !noundef !3
  %i.n = icmp eq i8 %i.m, 1
  br i1 %i.n, label %bb.f, label %bb.p

bb.e:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN5hyper5proto2h14conn5State5close17hff05d71fb30e1ec2E(ptr noalias noundef nonnull align 8 dereferenceable(384) %0)
  br label %_ZN5hyper5proto2h14conn5State4idle17h01c817db43b07d28E.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8308)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8311)
  %i.p = load i8, ptr %i.o, align 8, !range !5012, !alias.scope !8314, !noundef !3 ; 2 uses
  %i.q = icmp eq i8 %i.p, 11
  br i1 %i.q, label %"_ZN4core3ptr52drop_in_place$LT$hyper..proto..h1..conn..Reading$GT$17ha8d1ddc3836f2c47E.exit.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8318)
  %switch.i.i.i.i = icmp samesign ult i8 %i.p, 10
  br i1 %switch.i.i.i.i, label %"_ZN4core3ptr52drop_in_place$LT$hyper..proto..h1..conn..Reading$GT$17ha8d1ddc3836f2c47E.exit.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.val1.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !8321, !noundef !3 ; 2 uses
  %i.s = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.s, label %"_ZN4core3ptr52drop_in_place$LT$hyper..proto..h1..conn..Reading$GT$17ha8d1ddc3836f2c47E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i.i": ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.val.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !8321, !nonnull !3, !noundef !3
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, i64 noundef 1) #53, !noalias !8321
  br label %"_ZN4core3ptr52drop_in_place$LT$hyper..proto..h1..conn..Reading$GT$17ha8d1ddc3836f2c47E.exit.i"

"_ZN4core3ptr52drop_in_place$LT$hyper..proto..h1..conn..Reading$GT$17ha8d1ddc3836f2c47E.exit.i": ; preds = %bb.f, %bb.g, %bb.h, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i.i"
  store i8 11, ptr %i.o, align 8, !alias.scope !8308
  store i8 0, ptr %i.l, align 1, !alias.scope !8308
  store i64 0, ptr %i.a, align 8, !alias.scope !8308
  %i.u = icmp ult i64 %i.d, -9223372036854775805
  br i1 %i.u, label %bb.i, label %"_ZN4core3ptr52drop_in_place$LT$hyper..proto..h1..conn..Writing$GT$17h6e5198c414679bceE.exit.i"

bb.i:                                             ; preds = %"_ZN4core3ptr52drop_in_place$LT$hyper..proto..h1..conn..Reading$GT$17ha8d1ddc3836f2c47E.exit.i"
  %i.v = tail call i64 @llvm.umax.i64(i64 %i.d, i64 -9223372036854775808)
  %i.w = and i64 %i.v, 9223372036854775807
  %i.x = icmp ne i64 %i.w, 0
  %i.y = icmp eq i64 %i.d, -9223372036854775808
  %or.cond.i.i.i.i = or i1 %i.y, %i.x
  br i1 %or.cond.i.i.i.i, label %"_ZN4core3ptr52drop_in_place$LT$hyper..proto..h1..conn..Writing$GT$17h6e5198c414679bceE.exit.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7749e95d960ff0c9E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$http..header..value..HeaderValue$GT$$GT$17hc3860b50130f3af5E.exit.i.i.i.i.i" unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h72c80b8a3c7bb176E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$http..header..value..HeaderValue$GT$$GT$17hc3860b50130f3af5E.exit.i.i.i.i.i": ; preds = %bb.j
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h72c80b8a3c7bb176E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %"_ZN4core3ptr52drop_in_place$LT$hyper..proto..h1..conn..Writing$GT$17h6e5198c414679bceE.exit.i" unwind label %bb.m

bb.m:                                             ; preds = %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$http..header..value..HeaderValue$GT$$GT$17hc3860b50130f3af5E.exit.i.i.i.i.i"
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

"_ZN4core3ptr52drop_in_place$LT$hyper..proto..h1..conn..Writing$GT$17h6e5198c414679bceE.exit.i": ; preds = %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$http..header..value..HeaderValue$GT$$GT$17hc3860b50130f3af5E.exit.i.i.i.i.i", %bb.i, %"_ZN4core3ptr52drop_in_place$LT$hyper..proto..h1..conn..Reading$GT$17ha8d1ddc3836f2c47E.exit.i"
  store i64 -9223372036854775805, ptr %i.b, align 8, !alias.scope !8308
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ad = load i32, ptr %i.ac, align 8, !range !1749, !alias.scope !8308, !noundef !3
  %.not.i = icmp eq i32 %i.ad, 1000000000
  br i1 %.not.i, label %_ZN5hyper5proto2h14conn5State4idle17h01c817db43b07d28E.exit, label %bb.n

bb.n:                                             ; preds = %"_ZN4core3ptr52drop_in_place$LT$hyper..proto..h1..conn..Writing$GT$17h6e5198c414679bceE.exit.i"
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 373
  store i8 1, ptr %i.ae, align 1, !alias.scope !8308
  br label %_ZN5hyper5proto2h14conn5State4idle17h01c817db43b07d28E.exit

bb.o:                                             ; preds = %bb.k, %bb.m
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ab, %bb.m ], [ %i.z, %bb.k ]
  store i64 -9223372036854775805, ptr %i.b, align 8, !alias.scope !8308
  resume { ptr, i32 } %eh.lpad-body.i

bb.p:                                             ; preds = %bb.d
  tail call void @_ZN5hyper5proto2h14conn5State5close17hff05d71fb30e1ec2E(ptr noalias noundef nonnull align 8 dereferenceable(384) %0)
  br label %_ZN5hyper5proto2h14conn5State4idle17h01c817db43b07d28E.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5hyper5proto2h14role13parse_headers17hb565a8517ab45e95E(ptr dead_on_unwind noalias noundef writable sret([240 x i8]) align 8 captures(address) dereferenceable(240) %0, ptr noalias noundef align 8 dereferenceable(32) %1, i64 noundef range(i64 0, 2) %2, i64 %3, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(56) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 3, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = trunc nuw i64 %2 to i1
  br i1 %i.d, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.g, %bb.f, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.f = tail call noundef zeroext i1 @_ZN5hyper5proto2h14role16is_complete_fast17h707a6a22115e635fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.e, i64 noundef %i.b, i64 noundef %3)
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.c
  tail call void @"_ZN85_$LT$hyper..proto..h1..role..Server$u20$as$u20$hyper..proto..h1..Http1Transaction$GT$5parse17h9524bbb51a66b0b1E"(ptr noalias noundef nonnull sret([240 x i8]) align 8 captures(address) dereferenceable(240) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(56) %4)
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  store i64 3, ptr %0, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5rayon4iter13from_par_iter138_$LT$impl$u20$rayon..iter..FromParallelIterator$LT$$LP$K$C$V$RP$$GT$$u20$for$u20$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$GT$13from_par_iter17h07581cc156ecf93bE"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  tail call void @_ZN5rayon4iter13from_par_iter16collect_extended17h3728290fc0a3b230E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5rayon4iter13from_par_iter138_$LT$impl$u20$rayon..iter..FromParallelIterator$LT$$LP$K$C$V$RP$$GT$$u20$for$u20$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$GT$13from_par_iter17hbcda9512f03e057eE"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  tail call void @_ZN5rayon4iter13from_par_iter16collect_extended17hb2778afba6f97b54E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5rayon4iter6extend132_$LT$impl$u20$rayon..iter..ParallelExtend$LT$$LP$K$C$V$RP$$GT$$u20$for$u20$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$GT$10par_extend17h2fd6d812dd261beaE"(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_ZN5rayon4iter6extend12fast_collect17hf1b9815ad2501544E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %1)
  %i.h = load i64, ptr %i.g, align 8, !range !5, !noundef !3
  %i.i = trunc nuw i64 %i.h to i1                 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %3 = load ptr, ptr %2, align 8, !noundef !3     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %4 = load i64, ptr %i.j, align 8, !noundef !3   ; 6 uses
  %5 = icmp eq i64 %4, 0
  %.not.i.i36 = icmp eq ptr %3, null
  %or.cond = or i1 %5, %.not.i.i36
  br i1 %or.cond, label %_ZN4core4iter6traits8iterator8Iterator4fold17h4e8d0663f1a53e8eE.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.k = add i64 %4, -1                           ; 2 uses
  %i.l = getelementptr i8, ptr %3, i64 16
  %.val.i58 = load i64, ptr %i.l, align 8, !noalias !8322, !noundef !3 ; 3 uses
  %i.m = icmp ult i64 %.val.i58, 1152921504606846976
  call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %_ZN4core4iter6traits8iterator8Iterator4fold17h4e8d0663f1a53e8eE.exit, label %.lr.ph.ithread-pre-split

.lr.ph.ithread-pre-split:                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.o = phi i64 [ %i.v, %.lr.ph ], [ %.val.i58, %.lr.ph.preheader ] ; 2 uses
  %i.p = phi i64 [ %i.s, %.lr.ph ], [ %i.k, %.lr.ph.preheader ]
  %i.q = phi ptr [ %.pr, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.pr = load ptr, ptr %i.r, align 1              ; 3 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN4core4iter6traits8iterator8Iterator4fold17h4e8d0663f1a53e8eE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.ithread-pre-split
  %i.s = add i64 %i.p, -1                         ; 2 uses
  %i.t = getelementptr i8, ptr %.pr, i64 16
  %.val.i = load i64, ptr %i.t, align 8, !noalias !8322, !noundef !3 ; 2 uses
  %i.u = icmp ult i64 %.val.i, 1152921504606846976
  call void @llvm.assume(i1 %i.u)
  %i.v = add i64 %.val.i, %i.o                    ; 2 uses
  %i.w = icmp eq i64 %i.s, 0
  br i1 %i.w, label %_ZN4core4iter6traits8iterator8Iterator4fold17h4e8d0663f1a53e8eE.exit, label %.lr.ph.ithread-pre-split

bb.c:                                             ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %7 = load i64, ptr %6, align 8, !noundef !3     ; 3 uses
  %i.x = icmp ult i64 %7, 1152921504606846976
  call void @llvm.assume(i1 %i.x)
  br label %_ZN4core4iter6traits8iterator8Iterator4fold17h4e8d0663f1a53e8eE.exit

_ZN4core4iter6traits8iterator8Iterator4fold17h4e8d0663f1a53e8eE.exit: ; preds = %.lr.ph, %.lr.ph.ithread-pre-split, %.lr.ph.preheader, %bb.b, %bb.c
  %.sroa.3.0.copyload = phi i64 [ %7, %bb.c ], [ %4, %bb.b ], [ %4, %.lr.ph.preheader ], [ %4, %.lr.ph.ithread-pre-split ], [ %4, %.lr.ph ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %7, %bb.c ], [ 0, %bb.b ], [ %.val.i58, %.lr.ph.preheader ], [ %i.v, %.lr.ph ], [ %i.o, %.lr.ph.ithread-pre-split ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h699198c29dd302d4E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y)
          to label %bb.d unwind label %.body

.body:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator4fold17h4e8d0663f1a53e8eE.exit, %_ZN4core4iter6traits8iterator8Iterator8for_each17hf8ca08a699e96b55E.exit.i, %bb.p
  %.sroa.03.1 = phi i1 [ false, %bb.p ], [ true, %_ZN4core4iter6traits8iterator8Iterator8for_each17hf8ca08a699e96b55E.exit.i ], [ true, %_ZN4core4iter6traits8iterator8Iterator4fold17h4e8d0663f1a53e8eE.exit ]
  %.sroa.02.1 = phi i1 [ true, %bb.p ], [ false, %_ZN4core4iter6traits8iterator8Iterator8for_each17hf8ca08a699e96b55E.exit.i ], [ true, %_ZN4core4iter6traits8iterator8Iterator4fold17h4e8d0663f1a53e8eE.exit ]
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aa = load i64, ptr %i.g, align 8, !range !5, !noundef !3
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.s, label %bb.t

.body.thread44:                                   ; preds = %.body14
  %i.ac = load i64, ptr %i.g, align 8, !range !5, !noundef !3
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.thread, label %"_ZN4core3ptr112drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$17hc17938a301880fe4E.exit"

.body.thread:                                     ; preds = %bb.g
  %i.ae = load i64, ptr %i.g, align 8, !range !5, !noundef !3
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %"_ZN4core3ptr112drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$17hc17938a301880fe4E.exit", label %.thread32

bb.d:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator4fold17h4e8d0663f1a53e8eE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %.sroa.0.0.copyload = load i64, ptr %i.ag, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8325)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8328
  %i.al = icmp ult i64 %.sroa.3.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.2.0.copyload, i64 %.sroa.3.0.copyload
  store ptr %.sroa.2.0.copyload, ptr %i.d, align 8, !alias.scope !8330, !noalias !8333
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.0.0.copyload, ptr %i.an, align 8, !alias.scope !8330, !noalias !8333
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.2.0.copyload, ptr %i.ao, align 8, !alias.scope !8330, !noalias !8333
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.am, ptr %i.ap, align 8, !alias.scope !8330, !noalias !8333
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !8325, !noalias !8335, !noundef !3
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = add nuw nsw i64 %.sroa.3.0.copyload, 1
  %i.au = lshr i64 %i.at, 1
  %.sroa.0.0.i = select i1 %i.as, i64 %.sroa.3.0.copyload, i64 %i.au
  invoke void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h699198c29dd302d4E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y)
          to label %_ZN4core4iter6traits8iterator8Iterator8for_each17hf8ca08a699e96b55E.exit.i unwind label %bb.g, !noalias !8335

_ZN4core4iter6traits8iterator8Iterator8for_each17hf8ca08a699e96b55E.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !8328
  invoke void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h69433578322f923dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17hc3a018aacbc5934aE.exit" unwind label %.body

bb.g:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha636508962d6e0faE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.body.thread unwind label %bb.h, !noalias !8335

bb.h:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51, !noalias !8335
  unreachable

"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17hc3a018aacbc5934aE.exit": ; preds = %_ZN4core4iter6traits8iterator8Iterator8for_each17hf8ca08a699e96b55E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8328
  br label %bb.i

bb.i:                                             ; preds = %"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17hc3a018aacbc5934aE.exit", %"_ZN4core3ptr110drop_in_place$LT$alloc..collections..linked_list..IntoIter$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$17ha676807851248a75E.exit17"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.j:                                             ; preds = %bb.q, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @"_ZN5alloc11collections11linked_list23LinkedList$LT$T$C$A$GT$9pop_front17hc8b3ba08e6c46458E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator8for_each17hf8ca08a699e96b55E.exit.i13, %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body14

.body14:                                          ; preds = %bb.n, %bb.k
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.ax, %bb.k ], [ %i.bf, %bb.n ] ; 2 uses
  invoke void @"_ZN98_$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5250e13729602aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.thread44 unwind label %bb.r

bb.l:                                             ; preds = %bb.j
  %i.ay = load i64, ptr %i.e, align 8, !range !782, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.ay, -9223372036854775808
  br i1 %.not, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.219.0.copyload = load ptr, ptr %.sroa.219.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %.sroa.320.0.copyload = load i64, ptr %.sroa.320.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8336)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8339
  %i.az = icmp ult i64 %.sroa.320.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.219.0.copyload, i64 %.sroa.320.0.copyload
  store ptr %.sroa.219.0.copyload, ptr %i.b, align 8, !alias.scope !8341, !noalias !8344
  store i64 %i.ay, ptr %i.ah, align 8, !alias.scope !8341, !noalias !8344
  store ptr %.sroa.219.0.copyload, ptr %i.ai, align 8, !alias.scope !8341, !noalias !8344
  store ptr %i.ba, ptr %i.aj, align 8, !alias.scope !8341, !noalias !8344
  %i.bb = load i64, ptr %i.ak, align 8, !alias.scope !8336, !noalias !8346, !noundef !3
  %i.bc = icmp eq i64 %i.bb, 0
  %i.bd = add nuw nsw i64 %.sroa.320.0.copyload, 1
  %i.be = lshr i64 %i.bd, 1
  %.sroa.0.0.i11 = select i1 %i.bc, i64 %.sroa.320.0.copyload, i64 %i.be
  invoke void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h699198c29dd302d4E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %.sroa.0.0.i11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y)
          to label %_ZN4core4iter6traits8iterator8Iterator8for_each17hf8ca08a699e96b55E.exit.i13 unwind label %bb.n, !noalias !8346

_ZN4core4iter6traits8iterator8Iterator8for_each17hf8ca08a699e96b55E.exit.i13: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !8339
  invoke void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h69433578322f923dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.q unwind label %bb.k

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha636508962d6e0faE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body14 unwind label %bb.o, !noalias !8346

bb.o:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51, !noalias !8346
  unreachable

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @"_ZN98_$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5250e13729602aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %"_ZN4core3ptr110drop_in_place$LT$alloc..collections..linked_list..IntoIter$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$17ha676807851248a75E.exit17" unwind label %.body

"_ZN4core3ptr110drop_in_place$LT$alloc..collections..linked_list..IntoIter$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$17ha676807851248a75E.exit17": ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.q:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator8for_each17hf8ca08a699e96b55E.exit.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.j

bb.r:                                             ; preds = %.thread32, %.body14, %.thread
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

bb.s:                                             ; preds = %.body
  br i1 %.sroa.02.1, label %.thread, label %"_ZN4core3ptr112drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$17hc17938a301880fe4E.exit"

bb.t:                                             ; preds = %.body
  br i1 %.sroa.03.1, label %.thread32, label %"_ZN4core3ptr112drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$17hc17938a301880fe4E.exit"

"_ZN4core3ptr112drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$17hc17938a301880fe4E.exit": ; preds = %.body.thread44, %.body.thread, %.thread32, %.thread, %bb.t, %bb.s
  %.pn25 = phi { ptr, i32 } [ %.pn2635, %.thread32 ], [ %.pn4854, %.thread ], [ %i.z, %bb.t ], [ %i.z, %bb.s ], [ %i.av, %.body.thread ], [ %eh.lpad-body15, %.body.thread44 ]
  resume { ptr, i32 } %.pn25

.thread:                                          ; preds = %.body.thread44, %bb.s
  %.pn4854 = phi { ptr, i32 } [ %i.z, %bb.s ], [ %eh.lpad-body15, %.body.thread44 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$17h0967723463683d52E"(ptr noalias noundef align 8 dereferenceable(24) %i.bi) #52
          to label %"_ZN4core3ptr112drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$17hc17938a301880fe4E.exit" unwind label %bb.r

.thread32:                                        ; preds = %.body.thread, %bb.t
  %.pn2635 = phi { ptr, i32 } [ %i.z, %bb.t ], [ %i.av, %.body.thread ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke void @"_ZN98_$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5250e13729602aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %"_ZN4core3ptr112drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$17hc17938a301880fe4E.exit" unwind label %bb.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5rayon4iter6extend132_$LT$impl$u20$rayon..iter..ParallelExtend$LT$$LP$K$C$V$RP$$GT$$u20$for$u20$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$GT$10par_extend17h70b6b1144e9dcf9bE"(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_ZN5rayon4iter6extend12fast_collect17h245555be832d530eE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %1)
  %i.h = load i64, ptr %i.g, align 8, !range !5, !noundef !3
  %i.i = trunc nuw i64 %i.h to i1                 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %3 = load ptr, ptr %2, align 8, !noundef !3     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %4 = load i64, ptr %i.j, align 8, !noundef !3   ; 6 uses
  %5 = icmp eq i64 %4, 0
  %.not.i.i36 = icmp eq ptr %3, null
  %or.cond = or i1 %5, %.not.i.i36
  br i1 %or.cond, label %_ZN4core4iter6traits8iterator8Iterator4fold17he26bd4055a156a12E.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.k = add i64 %4, -1                           ; 2 uses
  %i.l = getelementptr i8, ptr %3, i64 16
  %.val.i58 = load i64, ptr %i.l, align 8, !noalias !8347, !noundef !3 ; 3 uses
  %i.m = icmp ult i64 %.val.i58, 576460752303423488
  call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %_ZN4core4iter6traits8iterator8Iterator4fold17he26bd4055a156a12E.exit, label %.lr.ph.ithread-pre-split

.lr.ph.ithread-pre-split:                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.o = phi i64 [ %i.v, %.lr.ph ], [ %.val.i58, %.lr.ph.preheader ] ; 2 uses
  %i.p = phi i64 [ %i.s, %.lr.ph ], [ %i.k, %.lr.ph.preheader ]
  %i.q = phi ptr [ %.pr, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.pr = load ptr, ptr %i.r, align 1              ; 3 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN4core4iter6traits8iterator8Iterator4fold17he26bd4055a156a12E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.ithread-pre-split
  %i.s = add i64 %i.p, -1                         ; 2 uses
  %i.t = getelementptr i8, ptr %.pr, i64 16
  %.val.i = load i64, ptr %i.t, align 8, !noalias !8347, !noundef !3 ; 2 uses
  %i.u = icmp ult i64 %.val.i, 576460752303423488
  call void @llvm.assume(i1 %i.u)
  %i.v = add i64 %.val.i, %i.o                    ; 2 uses
  %i.w = icmp eq i64 %i.s, 0
  br i1 %i.w, label %_ZN4core4iter6traits8iterator8Iterator4fold17he26bd4055a156a12E.exit, label %.lr.ph.ithread-pre-split

bb.c:                                             ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %7 = load i64, ptr %6, align 8, !noundef !3     ; 3 uses
  %i.x = icmp ult i64 %7, 576460752303423488
  call void @llvm.assume(i1 %i.x)
  br label %_ZN4core4iter6traits8iterator8Iterator4fold17he26bd4055a156a12E.exit

_ZN4core4iter6traits8iterator8Iterator4fold17he26bd4055a156a12E.exit: ; preds = %.lr.ph, %.lr.ph.ithread-pre-split, %.lr.ph.preheader, %bb.b, %bb.c
  %.sroa.3.0.copyload = phi i64 [ %7, %bb.c ], [ %4, %bb.b ], [ %4, %.lr.ph.preheader ], [ %4, %.lr.ph.ithread-pre-split ], [ %4, %.lr.ph ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %7, %bb.c ], [ 0, %bb.b ], [ %.val.i58, %.lr.ph.preheader ], [ %i.v, %.lr.ph ], [ %i.o, %.lr.ph.ithread-pre-split ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h977154c32f1aafb7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y)
          to label %bb.d unwind label %.body

.body:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator4fold17he26bd4055a156a12E.exit, %_ZN4core4iter6traits8iterator8Iterator8for_each17h2196a003c3f0708fE.exit.i, %bb.p
  %.sroa.03.1 = phi i1 [ false, %bb.p ], [ true, %_ZN4core4iter6traits8iterator8Iterator8for_each17h2196a003c3f0708fE.exit.i ], [ true, %_ZN4core4iter6traits8iterator8Iterator4fold17he26bd4055a156a12E.exit ]
  %.sroa.02.1 = phi i1 [ true, %bb.p ], [ false, %_ZN4core4iter6traits8iterator8Iterator8for_each17h2196a003c3f0708fE.exit.i ], [ true, %_ZN4core4iter6traits8iterator8Iterator4fold17he26bd4055a156a12E.exit ]
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aa = load i64, ptr %i.g, align 8, !range !5, !noundef !3
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.s, label %bb.t

.body.thread44:                                   ; preds = %.body14
  %i.ac = load i64, ptr %i.g, align 8, !range !5, !noundef !3
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.thread, label %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$17h82f1a9fc0fba076cE.exit"

.body.thread:                                     ; preds = %bb.g
  %i.ae = load i64, ptr %i.g, align 8, !range !5, !noundef !3
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$17h82f1a9fc0fba076cE.exit", label %.thread32

bb.d:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator4fold17he26bd4055a156a12E.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %.sroa.0.0.copyload = load i64, ptr %i.ag, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8350)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8353
  %i.al = icmp ult i64 %.sroa.3.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.sroa.2.0.copyload, i64 %.sroa.3.0.copyload
  store ptr %.sroa.2.0.copyload, ptr %i.d, align 8, !alias.scope !8355, !noalias !8358
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.0.0.copyload, ptr %i.an, align 8, !alias.scope !8355, !noalias !8358
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.2.0.copyload, ptr %i.ao, align 8, !alias.scope !8355, !noalias !8358
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.am, ptr %i.ap, align 8, !alias.scope !8355, !noalias !8358
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !8350, !noalias !8360, !noundef !3
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = add nuw nsw i64 %.sroa.3.0.copyload, 1
  %i.au = lshr i64 %i.at, 1
  %.sroa.0.0.i = select i1 %i.as, i64 %.sroa.3.0.copyload, i64 %i.au
  invoke void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h977154c32f1aafb7E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y)
          to label %_ZN4core4iter6traits8iterator8Iterator8for_each17h2196a003c3f0708fE.exit.i unwind label %bb.g, !noalias !8360

_ZN4core4iter6traits8iterator8Iterator8for_each17h2196a003c3f0708fE.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !8353
  invoke void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h283aee13d23f4c59E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17h8df85f740c388459E.exit" unwind label %.body

bb.g:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd4d0f3c4f41292a2E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.body.thread unwind label %bb.h, !noalias !8360

bb.h:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51, !noalias !8360
  unreachable

"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17h8df85f740c388459E.exit": ; preds = %_ZN4core4iter6traits8iterator8Iterator8for_each17h2196a003c3f0708fE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8353
  br label %bb.i

bb.i:                                             ; preds = %"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17h8df85f740c388459E.exit", %"_ZN4core3ptr130drop_in_place$LT$alloc..collections..linked_list..IntoIter$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$17hd3f9055817079154E.exit17"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.j:                                             ; preds = %bb.q, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @"_ZN5alloc11collections11linked_list23LinkedList$LT$T$C$A$GT$9pop_front17h91b1e9b392f46866E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator8for_each17h2196a003c3f0708fE.exit.i13, %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body14

.body14:                                          ; preds = %bb.n, %bb.k
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.ax, %bb.k ], [ %i.bf, %bb.n ] ; 2 uses
  invoke void @"_ZN98_$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h576cc74f61c106d4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.thread44 unwind label %bb.r

bb.l:                                             ; preds = %bb.j
  %i.ay = load i64, ptr %i.e, align 8, !range !782, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.ay, -9223372036854775808
  br i1 %.not, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.219.0.copyload = load ptr, ptr %.sroa.219.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %.sroa.320.0.copyload = load i64, ptr %.sroa.320.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8361)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8364
  %i.az = icmp ult i64 %.sroa.320.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.219.0.copyload, i64 %.sroa.320.0.copyload
  store ptr %.sroa.219.0.copyload, ptr %i.b, align 8, !alias.scope !8366, !noalias !8369
  store i64 %i.ay, ptr %i.ah, align 8, !alias.scope !8366, !noalias !8369
  store ptr %.sroa.219.0.copyload, ptr %i.ai, align 8, !alias.scope !8366, !noalias !8369
  store ptr %i.ba, ptr %i.aj, align 8, !alias.scope !8366, !noalias !8369
  %i.bb = load i64, ptr %i.ak, align 8, !alias.scope !8361, !noalias !8371, !noundef !3
  %i.bc = icmp eq i64 %i.bb, 0
  %i.bd = add nuw nsw i64 %.sroa.320.0.copyload, 1
  %i.be = lshr i64 %i.bd, 1
  %.sroa.0.0.i11 = select i1 %i.bc, i64 %.sroa.320.0.copyload, i64 %i.be
  invoke void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h977154c32f1aafb7E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %.sroa.0.0.i11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y)
          to label %_ZN4core4iter6traits8iterator8Iterator8for_each17h2196a003c3f0708fE.exit.i13 unwind label %bb.n, !noalias !8371

_ZN4core4iter6traits8iterator8Iterator8for_each17h2196a003c3f0708fE.exit.i13: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !8364
  invoke void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h283aee13d23f4c59E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.q unwind label %bb.k

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd4d0f3c4f41292a2E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body14 unwind label %bb.o, !noalias !8371

bb.o:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51, !noalias !8371
  unreachable

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @"_ZN98_$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h576cc74f61c106d4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %"_ZN4core3ptr130drop_in_place$LT$alloc..collections..linked_list..IntoIter$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$17hd3f9055817079154E.exit17" unwind label %.body

"_ZN4core3ptr130drop_in_place$LT$alloc..collections..linked_list..IntoIter$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$17hd3f9055817079154E.exit17": ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.q:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator8for_each17h2196a003c3f0708fE.exit.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.j

bb.r:                                             ; preds = %.thread32, %.body14, %.thread
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

bb.s:                                             ; preds = %.body
  br i1 %.sroa.02.1, label %.thread, label %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$17h82f1a9fc0fba076cE.exit"

bb.t:                                             ; preds = %.body
  br i1 %.sroa.03.1, label %.thread32, label %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$17h82f1a9fc0fba076cE.exit"

"_ZN4core3ptr132drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$17h82f1a9fc0fba076cE.exit": ; preds = %.body.thread44, %.body.thread, %.thread32, %.thread, %bb.t, %bb.s
  %.pn25 = phi { ptr, i32 } [ %.pn2635, %.thread32 ], [ %.pn4854, %.thread ], [ %i.z, %bb.t ], [ %i.z, %bb.s ], [ %i.av, %.body.thread ], [ %eh.lpad-body15, %.body.thread44 ]
  resume { ptr, i32 } %.pn25

.thread:                                          ; preds = %.body.thread44, %bb.s
  %.pn4854 = phi { ptr, i32 } [ %i.z, %bb.s ], [ %eh.lpad-body15, %.body.thread44 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$17h8fdafd3fe2ee6c64E"(ptr noalias noundef align 8 dereferenceable(24) %i.bi) #52
          to label %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$17h82f1a9fc0fba076cE.exit" unwind label %bb.r

.thread32:                                        ; preds = %.body.thread, %bb.t
  %.pn2635 = phi { ptr, i32 } [ %i.z, %bb.t ], [ %i.av, %.body.thread ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke void @"_ZN98_$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h576cc74f61c106d4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$17h82f1a9fc0fba076cE.exit" unwind label %bb.r
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5rayon6result138_$LT$impl$u20$rayon..iter..FromParallelIterator$LT$core..result..Result$LT$T$C$E$GT$$GT$$u20$for$u20$core..result..Result$LT$C$C$E$GT$$GT$13from_par_iter2ok28_$u7b$$u7b$closure$u7d$$u7d$17h413c5fa41f8395c1E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(12) %0, ptr %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  %i.c = load i64, ptr %1, align 8, !range !1616, !noundef !3
  %.not = icmp eq i64 %i.c, -9223372036854775773
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.d = cmpxchg ptr %.0.val, i32 0, i32 1 acquire monotonic, align 4, !noalias !8372
  %i.e = extractvalue { i32, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %.noexc12.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8372
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.g = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8, !noalias !8372
  %i.h = and i64 %i.g, 9223372036854775807
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZN3std4sync6poison4Flag5guard17hd239ea212f506341E.exit.i, label %bb.d, !prof !4

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
          to label %.noexc unwind label %.thread14

.noexc:                                           ; preds = %bb.d
  %i.k = xor i1 %i.j, true
  %i.l = zext i1 %i.k to i8
  br label %_ZN3std4sync6poison4Flag5guard17hd239ea212f506341E.exit.i

_ZN3std4sync6poison4Flag5guard17hd239ea212f506341E.exit.i: ; preds = %.noexc, %bb.c
  %.sroa.01.0.i.i = phi i8 [ %i.l, %.noexc ], [ 0, %bb.c ]
  %i.m = load atomic i8, ptr %i.f monotonic, align 1, !noalias !8372
  %i.n = icmp ne i8 %i.m, 0
  invoke void @_ZN3std4sync6poison10map_result17h81211611b794acefE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i1 noundef zeroext %i.n, i8 noundef %.sroa.01.0.i.i, ptr noundef nonnull align 8 %.0.val)
          to label %bb.h unwind label %.thread14

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 8, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.r = load float, ptr %i.q, align 4, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.p, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.r, ptr %i.t, align 4
  store i32 1, ptr %0, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.u, %bb.e
  ret void

bb.g:                                             ; preds = %bb.n, %bb.l
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not3.not, label %bb.w, label %bb.x

.thread14:                                        ; preds = %bb.d, %_ZN3std4sync6poison4Flag5guard17hd239ea212f506341E.exit.i, %bb.s, %"_ZN4core3ptr115drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..option..Option$LT$anki..error..AnkiError$GT$$GT$$GT$17h4305a3f753413533E.exit.sink.split.i"
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.h:                                             ; preds = %_ZN3std4sync6poison4Flag5guard17hd239ea212f506341E.exit.i
  %i.w = load i64, ptr %i.a, align 8, !range !5, !noalias !8372, !noundef !3
end_hunk_0
