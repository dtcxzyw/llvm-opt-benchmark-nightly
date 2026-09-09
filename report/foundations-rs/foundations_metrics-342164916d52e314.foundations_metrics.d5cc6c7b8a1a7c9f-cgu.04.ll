Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_metrics-342164916d52e314.foundations_metrics.d5cc6c7b8a1a7c9f-cgu.04?download=true
inline.NumInlined: 166
inline.NumDeleted: 58
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2n_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2r_:bb.a
  %i.v = xor i64 %i.u, %.val11.i, !dbg !446
  %i.w = icmp sge i64 %i.s, %i.v, !dbg !447       ; 2 uses
  %.not62 = icmp eq i64 %i.m, 2, !dbg !448        ; 2 uses
  br i1 %i.w, label %.preheader43, label %.preheader, !dbg !449

.preheader43:                                     ; preds = %bb.k
  br i1 %.not62, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdINtNtNtB8_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_13TimeHistogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB2y_.exit.i.thread, label %.lr.ph, !dbg !450

.preheader:                                       ; preds = %bb.k
  br i1 %.not62, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdINtNtNtB8_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_13TimeHistogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB2y_.exit.i.thread81, label %.lr.ph49, !dbg !451

.lr.ph:                                           ; preds = %.preheader43, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader43 ], !dbg !452 ; 2 uses
  %.sroa.01.0.i.i45 = phi i64 [ %i.af, %bb.l ], [ 2, %.preheader43 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i.i45, !dbg !453
  %.val8.i = load i64, ptr %i.x, align 8, !dbg !452, !alias.scope !390, !noalias !391, !noundef !39 ; 3 uses
  %i.y = ashr i64 %.val8.i, 63, !dbg !454
  %i.z = lshr i64 %i.y, 1, !dbg !455
  %i.aa = xor i64 %i.z, %.val8.i, !dbg !456
  %i.ab = ashr i64 %.val9.i, 63, !dbg !457
  %i.ac = lshr i64 %i.ab, 1, !dbg !458
  %i.ad = xor i64 %i.ac, %.val9.i, !dbg !459
  %i.ae = icmp slt i64 %i.aa, %i.ad, !dbg !460
  br i1 %i.ae, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdINtNtNtB8_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_13TimeHistogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB2y_.exit.i, label %bb.l, !dbg !452

bb.l:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i45, 1, !dbg !461 ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.m, !dbg !450
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdINtNtNtB8_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_13TimeHistogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB2y_.exit.i, label %.lr.ph, !dbg !450

.lr.ph49:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ], !dbg !462 ; 2 uses
  %.sroa.01.1.i.i48 = phi i64 [ %i.ao, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.1.i.i48, !dbg !463
  %.val.i = load i64, ptr %i.ag, align 8, !dbg !462, !alias.scope !390, !noalias !391, !noundef !39 ; 3 uses
  %i.ah = ashr i64 %.val.i, 63, !dbg !464
  %i.ai = lshr i64 %i.ah, 1, !dbg !465
  %i.aj = xor i64 %i.ai, %.val.i, !dbg !466
  %i.ak = ashr i64 %.val7.i, 63, !dbg !467
  %i.al = lshr i64 %i.ak, 1, !dbg !468
  %i.am = xor i64 %i.al, %.val7.i, !dbg !469
  %i.an = icmp slt i64 %i.aj, %i.am, !dbg !470
  br i1 %i.an, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdINtNtNtB8_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_13TimeHistogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB2y_.exit.i, !dbg !462

bb.m:                                             ; preds = %.lr.ph49
  %i.ao = add nuw i64 %.sroa.01.1.i.i48, 1, !dbg !471 ; 2 uses
  %exitcond65.not = icmp eq i64 %i.ao, %i.m, !dbg !451
  br i1 %exitcond65.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdINtNtNtB8_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_13TimeHistogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB2y_.exit.i, label %.lr.ph49, !dbg !451

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdINtNtNtB8_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_13TimeHistogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB2y_.exit.i: ; preds = %bb.m, %.lr.ph49, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i45, %.lr.ph ], [ %i.m, %bb.l ], [ %.sroa.01.1.i.i48, %.lr.ph49 ], [ %i.m, %bb.m ], !dbg !472 ; 5 uses
  %i.ap = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m, !dbg !473
  tail call void @llvm.assume(i1 %i.ap), !dbg !474
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !475
  br i1 %.not5.i, label %bb.i, label %bb.n, !dbg !475

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdINtNtNtB8_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_13TimeHistogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB2y_.exit.i.thread81: ; preds = %.preheader
  br i1 %.not5.i83, label %bb.i, label %.lr.ph.preheader.i.i, !dbg !475

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdINtNtNtB8_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_13TimeHistogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB2y_.exit.i.thread: ; preds = %.preheader43
  br i1 %.not5.i78, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdINtNtNtB4_4sync6atomic6AtomicyEE7reverseCsim2LhUzKY4R_19foundations_metrics.exit, !dbg !475

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdINtNtNtB8_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_13TimeHistogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB2y_.exit.i
  %i.aq = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.aq, 0
  %or.cond = or i1 %i.w, %.not.i.i, !dbg !476
  br i1 %or.cond, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdINtNtNtB4_4sync6atomic6AtomicyEE7reverseCsim2LhUzKY4R_19foundations_metrics.exit, label %.lr.ph.preheader.i.i, !dbg !476

bb.o:                                             ; preds = %bb.i
  %..i34 = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 %.sroa.01.0), !dbg !477
  %i.ar = shl nuw nsw i64 %..i34, 1, !dbg !478
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2v_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2z_.exit, !dbg !479

bb.p:                                             ; preds = %bb.i
  %..i33 = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 16), !dbg !480 ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2x_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2B_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i33, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noundef align 8 null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12, !dbg !481, !inline_history !291
  %i.as = shl nuw nsw i64 %..i33, 1, !dbg !482
  %i.at = or disjoint i64 %i.as, 1, !dbg !482
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2v_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2z_.exit, !dbg !479

_RNvMNtCs3oUPovFnLWP_4core5sliceSTdINtNtNtB4_4sync6atomic6AtomicyEE7reverseCsim2LhUzKY4R_19foundations_metrics.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingTdINtNtNtB4_4sync6atomic6AtomicyEEECsim2LhUzKY4R_19foundations_metrics.exit.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdINtNtNtB8_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_13TimeHistogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB2y_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i3942 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdINtNtNtB8_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_13TimeHistogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB2y_.exit.i.thread ], [ %.sroa.0.0.i.i798690, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingTdINtNtNtB4_4sync6atomic6AtomicyEEECsim2LhUzKY4R_19foundations_metrics.exit.i.i ]
  %i.au = shl nuw nsw i64 %.sroa.0.0.i.i3942, 1, !dbg !483
  %i.av = or disjoint i64 %i.au, 1, !dbg !483
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2v_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2z_.exit, !dbg !484

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdINtNtNtB8_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_13TimeHistogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB2y_.exit.i.thread81
  %i.aw = phi i64 [ %i.aq, %bb.n ], [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdINtNtNtB8_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_13TimeHistogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB2y_.exit.i.thread81 ]
  %.sroa.0.0.i.i798690 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdINtNtNtB8_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2u_13TimeHistogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB2y_.exit.i.thread81 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.0.i.i798690, !dbg !485
  br label %.lr.ph.i.i, !dbg !486

