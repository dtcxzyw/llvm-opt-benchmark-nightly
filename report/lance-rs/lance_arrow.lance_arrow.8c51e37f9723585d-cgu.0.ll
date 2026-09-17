Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_arrow.lance_arrow.8c51e37f9723585d-cgu.0?download=true
inline.NumInlined: 3904
inline.NumDeleted: 1641
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvXs_Csc2V0exE7CWf_11lance_arrowNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB4_21FixedSizeListArrayExt6sample:bb.a
  br i1 %.not.i.i.i.i.i, label %bb.h, label %.loopexit.i, !prof !13154

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.6.1.i.i.i.i.i = phi i64 [ %i.v, %bb.i ], [ %.sroa.6.029.i.i.i.i.i, %bb.g ] ; 2 uses
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %i.w, %bb.i ], [ %.sroa.0.030.i.i.i.i.i, %bb.g ]
  %i.u = icmp eq i64 %.sroa.6.1.i.i.i.i.i, 0
  br i1 %i.u, label %_RNvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtCsgdD1EZdIidU_9rand_core11SeedableRng11from_os_rngCsc2V0exE7CWf_11lance_arrow.exit, label %.preheader.i.i.i.i

bb.i:                                             ; preds = %bb.f
  %i.v = sub nuw nsw i64 %.sroa.6.029.i.i.i.i.i, %i.p
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i.i.i.i, i64 %i.p
  br label %bb.h

_RNvCsitxk4pdPh9M_9getrandom4fill.exit.i.i:       ; preds = %bb.d
  %i.x = call noundef i32 @_RNvNtNtCsitxk4pdPh9M_9getrandom8backends27linux_android_with_fallback17use_file_fallback(ptr noalias noundef nonnull %i.d, i64 noundef 32), !noalias !13150 ; 2 uses
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_RNvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtCsgdD1EZdIidU_9rand_core11SeedableRng11from_os_rngCsc2V0exE7CWf_11lance_arrow.exit, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.e, %_RNvCsitxk4pdPh9M_9getrandom4fill.exit.i.i
  %.sroa.4.0.ph.i = phi i32 [ %i.x, %_RNvCsitxk4pdPh9M_9getrandom4fill.exit.i.i ], [ 65538, %bb.f ], [ 65538, %bb.e ], [ %i.t, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13155
  store i32 %.sroa.4.0.ph.i, ptr %i.f, align 4, !noalias !13155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13155
  store ptr %i.f, ptr %i.e, align 8, !noalias !13155
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs0_NtCsitxk4pdPh9M_9getrandom5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !13155
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @596, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @598) #36, !noalias !13155
  unreachable

_RNvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtCsgdD1EZdIidU_9rand_core11SeedableRng11from_os_rngCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.h, %_RNvCsitxk4pdPh9M_9getrandom4fill.exit.i.i
  %.sroa.08.0.copyload.i.i = load i64, ptr %i.d, align 8, !noalias !13150 ; 2 uses
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.49.0.copyload.i.i = load i64, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !13150 ; 2 uses
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.510.0.copyload.i.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !noalias !13150 ; 2 uses
  %.sroa.611.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.611.0.copyload.i.i = load i64, ptr %.sroa.611.0..sroa_idx.i.i, align 8, !noalias !13150 ; 2 uses
  %i.y = icmp eq i64 %.sroa.08.0.copyload.i.i, 0
  %i.z = icmp eq i64 %.sroa.49.0.copyload.i.i, 0
  %or.cond.i.i.i = select i1 %i.y, i1 %i.z, i1 false
  %i.aa = icmp eq i64 %.sroa.510.0.copyload.i.i, 0
  %or.cond13.i.i.i = select i1 %or.cond.i.i.i, i1 %i.aa, i1 false
  %i.ab = icmp eq i64 %.sroa.611.0.copyload.i.i, 0
  %or.cond14.i.i.i = select i1 %or.cond13.i.i.i, i1 %i.ab, i1 false ; 4 uses
  %..sroa.0.0.copyload2.i.i.i = select i1 %or.cond14.i.i.i, i64 -2152535657050944081, i64 %.sroa.08.0.copyload.i.i
  %..sroa.7.0.copyload4.i.i.i = select i1 %or.cond14.i.i.i, i64 7960286522194355700, i64 %.sroa.49.0.copyload.i.i
  %..sroa.8.0.copyload6.i.i.i = select i1 %or.cond14.i.i.i, i64 487617019471545679, i64 %.sroa.510.0.copyload.i.i
  %..sroa.9.0.copyload8.i.i.i = select i1 %or.cond14.i.i.i, i64 -537132696929009172, i64 %.sroa.611.0.copyload.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ac = trunc i64 %i.k to i32                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13156)
  %i.ad = shl i64 %2, 2                           ; 4 uses
  %i.ae = icmp ugt i64 %2, 4611686018427387903
  %.not.i.i3 = icmp ugt i64 %i.ad, 9223372036854775804
  %or.cond.i.i = or i1 %i.ae, %.not.i.i3
  br i1 %or.cond.i.i, label %bb.m, label %bb.j, !prof !27