.lr.ph.i.i:                                       ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingTdINtNtNtB4_4sync6atomic6AtomicyEEECsim2LhUzKY4R_19foundations_metrics.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.bc, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingTdINtNtNtB4_4sync6atomic6AtomicyEEECsim2LhUzKY4R_19foundations_metrics.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ay = xor i64 %.sroa.0.017.i.i, -1, !dbg !487
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.017.i.i, !dbg !488
  %i.ba = getelementptr [16 x i8], ptr %i.ax, i64 %i.ay, !dbg !489
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsim2LhUzKY4R_19foundations_metrics(ptr noundef nonnull %i.az, ptr noundef nonnull %i.ba, i64 noundef 2)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingTdINtNtNtB4_4sync6atomic6AtomicyEEECsim2LhUzKY4R_19foundations_metrics.exit.i.i unwind label %bb.q, !dbg !486, !noalias !391

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #13, !dbg !490, !noalias !391
  unreachable, !dbg !490

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingTdINtNtNtB4_4sync6atomic6AtomicyEEECsim2LhUzKY4R_19foundations_metrics.exit.i.i: ; preds = %.lr.ph.i.i
  %i.bc = add nuw nsw i64 %.sroa.0.017.i.i, 1, !dbg !491 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bc, %i.aw, !dbg !492
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdINtNtNtB4_4sync6atomic6AtomicyEE7reverseCsim2LhUzKY4R_19foundations_metrics.exit, label %.lr.ph.i.i, !dbg !492

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2v_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2z_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdINtNtNtB4_4sync6atomic6AtomicyEE7reverseCsim2LhUzKY4R_19foundations_metrics.exit
  %.sroa.0.0.i32 = phi i64 [ %i.av, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdINtNtNtB4_4sync6atomic6AtomicyEE7reverseCsim2LhUzKY4R_19foundations_metrics.exit ], [ %i.at, %bb.p ], [ %i.ar, %bb.o ], !dbg !493 ; 2 uses
  %i.bd = lshr i64 %.sroa.023.0, 1, !dbg !494
  %i.be = lshr i64 %.sroa.0.0.i32, 1, !dbg !495
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !496 ; 2 uses
  %i.bf = sub nsw i64 %factor, %i.bd, !dbg !496
  %i.bg = add nuw nsw i64 %i.be, %factor, !dbg !497
  %i.bh = mul i64 %i.bf, %.sroa.0.0, !dbg !498
  %i.bi = mul i64 %i.bg, %.sroa.0.0, !dbg !499
  %i.bj = xor i64 %i.bi, %i.bh, !dbg !500
  %i.bk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bj, i1 false), !dbg !501
  %i.bl = trunc nuw nsw i64 %i.bk to i8, !dbg !500
  br label %bb.g, !dbg !502

.lr.ph55:                                         ; preds = %bb.g, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2y_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2C_.exit
  %.sroa.02.154 = phi i64 [ %i.bm, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2y_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2C_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.153 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2y_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2C_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bm = add i64 %.sroa.02.154, -1, !dbg !503    ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bm, !dbg !504
  %i.bo = load i8, ptr %i.bn, align 1, !dbg !505, !noundef !39
  %.not28 = icmp ult i8 %i.bo, %.sroa.021.0, !dbg !505
  br i1 %.not28, label %._crit_edge, label %bb.r, !dbg !505

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2y_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2C_.exit, %.lr.ph55, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.153, %.lr.ph55 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2y_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2C_.exit ], !dbg !428 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.154, %.lr.ph55 ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2y_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2C_.exit ], !dbg !430 ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !506
  store i64 %.sroa.023.1.lcssa, ptr %i.bp, align 8, !dbg !507
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !508
  store i8 %.sroa.021.0, ptr %i.bq, align 1, !dbg !509
  br i1 %i.k, label %bb.y, label %bb.z, !dbg !510

bb.r:                                             ; preds = %.lr.ph55
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bm, !dbg !511
  %i.bs = load i64, ptr %i.br, align 8, !dbg !512, !noundef !39 ; 3 uses
  %i.bt = lshr i64 %i.bs, 1, !dbg !513            ; 5 uses
  %i.bu = lshr i64 %.sroa.023.153, 1, !dbg !514   ; 3 uses
  %i.bv = add nuw i64 %i.bt, %i.bu, !dbg !515     ; 5 uses
  %i.bw = sub i64 %.sroa.09.0, %i.bv, !dbg !516
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bw, !dbg !517 ; 3 uses
  %i.by = icmp samesign ugt i64 %i.bv, %3, !dbg !518
  %i.bz = trunc i64 %.sroa.023.153 to i1
  %i.ca = or i64 %i.bs, %.sroa.023.153, !dbg !519
  %i.cb = trunc i64 %i.ca to i1, !dbg !519
  %or.cond3.i = or i1 %i.by, %i.cb, !dbg !519
  br i1 %or.cond3.i, label %bb.s, label %bb.t, !dbg !519

bb.s:                                             ; preds = %bb.r
  %i.cc = trunc i64 %i.bs to i1
  br i1 %i.cc, label %bb.u, label %bb.v, !dbg !520

bb.t:                                             ; preds = %bb.r
  %i.cd = shl nuw nsw i64 %i.bv, 1, !dbg !521
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2y_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2C_.exit, !dbg !522

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bz, label %bb.x, label %bb.w, !dbg !523

bb.v:                                             ; preds = %bb.s
  %i.ce = or i64 %i.bt, 1, !dbg !524
  %i.cf = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true), !dbg !525
  %i.cg = trunc nuw nsw i64 %i.cf to i32, !dbg !525
  %i.ch = shl nuw nsw i32 %i.cg, 1, !dbg !526
  %i.ci = xor i32 %i.ch, 126, !dbg !526
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2x_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2B_(ptr noalias nofree noundef nonnull align 8 %i.bx, i64 noundef range(i64 0, 576460752303423488) %i.bt, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ci, ptr noundef align 8 null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12, !dbg !527, !inline_history !361
  br label %bb.u, !dbg !528

bb.w:                                             ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bt, !dbg !529
  %i.ck = or i64 %i.bu, 1, !dbg !530
  %i.cl = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ck, i1 true), !dbg !531
  %i.cm = trunc nuw nsw i64 %i.cl to i32, !dbg !531
  %i.cn = shl nuw nsw i32 %i.cm, 1, !dbg !532
  %i.co = xor i32 %i.cn, 126, !dbg !532
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2x_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2B_(ptr noalias nofree noundef nonnull align 8 %i.cj, i64 noundef range(i64 0, 576460752303423488) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.co, ptr noundef align 8 null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12, !dbg !533, !inline_history !361
  br label %bb.x, !dbg !534

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2o_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2s_(ptr noalias nofree noundef nonnull align 8 %i.bx, i64 noundef range(i64 0, 576460752303423488) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !535
  %i.cp = shl nuw nsw i64 %i.bv, 1, !dbg !536
  %i.cq = or disjoint i64 %i.cp, 1, !dbg !536
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2y_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2C_.exit, !dbg !522

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2y_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2C_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cq, %bb.x ], [ %i.cd, %bb.t ], !dbg !537 ; 2 uses
  %i.cr = icmp ugt i64 %i.bm, 1, !dbg !433
  br i1 %i.cr, label %.lr.ph55, label %._crit_edge, !dbg !433

bb.y:                                             ; preds = %._crit_edge
  %i.cs = add nsw i64 %.sroa.02.1.lcssa, 1, !dbg !538
  %i.ct = lshr i64 %.sroa.018.0, 1, !dbg !539
  %i.cu = add nuw i64 %i.ct, %.sroa.09.0, !dbg !540
  br label %bb.f, !dbg !427

bb.z:                                             ; preds = %._crit_edge
  %i.cv = and i64 %.sroa.023.1.lcssa, 1, !dbg !541
  %.not30 = icmp eq i64 %i.cv, 0, !dbg !541
  br i1 %.not30, label %bb.aa, label %bb.ab, !dbg !542

bb.aa:                                            ; preds = %bb.z
  %i.cw = or i64 %1, 1, !dbg !543
  %i.cx = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cw, i1 true), !dbg !544
  %i.cy = trunc nuw nsw i64 %i.cx to i32, !dbg !544
  %i.cz = shl nuw nsw i32 %i.cy, 1, !dbg !545
  %i.da = xor i32 %i.cz, 126, !dbg !545
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2x_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2B_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.da, ptr noundef align 8 null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12, !dbg !546, !inline_history !361
  br label %bb.ab, !dbg !547

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !549
  br label %bb.ac, !dbg !550

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !550
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1Q_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB1U_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !551 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2, !dbg !730
  br i1 %i.c, label %bb.ac, label %bb.b, !dbg !730

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1, !dbg !731
  %i.e = urem i64 4611686018427387904, %1, !dbg !732
  %.not = icmp ne i64 %i.e, 0, !dbg !733
  %i.f = zext i1 %.not to i64, !dbg !733
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !733 ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !734
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !734

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !735
  br label %bb.e, !dbg !735

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !736
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !737
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !738
  br label %bb.e, !dbg !739

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ], !dbg !740 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !742
  %.not5.i77 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i82 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !743

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !744 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dn, %bb.y ], !dbg !745 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dl, %bb.y ], !dbg !746 ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !747  ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !747

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1Y_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB22_.exit
  %.sroa.021.0 = phi i8 [ %i.ce, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1Y_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB22_.exit ], [ 0, %bb.f ], !dbg !748 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1Y_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB22_.exit ], [ 1, %bb.f ], !dbg !748 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !749
  br i1 %i.l, label %.lr.ph55, label %._crit_edge, !dbg !749

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !750 ; 11 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0, !dbg !751 ; 9 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0, !dbg !752
  br i1 %.not.i31, label %bb.i, label %bb.j, !dbg !752

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1X_9Histogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB21_.exit.i.thread80, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1X_9Histogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB21_.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1X_9Histogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB21_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !753

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2, !dbg !754
  br i1 %i.o, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE7reverseCsim2LhUzKY4R_19foundations_metrics.exit, label %bb.k, !dbg !754

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !755
  %.val10.i = load i64, ptr %i.p, align 8, !dbg !756, !alias.scope !703, !noalias !704, !noundef !39 ; 4 uses
  %.val11.i = load i64, ptr %i.n, align 8, !dbg !756, !alias.scope !703, !noalias !704, !noundef !39 ; 2 uses
  %i.q = ashr i64 %.val10.i, 63, !dbg !757
  %i.r = lshr i64 %i.q, 1, !dbg !758
  %i.s = xor i64 %i.r, %.val10.i, !dbg !759
  %i.t = ashr i64 %.val11.i, 63, !dbg !760
  %i.u = lshr i64 %i.t, 1, !dbg !761
  %i.v = xor i64 %i.u, %.val11.i, !dbg !762
  %i.w = icmp slt i64 %i.s, %i.v, !dbg !763       ; 2 uses
  %.not62 = icmp eq i64 %i.m, 2, !dbg !764        ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader43, !dbg !765