bb.j:                                             ; preds = %_RNvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtCsgdD1EZdIidU_9rand_core11SeedableRng11from_os_rngCsc2V0exE7CWf_11lance_arrow.exit
  %i.af = icmp eq i64 %i.ad, 0
  br i1 %i.af, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !13157
  %i.ag = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 4) #39, !noalias !13157 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = ptrtoint ptr %i.ag to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %_RNvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtCsgdD1EZdIidU_9rand_core11SeedableRng11from_os_rngCsc2V0exE7CWf_11lance_arrow.exit
  %.sroa.426.0.ph.i = phi i64 [ 4, %bb.k ], [ 0, %_RNvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtCsgdD1EZdIidU_9rand_core11SeedableRng11from_os_rngCsc2V0exE7CWf_11lance_arrow.exit ]
  call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.426.0.ph.i, i64 %i.ad) #36, !noalias !13158
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.j
  %.sroa.426.0.i = phi i64 [ %2, %bb.l ], [ 0, %bb.j ] ; 6 uses
  %.sroa.10.0.i = phi i64 [ %i.ai, %bb.l ], [ 4, %bb.j ]
  %i.aj = inttoptr i64 %.sroa.10.0.i to ptr       ; 9 uses
  %i.ak = icmp samesign ule i64 %2, %.sroa.426.0.i
  call void @llvm.assume(i1 %i.ak)
  %i.al = icmp eq i64 %2, 0
  br i1 %i.al, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeQINtNtNtBa_3ops5range5RangemEENtNtNtB8_6traits8iterator8Iterator9size_hintCsc2V0exE7CWf_11lance_arrow.exit.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeQINtNtNtBa_3ops5range5RangemEENtNtNtB8_6traits8iterator8Iterator9size_hintCsc2V0exE7CWf_11lance_arrow.exit.i.i.i: ; preds = %bb.n
  %wide.trip.count.i = and i64 %i.k, 4294967295   ; 3 uses
  %i.am = add nsw i64 %2, -1
  %i.an = call i64 @llvm.umin.i64(i64 %i.am, i64 %wide.trip.count.i) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.an, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeQINtNtNtBa_3ops5range5RangemEENtNtNtB8_6traits8iterator8Iterator9size_hintCsc2V0exE7CWf_11lance_arrow.exit.i.i.i
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %i.ap = and i64 %i.ao, 7                        ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = select i1 %i.aq, i64 8, i64 %i.ap
  %n.vec = sub nsw i64 %i.ao, %i.ar               ; 3 uses
  %i.as = sub nsw i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <4 x i32> %vec.ind, ptr %i.at, align 4, !noalias !13159
  store <4 x i32> %step.add, ptr %i.au, align 4, !noalias !13159
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %scalar.ph.preheader, label %vector.body, !llvm.loop !13127

scalar.ph.preheader:                              ; preds = %vector.body, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeQINtNtNtBa_3ops5range5RangemEENtNtNtB8_6traits8iterator8Iterator9size_hintCsc2V0exE7CWf_11lance_arrow.exit.i.i.i
  %.val12.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeQINtNtNtBa_3ops5range5RangemEENtNtNtB8_6traits8iterator8Iterator9size_hintCsc2V0exE7CWf_11lance_arrow.exit.i.i.i ], [ %n.vec, %vector.body ]
  %.sroa.01.0.i.i.i.in.i.i.i.i.i.ph = phi i64 [ %2, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeQINtNtNtBa_3ops5range5RangemEENtNtNtB8_6traits8iterator8Iterator9size_hintCsc2V0exE7CWf_11lance_arrow.exit.i.i.i ], [ %i.as, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.o
  %.val12.i.i.i.i.i.i.i.i = phi i64 [ %i.aw, %bb.o ], [ %.val12.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 4 uses
  %.sroa.01.0.i.i.i.in.i.i.i.i.i = phi i64 [ %.sroa.01.0.i.i.i.i.i.i.i.i, %bb.o ], [ %.sroa.01.0.i.i.i.in.i.i.i.i.i.ph, %scalar.ph.preheader ]
  %indvars48.i = trunc i64 %.val12.i.i.i.i.i.i.i.i to i32 ; 2 uses
  %exitcond.i = icmp eq i64 %.val12.i.i.i.i.i.i.i.i, %wide.trip.count.i
  br i1 %exitcond.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %scalar.ph
  %.sroa.01.0.i.i.i.i.i.i.i.i = add nsw i64 %.sroa.01.0.i.i.i.in.i.i.i.i.i, -1 ; 2 uses
  %i.aw = add nuw nsw i64 %.val12.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.val12.i.i.i.i.i.i.i.i
  store i32 %indvars48.i, ptr %i.ax, align 4, !noalias !13159
  %i.ay = icmp eq i64 %.sroa.01.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.ay, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.loopexit.split.loop.exit71.i, label %scalar.ph, !llvm.loop !13128

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.loopexit.split.loop.exit71.i: ; preds = %bb.o
  %indvars.le.i = trunc i64 %i.aw to i32
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i: ; preds = %scalar.ph, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.loopexit.split.loop.exit71.i, %bb.n
  %.sroa.0.1.i = phi i32 [ 0, %bb.n ], [ %indvars.le.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.loopexit.split.loop.exit71.i ], [ %indvars48.i, %scalar.ph ] ; 3 uses
  %.val1.sink.i.i.i.i.i = phi i64 [ 0, %bb.n ], [ %i.aw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.loopexit.split.loop.exit71.i ], [ %wide.trip.count.i, %scalar.ph ] ; 8 uses
  %i.az = icmp ult i64 %.val1.sink.i.i.i.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.az)
  %i.ba = icmp eq i64 %.val1.sink.i.i.i.i.i, %2
  br i1 %i.ba, label %.preheader.i, label %bb.p

.preheader.i:                                     ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i
  %i.bb = icmp ult i32 %.sroa.0.1.i, %i.ac
  br i1 %i.bb, label %.lr.ph.i, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangemENtNtNtCs4Jn2LUi8st0_4rand3seq8iterator14IteratorRandom15choose_multipleNtNtNtBR_4rngs5small8SmallRngECsc2V0exE7CWf_11lance_arrow.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bc = add nuw nsw i64 %2, 1
  %i.bd = sub nuw i32 %i.ac, %.sroa.0.1.i
  %zext = zext i32 %i.bd to i64
  br label %bb.u

bb.p:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i
  %i.be = icmp samesign ugt i64 %.sroa.426.0.i, %.val1.sink.i.i.i.i.i
  br i1 %i.be, label %bb.q, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangemENtNtNtCs4Jn2LUi8st0_4rand3seq8iterator14IteratorRandom15choose_multipleNtNtNtBR_4rngs5small8SmallRngECsc2V0exE7CWf_11lance_arrow.exit

bb.q:                                             ; preds = %bb.p
  %i.bf = shl nuw i64 %.sroa.426.0.i, 2           ; 4 uses
  %i.bg = icmp eq i64 %.val1.sink.i.i.i.i.i, 0
  br i1 %i.bg, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i, label %bb.r

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.q
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 4) #39, !noalias !13160
  br label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangemENtNtNtCs4Jn2LUi8st0_4rand3seq8iterator14IteratorRandom15choose_multipleNtNtNtBR_4rngs5small8SmallRngECsc2V0exE7CWf_11lance_arrow.exit