.preheader43:                                     ; preds = %bb.k
  br i1 %.not62, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1X_9Histogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB21_.exit.i.thread, label %.lr.ph, !dbg !766

.preheader:                                       ; preds = %bb.k
  br i1 %.not62, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1X_9Histogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB21_.exit.i.thread80, label %.lr.ph49, !dbg !767

.lr.ph:                                           ; preds = %.preheader43, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader43 ], !dbg !768 ; 2 uses
  %.sroa.01.0.i.i45 = phi i64 [ %i.af, %bb.l ], [ 2, %.preheader43 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i.i45, !dbg !769
  %.val8.i = load i64, ptr %i.x, align 8, !dbg !768, !alias.scope !703, !noalias !704, !noundef !39 ; 3 uses
  %i.y = ashr i64 %.val8.i, 63, !dbg !770
  %i.z = lshr i64 %i.y, 1, !dbg !771
  %i.aa = xor i64 %i.z, %.val8.i, !dbg !772
  %i.ab = ashr i64 %.val9.i, 63, !dbg !773
  %i.ac = lshr i64 %i.ab, 1, !dbg !774
  %i.ad = xor i64 %i.ac, %.val9.i, !dbg !775
  %i.ae = icmp slt i64 %i.aa, %i.ad, !dbg !776
  br i1 %i.ae, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1X_9Histogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB21_.exit.i, label %bb.l, !dbg !768

bb.l:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i45, 1, !dbg !777 ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.m, !dbg !766
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1X_9Histogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB21_.exit.i, label %.lr.ph, !dbg !766

.lr.ph49:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ], !dbg !778 ; 2 uses
  %.sroa.01.1.i.i48 = phi i64 [ %i.ao, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.1.i.i48, !dbg !779
  %.val.i = load i64, ptr %i.ag, align 8, !dbg !778, !alias.scope !703, !noalias !704, !noundef !39 ; 3 uses
  %i.ah = ashr i64 %.val.i, 63, !dbg !780
  %i.ai = lshr i64 %i.ah, 1, !dbg !781
  %i.aj = xor i64 %i.ai, %.val.i, !dbg !782
  %i.ak = ashr i64 %.val7.i, 63, !dbg !783
  %i.al = lshr i64 %i.ak, 1, !dbg !784
  %i.am = xor i64 %i.al, %.val7.i, !dbg !785
  %i.an = icmp slt i64 %i.aj, %i.am, !dbg !786
  br i1 %i.an, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1X_9Histogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB21_.exit.i, !dbg !778

bb.m:                                             ; preds = %.lr.ph49
  %i.ao = add nuw i64 %.sroa.01.1.i.i48, 1, !dbg !787 ; 2 uses
  %exitcond65.not = icmp eq i64 %i.ao, %i.m, !dbg !767
  br i1 %exitcond65.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1X_9Histogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB21_.exit.i, label %.lr.ph49, !dbg !767

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1X_9Histogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB21_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph49
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i48, %.lr.ph49 ], [ %i.m, %bb.m ], [ %.sroa.01.0.i.i45, %.lr.ph ], [ %i.m, %bb.l ], !dbg !788 ; 6 uses
  %i.ap = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m, !dbg !789
  tail call void @llvm.assume(i1 %i.ap), !dbg !790
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !791
  br i1 %.not5.i, label %bb.i, label %bb.n, !dbg !791

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1X_9Histogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB21_.exit.i.thread80: ; preds = %.preheader
  br i1 %.not5.i82, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.preheader.i.i, !dbg !791

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1X_9Histogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB21_.exit.i.thread: ; preds = %.preheader43
  br i1 %.not5.i77, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE7reverseCsim2LhUzKY4R_19foundations_metrics.exit, !dbg !791

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1X_9Histogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB21_.exit.i
  br i1 %i.w, label %bb.q, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE7reverseCsim2LhUzKY4R_19foundations_metrics.exit, !dbg !792

bb.o:                                             ; preds = %bb.i
  %..i34 = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 %.sroa.01.0), !dbg !793
  %i.aq = shl nuw nsw i64 %..i34, 1, !dbg !794
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1Y_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB22_.exit, !dbg !795

bb.p:                                             ; preds = %bb.i
  %..i33 = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 32), !dbg !796 ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB20_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB24_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i33, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12, !dbg !797, !inline_history !614
  %i.ar = shl nuw nsw i64 %..i33, 1, !dbg !798
  %i.as = or disjoint i64 %i.ar, 1, !dbg !798
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1Y_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB22_.exit, !dbg !795

_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE7reverseCsim2LhUzKY4R_19foundations_metrics.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !799
  br i1 %lcmp.mod.not, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE7reverseCsim2LhUzKY4R_19foundations_metrics.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i.epil.preheader, !dbg !799

_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE7reverseCsim2LhUzKY4R_19foundations_metrics.exit.loopexit.unr-lcssa, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.preheader.i.i ], [ %i.bv, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE7reverseCsim2LhUzKY4R_19foundations_metrics.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod96 = trunc i64 %i.bd to i1, !dbg !799
  tail call void @llvm.assume(i1 %lcmp.mod96), !dbg !799
  %i.at = xor i64 %.sroa.0.016.i.i.epil.init, -1, !dbg !800
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.epil.init, !dbg !801 ; 3 uses
  %i.av = getelementptr [16 x i8], ptr %i.be, i64 %i.at, !dbg !802 ; 3 uses
  %i.aw = load double, ptr %i.au, align 8, !dbg !803, !alias.scope !707, !noalias !708, !noundef !39
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !803
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !803, !alias.scope !707, !noalias !708, !noundef !39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !dbg !803, !alias.scope !709, !noalias !704
  store double %i.aw, ptr %i.av, align 8, !dbg !803, !alias.scope !710, !noalias !711
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8, !dbg !803
  store i64 %i.ay, ptr %i.az, align 8, !dbg !803, !alias.scope !710, !noalias !711
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE7reverseCsim2LhUzKY4R_19foundations_metrics.exit, !dbg !804

_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE7reverseCsim2LhUzKY4R_19foundations_metrics.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i.epil.preheader, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE7reverseCsim2LhUzKY4R_19foundations_metrics.exit.loopexit.unr-lcssa, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1X_9Histogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB21_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i3942 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1X_9Histogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB21_.exit.i.thread ], [ %.sroa.0.0.i.i788589, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE7reverseCsim2LhUzKY4R_19foundations_metrics.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i788589, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i.epil.preheader ]
  %i.ba = shl nuw nsw i64 %.sroa.0.0.i.i3942, 1, !dbg !804
  %i.bb = or disjoint i64 %i.ba, 1, !dbg !804
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1Y_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB22_.exit, !dbg !805

bb.q:                                             ; preds = %bb.n
  %i.bc = lshr i64 %.sroa.0.0.i.i, 1, !dbg !806   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712), !dbg !807, !noalias !704
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713), !dbg !807, !noalias !704
  %.not.i.i = icmp eq i64 %i.bc, 0, !dbg !799
  br i1 %.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE7reverseCsim2LhUzKY4R_19foundations_metrics.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.preheader.i.i, !dbg !799

_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1X_9Histogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB21_.exit.i.thread80, %bb.q
  %i.bd = phi i64 [ %i.bc, %bb.q ], [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1X_9Histogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB21_.exit.i.thread80 ] ; 4 uses
  %.sroa.0.0.i.i788589 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1X_9Histogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0EB21_.exit.i.thread80 ] ; 3 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.0.i.i788589, !dbg !808 ; 3 uses
  %xtraiter = and i64 %i.bd, 1, !dbg !799
  %i.bf = icmp eq i64 %i.bd, 1, !dbg !799
  br i1 %i.bf, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i.epil.preheader, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.preheader.i.i.new, !dbg !799

_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.preheader.i.i.new: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.preheader.i.i
  %unroll_iter = and i64 %i.bd, 9223372036854775806, !dbg !799
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i, !dbg !799

_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.preheader.i.i.new ], [ %i.bv, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i ]
  %i.bg = xor i64 %.sroa.0.016.i.i, -1, !dbg !800
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i, !dbg !801 ; 3 uses
  %i.bi = getelementptr [16 x i8], ptr %i.be, i64 %i.bg, !dbg !802 ; 3 uses
  %i.bj = load double, ptr %i.bh, align 8, !dbg !803, !alias.scope !707, !noalias !708, !noundef !39
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8, !dbg !803
  %i.bl = load i64, ptr %i.bk, align 8, !dbg !803, !alias.scope !707, !noalias !708, !noundef !39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !dbg !803, !alias.scope !709, !noalias !704
  store double %i.bj, ptr %i.bi, align 8, !dbg !803, !alias.scope !710, !noalias !711
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8, !dbg !803
  store i64 %i.bl, ptr %i.bm, align 8, !dbg !803, !alias.scope !710, !noalias !711
  %i.bn = xor i64 %.sroa.0.016.i.i, -2, !dbg !800
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i, !dbg !801 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16, !dbg !801 ; 2 uses
  %i.bq = getelementptr [16 x i8], ptr %i.be, i64 %i.bn, !dbg !802 ; 3 uses
  %i.br = load double, ptr %i.bp, align 8, !dbg !803, !alias.scope !707, !noalias !708, !noundef !39
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 24, !dbg !803
  %i.bt = load i64, ptr %i.bs, align 8, !dbg !803, !alias.scope !707, !noalias !708, !noundef !39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !dbg !803, !alias.scope !709, !noalias !704
  store double %i.br, ptr %i.bq, align 8, !dbg !803, !alias.scope !710, !noalias !711
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8, !dbg !803
  store i64 %i.bt, ptr %i.bu, align 8, !dbg !803, !alias.scope !710, !noalias !711
  %i.bv = add nuw nsw i64 %.sroa.0.016.i.i, 2, !dbg !809 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !799    ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !799
  br i1 %niter.ncmp.1, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE7reverseCsim2LhUzKY4R_19foundations_metrics.exit.loopexit.unr-lcssa, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i, !dbg !799

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1Y_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB22_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE7reverseCsim2LhUzKY4R_19foundations_metrics.exit
  %.sroa.0.0.i32 = phi i64 [ %i.bb, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdyE7reverseCsim2LhUzKY4R_19foundations_metrics.exit ], [ %i.as, %bb.p ], [ %i.aq, %bb.o ], !dbg !810 ; 2 uses
  %i.bw = lshr i64 %.sroa.023.0, 1, !dbg !811
  %i.bx = lshr i64 %.sroa.0.0.i32, 1, !dbg !812
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !813 ; 2 uses
  %i.by = sub nsw i64 %factor, %i.bw, !dbg !813
  %i.bz = add nuw nsw i64 %i.bx, %factor, !dbg !814
  %i.ca = mul i64 %i.by, %.sroa.0.0, !dbg !815
  %i.cb = mul i64 %i.bz, %.sroa.0.0, !dbg !816
  %i.cc = xor i64 %i.cb, %i.ca, !dbg !817
  %i.cd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cc, i1 false), !dbg !818
  %i.ce = trunc nuw nsw i64 %i.cd to i8, !dbg !817
  br label %bb.g, !dbg !819

.lr.ph55:                                         ; preds = %bb.g, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB21_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB25_.exit
  %.sroa.02.154 = phi i64 [ %i.cf, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB21_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB25_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.153 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB21_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB25_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.cf = add i64 %.sroa.02.154, -1, !dbg !820    ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cf, !dbg !821
  %i.ch = load i8, ptr %i.cg, align 1, !dbg !822, !noundef !39
  %.not28 = icmp ult i8 %i.ch, %.sroa.021.0, !dbg !822
  br i1 %.not28, label %._crit_edge, label %bb.r, !dbg !822

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB21_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB25_.exit, %.lr.ph55, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.153, %.lr.ph55 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB21_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB25_.exit ], !dbg !744 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.154, %.lr.ph55 ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB21_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB25_.exit ], !dbg !746 ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !823
  store i64 %.sroa.023.1.lcssa, ptr %i.ci, align 8, !dbg !824
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !825
  store i8 %.sroa.021.0, ptr %i.cj, align 1, !dbg !826
  br i1 %i.k, label %bb.y, label %bb.z, !dbg !827

bb.r:                                             ; preds = %.lr.ph55
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cf, !dbg !828
  %i.cl = load i64, ptr %i.ck, align 8, !dbg !829, !noundef !39 ; 3 uses
  %i.cm = lshr i64 %i.cl, 1, !dbg !830            ; 5 uses
  %i.cn = lshr i64 %.sroa.023.153, 1, !dbg !831   ; 3 uses
  %i.co = add nuw i64 %i.cm, %i.cn, !dbg !832     ; 5 uses
  %i.cp = sub i64 %.sroa.09.0, %i.co, !dbg !833
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cp, !dbg !834 ; 3 uses
  %i.cr = icmp samesign ugt i64 %i.co, %3, !dbg !835
  %i.cs = trunc i64 %.sroa.023.153 to i1
  %i.ct = or i64 %i.cl, %.sroa.023.153, !dbg !836
  %i.cu = trunc i64 %i.ct to i1, !dbg !836
  %or.cond3.i = or i1 %i.cr, %i.cu, !dbg !836
  br i1 %or.cond3.i, label %bb.s, label %bb.t, !dbg !836

bb.s:                                             ; preds = %bb.r
  %i.cv = trunc i64 %i.cl to i1
  br i1 %i.cv, label %bb.u, label %bb.v, !dbg !837

bb.t:                                             ; preds = %bb.r
  %i.cw = shl nuw nsw i64 %i.co, 1, !dbg !838
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB21_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB25_.exit, !dbg !839

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cs, label %bb.x, label %bb.w, !dbg !840