bb.r:                                             ; preds = %bb.q
  %i.bh = shl nuw nsw i64 %.val1.sink.i.i.i.i.i, 2 ; 3 uses
  %i.bi = icmp ule i64 %i.bh, %i.bf
  call void @llvm.assume(i1 %i.bi)
  %i.bj = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr noundef nonnull %i.aj, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 4, i64 noundef range(i64 4, 9223372036854775805) %i.bh) #39, !noalias !13160 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.s, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangemENtNtNtCs4Jn2LUi8st0_4rand3seq8iterator14IteratorRandom15choose_multipleNtNtNtBR_4rngs5small8SmallRngECsc2V0exE7CWf_11lance_arrow.exit

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.bh) #36
          to label %bb.t unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsc2V0exE7CWf_11lance_arrow.exit.i, !noalias !13158

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.aa, %.lr.ph.i
  %i.bl = phi i64 [ %..sroa.8.0.copyload6.i.i.i, %.lr.ph.i ], [ %i.ed, %bb.aa ] ; 2 uses
  %i.bm = phi i64 [ %..sroa.7.0.copyload4.i.i.i, %.lr.ph.i ], [ %i.ee, %bb.aa ] ; 6 uses
  %i.bn = phi i64 [ %..sroa.9.0.copyload8.i.i.i, %.lr.ph.i ], [ %i.ef, %bb.aa ] ; 4 uses
  %.sroa.021.044.i = phi i32 [ %.sroa.0.1.i, %.lr.ph.i ], [ %i.bp, %bb.aa ] ; 2 uses
  %.sroa.7.043.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bq, %bb.aa ] ; 2 uses
  %i.bo = phi i64 [ %..sroa.0.0.copyload2.i.i.i, %.lr.ph.i ], [ %i.eg, %bb.aa ] ; 8 uses
  %i.bp = add nuw i32 %.sroa.021.044.i, 1
  %i.bq = add nuw nsw i64 %.sroa.7.043.i, 1       ; 2 uses
  %i.br = add nuw i64 %i.bc, %.sroa.7.043.i       ; 6 uses
  %i.bs = icmp ugt i64 %i.br, 4294967295
  br i1 %i.bs, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = trunc nuw i64 %i.br to i32
  %i.bu = add i64 %i.bo, %i.bn                    ; 2 uses
  %i.bv = call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 23)
  %i.bw = add i64 %i.bv, %i.bo
  %i.bx = shl i64 %i.bm, 17
  %i.by = xor i64 %i.bo, %i.bl                    ; 2 uses
  %i.bz = xor i64 %i.bn, %i.bm                    ; 3 uses
  %i.ca = xor i64 %i.by, %i.bm                    ; 4 uses
  %i.cb = xor i64 %i.bo, %i.bz                    ; 5 uses
  %i.cc = xor i64 %i.by, %i.bx                    ; 2 uses
  %i.cd = call noundef i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.bz, i64 45) ; 3 uses
  %i.ce = lshr i64 %i.bw, 32
  %i.cf = mul nuw i64 %i.ce, %i.br                ; 2 uses
  %i.cg = lshr i64 %i.cf, 32                      ; 2 uses
  %i.ch = trunc i64 %i.cf to i32                  ; 2 uses
  %i.ci = sub i32 0, %i.bt
  %i.cj = icmp ult i32 %i.ci, %i.ch
  br i1 %i.cj, label %bb.w, label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtNtB9_3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range7RangeTojEECsc2V0exE7CWf_11lance_arrow.exit.i