bb.v:                                             ; preds = %bb.s
  %i.cx = or i64 %i.cm, 1, !dbg !841
  %i.cy = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true), !dbg !842
  %i.cz = trunc nuw nsw i64 %i.cy to i32, !dbg !842
  %i.da = shl nuw nsw i32 %i.cz, 1, !dbg !843
  %i.db = xor i32 %i.da, 126, !dbg !843
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB20_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB24_(ptr noalias nofree noundef nonnull align 8 %i.cq, i64 noundef range(i64 0, 576460752303423488) %i.cm, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12, !dbg !844, !inline_history !674
  br label %bb.u, !dbg !845

bb.w:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.cm, !dbg !846
  %i.dd = or i64 %i.cn, 1, !dbg !847
  %i.de = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.dd, i1 true), !dbg !848
  %i.df = trunc nuw nsw i64 %i.de to i32, !dbg !848
  %i.dg = shl nuw nsw i32 %i.df, 1, !dbg !849
  %i.dh = xor i32 %i.dg, 126, !dbg !849
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB20_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB24_(ptr noalias nofree noundef nonnull align 8 %i.dc, i64 noundef range(i64 0, 576460752303423488) %i.cn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.dh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12, !dbg !850, !inline_history !674
  br label %bb.x, !dbg !851

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1R_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB1V_(ptr noalias nofree noundef nonnull align 8 %i.cq, i64 noundef range(i64 0, 576460752303423488) %i.co, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.cm, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !852
  %i.di = shl nuw nsw i64 %i.co, 1, !dbg !853
  %i.dj = or disjoint i64 %i.di, 1, !dbg !853
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB21_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB25_.exit, !dbg !839

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB21_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB25_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.dj, %bb.x ], [ %i.cw, %bb.t ], !dbg !854 ; 2 uses
  %i.dk = icmp ugt i64 %i.cf, 1, !dbg !749
  br i1 %i.dk, label %.lr.ph55, label %._crit_edge, !dbg !749

bb.y:                                             ; preds = %._crit_edge
  %i.dl = add nsw i64 %.sroa.02.1.lcssa, 1, !dbg !855
  %i.dm = lshr i64 %.sroa.018.0, 1, !dbg !856
  %i.dn = add nuw i64 %i.dm, %.sroa.09.0, !dbg !857
  br label %bb.f, !dbg !743

bb.z:                                             ; preds = %._crit_edge
  %i.do = and i64 %.sroa.023.1.lcssa, 1, !dbg !858
  %.not30 = icmp eq i64 %i.do, 0, !dbg !858
  br i1 %.not30, label %bb.aa, label %bb.ab, !dbg !859

bb.aa:                                            ; preds = %bb.z
  %i.dp = or i64 %1, 1, !dbg !860
  %i.dq = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.dp, i1 true), !dbg !861
  %i.dr = trunc nuw nsw i64 %i.dq to i32, !dbg !861
  %i.ds = shl nuw nsw i32 %i.dr, 1, !dbg !862
  %i.dt = xor i32 %i.ds, 126, !dbg !862
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB20_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB24_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.dt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12, !dbg !863, !inline_history !674
  br label %bb.ab, !dbg !864

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !866
  br label %bb.ac, !dbg !867

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !867
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !868 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2, !dbg !1048
  br i1 %i.c, label %bb.ac, label %bb.b, !dbg !1048

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1, !dbg !1049
  %i.e = urem i64 4611686018427387904, %1, !dbg !1050
  %.not = icmp ne i64 %i.e, 0, !dbg !1051
  %i.f = zext i1 %.not to i64, !dbg !1051
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !1051 ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !1052
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !1052

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !1053
  br label %bb.e, !dbg !1053

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !1054
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !1055
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !1056
  br label %bb.e, !dbg !1057

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ], !dbg !1058 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1060
  %.not5.i77 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i82 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !1061

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !1062 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.df, %bb.y ], !dbg !1063 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dd, %bb.y ], !dbg !1064 ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !1065 ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !1065

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit
  %.sroa.021.0 = phi i8 [ %i.bw, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit ], [ 0, %bb.f ], !dbg !1066 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit ], [ 1, %bb.f ], !dbg !1066 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !1067
  br i1 %i.l, label %.lr.ph55, label %._crit_edge, !dbg !1067

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !1068 ; 11 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0, !dbg !1069 ; 8 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0, !dbg !1070
  br i1 %.not.i31, label %bb.i, label %bb.j, !dbg !1070

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtB8_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i.thread80, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtB8_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtB8_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !1071

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2, !dbg !1072
  br i1 %i.o, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCsim2LhUzKY4R_19foundations_metrics.exit, label %bb.k, !dbg !1072

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !1073
  %.val10.i = load i64, ptr %i.p, align 8, !dbg !1074, !alias.scope !1022, !noalias !1023, !noundef !39 ; 4 uses
  %.val11.i = load i64, ptr %i.n, align 8, !dbg !1074, !alias.scope !1022, !noalias !1023, !noundef !39 ; 2 uses
  %i.q = ashr i64 %.val10.i, 63, !dbg !1075
  %i.r = lshr i64 %i.q, 1, !dbg !1076
  %i.s = xor i64 %i.r, %.val10.i, !dbg !1077
  %i.t = ashr i64 %.val11.i, 63, !dbg !1078
  %i.u = lshr i64 %i.t, 1, !dbg !1079
  %i.v = xor i64 %i.u, %.val11.i, !dbg !1080
  %i.w = icmp slt i64 %i.s, %i.v, !dbg !1081      ; 2 uses
  %.not62 = icmp eq i64 %i.m, 2, !dbg !1082       ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader43, !dbg !1083

.preheader43:                                     ; preds = %bb.k
  br i1 %.not62, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtB8_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i.thread, label %.lr.ph, !dbg !1084

.preheader:                                       ; preds = %bb.k
  br i1 %.not62, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtB8_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i.thread80, label %.lr.ph49, !dbg !1085

.lr.ph:                                           ; preds = %.preheader43, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader43 ], !dbg !1086 ; 2 uses
  %.sroa.01.0.i.i45 = phi i64 [ %i.af, %bb.l ], [ 2, %.preheader43 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i.i45, !dbg !1087
  %.val8.i = load i64, ptr %i.x, align 8, !dbg !1086, !alias.scope !1022, !noalias !1023, !noundef !39 ; 3 uses
  %i.y = ashr i64 %.val8.i, 63, !dbg !1088
  %i.z = lshr i64 %i.y, 1, !dbg !1089
  %i.aa = xor i64 %i.z, %.val8.i, !dbg !1090
  %i.ab = ashr i64 %.val9.i, 63, !dbg !1091
  %i.ac = lshr i64 %i.ab, 1, !dbg !1092
  %i.ad = xor i64 %i.ac, %.val9.i, !dbg !1093
  %i.ae = icmp slt i64 %i.aa, %i.ad, !dbg !1094
  br i1 %i.ae, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtB8_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i, label %bb.l, !dbg !1086

bb.l:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i45, 1, !dbg !1095 ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.m, !dbg !1084
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtB8_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i, label %.lr.ph, !dbg !1084

.lr.ph49:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ], !dbg !1096 ; 2 uses
  %.sroa.01.1.i.i48 = phi i64 [ %i.ao, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i.i48, !dbg !1097
  %.val.i = load i64, ptr %i.ag, align 8, !dbg !1096, !alias.scope !1022, !noalias !1023, !noundef !39 ; 3 uses
  %i.ah = ashr i64 %.val.i, 63, !dbg !1098
  %i.ai = lshr i64 %i.ah, 1, !dbg !1099
  %i.aj = xor i64 %i.ai, %.val.i, !dbg !1100
  %i.ak = ashr i64 %.val7.i, 63, !dbg !1101
  %i.al = lshr i64 %i.ak, 1, !dbg !1102
  %i.am = xor i64 %i.al, %.val7.i, !dbg !1103
  %i.an = icmp slt i64 %i.aj, %i.am, !dbg !1104
  br i1 %i.an, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtB8_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i, !dbg !1096

bb.m:                                             ; preds = %.lr.ph49
  %i.ao = add nuw i64 %.sroa.01.1.i.i48, 1, !dbg !1105 ; 2 uses
  %exitcond65.not = icmp eq i64 %i.ao, %i.m, !dbg !1085
  br i1 %exitcond65.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtB8_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i, label %.lr.ph49, !dbg !1085

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtB8_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph49
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i48, %.lr.ph49 ], [ %i.m, %bb.m ], [ %.sroa.01.0.i.i45, %.lr.ph ], [ %i.m, %bb.l ], !dbg !1106 ; 6 uses
  %i.ap = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m, !dbg !1107
  tail call void @llvm.assume(i1 %i.ap), !dbg !1108
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !1109
  br i1 %.not5.i, label %bb.i, label %bb.n, !dbg !1109

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtB8_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i.thread80: ; preds = %.preheader
  br i1 %.not5.i82, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.preheader.i.i, !dbg !1109

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtB8_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i.thread: ; preds = %.preheader43
  br i1 %.not5.i77, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCsim2LhUzKY4R_19foundations_metrics.exit, !dbg !1109

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtB8_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i
  br i1 %i.w, label %bb.q, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCsim2LhUzKY4R_19foundations_metrics.exit, !dbg !1110

bb.o:                                             ; preds = %bb.i
  %..i34 = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0), !dbg !1111
  %i.aq = shl nuw nsw i64 %..i34, 1, !dbg !1112
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit, !dbg !1113