bb.w:                                             ; preds = %bb.v
  %i.ck = add i64 %i.cb, %i.cd                    ; 2 uses
  %i.cl = call noundef i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 23)
  %i.cm = add i64 %i.cl, %i.cb
  %i.cn = shl i64 %i.ca, 17
  %i.co = xor i64 %i.cc, %i.cb                    ; 2 uses
  %i.cp = xor i64 %i.ca, %i.cd                    ; 3 uses
  %i.cq = xor i64 %i.co, %i.ca
  %i.cr = xor i64 %i.cp, %i.cb
  %i.cs = xor i64 %i.co, %i.cn
  %i.ct = call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 45)
  %i.cu = lshr i64 %i.cm, 32
  %3 = mul nuw i64 %i.cu, %i.br
  %4 = lshr i64 %3, 32
  %5 = trunc nuw i64 %4 to i32
  %i.cv = xor i32 %i.ch, -1
  %.not11.i.i.i.i.i.i = icmp ult i32 %i.cv, %5
  %i.cw = zext i1 %.not11.i.i.i.i.i.i to i64
  %i.cx = add nuw nsw i64 %i.cg, %i.cw
  br label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtNtB9_3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range7RangeTojEECsc2V0exE7CWf_11lance_arrow.exit.i

bb.x:                                             ; preds = %bb.u
  %i.cy = add i64 %i.bo, %i.bn                    ; 2 uses
  %i.cz = call noundef i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 23)
  %i.da = add i64 %i.cz, %i.bo
  %i.db = shl i64 %i.bm, 17
  %i.dc = xor i64 %i.bo, %i.bl                    ; 2 uses
  %i.dd = xor i64 %i.bn, %i.bm                    ; 3 uses
  %i.de = xor i64 %i.dc, %i.bm                    ; 4 uses
  %i.df = xor i64 %i.bo, %i.dd                    ; 5 uses
  %i.dg = xor i64 %i.dc, %i.db                    ; 2 uses
  %i.dh = call noundef i64 @llvm.fshl.i64(i64 %i.dd, i64 %i.dd, i64 45) ; 3 uses
  %i.di = zext i64 %i.da to i128
  %i.dj = zext i64 %i.br to i128                  ; 2 uses
  %i.dk = mul nuw i128 %i.di, %i.dj               ; 2 uses
  %i.dl = lshr i128 %i.dk, 64
  %i.dm = trunc nuw i128 %i.dl to i64             ; 2 uses
  %i.dn = trunc i128 %i.dk to i64                 ; 2 uses
  %i.do = sub i64 0, %i.br
  %i.dp = icmp ult i64 %i.do, %i.dn
  br i1 %i.dp, label %bb.y, label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtNtB9_3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range7RangeTojEECsc2V0exE7CWf_11lance_arrow.exit.i

bb.y:                                             ; preds = %bb.x
  %i.dq = add i64 %i.df, %i.dh                    ; 2 uses
  %i.dr = call noundef i64 @llvm.fshl.i64(i64 %i.dq, i64 %i.dq, i64 23)
  %i.ds = add i64 %i.dr, %i.df
  %i.dt = shl i64 %i.de, 17
  %i.du = xor i64 %i.dg, %i.df                    ; 2 uses
  %i.dv = xor i64 %i.de, %i.dh                    ; 3 uses
  %i.dw = xor i64 %i.du, %i.de
  %i.dx = xor i64 %i.dv, %i.df
  %i.dy = xor i64 %i.du, %i.dt
  %i.dz = call noundef i64 @llvm.fshl.i64(i64 %i.dv, i64 %i.dv, i64 45)
  %6 = zext i64 %i.ds to i128
  %7 = mul nuw i128 %6, %i.dj
  %8 = lshr i128 %7, 64
  %9 = trunc nuw i128 %8 to i64
  %i.ea = xor i64 %i.dn, -1
  %.not7.i.i.i.i.i.i = icmp ult i64 %i.ea, %9
  %i.eb = zext i1 %.not7.i.i.i.i.i.i to i64
  %i.ec = add nuw i64 %i.eb, %i.dm
  br label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtNtB9_3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range7RangeTojEECsc2V0exE7CWf_11lance_arrow.exit.i

_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtNtB9_3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range7RangeTojEECsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %i.ed = phi i64 [ %i.cc, %bb.v ], [ %i.cs, %bb.w ], [ %i.dy, %bb.y ], [ %i.dg, %bb.x ]
  %i.ee = phi i64 [ %i.ca, %bb.v ], [ %i.cq, %bb.w ], [ %i.dw, %bb.y ], [ %i.de, %bb.x ]
  %i.ef = phi i64 [ %i.cd, %bb.v ], [ %i.ct, %bb.w ], [ %i.dz, %bb.y ], [ %i.dh, %bb.x ]
  %i.eg = phi i64 [ %i.cb, %bb.v ], [ %i.cr, %bb.w ], [ %i.dx, %bb.y ], [ %i.df, %bb.x ]
  %.sroa.62.0.i.i = phi i64 [ %i.cg, %bb.v ], [ %i.cx, %bb.w ], [ %i.ec, %bb.y ], [ %i.dm, %bb.x ] ; 2 uses
  %i.eh = icmp ult i64 %.sroa.62.0.i.i, %2
  br i1 %i.eh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtNtB9_3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range7RangeTojEECsc2V0exE7CWf_11lance_arrow.exit.i
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.sroa.62.0.i.i
  store i32 %.sroa.021.044.i, ptr %i.ei, align 4, !noalias !13158
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtNtB9_3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range7RangeTojEECsc2V0exE7CWf_11lance_arrow.exit.i
  %i.ej = icmp eq i64 %i.bq, %zext
  br i1 %i.ej, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangemENtNtNtCs4Jn2LUi8st0_4rand3seq8iterator14IteratorRandom15choose_multipleNtNtNtBR_4rngs5small8SmallRngECsc2V0exE7CWf_11lance_arrow.exit, label %bb.u

common.resume:                                    ; preds = %.body, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsc2V0exE7CWf_11lance_arrow.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ek, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsc2V0exE7CWf_11lance_arrow.exit.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %bb.s
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 4) #39, !noalias !13158
  br label %common.resume

_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangemENtNtNtCs4Jn2LUi8st0_4rand3seq8iterator14IteratorRandom15choose_multipleNtNtNtBR_4rngs5small8SmallRngECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.aa, %.preheader.i, %bb.p, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.r
  %.sroa.426.0.sink.i = phi i64 [ %.val1.sink.i.i.i.i.i, %bb.r ], [ %.sroa.426.0.i, %bb.p ], [ 0, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i ], [ %.sroa.426.0.i, %.preheader.i ], [ %.sroa.426.0.i, %bb.aa ]
  %.sink74.i = phi ptr [ %i.bj, %bb.r ], [ %i.aj, %bb.p ], [ inttoptr (i64 4 to ptr), %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i ], [ %i.aj, %.preheader.i ], [ %i.aj, %bb.aa ]
  %.sink.i = phi i64 [ %.val1.sink.i.i.i.i.i, %bb.r ], [ %.val1.sink.i.i.i.i.i, %bb.p ], [ 0, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i ], [ %2, %.preheader.i ], [ %2, %bb.aa ]
  store i64 %.sroa.426.0.sink.i, ptr %i.i, align 8, !alias.scope !13156, !noalias !13161
  %.sroa.9.0..sroa_idx51.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sink74.i, ptr %.sroa.9.0..sroa_idx51.i, align 8, !alias.scope !13156, !noalias !13161
  %.sroa.15.0..sroa_idx54.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sink.i, ptr %.sroa.15.0..sroa_idx54.i, align 8, !alias.scope !13156, !noalias !13161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvXsG_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecmEE4from(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
  invoke void @_RNvNtCs485oD0LSutp_12arrow_select4take4take(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @42, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @338, i8 noundef 2)
          to label %bb.ai unwind label %bb.ah

bb.ab:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13162)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13163
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1), !noalias !13164
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.em = load <2 x ptr>, ptr %i.el, align 8, !alias.scope !13162, !noalias !13164
  %i.en = load ptr, ptr %i.el, align 8, !alias.scope !13162, !noalias !13164, !nonnull !10, !noundef !10
  %i.eo = atomicrmw add ptr %i.en, i64 1 monotonic, align 8, !noalias !13163
  %i.ep = icmp slt i64 %i.eo, 0
  br i1 %i.ep, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.er = load ptr, ptr %i.eq, align 8, !alias.scope !13162, !noalias !13164, !noundef !10 ; 3 uses
  %.not.i = icmp eq ptr %i.er, null
  br i1 %.not.i, label %_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB5_18FixedSizeListArrayNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  tail call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.es = atomicrmw add ptr %i.er, i64 1 monotonic, align 8, !noalias !13163
  %i.et = icmp slt i64 %i.es, 0
  br i1 %i.et, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ev = load ptr, ptr %i.eu, align 8, !alias.scope !13162, !noalias !13164, !noundef !10
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ex = load <2 x i64>, ptr %i.ew, align 8, !alias.scope !13162, !noalias !13164
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ez = load <2 x i64>, ptr %i.ey, align 8, !alias.scope !13162, !noalias !13164
  br label %_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB5_18FixedSizeListArrayNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.ag:                                            ; preds = %bb.ae
  tail call void @llvm.trap()
  unreachable

_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB5_18FixedSizeListArrayNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit: ; preds = %bb.ac, %bb.af
  %.sroa.5.sroa.0.sroa.0.sroa.0.0.i = phi ptr [ %i.ev, %bb.af ], [ undef, %bb.ac ]
  %i.fa = phi <2 x i64> [ %i.ex, %bb.af ], [ undef, %bb.ac ]
  %i.fb = phi <2 x i64> [ %i.ez, %bb.af ], [ undef, %bb.ac ]
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.fd = load i32, ptr %i.fc, align 8, !alias.scope !13162, !noalias !13164, !noundef !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13163
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x ptr> %i.em, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.er, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.5.sroa.0.sroa.0.sroa.0.0.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i64> %i.fa, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <2 x i64> %i.fb, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.k, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.fd, ptr %.sroa.13.0..sroa_idx, align 8
  br label %bb.ay

bb.ah:                                            ; preds = %bb.au, %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangemENtNtNtCs4Jn2LUi8st0_4rand3seq8iterator14IteratorRandom15choose_multipleNtNtNtBR_4rngs5small8SmallRngECsc2V0exE7CWf_11lance_arrow.exit
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.am, %bb.an, %bb.ah
  %eh.lpad-body = phi { ptr, i32 } [ %i.fe, %bb.ah ], [ %i.fk, %bb.an ], [ %i.fk, %bb.am ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt32TypeEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.g) #37
          to label %common.resume unwind label %bb.az