bb.p:                                             ; preds = %bb.i
  %..i33 = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32), !dbg !1114 ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i33, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12, !dbg !1115, !inline_history !931
  %i.ar = shl nuw nsw i64 %..i33, 1, !dbg !1116
  %i.as = or disjoint i64 %i.ar, 1, !dbg !1116
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit, !dbg !1113

_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCsim2LhUzKY4R_19foundations_metrics.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i, %middle.block, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtB8_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i3942 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtB8_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i.thread ], [ %.sroa.0.0.i.i788589, %middle.block ], [ %.sroa.0.0.i.i788589, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i ]
  %i.at = shl nuw nsw i64 %.sroa.0.0.i.i3942, 1, !dbg !1117
  %i.au = or disjoint i64 %i.at, 1, !dbg !1117
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit, !dbg !1118

bb.q:                                             ; preds = %bb.n
  %i.av = lshr i64 %.sroa.0.0.i.i, 1, !dbg !1119  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1026), !dbg !1120, !noalias !1023
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1027), !dbg !1120, !noalias !1023
  %.not.i.i = icmp eq i64 %i.av, 0, !dbg !1121
  br i1 %.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCsim2LhUzKY4R_19foundations_metrics.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.preheader.i.i, !dbg !1121

_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtB8_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i.thread80, %bb.q
  %i.aw = phi i64 [ %i.av, %bb.q ], [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtB8_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i.thread80 ] ; 4 uses
  %.sroa.0.0.i.i788589 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtB8_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit.i.thread80 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i.i788589, !dbg !1122 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aw, 4, !dbg !1121
  br i1 %min.iters.check, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i.preheader, label %vector.ph, !dbg !1121

vector.ph:                                        ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.preheader.i.i
  %n.vec = and i64 %i.aw, 9223372036854775804     ; 3 uses
  br label %vector.body, !dbg !1121

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !1123 ; 3 uses
  %i.ay = xor i64 %index, -1, !dbg !1124
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index, !dbg !1125 ; 4 uses
  %i.ba = getelementptr [8 x i8], ptr %i.ax, i64 %i.ay, !dbg !1126 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16, !dbg !1127
  %wide.load = load <2 x double>, ptr %i.az, align 8, !dbg !1127, !alias.scope !1028, !noalias !1029
  %wide.load94 = load <2 x double>, ptr %i.bb, align 8, !dbg !1127, !alias.scope !1028, !noalias !1029
  %i.bc = getelementptr i8, ptr %i.ba, i64 -8, !dbg !1127
  %i.bd = getelementptr i8, ptr %i.ba, i64 -24, !dbg !1127
  %wide.load95 = load <2 x i64>, ptr %i.bc, align 8, !dbg !1127, !alias.scope !1030, !noalias !1031
  %wide.load96 = load <2 x i64>, ptr %i.bd, align 8, !dbg !1127, !alias.scope !1030, !noalias !1031
  %reverse = shufflevector <2 x i64> %wide.load95, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !1127
  %reverse97 = shufflevector <2 x i64> %wide.load96, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !1127
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 16, !dbg !1127
  store <2 x i64> %reverse, ptr %i.az, align 8, !dbg !1127, !alias.scope !1028, !noalias !1029
  store <2 x i64> %reverse97, ptr %i.be, align 8, !dbg !1127, !alias.scope !1028, !noalias !1029
  %i.bf = getelementptr i8, ptr %i.ba, i64 -8, !dbg !1127
  %i.bg = getelementptr i8, ptr %i.ba, i64 -24, !dbg !1127
  %reverse98 = shufflevector <2 x double> %wide.load, <2 x double> poison, <2 x i32> <i32 1, i32 0>, !dbg !1127
  %reverse99 = shufflevector <2 x double> %wide.load94, <2 x double> poison, <2 x i32> <i32 1, i32 0>, !dbg !1127
  store <2 x double> %reverse98, ptr %i.bf, align 8, !dbg !1127, !alias.scope !1030, !noalias !1031
  store <2 x double> %reverse99, ptr %i.bg, align 8, !dbg !1127, !alias.scope !1030, !noalias !1031
  %index.next = add nuw i64 %index, 4, !dbg !1123 ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec, !dbg !1121
  br i1 %i.bh, label %middle.block, label %vector.body, !dbg !1121, !llvm.loop !958

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec, !dbg !1121
  br i1 %cmp.n, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCsim2LhUzKY4R_19foundations_metrics.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i.preheader, !dbg !1121

_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i.preheader: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i, !dbg !1121

_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i.preheader, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bn, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i.preheader ] ; 3 uses
  %i.bi = xor i64 %.sroa.0.016.i.i, -1, !dbg !1124
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i, !dbg !1125 ; 2 uses
  %i.bk = getelementptr [8 x i8], ptr %i.ax, i64 %i.bi, !dbg !1126 ; 2 uses
  %i.bl = load double, ptr %i.bj, align 8, !dbg !1127, !alias.scope !1028, !noalias !1029, !noundef !39
  %i.bm = load i64, ptr %i.bk, align 8, !dbg !1127, !alias.scope !1030, !noalias !1031
  store i64 %i.bm, ptr %i.bj, align 8, !dbg !1127, !alias.scope !1028, !noalias !1029
  store double %i.bl, ptr %i.bk, align 8, !dbg !1127, !alias.scope !1030, !noalias !1031
  %i.bn = add nuw nsw i64 %.sroa.0.016.i.i, 1, !dbg !1123 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bn, %i.aw, !dbg !1121
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCsim2LhUzKY4R_19foundations_metrics.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit11.i.i, !dbg !1121, !llvm.loop !959

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCsim2LhUzKY4R_19foundations_metrics.exit
  %.sroa.0.0.i32 = phi i64 [ %i.au, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCsim2LhUzKY4R_19foundations_metrics.exit ], [ %i.as, %bb.p ], [ %i.aq, %bb.o ], !dbg !1128 ; 2 uses
  %i.bo = lshr i64 %.sroa.023.0, 1, !dbg !1129
  %i.bp = lshr i64 %.sroa.0.0.i32, 1, !dbg !1130
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !1131 ; 2 uses
  %i.bq = sub nsw i64 %factor, %i.bo, !dbg !1131
  %i.br = add nuw nsw i64 %i.bp, %factor, !dbg !1132
  %i.bs = mul i64 %i.bq, %.sroa.0.0, !dbg !1133
  %i.bt = mul i64 %i.br, %.sroa.0.0, !dbg !1134
  %i.bu = xor i64 %i.bt, %i.bs, !dbg !1135
  %i.bv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bu, i1 false), !dbg !1136
  %i.bw = trunc nuw nsw i64 %i.bv to i8, !dbg !1135
  br label %bb.g, !dbg !1137

.lr.ph55:                                         ; preds = %bb.g, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit
  %.sroa.02.154 = phi i64 [ %i.bx, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.153 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bx = add i64 %.sroa.02.154, -1, !dbg !1138   ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx, !dbg !1139
  %i.bz = load i8, ptr %i.by, align 1, !dbg !1140, !noundef !39
  %.not28 = icmp ult i8 %i.bz, %.sroa.021.0, !dbg !1140
  br i1 %.not28, label %._crit_edge, label %bb.r, !dbg !1140

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit, %.lr.ph55, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.153, %.lr.ph55 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit ], !dbg !1062 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.154, %.lr.ph55 ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit ], !dbg !1064 ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !1141
  store i64 %.sroa.023.1.lcssa, ptr %i.ca, align 8, !dbg !1142
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !1143
  store i8 %.sroa.021.0, ptr %i.cb, align 1, !dbg !1144
  br i1 %i.k, label %bb.y, label %bb.z, !dbg !1145

bb.r:                                             ; preds = %.lr.ph55
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bx, !dbg !1146
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !1147, !noundef !39 ; 3 uses
  %i.ce = lshr i64 %i.cd, 1, !dbg !1148           ; 5 uses
  %i.cf = lshr i64 %.sroa.023.153, 1, !dbg !1149  ; 3 uses
  %i.cg = add nuw i64 %i.ce, %i.cf, !dbg !1150    ; 5 uses
  %i.ch = sub i64 %.sroa.09.0, %i.cg, !dbg !1151
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ch, !dbg !1152 ; 3 uses
  %i.cj = icmp samesign ugt i64 %i.cg, %3, !dbg !1153
  %i.ck = trunc i64 %.sroa.023.153 to i1
  %i.cl = or i64 %i.cd, %.sroa.023.153, !dbg !1154
  %i.cm = trunc i64 %i.cl to i1, !dbg !1154
  %or.cond3.i = or i1 %i.cj, %i.cm, !dbg !1154
  br i1 %or.cond3.i, label %bb.s, label %bb.t, !dbg !1154