bb.ai:                                            ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangemENtNtNtCs4Jn2LUi8st0_4rand3seq8iterator14IteratorRandom15choose_multipleNtNtNtBR_4rngs5small8SmallRngECsc2V0exE7CWf_11lance_arrow.exit
  %i.ff = load i64, ptr %i.h, align 8, !range !35, !noundef !10
  %.not2 = icmp eq i64 %i.ff, -1
  br i1 %.not2, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fg, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  store i8 -1, ptr %0, align 8
  br label %bb.ax

bb.ak:                                            ; preds = %bb.ai
  %i.fh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.08)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.fi = load <2 x ptr>, ptr %i.fh, align 8
  store <2 x ptr> %i.fi, ptr %i.b, align 16, !noalias !13165
  %i.fj = invoke noundef align 8 ptr @_RNvXs1_NtCs4ytUTZt2Gw9_11arrow_array4castINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray22as_fixed_size_list_opt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.noexc.i unwind label %bb.am, !noalias !13166 ; 9 uses

.noexc.i:                                         ; preds = %bb.ak
  %.not.i.i4 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i4, label %bb.al, label %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray18as_fixed_size_listCsc2V0exE7CWf_11lance_arrow.exit.i, !prof !11

bb.al:                                            ; preds = %.noexc.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @585, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @586) #36
          to label %.noexc1.i unwind label %bb.am, !noalias !13166

.noexc1.i:                                        ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray18as_fixed_size_listCsc2V0exE7CWf_11lance_arrow.exit.i, %bb.al, %bb.ak
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13167)
  call void @llvm.experimental.noalias.scope.decl(metadata !13168)
  %i.fl = load ptr, ptr %i.b, align 16, !alias.scope !13169, !noalias !13165, !nonnull !10, !noundef !10
  %i.fm = atomicrmw sub ptr %i.fl, i64 1 release, align 8, !noalias !13170
  %i.fn = icmp eq i64 %i.fm, 1
  br i1 %i.fn, label %bb.an, label %.body

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %.body unwind label %bb.av, !noalias !13166

_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray18as_fixed_size_listCsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !13171)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13172
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.fj)
          to label %.noexc4.i unwind label %bb.am, !noalias !13166

.noexc4.i:                                        ; preds = %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray18as_fixed_size_listCsc2V0exE7CWf_11lance_arrow.exit.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 24 ; 2 uses
  %i.fp = load <2 x ptr>, ptr %i.fo, align 8, !alias.scope !13171, !noalias !13173
  %i.fq = load ptr, ptr %i.fo, align 8, !alias.scope !13171, !noalias !13173, !nonnull !10, !noundef !10
  %i.fr = atomicrmw add ptr %i.fq, i64 1 monotonic, align 8, !noalias !13174
  %i.fs = icmp slt i64 %i.fr, 0
  br i1 %i.fs, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.noexc4.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8, !alias.scope !13171, !noalias !13173, !noundef !10 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.fu, null
  br i1 %.not.i3.i, label %bb.at, label %bb.aq

bb.ap:                                            ; preds = %.noexc4.i
  call void @llvm.trap()
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.fv = atomicrmw add ptr %i.fu, i64 1 monotonic, align 8, !noalias !13174
  %i.fw = icmp slt i64 %i.fv, 0
  br i1 %i.fw, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fj, i64 48
  %i.fy = load ptr, ptr %i.fx, align 8, !alias.scope !13171, !noalias !13173, !noundef !10
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  %i.ga = load <2 x i64>, ptr %i.fz, align 8, !alias.scope !13171, !noalias !13173
end_hunk_0
begin_hunk_1_@_RNvMs5_NtCs8SUNSmrkv52_12arrow_schema6schemaNtB5_6Schema16column_with_name
declare { i64, ptr } @_RNvMs5_NtCs8SUNSmrkv52_12arrow_schema6schemaNtB5_6Schema16column_with_name(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs5FCcBHaqpq9_9arrow_ord4sort15sort_to_indices(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176), i8 noundef range(i8 0, 3), i8, i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB5_11StructArrayINtNtCscI6d9CVNmLh_4core7convert4FromNtNtB9_12record_batch11RecordBatchE4from(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvMs_NtCs4ytUTZt2Gw9_11arrow_array12record_batchNtB4_11RecordBatch14column_by_name(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtCs4ytUTZt2Gw9_11arrow_array12record_batchNtB5_11RecordBatchINtNtCscI6d9CVNmLh_4core7convert4FromNtNtNtB7_5array12struct_array11StructArrayE4from(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs4ytUTZt2Gw9_11arrow_array12record_batchNtB4_11RecordBatch11with_schema(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs8SUNSmrkv52_12arrow_schema6fieldsNtB2_6FieldsNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsgczF5crJ4sT_3std2io5errorNtB2_5ErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs8SUNSmrkv52_12arrow_schema16datatype_displayNtNtB4_8datatype8DataTypeNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCscI6d9CVNmLh_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13shrink_to_fit(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer22from_custom_allocation(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeBM_ECs4ytUTZt2Gw9_11arrow_array(i8 noundef range(i8 0, 3), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noundef, ptr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #24

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #24

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtCs4ytUTZt2Gw9_11arrow_array5arrayNtNtB5_23fixed_size_binary_array20FixedSizeBinaryArrayNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedllECsgczF5crJ4sT_3std(i8 noundef range(i8 0, 3), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noundef, ptr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #24

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9debug_map(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsK_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtCskKR1pP4skmg_5jsonb5ownedNtB5_10OwnedJsonbNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtNtCsgczF5crJ4sT_3std2io5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4YAKbnGhBJc_12arrow_buffer5alloc10AllocationEL_E9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSTaIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEE9drop_slowBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArceE9drop_slowCs8SUNSmrkv52_12arrow_schema(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impaNtB8_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtNtCscI6d9CVNmLh_4core3fmt3numaNtB7_8UpperHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsf_NtNtCscI6d9CVNmLh_4core3fmt3numaNtB7_8LowerHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCscI6d9CVNmLh_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCscI6d9CVNmLh_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs8SUNSmrkv52_12arrow_schema5fieldNtB2_5FieldNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCscI6d9CVNmLh_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCscI6d9CVNmLh_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCscI6d9CVNmLh_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsG_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecmEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsM_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecfEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsO_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float64TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecdEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCscI6d9CVNmLh_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCscI6d9CVNmLh_4core3str8converts9from_utf8(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs1_NtCs4ytUTZt2Gw9_11arrow_array4castINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray22as_fixed_size_list_opt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs1_NtCs4ytUTZt2Gw9_11arrow_array4castINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray10as_map_opt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs1_NtCs4ytUTZt2Gw9_11arrow_array4castINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray13as_struct_opt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCsitxk4pdPh9M_9getrandom5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umin.i128(i128, i128) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.usub.sat.i128(i128, i128) #25

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+f16c,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #10 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #22 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #29 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #34 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #36 = { noreturn }
attributes #37 = { cold }
attributes #38 = { cold noreturn nounwind }
attributes #39 = { nounwind }
attributes #40 = { "function-inline-cost-multiplier"="2" }
attributes #41 = { cold "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}

!0 = distinct !{null, null, null}
!1 = distinct !{null, null, null}
!2 = distinct !{null}
!3 = distinct !{null, null, null}
!4 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc2V0exE7CWf_11lance_arrow, ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsc2V0exE7CWf_11lance_arrow, null}
!5 = distinct !{null}
!6 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc2V0exE7CWf_11lance_arrow, null}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 2, !"RtLibUseGOT", i32 1}
!9 = !{!"rustc version 1.97.0 (2d8144b78 2026-07-07)"}
!10 = !{}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{i64 8}
!13 = !{i64 0, i64 -9223372036854775808}
!14 = !{i64 0, i64 -9223372036854775807}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{!"branch_weights", i32 2146410443, i32 1073205}
!17 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!18 = !{i64 -1, i64 -9223372036854775798}
!19 = !{i64 0, i64 2}
!20 = !{i8 0, i8 2}
!21 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 2000, i32 2000}
!22 = !{!"branch_weights", i32 4000000, i32 4001}
!23 = !{i8 -1, i8 41}
!24 = !{i8 0, i8 41}
!25 = !{i64 1, i64 536870913}
!26 = !{i64 -1, i64 -9223372036854775808}
!27 = !{!"branch_weights", i32 2002, i32 2000}
!28 = !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc2V0exE7CWf_11lance_arrow}
!29 = !{i64 0, i64 -9223372036854775788}
!30 = !{i64 0, i64 -9223372036854775789}
!31 = !{i64 0, i64 -9223372036854775771}
!32 = !{i64 0, i64 3}
!33 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!34 = !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path4ExprEECsc2V0exE7CWf_11lance_arrow}
!35 = !{i64 -1, i64 -9223372036854775788}
!36 = !{!"branch_weights", i32 1, i32 2000, i32 2000}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc2V0exE7CWf_11lance_arrow}
!41 = !{!"branch_weights", i32 4001, i32 4000000}
!42 = !{i64 -2, i64 -9223372036854775808}
!43 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!44 = !{i8 0, i8 3}
!45 = !{i8 0, i8 4}
!46 = !{!"branch_weights", !"expected", i32 3434259, i32 2144049389}
!47 = !{i64 4}
!48 = !{!"branch_weights", i32 2000, i32 2002}
!49 = !{i8 0, i8 42}
!50 = distinct !{!50, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsc2V0exE7CWf_11lance_arrow"}
!51 = distinct !{!51, !50, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsc2V0exE7CWf_11lance_arrow: argument 0"}
!52 = distinct !{!52, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc2V0exE7CWf_11lance_arrow"}
!53 = distinct !{!53, !52, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc2V0exE7CWf_11lance_arrow: argument 0"}
!54 = distinct !{!54, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append"}
!55 = distinct !{!55, !54, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append: argument 0"}
!56 = distinct !{!56, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance"}
!57 = distinct !{!57, !56, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance: argument 0"}
!58 = distinct !{!58, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve"}
!59 = distinct !{!59, !58, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve: argument 0"}
!60 = distinct !{!60, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsc2V0exE7CWf_11lance_arrow"}
!61 = distinct !{!61, !60, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsc2V0exE7CWf_11lance_arrow: argument 0"}
!62 = !{!51}
!63 = !{!53, !51}
!64 = !{!55}
!65 = !{!57}
!66 = !{!57, !55}
!67 = !{!59}
!68 = !{!59, !57, !55}
!69 = !{!61}
!70 = distinct !{!70, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsc2V0exE7CWf_11lance_arrow"}
!71 = distinct !{!71, !70, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsc2V0exE7CWf_11lance_arrow: argument 0"}
!72 = distinct !{!72, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc2V0exE7CWf_11lance_arrow"}
!73 = distinct !{!73, !72, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc2V0exE7CWf_11lance_arrow: argument 0"}
!74 = distinct !{!74, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append"}
!75 = distinct !{!75, !74, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append: argument 0"}
!76 = distinct !{!76, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance"}
!77 = distinct !{!77, !76, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance: argument 0"}
!78 = distinct !{!78, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve"}
!79 = distinct !{!79, !78, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve: argument 0"}
!80 = distinct !{!80, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCsc2V0exE7CWf_11lance_arrow"}
!81 = distinct !{!81, !80, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCsc2V0exE7CWf_11lance_arrow: argument 0"}
!82 = !{!71}
!83 = !{!73, !71}
!84 = !{!75}
!85 = !{!77}
!86 = !{!77, !75}
!87 = !{!79}
!88 = !{!79, !77, !75}
!89 = !{!81}
!90 = distinct !{!90, !"_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneReECsc2V0exE7CWf_11lance_arrow"}
!91 = distinct !{!91, !90, !"_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneReECsc2V0exE7CWf_11lance_arrow: argument 0"}
!92 = distinct !{!92, !"_RNvXs_NtNtCsgczF5crJ4sT_3std4hash6randomNtB4_11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher12build_hasher"}
!93 = distinct !{!93, !92, !"_RNvXs_NtNtCsgczF5crJ4sT_3std4hash6randomNtB4_11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher12build_hasher: argument 0"}
!94 = distinct !{!94, !"_RINvXs3_NtNtCscI6d9CVNmLh_4core4hash5implsReNtB8_4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc2V0exE7CWf_11lance_arrow"}
!95 = distinct !{!95, !94, !"_RINvXs3_NtNtCscI6d9CVNmLh_4core4hash5implsReNtB8_4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc2V0exE7CWf_11lance_arrow: argument 0"}
!96 = distinct !{!96, !"_RINvXs0_NtNtCscI6d9CVNmLh_4core4hash5implseNtB8_4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc2V0exE7CWf_11lance_arrow"}
!97 = distinct !{!97, !96, !"_RINvXs0_NtNtCscI6d9CVNmLh_4core4hash5implseNtB8_4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc2V0exE7CWf_11lance_arrow: argument 1"}
!98 = distinct !{!98, !96, !"_RINvXs0_NtNtCscI6d9CVNmLh_4core4hash5implseNtB8_4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc2V0exE7CWf_11lance_arrow: argument 0"}
!99 = distinct !{!99, !"_RNvXs2_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher9write_str"}
!100 = distinct !{!100, !99, !"_RNvXs2_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher9write_str: argument 1"}
!101 = distinct !{!101, !99, !"_RNvXs2_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher9write_str: argument 0"}
!102 = distinct !{!102, !"_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCsc2V0exE7CWf_11lance_arrow"}
!103 = distinct !{!103, !102, !"_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCsc2V0exE7CWf_11lance_arrow: argument 1"}
!104 = distinct !{!104, !102, !"_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCsc2V0exE7CWf_11lance_arrow: argument 0"}
!105 = distinct !{!105, !"_RNvXs2_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher6finish"}
!106 = distinct !{!106, !105, !"_RNvXs2_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher6finish: argument 0"}
!107 = distinct !{!107, !"_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsc2V0exE7CWf_11lance_arrow"}
!108 = distinct !{!108, !107, !"_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsc2V0exE7CWf_11lance_arrow: argument 0"}
!109 = distinct !{!109, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECsc2V0exE7CWf_11lance_arrow"}
!110 = distinct !{!110, !109, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECsc2V0exE7CWf_11lance_arrow: argument 0"}
!111 = distinct !{!111, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!112 = distinct !{!112, !111, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!113 = distinct !{!113, !109, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECsc2V0exE7CWf_11lance_arrow: argument 1"}
!114 = distinct !{!114, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128"}
!115 = distinct !{!115, !114, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!116 = distinct !{!116, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyeBS_BS_E0E0Csc2V0exE7CWf_11lance_arrow"}
!117 = distinct !{!117, !116, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyeBS_BS_E0E0Csc2V0exE7CWf_11lance_arrow: argument 0"}
!118 = distinct !{!118, !"_RNvXs_NtNtCscI6d9CVNmLh_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!119 = distinct !{!119, !118, !"_RNvXs_NtNtCscI6d9CVNmLh_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!120 = distinct !{!120, !118, !"_RNvXs_NtNtCscI6d9CVNmLh_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!121 = !{!91}
!122 = !{!93}
!123 = !{!104, !103, !101, !100, !98, !97, !95, !91}
!124 = !{!103, !100, !98, !91}
!125 = !{!108, !106}
!126 = !{!110}
!127 = !{!112}
!128 = !{!112, !110}
!129 = !{!113}
!130 = !{!115, !112, !110, !113}
!131 = !{!117, !112, !110, !113}
!132 = !{!120, !119}
end_hunk_1