bb.s:                                             ; preds = %bb.r
  %i.cn = trunc i64 %i.cd to i1
  br i1 %i.cn, label %bb.u, label %bb.v, !dbg !1155

bb.t:                                             ; preds = %bb.r
  %i.co = shl nuw nsw i64 %i.cg, 1, !dbg !1156
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit, !dbg !1157

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ck, label %bb.x, label %bb.w, !dbg !1158

bb.v:                                             ; preds = %bb.s
  %i.cp = or i64 %i.ce, 1, !dbg !1159
  %i.cq = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true), !dbg !1160
  %i.cr = trunc nuw nsw i64 %i.cq to i32, !dbg !1160
  %i.cs = shl nuw nsw i32 %i.cr, 1, !dbg !1161
  %i.ct = xor i32 %i.cs, 126, !dbg !1161
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 1152921504606846976) %i.ce, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12, !dbg !1162, !inline_history !993
  br label %bb.u, !dbg !1163

bb.w:                                             ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ce, !dbg !1164
  %i.cv = or i64 %i.cf, 1, !dbg !1165
  %i.cw = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cv, i1 true), !dbg !1166
  %i.cx = trunc nuw nsw i64 %i.cw to i32, !dbg !1166
  %i.cy = shl nuw nsw i32 %i.cx, 1, !dbg !1167
  %i.cz = xor i32 %i.cy, 126, !dbg !1167
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 %i.cu, i64 noundef range(i64 0, 1152921504606846976) %i.cf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12, !dbg !1168, !inline_history !993
  br label %bb.x, !dbg !1169

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 1152921504606846976) %i.cg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.ce, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !1170
  %i.da = shl nuw nsw i64 %i.cg, 1, !dbg !1171
  %i.db = or disjoint i64 %i.da, 1, !dbg !1171
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit, !dbg !1157

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.db, %bb.x ], [ %i.co, %bb.t ], !dbg !1172 ; 2 uses
  %i.dc = icmp ugt i64 %i.bx, 1, !dbg !1067
  br i1 %i.dc, label %.lr.ph55, label %._crit_edge, !dbg !1067

bb.y:                                             ; preds = %._crit_edge
  %i.dd = add nsw i64 %.sroa.02.1.lcssa, 1, !dbg !1173
  %i.de = lshr i64 %.sroa.018.0, 1, !dbg !1174
  %i.df = add nuw i64 %i.de, %.sroa.09.0, !dbg !1175
  br label %bb.f, !dbg !1061

bb.z:                                             ; preds = %._crit_edge
  %i.dg = and i64 %.sroa.023.1.lcssa, 1, !dbg !1176
  %.not30 = icmp eq i64 %i.dg, 0, !dbg !1176
  br i1 %.not30, label %bb.aa, label %bb.ab, !dbg !1177

bb.aa:                                            ; preds = %bb.z
  %i.dh = or i64 %1, 1, !dbg !1178
  %i.di = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dh, i1 true), !dbg !1179
  %i.dj = trunc nuw nsw i64 %i.di to i32, !dbg !1179
  %i.dk = shl nuw nsw i32 %i.dj, 1, !dbg !1180
  %i.dl = xor i32 %i.dk, 126, !dbg !1180
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12, !dbg !1181, !inline_history !993
  br label %bb.ab, !dbg !1182

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1184
  br label %bb.ac, !dbg !1185

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !1185
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2x_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2B_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %4, ptr nofree noundef readonly align 8 captures(address) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #2 !dbg !1186 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 17, !dbg !1500
  br i1 %i.a, label %.outer._crit_edge, label %.lr.ph, !dbg !1500

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph120 = phi ptr [ %i.gp, %.outer ], [ %0, %bb.a ] ; 22 uses
  %.sroa.16.0.ph119 = phi i64 [ %i.ga, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph118 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph117 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.b = ptrtoint ptr %.sroa.0.0.ph120 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph117, null
  %i.c = icmp eq i32 %.sroa.025.0.ph118, 0, !dbg !1501
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph267, !dbg !1501

bb.b:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdINtNtNtB4_4sync6atomic6AtomicyEE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit
  %i.d = icmp eq i32 %i.f, 0, !dbg !1501
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph267, !dbg !1501

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdINtNtNtB4_4sync6atomic6AtomicyEE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit, %bb.a
  %.sroa.0.0.ph.lcssa111 = phi ptr [ %.sroa.0.0.ph120, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdINtNtNtB4_4sync6atomic6AtomicyEE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit ], [ %0, %bb.a ], [ %i.gp, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTdINtNtNtB4_4sync6atomic6AtomicyEE12split_at_mutCsim2LhUzKY4R_19foundations_metrics.exit ], [ %1, %bb.a ], [ %i.ga, %.outer ] ; 2 uses
  %i.e = icmp samesign ugt i64 %.sroa.16.0.lcssa, 1, !dbg !1502
  br i1 %i.e, label %bb.c, label %_RINvXNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsortTdINtNtNtBb_4sync6atomic6AtomicyEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB33_13TimeHistogram3newINtNtNtNtBb_4iter8adapters6copied6CopiedINtNtB9_4iter4IterdEEEs_0E0EB37_.exit, !dbg !1502

bb.c:                                             ; preds = %.outer._crit_edge
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1m_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2O_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2S_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa111, i64 noundef range(i64 0, 17) %.sroa.16.0.lcssa, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6), !dbg !1503
  br label %_RINvXNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsortTdINtNtNtBb_4sync6atomic6AtomicyEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB33_13TimeHistogram3newINtNtNtNtBb_4iter8adapters6copied6CopiedINtNtB9_4iter4IterdEEEs_0E0EB37_.exit, !dbg !1503

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0113.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph119, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2n_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2r_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph120, i64 noundef %.sroa.16.0113.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6), !dbg !1504
  br label %_RINvXNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsortTdINtNtNtBb_4sync6atomic6AtomicyEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB33_13TimeHistogram3newINtNtNtNtBb_4iter8adapters6copied6CopiedINtNtB9_4iter4IterdEEEs_0E0EB37_.exit, !dbg !1505

.lr.ph267:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0112266 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph118, %.lr.ph ]
  %.sroa.16.0113265 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph119, %.lr.ph ] ; 21 uses
  %i.f = add i32 %.sroa.025.0112266, -1, !dbg !1506 ; 4 uses
  %i.g = lshr i64 %.sroa.16.0113265, 3, !dbg !1507 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.g, 6, !dbg !1508
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %.idx.i, !dbg !1508 ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 112, !dbg !1509
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %.idx2.i, !dbg !1509 ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.16.0113265, 64, !dbg !1510
  br i1 %i.j, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2q_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2u_.exit.i, label %bb.d, !dbg !1510

bb.d:                                             ; preds = %.lr.ph267
  %i.k = tail call noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2w_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2A_(ptr noundef nonnull align 8 %.sroa.0.0.ph120, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i64 noundef %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6), !dbg !1511
  br label %bb.e, !dbg !1512

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2q_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2u_.exit.i: ; preds = %.lr.ph267
  %.val6.i = load i64, ptr %.sroa.0.0.ph120, align 8, !dbg !1513, !noalias !1475, !noundef !39 ; 2 uses
  %.val7.i = load i64, ptr %i.h, align 8, !dbg !1513, !noalias !1475, !noundef !39 ; 2 uses
  %i.l = ashr i64 %.val6.i, 63, !dbg !1514
  %i.m = lshr i64 %i.l, 1, !dbg !1515
  %i.n = xor i64 %i.m, %.val6.i, !dbg !1516       ; 2 uses
  %i.o = ashr i64 %.val7.i, 63, !dbg !1517
  %i.p = lshr i64 %i.o, 1, !dbg !1518
  %i.q = xor i64 %i.p, %.val7.i, !dbg !1519       ; 2 uses
  %i.r = icmp slt i64 %i.n, %i.q, !dbg !1520      ; 2 uses
  %.val5.i = load i64, ptr %i.i, align 8, !dbg !1521, !noalias !1475, !noundef !39 ; 2 uses
  %i.s = ashr i64 %.val5.i, 63, !dbg !1522
  %i.t = lshr i64 %i.s, 1, !dbg !1523
  %i.u = xor i64 %i.t, %.val5.i, !dbg !1524       ; 2 uses
  %i.v = icmp slt i64 %i.n, %i.u, !dbg !1525
  %i.w = xor i1 %i.r, %i.v, !dbg !1526
  %i.x = icmp slt i64 %i.q, %i.u, !dbg !1526
  %i.y = xor i1 %i.r, %i.x, !dbg !1526
  %..i.i = select i1 %i.y, ptr %i.i, ptr %i.h, !dbg !1526
  %.sroa.0.0.i.i = select i1 %i.w, ptr %.sroa.0.0.ph120, ptr %..i.i, !dbg !1526
  br label %bb.e, !dbg !1512

_RINvXNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsortTdINtNtNtBb_4sync6atomic6AtomicyEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB33_13TimeHistogram3newINtNtNtNtBb_4iter8adapters6copied6CopiedINtNtB9_4iter4IterdEEEs_0E0EB37_.exit: ; preds = %bb.v, %bb.c, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void, !dbg !1527

bb.e:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2q_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2u_.exit.i, %bb.d
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2q_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2u_.exit.i ], [ %i.k, %bb.d ]
  %i.z = ptrtoint ptr %.sroa.0.0.i.sink.i to i64, !dbg !1528
  %i.aa = sub nuw i64 %i.z, %i.b, !dbg !1528      ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.aa, 4, !dbg !1528 ; 3 uses
  %i.ab = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0113265, !dbg !1529
  tail call void @llvm.assume(i1 %i.ab), !dbg !1530
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %i.aa, !dbg !1531 ; 7 uses
  br i1 %.not, label %bb.g, label %bb.f, !dbg !1532

bb.f:                                             ; preds = %bb.e
  %.sroa.028.0.val = load i64, ptr %.sroa.028.0.ph117, align 8, !dbg !1533, !noundef !39 ; 2 uses
  %.val = load i64, ptr %i.ac, align 8, !dbg !1533, !noundef !39 ; 2 uses
  %i.ad = ashr i64 %.sroa.028.0.val, 63, !dbg !1534
  %i.ae = lshr i64 %i.ad, 1, !dbg !1535
  %i.af = xor i64 %i.ae, %.sroa.028.0.val, !dbg !1536
  %i.ag = ashr i64 %.val, 63, !dbg !1537
  %i.ah = lshr i64 %i.ag, 1, !dbg !1538
  %i.ai = xor i64 %i.ah, %.val, !dbg !1539
  %i.aj = icmp slt i64 %i.af, %i.ai, !dbg !1540
  br i1 %i.aj, label %bb.g, label %.thread, !dbg !1541

bb.g:                                             ; preds = %bb.e, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1476), !dbg !1542
  %.not81 = icmp samesign ult i64 %3, %.sroa.16.0113265, !dbg !1543
  br i1 %.not81, label %bb.i, label %bb.h, !dbg !1543, !prof !128

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0113265, !dbg !1544 ; 4 uses
  br label %bb.j, !dbg !1545

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap(), !dbg !1546
  unreachable, !dbg !1546

bb.j:                                             ; preds = %bb.l, %bb.h
  %.sroa.43.0.i = phi ptr [ %i.ak, %bb.h ], [ %i.cs, %bb.l ], !dbg !1547 ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.h ], [ %.sroa.27.2.lcssa.i, %bb.l ], !dbg !1547 ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph120, %bb.h ], [ %i.cu, %bb.l ], !dbg !1547 ; 3 uses
  %.sroa.06.0.i = phi ptr [ null, %bb.h ], [ %i.ct, %bb.l ], !dbg !1548
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.h ], [ %.sroa.16.0113265, %bb.l ] ; 3 uses
  %i.al = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i37, i64 3), !dbg !1549
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph120, i64 %i.al, !dbg !1550 ; 2 uses
  %i.an = icmp ult ptr %.sroa.9.0.i, %i.am, !dbg !1551
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i, !dbg !1551

.lr.ph.i:                                         ; preds = %bb.j
  %.val22.i = load i64, ptr %i.ac, align 8, !alias.scope !1477, !noalias !1476, !noundef !39 ; 2 uses
  %i.ao = ashr i64 %.val22.i, 63
  %i.ap = lshr i64 %i.ao, 1
  %i.aq = xor i64 %i.ap, %.val22.i                ; 4 uses
  br label %bb.k, !dbg !1551

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.sroa.9.131.i = phi ptr [ %.sroa.9.0.i, %.lr.ph.i ], [ %i.ca, %bb.k ] ; 6 uses
  %.sroa.27.130.i = phi i64 [ %.sroa.27.0.i, %.lr.ph.i ], [ %i.bz, %bb.k ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %.sroa.43.0.i, %.lr.ph.i ], [ %i.bw, %bb.k ] ; 4 uses
  %.val21.i = load i64, ptr %.sroa.9.131.i, align 8, !dbg !1552, !alias.scope !1477, !noalias !1476, !noundef !39 ; 2 uses
  %i.ar = ashr i64 %.val21.i, 63, !dbg !1553
  %i.as = lshr i64 %i.ar, 1, !dbg !1554
  %i.at = xor i64 %i.as, %.val21.i, !dbg !1555
  %i.au = icmp slt i64 %i.at, %i.aq, !dbg !1556   ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16, !dbg !1557
  %.sroa.01.0.i.i = select i1 %i.au, ptr %2, ptr %i.av, !dbg !1558
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i, !dbg !1559
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i, i64 16, i1 false), !dbg !1560, !alias.scope !1478, !noalias !1479
  %i.ax = zext i1 %i.au to i64, !dbg !1561
  %i.ay = add i64 %.sroa.27.130.i, %i.ax, !dbg !1562 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16, !dbg !1563 ; 2 uses
  %.val19.i = load i64, ptr %i.az, align 8, !dbg !1564, !alias.scope !1477, !noalias !1476, !noundef !39 ; 2 uses
  %i.ba = ashr i64 %.val19.i, 63, !dbg !1565
  %i.bb = lshr i64 %i.ba, 1, !dbg !1566
  %i.bc = xor i64 %i.bb, %.val19.i, !dbg !1567
  %i.bd = icmp slt i64 %i.bc, %i.aq, !dbg !1568   ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32, !dbg !1569
  %.sroa.01.0.i23.i = select i1 %i.bd, ptr %2, ptr %i.be, !dbg !1570
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i, i64 %i.ay, !dbg !1571
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !dbg !1572, !alias.scope !1478, !noalias !1480
  %i.bg = zext i1 %i.bd to i64, !dbg !1573
  %i.bh = add i64 %i.ay, %i.bg, !dbg !1574        ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32, !dbg !1575 ; 2 uses
  %.val17.i = load i64, ptr %i.bi, align 8, !dbg !1576, !alias.scope !1477, !noalias !1476, !noundef !39 ; 2 uses
  %i.bj = ashr i64 %.val17.i, 63, !dbg !1577
  %i.bk = lshr i64 %i.bj, 1, !dbg !1578
  %i.bl = xor i64 %i.bk, %.val17.i, !dbg !1579
  %i.bm = icmp slt i64 %i.bl, %i.aq, !dbg !1580   ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -48, !dbg !1581
  %.sroa.01.0.i24.i = select i1 %i.bm, ptr %2, ptr %i.bn, !dbg !1582
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i, i64 %i.bh, !dbg !1583
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !dbg !1584, !alias.scope !1478, !noalias !1481
  %i.bp = zext i1 %i.bm to i64, !dbg !1585
  %i.bq = add i64 %i.bh, %i.bp, !dbg !1586        ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 48, !dbg !1587 ; 2 uses
  %.val15.i = load i64, ptr %i.br, align 8, !dbg !1588, !alias.scope !1477, !noalias !1476, !noundef !39 ; 2 uses
  %i.bs = ashr i64 %.val15.i, 63, !dbg !1589
  %i.bt = lshr i64 %i.bs, 1, !dbg !1590
  %i.bu = xor i64 %i.bt, %.val15.i, !dbg !1591
end_hunk_0
