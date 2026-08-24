Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_ooc-3f61eca032eb34cc.polars_ooc.efc82afb51c03bad-cgu.14?download=true
inline.NumInlined: 896
inline.NumDeleted: 318
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE20disconnect_receiversCskAlUH1kY1DR_10polars_ooc:bb.a
  %i.aw = and i64 %i.av, 1, !dbg !10572
  %i.ax = icmp eq i64 %i.aw, 0, !dbg !10572
  br i1 %i.ax, label %.lr.ph.i28.i, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCskAlUH1kY1DR_10polars_ooc.exit.i, !dbg !10572

_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCskAlUH1kY1DR_10polars_ooc.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, %bb.k, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCskAlUH1kY1DR_10polars_ooc.exit.i
  %.sroa.011.2.i = phi ptr [ %i.al, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCskAlUH1kY1DR_10polars_ooc.exit.i ], [ %.sroa.011.145.i, %bb.k ], [ %.sroa.011.145.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], !dbg !10588 ; 2 uses
  %i.ay = add i64 %.sroa.05.046.i, 2, !dbg !10589 ; 3 uses
  %i.az = lshr i64 %i.ay, 1, !dbg !10484          ; 2 uses
  %.not.i = icmp eq i64 %i.az, %i.o, !dbg !10484
  br i1 %.not.i, label %._crit_edge49.i, label %.lr.ph48.i, !dbg !10484

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE20discard_all_messagesCskAlUH1kY1DR_10polars_ooc.exit: ; preds = %._crit_edge49.i, %bb.g
  %i.ba = and i64 %.sroa.05.0.lcssa.i, -2, !dbg !10592
  store atomic i64 %i.ba, ptr %0 release, align 128, !dbg !10593
  br label %bb.n, !dbg !10597

bb.n:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE20discard_all_messagesCskAlUH1kY1DR_10polars_ooc.exit
  ret i1 %i.d, !dbg !10598
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB5_6SenderNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4sendBS_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10599 {
bb.a:
  %.sroa.5.i = alloca [24 x i8], align 8          ; 10 uses
  %.sroa.6.i = alloca [24 x i8], align 8          ; 6 uses
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !10601
  %i.f = load i64, ptr %1, align 8, !dbg !10602, !range !263, !noundef !15
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10602
  %i.h = load ptr, ptr %i.g, align 8, !dbg !10603, !noundef !15 ; 6 uses
  switch i64 %i.f, label %default.unreachable41 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.w
  ], !dbg !10601

default.unreachable41:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !10604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !10604
  call void @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4sendB10_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noundef nonnull align 128 %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d, i64 undef, i32 noundef 1000000000), !dbg !10606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !10607
  br label %bb.x, !dbg !10608

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !10609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10611), !dbg !10614
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10615), !dbg !10614
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 128, !dbg !10617 ; 5 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8, !dbg !10630, !noalias !10632 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 136, !dbg !10635 ; 5 uses
  %i.l = load atomic ptr, ptr %i.k acquire, align 8, !dbg !10643, !noalias !10632
  %i.m = and i64 %i.j, 1, !dbg !10645
  %i.n = icmp eq i64 %i.m, 0, !dbg !10645
  br i1 %i.n, label %.lr.ph.lr.ph.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.thread.i, !dbg !10645

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.thread.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i), !dbg !10648
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i), !dbg !10649
  %.sroa.011.0.copyload28.i = load i64, ptr %i.c, align 8, !dbg !10649, !alias.scope !10615, !noalias !10611
  %.sroa.5.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !10649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx29.i, i64 24, i1 false), !dbg !10649, !noalias !10611
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_.exit.i, !dbg !10650

.lr.ph.lr.ph.i.i:                                 ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %.lr.ph.i.i, !dbg !10645

.lr.ph.i.i:                                       ; preds = %.outer.backedge.i.i, %.lr.ph.lr.ph.i.i
  %.sroa.03.0.ph78.i.i = phi i64 [ %i.j, %.lr.ph.lr.ph.i.i ], [ %i.ap, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.07.0.ph77.i.i = phi ptr [ %i.l, %.lr.ph.lr.ph.i.i ], [ %i.aq, %.outer.backedge.i.i ]
  %.sroa.0.0.ph76.i.i = phi i32 [ 0, %.lr.ph.lr.ph.i.i ], [ %.sroa.0.0.ph.be.i.i, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.035.0.ph75.i.i = phi ptr [ null, %.lr.ph.lr.ph.i.i ], [ %.sroa.035.0.ph.be.i.i, %.outer.backedge.i.i ] ; 4 uses
  %i.p = lshr exact i64 %.sroa.03.0.ph78.i.i, 1, !dbg !10653
  %i.q = and i64 %i.p, 31, !dbg !10653            ; 2 uses
  %i.r = icmp eq i64 %i.q, 31, !dbg !10654
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i, !dbg !10654

bb.d:                                             ; preds = %.loopexit.i.i
  %i.s = add i32 %.sroa.0.071.i64.i, 1, !dbg !10656 ; 2 uses
  %i.t = lshr exact i64 %i.aa, 1, !dbg !10653
  %i.u = and i64 %i.t, 31, !dbg !10653            ; 2 uses
  %i.v = icmp eq i64 %i.u, 31, !dbg !10654
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i, !dbg !10654

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.071.i64.i = phi i32 [ %i.s, %bb.d ], [ %.sroa.0.0.ph76.i.i, %.lr.ph.i.i ] ; 6 uses
  %i.w = icmp ult i32 %.sroa.0.071.i64.i, 7, !dbg !10658
  br i1 %i.w, label %bb.f, label %bb.e, !dbg !10658

bb.e:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now()
          to label %.loopexit.i.i unwind label %.loopexit56.i.i, !dbg !10659, !noalias !10632

bb.f:                                             ; preds = %.lr.ph.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.071.i64.i, 0, !dbg !10660
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader, !dbg !10664

.lr.ph.i.i.i.preheader:                           ; preds = %bb.f
  %i.x = mul nuw i32 %.sroa.0.071.i64.i, %.sroa.0.071.i64.i, !dbg !10665 ; 2 uses
  %xtraiter = and i32 %i.x, 7, !dbg !10664        ; 3 uses
  %i.y = icmp ult i32 %.sroa.0.071.i64.i, 3, !dbg !10664
  br i1 %i.y, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new, !dbg !10664

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.x, 56, !dbg !10664
  br label %.lr.ph.i.i.i, !dbg !10664

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10667, !noalias !10632
  tail call void @llvm.x86.sse2.pause(), !dbg !10667, !noalias !10632
  tail call void @llvm.x86.sse2.pause(), !dbg !10667, !noalias !10632
  tail call void @llvm.x86.sse2.pause(), !dbg !10667, !noalias !10632
  tail call void @llvm.x86.sse2.pause(), !dbg !10667, !noalias !10632
  tail call void @llvm.x86.sse2.pause(), !dbg !10667, !noalias !10632
  tail call void @llvm.x86.sse2.pause(), !dbg !10667, !noalias !10632
  tail call void @llvm.x86.sse2.pause(), !dbg !10667, !noalias !10632
  %niter.next.7 = add i32 %niter, 8, !dbg !10664  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !10664
  br i1 %niter.ncmp.7, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !dbg !10664

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.03.073.i.lcssa.i = phi i64 [ %.sroa.03.0.ph78.i.i, %.lr.ph.i.i ], [ %i.aa, %bb.d ] ; 2 uses
  %.sroa.07.072.i.lcssa.i = phi ptr [ %.sroa.07.0.ph77.i.i, %.lr.ph.i.i ], [ %i.ab, %bb.d ] ; 2 uses
  %.sroa.0.071.i.lcssa.i = phi i32 [ %.sroa.0.0.ph76.i.i, %.lr.ph.i.i ], [ %i.s, %bb.d ] ; 6 uses
  %.lcssa.i = phi i64 [ %i.q, %.lr.ph.i.i ], [ %i.u, %bb.d ], !dbg !10653 ; 2 uses
  %i.z = icmp eq i64 %.lcssa.i, 30, !dbg !10670   ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.035.0.ph75.i.i, null
  %or.cond.i.i = select i1 %i.z, i1 %.not.i.i, i1 false, !dbg !10670
  br i1 %or.cond.i.i, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEEEEB2r_.exit.i.i, !dbg !10670

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !10664
  br i1 %lcmp.mod.not, label %.loopexit.i.i, label %.lr.ph.i.i.i.epil.preheader, !dbg !10664

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod99 = icmp ne i32 %xtraiter, 0, !dbg !10664
  tail call void @llvm.assume(i1 %lcmp.mod99), !dbg !10664
  br label %.lr.ph.i.i.i.epil, !dbg !10664

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10667, !noalias !10632
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !10664 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !10664
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.i.epil, !dbg !10664, !llvm.loop !10671

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.f, %bb.e
  %i.aa = load atomic i64, ptr %i.i acquire, align 8, !dbg !10672, !noalias !10632 ; 3 uses
  %i.ab = load atomic ptr, ptr %i.k acquire, align 8, !dbg !10675, !noalias !10632
  %i.ac = and i64 %i.aa, 1, !dbg !10645
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !10645
  br i1 %i.ad, label %bb.d, label %.outer._crit_edge.i.i, !dbg !10645

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEEEEB2r_.exit.i.i: ; preds = %bb.g, %._crit_edge.i
  %.sroa.035.2.i.i = phi ptr [ %.sroa.035.0.ph75.i.i, %._crit_edge.i ], [ %i.af, %bb.g ], !dbg !10678 ; 9 uses
  %i.ae = icmp eq ptr %.sroa.07.072.i.lcssa.i, null, !dbg !10679
  br i1 %i.ae, label %bb.h, label %bb.m, !dbg !10679

bb.g:                                             ; preds = %._crit_edge.i
  %i.af = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEE13new_zeroed_inB1w_()
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEEEEB2r_.exit.i.i unwind label %.body.thread23.loopexit.i, !dbg !10680, !noalias !10685

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEEEEB2r_.exit.i.i
  %i.ag = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEE13new_zeroed_inB1w_()
          to label %bb.i unwind label %.loopexit.split-lp.i.i, !dbg !10686, !noalias !10632 ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.ah = cmpxchg ptr %i.k, ptr null, ptr %i.ag release monotonic, align 8, !dbg !10690, !noalias !10632
  %i.ai = extractvalue { ptr, i1 } %i.ah, 1, !dbg !10690
  br i1 %i.ai, label %bb.j, label %bb.k, !dbg !10696

bb.j:                                             ; preds = %bb.i
  store atomic ptr %i.ag, ptr %i.o release, align 8, !dbg !10697, !noalias !10632
  br label %bb.m, !dbg !10702

bb.k:                                             ; preds = %bb.i
  %i.aj = icmp eq ptr %.sroa.035.2.i.i, null, !dbg !10703
  br i1 %i.aj, label %.outer.backedge.i.i, label %bb.l, !dbg !10703

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.2.i.i, i64 noundef 1248, i64 noundef 8) #23, !dbg !10706, !noalias !10632
  br label %.outer.backedge.i.i, !dbg !10703

bb.m:                                             ; preds = %bb.j, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEEEEB2r_.exit.i.i
  %.sroa.07.1.i.i = phi ptr [ %.sroa.07.072.i.lcssa.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEEEEB2r_.exit.i.i ], [ %i.ag, %bb.j ], !dbg !10713 ; 3 uses
  %i.ak = add i64 %.sroa.03.073.i.lcssa.i, 2, !dbg !10714
  %i.al = cmpxchg weak ptr %i.i, i64 %.sroa.03.073.i.lcssa.i, i64 %i.ak seq_cst acquire, align 8, !dbg !10715, !noalias !10632
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.al, 1, !dbg !10721
  br i1 %.sroa.18.0.in.i.i.i, label %bb.o, label %bb.n, !dbg !10722

bb.n:                                             ; preds = %bb.m
  %.not.i24.i.i = icmp eq i32 %.sroa.0.071.i.lcssa.i, 0, !dbg !10723
  br i1 %.not.i24.i.i, label %.outer.backedge.i.i, label %.lr.ph.i25.i.i.preheader, !dbg !10735

.lr.ph.i25.i.i.preheader:                         ; preds = %bb.n
  %.sroa.0.0.i.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.071.i.lcssa.i, i32 6), !dbg !10736 ; 2 uses
  %3 = mul nuw nsw i32 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i, !dbg !10739 ; 2 uses
  %xtraiter100 = and i32 %3, 5, !dbg !10735       ; 3 uses
  %i.am = icmp ult i32 %.sroa.0.071.i.lcssa.i, 3, !dbg !10735
  br i1 %i.am, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new, !dbg !10735

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter104 = and i32 %3, 56, !dbg !10735
  br label %.lr.ph.i25.i.i, !dbg !10735

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i25.i.i
  %lcmp.mod102.not = icmp eq i32 %xtraiter100, 0, !dbg !10735
  br i1 %lcmp.mod102.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i25.i.i.epil.preheader, !dbg !10735

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %lcmp.mod103 = icmp ne i32 %xtraiter100, 0, !dbg !10735
  tail call void @llvm.assume(i1 %lcmp.mod103), !dbg !10735
  br label %.lr.ph.i25.i.i.epil, !dbg !10735

.lr.ph.i25.i.i.epil:                              ; preds = %.lr.ph.i25.i.i.epil, %.lr.ph.i25.i.i.epil.preheader
  %epil.iter101 = phi i32 [ 0, %.lr.ph.i25.i.i.epil.preheader ], [ %epil.iter101.next, %.lr.ph.i25.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10741, !noalias !10632
  %epil.iter101.next = add i32 %epil.iter101, 1, !dbg !10735 ; 2 uses
  %epil.iter101.cmp.not = icmp eq i32 %epil.iter101.next, %xtraiter100, !dbg !10735
  br i1 %epil.iter101.cmp.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i25.i.i.epil, !dbg !10735, !llvm.loop !10746

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i25.i.i.epil, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %i.an = add i32 %.sroa.0.071.i.lcssa.i, 1, !dbg !10747
  br label %.outer.backedge.i.i, !dbg !10748

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %niter105 = phi i32 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter105.next.7, %.lr.ph.i25.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10741, !noalias !10632
  tail call void @llvm.x86.sse2.pause(), !dbg !10741, !noalias !10632
  tail call void @llvm.x86.sse2.pause(), !dbg !10741, !noalias !10632
  tail call void @llvm.x86.sse2.pause(), !dbg !10741, !noalias !10632
  tail call void @llvm.x86.sse2.pause(), !dbg !10741, !noalias !10632
  tail call void @llvm.x86.sse2.pause(), !dbg !10741, !noalias !10632
  tail call void @llvm.x86.sse2.pause(), !dbg !10741, !noalias !10632
  tail call void @llvm.x86.sse2.pause(), !dbg !10741, !noalias !10632
  %niter105.next.7 = add i32 %niter105, 8, !dbg !10735 ; 2 uses
  %niter105.ncmp.7 = icmp eq i32 %niter105.next.7, %unroll_iter104, !dbg !10735
  br i1 %niter105.ncmp.7, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i25.i.i, !dbg !10735

bb.o:                                             ; preds = %bb.m
  br i1 %i.z, label %bb.p, label %.outer._crit_edge.i.i, !dbg !10751

bb.p:                                             ; preds = %bb.o
  %.not16.i.i = icmp eq ptr %.sroa.035.2.i.i, null, !dbg !10752
  br i1 %.not16.i.i, label %bb.q, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.thread31.i, !dbg !10755, !prof !266

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #32
          to label %.noexc5.i unwind label %.body.thread23.loopexit.split-lp.i, !dbg !10756, !noalias !10685

.noexc5.i:                                        ; preds = %bb.q
  unreachable

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.thread31.i: ; preds = %bb.p
  store atomic ptr %.sroa.035.2.i.i, ptr %i.k release, align 8, !dbg !10757, !noalias !10632
  %i.ao = atomicrmw add ptr %i.i, i64 2 release, align 8, !dbg !10761, !noalias !10632 ; 0 uses
  store atomic ptr %.sroa.035.2.i.i, ptr %.sroa.07.1.i.i release, align 8, !dbg !10766, !noalias !10632
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i), !dbg !10648
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i), !dbg !10649
  %.sroa.011.0.copyload34.i = load i64, ptr %i.c, align 8, !dbg !10649, !alias.scope !10615, !noalias !10611
  %.sroa.5.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !10649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx35.i, i64 24, i1 false), !dbg !10649, !noalias !10611
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_.exit.thread.i, !dbg !10650

.outer.backedge.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i, %bb.n, %bb.l, %bb.k
  %.sroa.035.0.ph.be.i.i = phi ptr [ %i.ag, %bb.l ], [ %i.ag, %bb.k ], [ %.sroa.035.2.i.i, %bb.n ], [ %.sroa.035.2.i.i, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i.i = phi i32 [ %.sroa.0.071.i.lcssa.i, %bb.l ], [ %.sroa.0.071.i.lcssa.i, %bb.k ], [ 1, %bb.n ], [ %i.an, %._crit_edge.loopexit.i.i.i ]
  %i.ap = load atomic i64, ptr %i.i acquire, align 8, !dbg !10769, !noalias !10632 ; 2 uses
  %i.aq = load atomic ptr, ptr %i.k acquire, align 8, !dbg !10772, !noalias !10632
  %i.ar = and i64 %i.ap, 1, !dbg !10645
  %i.as = icmp eq i64 %i.ar, 0, !dbg !10645
  br i1 %i.as, label %.lr.ph.i.i, label %.outer._crit_edge.i.i, !dbg !10645

.loopexit56.i.i:                                  ; preds = %bb.e
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp.i.i:                           ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit56.i.i
  %.sroa.035.1.ph.i.i = phi ptr [ %.sroa.035.0.ph75.i.i, %.loopexit56.i.i ], [ %.sroa.035.2.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit56.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.at = icmp eq ptr %.sroa.035.1.ph.i.i, null, !dbg !10774
  br i1 %i.at, label %.body.thread.i, label %.thread47.i.i, !dbg !10774

.thread47.i.i:                                    ; preds = %bb.r
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.1.ph.i.i, i64 noundef 1248, i64 noundef 8) #23, !dbg !10776, !noalias !10632
  br label %.body.thread.i, !dbg !10774

.outer._crit_edge.i.i:                            ; preds = %.outer.backedge.i.i, %.loopexit.i.i, %bb.o
  %.sroa.9.0.i = phi i64 [ %.lcssa.i, %bb.o ], [ 0, %.loopexit.i.i ], [ 0, %.outer.backedge.i.i ], !dbg !10783
  %.sroa.47.0.i = phi ptr [ %.sroa.07.1.i.i, %bb.o ], [ null, %.loopexit.i.i ], [ null, %.outer.backedge.i.i ], !dbg !10784 ; 2 uses
  %.sroa.035.3.i.i = phi ptr [ %.sroa.035.2.i.i, %bb.o ], [ %.sroa.035.0.ph75.i.i, %.loopexit.i.i ], [ %.sroa.035.0.ph.be.i.i, %.outer.backedge.i.i ], !dbg !10678 ; 2 uses
  %i.au = icmp eq ptr %.sroa.035.3.i.i, null, !dbg !10785
  br i1 %i.au, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.i, label %bb.s, !dbg !10785

bb.s:                                             ; preds = %.outer._crit_edge.i.i
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i.i, i64 noundef 1248, i64 noundef 8) #23, !dbg !10787, !noalias !10632
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.i, !dbg !10785

.body.thread23.loopexit.i:                        ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread23.loopexit.split-lp.i:               ; preds = %bb.q
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.i: ; preds = %bb.s, %.outer._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i), !dbg !10648
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i), !dbg !10649
  %.sroa.011.0.copyload.i = load i64, ptr %i.c, align 8, !dbg !10649, !alias.scope !10615, !noalias !10611 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !10649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i, i64 24, i1 false), !dbg !10649, !noalias !10611
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10794), !dbg !10797
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10798), !dbg !10797
  %i.av = icmp eq ptr %.sroa.47.0.i, null, !dbg !10650
  br i1 %i.av, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_.exit.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_.exit.thread.i, !dbg !10650

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_.exit.thread.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.thread31.i
  %.sroa.011.0.copyload38.i = phi i64 [ %.sroa.011.0.copyload34.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.thread31.i ], [ %.sroa.011.0.copyload.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.i ]
  %.sroa.47.137.i = phi ptr [ %.sroa.07.1.i.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.thread31.i ], [ %.sroa.47.0.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.i ]
  %.sroa.9.136.i = phi i64 [ 30, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.thread31.i ], [ %.sroa.9.0.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.47.137.i, i64 8, !dbg !10800
  %i.ax = icmp samesign ult i64 %.sroa.9.136.i, 31, !dbg !10803
  tail call void @llvm.assume(i1 %i.ax), !dbg !10808
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %.sroa.9.136.i, !dbg !10809 ; 3 uses
  store i64 %.sroa.011.0.copyload38.i, ptr %i.ay, align 8, !dbg !10810, !noalias !10816
  %.sroa.5.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8, !dbg !10810
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx13.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !dbg !10810, !noalias !10816
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32, !dbg !10817
  %i.ba = atomicrmw or ptr %i.az, i64 1 release, align 8, !dbg !10824, !noalias !10827 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 256, !dbg !10828
  tail call fastcc void @_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bb) #35, !dbg !10829, !noalias !10685
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i), !dbg !10830
  br label %bb.u, !dbg !10831

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.thread.i
  %.sroa.011.0.copyload30.i = phi i64 [ %.sroa.011.0.copyload28.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.thread.i ], [ %.sroa.011.0.copyload.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !dbg !10834, !alias.scope !10835, !noalias !10685
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i), !dbg !10830
  %.not.i = icmp eq i64 %.sroa.011.0.copyload30.i, -9223372036854775806, !dbg !10836
  br i1 %.not.i, label %bb.u, label %bb.t, !dbg !10831

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_.exit.i
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !10837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !dbg !10839, !noalias !10615
  store i64 1, ptr %i.e, align 8, !dbg !10837, !alias.scope !10611, !noalias !10615
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !10837
  store i64 %.sroa.011.0.copyload30.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !10837, !alias.scope !10611, !noalias !10615
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4sendB10_.exit, !dbg !10840

bb.u:                                             ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_.exit.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_.exit.thread.i
  store i64 2, ptr %i.e, align 8, !dbg !10841, !alias.scope !10611, !noalias !10615
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4sendB10_.exit, !dbg !10843

common.resume:                                    ; preds = %bb.ab, %.body.thread.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body21.i, %.body.thread.i ], [ %i.bg, %bb.ab ]
  resume { ptr, i32 } %common.resume.op, !dbg !10603

.body.thread.i:                                   ; preds = %.body.thread23.loopexit.split-lp.i, %.body.thread23.loopexit.i, %.thread47.i.i, %bb.r
  %eh.lpad-body21.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.r ], [ %lpad.phi.i.i, %.thread47.i.i ], [ %lpad.loopexit.i, %.body.thread23.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.body.thread23.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEBK_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c) #34
          to label %common.resume unwind label %bb.v, !dbg !10844, !noalias !10611

bb.v:                                             ; preds = %.body.thread.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !10845, !noalias !10611
  unreachable, !dbg !10845

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4sendB10_.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i), !dbg !10846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10847
  br label %bb.x, !dbg !10848

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !10849
  call void @_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4sendB10_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noundef nonnull align 8 %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 undef, i32 noundef 1000000000), !dbg !10851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10852
  br label %bb.x, !dbg !10853

bb.x:                                             ; preds = %bb.w, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4sendB10_.exit, %bb.b
  %i.bd = load i64, ptr %i.e, align 8, !dbg !10854, !range !263, !noundef !15
  %.not = icmp eq i64 %i.bd, 2, !dbg !10854
  br i1 %.not, label %bb.ad, label %bb.y, !dbg !10857

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !dbg !10860
  call void @llvm.experimental.noalias.scope.decl(metadata !10861), !dbg !10858
  %i.be = load i64, ptr %i.a, align 8, !dbg !10864, !range !156, !alias.scope !10861, !noalias !10869, !noundef !15
  %i.bf = trunc nuw i64 %i.be to i1, !dbg !10871
  br i1 %i.bf, label %_RNCNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB7_6SenderNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4send0BU_.exit, label %bb.z, !dbg !10871, !prof !134

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #32
          to label %bb.aa unwind label %bb.ab, !dbg !10872, !noalias !10873

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10874
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEBK_(ptr noalias noundef align 8 dereferenceable(32) %i.bh)
          to label %common.resume unwind label %bb.ac, !dbg !10874, !noalias !10869

bb.ac:                                            ; preds = %bb.ab
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !10877, !noalias !10869
  unreachable, !dbg !10877

_RNCNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB7_6SenderNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4send0BU_.exit: ; preds = %bb.y
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !10878
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 32, i1 false), !dbg !10878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10879
  br label %bb.ae, !dbg !10880

bb.ad:                                            ; preds = %bb.x
  store i64 -9223372036854775806, ptr %0, align 8, !dbg !10881
  br label %bb.ae, !dbg !10883

bb.ae:                                            ; preds = %_RNCNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB7_6SenderNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4send0BU_.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !10884
  ret void, !dbg !10885
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB5_6SenderuE4sendCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10886 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !10887, !range !263, !noundef !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10887
  %i.c = load ptr, ptr %i.b, align 8, !dbg !10888, !noundef !15 ; 6 uses
  switch i64 %i.a, label %default.unreachable49 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.t
  ], !dbg !10889

default.unreachable49:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i8 @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE4sendCskAlUH1kY1DR_10polars_ooc(ptr noundef nonnull align 128 %i.c, i64 undef, i32 noundef 1000000000), !dbg !10890
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4sendCskAlUH1kY1DR_10polars_ooc.exit, !dbg !10892

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 128, !dbg !10893 ; 5 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8, !dbg !10907, !noalias !10909 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 136, !dbg !10912 ; 5 uses
  %i.h = load atomic ptr, ptr %i.g acquire, align 8, !dbg !10920, !noalias !10909
  %i.i = and i64 %i.f, 1, !dbg !10922
  %i.j = icmp eq i64 %i.i, 0, !dbg !10922
  br i1 %i.j, label %.lr.ph.lr.ph.i.i, label %_RNCNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB7_6SenderuE4send0CskAlUH1kY1DR_10polars_ooc.exit, !dbg !10922

.lr.ph.lr.ph.i.i:                                 ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %.lr.ph.i.i, !dbg !10922

.lr.ph.i.i:                                       ; preds = %.outer.backedge.i.i, %.lr.ph.lr.ph.i.i
  %.sroa.03.0.ph78.i.i = phi i64 [ %i.f, %.lr.ph.lr.ph.i.i ], [ %i.al, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.07.0.ph77.i.i = phi ptr [ %i.h, %.lr.ph.lr.ph.i.i ], [ %i.am, %.outer.backedge.i.i ]
  %.sroa.0.0.ph76.i.i = phi i32 [ 0, %.lr.ph.lr.ph.i.i ], [ %.sroa.0.0.ph.be.i.i, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.035.0.ph75.i.i = phi ptr [ null, %.lr.ph.lr.ph.i.i ], [ %.sroa.035.0.ph.be.i.i, %.outer.backedge.i.i ] ; 4 uses
  %i.l = lshr exact i64 %.sroa.03.0.ph78.i.i, 1, !dbg !10925
  %i.m = and i64 %i.l, 31, !dbg !10925            ; 2 uses
  %i.n = icmp eq i64 %i.m, 31, !dbg !10926
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i, !dbg !10926

bb.d:                                             ; preds = %.loopexit.i.i
  %i.o = add i32 %.sroa.0.071.i35.i, 1, !dbg !10928 ; 2 uses
  %i.p = lshr exact i64 %i.w, 1, !dbg !10925
  %i.q = and i64 %i.p, 31, !dbg !10925            ; 2 uses
  %i.r = icmp eq i64 %i.q, 31, !dbg !10926
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i, !dbg !10926

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.071.i35.i = phi i32 [ %i.o, %bb.d ], [ %.sroa.0.0.ph76.i.i, %.lr.ph.i.i ] ; 6 uses
  %i.s = icmp ult i32 %.sroa.0.071.i35.i, 7, !dbg !10930
  br i1 %i.s, label %bb.f, label %bb.e, !dbg !10930

bb.e:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now()
          to label %.loopexit.i.i unwind label %.loopexit56.i.i, !dbg !10931, !noalias !10909

bb.f:                                             ; preds = %.lr.ph.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.071.i35.i, 0, !dbg !10932
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader, !dbg !10936

.lr.ph.i.i.i.preheader:                           ; preds = %bb.f
  %i.t = mul nuw i32 %.sroa.0.071.i35.i, %.sroa.0.071.i35.i, !dbg !10937 ; 2 uses
  %xtraiter = and i32 %i.t, 7, !dbg !10936        ; 3 uses
  %i.u = icmp ult i32 %.sroa.0.071.i35.i, 3, !dbg !10936
  br i1 %i.u, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new, !dbg !10936

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.t, 56, !dbg !10936
  br label %.lr.ph.i.i.i, !dbg !10936

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10939, !noalias !10909
  tail call void @llvm.x86.sse2.pause(), !dbg !10939, !noalias !10909
  tail call void @llvm.x86.sse2.pause(), !dbg !10939, !noalias !10909
  tail call void @llvm.x86.sse2.pause(), !dbg !10939, !noalias !10909
  tail call void @llvm.x86.sse2.pause(), !dbg !10939, !noalias !10909
  tail call void @llvm.x86.sse2.pause(), !dbg !10939, !noalias !10909
  tail call void @llvm.x86.sse2.pause(), !dbg !10939, !noalias !10909
  tail call void @llvm.x86.sse2.pause(), !dbg !10939, !noalias !10909
  %niter.next.7 = add i32 %niter, 8, !dbg !10936  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !10936
  br i1 %niter.ncmp.7, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !dbg !10936

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.03.073.i.lcssa.i = phi i64 [ %.sroa.03.0.ph78.i.i, %.lr.ph.i.i ], [ %i.w, %bb.d ] ; 2 uses
  %.sroa.07.072.i.lcssa.i = phi ptr [ %.sroa.07.0.ph77.i.i, %.lr.ph.i.i ], [ %i.x, %bb.d ] ; 2 uses
  %.sroa.0.071.i.lcssa.i = phi i32 [ %.sroa.0.0.ph76.i.i, %.lr.ph.i.i ], [ %i.o, %bb.d ] ; 6 uses
  %.lcssa.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %i.q, %bb.d ], !dbg !10925 ; 2 uses
  %i.v = icmp eq i64 %.lcssa.i, 30, !dbg !10942   ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.035.0.ph75.i.i, null
  %or.cond.i.i = select i1 %i.v, i1 %.not.i.i, i1 false, !dbg !10942
  br i1 %or.cond.i.i, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEEEECskAlUH1kY1DR_10polars_ooc.exit.i.i, !dbg !10942

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !10936
  br i1 %lcmp.mod.not, label %.loopexit.i.i, label %.lr.ph.i.i.i.epil.preheader, !dbg !10936

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod98 = icmp ne i32 %xtraiter, 0, !dbg !10936
  tail call void @llvm.assume(i1 %lcmp.mod98), !dbg !10936
  br label %.lr.ph.i.i.i.epil, !dbg !10936

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10939, !noalias !10909
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !10936 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !10936
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.i.epil, !dbg !10936, !llvm.loop !10943

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.f, %bb.e
  %i.w = load atomic i64, ptr %i.e acquire, align 8, !dbg !10944, !noalias !10909 ; 3 uses
  %i.x = load atomic ptr, ptr %i.g acquire, align 8, !dbg !10947, !noalias !10909
  %i.y = and i64 %i.w, 1, !dbg !10922
  %i.z = icmp eq i64 %i.y, 0, !dbg !10922
  br i1 %i.z, label %bb.d, label %.outer._crit_edge.i.i, !dbg !10922

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEEEECskAlUH1kY1DR_10polars_ooc.exit.i.i: ; preds = %bb.g, %._crit_edge.i
  %.sroa.035.2.i.i = phi ptr [ %.sroa.035.0.ph75.i.i, %._crit_edge.i ], [ %i.ab, %bb.g ], !dbg !10950 ; 9 uses
  %i.aa = icmp eq ptr %.sroa.07.072.i.lcssa.i, null, !dbg !10951
  br i1 %i.aa, label %bb.h, label %bb.m, !dbg !10951

bb.g:                                             ; preds = %._crit_edge.i
  %i.ab = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEE13new_zeroed_inCskAlUH1kY1DR_10polars_ooc(), !dbg !10952, !noalias !10909
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEEEECskAlUH1kY1DR_10polars_ooc.exit.i.i, !dbg !10952

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEEEECskAlUH1kY1DR_10polars_ooc.exit.i.i
  %i.ac = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEE13new_zeroed_inCskAlUH1kY1DR_10polars_ooc()
          to label %bb.i unwind label %.loopexit.split-lp.i.i, !dbg !10957, !noalias !10909 ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.ad = cmpxchg ptr %i.g, ptr null, ptr %i.ac release monotonic, align 8, !dbg !10961, !noalias !10909
  %i.ae = extractvalue { ptr, i1 } %i.ad, 1, !dbg !10961
  br i1 %i.ae, label %bb.j, label %bb.k, !dbg !10967

bb.j:                                             ; preds = %bb.i
  store atomic ptr %i.ac, ptr %i.k release, align 8, !dbg !10968, !noalias !10909
  br label %bb.m, !dbg !10973

bb.k:                                             ; preds = %bb.i
  %i.af = icmp eq ptr %.sroa.035.2.i.i, null, !dbg !10974
  br i1 %i.af, label %.outer.backedge.i.i, label %bb.l, !dbg !10974

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.2.i.i, i64 noundef 256, i64 noundef 8) #23, !dbg !10977, !noalias !10909
  br label %.outer.backedge.i.i, !dbg !10974

bb.m:                                             ; preds = %bb.j, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEEEECskAlUH1kY1DR_10polars_ooc.exit.i.i
  %.sroa.07.1.i.i = phi ptr [ %.sroa.07.072.i.lcssa.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEEEECskAlUH1kY1DR_10polars_ooc.exit.i.i ], [ %i.ac, %bb.j ], !dbg !10984 ; 3 uses
  %i.ag = add i64 %.sroa.03.073.i.lcssa.i, 2, !dbg !10985
  %i.ah = cmpxchg weak ptr %i.e, i64 %.sroa.03.073.i.lcssa.i, i64 %i.ag seq_cst acquire, align 8, !dbg !10986, !noalias !10909
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ah, 1, !dbg !10991
  br i1 %.sroa.18.0.in.i.i.i, label %bb.o, label %bb.n, !dbg !10992

bb.n:                                             ; preds = %bb.m
  %.not.i24.i.i = icmp eq i32 %.sroa.0.071.i.lcssa.i, 0, !dbg !10993
  br i1 %.not.i24.i.i, label %.outer.backedge.i.i, label %.lr.ph.i25.i.i.preheader, !dbg !10998

.lr.ph.i25.i.i.preheader:                         ; preds = %bb.n
  %.sroa.0.0.i.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.071.i.lcssa.i, i32 6), !dbg !10999 ; 2 uses
  %1 = mul nuw nsw i32 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i, !dbg !11001 ; 2 uses
  %xtraiter99 = and i32 %1, 5, !dbg !10998        ; 3 uses
  %i.ai = icmp ult i32 %.sroa.0.071.i.lcssa.i, 3, !dbg !10998
  br i1 %i.ai, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new, !dbg !10998

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter103 = and i32 %1, 56, !dbg !10998
  br label %.lr.ph.i25.i.i, !dbg !10998

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i25.i.i
  %lcmp.mod101.not = icmp eq i32 %xtraiter99, 0, !dbg !10998
  br i1 %lcmp.mod101.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i25.i.i.epil.preheader, !dbg !10998

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %lcmp.mod102 = icmp ne i32 %xtraiter99, 0, !dbg !10998
  tail call void @llvm.assume(i1 %lcmp.mod102), !dbg !10998
  br label %.lr.ph.i25.i.i.epil, !dbg !10998

.lr.ph.i25.i.i.epil:                              ; preds = %.lr.ph.i25.i.i.epil, %.lr.ph.i25.i.i.epil.preheader
  %epil.iter100 = phi i32 [ 0, %.lr.ph.i25.i.i.epil.preheader ], [ %epil.iter100.next, %.lr.ph.i25.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !11003, !noalias !10909
  %epil.iter100.next = add i32 %epil.iter100, 1, !dbg !10998 ; 2 uses
  %epil.iter100.cmp.not = icmp eq i32 %epil.iter100.next, %xtraiter99, !dbg !10998
  br i1 %epil.iter100.cmp.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i25.i.i.epil, !dbg !10998, !llvm.loop !11006

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i25.i.i.epil, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %i.aj = add i32 %.sroa.0.071.i.lcssa.i, 1, !dbg !11007
  br label %.outer.backedge.i.i, !dbg !11008

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %niter104 = phi i32 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter104.next.7, %.lr.ph.i25.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !11003, !noalias !10909
  tail call void @llvm.x86.sse2.pause(), !dbg !11003, !noalias !10909
  tail call void @llvm.x86.sse2.pause(), !dbg !11003, !noalias !10909
  tail call void @llvm.x86.sse2.pause(), !dbg !11003, !noalias !10909
  tail call void @llvm.x86.sse2.pause(), !dbg !11003, !noalias !10909
  tail call void @llvm.x86.sse2.pause(), !dbg !11003, !noalias !10909
  tail call void @llvm.x86.sse2.pause(), !dbg !11003, !noalias !10909
  tail call void @llvm.x86.sse2.pause(), !dbg !11003, !noalias !10909
  %niter104.next.7 = add i32 %niter104, 8, !dbg !10998 ; 2 uses
  %niter104.ncmp.7 = icmp eq i32 %niter104.next.7, %unroll_iter103, !dbg !10998
  br i1 %niter104.ncmp.7, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i25.i.i, !dbg !10998

bb.o:                                             ; preds = %bb.m
  br i1 %i.v, label %bb.p, label %.outer._crit_edge.i.i, !dbg !11010

bb.p:                                             ; preds = %bb.o
  %.not16.i.i = icmp eq ptr %.sroa.035.2.i.i, null, !dbg !11011
  br i1 %.not16.i.i, label %bb.q, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc.exit.thread10.i, !dbg !11014, !prof !266

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #32, !dbg !11015, !noalias !10909
  unreachable

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc.exit.thread10.i: ; preds = %bb.p
  store atomic ptr %.sroa.035.2.i.i, ptr %i.g release, align 8, !dbg !11016, !noalias !10909
  %i.ak = atomicrmw add ptr %i.e, i64 2 release, align 8, !dbg !11020, !noalias !10909 ; 0 uses
  store atomic ptr %.sroa.035.2.i.i, ptr %.sroa.07.1.i.i release, align 8, !dbg !11025, !noalias !10909
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4sendCskAlUH1kY1DR_10polars_ooc.exit.thread10, !dbg !11028

.outer.backedge.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i, %bb.n, %bb.l, %bb.k
  %.sroa.035.0.ph.be.i.i = phi ptr [ %i.ac, %bb.l ], [ %i.ac, %bb.k ], [ %.sroa.035.2.i.i, %bb.n ], [ %.sroa.035.2.i.i, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i.i = phi i32 [ %.sroa.0.071.i.lcssa.i, %bb.l ], [ %.sroa.0.071.i.lcssa.i, %bb.k ], [ 1, %bb.n ], [ %i.aj, %._crit_edge.loopexit.i.i.i ]
  %i.al = load atomic i64, ptr %i.e acquire, align 8, !dbg !11031, !noalias !10909 ; 2 uses
  %i.am = load atomic ptr, ptr %i.g acquire, align 8, !dbg !11034, !noalias !10909
  %i.an = and i64 %i.al, 1, !dbg !10922
  %i.ao = icmp eq i64 %i.an, 0, !dbg !10922
  br i1 %i.ao, label %.lr.ph.i.i, label %.outer._crit_edge.i.i, !dbg !10922

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEEEECskAlUH1kY1DR_10polars_ooc.exit30.i.i: ; preds = %.thread47.i.i, %bb.r
  resume { ptr, i32 } %lpad.phi.i.i, !dbg !11036

.loopexit56.i.i:                                  ; preds = %bb.e
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp.i.i:                           ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit56.i.i
  %.sroa.035.1.ph.i.i = phi ptr [ %.sroa.035.0.ph75.i.i, %.loopexit56.i.i ], [ %.sroa.035.2.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit56.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  %i.ap = icmp eq ptr %.sroa.035.1.ph.i.i, null, !dbg !11037
  br i1 %i.ap, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEEEECskAlUH1kY1DR_10polars_ooc.exit30.i.i, label %.thread47.i.i, !dbg !11037

.thread47.i.i:                                    ; preds = %bb.r
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.1.ph.i.i, i64 noundef 256, i64 noundef 8) #23, !dbg !11039, !noalias !10909
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEEEECskAlUH1kY1DR_10polars_ooc.exit30.i.i, !dbg !11037

.outer._crit_edge.i.i:                            ; preds = %.outer.backedge.i.i, %.loopexit.i.i, %bb.o
  %.sroa.9.0.i = phi i64 [ %.lcssa.i, %bb.o ], [ 0, %.loopexit.i.i ], [ 0, %.outer.backedge.i.i ], !dbg !11046
  %.sroa.4.0.i = phi ptr [ %.sroa.07.1.i.i, %bb.o ], [ null, %.loopexit.i.i ], [ null, %.outer.backedge.i.i ], !dbg !11047 ; 2 uses
  %.sroa.035.3.i.i = phi ptr [ %.sroa.035.2.i.i, %bb.o ], [ %.sroa.035.0.ph75.i.i, %.loopexit.i.i ], [ %.sroa.035.0.ph.be.i.i, %.outer.backedge.i.i ], !dbg !10950 ; 2 uses
  %i.aq = icmp eq ptr %.sroa.035.3.i.i, null, !dbg !11048
  br i1 %i.aq, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc.exit.i, label %bb.s, !dbg !11048

bb.s:                                             ; preds = %.outer._crit_edge.i.i
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i.i, i64 noundef 256, i64 noundef 8) #23, !dbg !11050, !noalias !10909
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc.exit.i, !dbg !11048

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc.exit.i: ; preds = %bb.s, %.outer._crit_edge.i.i
  %i.ar = icmp eq ptr %.sroa.4.0.i, null, !dbg !11028
  br i1 %i.ar, label %_RNCNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB7_6SenderuE4send0CskAlUH1kY1DR_10polars_ooc.exit, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4sendCskAlUH1kY1DR_10polars_ooc.exit.thread10, !dbg !11028

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4sendCskAlUH1kY1DR_10polars_ooc.exit.thread10: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc.exit.thread10.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc.exit.i
  %.sroa.4.114.i = phi ptr [ %.sroa.07.1.i.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc.exit.thread10.i ], [ %.sroa.4.0.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc.exit.i ]
  %.sroa.9.113.i = phi i64 [ 30, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc.exit.thread10.i ], [ %.sroa.9.0.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc.exit.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.4.114.i, i64 8, !dbg !11057
  %i.at = icmp samesign ult i64 %.sroa.9.113.i, 31, !dbg !11060
  tail call void @llvm.assume(i1 %i.at), !dbg !11065
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.sroa.9.113.i, !dbg !11066
  %i.av = atomicrmw or ptr %i.au, i64 1 release, align 8, !dbg !11067 ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 256, !dbg !11073
  tail call fastcc void @_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.aw) #35, !dbg !11074
  br label %_RNCNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB7_6SenderuE4send0CskAlUH1kY1DR_10polars_ooc.exit, !dbg !11075

bb.t:                                             ; preds = %bb.a
  %i.ax = tail call noundef i8 @_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_7ChanneluE4sendCskAlUH1kY1DR_10polars_ooc(ptr noundef nonnull align 8 %i.c, i64 undef, i32 noundef 1000000000), !dbg !11078
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4sendCskAlUH1kY1DR_10polars_ooc.exit, !dbg !11080

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4sendCskAlUH1kY1DR_10polars_ooc.exit: ; preds = %bb.t, %bb.b
  %.sroa.01.0 = phi i8 [ %i.d, %bb.b ], [ %i.ax, %bb.t ], !dbg !10888
  switch i8 %.sroa.01.0, label %_RNCNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB7_6SenderuE4send0CskAlUH1kY1DR_10polars_ooc.exit.fold.split [
    i8 2, label %_RNCNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB7_6SenderuE4send0CskAlUH1kY1DR_10polars_ooc.exit
    i8 0, label %bb.u
  ], !dbg !11075, !prof !11081

bb.u:                                             ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4sendCskAlUH1kY1DR_10polars_ooc.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #32, !dbg !11082
  unreachable

_RNCNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB7_6SenderuE4send0CskAlUH1kY1DR_10polars_ooc.exit.fold.split: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4sendCskAlUH1kY1DR_10polars_ooc.exit
  br label %_RNCNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB7_6SenderuE4send0CskAlUH1kY1DR_10polars_ooc.exit, !dbg !11086

_RNCNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB7_6SenderuE4send0CskAlUH1kY1DR_10polars_ooc.exit: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4sendCskAlUH1kY1DR_10polars_ooc.exit, %_RNCNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB7_6SenderuE4send0CskAlUH1kY1DR_10polars_ooc.exit.fold.split, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc.exit.i, %bb.c, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4sendCskAlUH1kY1DR_10polars_ooc.exit.thread10
  %.not8 = phi i1 [ false, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4sendCskAlUH1kY1DR_10polars_ooc.exit ], [ false, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4sendCskAlUH1kY1DR_10polars_ooc.exit.thread10 ], [ true, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc.exit.i ], [ true, %bb.c ], [ true, %_RNCNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB7_6SenderuE4send0CskAlUH1kY1DR_10polars_ooc.exit.fold.split ]
  ret i1 %.not8, !dbg !11086
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMs5_NtCskAlUH1kY1DR_10polars_ooc13spill_contextNtB5_16WeakSpillContext7is_dead(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 !dbg !11087 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !11089, !nonnull !15, !align !1690, !noundef !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 528, !dbg !11090
  %i.c = load atomic i64, ptr %i.b monotonic, align 8, !dbg !11095
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11097
  %i.e = load i64, ptr %i.d, align 8, !dbg !11097, !noundef !15
  %i.f = icmp ne i64 %i.c, %i.e, !dbg !11089
  ret i1 %i.f, !dbg !11098
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMs5_NtCskAlUH1kY1DR_10polars_ooc13spill_contextNtB5_16WeakSpillContext7upgrade(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11099 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !11100, !nonnull !15, !align !1690, !noundef !15 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 528, !dbg !11101 ; 2 uses
  %i.d = load atomic i64, ptr %i.c monotonic, align 8, !dbg !11106 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11108
  %i.f = load i64, ptr %i.e, align 8, !dbg !11108, !noundef !15
  %.not = icmp eq i64 %i.d, %i.f, !dbg !11100
  br i1 %.not, label %bb.b, label %bb.d, !dbg !11100

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 520, !dbg !11109
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !dbg !11116 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11119
  store ptr %i.b, ptr %i.a, align 8, !dbg !11120
  %i.i = load atomic i64, ptr %i.c monotonic, align 8, !dbg !11121
  %.not3 = icmp eq i64 %i.i, %i.d, !dbg !11126
  br i1 %.not3, label %.sink.split, label %bb.c, !dbg !11126

bb.c:                                             ; preds = %bb.b
  call void @_RNvXs4_NtCskAlUH1kY1DR_10polars_ooc13spill_contextNtB5_18StrongSpillContextNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a), !dbg !11127
  br label %.sink.split, !dbg !11129

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sroa.0.0.ph = phi ptr [ null, %bb.c ], [ %i.b, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11131
  br label %bb.d, !dbg !11132

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ], !dbg !11133
  ret ptr %.sroa.0.0, !dbg !11132
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtCskAlUH1kY1DR_10polars_ooc11spill_token9LockStateE4lockB11_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 !dbg !11134 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4, !dbg !11135
  %i.b = extractvalue { i32, i1 } %i.a, 1, !dbg !11135
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !11141, !prof !134

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1), !dbg !11142
  br label %bb.c, !dbg !11142

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !11143
  %i.d = and i64 %i.c, 9223372036854775807, !dbg !11152
  %i.e = icmp eq i64 %i.d, 0, !dbg !11152
  br i1 %i.e, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !dbg !11152, !prof !134

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #31, !dbg !11153
  %i.g = xor i1 %i.f, true, !dbg !11154
  %i.h = zext i1 %i.g to i8, !dbg !11155
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit, !dbg !11153

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ], !dbg !11156
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !11157
  %i.j = load atomic i8, ptr %i.i monotonic, align 4, !dbg !11158
  %i.k = icmp ne i8 %i.j, 0, !dbg !11162
  tail call void @_RINvNtNtCsh8eZTKRCwoO_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtCskAlUH1kY1DR_10polars_ooc11spill_token9LockStateENCNvMs9_B10_BX_3new0EB1r_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.k, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1), !dbg !11163
  ret void, !dbg !11164
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtCslovz2ii29zg_17crossbeam_channel5waker5WakerE4lockCskAlUH1kY1DR_10polars_ooc(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 !dbg !4465 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4, !dbg !11165
  %i.b = extractvalue { i32, i1 } %i.a, 1, !dbg !11165
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !11169, !prof !134

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1), !dbg !11170
  br label %bb.c, !dbg !11170

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !11171
  %i.d = and i64 %i.c, 9223372036854775807, !dbg !11179
  %i.e = icmp eq i64 %i.d, 0, !dbg !11179
  br i1 %i.e, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !dbg !11179, !prof !134

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #31, !dbg !11180
  %i.g = xor i1 %i.f, true, !dbg !11181
  %i.h = zext i1 %i.g to i8, !dbg !11182
end_hunk_0
begin_hunk_1_@_RNvMsg_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB5_8ReceiverNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvBU_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !11876
  %i.j = load i64, ptr %1, align 8, !dbg !11877, !range !263, !noundef !15
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11877
  %i.l = load ptr, ptr %i.k, align 8, !dbg !11878, !noundef !15 ; 10 uses
  switch i64 %i.j, label %default.unreachable31 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.aw
  ], !dbg !11876

default.unreachable31:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvB10_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noundef nonnull align 128 %i.l, i64 undef, i32 noundef 1000000000), !dbg !11879
  br label %thread-pre-split, !dbg !11881

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11882), !dbg !11885
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.419.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 1000000000, ptr %i.m, align 8, !noalias !11882
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !11887, !noalias !11882
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !11890
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !11890
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false), !dbg !11890, !noalias !11882
  br label %bb.d, !dbg !11894

bb.d:                                             ; preds = %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEB1C_.exit.i, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !11896), !dbg !11899
  br label %.backedge.i.i, !dbg !11900

.backedge.i.i:                                    ; preds = %.backedge.i.i.backedge, %bb.d
  %.sroa.0.034.i.i = phi i32 [ 0, %bb.d ], [ %.sroa.0.034.i.i.be, %.backedge.i.i.backedge ], !dbg !11906 ; 16 uses
  %i.t = load atomic i64, ptr %i.l acquire, align 8, !dbg !11907, !noalias !11911 ; 5 uses
  %i.u = load atomic ptr, ptr %i.p acquire, align 8, !dbg !11912, !noalias !11911 ; 9 uses
  %i.v = lshr i64 %i.t, 1, !dbg !11916            ; 2 uses
  %i.w = and i64 %i.v, 31, !dbg !11916            ; 6 uses
  %i.x = icmp eq i64 %i.w, 31, !dbg !11917
  br i1 %i.x, label %bb.e, label %bb.h, !dbg !11917

bb.e:                                             ; preds = %.backedge.i.i
  %i.y = icmp ult i32 %.sroa.0.034.i.i, 7, !dbg !11919
  br i1 %i.y, label %bb.g, label %bb.f, !dbg !11919

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !11921, !noalias !11911
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, !dbg !11921

bb.g:                                             ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %.sroa.0.034.i.i, 0, !dbg !11922
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader, !dbg !11926

.lr.ph.i.i.i.preheader:                           ; preds = %bb.g
  %i.z = mul nuw i32 %.sroa.0.034.i.i, %.sroa.0.034.i.i, !dbg !11927 ; 2 uses
  %xtraiter66 = and i32 %i.z, 7, !dbg !11926      ; 3 uses
  %i.aa = icmp ult i32 %.sroa.0.034.i.i, 3, !dbg !11926
  br i1 %i.aa, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new, !dbg !11926

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter70 = and i32 %i.z, 56, !dbg !11926
  br label %.lr.ph.i.i.i, !dbg !11926

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter71 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter71.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !11929, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !11929, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !11929, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !11929, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !11929, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !11929, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !11929, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !11929, !noalias !11911
  %niter71.next.7 = add i32 %niter71, 8, !dbg !11926 ; 2 uses
  %niter71.ncmp.7 = icmp eq i32 %niter71.next.7, %unroll_iter70, !dbg !11926
  br i1 %niter71.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !dbg !11926

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod68.not = icmp eq i32 %xtraiter66, 0, !dbg !11926
  br i1 %lcmp.mod68.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader, !dbg !11926

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod69 = icmp ne i32 %xtraiter66, 0, !dbg !11926
  call void @llvm.assume(i1 %lcmp.mod69), !dbg !11926
  br label %.lr.ph.i.i.i.epil, !dbg !11926

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter67 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter67.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !11929, !noalias !11911
  %epil.iter67.next = add i32 %epil.iter67, 1, !dbg !11926 ; 2 uses
  %epil.iter67.cmp.not = icmp eq i32 %epil.iter67.next, %xtraiter66, !dbg !11926
  br i1 %epil.iter67.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !dbg !11926, !llvm.loop !11932

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.g, %bb.f
  %i.ab = add i32 %.sroa.0.034.i.i, 1, !dbg !11933
  br label %.backedge.i.i.backedge, !dbg !11934

bb.h:                                             ; preds = %.backedge.i.i
  %i.ac = add i64 %i.t, 2, !dbg !11936            ; 2 uses
  %i.ad = and i64 %i.t, 1, !dbg !11937
  %i.ae = icmp eq i64 %i.ad, 0, !dbg !11937
  br i1 %i.ae, label %bb.i, label %bb.l, !dbg !11937

bb.i:                                             ; preds = %bb.h
  fence seq_cst, !dbg !11939
  %i.af = load atomic i64, ptr %i.q monotonic, align 8, !dbg !11941, !noalias !11911 ; 3 uses
  %i.ag = lshr i64 %i.af, 1, !dbg !11944
  %i.ah = icmp eq i64 %i.v, %i.ag, !dbg !11946
  br i1 %i.ah, label %bb.k, label %bb.j, !dbg !11946

bb.j:                                             ; preds = %bb.i
  %.not.unshifted.i.i = xor i64 %i.af, %i.t, !dbg !11947
  %.not.i.i = icmp ugt i64 %.not.unshifted.i.i, 63, !dbg !11947
  %i.ai = zext i1 %.not.i.i to i64, !dbg !11947
  %spec.select.i.i = or disjoint i64 %i.ac, %i.ai, !dbg !11947
  br label %bb.l, !dbg !11947

bb.k:                                             ; preds = %bb.i
  %i.aj = and i64 %i.af, 1, !dbg !11948
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !11948
  br i1 %i.ak, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_recvB10_.exit.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit.thread.i, !dbg !11948

bb.l:                                             ; preds = %bb.j, %bb.h
  %.sroa.01.0.i.i = phi i64 [ %i.ac, %bb.h ], [ %spec.select.i.i, %bb.j ], !dbg !11949 ; 2 uses
  %i.al = icmp eq ptr %i.u, null, !dbg !11950
  br i1 %i.al, label %bb.m, label %bb.p, !dbg !11950

bb.m:                                             ; preds = %bb.l
  %i.am = icmp ult i32 %.sroa.0.034.i.i, 7, !dbg !11951
  br i1 %i.am, label %bb.o, label %bb.n, !dbg !11951

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !11953, !noalias !11911
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i, !dbg !11953

bb.o:                                             ; preds = %bb.m
  %.not.i18.i.i = icmp eq i32 %.sroa.0.034.i.i, 0, !dbg !11954
  br i1 %.not.i18.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i, label %.lr.ph.i19.i.i.preheader, !dbg !11958

.lr.ph.i19.i.i.preheader:                         ; preds = %bb.o
  %i.an = mul nuw i32 %.sroa.0.034.i.i, %.sroa.0.034.i.i, !dbg !11959 ; 2 uses
  %xtraiter60 = and i32 %i.an, 7, !dbg !11958     ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.034.i.i, 3, !dbg !11958
  br i1 %i.ao, label %.lr.ph.i19.i.i.epil.preheader, label %.lr.ph.i19.i.i.preheader.new, !dbg !11958

.lr.ph.i19.i.i.preheader.new:                     ; preds = %.lr.ph.i19.i.i.preheader
  %unroll_iter64 = and i32 %i.an, 56, !dbg !11958
  br label %.lr.ph.i19.i.i, !dbg !11958

.lr.ph.i19.i.i:                                   ; preds = %.lr.ph.i19.i.i, %.lr.ph.i19.i.i.preheader.new
  %niter65 = phi i32 [ 0, %.lr.ph.i19.i.i.preheader.new ], [ %niter65.next.7, %.lr.ph.i19.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !11961, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !11961, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !11961, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !11961, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !11961, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !11961, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !11961, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !11961, !noalias !11911
  %niter65.next.7 = add i32 %niter65, 8, !dbg !11958 ; 2 uses
  %niter65.ncmp.7 = icmp eq i32 %niter65.next.7, %unroll_iter64, !dbg !11958
  br i1 %niter65.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.loopexit.unr-lcssa, label %.lr.ph.i19.i.i, !dbg !11958

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i19.i.i
  %lcmp.mod62.not = icmp eq i32 %xtraiter60, 0, !dbg !11958
  br i1 %lcmp.mod62.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i, label %.lr.ph.i19.i.i.epil.preheader, !dbg !11958

.lr.ph.i19.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.preheader
  %lcmp.mod63 = icmp ne i32 %xtraiter60, 0, !dbg !11958
  call void @llvm.assume(i1 %lcmp.mod63), !dbg !11958
  br label %.lr.ph.i19.i.i.epil, !dbg !11958

.lr.ph.i19.i.i.epil:                              ; preds = %.lr.ph.i19.i.i.epil, %.lr.ph.i19.i.i.epil.preheader
  %epil.iter61 = phi i32 [ 0, %.lr.ph.i19.i.i.epil.preheader ], [ %epil.iter61.next, %.lr.ph.i19.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !11961, !noalias !11911
  %epil.iter61.next = add i32 %epil.iter61, 1, !dbg !11958 ; 2 uses
  %epil.iter61.cmp.not = icmp eq i32 %epil.iter61.next, %xtraiter60, !dbg !11958
  br i1 %epil.iter61.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i, label %.lr.ph.i19.i.i.epil, !dbg !11958, !llvm.loop !11964

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.epil, %bb.o, %bb.n
  %i.ap = add i32 %.sroa.0.034.i.i, 1, !dbg !11965
  br label %.backedge.i.i.backedge, !dbg !11934

bb.p:                                             ; preds = %bb.l
  %i.aq = cmpxchg weak ptr %i.l, i64 %i.t, i64 %.sroa.01.0.i.i seq_cst acquire, align 8, !dbg !11966, !noalias !11911
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.aq, 1, !dbg !11970
  br i1 %.sroa.18.0.in.i.i.i, label %bb.r, label %bb.q, !dbg !11971

bb.q:                                             ; preds = %bb.p
  %.not.i23.i.i = icmp eq i32 %.sroa.0.034.i.i, 0, !dbg !11972
  br i1 %.not.i23.i.i, label %.backedge.i.i.backedge, label %.lr.ph.i24.i.i.preheader, !dbg !11977

.lr.ph.i24.i.i.preheader:                         ; preds = %bb.q
  %.sroa.0.0.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i.i, i32 6), !dbg !11978 ; 2 uses
  %2 = mul nuw nsw i32 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i, !dbg !11980 ; 2 uses
  %xtraiter = and i32 %2, 5, !dbg !11977          ; 3 uses
  %i.ar = icmp ult i32 %.sroa.0.034.i.i, 3, !dbg !11977
  br i1 %i.ar, label %.lr.ph.i24.i.i.epil.preheader, label %.lr.ph.i24.i.i.preheader.new, !dbg !11977

.lr.ph.i24.i.i.preheader.new:                     ; preds = %.lr.ph.i24.i.i.preheader
  %unroll_iter = and i32 %2, 56, !dbg !11977
  br label %.lr.ph.i24.i.i, !dbg !11977

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i24.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !11977
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i24.i.i.epil.preheader, !dbg !11977

.lr.ph.i24.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i24.i.i.preheader
  %lcmp.mod59 = icmp ne i32 %xtraiter, 0, !dbg !11977
  call void @llvm.assume(i1 %lcmp.mod59), !dbg !11977
  br label %.lr.ph.i24.i.i.epil, !dbg !11977

.lr.ph.i24.i.i.epil:                              ; preds = %.lr.ph.i24.i.i.epil, %.lr.ph.i24.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i24.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i24.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !11982, !noalias !11911
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !11977 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !11977
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i24.i.i.epil, !dbg !11977, !llvm.loop !11985

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i24.i.i.epil, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %i.as = add i32 %.sroa.0.034.i.i, 1, !dbg !11986
  br label %.backedge.i.i.backedge, !dbg !11987

.backedge.i.i.backedge:                           ; preds = %._crit_edge.loopexit.i.i.i, %bb.q, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.034.i.i.be = phi i32 [ %i.ab, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %i.ap, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i ], [ %i.as, %._crit_edge.loopexit.i.i.i ], [ 1, %bb.q ]
  br label %.backedge.i.i, !dbg !11907

.lr.ph.i24.i.i:                                   ; preds = %.lr.ph.i24.i.i, %.lr.ph.i24.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !11982, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !11982, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !11982, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !11982, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !11982, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !11982, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !11982, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !11982, !noalias !11911
  %niter.next.7 = add i32 %niter, 8, !dbg !11977  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !11977
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i24.i.i, !dbg !11977

bb.r:                                             ; preds = %bb.p
  %i.at = icmp eq i64 %i.w, 30, !dbg !11989
  br i1 %i.at, label %bb.s, label %bb.v, !dbg !11989

bb.s:                                             ; preds = %bb.r
  %i.au = load atomic ptr, ptr %i.u acquire, align 8, !dbg !11990, !noalias !11911 ; 2 uses
  %i.av = icmp eq ptr %i.au, null, !dbg !11994
  br i1 %i.av, label %.lr.ph.i27.i.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE9wait_nextBX_.exit.i.i, !dbg !11994

.lr.ph.i27.i.i:                                   ; preds = %bb.s, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i
  %.sroa.0.02.i28.i.i = phi i32 [ %i.az, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i ], [ 0, %bb.s ] ; 6 uses
  %i.aw = icmp ult i32 %.sroa.0.02.i28.i.i, 7, !dbg !11995
  br i1 %i.aw, label %bb.u, label %bb.t, !dbg !11995

bb.t:                                             ; preds = %.lr.ph.i27.i.i
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !11997, !noalias !11911
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, !dbg !11997

bb.u:                                             ; preds = %.lr.ph.i27.i.i
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.02.i28.i.i, 0, !dbg !11998
  br i1 %.not.i.i.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader, !dbg !12002

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.u
  %i.ax = mul nuw i32 %.sroa.0.02.i28.i.i, %.sroa.0.02.i28.i.i, !dbg !12003 ; 2 uses
  %xtraiter72 = and i32 %i.ax, 7, !dbg !12002     ; 3 uses
  %i.ay = icmp ult i32 %.sroa.0.02.i28.i.i, 3, !dbg !12002
  br i1 %i.ay, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new, !dbg !12002

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter76 = and i32 %i.ax, 56, !dbg !12002
  br label %.lr.ph.i.i.i.i, !dbg !12002

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %niter77 = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter77.next.7, %.lr.ph.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !12005, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !12005, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !12005, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !12005, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !12005, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !12005, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !12005, !noalias !11911
  call void @llvm.x86.sse2.pause(), !dbg !12005, !noalias !11911
  %niter77.next.7 = add i32 %niter77, 8, !dbg !12002 ; 2 uses
  %niter77.ncmp.7 = icmp eq i32 %niter77.next.7, %unroll_iter76, !dbg !12002
  br i1 %niter77.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !dbg !12002

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod74.not = icmp eq i32 %xtraiter72, 0, !dbg !12002
  br i1 %lcmp.mod74.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader, !dbg !12002

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %lcmp.mod75 = icmp ne i32 %xtraiter72, 0, !dbg !12002
  call void @llvm.assume(i1 %lcmp.mod75), !dbg !12002
  br label %.lr.ph.i.i.i.i.epil, !dbg !12002

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %epil.iter73 = phi i32 [ 0, %.lr.ph.i.i.i.i.epil.preheader ], [ %epil.iter73.next, %.lr.ph.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !12005, !noalias !11911
  %epil.iter73.next = add i32 %epil.iter73, 1, !dbg !12002 ; 2 uses
  %epil.iter73.cmp.not = icmp eq i32 %epil.iter73.next, %xtraiter72, !dbg !12002
  br i1 %epil.iter73.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.epil, !dbg !12002, !llvm.loop !12008

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.u, %bb.t
  %i.az = add i32 %.sroa.0.02.i28.i.i, 1, !dbg !12009
  %i.ba = load atomic ptr, ptr %i.u acquire, align 8, !dbg !11990, !noalias !11911 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null, !dbg !11994
  br i1 %i.bb, label %.lr.ph.i27.i.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE9wait_nextBX_.exit.i.i, !dbg !11994

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE9wait_nextBX_.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, %bb.s
  %.lcssa.i.i.i = phi ptr [ %i.au, %bb.s ], [ %i.ba, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i ], !dbg !11990 ; 2 uses
  %i.bc = and i64 %.sroa.01.0.i.i, -2, !dbg !12010
  %i.bd = add i64 %i.bc, 2, !dbg !12012
  %i.be = load atomic ptr, ptr %.lcssa.i.i.i monotonic, align 8, !dbg !12015, !noalias !11911
  %i.bf = icmp ne ptr %i.be, null, !dbg !12019
  %i.bg = zext i1 %i.bf to i64, !dbg !12019
  %spec.select17.i.i = or disjoint i64 %i.bd, %i.bg, !dbg !12019
  store atomic ptr %.lcssa.i.i.i, ptr %i.p release, align 8, !dbg !12020, !noalias !11911
  store atomic i64 %spec.select17.i.i, ptr %i.l release, align 8, !dbg !12024, !noalias !11911
  br label %bb.v, !dbg !12028

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_recvB10_.exit.i: ; preds = %bb.k
  %i.bh = load i32, ptr %i.m, align 8, !dbg !12029, !range !3628, !noalias !11882, !noundef !15 ; 2 uses
  %.not.i = icmp eq i32 %i.bh, 1000000000, !dbg !12029
  br i1 %.not.i, label %bb.ag, label %bb.af, !dbg !12031

bb.v:                                             ; preds = %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE9wait_nextBX_.exit.i.i, %bb.r
  store ptr %i.u, ptr %i.n, align 8, !dbg !12032, !alias.scope !11896, !noalias !11882
  store i64 %i.w, ptr %i.o, align 8, !dbg !12033, !alias.scope !11896, !noalias !11882
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !12034
  %i.bj = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %i.w, !dbg !12039 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 3 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8, !dbg !12044, !noalias !12049
  %i.bm = and i64 %i.bl, 1, !dbg !12052
  %i.bn = icmp eq i64 %i.bm, 0, !dbg !12052
  br i1 %i.bn, label %.lr.ph.i.i3.i, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10wait_writeBU_.exit.i.i, !dbg !12052

.lr.ph.i.i3.i:                                    ; preds = %bb.v, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i
  %.sroa.0.02.i.i4.i = phi i32 [ %i.br, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i ], [ 0, %bb.v ] ; 6 uses
  %i.bo = icmp ult i32 %.sroa.0.02.i.i4.i, 7, !dbg !12053
  br i1 %i.bo, label %bb.x, label %bb.w, !dbg !12053

bb.w:                                             ; preds = %.lr.ph.i.i3.i
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !12055, !noalias !12049
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i, !dbg !12055

bb.x:                                             ; preds = %.lr.ph.i.i3.i
  %.not.i.i.i6.i = icmp eq i32 %.sroa.0.02.i.i4.i, 0, !dbg !12056
  br i1 %.not.i.i.i6.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i, label %.lr.ph.i.i.i7.i.preheader, !dbg !12060

.lr.ph.i.i.i7.i.preheader:                        ; preds = %bb.x
  %i.bp = mul nuw i32 %.sroa.0.02.i.i4.i, %.sroa.0.02.i.i4.i, !dbg !12061 ; 2 uses
  %xtraiter78 = and i32 %i.bp, 7, !dbg !12060     ; 3 uses
  %i.bq = icmp ult i32 %.sroa.0.02.i.i4.i, 3, !dbg !12060
  br i1 %i.bq, label %.lr.ph.i.i.i7.i.epil.preheader, label %.lr.ph.i.i.i7.i.preheader.new, !dbg !12060

.lr.ph.i.i.i7.i.preheader.new:                    ; preds = %.lr.ph.i.i.i7.i.preheader
  %unroll_iter82 = and i32 %i.bp, 56, !dbg !12060
  br label %.lr.ph.i.i.i7.i, !dbg !12060

.lr.ph.i.i.i7.i:                                  ; preds = %.lr.ph.i.i.i7.i, %.lr.ph.i.i.i7.i.preheader.new
  %niter83 = phi i32 [ 0, %.lr.ph.i.i.i7.i.preheader.new ], [ %niter83.next.7, %.lr.ph.i.i.i7.i ]
  call void @llvm.x86.sse2.pause(), !dbg !12063, !noalias !12049
  call void @llvm.x86.sse2.pause(), !dbg !12063, !noalias !12049
  call void @llvm.x86.sse2.pause(), !dbg !12063, !noalias !12049
  call void @llvm.x86.sse2.pause(), !dbg !12063, !noalias !12049
  call void @llvm.x86.sse2.pause(), !dbg !12063, !noalias !12049
  call void @llvm.x86.sse2.pause(), !dbg !12063, !noalias !12049
  call void @llvm.x86.sse2.pause(), !dbg !12063, !noalias !12049
  call void @llvm.x86.sse2.pause(), !dbg !12063, !noalias !12049
  %niter83.next.7 = add i32 %niter83, 8, !dbg !12060 ; 2 uses
  %niter83.ncmp.7 = icmp eq i32 %niter83.next.7, %unroll_iter82, !dbg !12060
  br i1 %niter83.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i7.i, !dbg !12060

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7.i
  %lcmp.mod80.not = icmp eq i32 %xtraiter78, 0, !dbg !12060
  br i1 %lcmp.mod80.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i, label %.lr.ph.i.i.i7.i.epil.preheader, !dbg !12060

.lr.ph.i.i.i7.i.epil.preheader:                   ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.preheader
  %lcmp.mod81 = icmp ne i32 %xtraiter78, 0, !dbg !12060
  call void @llvm.assume(i1 %lcmp.mod81), !dbg !12060
  br label %.lr.ph.i.i.i7.i.epil, !dbg !12060

.lr.ph.i.i.i7.i.epil:                             ; preds = %.lr.ph.i.i.i7.i.epil, %.lr.ph.i.i.i7.i.epil.preheader
  %epil.iter79 = phi i32 [ 0, %.lr.ph.i.i.i7.i.epil.preheader ], [ %epil.iter79.next, %.lr.ph.i.i.i7.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !12063, !noalias !12049
  %epil.iter79.next = add i32 %epil.iter79, 1, !dbg !12060 ; 2 uses
  %epil.iter79.cmp.not = icmp eq i32 %epil.iter79.next, %xtraiter78, !dbg !12060
  br i1 %epil.iter79.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i, label %.lr.ph.i.i.i7.i.epil, !dbg !12060, !llvm.loop !12066

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.epil, %bb.x, %bb.w
  %i.br = add i32 %.sroa.0.02.i.i4.i, 1, !dbg !12067
  %i.bs = load atomic i64, ptr %i.bk acquire, align 8, !dbg !12044, !noalias !12049
  %i.bt = and i64 %i.bs, 1, !dbg !12052
  %i.bu = icmp eq i64 %i.bt, 0, !dbg !12052
  br i1 %i.bu, label %.lr.ph.i.i3.i, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10wait_writeBU_.exit.i.i, !dbg !12052

_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10wait_writeBU_.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i, %bb.v
  %.sroa.018.0.copyload.i = load i64, ptr %i.bj, align 8, !dbg !12068, !noalias !12049 ; 2 uses
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8, !dbg !12068
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.419.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.419.0..sroa_idx.i, i64 24, i1 false), !dbg !12068, !noalias !11882
  %i.bv = add nuw nsw i64 %i.w, 1, !dbg !12073    ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 31, !dbg !12073
  br i1 %i.bw, label %.lr.ph.i2.i.i, label %bb.ab, !dbg !12073

.lr.ph.i2.i.i:                                    ; preds = %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10wait_writeBU_.exit.i.i, %bb.aa
  %.sroa.0.04.i.i.i = phi i64 [ %i.cf, %bb.aa ], [ 0, %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10wait_writeBU_.exit.i.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %.sroa.0.04.i.i.i, !dbg !12075
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40, !dbg !12084 ; 2 uses
  %i.bz = load atomic i64, ptr %i.by acquire, align 8, !dbg !12092, !noalias !12049
  %i.ca = and i64 %i.bz, 2, !dbg !12094
  %i.cb = icmp eq i64 %i.ca, 0, !dbg !12094
  br i1 %i.cb, label %bb.y, label %.lr.ph.i2.i.i.1, !dbg !12094

bb.y:                                             ; preds = %.lr.ph.i2.i.i
  %i.cc = atomicrmw or ptr %i.by, i64 4 acq_rel, align 8, !dbg !12095, !noalias !12049
  %i.cd = and i64 %i.cc, 2, !dbg !12100
  %i.ce = icmp eq i64 %i.cd, 0, !dbg !12100
  br i1 %i.ce, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit.i, label %.lr.ph.i2.i.i.1, !dbg !12100

.lr.ph.i2.i.i.1:                                  ; preds = %bb.y, %.lr.ph.i2.i.i
  %i.cf = add nuw nsw i64 %.sroa.0.04.i.i.i, 2, !dbg !12101 ; 2 uses
  %i.cg = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %.sroa.0.04.i.i.i, !dbg !12075
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 80, !dbg !12084 ; 2 uses
  %i.ci = load atomic i64, ptr %i.ch acquire, align 8, !dbg !12092, !noalias !12049
  %i.cj = and i64 %i.ci, 2, !dbg !12094
  %i.ck = icmp eq i64 %i.cj, 0, !dbg !12094
  br i1 %i.ck, label %bb.z, label %bb.aa, !dbg !12094

bb.z:                                             ; preds = %.lr.ph.i2.i.i.1
  %i.cl = atomicrmw or ptr %i.ch, i64 4 acq_rel, align 8, !dbg !12095, !noalias !12049
  %i.cm = and i64 %i.cl, 2, !dbg !12100
  %i.cn = icmp eq i64 %i.cm, 0, !dbg !12100
  br i1 %i.cn, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit.i, label %bb.aa, !dbg !12100

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i2.i.i.1
  %exitcond.not.i.i2.i.1 = icmp eq i64 %i.cf, 30, !dbg !12112
  br i1 %exitcond.not.i.i2.i.1, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE7destroyBX_.exit.sink.split.i.i, label %.lr.ph.i2.i.i, !dbg !12115

bb.ab:                                            ; preds = %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10wait_writeBU_.exit.i.i
end_hunk_1
begin_hunk_2_@_RNvMsg_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB5_8ReceiveruE4recvCskAlUH1kY1DR_10polars_ooc:bb.a
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = load i64, ptr %0, align 8, !dbg !12414, !range !263, !noundef !15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12414
  %i.k = load ptr, ptr %i.j, align 8, !dbg !12415, !noundef !15 ; 10 uses
  switch i64 %i.i, label %default.unreachable30 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.bv
  ], !dbg !12416

default.unreachable30:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef i8 @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE4recvCskAlUH1kY1DR_10polars_ooc(ptr noundef nonnull align 128 %i.k, i64 undef, i32 noundef 1000000000), !dbg !12417
  br label %bb.bw, !dbg !12419

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 1000000000, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !12420
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !12424
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !12424
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false), !dbg !12424
  br label %bb.d, !dbg !12427

bb.d:                                             ; preds = %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECskAlUH1kY1DR_10polars_ooc.exit.i, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !12429), !dbg !12432
  br label %.backedge.i.i, !dbg !12433

.backedge.i.i:                                    ; preds = %.backedge.i.i.backedge, %bb.d
  %.sroa.0.034.i.i = phi i32 [ 0, %bb.d ], [ %.sroa.0.034.i.i.be, %.backedge.i.i.backedge ], !dbg !12439 ; 16 uses
  %i.t = load atomic i64, ptr %i.k acquire, align 8, !dbg !12440, !noalias !12429 ; 5 uses
  %i.u = load atomic ptr, ptr %i.p acquire, align 8, !dbg !12444, !noalias !12429 ; 35 uses
  %i.v = lshr i64 %i.t, 1, !dbg !12448            ; 2 uses
  %i.w = and i64 %i.v, 31, !dbg !12448            ; 6 uses
  %i.x = icmp eq i64 %i.w, 31, !dbg !12449
  br i1 %i.x, label %bb.e, label %bb.h, !dbg !12449

bb.e:                                             ; preds = %.backedge.i.i
  %i.y = icmp ult i32 %.sroa.0.034.i.i, 7, !dbg !12451
  br i1 %i.y, label %bb.g, label %bb.f, !dbg !12451

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !12453, !noalias !12429
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, !dbg !12453

bb.g:                                             ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %.sroa.0.034.i.i, 0, !dbg !12454
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader, !dbg !12458

.lr.ph.i.i.i.preheader:                           ; preds = %bb.g
  %i.z = mul nuw i32 %.sroa.0.034.i.i, %.sroa.0.034.i.i, !dbg !12459 ; 2 uses
  %xtraiter62 = and i32 %i.z, 7, !dbg !12458      ; 3 uses
  %i.aa = icmp ult i32 %.sroa.0.034.i.i, 3, !dbg !12458
  br i1 %i.aa, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new, !dbg !12458

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter66 = and i32 %i.z, 56, !dbg !12458
  br label %.lr.ph.i.i.i, !dbg !12458

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter67 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter67.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !12461, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12461, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12461, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12461, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12461, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12461, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12461, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12461, !noalias !12429
  %niter67.next.7 = add i32 %niter67, 8, !dbg !12458 ; 2 uses
  %niter67.ncmp.7 = icmp eq i32 %niter67.next.7, %unroll_iter66, !dbg !12458
  br i1 %niter67.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !dbg !12458

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod64.not = icmp eq i32 %xtraiter62, 0, !dbg !12458
  br i1 %lcmp.mod64.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader, !dbg !12458

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod65 = icmp ne i32 %xtraiter62, 0, !dbg !12458
  call void @llvm.assume(i1 %lcmp.mod65), !dbg !12458
  br label %.lr.ph.i.i.i.epil, !dbg !12458

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter63 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter63.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !12461, !noalias !12429
  %epil.iter63.next = add i32 %epil.iter63, 1, !dbg !12458 ; 2 uses
  %epil.iter63.cmp.not = icmp eq i32 %epil.iter63.next, %xtraiter62, !dbg !12458
  br i1 %epil.iter63.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !dbg !12458, !llvm.loop !12464

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.g, %bb.f
  %i.ab = add i32 %.sroa.0.034.i.i, 1, !dbg !12465
  br label %.backedge.i.i.backedge, !dbg !12466

bb.h:                                             ; preds = %.backedge.i.i
  %i.ac = add i64 %i.t, 2, !dbg !12468            ; 2 uses
  %i.ad = and i64 %i.t, 1, !dbg !12469
  %i.ae = icmp eq i64 %i.ad, 0, !dbg !12469
  br i1 %i.ae, label %bb.i, label %bb.l, !dbg !12469

bb.i:                                             ; preds = %bb.h
  fence seq_cst, !dbg !12471
  %i.af = load atomic i64, ptr %i.q monotonic, align 8, !dbg !12473, !noalias !12429 ; 3 uses
  %i.ag = lshr i64 %i.af, 1, !dbg !12476
  %i.ah = icmp eq i64 %i.v, %i.ag, !dbg !12478
  br i1 %i.ah, label %bb.k, label %bb.j, !dbg !12478

bb.j:                                             ; preds = %bb.i
  %.not.unshifted.i.i = xor i64 %i.af, %i.t, !dbg !12479
  %.not.i.i = icmp ugt i64 %.not.unshifted.i.i, 63, !dbg !12479
  %i.ai = zext i1 %.not.i.i to i64, !dbg !12479
  %spec.select.i.i = or disjoint i64 %i.ac, %i.ai, !dbg !12479
  br label %bb.l, !dbg !12479

bb.k:                                             ; preds = %bb.i
  %i.aj = and i64 %i.af, 1, !dbg !12480
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !12480
  br i1 %i.ak, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_recvCskAlUH1kY1DR_10polars_ooc.exit.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4recvCskAlUH1kY1DR_10polars_ooc.exit, !dbg !12480

bb.l:                                             ; preds = %bb.j, %bb.h
  %.sroa.01.0.i.i = phi i64 [ %i.ac, %bb.h ], [ %spec.select.i.i, %bb.j ], !dbg !12481 ; 2 uses
  %i.al = icmp eq ptr %i.u, null, !dbg !12482
  br i1 %i.al, label %bb.m, label %bb.p, !dbg !12482

bb.m:                                             ; preds = %bb.l
  %i.am = icmp ult i32 %.sroa.0.034.i.i, 7, !dbg !12483
  br i1 %i.am, label %bb.o, label %bb.n, !dbg !12483

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !12485, !noalias !12429
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i, !dbg !12485

bb.o:                                             ; preds = %bb.m
  %.not.i18.i.i = icmp eq i32 %.sroa.0.034.i.i, 0, !dbg !12486
  br i1 %.not.i18.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i, label %.lr.ph.i19.i.i.preheader, !dbg !12490

.lr.ph.i19.i.i.preheader:                         ; preds = %bb.o
  %i.an = mul nuw i32 %.sroa.0.034.i.i, %.sroa.0.034.i.i, !dbg !12491 ; 2 uses
  %xtraiter56 = and i32 %i.an, 7, !dbg !12490     ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.034.i.i, 3, !dbg !12490
  br i1 %i.ao, label %.lr.ph.i19.i.i.epil.preheader, label %.lr.ph.i19.i.i.preheader.new, !dbg !12490

.lr.ph.i19.i.i.preheader.new:                     ; preds = %.lr.ph.i19.i.i.preheader
  %unroll_iter60 = and i32 %i.an, 56, !dbg !12490
  br label %.lr.ph.i19.i.i, !dbg !12490

.lr.ph.i19.i.i:                                   ; preds = %.lr.ph.i19.i.i, %.lr.ph.i19.i.i.preheader.new
  %niter61 = phi i32 [ 0, %.lr.ph.i19.i.i.preheader.new ], [ %niter61.next.7, %.lr.ph.i19.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !12493, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12493, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12493, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12493, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12493, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12493, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12493, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12493, !noalias !12429
  %niter61.next.7 = add i32 %niter61, 8, !dbg !12490 ; 2 uses
  %niter61.ncmp.7 = icmp eq i32 %niter61.next.7, %unroll_iter60, !dbg !12490
  br i1 %niter61.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.loopexit.unr-lcssa, label %.lr.ph.i19.i.i, !dbg !12490

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i19.i.i
  %lcmp.mod58.not = icmp eq i32 %xtraiter56, 0, !dbg !12490
  br i1 %lcmp.mod58.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i, label %.lr.ph.i19.i.i.epil.preheader, !dbg !12490

.lr.ph.i19.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.preheader
  %lcmp.mod59 = icmp ne i32 %xtraiter56, 0, !dbg !12490
  call void @llvm.assume(i1 %lcmp.mod59), !dbg !12490
  br label %.lr.ph.i19.i.i.epil, !dbg !12490

.lr.ph.i19.i.i.epil:                              ; preds = %.lr.ph.i19.i.i.epil, %.lr.ph.i19.i.i.epil.preheader
  %epil.iter57 = phi i32 [ 0, %.lr.ph.i19.i.i.epil.preheader ], [ %epil.iter57.next, %.lr.ph.i19.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !12493, !noalias !12429
  %epil.iter57.next = add i32 %epil.iter57, 1, !dbg !12490 ; 2 uses
  %epil.iter57.cmp.not = icmp eq i32 %epil.iter57.next, %xtraiter56, !dbg !12490
  br i1 %epil.iter57.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i, label %.lr.ph.i19.i.i.epil, !dbg !12490, !llvm.loop !12496

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.epil, %bb.o, %bb.n
  %i.ap = add i32 %.sroa.0.034.i.i, 1, !dbg !12497
  br label %.backedge.i.i.backedge, !dbg !12466

bb.p:                                             ; preds = %bb.l
  %i.aq = cmpxchg weak ptr %i.k, i64 %i.t, i64 %.sroa.01.0.i.i seq_cst acquire, align 8, !dbg !12498, !noalias !12429
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.aq, 1, !dbg !12502
  br i1 %.sroa.18.0.in.i.i.i, label %bb.r, label %bb.q, !dbg !12503

bb.q:                                             ; preds = %bb.p
  %.not.i23.i.i = icmp eq i32 %.sroa.0.034.i.i, 0, !dbg !12504
  br i1 %.not.i23.i.i, label %.backedge.i.i.backedge, label %.lr.ph.i24.i.i.preheader, !dbg !12509

.lr.ph.i24.i.i.preheader:                         ; preds = %bb.q
  %.sroa.0.0.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i.i, i32 6), !dbg !12510 ; 2 uses
  %1 = mul nuw nsw i32 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i, !dbg !12512 ; 2 uses
  %xtraiter = and i32 %1, 5, !dbg !12509          ; 3 uses
  %i.ar = icmp ult i32 %.sroa.0.034.i.i, 3, !dbg !12509
  br i1 %i.ar, label %.lr.ph.i24.i.i.epil.preheader, label %.lr.ph.i24.i.i.preheader.new, !dbg !12509

.lr.ph.i24.i.i.preheader.new:                     ; preds = %.lr.ph.i24.i.i.preheader
  %unroll_iter = and i32 %1, 56, !dbg !12509
  br label %.lr.ph.i24.i.i, !dbg !12509

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i24.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !12509
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i24.i.i.epil.preheader, !dbg !12509

.lr.ph.i24.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i24.i.i.preheader
  %lcmp.mod55 = icmp ne i32 %xtraiter, 0, !dbg !12509
  call void @llvm.assume(i1 %lcmp.mod55), !dbg !12509
  br label %.lr.ph.i24.i.i.epil, !dbg !12509

.lr.ph.i24.i.i.epil:                              ; preds = %.lr.ph.i24.i.i.epil, %.lr.ph.i24.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i24.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i24.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !12514, !noalias !12429
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !12509 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !12509
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i24.i.i.epil, !dbg !12509, !llvm.loop !12517

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i24.i.i.epil, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %i.as = add i32 %.sroa.0.034.i.i, 1, !dbg !12518
  br label %.backedge.i.i.backedge, !dbg !12519

.backedge.i.i.backedge:                           ; preds = %._crit_edge.loopexit.i.i.i, %bb.q, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.034.i.i.be = phi i32 [ %i.ab, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %i.ap, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i ], [ %i.as, %._crit_edge.loopexit.i.i.i ], [ 1, %bb.q ]
  br label %.backedge.i.i, !dbg !12440

.lr.ph.i24.i.i:                                   ; preds = %.lr.ph.i24.i.i, %.lr.ph.i24.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !12514, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12514, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12514, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12514, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12514, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12514, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12514, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12514, !noalias !12429
  %niter.next.7 = add i32 %niter, 8, !dbg !12509  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !12509
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i24.i.i, !dbg !12509

bb.r:                                             ; preds = %bb.p
  %i.at = icmp eq i64 %i.w, 30, !dbg !12521
  br i1 %i.at, label %bb.s, label %bb.v, !dbg !12521

bb.s:                                             ; preds = %bb.r
  %i.au = load atomic ptr, ptr %i.u acquire, align 8, !dbg !12522, !noalias !12429 ; 2 uses
  %i.av = icmp eq ptr %i.au, null, !dbg !12526
  br i1 %i.av, label %.lr.ph.i27.i.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCskAlUH1kY1DR_10polars_ooc.exit.i.i, !dbg !12526

.lr.ph.i27.i.i:                                   ; preds = %bb.s, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i
  %.sroa.0.02.i28.i.i = phi i32 [ %i.az, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i ], [ 0, %bb.s ] ; 6 uses
  %i.aw = icmp ult i32 %.sroa.0.02.i28.i.i, 7, !dbg !12527
  br i1 %i.aw, label %bb.u, label %bb.t, !dbg !12527

bb.t:                                             ; preds = %.lr.ph.i27.i.i
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !12529, !noalias !12429
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, !dbg !12529

bb.u:                                             ; preds = %.lr.ph.i27.i.i
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.02.i28.i.i, 0, !dbg !12530
  br i1 %.not.i.i.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader, !dbg !12534

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.u
  %i.ax = mul nuw i32 %.sroa.0.02.i28.i.i, %.sroa.0.02.i28.i.i, !dbg !12535 ; 2 uses
  %xtraiter68 = and i32 %i.ax, 7, !dbg !12534     ; 3 uses
  %i.ay = icmp ult i32 %.sroa.0.02.i28.i.i, 3, !dbg !12534
  br i1 %i.ay, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new, !dbg !12534

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter72 = and i32 %i.ax, 56, !dbg !12534
  br label %.lr.ph.i.i.i.i, !dbg !12534

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %niter73 = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter73.next.7, %.lr.ph.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !12537, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12537, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12537, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12537, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12537, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12537, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12537, !noalias !12429
  call void @llvm.x86.sse2.pause(), !dbg !12537, !noalias !12429
  %niter73.next.7 = add i32 %niter73, 8, !dbg !12534 ; 2 uses
  %niter73.ncmp.7 = icmp eq i32 %niter73.next.7, %unroll_iter72, !dbg !12534
  br i1 %niter73.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !dbg !12534

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod70.not = icmp eq i32 %xtraiter68, 0, !dbg !12534
  br i1 %lcmp.mod70.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader, !dbg !12534

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %lcmp.mod71 = icmp ne i32 %xtraiter68, 0, !dbg !12534
  call void @llvm.assume(i1 %lcmp.mod71), !dbg !12534
  br label %.lr.ph.i.i.i.i.epil, !dbg !12534

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %epil.iter69 = phi i32 [ 0, %.lr.ph.i.i.i.i.epil.preheader ], [ %epil.iter69.next, %.lr.ph.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !12537, !noalias !12429
  %epil.iter69.next = add i32 %epil.iter69, 1, !dbg !12534 ; 2 uses
  %epil.iter69.cmp.not = icmp eq i32 %epil.iter69.next, %xtraiter68, !dbg !12534
  br i1 %epil.iter69.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.epil, !dbg !12534, !llvm.loop !12540

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.u, %bb.t
  %i.az = add i32 %.sroa.0.02.i28.i.i, 1, !dbg !12541
  %i.ba = load atomic ptr, ptr %i.u acquire, align 8, !dbg !12522, !noalias !12429 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null, !dbg !12526
  br i1 %i.bb, label %.lr.ph.i27.i.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCskAlUH1kY1DR_10polars_ooc.exit.i.i, !dbg !12526

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCskAlUH1kY1DR_10polars_ooc.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, %bb.s
  %.lcssa.i.i.i = phi ptr [ %i.au, %bb.s ], [ %i.ba, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i ], !dbg !12522 ; 2 uses
  %i.bc = and i64 %.sroa.01.0.i.i, -2, !dbg !12542
  %i.bd = add i64 %i.bc, 2, !dbg !12544
  %i.be = load atomic ptr, ptr %.lcssa.i.i.i monotonic, align 8, !dbg !12547, !noalias !12429
  %i.bf = icmp ne ptr %i.be, null, !dbg !12551
  %i.bg = zext i1 %i.bf to i64, !dbg !12551
  %spec.select17.i.i = or disjoint i64 %i.bd, %i.bg, !dbg !12551
  store atomic ptr %.lcssa.i.i.i, ptr %i.p release, align 8, !dbg !12552, !noalias !12429
  store atomic i64 %spec.select17.i.i, ptr %i.k release, align 8, !dbg !12556, !noalias !12429
  br label %bb.v, !dbg !12560

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_recvCskAlUH1kY1DR_10polars_ooc.exit.i: ; preds = %bb.k
  %i.bh = load i32, ptr %i.m, align 8, !dbg !12561, !range !3628, !noundef !15 ; 2 uses
  %.not.i = icmp eq i32 %i.bh, 1000000000, !dbg !12561
  br i1 %.not.i, label %bb.bh, label %bb.bg, !dbg !12563

bb.v:                                             ; preds = %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCskAlUH1kY1DR_10polars_ooc.exit.i.i, %bb.r
  store ptr %i.u, ptr %i.n, align 8, !dbg !12564, !alias.scope !12429
  store i64 %i.w, ptr %i.o, align 8, !dbg !12565, !alias.scope !12429
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !12566 ; 4 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.w, !dbg !12571 ; 3 uses
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8, !dbg !12576
  %i.bl = and i64 %i.bk, 1, !dbg !12581
  %i.bm = icmp eq i64 %i.bl, 0, !dbg !12581
  br i1 %i.bm, label %.lr.ph.i.i4.i, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCskAlUH1kY1DR_10polars_ooc.exit.i.i, !dbg !12581

.lr.ph.i.i4.i:                                    ; preds = %bb.v, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.i
  %.sroa.0.02.i.i5.i = phi i32 [ %i.bq, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.i ], [ 0, %bb.v ] ; 6 uses
  %i.bn = icmp ult i32 %.sroa.0.02.i.i5.i, 7, !dbg !12582
  br i1 %i.bn, label %bb.x, label %bb.w, !dbg !12582

bb.w:                                             ; preds = %.lr.ph.i.i4.i
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !12584
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.i, !dbg !12584

bb.x:                                             ; preds = %.lr.ph.i.i4.i
  %.not.i.i.i7.i = icmp eq i32 %.sroa.0.02.i.i5.i, 0, !dbg !12585
  br i1 %.not.i.i.i7.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.i, label %.lr.ph.i.i.i8.i.preheader, !dbg !12589

.lr.ph.i.i.i8.i.preheader:                        ; preds = %bb.x
  %i.bo = mul nuw i32 %.sroa.0.02.i.i5.i, %.sroa.0.02.i.i5.i, !dbg !12590 ; 2 uses
  %xtraiter74 = and i32 %i.bo, 7, !dbg !12589     ; 3 uses
  %i.bp = icmp ult i32 %.sroa.0.02.i.i5.i, 3, !dbg !12589
  br i1 %i.bp, label %.lr.ph.i.i.i8.i.epil.preheader, label %.lr.ph.i.i.i8.i.preheader.new, !dbg !12589

.lr.ph.i.i.i8.i.preheader.new:                    ; preds = %.lr.ph.i.i.i8.i.preheader
  %unroll_iter78 = and i32 %i.bo, 56, !dbg !12589
  br label %.lr.ph.i.i.i8.i, !dbg !12589

.lr.ph.i.i.i8.i:                                  ; preds = %.lr.ph.i.i.i8.i, %.lr.ph.i.i.i8.i.preheader.new
  %niter79 = phi i32 [ 0, %.lr.ph.i.i.i8.i.preheader.new ], [ %niter79.next.7, %.lr.ph.i.i.i8.i ]
  call void @llvm.x86.sse2.pause(), !dbg !12592
  call void @llvm.x86.sse2.pause(), !dbg !12592
  call void @llvm.x86.sse2.pause(), !dbg !12592
  call void @llvm.x86.sse2.pause(), !dbg !12592
  call void @llvm.x86.sse2.pause(), !dbg !12592
  call void @llvm.x86.sse2.pause(), !dbg !12592
  call void @llvm.x86.sse2.pause(), !dbg !12592
  call void @llvm.x86.sse2.pause(), !dbg !12592
  %niter79.next.7 = add i32 %niter79, 8, !dbg !12589 ; 2 uses
  %niter79.ncmp.7 = icmp eq i32 %niter79.next.7, %unroll_iter78, !dbg !12589
  br i1 %niter79.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i8.i, !dbg !12589

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i8.i
  %lcmp.mod76.not = icmp eq i32 %xtraiter74, 0, !dbg !12589
  br i1 %lcmp.mod76.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.i, label %.lr.ph.i.i.i8.i.epil.preheader, !dbg !12589

.lr.ph.i.i.i8.i.epil.preheader:                   ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.i.loopexit.unr-lcssa, %.lr.ph.i.i.i8.i.preheader
  %lcmp.mod77 = icmp ne i32 %xtraiter74, 0, !dbg !12589
  call void @llvm.assume(i1 %lcmp.mod77), !dbg !12589
  br label %.lr.ph.i.i.i8.i.epil, !dbg !12589

.lr.ph.i.i.i8.i.epil:                             ; preds = %.lr.ph.i.i.i8.i.epil, %.lr.ph.i.i.i8.i.epil.preheader
  %epil.iter75 = phi i32 [ 0, %.lr.ph.i.i.i8.i.epil.preheader ], [ %epil.iter75.next, %.lr.ph.i.i.i8.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !12592
  %epil.iter75.next = add i32 %epil.iter75, 1, !dbg !12589 ; 2 uses
  %epil.iter75.cmp.not = icmp eq i32 %epil.iter75.next, %xtraiter74, !dbg !12589
  br i1 %epil.iter75.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.i, label %.lr.ph.i.i.i8.i.epil, !dbg !12589, !llvm.loop !12595

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.i.loopexit.unr-lcssa, %.lr.ph.i.i.i8.i.epil, %bb.x, %bb.w
  %i.bq = add i32 %.sroa.0.02.i.i5.i, 1, !dbg !12596
  %i.br = load atomic i64, ptr %i.bj acquire, align 8, !dbg !12576
  %i.bs = and i64 %i.br, 1, !dbg !12581
  %i.bt = icmp eq i64 %i.bs, 0, !dbg !12581
  br i1 %i.bt, label %.lr.ph.i.i4.i, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCskAlUH1kY1DR_10polars_ooc.exit.i.i, !dbg !12581

_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCskAlUH1kY1DR_10polars_ooc.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.i, %bb.v
  %i.bu = add nuw nsw i64 %i.w, 1, !dbg !12597    ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 31, !dbg !12597
  br i1 %i.bv, label %.preheader.preheader.i.i, label %bb.bc, !dbg !12597

.preheader.preheader.i.i:                         ; preds = %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCskAlUH1kY1DR_10polars_ooc.exit.i.i
  %i.bw = load atomic i64, ptr %i.bi acquire, align 8, !dbg !12599
  %i.bx = and i64 %i.bw, 2, !dbg !12608
  %i.by = icmp eq i64 %i.bx, 0, !dbg !12608
  br i1 %i.by, label %bb.y, label %.preheader.1.i.i, !dbg !12608

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockuE7destroyCskAlUH1kY1DR_10polars_ooc.exit.sink.split.i.i: ; preds = %bb.bf, %bb.bd, %bb.bb, %.preheader.29.i.i
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef 256, i64 noundef 8) #23, !dbg !12609
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4recvCskAlUH1kY1DR_10polars_ooc.exit, !dbg !12619

bb.y:                                             ; preds = %.preheader.preheader.i.i
  %i.bz = atomicrmw or ptr %i.bi, i64 4 acq_rel, align 8, !dbg !12620
  %i.ca = and i64 %i.bz, 2, !dbg !12625
  %i.cb = icmp eq i64 %i.ca, 0, !dbg !12625
  br i1 %i.cb, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4recvCskAlUH1kY1DR_10polars_ooc.exit, label %.preheader.1.i.i, !dbg !12625

.preheader.1.i.i:                                 ; preds = %bb.y, %.preheader.preheader.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !12626 ; 2 uses
  %i.cd = load atomic i64, ptr %i.cc acquire, align 8, !dbg !12599
  %i.ce = and i64 %i.cd, 2, !dbg !12608
  %i.cf = icmp eq i64 %i.ce, 0, !dbg !12608
  br i1 %i.cf, label %bb.z, label %.preheader.2.i.i, !dbg !12608

bb.z:                                             ; preds = %.preheader.1.i.i
  %i.cg = atomicrmw or ptr %i.cc, i64 4 acq_rel, align 8, !dbg !12620
  %i.ch = and i64 %i.cg, 2, !dbg !12625
  %i.ci = icmp eq i64 %i.ch, 0, !dbg !12625
  br i1 %i.ci, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4recvCskAlUH1kY1DR_10polars_ooc.exit, label %.preheader.2.i.i, !dbg !12625

.preheader.2.i.i:                                 ; preds = %bb.z, %.preheader.1.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !12626 ; 2 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8, !dbg !12599
  %i.cl = and i64 %i.ck, 2, !dbg !12608
  %i.cm = icmp eq i64 %i.cl, 0, !dbg !12608
  br i1 %i.cm, label %bb.aa, label %.preheader.3.i.i, !dbg !12608

bb.aa:                                            ; preds = %.preheader.2.i.i
  %i.cn = atomicrmw or ptr %i.cj, i64 4 acq_rel, align 8, !dbg !12620
  %i.co = and i64 %i.cn, 2, !dbg !12625
end_hunk_2
begin_hunk_3_@llvm.sqrt.v2f64
!10523 = distinct !DILocation(line: 80, column: 34, scope: !10524, inlinedAt: !10526)
!10524 = distinct !DILexicalBlock(scope: !10525, file: !2075, line: 78, column: 9)
!10525 = distinct !DISubprogram(name: "wait_next<()>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCskAlUH1kY1DR_10polars_ooc", scope: !10327, file: !2075, line: 77, type: !14, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10526 = distinct !DILocation(line: 594, column: 30, scope: !10509, inlinedAt: !10442)
!10527 = !DILocation(line: 81, column: 17, scope: !10528, inlinedAt: !10526)
!10528 = distinct !DILexicalBlock(scope: !10524, file: !2075, line: 80, column: 13)
!10529 = !DILocation(line: 127, column: 12, scope: !10232, inlinedAt: !10530)
!10530 = distinct !DILocation(line: 84, column: 21, scope: !10528, inlinedAt: !10526)
!10531 = !DILocation(line: 132, column: 13, scope: !10232, inlinedAt: !10530)
!10532 = !DILocation(line: 1917, column: 50, scope: !10239, inlinedAt: !10533)
!10533 = distinct !DILocation(line: 781, column: 12, scope: !10242, inlinedAt: !10534)
!10534 = distinct !DILocation(line: 866, column: 14, scope: !10244, inlinedAt: !10535)
!10535 = distinct !DILocation(line: 128, column: 22, scope: !10246, inlinedAt: !10530)
!10536 = !DILocation(line: 781, column: 12, scope: !10242, inlinedAt: !10534)
!10537 = !DILocation(line: 3558, column: 28, scope: !10250, inlinedAt: !10538)
!10538 = distinct !DILocation(line: 128, column: 41, scope: !10232, inlinedAt: !10530)
!10539 = !DILocation(line: 25, column: 14, scope: !10255, inlinedAt: !10540)
!10540 = distinct !DILocation(line: 287, column: 13, scope: !10257, inlinedAt: !10541)
!10541 = distinct !DILocation(line: 129, column: 17, scope: !10247, inlinedAt: !10530)
!10542 = distinct !{!10542, !10260}
!10543 = !DILocation(line: 135, column: 23, scope: !10232, inlinedAt: !10530)
!10544 = !DILocation(line: 3905, column: 24, scope: !2213, inlinedAt: !10545)
!10545 = distinct !DILocation(line: 1732, column: 18, scope: !10546, inlinedAt: !10547)
!10546 = distinct !DISubprogram(name: "load<std::sync::mpmc::list::Block<()>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEE4loadCskAlUH1kY1DR_10polars_ooc", scope: !84, file: !79, line: 1730, type: !14, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10547 = distinct !DILocation(line: 596, column: 46, scope: !10509, inlinedAt: !10442)
!10548 = !DILocation(line: 128, column: 14, scope: !2113, inlinedAt: !10549)
!10549 = distinct !DILocation(line: 229, column: 22, scope: !2117, inlinedAt: !10550)
!10550 = distinct !DILocation(line: 344, column: 9, scope: !2120, inlinedAt: !10551)
!10551 = distinct !DILocation(line: 462, column: 23, scope: !2122, inlinedAt: !10552)
!10552 = distinct !DILocation(line: 1921, column: 24, scope: !2228, inlinedAt: !10553)
!10553 = distinct !DILocation(line: 810, column: 1, scope: !2232, inlinedAt: !10554)
!10554 = distinct !DILocation(line: 1003, column: 1, scope: !10517, inlinedAt: !10555)
!10555 = distinct !DILocation(line: 597, column: 21, scope: !10556, inlinedAt: !10442)
!10556 = distinct !DILexicalBlock(scope: !10509, file: !2075, line: 596, column: 21)
!10557 = !DILocation(line: 587, column: 17, scope: !10509, inlinedAt: !10442)
!10558 = !DILocation(line: 589, column: 32, scope: !10509, inlinedAt: !10442)
!10559 = !DILocation(line: 253, column: 13, scope: !10560, inlinedAt: !10561)
!10560 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<()>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotuEE13get_uncheckedCskAlUH1kY1DR_10polars_ooc", scope: !2155, file: !371, line: 239, type: !14, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10561 = distinct !DILocation(line: 646, column: 26, scope: !10562, inlinedAt: !10563)
!10562 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<()>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotuE13get_uncheckedjECskAlUH1kY1DR_10polars_ooc", scope: !2159, file: !2158, line: 639, type: !14, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10563 = distinct !DILocation(line: 589, column: 47, scope: !10509, inlinedAt: !10442)
!10564 = !DILocation(line: 3905, column: 24, scope: !113, inlinedAt: !10565)
!10565 = distinct !DILocation(line: 2870, column: 26, scope: !10566, inlinedAt: !10567)
!10566 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !84, file: !79, line: 2868, type: !14, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10567 = distinct !DILocation(line: 47, column: 26, scope: !10568, inlinedAt: !10570)
!10568 = distinct !DILexicalBlock(scope: !10569, file: !2075, line: 46, column: 9)
!10569 = distinct !DISubprogram(name: "wait_write<()>", linkageName: "_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCskAlUH1kY1DR_10polars_ooc", scope: !10372, file: !2075, line: 45, type: !14, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10570 = distinct !DILocation(line: 590, column: 26, scope: !10571, inlinedAt: !10442)
!10571 = distinct !DILexicalBlock(scope: !10509, file: !2075, line: 589, column: 21)
!10572 = !DILocation(line: 47, column: 15, scope: !10568, inlinedAt: !10570)
!10573 = !DILocation(line: 127, column: 12, scope: !10232, inlinedAt: !10574)
!10574 = distinct !DILocation(line: 48, column: 21, scope: !10568, inlinedAt: !10570)
!10575 = !DILocation(line: 132, column: 13, scope: !10232, inlinedAt: !10574)
!10576 = !DILocation(line: 1917, column: 50, scope: !10239, inlinedAt: !10577)
!10577 = distinct !DILocation(line: 781, column: 12, scope: !10242, inlinedAt: !10578)
!10578 = distinct !DILocation(line: 866, column: 14, scope: !10244, inlinedAt: !10579)
!10579 = distinct !DILocation(line: 128, column: 22, scope: !10246, inlinedAt: !10574)
!10580 = !DILocation(line: 781, column: 12, scope: !10242, inlinedAt: !10578)
!10581 = !DILocation(line: 3558, column: 28, scope: !10250, inlinedAt: !10582)
!10582 = distinct !DILocation(line: 128, column: 41, scope: !10232, inlinedAt: !10574)
!10583 = !DILocation(line: 25, column: 14, scope: !10255, inlinedAt: !10584)
!10584 = distinct !DILocation(line: 287, column: 13, scope: !10257, inlinedAt: !10585)
!10585 = distinct !DILocation(line: 129, column: 17, scope: !10247, inlinedAt: !10574)
!10586 = distinct !{!10586, !10260}
!10587 = !DILocation(line: 135, column: 23, scope: !10232, inlinedAt: !10574)
!10588 = !DILocation(line: 0, scope: !10480, inlinedAt: !10442)
!10589 = !DILocation(line: 2511, column: 13, scope: !10590, inlinedAt: !10591)
!10590 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !668, file: !667, line: 2510, type: !14, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10591 = distinct !DILocation(line: 601, column: 29, scope: !10509, inlinedAt: !10442)
!10592 = !DILocation(line: 610, column: 9, scope: !10480, inlinedAt: !10442)
!10593 = !DILocation(line: 3890, column: 24, scope: !10017, inlinedAt: !10594)
!10594 = distinct !DILocation(line: 2898, column: 26, scope: !10595, inlinedAt: !10596)
!10595 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !84, file: !79, line: 2896, type: !14, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10596 = distinct !DILocation(line: 611, column: 25, scope: !10480, inlinedAt: !10442)
!10597 = !DILocation(line: 529, column: 9, scope: !10435)
!10598 = !DILocation(line: 537, column: 6, scope: !10423)
!10599 = distinct !DISubprogram(name: "send<polars_ooc::spill_file::CleanRequest>", linkageName: "_RNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB5_6SenderNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4sendBS_", scope: !10600, file: !2441, line: 393, type: !14, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10600 = !DINamespace(name: "Sender", scope: !2078)
!10601 = !DILocation(line: 394, column: 9, scope: !10599)
!10602 = !DILocation(line: 394, column: 15, scope: !10599)
!10603 = !DILocation(line: 0, scope: !10599)
!10604 = !DILocation(line: 395, column: 52, scope: !10605)
!10605 = distinct !DILexicalBlock(scope: !10599, file: !2441, line: 395, column: 13)
!10606 = !DILocation(line: 395, column: 47, scope: !10605)
!10607 = !DILocation(line: 395, column: 61, scope: !10605)
!10608 = !DILocation(line: 395, column: 61, scope: !10599)
!10609 = !DILocation(line: 396, column: 51, scope: !10610)
!10610 = distinct !DILexicalBlock(scope: !10599, file: !2441, line: 396, column: 13)
!10611 = !{!10612}
!10612 = distinct !{!10612, !10613, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4sendB10_: argument 0"}
!10613 = distinct !{!10613, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4sendB10_"}
!10614 = !DILocation(line: 396, column: 46, scope: !10610)
!10615 = !{!10616}
!10616 = distinct !{!10616, !10613, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4sendB10_: argument 1"}
!10617 = !DILocation(line: 2447, column: 9, scope: !10618, inlinedAt: !10619)
!10618 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCskAlUH1kY1DR_10polars_ooc", scope: !165, file: !164, line: 2443, type: !14, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10619 = distinct !DILocation(line: 3615, column: 24, scope: !10620, inlinedAt: !10621)
!10620 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !84, file: !79, line: 3614, type: !14, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10621 = distinct !DILocation(line: 2870, column: 43, scope: !10622, inlinedAt: !10623)
!10622 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !84, file: !79, line: 2868, type: !14, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10623 = distinct !DILocation(line: 177, column: 40, scope: !10624, inlinedAt: !10626)
!10624 = distinct !DILexicalBlock(scope: !10625, file: !2075, line: 176, column: 9)
!10625 = distinct !DISubprogram(name: "start_send<polars_ooc::spill_file::CleanRequest>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_", scope: !4191, file: !2075, line: 175, type: !14, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10626 = distinct !DILocation(line: 410, column: 22, scope: !10627, inlinedAt: !10629)
!10627 = distinct !DILexicalBlock(scope: !10628, file: !2075, line: 409, column: 9)
!10628 = distinct !DISubprogram(name: "send<polars_ooc::spill_file::CleanRequest>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4sendB10_", scope: !4191, file: !2075, line: 404, type: !14, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10629 = distinct !DILocation(line: 396, column: 46, scope: !10610)
!10630 = !DILocation(line: 3905, column: 24, scope: !113, inlinedAt: !10631)
!10631 = distinct !DILocation(line: 2870, column: 26, scope: !10622, inlinedAt: !10623)
!10632 = !{!10633, !10612, !10616}
!10633 = distinct !{!10633, !10634, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_: argument 0"}
!10634 = distinct !{!10634, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_"}
!10635 = !DILocation(line: 2447, column: 9, scope: !10636, inlinedAt: !10637)
!10636 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<*mut std::sync::mpmc::list::Block<polars_ooc::spill_file::CleanRequest>>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8OINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEEE3getB2h_", scope: !165, file: !164, line: 2443, type: !14, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10637 = distinct !DILocation(line: 2500, column: 16, scope: !10638, inlinedAt: !10639)
!10638 = distinct !DISubprogram(name: "as_ptr<std::sync::mpmc::list::Block<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEE6as_ptrB1I_", scope: !84, file: !79, line: 2499, type: !14, scopeLine: 2499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10639 = distinct !DILocation(line: 1732, column: 35, scope: !10640, inlinedAt: !10641)
!10640 = distinct !DISubprogram(name: "load<std::sync::mpmc::list::Block<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEE4loadB1I_", scope: !84, file: !79, line: 1730, type: !14, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10641 = distinct !DILocation(line: 178, column: 41, scope: !10642, inlinedAt: !10626)
!10642 = distinct !DILexicalBlock(scope: !10624, file: !2075, line: 177, column: 9)
!10643 = !DILocation(line: 3905, column: 24, scope: !2101, inlinedAt: !10644)
!10644 = distinct !DILocation(line: 1732, column: 18, scope: !10640, inlinedAt: !10641)
!10645 = !DILocation(line: 183, column: 16, scope: !10646, inlinedAt: !10626)
!10646 = distinct !DILexicalBlock(scope: !10647, file: !2075, line: 179, column: 9)
!10647 = distinct !DILexicalBlock(scope: !10642, file: !2075, line: 178, column: 9)
!10648 = !DILocation(line: 411, column: 18, scope: !10627, inlinedAt: !10629)
!10649 = !DILocation(line: 411, column: 36, scope: !10627, inlinedAt: !10629)
!10650 = !DILocation(line: 265, column: 12, scope: !10651, inlinedAt: !10652)
!10651 = distinct !DISubprogram(name: "write<polars_ooc::spill_file::CleanRequest>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_", scope: !4191, file: !2075, line: 263, type: !294, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10652 = distinct !DILocation(line: 411, column: 23, scope: !10627, inlinedAt: !10629)
!10653 = !DILocation(line: 189, column: 26, scope: !10646, inlinedAt: !10626)
!10654 = !DILocation(line: 192, column: 16, scope: !10655, inlinedAt: !10626)
!10655 = distinct !DILexicalBlock(scope: !10646, file: !2075, line: 189, column: 13)
!10656 = !DILocation(line: 135, column: 23, scope: !10232, inlinedAt: !10657)
!10657 = distinct !DILocation(line: 193, column: 25, scope: !10655, inlinedAt: !10626)
!10658 = !DILocation(line: 127, column: 12, scope: !10232, inlinedAt: !10657)
!10659 = !DILocation(line: 132, column: 13, scope: !10232, inlinedAt: !10657)
!10660 = !DILocation(line: 1917, column: 50, scope: !10239, inlinedAt: !10661)
!10661 = distinct !DILocation(line: 781, column: 12, scope: !10242, inlinedAt: !10662)
!10662 = distinct !DILocation(line: 866, column: 14, scope: !10244, inlinedAt: !10663)
!10663 = distinct !DILocation(line: 128, column: 22, scope: !10246, inlinedAt: !10657)
!10664 = !DILocation(line: 781, column: 12, scope: !10242, inlinedAt: !10662)
!10665 = !DILocation(line: 3558, column: 28, scope: !10250, inlinedAt: !10666)
!10666 = distinct !DILocation(line: 128, column: 41, scope: !10232, inlinedAt: !10657)
!10667 = !DILocation(line: 25, column: 14, scope: !10255, inlinedAt: !10668)
!10668 = distinct !DILocation(line: 287, column: 13, scope: !10257, inlinedAt: !10669)
!10669 = distinct !DILocation(line: 129, column: 17, scope: !10247, inlinedAt: !10657)
!10670 = !DILocation(line: 201, column: 16, scope: !10655, inlinedAt: !10626)
!10671 = distinct !{!10671, !10260}
!10672 = !DILocation(line: 3905, column: 24, scope: !113, inlinedAt: !10673)
!10673 = distinct !DILocation(line: 2870, column: 26, scope: !10622, inlinedAt: !10674)
!10674 = distinct !DILocation(line: 194, column: 40, scope: !10655, inlinedAt: !10626)
!10675 = !DILocation(line: 3905, column: 24, scope: !2101, inlinedAt: !10676)
!10676 = distinct !DILocation(line: 1732, column: 18, scope: !10640, inlinedAt: !10677)
!10677 = distinct !DILocation(line: 195, column: 41, scope: !10655, inlinedAt: !10626)
!10678 = !DILocation(line: 0, scope: !10647, inlinedAt: !10626)
!10679 = !DILocation(line: 207, column: 16, scope: !10655, inlinedAt: !10626)
!10680 = !DILocation(line: 341, column: 9, scope: !10681, inlinedAt: !10682)
!10681 = distinct !DISubprogram(name: "new_zeroed<std::sync::mpmc::list::Block<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEE10new_zeroedB1u_", scope: !2971, file: !2126, line: 340, type: !14, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10682 = distinct !DILocation(line: 73, column: 18, scope: !10683, inlinedAt: !10684)
!10683 = distinct !DISubprogram(name: "new<polars_ooc::spill_file::CleanRequest>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE3newBX_", scope: !10327, file: !2075, line: 66, type: !14, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10684 = distinct !DILocation(line: 202, column: 35, scope: !10655, inlinedAt: !10626)
!10685 = !{!10612, !10616}
!10686 = !DILocation(line: 341, column: 9, scope: !10681, inlinedAt: !10687)
!10687 = distinct !DILocation(line: 73, column: 18, scope: !10688, inlinedAt: !10689)
!10688 = !DILexicalBlockFile(scope: !10683, file: !2075, discriminator: 2)
!10689 = distinct !DILocation(line: 208, column: 41, scope: !10655, inlinedAt: !10626)
!10690 = !DILocation(line: 3998, column: 17, scope: !10691, inlinedAt: !10692)
!10691 = distinct !DISubprogram(name: "atomic_compare_exchange<*mut std::sync::mpmc::list::Block<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic23atomic_compare_exchangeOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEEB1R_", scope: !80, file: !79, line: 3969, type: !14, scopeLine: 3969, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10692 = distinct !DILocation(line: 1920, column: 18, scope: !10693, inlinedAt: !10694)
!10693 = distinct !DISubprogram(name: "compare_exchange<std::sync::mpmc::list::Block<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEE16compare_exchangeB1I_", scope: !84, file: !79, line: 1912, type: !14, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10694 = distinct !DILocation(line: 213, column: 22, scope: !10695, inlinedAt: !10626)
!10695 = distinct !DILexicalBlock(scope: !10655, file: !2075, line: 208, column: 17)
!10696 = !DILocation(line: 210, column: 20, scope: !10695, inlinedAt: !10626)
!10697 = !DILocation(line: 3890, column: 24, scope: !10698, inlinedAt: !10699)
!10698 = distinct !DISubprogram(name: "atomic_store<*mut std::sync::mpmc::list::Block<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic12atomic_storeOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEEB1G_", scope: !80, file: !79, line: 3885, type: !14, scopeLine: 3885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10699 = distinct !DILocation(line: 1763, column: 13, scope: !10700, inlinedAt: !10701)
!10700 = distinct !DISubprogram(name: "store<std::sync::mpmc::list::Block<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEE5storeB1I_", scope: !84, file: !79, line: 1760, type: !14, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10701 = distinct !DILocation(line: 221, column: 37, scope: !10695, inlinedAt: !10626)
!10702 = !DILocation(line: 3896, column: 2, scope: !10698, inlinedAt: !10699)
!10703 = !DILocation(line: 810, column: 1, scope: !10704, inlinedAt: !10705)
!10704 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<alloc::boxed::Box<std::sync::mpmc::list::Block<polars_ooc::spill_file::CleanRequest>, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEEEEB2r_", scope: !26, file: !25, line: 810, type: !294, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10705 = distinct !DILocation(line: 224, column: 21, scope: !10695, inlinedAt: !10626)
!10706 = !DILocation(line: 128, column: 14, scope: !2113, inlinedAt: !10707)
!10707 = distinct !DILocation(line: 229, column: 22, scope: !2117, inlinedAt: !10708)
!10708 = distinct !DILocation(line: 344, column: 9, scope: !2120, inlinedAt: !10709)
!10709 = distinct !DILocation(line: 462, column: 23, scope: !2122, inlinedAt: !10710)
!10710 = distinct !DILocation(line: 1921, column: 24, scope: !2125, inlinedAt: !10711)
!10711 = distinct !DILocation(line: 810, column: 1, scope: !2132, inlinedAt: !10712)
!10712 = distinct !DILocation(line: 810, column: 1, scope: !10704, inlinedAt: !10705)
!10713 = !DILocation(line: 0, scope: !10642, inlinedAt: !10626)
!10714 = !DILocation(line: 231, column: 28, scope: !10655, inlinedAt: !10626)
!10715 = !DILocation(line: 4084, column: 17, scope: !10716, inlinedAt: !10717)
!10716 = distinct !DISubprogram(name: "atomic_compare_exchange_weak<usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic28atomic_compare_exchange_weakjECskAlUH1kY1DR_10polars_ooc", scope: !80, file: !79, line: 4034, type: !14, scopeLine: 4034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10717 = distinct !DILocation(line: 3130, column: 21, scope: !10718, inlinedAt: !10719)
!10718 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !84, file: !79, line: 3123, type: !14, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10719 = distinct !DILocation(line: 234, column: 35, scope: !10720, inlinedAt: !10626)
!10720 = distinct !DILexicalBlock(scope: !10655, file: !2075, line: 231, column: 13)
!10721 = !DILocation(line: 0, scope: !10716, inlinedAt: !10717)
!10722 = !DILocation(line: 234, column: 13, scope: !10720, inlinedAt: !10626)
!10723 = !DILocation(line: 1917, column: 50, scope: !10724, inlinedAt: !10725)
!10724 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXs10_NtNtCscgRAwXFJnXP_4core3cmp5implsmNtB8_10PartialOrd2lt", scope: !10240, file: !280, line: 1917, type: !14, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10725 = distinct !DILocation(line: 781, column: 12, scope: !10726, inlinedAt: !10727)
!10726 = distinct !DISubprogram(name: "spec_next<u32>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtB5_17RangeIteratorImpl9spec_nextCskAlUH1kY1DR_10polars_ooc", scope: !657, file: !656, line: 780, type: !14, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10727 = distinct !DILocation(line: 866, column: 14, scope: !10728, inlinedAt: !10729)
!10728 = distinct !DISubprogram(name: "next<u32>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtNtNtB7_6traits8iterator8Iterator4nextCskAlUH1kY1DR_10polars_ooc", scope: !662, file: !656, line: 865, type: !14, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10729 = distinct !DILocation(line: 115, column: 18, scope: !10730, inlinedAt: !10734)
!10730 = !DILexicalBlockFile(scope: !10731, file: !10233, discriminator: 2)
!10731 = distinct !DILexicalBlock(scope: !10732, file: !10233, line: 115, column: 9)
!10732 = distinct !DILexicalBlock(scope: !10733, file: !10233, line: 114, column: 9)
!10733 = distinct !DISubprogram(name: "spin_light", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light", scope: !10234, file: !10233, line: 113, type: !14, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10734 = distinct !DILocation(line: 254, column: 29, scope: !10720, inlinedAt: !10626)
!10735 = !DILocation(line: 781, column: 12, scope: !10726, inlinedAt: !10727)
!10736 = !DILocation(line: 1077, column: 12, scope: !10737, inlinedAt: !10738)
!10737 = distinct !DISubprogram(name: "min<u32>", linkageName: "_RNvYmNtNtCscgRAwXFJnXP_4core3cmp3Ord3minCskAlUH1kY1DR_10polars_ooc", scope: !7722, file: !280, line: 1073, type: !14, scopeLine: 1073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10738 = distinct !DILocation(line: 114, column: 36, scope: !10733, inlinedAt: !10734)
!10739 = !DILocation(line: 3558, column: 28, scope: !10250, inlinedAt: !10740)
!10740 = distinct !DILocation(line: 115, column: 26, scope: !10732, inlinedAt: !10734)
!10741 = !DILocation(line: 25, column: 14, scope: !10742, inlinedAt: !10743)
!10742 = distinct !DISubprogram(name: "_mm_pause", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse29__mm_pause", scope: !610, file: !608, line: 22, type: !14, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10743 = distinct !DILocation(line: 287, column: 13, scope: !10744, inlinedAt: !10745)
!10744 = distinct !DISubprogram(name: "spin_loop", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint9spin_loop", scope: !2934, file: !2933, line: 270, type: !14, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10745 = distinct !DILocation(line: 116, column: 13, scope: !10731, inlinedAt: !10734)
!10746 = distinct !{!10746, !10260}
!10747 = !DILocation(line: 119, column: 23, scope: !10732, inlinedAt: !10734)
!10748 = !DILocation(line: 555, column: 18, scope: !10749, inlinedAt: !10750)
!10749 = distinct !DISubprogram(name: "get<u32>", linkageName: "_RNvMs8_NtCscgRAwXFJnXP_4core4cellINtB5_4CellmE3getCskAlUH1kY1DR_10polars_ooc", scope: !5150, file: !164, line: 552, type: !14, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10750 = distinct !DILocation(line: 119, column: 33, scope: !10732, inlinedAt: !10734)
!10751 = !DILocation(line: 242, column: 24, scope: !10720, inlinedAt: !10626)
!10752 = !DILocation(line: 1014, column: 15, scope: !10753, inlinedAt: !10754)
!10753 = distinct !DISubprogram(name: "unwrap<alloc::boxed::Box<std::sync::mpmc::list::Block<polars_ooc::spill_file::CleanRequest>, alloc::alloc::Global>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEEE6unwrapB26_", scope: !2871, file: !2869, line: 1013, type: !14, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10754 = distinct !DILocation(line: 243, column: 67, scope: !10720, inlinedAt: !10626)
!10755 = !DILocation(line: 1014, column: 9, scope: !10753, inlinedAt: !10754)
!10756 = !DILocation(line: 1016, column: 21, scope: !10753, inlinedAt: !10754)
!10757 = !DILocation(line: 3890, column: 24, scope: !10698, inlinedAt: !10758)
!10758 = distinct !DILocation(line: 1763, column: 13, scope: !10700, inlinedAt: !10759)
!10759 = distinct !DILocation(line: 244, column: 41, scope: !10760, inlinedAt: !10626)
!10760 = distinct !DILexicalBlock(scope: !10720, file: !2075, line: 243, column: 25)
!10761 = !DILocation(line: 3939, column: 24, scope: !10762, inlinedAt: !10763)
!10762 = distinct !DISubprogram(name: "atomic_add<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_addjjECskAlUH1kY1DR_10polars_ooc", scope: !80, file: !79, line: 3933, type: !14, scopeLine: 3933, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10763 = distinct !DILocation(line: 3162, column: 26, scope: !10764, inlinedAt: !10765)
!10764 = distinct !DISubprogram(name: "fetch_add", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE9fetch_add", scope: !84, file: !79, line: 3160, type: !14, scopeLine: 3160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10765 = distinct !DILocation(line: 245, column: 41, scope: !10760, inlinedAt: !10626)
!10766 = !DILocation(line: 3890, column: 24, scope: !10698, inlinedAt: !10767)
!10767 = distinct !DILocation(line: 1763, column: 13, scope: !10700, inlinedAt: !10768)
!10768 = distinct !DILocation(line: 246, column: 39, scope: !10760, inlinedAt: !10626)
!10769 = !DILocation(line: 3905, column: 24, scope: !113, inlinedAt: !10770)
!10770 = distinct !DILocation(line: 2870, column: 26, scope: !10622, inlinedAt: !10771)
!10771 = distinct !DILocation(line: 0, scope: !10655, inlinedAt: !10626)
!10772 = !DILocation(line: 3905, column: 24, scope: !2101, inlinedAt: !10773)
!10773 = distinct !DILocation(line: 1732, column: 18, scope: !10640, inlinedAt: !10771)
!10774 = !DILocation(line: 810, column: 1, scope: !10704, inlinedAt: !10775)
!10775 = distinct !DILocation(line: 260, column: 5, scope: !10647, inlinedAt: !10626)
!10776 = !DILocation(line: 128, column: 14, scope: !2113, inlinedAt: !10777)
!10777 = distinct !DILocation(line: 229, column: 22, scope: !2117, inlinedAt: !10778)
!10778 = distinct !DILocation(line: 344, column: 9, scope: !2120, inlinedAt: !10779)
!10779 = distinct !DILocation(line: 462, column: 23, scope: !2122, inlinedAt: !10780)
!10780 = distinct !DILocation(line: 1921, column: 24, scope: !2125, inlinedAt: !10781)
!10781 = distinct !DILocation(line: 810, column: 1, scope: !2132, inlinedAt: !10782)
!10782 = distinct !DILocation(line: 810, column: 1, scope: !10704, inlinedAt: !10775)
!10783 = !DILocation(line: 0, scope: !10628, inlinedAt: !10629)
!10784 = !DILocation(line: 0, scope: !10646, inlinedAt: !10626)
!10785 = !DILocation(line: 810, column: 1, scope: !10704, inlinedAt: !10786)
!10786 = distinct !DILocation(line: 260, column: 5, scope: !10647, inlinedAt: !10626)
!10787 = !DILocation(line: 128, column: 14, scope: !2113, inlinedAt: !10788)
!10788 = distinct !DILocation(line: 229, column: 22, scope: !2117, inlinedAt: !10789)
!10789 = distinct !DILocation(line: 344, column: 9, scope: !2120, inlinedAt: !10790)
!10790 = distinct !DILocation(line: 462, column: 23, scope: !2122, inlinedAt: !10791)
!10791 = distinct !DILocation(line: 1921, column: 24, scope: !2125, inlinedAt: !10792)
!10792 = distinct !DILocation(line: 810, column: 1, scope: !2132, inlinedAt: !10793)
!10793 = distinct !DILocation(line: 810, column: 1, scope: !10704, inlinedAt: !10786)
!10794 = !{!10795}
!10795 = distinct !{!10795, !10796, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_: argument 0"}
!10796 = distinct !{!10796, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_"}
!10797 = !DILocation(line: 411, column: 23, scope: !10627, inlinedAt: !10629)
!10798 = !{!10799}
!10799 = distinct !{!10799, !10796, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_: argument 1"}
!10800 = !DILocation(line: 273, column: 24, scope: !10801, inlinedAt: !10652)
!10801 = distinct !DILexicalBlock(scope: !10802, file: !2075, line: 271, column: 9)
!10802 = distinct !DILexicalBlock(scope: !10651, file: !2075, line: 270, column: 9)
!10803 = !DILocation(line: 252, column: 39, scope: !10804, inlinedAt: !10805)
!10804 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEE13get_uncheckedB1N_", scope: !2155, file: !371, line: 239, type: !14, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10805 = distinct !DILocation(line: 646, column: 26, scope: !10806, inlinedAt: !10807)
!10806 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<polars_ooc::spill_file::CleanRequest>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE13get_uncheckedjEB1k_", scope: !2159, file: !2158, line: 639, type: !14, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10807 = distinct !DILocation(line: 273, column: 39, scope: !10801, inlinedAt: !10652)
!10808 = !DILocation(line: 252, column: 13, scope: !10804, inlinedAt: !10805)
!10809 = !DILocation(line: 253, column: 13, scope: !10804, inlinedAt: !10805)
!10810 = !DILocation(line: 1921, column: 41, scope: !10811, inlinedAt: !10812)
!10811 = distinct !DISubprogram(name: "write<core::mem::maybe_uninit::MaybeUninit<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writeINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEEB1g_", scope: !26, file: !25, line: 1898, type: !14, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10812 = distinct !DILocation(line: 1418, column: 18, scope: !10813, inlinedAt: !10814)
!10813 = distinct !DISubprogram(name: "write<core::mem::maybe_uninit::MaybeUninit<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtNtB6_3mem12maybe_uninit11MaybeUninitNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB1l_", scope: !793, file: !792, line: 1413, type: !14, scopeLine: 1413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10814 = distinct !DILocation(line: 274, column: 28, scope: !10815, inlinedAt: !10652)
!10815 = distinct !DILexicalBlock(scope: !10801, file: !2075, line: 273, column: 13)
!10816 = !{!10795, !10612, !10616}
!10817 = !DILocation(line: 2447, column: 9, scope: !10818, inlinedAt: !10819)
!10818 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCskAlUH1kY1DR_10polars_ooc", scope: !165, file: !164, line: 2443, type: !14, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10819 = distinct !DILocation(line: 3615, column: 24, scope: !10820, inlinedAt: !10821)
!10820 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !84, file: !79, line: 3614, type: !14, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10821 = distinct !DILocation(line: 3295, column: 41, scope: !10822, inlinedAt: !10823)
!10822 = distinct !DISubprogram(name: "fetch_or", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE8fetch_or", scope: !84, file: !79, line: 3293, type: !14, scopeLine: 3293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10823 = distinct !DILocation(line: 275, column: 24, scope: !10815, inlinedAt: !10652)
!10824 = !DILocation(line: 4137, column: 24, scope: !10825, inlinedAt: !10826)
!10825 = distinct !DISubprogram(name: "atomic_or<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic9atomic_orjjECskAlUH1kY1DR_10polars_ooc", scope: !80, file: !79, line: 4131, type: !14, scopeLine: 4131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10826 = distinct !DILocation(line: 3295, column: 26, scope: !10822, inlinedAt: !10823)
!10827 = !{!10795, !10799, !10612, !10616}
!10828 = !DILocation(line: 279, column: 9, scope: !10801, inlinedAt: !10652)
!10829 = !DILocation(line: 279, column: 24, scope: !10801, inlinedAt: !10652)
!10830 = !DILocation(line: 411, column: 39, scope: !10627, inlinedAt: !10629)
!10831 = !DILocation(line: 966, column: 9, scope: !10832, inlinedAt: !10833)
!10832 = distinct !DISubprogram(name: "map_err<(), polars_ooc::spill_file::CleanRequest, std::sync::mpmc::error::SendTimeoutError<polars_ooc::spill_file::CleanRequest>, fn(polars_ooc::spill_file::CleanRequest) -> std::sync::mpmc::error::SendTimeoutError<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultuNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE7map_errINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5error16SendTimeoutErrorBJ_ENcNtB1M_12Disconnected0EBN_", scope: !261, file: !151, line: 962, type: !14, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10833 = distinct !DILocation(line: 411, column: 41, scope: !10627, inlinedAt: !10629)
!10834 = !DILocation(line: 266, column: 20, scope: !10651, inlinedAt: !10652)
!10835 = !{!10795, !10799}
!10836 = !DILocation(line: 966, column: 15, scope: !10832, inlinedAt: !10833)
!10837 = !DILocation(line: 968, column: 23, scope: !10838, inlinedAt: !10833)
!10838 = distinct !DILexicalBlock(scope: !10832, file: !151, line: 968, column: 13)
!10839 = !DILocation(line: 968, column: 17, scope: !10832, inlinedAt: !10833)
!10840 = !DILocation(line: 968, column: 32, scope: !10832, inlinedAt: !10833)
!10841 = !DILocation(line: 967, column: 22, scope: !10842, inlinedAt: !10833)
!10842 = distinct !DILexicalBlock(scope: !10832, file: !151, line: 967, column: 13)
!10843 = !DILocation(line: 970, column: 5, scope: !10832, inlinedAt: !10833)
!10844 = !DILocation(line: 412, column: 5, scope: !10628, inlinedAt: !10629)
!10845 = !DILocation(line: 404, column: 5, scope: !10628, inlinedAt: !10629)
!10846 = !DILocation(line: 411, column: 79, scope: !10627, inlinedAt: !10629)
!10847 = !DILocation(line: 396, column: 60, scope: !10610)
!10848 = !DILocation(line: 396, column: 60, scope: !10599)
!10849 = !DILocation(line: 397, column: 51, scope: !10850)
!10850 = distinct !DILexicalBlock(scope: !10599, file: !2441, line: 397, column: 13)
!10851 = !DILocation(line: 397, column: 46, scope: !10850)
!10852 = !DILocation(line: 397, column: 60, scope: !10850)
!10853 = !DILocation(line: 397, column: 60, scope: !10599)
!10854 = !DILocation(line: 966, column: 15, scope: !10855, inlinedAt: !10856)
!10855 = distinct !DISubprogram(name: "map_err<(), std::sync::mpmc::error::SendTimeoutError<polars_ooc::spill_file::CleanRequest>, std::sync::mpsc::SendError<polars_ooc::spill_file::CleanRequest>, std::sync::mpmc::{impl#4}::send::{closure_env#0}<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultuINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5error16SendTimeoutErrorNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEE7map_errINtNtBQ_4mpsc9SendErrorB1I_ENCNvMs2_BO_INtBO_6SenderB1I_E4send0EB1M_", scope: !261, file: !151, line: 962, type: !14, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10856 = !DILocation(line: 399, column: 10, scope: !10599)
!10857 = !DILocation(line: 966, column: 9, scope: !10855, inlinedAt: !10856)
!10858 = !DILocation(line: 968, column: 27, scope: !10859, inlinedAt: !10856)
!10859 = distinct !DILexicalBlock(scope: !10855, file: !151, line: 968, column: 13)
!10860 = !DILocation(line: 968, column: 17, scope: !10855, inlinedAt: !10856)
!10861 = !{!10862}
!10862 = distinct !{!10862, !10863, !"_RNCNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB7_6SenderNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4send0BU_: argument 1"}
!10863 = distinct !{!10863, !"_RNCNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB7_6SenderNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4send0BU_"}
!10864 = !DILocation(line: 399, column: 30, scope: !10865, inlinedAt: !10868)
!10865 = distinct !DISubprogram(name: "{closure#0}<polars_ooc::spill_file::CleanRequest>", linkageName: "_RNCNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB7_6SenderNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4send0BU_", scope: !10866, file: !2441, line: 399, type: !14, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10866 = !DINamespace(name: "send", scope: !10867)
!10867 = !DINamespace(name: "{impl#4}", scope: !2078)
!10868 = distinct !DILocation(line: 968, column: 27, scope: !10859, inlinedAt: !10856)
!10869 = !{!10870}
!10870 = distinct !{!10870, !10863, !"_RNCNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB7_6SenderNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4send0BU_: argument 0"}
!10871 = !DILocation(line: 399, column: 24, scope: !10865, inlinedAt: !10868)
!10872 = !DILocation(line: 401, column: 45, scope: !10865, inlinedAt: !10868)
!10873 = !{!10870, !10862}
!10874 = !DILocation(line: 810, column: 1, scope: !10875, inlinedAt: !10876)
!10875 = distinct !DISubprogram(name: "drop_in_place<std::sync::mpmc::error::SendTimeoutError<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5error16SendTimeoutErrorNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEEB1J_", scope: !26, file: !25, line: 810, type: !14, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10876 = distinct !DILocation(line: 402, column: 9, scope: !10865, inlinedAt: !10868)
!10877 = !DILocation(line: 399, column: 18, scope: !10865, inlinedAt: !10868)
!10878 = !DILocation(line: 400, column: 44, scope: !10865, inlinedAt: !10868)
!10879 = !DILocation(line: 968, column: 31, scope: !10859, inlinedAt: !10856)
!10880 = !DILocation(line: 968, column: 32, scope: !10855, inlinedAt: !10856)
!10881 = !DILocation(line: 967, column: 22, scope: !10882, inlinedAt: !10856)
!10882 = distinct !DILexicalBlock(scope: !10855, file: !151, line: 967, column: 13)
!10883 = !DILocation(line: 970, column: 5, scope: !10855, inlinedAt: !10856)
!10884 = !DILocation(line: 402, column: 10, scope: !10599)
!10885 = !DILocation(line: 403, column: 6, scope: !10599)
!10886 = distinct !DISubprogram(name: "send<()>", linkageName: "_RNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB5_6SenderuE4sendCskAlUH1kY1DR_10polars_ooc", scope: !10600, file: !2441, line: 393, type: !14, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10887 = !DILocation(line: 394, column: 15, scope: !10886)
!10888 = !DILocation(line: 0, scope: !10886)
!10889 = !DILocation(line: 394, column: 9, scope: !10886)
!10890 = !DILocation(line: 395, column: 47, scope: !10891)
!10891 = distinct !DILexicalBlock(scope: !10886, file: !2441, line: 395, column: 13)
!10892 = !DILocation(line: 395, column: 61, scope: !10886)
!10893 = !DILocation(line: 2447, column: 9, scope: !10894, inlinedAt: !10895)
!10894 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCskAlUH1kY1DR_10polars_ooc", scope: !165, file: !164, line: 2443, type: !14, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10895 = distinct !DILocation(line: 3615, column: 24, scope: !10896, inlinedAt: !10897)
!10896 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !84, file: !79, line: 3614, type: !14, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10897 = distinct !DILocation(line: 2870, column: 43, scope: !10898, inlinedAt: !10899)
!10898 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !84, file: !79, line: 2868, type: !14, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10899 = distinct !DILocation(line: 177, column: 40, scope: !10900, inlinedAt: !10902)
!10900 = distinct !DILexicalBlock(scope: !10901, file: !2075, line: 176, column: 9)
!10901 = distinct !DISubprogram(name: "start_send<()>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc", scope: !4191, file: !2075, line: 175, type: !14, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10902 = distinct !DILocation(line: 410, column: 22, scope: !10903, inlinedAt: !10905)
!10903 = distinct !DILexicalBlock(scope: !10904, file: !2075, line: 409, column: 9)
!10904 = distinct !DISubprogram(name: "send<()>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4sendCskAlUH1kY1DR_10polars_ooc", scope: !4191, file: !2075, line: 404, type: !14, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10905 = distinct !DILocation(line: 396, column: 46, scope: !10906)
!10906 = distinct !DILexicalBlock(scope: !10886, file: !2441, line: 396, column: 13)
!10907 = !DILocation(line: 3905, column: 24, scope: !113, inlinedAt: !10908)
!10908 = distinct !DILocation(line: 2870, column: 26, scope: !10898, inlinedAt: !10899)
!10909 = !{!10910}
!10910 = distinct !{!10910, !10911, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc: argument 0"}
!10911 = distinct !{!10911, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc"}
!10912 = !DILocation(line: 2447, column: 9, scope: !10913, inlinedAt: !10914)
!10913 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<*mut std::sync::mpmc::list::Block<()>>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8OINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEEE3getCskAlUH1kY1DR_10polars_ooc", scope: !165, file: !164, line: 2443, type: !14, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10914 = distinct !DILocation(line: 2500, column: 16, scope: !10915, inlinedAt: !10916)
!10915 = distinct !DISubprogram(name: "as_ptr<std::sync::mpmc::list::Block<()>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEE6as_ptrCskAlUH1kY1DR_10polars_ooc", scope: !84, file: !79, line: 2499, type: !14, scopeLine: 2499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10916 = distinct !DILocation(line: 1732, column: 35, scope: !10917, inlinedAt: !10918)
!10917 = distinct !DISubprogram(name: "load<std::sync::mpmc::list::Block<()>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEE4loadCskAlUH1kY1DR_10polars_ooc", scope: !84, file: !79, line: 1730, type: !14, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10918 = distinct !DILocation(line: 178, column: 41, scope: !10919, inlinedAt: !10902)
!10919 = distinct !DILexicalBlock(scope: !10900, file: !2075, line: 177, column: 9)
!10920 = !DILocation(line: 3905, column: 24, scope: !2213, inlinedAt: !10921)
!10921 = distinct !DILocation(line: 1732, column: 18, scope: !10917, inlinedAt: !10918)
!10922 = !DILocation(line: 183, column: 16, scope: !10923, inlinedAt: !10902)
!10923 = distinct !DILexicalBlock(scope: !10924, file: !2075, line: 179, column: 9)
!10924 = distinct !DILexicalBlock(scope: !10919, file: !2075, line: 178, column: 9)
!10925 = !DILocation(line: 189, column: 26, scope: !10923, inlinedAt: !10902)
!10926 = !DILocation(line: 192, column: 16, scope: !10927, inlinedAt: !10902)
!10927 = distinct !DILexicalBlock(scope: !10923, file: !2075, line: 189, column: 13)
!10928 = !DILocation(line: 135, column: 23, scope: !10232, inlinedAt: !10929)
!10929 = distinct !DILocation(line: 193, column: 25, scope: !10927, inlinedAt: !10902)
!10930 = !DILocation(line: 127, column: 12, scope: !10232, inlinedAt: !10929)
!10931 = !DILocation(line: 132, column: 13, scope: !10232, inlinedAt: !10929)
!10932 = !DILocation(line: 1917, column: 50, scope: !10239, inlinedAt: !10933)
!10933 = distinct !DILocation(line: 781, column: 12, scope: !10242, inlinedAt: !10934)
!10934 = distinct !DILocation(line: 866, column: 14, scope: !10244, inlinedAt: !10935)
!10935 = distinct !DILocation(line: 128, column: 22, scope: !10246, inlinedAt: !10929)
!10936 = !DILocation(line: 781, column: 12, scope: !10242, inlinedAt: !10934)
!10937 = !DILocation(line: 3558, column: 28, scope: !10250, inlinedAt: !10938)
!10938 = distinct !DILocation(line: 128, column: 41, scope: !10232, inlinedAt: !10929)
!10939 = !DILocation(line: 25, column: 14, scope: !10255, inlinedAt: !10940)
!10940 = distinct !DILocation(line: 287, column: 13, scope: !10257, inlinedAt: !10941)
!10941 = distinct !DILocation(line: 129, column: 17, scope: !10247, inlinedAt: !10929)
!10942 = !DILocation(line: 201, column: 16, scope: !10927, inlinedAt: !10902)
!10943 = distinct !{!10943, !10260}
!10944 = !DILocation(line: 3905, column: 24, scope: !113, inlinedAt: !10945)
!10945 = distinct !DILocation(line: 2870, column: 26, scope: !10898, inlinedAt: !10946)
!10946 = distinct !DILocation(line: 194, column: 40, scope: !10927, inlinedAt: !10902)
!10947 = !DILocation(line: 3905, column: 24, scope: !2213, inlinedAt: !10948)
!10948 = distinct !DILocation(line: 1732, column: 18, scope: !10917, inlinedAt: !10949)
!10949 = distinct !DILocation(line: 195, column: 41, scope: !10927, inlinedAt: !10902)
!10950 = !DILocation(line: 0, scope: !10924, inlinedAt: !10902)
!10951 = !DILocation(line: 207, column: 16, scope: !10927, inlinedAt: !10902)
!10952 = !DILocation(line: 341, column: 9, scope: !10953, inlinedAt: !10954)
!10953 = distinct !DISubprogram(name: "new_zeroed<std::sync::mpmc::list::Block<()>>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEE10new_zeroedCskAlUH1kY1DR_10polars_ooc", scope: !2971, file: !2126, line: 340, type: !14, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10954 = distinct !DILocation(line: 73, column: 18, scope: !10955, inlinedAt: !10956)
!10955 = distinct !DISubprogram(name: "new<()>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockuE3newCskAlUH1kY1DR_10polars_ooc", scope: !10327, file: !2075, line: 66, type: !14, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10956 = distinct !DILocation(line: 202, column: 35, scope: !10927, inlinedAt: !10902)
!10957 = !DILocation(line: 341, column: 9, scope: !10953, inlinedAt: !10958)
!10958 = distinct !DILocation(line: 73, column: 18, scope: !10959, inlinedAt: !10960)
!10959 = !DILexicalBlockFile(scope: !10955, file: !2075, discriminator: 2)
!10960 = distinct !DILocation(line: 208, column: 41, scope: !10927, inlinedAt: !10902)
!10961 = !DILocation(line: 3998, column: 17, scope: !10962, inlinedAt: !10963)
!10962 = distinct !DISubprogram(name: "atomic_compare_exchange<*mut std::sync::mpmc::list::Block<()>>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic23atomic_compare_exchangeOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEECskAlUH1kY1DR_10polars_ooc", scope: !80, file: !79, line: 3969, type: !14, scopeLine: 3969, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10963 = distinct !DILocation(line: 1920, column: 18, scope: !10964, inlinedAt: !10965)
!10964 = distinct !DISubprogram(name: "compare_exchange<std::sync::mpmc::list::Block<()>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEE16compare_exchangeCskAlUH1kY1DR_10polars_ooc", scope: !84, file: !79, line: 1912, type: !14, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10965 = distinct !DILocation(line: 213, column: 22, scope: !10966, inlinedAt: !10902)
!10966 = distinct !DILexicalBlock(scope: !10927, file: !2075, line: 208, column: 17)
!10967 = !DILocation(line: 210, column: 20, scope: !10966, inlinedAt: !10902)
!10968 = !DILocation(line: 3890, column: 24, scope: !10969, inlinedAt: !10970)
!10969 = distinct !DISubprogram(name: "atomic_store<*mut std::sync::mpmc::list::Block<()>>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic12atomic_storeOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEECskAlUH1kY1DR_10polars_ooc", scope: !80, file: !79, line: 3885, type: !14, scopeLine: 3885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10970 = distinct !DILocation(line: 1763, column: 13, scope: !10971, inlinedAt: !10972)
!10971 = distinct !DISubprogram(name: "store<std::sync::mpmc::list::Block<()>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEE5storeCskAlUH1kY1DR_10polars_ooc", scope: !84, file: !79, line: 1760, type: !14, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10972 = distinct !DILocation(line: 221, column: 37, scope: !10966, inlinedAt: !10902)
!10973 = !DILocation(line: 3896, column: 2, scope: !10969, inlinedAt: !10970)
!10974 = !DILocation(line: 810, column: 1, scope: !10975, inlinedAt: !10976)
!10975 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<alloc::boxed::Box<std::sync::mpmc::list::Block<()>, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEEEECskAlUH1kY1DR_10polars_ooc", scope: !26, file: !25, line: 810, type: !294, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10976 = distinct !DILocation(line: 224, column: 21, scope: !10966, inlinedAt: !10902)
!10977 = !DILocation(line: 128, column: 14, scope: !2113, inlinedAt: !10978)
!10978 = distinct !DILocation(line: 229, column: 22, scope: !2117, inlinedAt: !10979)
!10979 = distinct !DILocation(line: 344, column: 9, scope: !2120, inlinedAt: !10980)
!10980 = distinct !DILocation(line: 462, column: 23, scope: !2122, inlinedAt: !10981)
!10981 = distinct !DILocation(line: 1921, column: 24, scope: !2228, inlinedAt: !10982)
!10982 = distinct !DILocation(line: 810, column: 1, scope: !2232, inlinedAt: !10983)
!10983 = distinct !DILocation(line: 810, column: 1, scope: !10975, inlinedAt: !10976)
!10984 = !DILocation(line: 0, scope: !10919, inlinedAt: !10902)
!10985 = !DILocation(line: 231, column: 28, scope: !10927, inlinedAt: !10902)
!10986 = !DILocation(line: 4084, column: 17, scope: !10716, inlinedAt: !10987)
!10987 = distinct !DILocation(line: 3130, column: 21, scope: !10988, inlinedAt: !10989)
!10988 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !84, file: !79, line: 3123, type: !14, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!10989 = distinct !DILocation(line: 234, column: 35, scope: !10990, inlinedAt: !10902)
!10990 = distinct !DILexicalBlock(scope: !10927, file: !2075, line: 231, column: 13)
!10991 = !DILocation(line: 0, scope: !10716, inlinedAt: !10987)
!10992 = !DILocation(line: 234, column: 13, scope: !10990, inlinedAt: !10902)
!10993 = !DILocation(line: 1917, column: 50, scope: !10724, inlinedAt: !10994)
!10994 = distinct !DILocation(line: 781, column: 12, scope: !10726, inlinedAt: !10995)
!10995 = distinct !DILocation(line: 866, column: 14, scope: !10728, inlinedAt: !10996)
!10996 = distinct !DILocation(line: 115, column: 18, scope: !10730, inlinedAt: !10997)
!10997 = distinct !DILocation(line: 254, column: 29, scope: !10990, inlinedAt: !10902)
!10998 = !DILocation(line: 781, column: 12, scope: !10726, inlinedAt: !10995)
!10999 = !DILocation(line: 1077, column: 12, scope: !10737, inlinedAt: !11000)
!11000 = distinct !DILocation(line: 114, column: 36, scope: !10733, inlinedAt: !10997)
!11001 = !DILocation(line: 3558, column: 28, scope: !10250, inlinedAt: !11002)
!11002 = distinct !DILocation(line: 115, column: 26, scope: !10732, inlinedAt: !10997)
!11003 = !DILocation(line: 25, column: 14, scope: !10742, inlinedAt: !11004)
!11004 = distinct !DILocation(line: 287, column: 13, scope: !10744, inlinedAt: !11005)
!11005 = distinct !DILocation(line: 116, column: 13, scope: !10731, inlinedAt: !10997)
!11006 = distinct !{!11006, !10260}
!11007 = !DILocation(line: 119, column: 23, scope: !10732, inlinedAt: !10997)
!11008 = !DILocation(line: 555, column: 18, scope: !10749, inlinedAt: !11009)
!11009 = distinct !DILocation(line: 119, column: 33, scope: !10732, inlinedAt: !10997)
!11010 = !DILocation(line: 242, column: 24, scope: !10990, inlinedAt: !10902)
!11011 = !DILocation(line: 1014, column: 15, scope: !11012, inlinedAt: !11013)
!11012 = distinct !DISubprogram(name: "unwrap<alloc::boxed::Box<std::sync::mpmc::list::Block<()>, alloc::alloc::Global>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEEE6unwrapCskAlUH1kY1DR_10polars_ooc", scope: !2871, file: !2869, line: 1013, type: !14, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11013 = distinct !DILocation(line: 243, column: 67, scope: !10990, inlinedAt: !10902)
!11014 = !DILocation(line: 1014, column: 9, scope: !11012, inlinedAt: !11013)
!11015 = !DILocation(line: 1016, column: 21, scope: !11012, inlinedAt: !11013)
!11016 = !DILocation(line: 3890, column: 24, scope: !10969, inlinedAt: !11017)
!11017 = distinct !DILocation(line: 1763, column: 13, scope: !10971, inlinedAt: !11018)
!11018 = distinct !DILocation(line: 244, column: 41, scope: !11019, inlinedAt: !10902)
!11019 = distinct !DILexicalBlock(scope: !10990, file: !2075, line: 243, column: 25)
!11020 = !DILocation(line: 3939, column: 24, scope: !11021, inlinedAt: !11022)
!11021 = distinct !DISubprogram(name: "atomic_add<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_addjjECskAlUH1kY1DR_10polars_ooc", scope: !80, file: !79, line: 3933, type: !14, scopeLine: 3933, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11022 = distinct !DILocation(line: 3162, column: 26, scope: !11023, inlinedAt: !11024)
!11023 = distinct !DISubprogram(name: "fetch_add", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE9fetch_add", scope: !84, file: !79, line: 3160, type: !14, scopeLine: 3160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11024 = distinct !DILocation(line: 245, column: 41, scope: !11019, inlinedAt: !10902)
!11025 = !DILocation(line: 3890, column: 24, scope: !10969, inlinedAt: !11026)
!11026 = distinct !DILocation(line: 1763, column: 13, scope: !10971, inlinedAt: !11027)
!11027 = distinct !DILocation(line: 246, column: 39, scope: !11019, inlinedAt: !10902)
!11028 = !DILocation(line: 265, column: 12, scope: !11029, inlinedAt: !11030)
!11029 = distinct !DISubprogram(name: "write<()>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE5writeCskAlUH1kY1DR_10polars_ooc", scope: !4191, file: !2075, line: 263, type: !294, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11030 = distinct !DILocation(line: 411, column: 23, scope: !10903, inlinedAt: !10905)
!11031 = !DILocation(line: 3905, column: 24, scope: !113, inlinedAt: !11032)
!11032 = distinct !DILocation(line: 2870, column: 26, scope: !10898, inlinedAt: !11033)
!11033 = distinct !DILocation(line: 0, scope: !10927, inlinedAt: !10902)
!11034 = !DILocation(line: 3905, column: 24, scope: !2213, inlinedAt: !11035)
!11035 = distinct !DILocation(line: 1732, column: 18, scope: !10917, inlinedAt: !11033)
!11036 = !DILocation(line: 175, column: 5, scope: !10901, inlinedAt: !10902)
!11037 = !DILocation(line: 810, column: 1, scope: !10975, inlinedAt: !11038)
!11038 = distinct !DILocation(line: 260, column: 5, scope: !10924, inlinedAt: !10902)
!11039 = !DILocation(line: 128, column: 14, scope: !2113, inlinedAt: !11040)
!11040 = distinct !DILocation(line: 229, column: 22, scope: !2117, inlinedAt: !11041)
!11041 = distinct !DILocation(line: 344, column: 9, scope: !2120, inlinedAt: !11042)
!11042 = distinct !DILocation(line: 462, column: 23, scope: !2122, inlinedAt: !11043)
!11043 = distinct !DILocation(line: 1921, column: 24, scope: !2228, inlinedAt: !11044)
!11044 = distinct !DILocation(line: 810, column: 1, scope: !2232, inlinedAt: !11045)
!11045 = distinct !DILocation(line: 810, column: 1, scope: !10975, inlinedAt: !11038)
!11046 = !DILocation(line: 0, scope: !10904, inlinedAt: !10905)
!11047 = !DILocation(line: 0, scope: !10923, inlinedAt: !10902)
!11048 = !DILocation(line: 810, column: 1, scope: !10975, inlinedAt: !11049)
!11049 = distinct !DILocation(line: 260, column: 5, scope: !10924, inlinedAt: !10902)
!11050 = !DILocation(line: 128, column: 14, scope: !2113, inlinedAt: !11051)
!11051 = distinct !DILocation(line: 229, column: 22, scope: !2117, inlinedAt: !11052)
!11052 = distinct !DILocation(line: 344, column: 9, scope: !2120, inlinedAt: !11053)
!11053 = distinct !DILocation(line: 462, column: 23, scope: !2122, inlinedAt: !11054)
!11054 = distinct !DILocation(line: 1921, column: 24, scope: !2228, inlinedAt: !11055)
!11055 = distinct !DILocation(line: 810, column: 1, scope: !2232, inlinedAt: !11056)
!11056 = distinct !DILocation(line: 810, column: 1, scope: !10975, inlinedAt: !11049)
!11057 = !DILocation(line: 273, column: 24, scope: !11058, inlinedAt: !11030)
!11058 = distinct !DILexicalBlock(scope: !11059, file: !2075, line: 271, column: 9)
!11059 = distinct !DILexicalBlock(scope: !11029, file: !2075, line: 270, column: 9)
!11060 = !DILocation(line: 252, column: 39, scope: !11061, inlinedAt: !11062)
!11061 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<()>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotuEE13get_uncheckedCskAlUH1kY1DR_10polars_ooc", scope: !2155, file: !371, line: 239, type: !14, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11062 = distinct !DILocation(line: 646, column: 26, scope: !11063, inlinedAt: !11064)
!11063 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<()>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotuE13get_uncheckedjECskAlUH1kY1DR_10polars_ooc", scope: !2159, file: !2158, line: 639, type: !14, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11064 = distinct !DILocation(line: 273, column: 39, scope: !11058, inlinedAt: !11030)
!11065 = !DILocation(line: 252, column: 13, scope: !11061, inlinedAt: !11062)
!11066 = !DILocation(line: 253, column: 13, scope: !11061, inlinedAt: !11062)
!11067 = !DILocation(line: 4137, column: 24, scope: !11068, inlinedAt: !11069)
!11068 = distinct !DISubprogram(name: "atomic_or<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic9atomic_orjjECskAlUH1kY1DR_10polars_ooc", scope: !80, file: !79, line: 4131, type: !14, scopeLine: 4131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11069 = distinct !DILocation(line: 3295, column: 26, scope: !11070, inlinedAt: !11071)
!11070 = distinct !DISubprogram(name: "fetch_or", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE8fetch_or", scope: !84, file: !79, line: 3293, type: !14, scopeLine: 3293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11071 = distinct !DILocation(line: 275, column: 24, scope: !11072, inlinedAt: !11030)
!11072 = distinct !DILexicalBlock(scope: !11058, file: !2075, line: 273, column: 13)
!11073 = !DILocation(line: 279, column: 9, scope: !11058, inlinedAt: !11030)
!11074 = !DILocation(line: 279, column: 24, scope: !11058, inlinedAt: !11030)
!11075 = !DILocation(line: 966, column: 9, scope: !11076, inlinedAt: !11077)
!11076 = distinct !DISubprogram(name: "map_err<(), std::sync::mpmc::error::SendTimeoutError<()>, std::sync::mpsc::SendError<()>, std::sync::mpmc::{impl#4}::send::{closure_env#0}<()>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultuINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5error16SendTimeoutErroruEE7map_errINtNtBQ_4mpsc9SendErroruENCNvMs2_BO_INtBO_6SenderuE4send0ECskAlUH1kY1DR_10polars_ooc", scope: !261, file: !151, line: 962, type: !14, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11077 = !DILocation(line: 399, column: 10, scope: !10886)
!11078 = !DILocation(line: 397, column: 46, scope: !11079)
!11079 = distinct !DILexicalBlock(scope: !10886, file: !2441, line: 397, column: 13)
!11080 = !DILocation(line: 397, column: 60, scope: !10886)
!11081 = !{!"branch_weights", i32 2145679065, i32 -2147483648, i32 1804583}
!11082 = !DILocation(line: 401, column: 45, scope: !11083, inlinedAt: !11084)
!11083 = distinct !DISubprogram(name: "{closure#0}<()>", linkageName: "_RNCNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB7_6SenderuE4send0CskAlUH1kY1DR_10polars_ooc", scope: !10866, file: !2441, line: 399, type: !14, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11084 = distinct !DILocation(line: 968, column: 27, scope: !11085, inlinedAt: !11077)
!11085 = distinct !DILexicalBlock(scope: !11076, file: !151, line: 968, column: 13)
!11086 = !DILocation(line: 403, column: 6, scope: !10886)
!11087 = distinct !DISubprogram(name: "is_dead", linkageName: "_RNvMs5_NtCskAlUH1kY1DR_10polars_ooc13spill_contextNtB5_16WeakSpillContext7is_dead", scope: !11088, file: !4991, line: 258, type: !14, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11088 = !DINamespace(name: "WeakSpillContext", scope: !75)
!11089 = !DILocation(line: 259, column: 9, scope: !11087)
!11090 = !DILocation(line: 2447, column: 9, scope: !6280, inlinedAt: !11091)
!11091 = distinct !DILocation(line: 3615, column: 24, scope: !6282, inlinedAt: !11092)
!11092 = distinct !DILocation(line: 2870, column: 43, scope: !6284, inlinedAt: !11093)
!11093 = distinct !DILocation(line: 145, column: 25, scope: !6277, inlinedAt: !11094)
!11094 = distinct !DILocation(line: 259, column: 16, scope: !11087)
!11095 = !DILocation(line: 3904, column: 24, scope: !1643, inlinedAt: !11096)
!11096 = distinct !DILocation(line: 2870, column: 26, scope: !6284, inlinedAt: !11093)
!11097 = !DILocation(line: 259, column: 32, scope: !11087)
!11098 = !DILocation(line: 260, column: 6, scope: !11087)
!11099 = distinct !DISubprogram(name: "upgrade", linkageName: "_RNvMs5_NtCskAlUH1kY1DR_10polars_ooc13spill_contextNtB5_16WeakSpillContext7upgrade", scope: !11088, file: !4991, line: 242, type: !14, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11100 = !DILocation(line: 243, column: 12, scope: !11099)
!11101 = !DILocation(line: 2447, column: 9, scope: !6280, inlinedAt: !11102)
!11102 = distinct !DILocation(line: 3615, column: 24, scope: !6282, inlinedAt: !11103)
!11103 = distinct !DILocation(line: 2870, column: 43, scope: !6284, inlinedAt: !11104)
!11104 = distinct !DILocation(line: 145, column: 25, scope: !6277, inlinedAt: !11105)
!11105 = distinct !DILocation(line: 243, column: 19, scope: !11099)
!11106 = !DILocation(line: 3904, column: 24, scope: !1643, inlinedAt: !11107)
!11107 = distinct !DILocation(line: 2870, column: 26, scope: !6284, inlinedAt: !11104)
!11108 = !DILocation(line: 243, column: 35, scope: !11099)
!11109 = !DILocation(line: 2447, column: 9, scope: !11110, inlinedAt: !11111)
!11110 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<u64>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8yEE3getCskAlUH1kY1DR_10polars_ooc", scope: !165, file: !164, line: 2443, type: !14, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11111 = !DILocation(line: 3615, column: 24, scope: !11112, inlinedAt: !11113)
!11112 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicyE6as_ptr", scope: !84, file: !79, line: 3614, type: !14, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11113 = !DILocation(line: 3162, column: 42, scope: !11114, inlinedAt: !11115)
!11114 = distinct !DISubprogram(name: "fetch_add", linkageName: "_RNvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicyE9fetch_add", scope: !84, file: !79, line: 3160, type: !14, scopeLine: 3160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11115 = !DILocation(line: 247, column: 25, scope: !11099)
!11116 = !DILocation(line: 3937, column: 24, scope: !11117, inlinedAt: !11118)
!11117 = distinct !DISubprogram(name: "atomic_add<u64, u64>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_addyyECskAlUH1kY1DR_10polars_ooc", scope: !80, file: !79, line: 3933, type: !14, scopeLine: 3933, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11118 = !DILocation(line: 3162, column: 26, scope: !11114, inlinedAt: !11115)
!11119 = !DILocation(line: 248, column: 13, scope: !11099)
!11120 = !DILocation(line: 248, column: 22, scope: !11099)
!11121 = !DILocation(line: 3904, column: 24, scope: !1643, inlinedAt: !11122)
!11122 = distinct !DILocation(line: 2870, column: 26, scope: !6284, inlinedAt: !11123)
!11123 = distinct !DILocation(line: 145, column: 25, scope: !6277, inlinedAt: !11124)
!11124 = distinct !DILocation(line: 251, column: 19, scope: !11125)
!11125 = distinct !DILexicalBlock(scope: !11099, file: !4991, line: 248, column: 9)
!11126 = !DILocation(line: 251, column: 12, scope: !11125)
!11127 = !DILocation(line: 810, column: 1, scope: !9582, inlinedAt: !11128)
!11128 = distinct !DILocation(line: 256, column: 5, scope: !11099)
!11129 = !DILocation(line: 0, scope: !11130)
!11130 = !DILexicalBlockFile(scope: !11099, file: !1534, discriminator: 0)
!11131 = !DILocation(line: 256, column: 5, scope: !11099)
!11132 = !DILocation(line: 256, column: 6, scope: !11099)
!11133 = !DILocation(line: 0, scope: !11099)
!11134 = distinct !DISubprogram(name: "lock<polars_ooc::spill_token::LockState>", linkageName: "_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtCskAlUH1kY1DR_10polars_ooc11spill_token9LockStateE4lockB11_", scope: !97, file: !96, line: 490, type: !14, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11135 = !DILocation(line: 3989, column: 17, scope: !78, inlinedAt: !11136)
!11136 = distinct !DILocation(line: 3065, column: 26, scope: !11137, inlinedAt: !11138)
!11137 = distinct !DISubprogram(name: "compare_exchange", linkageName: "_RNvMs14_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicmE16compare_exchange", scope: !84, file: !79, line: 3059, type: !14, scopeLine: 3059, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11138 = !DILocation(line: 32, column: 23, scope: !11139, inlinedAt: !11140)
!11139 = distinct !DISubprogram(name: "lock", linkageName: "_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4lock", scope: !88, file: !87, line: 31, type: !14, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11140 = !DILocation(line: 492, column: 24, scope: !11134)
!11141 = !DILocation(line: 32, column: 12, scope: !11139, inlinedAt: !11140)
!11142 = !DILocation(line: 33, column: 18, scope: !11139, inlinedAt: !11140)
!11143 = !DILocation(line: 3904, column: 24, scope: !113, inlinedAt: !11144)
!11144 = distinct !DILocation(line: 2870, column: 26, scope: !115, inlinedAt: !11145)
!11145 = distinct !DILocation(line: 464, column: 31, scope: !117, inlinedAt: !11146)
!11146 = distinct !DILocation(line: 616, column: 6, scope: !122, inlinedAt: !11147)
!11147 = distinct !DILocation(line: 221, column: 5, scope: !124, inlinedAt: !11148)
!11148 = distinct !DILocation(line: 121, column: 24, scope: !129, inlinedAt: !11149)
!11149 = distinct !DILocation(line: 720, column: 40, scope: !11150, inlinedAt: !11151)
!11150 = distinct !DISubprogram(name: "new<polars_ooc::spill_token::LockState>", linkageName: "_RNvMs9_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_10MutexGuardNtNtCskAlUH1kY1DR_10polars_ooc11spill_token9LockStateE3newB17_", scope: !110, file: !96, line: 719, type: !14, scopeLine: 719, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11151 = !DILocation(line: 493, column: 13, scope: !11134)
!11152 = !DILocation(line: 464, column: 12, scope: !117, inlinedAt: !11146)
!11153 = !DILocation(line: 476, column: 13, scope: !117, inlinedAt: !11146)
!11154 = !DILocation(line: 616, column: 5, scope: !122, inlinedAt: !11147)
!11155 = !DILocation(line: 123, column: 25, scope: !138, inlinedAt: !11149)
!11156 = !DILocation(line: 0, scope: !117, inlinedAt: !11146)
!11157 = !DILocation(line: 720, column: 28, scope: !11150, inlinedAt: !11151)
!11158 = !DILocation(line: 3904, column: 24, scope: !141, inlinedAt: !11159)
!11159 = distinct !DILocation(line: 741, column: 18, scope: !143, inlinedAt: !11160)
!11160 = distinct !DILocation(line: 141, column: 21, scope: !145, inlinedAt: !11161)
!11161 = distinct !DILocation(line: 123, column: 17, scope: !138, inlinedAt: !11149)
!11162 = !DILocation(line: 123, column: 12, scope: !138, inlinedAt: !11149)
!11163 = !DILocation(line: 720, column: 9, scope: !11150, inlinedAt: !11151)
!11164 = !DILocation(line: 495, column: 6, scope: !11134)
!11165 = !DILocation(line: 3989, column: 17, scope: !78, inlinedAt: !11166)
!11166 = distinct !DILocation(line: 3065, column: 26, scope: !4461, inlinedAt: !11167)
!11167 = !DILocation(line: 32, column: 23, scope: !4463, inlinedAt: !11168)
!11168 = !DILocation(line: 492, column: 24, scope: !4465)
!11169 = !DILocation(line: 32, column: 12, scope: !4463, inlinedAt: !11168)
!11170 = !DILocation(line: 33, column: 18, scope: !4463, inlinedAt: !11168)
!11171 = !DILocation(line: 3904, column: 24, scope: !113, inlinedAt: !11172)
!11172 = distinct !DILocation(line: 2870, column: 26, scope: !115, inlinedAt: !11173)
!11173 = distinct !DILocation(line: 464, column: 31, scope: !117, inlinedAt: !11174)
!11174 = distinct !DILocation(line: 616, column: 6, scope: !122, inlinedAt: !11175)
!11175 = distinct !DILocation(line: 221, column: 5, scope: !124, inlinedAt: !11176)
!11176 = distinct !DILocation(line: 121, column: 24, scope: !129, inlinedAt: !11177)
!11177 = distinct !DILocation(line: 720, column: 40, scope: !4479, inlinedAt: !11178)
!11178 = !DILocation(line: 493, column: 13, scope: !4465)
!11179 = !DILocation(line: 464, column: 12, scope: !117, inlinedAt: !11174)
!11180 = !DILocation(line: 476, column: 13, scope: !117, inlinedAt: !11174)
!11181 = !DILocation(line: 616, column: 5, scope: !122, inlinedAt: !11175)
!11182 = !DILocation(line: 123, column: 25, scope: !138, inlinedAt: !11177)
!11183 = !DILocation(line: 0, scope: !117, inlinedAt: !11174)
!11184 = !DILocation(line: 720, column: 28, scope: !4479, inlinedAt: !11178)
!11185 = !DILocation(line: 3904, column: 24, scope: !141, inlinedAt: !11186)
!11186 = distinct !DILocation(line: 741, column: 18, scope: !143, inlinedAt: !11187)
!11187 = distinct !DILocation(line: 141, column: 21, scope: !145, inlinedAt: !11188)
!11188 = distinct !DILocation(line: 123, column: 17, scope: !138, inlinedAt: !11177)
!11189 = !DILocation(line: 123, column: 12, scope: !138, inlinedAt: !11177)
!11190 = !DILocation(line: 720, column: 9, scope: !4479, inlinedAt: !11178)
!11191 = !DILocation(line: 495, column: 6, scope: !4465)
!11192 = distinct !DISubprogram(name: "lock<std::sync::mpmc::zero::Inner>", linkageName: "_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCskAlUH1kY1DR_10polars_ooc", scope: !97, file: !96, line: 490, type: !14, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11193 = !DILocation(line: 3989, column: 17, scope: !78, inlinedAt: !11194)
!11194 = distinct !DILocation(line: 3065, column: 26, scope: !11195, inlinedAt: !11196)
!11195 = distinct !DISubprogram(name: "compare_exchange", linkageName: "_RNvMs14_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicmE16compare_exchange", scope: !84, file: !79, line: 3059, type: !14, scopeLine: 3059, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11196 = !DILocation(line: 32, column: 23, scope: !11197, inlinedAt: !11198)
!11197 = distinct !DISubprogram(name: "lock", linkageName: "_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4lock", scope: !88, file: !87, line: 31, type: !14, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11198 = !DILocation(line: 492, column: 24, scope: !11192)
!11199 = !DILocation(line: 32, column: 12, scope: !11197, inlinedAt: !11198)
!11200 = !DILocation(line: 33, column: 18, scope: !11197, inlinedAt: !11198)
!11201 = !DILocation(line: 3904, column: 24, scope: !113, inlinedAt: !11202)
!11202 = distinct !DILocation(line: 2870, column: 26, scope: !115, inlinedAt: !11203)
!11203 = distinct !DILocation(line: 464, column: 31, scope: !117, inlinedAt: !11204)
!11204 = distinct !DILocation(line: 616, column: 6, scope: !122, inlinedAt: !11205)
!11205 = distinct !DILocation(line: 221, column: 5, scope: !124, inlinedAt: !11206)
!11206 = distinct !DILocation(line: 121, column: 24, scope: !129, inlinedAt: !11207)
!11207 = distinct !DILocation(line: 720, column: 40, scope: !11208, inlinedAt: !11209)
!11208 = distinct !DISubprogram(name: "new<std::sync::mpmc::zero::Inner>", linkageName: "_RNvMs9_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_10MutexGuardNtNtNtB9_4mpmc4zero5InnerE3newCskAlUH1kY1DR_10polars_ooc", scope: !110, file: !96, line: 719, type: !14, scopeLine: 719, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11209 = !DILocation(line: 493, column: 13, scope: !11192)
!11210 = !DILocation(line: 464, column: 12, scope: !117, inlinedAt: !11204)
!11211 = !DILocation(line: 476, column: 13, scope: !117, inlinedAt: !11204)
!11212 = !DILocation(line: 616, column: 5, scope: !122, inlinedAt: !11205)
!11213 = !DILocation(line: 123, column: 25, scope: !138, inlinedAt: !11207)
!11214 = !DILocation(line: 0, scope: !117, inlinedAt: !11204)
!11215 = !DILocation(line: 720, column: 28, scope: !11208, inlinedAt: !11209)
!11216 = !DILocation(line: 3904, column: 24, scope: !141, inlinedAt: !11217)
!11217 = distinct !DILocation(line: 741, column: 18, scope: !143, inlinedAt: !11218)
!11218 = distinct !DILocation(line: 141, column: 21, scope: !145, inlinedAt: !11219)
!11219 = distinct !DILocation(line: 123, column: 17, scope: !138, inlinedAt: !11207)
!11220 = !DILocation(line: 123, column: 12, scope: !138, inlinedAt: !11207)
!11221 = !DILocation(line: 720, column: 9, scope: !11208, inlinedAt: !11209)
!11222 = !DILocation(line: 495, column: 6, scope: !11192)
!11223 = !DILocation(line: 3989, column: 17, scope: !78, inlinedAt: !11224)
!11224 = distinct !DILocation(line: 3065, column: 26, scope: !8050, inlinedAt: !11225)
!11225 = !DILocation(line: 32, column: 23, scope: !8052, inlinedAt: !11226)
!11226 = !DILocation(line: 492, column: 24, scope: !8054)
!11227 = !DILocation(line: 32, column: 12, scope: !8052, inlinedAt: !11226)
!11228 = !DILocation(line: 33, column: 18, scope: !8052, inlinedAt: !11226)
!11229 = !DILocation(line: 3904, column: 24, scope: !113, inlinedAt: !11230)
!11230 = distinct !DILocation(line: 2870, column: 26, scope: !115, inlinedAt: !11231)
!11231 = distinct !DILocation(line: 464, column: 31, scope: !117, inlinedAt: !11232)
!11232 = distinct !DILocation(line: 616, column: 6, scope: !122, inlinedAt: !11233)
!11233 = distinct !DILocation(line: 221, column: 5, scope: !124, inlinedAt: !11234)
!11234 = distinct !DILocation(line: 121, column: 24, scope: !129, inlinedAt: !11235)
!11235 = distinct !DILocation(line: 720, column: 40, scope: !8068, inlinedAt: !11236)
!11236 = !DILocation(line: 493, column: 13, scope: !8054)
!11237 = !DILocation(line: 464, column: 12, scope: !117, inlinedAt: !11232)
!11238 = !DILocation(line: 476, column: 13, scope: !117, inlinedAt: !11232)
!11239 = !DILocation(line: 616, column: 5, scope: !122, inlinedAt: !11233)
!11240 = !DILocation(line: 123, column: 25, scope: !138, inlinedAt: !11235)
!11241 = !DILocation(line: 0, scope: !117, inlinedAt: !11232)
!11242 = !DILocation(line: 720, column: 28, scope: !8068, inlinedAt: !11236)
!11243 = !DILocation(line: 3904, column: 24, scope: !141, inlinedAt: !11244)
!11244 = distinct !DILocation(line: 741, column: 18, scope: !143, inlinedAt: !11245)
!11245 = distinct !DILocation(line: 141, column: 21, scope: !145, inlinedAt: !11246)
!11246 = distinct !DILocation(line: 123, column: 17, scope: !138, inlinedAt: !11235)
!11247 = !DILocation(line: 123, column: 12, scope: !138, inlinedAt: !11235)
!11248 = !DILocation(line: 720, column: 9, scope: !8068, inlinedAt: !11236)
!11249 = !DILocation(line: 495, column: 6, scope: !8054)
!11250 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs7_NtCskAlUH1kY1DR_10polars_ooc13spill_contextNtB5_22MostRecentSpillContext3new", scope: !11251, file: !4991, line: 305, type: !14, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11251 = !DINamespace(name: "MostRecentSpillContext", scope: !75)
!11252 = !DILocation(line: 306, column: 14, scope: !11250)
!11253 = !DILocation(line: 310, column: 6, scope: !11250)
!11254 = distinct !DISubprogram(name: "send<alloc::sync::Arc<core::sync::atomic::Atomic<usize>, alloc::alloc::Global>>", linkageName: "_RNvMs_NtNtCslovz2ii29zg_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicjEEE4sendCskAlUH1kY1DR_10polars_ooc", scope: !4639, file: !4445, line: 333, type: !14, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11255 = !DILocation(line: 338, column: 26, scope: !11254)
!11256 = !DILocation(line: 24, column: 17, scope: !11257, inlinedAt: !11255)
!11257 = distinct !DISubprogram(name: "default", linkageName: "_RNvXsc_NtCslovz2ii29zg_17crossbeam_channel6selectNtB5_5TokenNtNtCscgRAwXFJnXP_4core7default7Default7default", scope: !9684, file: !3462, line: 24, type: !14, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11258 = !DILocation(line: 3904, column: 24, scope: !113, inlinedAt: !11259)
!11259 = distinct !DILocation(line: 2870, column: 26, scope: !11260, inlinedAt: !11261)
!11260 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !84, file: !79, line: 2868, type: !14, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11261 = distinct !DILocation(line: 144, column: 34, scope: !11262, inlinedAt: !11264)
!11262 = distinct !DILexicalBlock(scope: !11263, file: !4445, line: 143, column: 9)
!11263 = distinct !DISubprogram(name: "start_send<alloc::sync::Arc<core::sync::atomic::Atomic<usize>, alloc::alloc::Global>>", linkageName: "_RNvMs_NtNtCslovz2ii29zg_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicjEEE10start_sendCskAlUH1kY1DR_10polars_ooc", scope: !4639, file: !4445, line: 142, type: !14, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11264 = distinct !DILocation(line: 343, column: 25, scope: !11265)
!11265 = distinct !DILexicalBlock(scope: !11266, file: !4445, line: 341, column: 13)
!11266 = distinct !DILexicalBlock(scope: !11254, file: !4445, line: 338, column: 9)
!11267 = !{!11268}
!11268 = distinct !{!11268, !11269, !"_RNvMs_NtNtCslovz2ii29zg_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicjEEE10start_sendCskAlUH1kY1DR_10polars_ooc: argument 0:pre.rot:pre.rot"}
!11269 = distinct !{!11269, !"_RNvMs_NtNtCslovz2ii29zg_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicjEEE10start_sendCskAlUH1kY1DR_10polars_ooc"}
!11270 = !DILocation(line: 148, column: 23, scope: !11271, inlinedAt: !11264)
!11271 = distinct !DILexicalBlock(scope: !11262, file: !4445, line: 144, column: 9)
!11272 = !DILocation(line: 148, column: 16, scope: !11271, inlinedAt: !11264)
!11273 = !{!11274}
!11274 = distinct !{!11274, !11269, !"_RNvMs_NtNtCslovz2ii29zg_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicjEEE10start_sendCskAlUH1kY1DR_10polars_ooc: argument 0"}
!11275 = !DILocation(line: 343, column: 25, scope: !11265)
!11276 = !DILocation(line: 155, column: 32, scope: !11271, inlinedAt: !11264)
!11277 = !DILocation(line: 155, column: 25, scope: !11271, inlinedAt: !11264)
!11278 = !DILocation(line: 156, column: 32, scope: !11279, inlinedAt: !11264)
!11279 = distinct !DILexicalBlock(scope: !11271, file: !4445, line: 155, column: 13)
!11280 = !DILocation(line: 156, column: 30, scope: !11279, inlinedAt: !11264)
!11281 = !DILocation(line: 156, column: 23, scope: !11279, inlinedAt: !11264)
!11282 = !DILocation(line: 160, column: 33, scope: !11283, inlinedAt: !11264)
!11283 = distinct !DILexicalBlock(scope: !11279, file: !4445, line: 156, column: 13)
!11284 = !DILocation(line: 252, column: 39, scope: !11285, inlinedAt: !11286)
!11285 = distinct !DISubprogram(name: "get_unchecked<crossbeam_channel::flavors::array::Slot<alloc::sync::Arc<core::sync::atomic::Atomic<usize>, alloc::alloc::Global>>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtCslovz2ii29zg_17crossbeam_channel7flavors5array4SlotINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB9_4sync6atomic6AtomicjEEEE13get_uncheckedCskAlUH1kY1DR_10polars_ooc", scope: !2155, file: !371, line: 239, type: !14, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11286 = distinct !DILocation(line: 646, column: 26, scope: !11287, inlinedAt: !11288)
!11287 = distinct !DISubprogram(name: "get_unchecked<crossbeam_channel::flavors::array::Slot<alloc::sync::Arc<core::sync::atomic::Atomic<usize>, alloc::alloc::Global>>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtCslovz2ii29zg_17crossbeam_channel7flavors5array4SlotINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB5_4sync6atomic6AtomicjEEE13get_uncheckedjECskAlUH1kY1DR_10polars_ooc", scope: !2159, file: !2158, line: 639, type: !14, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11288 = distinct !DILocation(line: 160, column: 45, scope: !11283, inlinedAt: !11264)
!11289 = !DILocation(line: 252, column: 13, scope: !11285, inlinedAt: !11286)
!11290 = !DILocation(line: 253, column: 13, scope: !11285, inlinedAt: !11286)
!11291 = !DILocation(line: 3905, column: 24, scope: !113, inlinedAt: !11292)
!11292 = distinct !DILocation(line: 2870, column: 26, scope: !11260, inlinedAt: !11293)
!11293 = distinct !DILocation(line: 161, column: 36, scope: !11294, inlinedAt: !11264)
!11294 = distinct !DILexicalBlock(scope: !11283, file: !4445, line: 160, column: 13)
!11295 = !DILocation(line: 164, column: 16, scope: !11296, inlinedAt: !11264)
!11296 = distinct !DILexicalBlock(scope: !11294, file: !4445, line: 161, column: 13)
!11297 = !DILocation(line: 193, column: 42, scope: !11296, inlinedAt: !11264)
!11298 = !DILocation(line: 2511, column: 13, scope: !11299, inlinedAt: !11300)
!11299 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !668, file: !667, line: 2510, type: !14, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11300 = distinct !DILocation(line: 193, column: 29, scope: !11296, inlinedAt: !11264)
!11301 = !DILocation(line: 193, column: 59, scope: !11296, inlinedAt: !11264)
!11302 = !DILocation(line: 193, column: 23, scope: !11296, inlinedAt: !11264)
!11303 = !DILocation(line: 165, column: 35, scope: !11296, inlinedAt: !11264)
!11304 = !DILocation(line: 165, column: 47, scope: !11296, inlinedAt: !11264)
!11305 = !DILocation(line: 207, column: 12, scope: !3770, inlinedAt: !11306)
!11306 = distinct !DILocation(line: 207, column: 25, scope: !11296, inlinedAt: !11264)
!11307 = !DILocation(line: 218, column: 13, scope: !3770, inlinedAt: !11306)
!11308 = !DILocation(line: 221, column: 12, scope: !3770, inlinedAt: !11306)
!11309 = !DILocation(line: 2499, column: 26, scope: !3779, inlinedAt: !11310)
!11310 = distinct !DILocation(line: 2583, column: 42, scope: !3783, inlinedAt: !11311)
!11311 = distinct !DILocation(line: 614, column: 31, scope: !3786, inlinedAt: !11312)
!11312 = distinct !DILocation(line: 198, column: 28, scope: !3788, inlinedAt: !11313)
!11313 = distinct !DILocation(line: 784, column: 35, scope: !3791, inlinedAt: !11314)
!11314 = distinct !DILocation(line: 866, column: 14, scope: !3794, inlinedAt: !11315)
!11315 = distinct !DILocation(line: 208, column: 22, scope: !3796, inlinedAt: !11306)
!11316 = !DILocation(line: 25, column: 14, scope: !3799, inlinedAt: !11317)
!11317 = distinct !DILocation(line: 287, column: 13, scope: !3801, inlinedAt: !11318)
!11318 = distinct !DILocation(line: 209, column: 17, scope: !3797, inlinedAt: !11306)
!11319 = !DILocation(line: 1917, column: 50, scope: !3804, inlinedAt: !11320)
!11320 = distinct !DILocation(line: 781, column: 12, scope: !3792, inlinedAt: !11314)
!11321 = !DILocation(line: 781, column: 12, scope: !3792, inlinedAt: !11314)
!11322 = !DILocation(line: 222, column: 27, scope: !3770, inlinedAt: !11306)
!11323 = !DILocation(line: 221, column: 9, scope: !3770, inlinedAt: !11306)
!11324 = !DILocation(line: 0, scope: !11263, inlinedAt: !11264)
!11325 = !DILocation(line: 3904, column: 24, scope: !113, inlinedAt: !11326)
!11326 = distinct !DILocation(line: 2870, column: 26, scope: !11260, inlinedAt: !11327)
!11327 = distinct !DILocation(line: 208, column: 34, scope: !11296, inlinedAt: !11264)
!11328 = !DILocation(line: 193, column: 20, scope: !11296, inlinedAt: !11264)
!11329 = !DILocation(line: 4390, column: 23, scope: !1687, inlinedAt: !11330)
!11330 = distinct !DILocation(line: 194, column: 17, scope: !11296, inlinedAt: !11264)
!11331 = !DILocation(line: 3904, column: 24, scope: !113, inlinedAt: !11332)
!11332 = distinct !DILocation(line: 2870, column: 26, scope: !11260, inlinedAt: !11333)
!11333 = distinct !DILocation(line: 195, column: 38, scope: !11296, inlinedAt: !11264)
!11334 = !DILocation(line: 198, column: 38, scope: !11335, inlinedAt: !11264)
!11335 = distinct !DILexicalBlock(scope: !11296, file: !4445, line: 195, column: 17)
!11336 = !DILocation(line: 2511, column: 13, scope: !11299, inlinedAt: !11337)
!11337 = distinct !DILocation(line: 198, column: 25, scope: !11335, inlinedAt: !11264)
!11338 = !DILocation(line: 198, column: 20, scope: !11335, inlinedAt: !11264)
!11339 = !DILocation(line: 1077, column: 12, scope: !10737, inlinedAt: !11340)
!11340 = distinct !DILocation(line: 147, column: 42, scope: !11341, inlinedAt: !11342)
!11341 = distinct !DISubprogram(name: "spin", linkageName: "_RNvMNtCsi07hmUMJW4u_15crossbeam_utils7backoffNtB2_7Backoff4spin", scope: !3772, file: !3771, line: 146, type: !14, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11342 = distinct !DILocation(line: 203, column: 25, scope: !11335, inlinedAt: !11264)
!11343 = !DILocation(line: 781, column: 12, scope: !11344, inlinedAt: !11345)
!11344 = distinct !DISubprogram(name: "spec_next<i32>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtB5_17RangeIteratorImpl9spec_nextCskAlUH1kY1DR_10polars_ooc", scope: !657, file: !656, line: 780, type: !14, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11345 = distinct !DILocation(line: 866, column: 14, scope: !11346, inlinedAt: !11347)
!11346 = distinct !DISubprogram(name: "next<i32>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtNtNtB7_6traits8iterator8Iterator4nextCskAlUH1kY1DR_10polars_ooc", scope: !662, file: !656, line: 865, type: !14, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11347 = distinct !DILocation(line: 147, column: 18, scope: !11348, inlinedAt: !11342)
!11348 = !DILexicalBlockFile(scope: !11349, file: !3771, discriminator: 2)
!11349 = distinct !DILexicalBlock(scope: !11341, file: !3771, line: 147, column: 9)
!11350 = !DILocation(line: 151, column: 12, scope: !11341, inlinedAt: !11342)
!11351 = !DILocation(line: 3904, column: 24, scope: !113, inlinedAt: !11352)
!11352 = distinct !DILocation(line: 2870, column: 26, scope: !11260, inlinedAt: !11353)
!11353 = distinct !DILocation(line: 204, column: 34, scope: !11335, inlinedAt: !11264)
!11354 = !DILocation(line: 2499, column: 26, scope: !11355, inlinedAt: !11356)
!11355 = distinct !DISubprogram(name: "overflowing_add", linkageName: "_RNvMs0_NtCscgRAwXFJnXP_4core3numl15overflowing_add", scope: !3781, file: !3780, line: 2498, type: !14, scopeLine: 2498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11356 = distinct !DILocation(line: 2583, column: 42, scope: !11357, inlinedAt: !11359)
!11357 = distinct !DILexicalBlock(scope: !11358, file: !3780, line: 2582, column: 13)
!11358 = distinct !DISubprogram(name: "overflowing_add_unsigned", linkageName: "_RNvMs0_NtCscgRAwXFJnXP_4core3numl24overflowing_add_unsigned", scope: !3781, file: !3780, line: 2581, type: !14, scopeLine: 2581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11359 = distinct !DILocation(line: 614, column: 31, scope: !11360, inlinedAt: !11361)
!11360 = distinct !DISubprogram(name: "checked_add_unsigned", linkageName: "_RNvMs0_NtCscgRAwXFJnXP_4core3numl20checked_add_unsigned", scope: !3781, file: !3780, line: 613, type: !14, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11361 = distinct !DILocation(line: 198, column: 28, scope: !11362, inlinedAt: !11363)
!11362 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsC_NtNtCscgRAwXFJnXP_4core4iter5rangelNtB5_4Step17forward_unchecked", scope: !3789, file: !656, line: 196, type: !14, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11363 = distinct !DILocation(line: 784, column: 35, scope: !11364, inlinedAt: !11345)
!11364 = distinct !DILexicalBlock(scope: !11344, file: !656, line: 782, column: 13)
!11365 = !DILocation(line: 25, column: 14, scope: !11366, inlinedAt: !11367)
!11366 = distinct !DISubprogram(name: "_mm_pause", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse29__mm_pause", scope: !610, file: !608, line: 22, type: !14, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11367 = distinct !DILocation(line: 287, column: 13, scope: !11368, inlinedAt: !11369)
!11368 = distinct !DISubprogram(name: "spin_loop", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint9spin_loop", scope: !2934, file: !2933, line: 270, type: !14, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11369 = distinct !DILocation(line: 148, column: 13, scope: !11349, inlinedAt: !11342)
!11370 = !DILocation(line: 1917, column: 50, scope: !11371, inlinedAt: !11372)
!11371 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXs1c_NtNtCscgRAwXFJnXP_4core3cmp5implslNtB8_10PartialOrd2lt", scope: !3805, file: !280, line: 1917, type: !14, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11372 = distinct !DILocation(line: 781, column: 12, scope: !11344, inlinedAt: !11345)
!11373 = !DILocation(line: 0, scope: !11296, inlinedAt: !11264)
!11374 = !DILocation(line: 172, column: 38, scope: !11296, inlinedAt: !11264)
!11375 = !DILocation(line: 2511, column: 13, scope: !11299, inlinedAt: !11376)
!11376 = distinct !DILocation(line: 172, column: 25, scope: !11296, inlinedAt: !11264)
!11377 = !DILocation(line: 165, column: 32, scope: !11296, inlinedAt: !11264)
!11378 = !DILocation(line: 168, column: 21, scope: !11296, inlinedAt: !11264)
!11379 = !DILocation(line: 4081, column: 17, scope: !10716, inlinedAt: !11380)
!11380 = distinct !DILocation(line: 3130, column: 21, scope: !11381, inlinedAt: !11382)
!11381 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !84, file: !79, line: 3123, type: !14, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11382 = distinct !DILocation(line: 176, column: 33, scope: !11383, inlinedAt: !11264)
!11383 = distinct !DILexicalBlock(scope: !11296, file: !4445, line: 165, column: 17)
!11384 = !DILocation(line: 0, scope: !10716, inlinedAt: !11380)
!11385 = !DILocation(line: 176, column: 17, scope: !11383, inlinedAt: !11264)
!11386 = !DILocation(line: 1077, column: 12, scope: !10737, inlinedAt: !11387)
!11387 = distinct !DILocation(line: 147, column: 42, scope: !11341, inlinedAt: !11388)
!11388 = distinct !DILocation(line: 190, column: 33, scope: !11389, inlinedAt: !11264)
!11389 = distinct !DILexicalBlock(scope: !11383, file: !4445, line: 188, column: 21)
!11390 = !DILocation(line: 781, column: 12, scope: !11344, inlinedAt: !11391)
!11391 = distinct !DILocation(line: 866, column: 14, scope: !11346, inlinedAt: !11392)
!11392 = distinct !DILocation(line: 147, column: 18, scope: !11348, inlinedAt: !11388)
!11393 = !DILocation(line: 151, column: 12, scope: !11341, inlinedAt: !11388)
!11394 = !DILocation(line: 2499, column: 26, scope: !11355, inlinedAt: !11395)
!11395 = distinct !DILocation(line: 2583, column: 42, scope: !11357, inlinedAt: !11396)
!11396 = distinct !DILocation(line: 614, column: 31, scope: !11360, inlinedAt: !11397)
!11397 = distinct !DILocation(line: 198, column: 28, scope: !11362, inlinedAt: !11398)
!11398 = distinct !DILocation(line: 784, column: 35, scope: !11364, inlinedAt: !11391)
!11399 = !DILocation(line: 25, column: 14, scope: !11366, inlinedAt: !11400)
!11400 = distinct !DILocation(line: 287, column: 13, scope: !11368, inlinedAt: !11401)
!11401 = distinct !DILocation(line: 148, column: 13, scope: !11349, inlinedAt: !11388)
!11402 = !DILocation(line: 1917, column: 50, scope: !11371, inlinedAt: !11403)
!11403 = distinct !DILocation(line: 781, column: 12, scope: !11344, inlinedAt: !11391)
!11404 = !DILocation(line: 270, column: 9, scope: !11405, inlinedAt: !11406)
!11405 = distinct !DISubprogram(name: "is_completed", linkageName: "_RNvMNtCsi07hmUMJW4u_15crossbeam_utils7backoffNtB2_7Backoff12is_completed", scope: !3772, file: !3771, line: 269, type: !14, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11406 = !DILocation(line: 348, column: 28, scope: !11265)
!11407 = !DILocation(line: 348, column: 20, scope: !11265)
!11408 = !DILocation(line: 344, column: 58, scope: !11265)
!11409 = !DILocation(line: 216, column: 12, scope: !11410, inlinedAt: !11411)
!11410 = distinct !DISubprogram(name: "write<alloc::sync::Arc<core::sync::atomic::Atomic<usize>, alloc::alloc::Global>>", linkageName: "_RNvMs_NtNtCslovz2ii29zg_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicjEEE5writeCskAlUH1kY1DR_10polars_ooc", scope: !4639, file: !4445, line: 214, type: !294, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11411 = distinct !DILocation(line: 344, column: 45, scope: !11265)
!11412 = !DILocation(line: 184, column: 25, scope: !11383, inlinedAt: !11264)
!11413 = !DILocation(line: 185, column: 25, scope: !11383, inlinedAt: !11264)
!11414 = !DILocation(line: 2447, column: 9, scope: !11415, inlinedAt: !11416)
!11415 = distinct !DISubprogram(name: "get<core::mem::maybe_uninit::MaybeUninit<alloc::sync::Arc<core::sync::atomic::Atomic<usize>, alloc::alloc::Global>>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtB7_3mem12maybe_uninit11MaybeUninitINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB7_4sync6atomic6AtomicjEEEE3getCskAlUH1kY1DR_10polars_ooc", scope: !165, file: !164, line: 2443, type: !14, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11416 = distinct !DILocation(line: 223, column: 18, scope: !11417, inlinedAt: !11411)
!11417 = distinct !DILexicalBlock(scope: !11410, file: !4445, line: 220, column: 9)
!11418 = !DILocation(line: 1921, column: 41, scope: !11419, inlinedAt: !11420)
!11419 = distinct !DISubprogram(name: "write<core::mem::maybe_uninit::MaybeUninit<alloc::sync::Arc<core::sync::atomic::Atomic<usize>, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writeINtNtNtB4_3mem12maybe_uninit11MaybeUninitINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEEECskAlUH1kY1DR_10polars_ooc", scope: !26, file: !25, line: 1898, type: !14, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11420 = distinct !DILocation(line: 1418, column: 18, scope: !11421, inlinedAt: !11422)
!11421 = distinct !DISubprogram(name: "write<core::mem::maybe_uninit::MaybeUninit<alloc::sync::Arc<core::sync::atomic::Atomic<usize>, alloc::alloc::Global>>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtNtB6_3mem12maybe_uninit11MaybeUninitINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB6_4sync6atomic6AtomicjEEE5writeCskAlUH1kY1DR_10polars_ooc", scope: !793, file: !792, line: 1413, type: !14, scopeLine: 1413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11422 = distinct !DILocation(line: 223, column: 24, scope: !11417, inlinedAt: !11411)
!11423 = !DILocation(line: 3890, column: 24, scope: !10017, inlinedAt: !11424)
!11424 = distinct !DILocation(line: 2898, column: 26, scope: !11425, inlinedAt: !11426)
!11425 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !84, file: !79, line: 2896, type: !14, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11426 = distinct !DILocation(line: 224, column: 20, scope: !11417, inlinedAt: !11411)
!11427 = !DILocation(line: 227, column: 9, scope: !11417, inlinedAt: !11411)
!11428 = !DILocation(line: 2447, column: 9, scope: !11429, inlinedAt: !11430)
!11429 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align1<u8>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align1hEE3getCskAlUH1kY1DR_10polars_ooc", scope: !165, file: !164, line: 2443, type: !14, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11430 = distinct !DILocation(line: 741, column: 37, scope: !11431, inlinedAt: !11432)
!11431 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs2_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicbE4load", scope: !84, file: !79, line: 738, type: !14, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11432 = distinct !DILocation(line: 222, column: 27, scope: !11433, inlinedAt: !11434)
!11433 = distinct !DISubprogram(name: "notify", linkageName: "_RNvMs0_NtCslovz2ii29zg_17crossbeam_channel5wakerNtB5_9SyncWaker6notify", scope: !4457, file: !3479, line: 221, type: !14, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11434 = distinct !DILocation(line: 227, column: 24, scope: !11417, inlinedAt: !11411)
!11435 = !DILocation(line: 3906, column: 23, scope: !141, inlinedAt: !11436)
!11436 = distinct !DILocation(line: 741, column: 18, scope: !11431, inlinedAt: !11432)
!11437 = !DILocation(line: 222, column: 13, scope: !11433, inlinedAt: !11434)
!11438 = !DILocation(line: 223, column: 29, scope: !11433, inlinedAt: !11434)
!11439 = !DILocation(line: 3989, column: 17, scope: !78, inlinedAt: !11440)
!11440 = distinct !DILocation(line: 3065, column: 26, scope: !4461, inlinedAt: !11441)
!11441 = distinct !DILocation(line: 32, column: 23, scope: !4463, inlinedAt: !11442)
!11442 = distinct !DILocation(line: 492, column: 24, scope: !4465, inlinedAt: !11443)
!11443 = distinct !DILocation(line: 223, column: 40, scope: !11433, inlinedAt: !11434)
!11444 = !{!11445}
!11445 = distinct !{!11445, !11446, !"_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtCslovz2ii29zg_17crossbeam_channel5waker5WakerE4lockCskAlUH1kY1DR_10polars_ooc: argument 0"}
!11446 = distinct !{!11446, !"_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtCslovz2ii29zg_17crossbeam_channel5waker5WakerE4lockCskAlUH1kY1DR_10polars_ooc"}
!11447 = !DILocation(line: 32, column: 12, scope: !4463, inlinedAt: !11442)
!11448 = !DILocation(line: 33, column: 18, scope: !4463, inlinedAt: !11442)
!11449 = !DILocation(line: 3904, column: 24, scope: !113, inlinedAt: !11450)
!11450 = distinct !DILocation(line: 2870, column: 26, scope: !115, inlinedAt: !11451)
!11451 = distinct !DILocation(line: 464, column: 31, scope: !117, inlinedAt: !11452)
!11452 = distinct !DILocation(line: 616, column: 6, scope: !122, inlinedAt: !11453)
!11453 = distinct !DILocation(line: 221, column: 5, scope: !124, inlinedAt: !11454)
!11454 = distinct !DILocation(line: 121, column: 24, scope: !129, inlinedAt: !11455)
!11455 = distinct !DILocation(line: 720, column: 40, scope: !4479, inlinedAt: !11456)
!11456 = distinct !DILocation(line: 493, column: 13, scope: !4465, inlinedAt: !11443)
!11457 = !DILocation(line: 464, column: 12, scope: !117, inlinedAt: !11452)
!11458 = !DILocation(line: 476, column: 13, scope: !117, inlinedAt: !11452)
!11459 = !DILocation(line: 616, column: 5, scope: !122, inlinedAt: !11453)
!11460 = !DILocation(line: 123, column: 25, scope: !138, inlinedAt: !11455)
!11461 = !DILocation(line: 0, scope: !117, inlinedAt: !11452)
!11462 = !DILocation(line: 720, column: 28, scope: !4479, inlinedAt: !11456)
!11463 = !DILocation(line: 3904, column: 24, scope: !141, inlinedAt: !11464)
!11464 = distinct !DILocation(line: 741, column: 18, scope: !143, inlinedAt: !11465)
!11465 = distinct !DILocation(line: 141, column: 21, scope: !145, inlinedAt: !11466)
!11466 = distinct !DILocation(line: 123, column: 17, scope: !138, inlinedAt: !11455)
!11467 = !DILocation(line: 123, column: 12, scope: !138, inlinedAt: !11455)
!11468 = !DILocation(line: 720, column: 9, scope: !4479, inlinedAt: !11456)
!11469 = !{!11470}
!11470 = distinct !{!11470, !11471, !"_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtCslovz2ii29zg_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCskAlUH1kY1DR_10polars_ooc: argument 0"}
!11471 = distinct !{!11471, !"_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtCslovz2ii29zg_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCskAlUH1kY1DR_10polars_ooc"}
!11472 = !DILocation(line: 223, column: 47, scope: !11433, inlinedAt: !11434)
!11473 = !DILocation(line: 1231, column: 15, scope: !4498, inlinedAt: !11474)
!11474 = distinct !DILocation(line: 223, column: 47, scope: !11433, inlinedAt: !11434)
!11475 = !{!11476}
!11476 = distinct !{!11476, !11471, !"_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtCslovz2ii29zg_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCskAlUH1kY1DR_10polars_ooc: argument 1"}
!11477 = !DILocation(line: 1231, column: 9, scope: !4498, inlinedAt: !11474)
!11478 = !DILocation(line: 1233, column: 17, scope: !4498, inlinedAt: !11474)
!11479 = !{!11470, !11476}
!11480 = !DILocation(line: 1233, column: 23, scope: !4506, inlinedAt: !11474)
!11481 = !DILocation(line: 1233, column: 86, scope: !4498, inlinedAt: !11474)
!11482 = !DILocation(line: 1227, column: 5, scope: !4498, inlinedAt: !11474)
!11483 = !DILocation(line: 232, column: 9, scope: !11433, inlinedAt: !11434)
!11484 = !DILocation(line: 1232, column: 16, scope: !4498, inlinedAt: !11474)
!11485 = !DILocation(line: 223, column: 54, scope: !11433, inlinedAt: !11434)
!11486 = !DILocation(line: 3906, column: 23, scope: !141, inlinedAt: !11487)
!11487 = distinct !DILocation(line: 741, column: 18, scope: !11431, inlinedAt: !11488)
!11488 = distinct !DILocation(line: 224, column: 31, scope: !11489, inlinedAt: !11434)
!11489 = distinct !DILexicalBlock(scope: !11433, file: !3479, line: 223, column: 13)
!11490 = !DILocation(line: 224, column: 17, scope: !11489, inlinedAt: !11434)
!11491 = !DILocation(line: 225, column: 17, scope: !11489, inlinedAt: !11434)
!11492 = !DILocation(line: 2447, column: 9, scope: !11493, inlinedAt: !11494)
!11493 = distinct !DISubprogram(name: "get<crossbeam_channel::waker::Waker>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellNtNtCslovz2ii29zg_17crossbeam_channel5waker5WakerE3getCskAlUH1kY1DR_10polars_ooc", scope: !165, file: !164, line: 2443, type: !14, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11494 = distinct !DILocation(line: 736, column: 39, scope: !11495, inlinedAt: !11496)
!11495 = distinct !DISubprogram(name: "deref_mut<crossbeam_channel::waker::Waker>", linkageName: "_RNvXsb_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_10MutexGuardNtNtCslovz2ii29zg_17crossbeam_channel5waker5WakerENtNtNtCscgRAwXFJnXP_4core3ops5deref8DerefMut9deref_mutCskAlUH1kY1DR_10polars_ooc", scope: !169, file: !96, line: 735, type: !14, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11496 = distinct !DILocation(line: 225, column: 17, scope: !11489, inlinedAt: !11434)
!11497 = !DILocation(line: 225, column: 23, scope: !11489, inlinedAt: !11434)
!11498 = !{!11499}
!11499 = distinct !{!11499, !11500, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11500 = distinct !{!11500, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryEECskAlUH1kY1DR_10polars_ooc"}
!11501 = !DILocation(line: 225, column: 35, scope: !11489, inlinedAt: !11434)
!11502 = !DILocation(line: 810, column: 1, scope: !11503, inlinedAt: !11504)
!11503 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<crossbeam_channel::waker::Entry>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryEECskAlUH1kY1DR_10polars_ooc", scope: !26, file: !25, line: 810, type: !14, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11504 = distinct !DILocation(line: 225, column: 35, scope: !11489, inlinedAt: !11434)
!11505 = !DILocation(line: 3956, column: 24, scope: !3191, inlinedAt: !11506)
!11506 = distinct !DILocation(line: 3193, column: 26, scope: !3193, inlinedAt: !11507)
!11507 = distinct !DILocation(line: 2814, column: 32, scope: !3187, inlinedAt: !11508)
!11508 = distinct !DILocation(line: 810, column: 1, scope: !3180, inlinedAt: !11509)
!11509 = distinct !DILocation(line: 810, column: 1, scope: !3174, inlinedAt: !11510)
!11510 = distinct !DILocation(line: 810, column: 1, scope: !3529, inlinedAt: !11511)
!11511 = distinct !DILocation(line: 810, column: 1, scope: !11503, inlinedAt: !11504)
!11512 = !{!11513, !11515, !11517, !11519, !11499}
!11513 = distinct !{!11513, !11514, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCslovz2ii29zg_17crossbeam_channel7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc: argument 0"}
!11514 = distinct !{!11514, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCslovz2ii29zg_17crossbeam_channel7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc"}
!11515 = distinct !{!11515, !11516, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCslovz2ii29zg_17crossbeam_channel7context5InnerEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11516 = distinct !{!11516, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCslovz2ii29zg_17crossbeam_channel7context5InnerEECskAlUH1kY1DR_10polars_ooc"}
!11517 = distinct !{!11517, !11518, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11518 = distinct !{!11518, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextECskAlUH1kY1DR_10polars_ooc"}
!11519 = distinct !{!11519, !11520, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11520 = distinct !{!11520, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryECskAlUH1kY1DR_10polars_ooc"}
!11521 = !DILocation(line: 2814, column: 12, scope: !3187, inlinedAt: !11508)
!11522 = !DILocation(line: 4387, column: 24, scope: !1687, inlinedAt: !11523)
!11523 = distinct !DILocation(line: 64, column: 9, scope: !3187, inlinedAt: !11508)
!11524 = !DILocation(line: 2857, column: 18, scope: !3187, inlinedAt: !11508)
!11525 = !DILocation(line: 226, column: 23, scope: !11489, inlinedAt: !11434)
!11526 = !DILocation(line: 3024, column: 19, scope: !11527, inlinedAt: !11528)
!11527 = distinct !DISubprogram(name: "len<crossbeam_channel::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryE3lenCskAlUH1kY1DR_10polars_ooc", scope: !3501, file: !3048, line: 3023, type: !14, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11528 = distinct !DILocation(line: 3049, column: 14, scope: !11529, inlinedAt: !11530)
!11529 = distinct !DISubprogram(name: "is_empty<crossbeam_channel::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryE8is_emptyCskAlUH1kY1DR_10polars_ooc", scope: !3501, file: !3048, line: 3048, type: !14, scopeLine: 3048, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11530 = distinct !DILocation(line: 228, column: 37, scope: !11489, inlinedAt: !11434)
!11531 = !DILocation(line: 3029, column: 37, scope: !11532, inlinedAt: !11528)
!11532 = distinct !DILexicalBlock(scope: !11527, file: !3048, line: 3024, column: 9)
!11533 = !DILocation(line: 3029, column: 18, scope: !11532, inlinedAt: !11528)
!11534 = !DILocation(line: 228, column: 21, scope: !11489, inlinedAt: !11434)
!11535 = !DILocation(line: 3024, column: 19, scope: !11527, inlinedAt: !11536)
!11536 = distinct !DILocation(line: 3049, column: 14, scope: !11537, inlinedAt: !11538)
!11537 = !DILexicalBlockFile(scope: !11529, file: !3048, discriminator: 2)
!11538 = distinct !DILocation(line: 228, column: 67, scope: !11489, inlinedAt: !11434)
!11539 = !DILocation(line: 3029, column: 37, scope: !11540, inlinedAt: !11536)
!11540 = distinct !DILexicalBlock(scope: !11527, file: !3048, line: 3024, column: 9)
!11541 = !DILocation(line: 3029, column: 18, scope: !11540, inlinedAt: !11536)
!11542 = !DILocation(line: 3049, column: 9, scope: !11529, inlinedAt: !11538)
!11543 = !DILocation(line: 228, scope: !11489, inlinedAt: !11434)
!11544 = !DILocation(line: 3891, column: 23, scope: !1579, inlinedAt: !11545)
!11545 = distinct !DILocation(line: 771, column: 13, scope: !11546, inlinedAt: !11547)
!11546 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs2_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicbE5store", scope: !84, file: !79, line: 767, type: !14, scopeLine: 767, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11547 = distinct !DILocation(line: 227, column: 31, scope: !11489, inlinedAt: !11434)
!11548 = !DILocation(line: 3896, column: 2, scope: !1579, inlinedAt: !11545)
!11549 = !DILocation(line: 745, column: 13, scope: !1846, inlinedAt: !11550)
!11550 = distinct !DILocation(line: 810, column: 1, scope: !1848, inlinedAt: !11551)
!11551 = distinct !DILocation(line: 232, column: 9, scope: !11433, inlinedAt: !11434)
!11552 = !DILocation(line: 129, column: 13, scope: !1563, inlinedAt: !11553)
!11553 = distinct !DILocation(line: 745, column: 30, scope: !1846, inlinedAt: !11550)
!11554 = !DILocation(line: 3904, column: 24, scope: !113, inlinedAt: !11555)
!11555 = distinct !DILocation(line: 2870, column: 26, scope: !1567, inlinedAt: !11556)
!11556 = distinct !DILocation(line: 464, column: 31, scope: !1569, inlinedAt: !11557)
!11557 = distinct !DILocation(line: 616, column: 6, scope: !1571, inlinedAt: !11558)
!11558 = distinct !DILocation(line: 221, column: 5, scope: !1573, inlinedAt: !11559)
!11559 = distinct !DILocation(line: 129, column: 32, scope: !1563, inlinedAt: !11553)
!11560 = !DILocation(line: 464, column: 12, scope: !1569, inlinedAt: !11557)
!11561 = !DILocation(line: 476, column: 13, scope: !1569, inlinedAt: !11557)
!11562 = !DILocation(line: 129, column: 32, scope: !1563, inlinedAt: !11553)
!11563 = !DILocation(line: 3889, column: 24, scope: !1579, inlinedAt: !11564)
!11564 = distinct !DILocation(line: 771, column: 13, scope: !1581, inlinedAt: !11565)
!11565 = distinct !DILocation(line: 130, column: 25, scope: !1563, inlinedAt: !11553)
!11566 = !DILocation(line: 129, column: 9, scope: !1563, inlinedAt: !11553)
!11567 = !DILocation(line: 3922, column: 24, scope: !1866, inlinedAt: !11568)
!11568 = distinct !DILocation(line: 2927, column: 26, scope: !1868, inlinedAt: !11569)
!11569 = distinct !DILocation(line: 90, column: 23, scope: !1870, inlinedAt: !11570)
!11570 = distinct !DILocation(line: 746, column: 29, scope: !1846, inlinedAt: !11550)
!11571 = !DILocation(line: 90, column: 12, scope: !1870, inlinedAt: !11570)
!11572 = !DILocation(line: 95, column: 18, scope: !1870, inlinedAt: !11570)
!11573 = !DILocation(line: 221, column: 5, scope: !11433, inlinedAt: !11434)
!11574 = !DILocation(line: 207, column: 12, scope: !3770, inlinedAt: !11575)
!11575 = distinct !DILocation(line: 351, column: 29, scope: !11265)
!11576 = !DILocation(line: 218, column: 13, scope: !3770, inlinedAt: !11575)
!11577 = !DILocation(line: 2499, column: 26, scope: !3779, inlinedAt: !11578)
!11578 = distinct !DILocation(line: 2583, column: 42, scope: !3783, inlinedAt: !11579)
!11579 = distinct !DILocation(line: 614, column: 31, scope: !3786, inlinedAt: !11580)
!11580 = distinct !DILocation(line: 198, column: 28, scope: !3788, inlinedAt: !11581)
!11581 = distinct !DILocation(line: 784, column: 35, scope: !3791, inlinedAt: !11582)
!11582 = distinct !DILocation(line: 866, column: 14, scope: !3794, inlinedAt: !11583)
!11583 = distinct !DILocation(line: 208, column: 22, scope: !3796, inlinedAt: !11575)
!11584 = !DILocation(line: 25, column: 14, scope: !3799, inlinedAt: !11585)
!11585 = distinct !DILocation(line: 287, column: 13, scope: !3801, inlinedAt: !11586)
!11586 = distinct !DILocation(line: 209, column: 17, scope: !3797, inlinedAt: !11575)
end_hunk_3
begin_hunk_4_@llvm.sqrt.v2f64
!11772 = !{!11773, !11775, !11777, !11602}
!11773 = distinct !{!11773, !11774, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCslovz2ii29zg_17crossbeam_channel7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc: argument 0"}
!11774 = distinct !{!11774, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCslovz2ii29zg_17crossbeam_channel7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc"}
!11775 = distinct !{!11775, !11776, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCslovz2ii29zg_17crossbeam_channel7context5InnerEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11776 = distinct !{!11776, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCslovz2ii29zg_17crossbeam_channel7context5InnerEECskAlUH1kY1DR_10polars_ooc"}
!11777 = distinct !{!11777, !11778, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11778 = distinct !{!11778, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextECskAlUH1kY1DR_10polars_ooc"}
!11779 = !DILocation(line: 2814, column: 12, scope: !3187, inlinedAt: !11769)
!11780 = !DILocation(line: 4387, column: 24, scope: !1687, inlinedAt: !11781)
!11781 = distinct !DILocation(line: 64, column: 9, scope: !3187, inlinedAt: !11769)
!11782 = !DILocation(line: 2857, column: 18, scope: !3187, inlinedAt: !11769)
!11783 = !DILocation(line: 1622, column: 23, scope: !11784, inlinedAt: !11786)
!11784 = distinct !DILexicalBlock(scope: !11785, file: !151, line: 1622, column: 13)
!11785 = distinct !DISubprogram(name: "unwrap_or_else<(), std::thread::local::AccessError, crossbeam_channel::context::{impl#0}::with::{closure_env#2}<crossbeam_channel::flavors::array::{impl#1}::send::{closure_env#0}<alloc::sync::Arc<core::sync::atomic::Atomic<usize>, alloc::alloc::Global>>, ()>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultuNtNtNtCsh8eZTKRCwoO_3std6thread5local11AccessErrorE14unwrap_or_elseNCINvMNtCslovz2ii29zg_17crossbeam_channel7contextNtB1U_7Context4withNCNvMs_NtNtB1W_7flavors5arrayINtB31_7ChannelINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB5_4sync6atomic6AtomicjEEE4send0uEs0_0ECskAlUH1kY1DR_10polars_ooc", scope: !261, file: !151, line: 1616, type: !14, scopeLine: 1616, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11786 = distinct !DILocation(line: 65, column: 14, scope: !11612, inlinedAt: !11600)
!11787 = !DILocation(line: 25, column: 38, scope: !11788, inlinedAt: !11789)
!11788 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXs5_NtNtNtNtCsh8eZTKRCwoO_3std3sys3pal4unix4timeNtB5_8TimespecNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !3647, file: !3646, line: 25, type: !14, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11789 = !DILocation(line: 49, column: 38, scope: !11790, inlinedAt: !11791)
!11790 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsi_NtNtNtCsh8eZTKRCwoO_3std3sys4time4unixNtB5_7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !3654, file: !3653, line: 49, type: !14, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11791 = !DILocation(line: 154, column: 38, scope: !11792, inlinedAt: !11793)
!11792 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsm_NtCsh8eZTKRCwoO_3std4timeNtB5_7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !3660, file: !3659, line: 154, type: !14, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11793 = !DILocation(line: 1466, column: 14, scope: !11794, inlinedAt: !11597)
!11794 = distinct !DISubprogram(name: "ge<std::time::Instant, std::time::Instant>", linkageName: "_RNvYNtNtCsh8eZTKRCwoO_3std4time7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd2geCskAlUH1kY1DR_10polars_ooc", scope: !3664, file: !280, line: 1465, type: !14, scopeLine: 1465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11795 = !DILocation(line: 49, column: 26, scope: !11796, inlinedAt: !11797)
!11796 = distinct !DISubprogram(name: "as_inner", linkageName: "_RNvMs6_NtNtCscgRAwXFJnXP_4core3num11niche_typesNtB5_11Nanoseconds8as_inner", scope: !199, file: !198, line: 46, type: !14, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11797 = !DILocation(line: 70, column: 32, scope: !11798, inlinedAt: !11800)
!11798 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXsa_NtNtCscgRAwXFJnXP_4core3num11niche_typesNtB5_11NanosecondsNtNtB9_3cmp3Ord3cmp", scope: !11799, file: !198, line: 69, type: !14, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11799 = !DINamespace(name: "{impl#12}", scope: !200)
!11800 = !DILocation(line: 77, column: 22, scope: !11801, inlinedAt: !11803)
!11801 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsb_NtNtCscgRAwXFJnXP_4core3num11niche_typesNtB5_11NanosecondsNtNtB9_3cmp10PartialOrd11partial_cmp", scope: !11802, file: !198, line: 76, type: !14, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11802 = !DINamespace(name: "{impl#13}", scope: !200)
!11803 = !DILocation(line: 25, column: 38, scope: !11804, inlinedAt: !11789)
!11804 = !DILexicalBlockFile(scope: !11788, file: !3646, discriminator: 2)
!11805 = !DILocation(line: 539, column: 9, scope: !11806, inlinedAt: !11807)
!11806 = distinct !DISubprogram(name: "is_ge", linkageName: "_RNvMNtCscgRAwXFJnXP_4core3cmpNtB2_8Ordering5is_ge", scope: !3669, file: !280, line: 538, type: !14, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11807 = !DILocation(line: 250, column: 5, scope: !11808, inlinedAt: !11810)
!11808 = !DILexicalBlockFile(scope: !11809, file: !1089, discriminator: 2)
!11809 = distinct !DISubprogram(name: "call_once<fn(core::cmp::Ordering) -> bool, (core::cmp::Ordering)>", linkageName: "_RNvYNvMNtCscgRAwXFJnXP_4core3cmpNtB5_8Ordering5is_geINtNtNtB7_3ops8function6FnOnceTBu_EE9call_onceCskAlUH1kY1DR_10polars_ooc", scope: !3672, file: !1089, line: 250, type: !14, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11810 = !DILocation(line: 664, column: 24, scope: !11811, inlinedAt: !11813)
!11811 = distinct !DILexicalBlock(scope: !11812, file: !2869, line: 664, column: 13)
!11812 = distinct !DISubprogram(name: "is_some_and<core::cmp::Ordering, fn(core::cmp::Ordering) -> bool>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE11is_some_andNvMBK_BI_5is_geECskAlUH1kY1DR_10polars_ooc", scope: !2871, file: !2869, line: 661, type: !14, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11813 = !DILocation(line: 1466, column: 33, scope: !11794, inlinedAt: !11597)
!11814 = !DILocation(line: 357, column: 58, scope: !11594)
!11815 = !DILocation(line: 0, scope: !11816)
!11816 = !DILexicalBlockFile(scope: !11265, file: !1534, discriminator: 0)
!11817 = !DILocation(line: 0, scope: !11265)
!11818 = !DILocation(line: 383, column: 5, scope: !11254)
!11819 = !DILocation(line: 383, column: 6, scope: !11254)
!11820 = !DILocation(line: 66, column: 5, scope: !11599, inlinedAt: !11600)
!11821 = !{!11822}
!11822 = distinct !{!11822, !11269, !"_RNvMs_NtNtCslovz2ii29zg_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicjEEE10start_sendCskAlUH1kY1DR_10polars_ooc: argument 0:pre.rot:h.rot"}
!11823 = !DILocation(line: 0, scope: !11410, inlinedAt: !11411)
!11824 = !DILocation(line: 966, column: 15, scope: !11825, inlinedAt: !11826)
!11825 = distinct !DISubprogram(name: "map_err<(), alloc::sync::Arc<core::sync::atomic::Atomic<usize>, alloc::alloc::Global>, crossbeam_channel::err::SendTimeoutError<alloc::sync::Arc<core::sync::atomic::Atomic<usize>, alloc::alloc::Global>>, fn(alloc::sync::Arc<core::sync::atomic::Atomic<usize>, alloc::alloc::Global>) -> crossbeam_channel::err::SendTimeoutError<alloc::sync::Arc<core::sync::atomic::Atomic<usize>, alloc::alloc::Global>>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultuINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB5_4sync6atomic6AtomicjEEE7map_errINtNtCslovz2ii29zg_17crossbeam_channel3err16SendTimeoutErrorBJ_ENcNtB1W_12Disconnected0ECskAlUH1kY1DR_10polars_ooc", scope: !261, file: !151, line: 962, type: !14, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11826 = !DILocation(line: 345, column: 32, scope: !11827)
!11827 = distinct !DILexicalBlock(scope: !11265, file: !4445, line: 344, column: 21)
!11828 = !DILocation(line: 0, scope: !11825, inlinedAt: !11826)
!11829 = !DILocation(line: 333, column: 5, scope: !11254)
!11830 = !{!11831}
!11831 = distinct !{!11831, !11832, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11832 = distinct !{!11832, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECskAlUH1kY1DR_10polars_ooc"}
!11833 = !{!11834}
!11834 = distinct !{!11834, !11835, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicjEENtNtNtBN_3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc: argument 0"}
!11835 = distinct !{!11835, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicjEENtNtNtBN_3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc"}
!11836 = !DILocation(line: 810, column: 1, scope: !1662, inlinedAt: !11837)
!11837 = distinct !DILocation(line: 383, column: 5, scope: !11254)
!11838 = !DILocation(line: 444, column: 20, scope: !1665, inlinedAt: !11839)
!11839 = distinct !DILocation(line: 2110, column: 27, scope: !1670, inlinedAt: !11840)
!11840 = distinct !DILocation(line: 2814, column: 17, scope: !1676, inlinedAt: !11841)
!11841 = distinct !DILocation(line: 810, column: 1, scope: !1662, inlinedAt: !11837)
!11842 = !{!11834, !11831}
!11843 = !DILocation(line: 3956, column: 24, scope: !1681, inlinedAt: !11844)
!11844 = distinct !DILocation(line: 3193, column: 26, scope: !1683, inlinedAt: !11845)
!11845 = distinct !DILocation(line: 2814, column: 32, scope: !1676, inlinedAt: !11841)
!11846 = !DILocation(line: 2814, column: 12, scope: !1676, inlinedAt: !11841)
!11847 = !DILocation(line: 4387, column: 24, scope: !1687, inlinedAt: !11848)
!11848 = distinct !DILocation(line: 64, column: 9, scope: !1676, inlinedAt: !11841)
!11849 = !DILocation(line: 2857, column: 18, scope: !1676, inlinedAt: !11841)
!11850 = distinct !DISubprogram(name: "new", linkageName: "_RNvMsa_NtCskAlUH1kY1DR_10polars_ooc13spill_contextNtB5_23LeastRecentSpillContext3new", scope: !11851, file: !4991, line: 342, type: !14, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11851 = !DINamespace(name: "LeastRecentSpillContext", scope: !75)
!11852 = !DILocation(line: 343, column: 14, scope: !11850)
!11853 = !DILocation(line: 347, column: 6, scope: !11850)
!11854 = distinct !DISubprogram(name: "new", linkageName: "_RNvMsd_NtCskAlUH1kY1DR_10polars_ooc13spill_contextNtB5_18RandomSpillContext3new", scope: !11855, file: !4991, line: 378, type: !14, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11855 = !DINamespace(name: "RandomSpillContext", scope: !75)
!11856 = !DILocation(line: 379, column: 14, scope: !11854)
!11857 = !DILocation(line: 380, column: 6, scope: !11854)
!11858 = distinct !DISubprogram(name: "new<alloc::vec::Vec<polars_ooc::spill_context::WeakSpillContext, alloc::alloc::Global>>", linkageName: "_RNvMsd_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEE3newB1K_", scope: !11859, file: !1960, line: 740, type: !14, scopeLine: 740, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11859 = !DINamespace(name: "RwLockReadGuard", scope: !1962)
!11860 = !DILocation(line: 2447, column: 9, scope: !11861, inlinedAt: !11862)
!11861 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align1<u8>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align1hEE3getCskAlUH1kY1DR_10polars_ooc", scope: !165, file: !164, line: 2443, type: !14, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11862 = !DILocation(line: 741, column: 37, scope: !11863, inlinedAt: !11864)
!11863 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs2_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicbE4load", scope: !84, file: !79, line: 738, type: !14, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11864 = !DILocation(line: 141, column: 21, scope: !11865, inlinedAt: !11866)
!11865 = distinct !DISubprogram(name: "get", linkageName: "_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag3get", scope: !131, file: !130, line: 140, type: !14, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11866 = !DILocation(line: 113, column: 17, scope: !11867, inlinedAt: !11868)
!11867 = distinct !DISubprogram(name: "borrow", linkageName: "_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag6borrow", scope: !131, file: !130, line: 112, type: !14, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11868 = !DILocation(line: 741, column: 40, scope: !11858)
!11869 = !DILocation(line: 3904, column: 24, scope: !141, inlinedAt: !11870)
!11870 = distinct !DILocation(line: 741, column: 18, scope: !11863, inlinedAt: !11864)
!11871 = !DILocation(line: 113, column: 12, scope: !11867, inlinedAt: !11868)
!11872 = !DILocation(line: 741, column: 9, scope: !11858)
!11873 = !DILocation(line: 745, column: 6, scope: !11858)
!11874 = distinct !DISubprogram(name: "recv<polars_ooc::spill_file::CleanRequest>", linkageName: "_RNvMsg_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB5_8ReceiverNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvBU_", scope: !11875, file: !2441, line: 1009, type: !14, scopeLine: 1009, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11875 = !DINamespace(name: "Receiver", scope: !2078)
!11876 = !DILocation(line: 1010, column: 9, scope: !11874)
!11877 = !DILocation(line: 1010, column: 15, scope: !11874)
!11878 = !DILocation(line: 0, scope: !11874)
!11879 = !DILocation(line: 1011, column: 49, scope: !11880)
!11880 = distinct !DILexicalBlock(scope: !11874, file: !2441, line: 1011, column: 13)
!11881 = !DILocation(line: 1011, column: 58, scope: !11874)
!11882 = !{!11883}
!11883 = distinct !{!11883, !11884, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvB10_: argument 0"}
!11884 = distinct !{!11884, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvB10_"}
!11885 = !DILocation(line: 1012, column: 48, scope: !11886)
!11886 = distinct !DILexicalBlock(scope: !11874, file: !2441, line: 1012, column: 13)
!11887 = !DILocation(line: 427, column: 26, scope: !11888, inlinedAt: !11889)
!11888 = distinct !DISubprogram(name: "recv<polars_ooc::spill_file::CleanRequest>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvB10_", scope: !4191, file: !2075, line: 426, type: !14, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11889 = distinct !DILocation(line: 1012, column: 48, scope: !11886)
!11890 = !DILocation(line: 5, column: 17, scope: !11891, inlinedAt: !11893)
!11891 = distinct !DISubprogram(name: "default", linkageName: "_RNvXs2_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc6selectNtB5_5TokenNtNtCscgRAwXFJnXP_4core7default7Default7default", scope: !11892, file: !4178, line: 5, type: !14, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11892 = !DINamespace(name: "{impl#4}", scope: !4180)
!11893 = distinct !DILocation(line: 427, column: 26, scope: !11888, inlinedAt: !11889)
!11894 = !DILocation(line: 428, column: 9, scope: !11895, inlinedAt: !11889)
!11895 = distinct !DILexicalBlock(scope: !11888, file: !2075, line: 427, column: 9)
!11896 = !{!11897}
!11897 = distinct !{!11897, !11898, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_recvB10_: argument 0"}
!11898 = distinct !{!11898, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_recvB10_"}
!11899 = !DILocation(line: 429, column: 21, scope: !11895, inlinedAt: !11889)
!11900 = !DILocation(line: 289, column: 9, scope: !11901, inlinedAt: !11905)
!11901 = distinct !DILexicalBlock(scope: !11902, file: !2075, line: 287, column: 9)
!11902 = distinct !DILexicalBlock(scope: !11903, file: !2075, line: 286, column: 9)
!11903 = distinct !DILexicalBlock(scope: !11904, file: !2075, line: 285, column: 9)
!11904 = distinct !DISubprogram(name: "start_recv<polars_ooc::spill_file::CleanRequest>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_recvB10_", scope: !4191, file: !2075, line: 284, type: !14, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11905 = distinct !DILocation(line: 429, column: 21, scope: !11895, inlinedAt: !11889)
!11906 = !DILocation(line: 0, scope: !11904, inlinedAt: !11905)
!11907 = !DILocation(line: 3905, column: 24, scope: !113, inlinedAt: !11908)
!11908 = distinct !DILocation(line: 2870, column: 26, scope: !11909, inlinedAt: !11910)
!11909 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !84, file: !79, line: 2868, type: !14, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11910 = distinct !DILocation(line: 0, scope: !11903, inlinedAt: !11905)
!11911 = !{!11897, !11883}
!11912 = !DILocation(line: 3905, column: 24, scope: !2101, inlinedAt: !11913)
!11913 = distinct !DILocation(line: 1732, column: 18, scope: !11914, inlinedAt: !11915)
!11914 = distinct !DISubprogram(name: "load<std::sync::mpmc::list::Block<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEE4loadB1I_", scope: !84, file: !79, line: 1730, type: !14, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11915 = distinct !DILocation(line: 0, scope: !11902, inlinedAt: !11905)
!11916 = !DILocation(line: 291, column: 26, scope: !11901, inlinedAt: !11905)
!11917 = !DILocation(line: 294, column: 16, scope: !11918, inlinedAt: !11905)
!11918 = distinct !DILexicalBlock(scope: !11901, file: !2075, line: 291, column: 13)
!11919 = !DILocation(line: 127, column: 12, scope: !10232, inlinedAt: !11920)
!11920 = distinct !DILocation(line: 295, column: 25, scope: !11918, inlinedAt: !11905)
!11921 = !DILocation(line: 132, column: 13, scope: !10232, inlinedAt: !11920)
!11922 = !DILocation(line: 1917, column: 50, scope: !10239, inlinedAt: !11923)
!11923 = distinct !DILocation(line: 781, column: 12, scope: !10242, inlinedAt: !11924)
!11924 = distinct !DILocation(line: 866, column: 14, scope: !10244, inlinedAt: !11925)
!11925 = distinct !DILocation(line: 128, column: 22, scope: !10246, inlinedAt: !11920)
!11926 = !DILocation(line: 781, column: 12, scope: !10242, inlinedAt: !11924)
!11927 = !DILocation(line: 3558, column: 28, scope: !10250, inlinedAt: !11928)
!11928 = distinct !DILocation(line: 128, column: 41, scope: !10232, inlinedAt: !11920)
!11929 = !DILocation(line: 25, column: 14, scope: !10255, inlinedAt: !11930)
!11930 = distinct !DILocation(line: 287, column: 13, scope: !10257, inlinedAt: !11931)
!11931 = distinct !DILocation(line: 129, column: 17, scope: !10247, inlinedAt: !11920)
!11932 = distinct !{!11932, !10260}
!11933 = !DILocation(line: 135, column: 23, scope: !10232, inlinedAt: !11920)
!11934 = !DILocation(line: 0, scope: !11935, inlinedAt: !11905)
!11935 = !DILexicalBlockFile(scope: !11918, file: !1534, discriminator: 0)
!11936 = !DILocation(line: 301, column: 32, scope: !11918, inlinedAt: !11905)
!11937 = !DILocation(line: 303, column: 16, scope: !11938, inlinedAt: !11905)
!11938 = distinct !DILexicalBlock(scope: !11918, file: !2075, line: 301, column: 13)
!11939 = !DILocation(line: 4390, column: 23, scope: !1687, inlinedAt: !11940)
!11940 = distinct !DILocation(line: 304, column: 17, scope: !11938, inlinedAt: !11905)
!11941 = !DILocation(line: 3904, column: 24, scope: !113, inlinedAt: !11942)
!11942 = distinct !DILocation(line: 2870, column: 26, scope: !11909, inlinedAt: !11943)
!11943 = distinct !DILocation(line: 305, column: 44, scope: !11938, inlinedAt: !11905)
!11944 = !DILocation(line: 308, column: 37, scope: !11945, inlinedAt: !11905)
!11945 = distinct !DILexicalBlock(scope: !11938, file: !2075, line: 305, column: 17)
!11946 = !DILocation(line: 308, column: 20, scope: !11945, inlinedAt: !11905)
!11947 = !DILocation(line: 321, column: 20, scope: !11945, inlinedAt: !11905)
!11948 = !DILocation(line: 310, column: 24, scope: !11945, inlinedAt: !11905)
!11949 = !DILocation(line: 0, scope: !11918, inlinedAt: !11905)
!11950 = !DILocation(line: 328, column: 16, scope: !11938, inlinedAt: !11905)
!11951 = !DILocation(line: 127, column: 12, scope: !10232, inlinedAt: !11952)
!11952 = distinct !DILocation(line: 329, column: 25, scope: !11938, inlinedAt: !11905)
!11953 = !DILocation(line: 132, column: 13, scope: !10232, inlinedAt: !11952)
!11954 = !DILocation(line: 1917, column: 50, scope: !10239, inlinedAt: !11955)
!11955 = distinct !DILocation(line: 781, column: 12, scope: !10242, inlinedAt: !11956)
!11956 = distinct !DILocation(line: 866, column: 14, scope: !10244, inlinedAt: !11957)
!11957 = distinct !DILocation(line: 128, column: 22, scope: !10246, inlinedAt: !11952)
!11958 = !DILocation(line: 781, column: 12, scope: !10242, inlinedAt: !11956)
!11959 = !DILocation(line: 3558, column: 28, scope: !10250, inlinedAt: !11960)
!11960 = distinct !DILocation(line: 128, column: 41, scope: !10232, inlinedAt: !11952)
!11961 = !DILocation(line: 25, column: 14, scope: !10255, inlinedAt: !11962)
!11962 = distinct !DILocation(line: 287, column: 13, scope: !10257, inlinedAt: !11963)
!11963 = distinct !DILocation(line: 129, column: 17, scope: !10247, inlinedAt: !11952)
!11964 = distinct !{!11964, !10260}
!11965 = !DILocation(line: 135, column: 23, scope: !10232, inlinedAt: !11952)
!11966 = !DILocation(line: 4084, column: 17, scope: !10716, inlinedAt: !11967)
!11967 = distinct !DILocation(line: 3130, column: 21, scope: !11968, inlinedAt: !11969)
!11968 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !84, file: !79, line: 3123, type: !14, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!11969 = distinct !DILocation(line: 336, column: 35, scope: !11938, inlinedAt: !11905)
!11970 = !DILocation(line: 0, scope: !10716, inlinedAt: !11967)
!11971 = !DILocation(line: 336, column: 13, scope: !11938, inlinedAt: !11905)
!11972 = !DILocation(line: 1917, column: 50, scope: !10724, inlinedAt: !11973)
!11973 = distinct !DILocation(line: 781, column: 12, scope: !10726, inlinedAt: !11974)
!11974 = distinct !DILocation(line: 866, column: 14, scope: !10728, inlinedAt: !11975)
!11975 = distinct !DILocation(line: 115, column: 18, scope: !10730, inlinedAt: !11976)
!11976 = distinct !DILocation(line: 360, column: 29, scope: !11938, inlinedAt: !11905)
!11977 = !DILocation(line: 781, column: 12, scope: !10726, inlinedAt: !11974)
!11978 = !DILocation(line: 1077, column: 12, scope: !10737, inlinedAt: !11979)
!11979 = distinct !DILocation(line: 114, column: 36, scope: !10733, inlinedAt: !11976)
!11980 = !DILocation(line: 3558, column: 28, scope: !10250, inlinedAt: !11981)
!11981 = distinct !DILocation(line: 115, column: 26, scope: !10732, inlinedAt: !11976)
!11982 = !DILocation(line: 25, column: 14, scope: !10742, inlinedAt: !11983)
!11983 = distinct !DILocation(line: 287, column: 13, scope: !10744, inlinedAt: !11984)
!11984 = distinct !DILocation(line: 116, column: 13, scope: !10731, inlinedAt: !11976)
!11985 = distinct !{!11985, !10260}
!11986 = !DILocation(line: 119, column: 23, scope: !10732, inlinedAt: !11976)
!11987 = !DILocation(line: 555, column: 18, scope: !10749, inlinedAt: !11988)
!11988 = distinct !DILocation(line: 119, column: 33, scope: !10732, inlinedAt: !11976)
!11989 = !DILocation(line: 344, column: 24, scope: !11938, inlinedAt: !11905)
!11990 = !DILocation(line: 3905, column: 24, scope: !2101, inlinedAt: !11991)
!11991 = distinct !DILocation(line: 1732, column: 18, scope: !10323, inlinedAt: !11992)
!11992 = distinct !DILocation(line: 80, column: 34, scope: !10325, inlinedAt: !11993)
!11993 = distinct !DILocation(line: 345, column: 45, scope: !11938, inlinedAt: !11905)
!11994 = !DILocation(line: 81, column: 17, scope: !10330, inlinedAt: !11993)
!11995 = !DILocation(line: 127, column: 12, scope: !10232, inlinedAt: !11996)
!11996 = distinct !DILocation(line: 84, column: 21, scope: !10330, inlinedAt: !11993)
!11997 = !DILocation(line: 132, column: 13, scope: !10232, inlinedAt: !11996)
!11998 = !DILocation(line: 1917, column: 50, scope: !10239, inlinedAt: !11999)
!11999 = distinct !DILocation(line: 781, column: 12, scope: !10242, inlinedAt: !12000)
!12000 = distinct !DILocation(line: 866, column: 14, scope: !10244, inlinedAt: !12001)
!12001 = distinct !DILocation(line: 128, column: 22, scope: !10246, inlinedAt: !11996)
!12002 = !DILocation(line: 781, column: 12, scope: !10242, inlinedAt: !12000)
!12003 = !DILocation(line: 3558, column: 28, scope: !10250, inlinedAt: !12004)
!12004 = distinct !DILocation(line: 128, column: 41, scope: !10232, inlinedAt: !11996)
!12005 = !DILocation(line: 25, column: 14, scope: !10255, inlinedAt: !12006)
!12006 = distinct !DILocation(line: 287, column: 13, scope: !10257, inlinedAt: !12007)
!12007 = distinct !DILocation(line: 129, column: 17, scope: !10247, inlinedAt: !11996)
!12008 = distinct !{!12008, !10260}
!12009 = !DILocation(line: 135, column: 23, scope: !10232, inlinedAt: !11996)
!12010 = !DILocation(line: 346, column: 46, scope: !12011, inlinedAt: !11905)
!12011 = distinct !DILexicalBlock(scope: !11938, file: !2075, line: 345, column: 25)
!12012 = !DILocation(line: 2511, column: 13, scope: !12013, inlinedAt: !12014)
!12013 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !668, file: !667, line: 2510, type: !14, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12014 = distinct !DILocation(line: 346, column: 69, scope: !12011, inlinedAt: !11905)
!12015 = !DILocation(line: 3904, column: 24, scope: !2101, inlinedAt: !12016)
!12016 = distinct !DILocation(line: 1732, column: 18, scope: !11914, inlinedAt: !12017)
!12017 = distinct !DILocation(line: 347, column: 42, scope: !12018, inlinedAt: !11905)
!12018 = distinct !DILexicalBlock(scope: !12011, file: !2075, line: 346, column: 25)
!12019 = !DILocation(line: 347, column: 29, scope: !12018, inlinedAt: !11905)
!12020 = !DILocation(line: 3890, column: 24, scope: !10698, inlinedAt: !12021)
!12021 = distinct !DILocation(line: 1763, column: 13, scope: !12022, inlinedAt: !12023)
!12022 = distinct !DISubprogram(name: "store<std::sync::mpmc::list::Block<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEE5storeB1I_", scope: !84, file: !79, line: 1760, type: !14, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12023 = distinct !DILocation(line: 351, column: 41, scope: !12018, inlinedAt: !11905)
!12024 = !DILocation(line: 3890, column: 24, scope: !10017, inlinedAt: !12025)
!12025 = distinct !DILocation(line: 2898, column: 26, scope: !12026, inlinedAt: !12027)
!12026 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !84, file: !79, line: 2896, type: !14, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12027 = distinct !DILocation(line: 352, column: 41, scope: !12018, inlinedAt: !11905)
!12028 = !DILocation(line: 344, column: 21, scope: !11938, inlinedAt: !11905)
!12029 = !DILocation(line: 435, column: 30, scope: !12030, inlinedAt: !11889)
!12030 = distinct !DILexicalBlock(scope: !11895, file: !2075, line: 435, column: 39)
!12031 = !DILocation(line: 435, column: 20, scope: !12030, inlinedAt: !11889)
!12032 = !DILocation(line: 355, column: 21, scope: !11938, inlinedAt: !11905)
!12033 = !DILocation(line: 356, column: 21, scope: !11938, inlinedAt: !11905)
!12034 = !DILocation(line: 379, column: 24, scope: !12035, inlinedAt: !12038)
!12035 = distinct !DILexicalBlock(scope: !12036, file: !2075, line: 377, column: 9)
!12036 = distinct !DILexicalBlock(scope: !12037, file: !2075, line: 376, column: 9)
!12037 = distinct !DISubprogram(name: "read<polars_ooc::spill_file::CleanRequest>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_", scope: !4191, file: !2075, line: 369, type: !294, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12038 = distinct !DILocation(line: 431, column: 33, scope: !11895, inlinedAt: !11889)
!12039 = !DILocation(line: 253, column: 13, scope: !12040, inlinedAt: !12041)
!12040 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEE13get_uncheckedB1N_", scope: !2155, file: !371, line: 239, type: !14, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12041 = distinct !DILocation(line: 646, column: 26, scope: !12042, inlinedAt: !12043)
!12042 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<polars_ooc::spill_file::CleanRequest>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE13get_uncheckedjEB1k_", scope: !2159, file: !2158, line: 639, type: !14, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12043 = distinct !DILocation(line: 379, column: 39, scope: !12035, inlinedAt: !12038)
!12044 = !DILocation(line: 3905, column: 24, scope: !113, inlinedAt: !12045)
!12045 = distinct !DILocation(line: 2870, column: 26, scope: !10368, inlinedAt: !12046)
!12046 = distinct !DILocation(line: 47, column: 26, scope: !10370, inlinedAt: !12047)
!12047 = distinct !DILocation(line: 380, column: 18, scope: !12048, inlinedAt: !12038)
!12048 = distinct !DILexicalBlock(scope: !12035, file: !2075, line: 379, column: 13)
!12049 = !{!12050, !11883}
!12050 = distinct !{!12050, !12051, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_: argument 0"}
!12051 = distinct !{!12051, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_"}
!12052 = !DILocation(line: 47, column: 15, scope: !10370, inlinedAt: !12047)
!12053 = !DILocation(line: 127, column: 12, scope: !10232, inlinedAt: !12054)
!12054 = distinct !DILocation(line: 48, column: 21, scope: !10370, inlinedAt: !12047)
!12055 = !DILocation(line: 132, column: 13, scope: !10232, inlinedAt: !12054)
!12056 = !DILocation(line: 1917, column: 50, scope: !10239, inlinedAt: !12057)
!12057 = distinct !DILocation(line: 781, column: 12, scope: !10242, inlinedAt: !12058)
!12058 = distinct !DILocation(line: 866, column: 14, scope: !10244, inlinedAt: !12059)
!12059 = distinct !DILocation(line: 128, column: 22, scope: !10246, inlinedAt: !12054)
!12060 = !DILocation(line: 781, column: 12, scope: !10242, inlinedAt: !12058)
!12061 = !DILocation(line: 3558, column: 28, scope: !10250, inlinedAt: !12062)
!12062 = distinct !DILocation(line: 128, column: 41, scope: !10232, inlinedAt: !12054)
!12063 = !DILocation(line: 25, column: 14, scope: !10255, inlinedAt: !12064)
!12064 = distinct !DILocation(line: 287, column: 13, scope: !10257, inlinedAt: !12065)
!12065 = distinct !DILocation(line: 129, column: 17, scope: !10247, inlinedAt: !12054)
!12066 = distinct !{!12066, !10260}
!12067 = !DILocation(line: 135, column: 23, scope: !10232, inlinedAt: !12054)
!12068 = !DILocation(line: 1721, column: 9, scope: !12069, inlinedAt: !12070)
!12069 = distinct !DISubprogram(name: "read<core::mem::maybe_uninit::MaybeUninit<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEEB1f_", scope: !26, file: !25, line: 1682, type: !14, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12070 = distinct !DILocation(line: 1263, column: 18, scope: !12071, inlinedAt: !12072)
!12071 = distinct !DISubprogram(name: "read<core::mem::maybe_uninit::MaybeUninit<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtNtB6_3mem12maybe_uninit11MaybeUninitNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB1l_", scope: !793, file: !792, line: 1258, type: !14, scopeLine: 1258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12072 = distinct !DILocation(line: 381, column: 38, scope: !12048, inlinedAt: !12038)
!12073 = !DILocation(line: 385, column: 16, scope: !12074, inlinedAt: !12038)
!12074 = distinct !DILexicalBlock(scope: !12048, file: !2075, line: 381, column: 13)
!12075 = !DILocation(line: 253, column: 13, scope: !12076, inlinedAt: !12077)
!12076 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEE13get_uncheckedB1N_", scope: !2155, file: !371, line: 239, type: !14, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12077 = distinct !DILocation(line: 646, column: 26, scope: !12078, inlinedAt: !12079)
!12078 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<polars_ooc::spill_file::CleanRequest>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE13get_uncheckedjEB1k_", scope: !2159, file: !2158, line: 639, type: !14, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12079 = distinct !DILocation(line: 93, column: 47, scope: !12080, inlinedAt: !12083)
!12080 = distinct !DILexicalBlock(scope: !12081, file: !2075, line: 92, column: 9)
!12081 = distinct !DILexicalBlock(scope: !12082, file: !2075, line: 92, column: 9)
!12082 = distinct !DISubprogram(name: "destroy<polars_ooc::spill_file::CleanRequest>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE7destroyBX_", scope: !10327, file: !2075, line: 89, type: !14, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12083 = distinct !DILocation(line: 386, column: 17, scope: !12074, inlinedAt: !12038)
!12084 = !DILocation(line: 2447, column: 9, scope: !12085, inlinedAt: !12086)
!12085 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCskAlUH1kY1DR_10polars_ooc", scope: !165, file: !164, line: 2443, type: !14, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12086 = distinct !DILocation(line: 3615, column: 24, scope: !12087, inlinedAt: !12088)
!12087 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !84, file: !79, line: 3614, type: !14, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12088 = distinct !DILocation(line: 2870, column: 43, scope: !12089, inlinedAt: !12090)
!12089 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !84, file: !79, line: 2868, type: !14, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12090 = distinct !DILocation(line: 96, column: 27, scope: !12091, inlinedAt: !12083)
!12091 = distinct !DILexicalBlock(scope: !12080, file: !2075, line: 93, column: 13)
!12092 = !DILocation(line: 3905, column: 24, scope: !113, inlinedAt: !12093)
!12093 = distinct !DILocation(line: 2870, column: 26, scope: !12089, inlinedAt: !12090)
!12094 = !DILocation(line: 96, column: 16, scope: !12091, inlinedAt: !12083)
!12095 = !DILocation(line: 4138, column: 23, scope: !12096, inlinedAt: !12097)
!12096 = distinct !DISubprogram(name: "atomic_or<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic9atomic_orjjECskAlUH1kY1DR_10polars_ooc", scope: !80, file: !79, line: 4131, type: !14, scopeLine: 4131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12097 = distinct !DILocation(line: 3295, column: 26, scope: !12098, inlinedAt: !12099)
!12098 = distinct !DISubprogram(name: "fetch_or", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE8fetch_or", scope: !84, file: !79, line: 3293, type: !14, scopeLine: 3293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12099 = distinct !DILocation(line: 97, column: 31, scope: !12091, inlinedAt: !12083)
!12100 = !DILocation(line: 97, column: 20, scope: !12091, inlinedAt: !12083)
!12101 = !DILocation(line: 898, column: 17, scope: !12102, inlinedAt: !12103)
!12102 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !668, file: !667, line: 886, type: !14, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12103 = distinct !DILocation(line: 214, column: 28, scope: !12104, inlinedAt: !12105)
!12104 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !671, file: !656, line: 212, type: !14, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12105 = distinct !DILocation(line: 784, column: 35, scope: !12106, inlinedAt: !12108)
!12106 = distinct !DILexicalBlock(scope: !12107, file: !656, line: 782, column: 13)
!12107 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCskAlUH1kY1DR_10polars_ooc", scope: !657, file: !656, line: 780, type: !14, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12108 = distinct !DILocation(line: 866, column: 14, scope: !12109, inlinedAt: !12110)
!12109 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCskAlUH1kY1DR_10polars_ooc", scope: !662, file: !656, line: 865, type: !14, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12110 = distinct !DILocation(line: 92, column: 18, scope: !12111, inlinedAt: !12083)
!12111 = !DILexicalBlockFile(scope: !12081, file: !2075, discriminator: 2)
!12112 = !DILocation(line: 1917, column: 50, scope: !12113, inlinedAt: !12114)
!12113 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !774, file: !280, line: 1917, type: !14, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12114 = distinct !DILocation(line: 781, column: 12, scope: !12107, inlinedAt: !12108)
!12115 = !DILocation(line: 781, column: 12, scope: !12107, inlinedAt: !12108)
!12116 = !DILocation(line: 4138, column: 23, scope: !12117, inlinedAt: !12118)
!12117 = distinct !DISubprogram(name: "atomic_or<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic9atomic_orjjECskAlUH1kY1DR_10polars_ooc", scope: !80, file: !79, line: 4131, type: !14, scopeLine: 4131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12118 = distinct !DILocation(line: 3295, column: 26, scope: !12119, inlinedAt: !12120)
!12119 = distinct !DISubprogram(name: "fetch_or", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE8fetch_or", scope: !84, file: !79, line: 3293, type: !14, scopeLine: 3293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12120 = distinct !DILocation(line: 387, column: 34, scope: !12074, inlinedAt: !12038)
!12121 = !DILocation(line: 387, column: 23, scope: !12074, inlinedAt: !12038)
!12122 = !DILocation(line: 128, column: 14, scope: !2113, inlinedAt: !12123)
!12123 = distinct !DILocation(line: 229, column: 22, scope: !2117, inlinedAt: !12124)
!12124 = distinct !DILocation(line: 344, column: 9, scope: !2120, inlinedAt: !12125)
!12125 = distinct !DILocation(line: 462, column: 23, scope: !2122, inlinedAt: !12126)
!12126 = distinct !DILocation(line: 1921, column: 24, scope: !2125, inlinedAt: !12127)
!12127 = distinct !DILocation(line: 810, column: 1, scope: !2132, inlinedAt: !12128)
!12128 = distinct !DILocation(line: 1003, column: 1, scope: !12129, inlinedAt: !12130)
!12129 = distinct !DISubprogram(name: "drop<alloc::boxed::Box<std::sync::mpmc::list::Block<polars_ooc::spill_file::CleanRequest>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem4dropINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEEEB1V_", scope: !2136, file: !2135, line: 999, type: !14, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12130 = distinct !DILocation(line: 105, column: 9, scope: !12082, inlinedAt: !12131)
!12131 = distinct !DILocation(line: 0, scope: !12074, inlinedAt: !12038)
!12132 = !DILocation(line: 391, column: 13, scope: !12074, inlinedAt: !12038)
!12133 = !DILocation(line: 1917, column: 50, scope: !12113, inlinedAt: !12134)
!12134 = distinct !DILocation(line: 781, column: 12, scope: !12107, inlinedAt: !12135)
!12135 = distinct !DILocation(line: 866, column: 14, scope: !12109, inlinedAt: !12136)
!12136 = distinct !DILocation(line: 92, column: 18, scope: !12111, inlinedAt: !12137)
!12137 = distinct !DILocation(line: 388, column: 17, scope: !12074, inlinedAt: !12038)
!12138 = !DILocation(line: 781, column: 12, scope: !12107, inlinedAt: !12135)
!12139 = !DILocation(line: 898, column: 17, scope: !12102, inlinedAt: !12140)
!12140 = distinct !DILocation(line: 214, column: 28, scope: !12104, inlinedAt: !12141)
!12141 = distinct !DILocation(line: 784, column: 35, scope: !12106, inlinedAt: !12135)
!12142 = !DILocation(line: 253, column: 13, scope: !12076, inlinedAt: !12143)
!12143 = distinct !DILocation(line: 646, column: 26, scope: !12078, inlinedAt: !12144)
!12144 = distinct !DILocation(line: 93, column: 47, scope: !12080, inlinedAt: !12137)
!12145 = !DILocation(line: 2447, column: 9, scope: !12085, inlinedAt: !12146)
!12146 = distinct !DILocation(line: 3615, column: 24, scope: !12087, inlinedAt: !12147)
!12147 = distinct !DILocation(line: 2870, column: 43, scope: !12089, inlinedAt: !12148)
!12148 = distinct !DILocation(line: 96, column: 27, scope: !12091, inlinedAt: !12137)
!12149 = !DILocation(line: 3905, column: 24, scope: !113, inlinedAt: !12150)
!12150 = distinct !DILocation(line: 2870, column: 26, scope: !12089, inlinedAt: !12148)
!12151 = !DILocation(line: 96, column: 16, scope: !12091, inlinedAt: !12137)
!12152 = !DILocation(line: 4138, column: 23, scope: !12096, inlinedAt: !12153)
!12153 = distinct !DILocation(line: 3295, column: 26, scope: !12098, inlinedAt: !12154)
!12154 = distinct !DILocation(line: 97, column: 31, scope: !12091, inlinedAt: !12137)
!12155 = !DILocation(line: 97, column: 20, scope: !12091, inlinedAt: !12137)
!12156 = !DILocation(line: 966, column: 15, scope: !12157, inlinedAt: !12158)
!12157 = distinct !DISubprogram(name: "map_err<polars_ooc::spill_file::CleanRequest, (), std::sync::mpsc::RecvTimeoutError, std::sync::mpmc::list::{impl#3}::recv::{closure_env#0}<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestuE7map_errNtNtNtCsh8eZTKRCwoO_3std4sync4mpsc16RecvTimeoutErrorNCNvMs1_NtNtB1Q_4mpmc4listINtB2K_7ChannelBI_E4recv0EBM_", scope: !261, file: !151, line: 962, type: !14, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12158 = distinct !DILocation(line: 431, column: 45, scope: !11895, inlinedAt: !11889)
!12159 = !DILocation(line: 966, column: 9, scope: !12157, inlinedAt: !12158)
!12160 = !DILocation(line: 435, column: 25, scope: !12030, inlinedAt: !11889)
!12161 = !DILocation(line: 436, column: 20, scope: !12030, inlinedAt: !11889)
!12162 = !DILocation(line: 25, column: 38, scope: !12163, inlinedAt: !12164)
!12163 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXs5_NtNtNtNtCsh8eZTKRCwoO_3std3sys3pal4unix4timeNtB5_8TimespecNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !3647, file: !3646, line: 25, type: !14, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12164 = distinct !DILocation(line: 49, column: 38, scope: !12165, inlinedAt: !12166)
!12165 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsi_NtNtNtCsh8eZTKRCwoO_3std3sys4time4unixNtB5_7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !3654, file: !3653, line: 49, type: !14, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12166 = distinct !DILocation(line: 154, column: 38, scope: !12167, inlinedAt: !12168)
!12167 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsm_NtCsh8eZTKRCwoO_3std4timeNtB5_7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !3660, file: !3659, line: 154, type: !14, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12168 = distinct !DILocation(line: 1466, column: 14, scope: !12169, inlinedAt: !12170)
!12169 = distinct !DISubprogram(name: "ge<std::time::Instant, std::time::Instant>", linkageName: "_RNvYNtNtCsh8eZTKRCwoO_3std4time7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd2geCskAlUH1kY1DR_10polars_ooc", scope: !3664, file: !280, line: 1465, type: !14, scopeLine: 1465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12170 = distinct !DILocation(line: 436, column: 20, scope: !12030, inlinedAt: !11889)
!12171 = !DILocation(line: 46, column: 13, scope: !12172, inlinedAt: !12173)
!12172 = distinct !DISubprogram(name: "with<std::sync::mpmc::list::{impl#3}::recv::{closure_env#1}<polars_ooc::spill_file::CleanRequest>, ()>", linkageName: "_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEB1C_", scope: !4215, file: !3299, line: 37, type: !14, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12173 = distinct !DILocation(line: 442, column: 13, scope: !11895, inlinedAt: !11889)
!12174 = !{!12175, !11883}
!12175 = distinct !{!12175, !12176, !"_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEB1C_: argument 0"}
!12176 = distinct !{!12176, !"_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEB1C_"}
!12177 = !DILocation(line: 46, column: 21, scope: !12172, inlinedAt: !12173)
!12178 = !DILocation(line: 555, column: 18, scope: !12179, inlinedAt: !12180)
!12179 = distinct !DISubprogram(name: "get<std::sys::thread_local::native::lazy::State<()>>", linkageName: "_RNvMs8_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazy5StateuEE3getCskAlUH1kY1DR_10polars_ooc", scope: !5150, file: !164, line: 552, type: !14, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12180 = distinct !DILocation(line: 59, column: 42, scope: !12181, inlinedAt: !12183)
!12181 = distinct !DILexicalBlock(scope: !12182, file: !5153, line: 59, column: 48)
!12182 = distinct !DISubprogram(name: "get_or_init<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>, (), fn() -> core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>>", linkageName: "_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECskAlUH1kY1DR_10polars_ooc", scope: !5155, file: !5153, line: 58, type: !14, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12183 = distinct !DILocation(line: 97, column: 49, scope: !12184, inlinedAt: !12187)
!12184 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00CskAlUH1kY1DR_10polars_ooc", scope: !12185, file: !5132, line: 92, type: !294, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12185 = !DINamespace(name: "{constant#0}", scope: !12186)
!12186 = !DINamespace(name: "CONTEXT", scope: !3300)
!12187 = distinct !DILocation(line: 250, column: 5, scope: !12188, inlinedAt: !12189)
!12188 = distinct !DISubprogram(name: "call_once<std::sync::mpmc::context::{impl#0}::with::CONTEXT::{constant#0}::{closure_env#0}, (core::option::Option<&mut core::option::Option<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>>>)>", linkageName: "_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc", scope: !3672, file: !1089, line: 250, type: !14, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
end_hunk_4
begin_hunk_5_@llvm.sqrt.v2f64
!12304 = distinct !DILocation(line: 1763, column: 13, scope: !12301, inlinedAt: !12302)
!12305 = !DILocation(line: 57, column: 31, scope: !12293, inlinedAt: !12214)
!12306 = !DILocation(line: 1015, column: 18, scope: !12223, inlinedAt: !12307)
!12307 = distinct !DILocation(line: 48, column: 30, scope: !12308, inlinedAt: !12309)
!12308 = !DILexicalBlockFile(scope: !12225, file: !3299, discriminator: 2)
!12309 = distinct !DILocation(line: 57, column: 31, scope: !12293, inlinedAt: !12214)
!12310 = !DILocation(line: 49, column: 13, scope: !12311, inlinedAt: !12309)
!12311 = distinct !DILexicalBlock(scope: !12225, file: !3299, line: 48, column: 13)
!12312 = !DILocation(line: 437, column: 9, scope: !12313, inlinedAt: !12314)
!12313 = distinct !DISubprogram(name: "set<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE3setCskAlUH1kY1DR_10polars_ooc", scope: !5150, file: !164, line: 433, type: !14, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12314 = distinct !DILocation(line: 58, column: 26, scope: !12315, inlinedAt: !12214)
!12315 = distinct !DILexicalBlock(scope: !12293, file: !3299, line: 57, column: 21)
!12316 = !DILocation(line: 929, column: 22, scope: !12207, inlinedAt: !12317)
!12317 = distinct !DILocation(line: 513, column: 9, scope: !12318, inlinedAt: !12319)
!12318 = !DILexicalBlockFile(scope: !12209, file: !164, discriminator: 2)
!12319 = distinct !DILocation(line: 437, column: 14, scope: !12313, inlinedAt: !12314)
!12320 = !DILocation(line: 930, column: 49, scope: !12321, inlinedAt: !12317)
!12321 = distinct !DILexicalBlock(scope: !12207, file: !2135, line: 929, column: 9)
!12322 = !DILocation(line: 810, column: 1, scope: !12323, inlinedAt: !12324)
!12323 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc", scope: !26, file: !25, line: 810, type: !14, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12324 = distinct !DILocation(line: 437, column: 26, scope: !12313, inlinedAt: !12314)
!12325 = !DILocation(line: 3956, column: 24, scope: !3346, inlinedAt: !12326)
!12326 = distinct !DILocation(line: 3193, column: 26, scope: !3348, inlinedAt: !12327)
!12327 = distinct !DILocation(line: 2814, column: 32, scope: !3342, inlinedAt: !12328)
!12328 = distinct !DILocation(line: 810, column: 1, scope: !3335, inlinedAt: !12329)
!12329 = distinct !DILocation(line: 810, column: 1, scope: !3329, inlinedAt: !12330)
!12330 = distinct !DILocation(line: 810, column: 1, scope: !12323, inlinedAt: !12324)
!12331 = !{!12332, !12334, !12336, !12338, !12175, !11883}
!12332 = distinct !{!12332, !12333, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc: argument 0"}
!12333 = distinct !{!12333, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc"}
!12334 = distinct !{!12334, !12335, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!12335 = distinct !{!12335, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc"}
!12336 = distinct !{!12336, !12337, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc: argument 0"}
!12337 = distinct !{!12337, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc"}
!12338 = distinct !{!12338, !12339, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!12339 = distinct !{!12339, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc"}
!12340 = !DILocation(line: 2814, column: 12, scope: !3342, inlinedAt: !12328)
!12341 = !DILocation(line: 4387, column: 24, scope: !1687, inlinedAt: !12342)
!12342 = distinct !DILocation(line: 64, column: 9, scope: !3342, inlinedAt: !12328)
!12343 = !DILocation(line: 2857, column: 18, scope: !3342, inlinedAt: !12328)
!12344 = !DILocation(line: 437, column: 26, scope: !12313, inlinedAt: !12314)
!12345 = !DILocation(line: 60, column: 17, scope: !12213, inlinedAt: !12214)
!12346 = !DILocation(line: 61, column: 13, scope: !12213, inlinedAt: !12214)
!12347 = !DILocation(line: 3956, column: 24, scope: !3346, inlinedAt: !12348)
!12348 = distinct !DILocation(line: 3193, column: 26, scope: !3348, inlinedAt: !12349)
!12349 = distinct !DILocation(line: 2814, column: 32, scope: !3342, inlinedAt: !12350)
!12350 = distinct !DILocation(line: 810, column: 1, scope: !3335, inlinedAt: !12351)
!12351 = distinct !DILocation(line: 810, column: 1, scope: !3329, inlinedAt: !12352)
!12352 = distinct !DILocation(line: 60, column: 17, scope: !12213, inlinedAt: !12214)
!12353 = !{!12354, !12356, !12358, !12175, !11883}
!12354 = distinct !{!12354, !12355, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc: argument 0"}
!12355 = distinct !{!12355, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc"}
!12356 = distinct !{!12356, !12357, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!12357 = distinct !{!12357, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc"}
!12358 = distinct !{!12358, !12359, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc: argument 0"}
!12359 = distinct !{!12359, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc"}
!12360 = !DILocation(line: 2814, column: 12, scope: !3342, inlinedAt: !12350)
!12361 = !DILocation(line: 4387, column: 24, scope: !1687, inlinedAt: !12362)
!12362 = distinct !DILocation(line: 64, column: 9, scope: !3342, inlinedAt: !12350)
!12363 = !DILocation(line: 2857, column: 18, scope: !3342, inlinedAt: !12350)
!12364 = !DILocation(line: 1622, column: 23, scope: !12365, inlinedAt: !12367)
!12365 = distinct !DILexicalBlock(scope: !12366, file: !151, line: 1622, column: 13)
!12366 = distinct !DISubprogram(name: "unwrap_or_else<(), std::thread::local::AccessError, std::sync::mpmc::context::{impl#0}::with::{closure_env#2}<std::sync::mpmc::list::{impl#3}::recv::{closure_env#1}<polars_ooc::spill_file::CleanRequest>, ()>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultuNtNtNtCsh8eZTKRCwoO_3std6thread5local11AccessErrorE14unwrap_or_elseNCINvMNtNtNtBP_4sync4mpmc7contextNtB1U_7Context4withNCNvMs1_NtB1W_4listINtB2M_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEs0_0EB3g_", scope: !261, file: !151, line: 1616, type: !14, scopeLine: 1616, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12367 = distinct !DILocation(line: 62, column: 14, scope: !12192, inlinedAt: !12173)
!12368 = !DILocation(line: 63, column: 5, scope: !12172, inlinedAt: !12173)
!12369 = !DILocation(line: 49, column: 26, scope: !12370, inlinedAt: !12371)
!12370 = distinct !DISubprogram(name: "as_inner", linkageName: "_RNvMs6_NtNtCscgRAwXFJnXP_4core3num11niche_typesNtB5_11Nanoseconds8as_inner", scope: !199, file: !198, line: 46, type: !14, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12371 = distinct !DILocation(line: 70, column: 32, scope: !12372, inlinedAt: !12373)
!12372 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXsa_NtNtCscgRAwXFJnXP_4core3num11niche_typesNtB5_11NanosecondsNtNtB9_3cmp3Ord3cmp", scope: !11799, file: !198, line: 69, type: !14, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12373 = distinct !DILocation(line: 77, column: 22, scope: !12374, inlinedAt: !12375)
!12374 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsb_NtNtCscgRAwXFJnXP_4core3num11niche_typesNtB5_11NanosecondsNtNtB9_3cmp10PartialOrd11partial_cmp", scope: !11802, file: !198, line: 76, type: !14, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12375 = distinct !DILocation(line: 25, column: 38, scope: !12376, inlinedAt: !12164)
!12376 = !DILexicalBlockFile(scope: !12163, file: !3646, discriminator: 2)
!12377 = !DILocation(line: 539, column: 9, scope: !12378, inlinedAt: !12379)
!12378 = distinct !DISubprogram(name: "is_ge", linkageName: "_RNvMNtCscgRAwXFJnXP_4core3cmpNtB2_8Ordering5is_ge", scope: !3669, file: !280, line: 538, type: !14, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12379 = distinct !DILocation(line: 250, column: 5, scope: !12380, inlinedAt: !12381)
!12380 = distinct !DISubprogram(name: "call_once<fn(core::cmp::Ordering) -> bool, (core::cmp::Ordering)>", linkageName: "_RNvYNvMNtCscgRAwXFJnXP_4core3cmpNtB5_8Ordering5is_geINtNtNtB7_3ops8function6FnOnceTBu_EE9call_onceCskAlUH1kY1DR_10polars_ooc", scope: !3672, file: !1089, line: 250, type: !14, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12381 = distinct !DILocation(line: 664, column: 24, scope: !12382, inlinedAt: !12384)
!12382 = distinct !DILexicalBlock(scope: !12383, file: !2869, line: 664, column: 13)
!12383 = distinct !DISubprogram(name: "is_some_and<core::cmp::Ordering, fn(core::cmp::Ordering) -> bool>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE11is_some_andNvMBK_BI_5is_geECskAlUH1kY1DR_10polars_ooc", scope: !2871, file: !2869, line: 661, type: !14, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12384 = distinct !DILocation(line: 1466, column: 33, scope: !12169, inlinedAt: !12170)
!12385 = !DILocation(line: 437, column: 28, scope: !12030, inlinedAt: !11889)
!12386 = !DILocation(line: 0, scope: !12387, inlinedAt: !11889)
!12387 = !DILexicalBlockFile(scope: !11895, file: !1534, discriminator: 0)
!12388 = !DILocation(line: 968, column: 23, scope: !12389, inlinedAt: !12158)
!12389 = distinct !DILexicalBlock(scope: !12157, file: !151, line: 968, column: 13)
!12390 = !DILocation(line: 968, column: 32, scope: !12157, inlinedAt: !12158)
!12391 = !DILocation(line: 967, column: 22, scope: !12392, inlinedAt: !12158)
!12392 = distinct !DILexicalBlock(scope: !12157, file: !151, line: 967, column: 13)
!12393 = !DILocation(line: 967, column: 16, scope: !12157, inlinedAt: !12158)
!12394 = !DILocation(line: 970, column: 5, scope: !12157, inlinedAt: !12158)
!12395 = !DILocation(line: 0, scope: !11895, inlinedAt: !11889)
!12396 = !DILocation(line: 466, column: 5, scope: !11888, inlinedAt: !11889)
!12397 = !DILocation(line: 466, column: 6, scope: !11888, inlinedAt: !11889)
!12398 = !DILocation(line: 1012, column: 57, scope: !11874)
!12399 = !DILocation(line: 1013, column: 48, scope: !12400)
!12400 = distinct !DILexicalBlock(scope: !11874, file: !2441, line: 1013, column: 13)
!12401 = !DILocation(line: 1013, column: 57, scope: !11874)
!12402 = !DILocation(line: 966, column: 15, scope: !12403, inlinedAt: !12404)
!12403 = distinct !DISubprogram(name: "map_err<polars_ooc::spill_file::CleanRequest, std::sync::mpsc::RecvTimeoutError, std::sync::mpsc::RecvError, std::sync::mpmc::{impl#18}::recv::{closure_env#0}<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestNtNtNtCsh8eZTKRCwoO_3std4sync4mpsc16RecvTimeoutErrorE7map_errNtB1E_9RecvErrorNCNvMsg_NtB1G_4mpmcINtB2Z_8ReceiverBI_E4recv0EBM_", scope: !261, file: !151, line: 962, type: !14, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12404 = !DILocation(line: 1015, column: 10, scope: !11874)
!12405 = !DILocation(line: 966, column: 9, scope: !12403, inlinedAt: !12404)
!12406 = !DILocation(line: 968, column: 23, scope: !12407, inlinedAt: !12404)
!12407 = distinct !DILexicalBlock(scope: !12403, file: !151, line: 968, column: 13)
!12408 = !DILocation(line: 968, column: 32, scope: !12403, inlinedAt: !12404)
!12409 = !DILocation(line: 967, column: 16, scope: !12403, inlinedAt: !12404)
!12410 = !DILocation(line: 970, column: 5, scope: !12403, inlinedAt: !12404)
!12411 = !DILocation(line: 1015, column: 31, scope: !11874)
!12412 = !DILocation(line: 1016, column: 6, scope: !11874)
!12413 = distinct !DISubprogram(name: "recv<()>", linkageName: "_RNvMsg_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB5_8ReceiveruE4recvCskAlUH1kY1DR_10polars_ooc", scope: !11875, file: !2441, line: 1009, type: !14, scopeLine: 1009, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12414 = !DILocation(line: 1010, column: 15, scope: !12413)
!12415 = !DILocation(line: 0, scope: !12413)
!12416 = !DILocation(line: 1010, column: 9, scope: !12413)
!12417 = !DILocation(line: 1011, column: 49, scope: !12418)
!12418 = distinct !DILexicalBlock(scope: !12413, file: !2441, line: 1011, column: 13)
!12419 = !DILocation(line: 1011, column: 58, scope: !12413)
!12420 = !DILocation(line: 427, column: 26, scope: !12421, inlinedAt: !12422)
!12421 = distinct !DISubprogram(name: "recv<()>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4recvCskAlUH1kY1DR_10polars_ooc", scope: !4191, file: !2075, line: 426, type: !14, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12422 = distinct !DILocation(line: 1012, column: 48, scope: !12423)
!12423 = distinct !DILexicalBlock(scope: !12413, file: !2441, line: 1012, column: 13)
!12424 = !DILocation(line: 5, column: 17, scope: !12425, inlinedAt: !12426)
!12425 = distinct !DISubprogram(name: "default", linkageName: "_RNvXs2_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc6selectNtB5_5TokenNtNtCscgRAwXFJnXP_4core7default7Default7default", scope: !11892, file: !4178, line: 5, type: !14, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12426 = distinct !DILocation(line: 427, column: 26, scope: !12421, inlinedAt: !12422)
!12427 = !DILocation(line: 428, column: 9, scope: !12428, inlinedAt: !12422)
!12428 = distinct !DILexicalBlock(scope: !12421, file: !2075, line: 427, column: 9)
!12429 = !{!12430}
!12430 = distinct !{!12430, !12431, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_recvCskAlUH1kY1DR_10polars_ooc: argument 0"}
!12431 = distinct !{!12431, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_recvCskAlUH1kY1DR_10polars_ooc"}
!12432 = !DILocation(line: 429, column: 21, scope: !12428, inlinedAt: !12422)
!12433 = !DILocation(line: 289, column: 9, scope: !12434, inlinedAt: !12438)
!12434 = distinct !DILexicalBlock(scope: !12435, file: !2075, line: 287, column: 9)
!12435 = distinct !DILexicalBlock(scope: !12436, file: !2075, line: 286, column: 9)
!12436 = distinct !DILexicalBlock(scope: !12437, file: !2075, line: 285, column: 9)
!12437 = distinct !DISubprogram(name: "start_recv<()>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_recvCskAlUH1kY1DR_10polars_ooc", scope: !4191, file: !2075, line: 284, type: !14, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12438 = distinct !DILocation(line: 429, column: 21, scope: !12428, inlinedAt: !12422)
!12439 = !DILocation(line: 0, scope: !12437, inlinedAt: !12438)
!12440 = !DILocation(line: 3905, column: 24, scope: !113, inlinedAt: !12441)
!12441 = distinct !DILocation(line: 2870, column: 26, scope: !12442, inlinedAt: !12443)
!12442 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !84, file: !79, line: 2868, type: !14, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12443 = distinct !DILocation(line: 0, scope: !12436, inlinedAt: !12438)
!12444 = !DILocation(line: 3905, column: 24, scope: !2213, inlinedAt: !12445)
!12445 = distinct !DILocation(line: 1732, column: 18, scope: !12446, inlinedAt: !12447)
!12446 = distinct !DISubprogram(name: "load<std::sync::mpmc::list::Block<()>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEE4loadCskAlUH1kY1DR_10polars_ooc", scope: !84, file: !79, line: 1730, type: !14, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12447 = distinct !DILocation(line: 0, scope: !12435, inlinedAt: !12438)
!12448 = !DILocation(line: 291, column: 26, scope: !12434, inlinedAt: !12438)
!12449 = !DILocation(line: 294, column: 16, scope: !12450, inlinedAt: !12438)
!12450 = distinct !DILexicalBlock(scope: !12434, file: !2075, line: 291, column: 13)
!12451 = !DILocation(line: 127, column: 12, scope: !10232, inlinedAt: !12452)
!12452 = distinct !DILocation(line: 295, column: 25, scope: !12450, inlinedAt: !12438)
!12453 = !DILocation(line: 132, column: 13, scope: !10232, inlinedAt: !12452)
!12454 = !DILocation(line: 1917, column: 50, scope: !10239, inlinedAt: !12455)
!12455 = distinct !DILocation(line: 781, column: 12, scope: !10242, inlinedAt: !12456)
!12456 = distinct !DILocation(line: 866, column: 14, scope: !10244, inlinedAt: !12457)
!12457 = distinct !DILocation(line: 128, column: 22, scope: !10246, inlinedAt: !12452)
!12458 = !DILocation(line: 781, column: 12, scope: !10242, inlinedAt: !12456)
!12459 = !DILocation(line: 3558, column: 28, scope: !10250, inlinedAt: !12460)
!12460 = distinct !DILocation(line: 128, column: 41, scope: !10232, inlinedAt: !12452)
!12461 = !DILocation(line: 25, column: 14, scope: !10255, inlinedAt: !12462)
!12462 = distinct !DILocation(line: 287, column: 13, scope: !10257, inlinedAt: !12463)
!12463 = distinct !DILocation(line: 129, column: 17, scope: !10247, inlinedAt: !12452)
!12464 = distinct !{!12464, !10260}
!12465 = !DILocation(line: 135, column: 23, scope: !10232, inlinedAt: !12452)
!12466 = !DILocation(line: 0, scope: !12467, inlinedAt: !12438)
!12467 = !DILexicalBlockFile(scope: !12450, file: !1534, discriminator: 0)
!12468 = !DILocation(line: 301, column: 32, scope: !12450, inlinedAt: !12438)
!12469 = !DILocation(line: 303, column: 16, scope: !12470, inlinedAt: !12438)
!12470 = distinct !DILexicalBlock(scope: !12450, file: !2075, line: 301, column: 13)
!12471 = !DILocation(line: 4390, column: 23, scope: !1687, inlinedAt: !12472)
!12472 = distinct !DILocation(line: 304, column: 17, scope: !12470, inlinedAt: !12438)
!12473 = !DILocation(line: 3904, column: 24, scope: !113, inlinedAt: !12474)
!12474 = distinct !DILocation(line: 2870, column: 26, scope: !12442, inlinedAt: !12475)
!12475 = distinct !DILocation(line: 305, column: 44, scope: !12470, inlinedAt: !12438)
!12476 = !DILocation(line: 308, column: 37, scope: !12477, inlinedAt: !12438)
!12477 = distinct !DILexicalBlock(scope: !12470, file: !2075, line: 305, column: 17)
!12478 = !DILocation(line: 308, column: 20, scope: !12477, inlinedAt: !12438)
!12479 = !DILocation(line: 321, column: 20, scope: !12477, inlinedAt: !12438)
!12480 = !DILocation(line: 310, column: 24, scope: !12477, inlinedAt: !12438)
!12481 = !DILocation(line: 0, scope: !12450, inlinedAt: !12438)
!12482 = !DILocation(line: 328, column: 16, scope: !12470, inlinedAt: !12438)
!12483 = !DILocation(line: 127, column: 12, scope: !10232, inlinedAt: !12484)
!12484 = distinct !DILocation(line: 329, column: 25, scope: !12470, inlinedAt: !12438)
!12485 = !DILocation(line: 132, column: 13, scope: !10232, inlinedAt: !12484)
!12486 = !DILocation(line: 1917, column: 50, scope: !10239, inlinedAt: !12487)
!12487 = distinct !DILocation(line: 781, column: 12, scope: !10242, inlinedAt: !12488)
!12488 = distinct !DILocation(line: 866, column: 14, scope: !10244, inlinedAt: !12489)
!12489 = distinct !DILocation(line: 128, column: 22, scope: !10246, inlinedAt: !12484)
!12490 = !DILocation(line: 781, column: 12, scope: !10242, inlinedAt: !12488)
!12491 = !DILocation(line: 3558, column: 28, scope: !10250, inlinedAt: !12492)
!12492 = distinct !DILocation(line: 128, column: 41, scope: !10232, inlinedAt: !12484)
!12493 = !DILocation(line: 25, column: 14, scope: !10255, inlinedAt: !12494)
!12494 = distinct !DILocation(line: 287, column: 13, scope: !10257, inlinedAt: !12495)
!12495 = distinct !DILocation(line: 129, column: 17, scope: !10247, inlinedAt: !12484)
!12496 = distinct !{!12496, !10260}
!12497 = !DILocation(line: 135, column: 23, scope: !10232, inlinedAt: !12484)
!12498 = !DILocation(line: 4084, column: 17, scope: !10716, inlinedAt: !12499)
!12499 = distinct !DILocation(line: 3130, column: 21, scope: !12500, inlinedAt: !12501)
!12500 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !84, file: !79, line: 3123, type: !14, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12501 = distinct !DILocation(line: 336, column: 35, scope: !12470, inlinedAt: !12438)
!12502 = !DILocation(line: 0, scope: !10716, inlinedAt: !12499)
!12503 = !DILocation(line: 336, column: 13, scope: !12470, inlinedAt: !12438)
!12504 = !DILocation(line: 1917, column: 50, scope: !10724, inlinedAt: !12505)
!12505 = distinct !DILocation(line: 781, column: 12, scope: !10726, inlinedAt: !12506)
!12506 = distinct !DILocation(line: 866, column: 14, scope: !10728, inlinedAt: !12507)
!12507 = distinct !DILocation(line: 115, column: 18, scope: !10730, inlinedAt: !12508)
!12508 = distinct !DILocation(line: 360, column: 29, scope: !12470, inlinedAt: !12438)
!12509 = !DILocation(line: 781, column: 12, scope: !10726, inlinedAt: !12506)
!12510 = !DILocation(line: 1077, column: 12, scope: !10737, inlinedAt: !12511)
!12511 = distinct !DILocation(line: 114, column: 36, scope: !10733, inlinedAt: !12508)
!12512 = !DILocation(line: 3558, column: 28, scope: !10250, inlinedAt: !12513)
!12513 = distinct !DILocation(line: 115, column: 26, scope: !10732, inlinedAt: !12508)
!12514 = !DILocation(line: 25, column: 14, scope: !10742, inlinedAt: !12515)
!12515 = distinct !DILocation(line: 287, column: 13, scope: !10744, inlinedAt: !12516)
!12516 = distinct !DILocation(line: 116, column: 13, scope: !10731, inlinedAt: !12508)
!12517 = distinct !{!12517, !10260}
!12518 = !DILocation(line: 119, column: 23, scope: !10732, inlinedAt: !12508)
!12519 = !DILocation(line: 555, column: 18, scope: !10749, inlinedAt: !12520)
!12520 = distinct !DILocation(line: 119, column: 33, scope: !10732, inlinedAt: !12508)
!12521 = !DILocation(line: 344, column: 24, scope: !12470, inlinedAt: !12438)
!12522 = !DILocation(line: 3905, column: 24, scope: !2213, inlinedAt: !12523)
!12523 = distinct !DILocation(line: 1732, column: 18, scope: !10522, inlinedAt: !12524)
!12524 = distinct !DILocation(line: 80, column: 34, scope: !10524, inlinedAt: !12525)
!12525 = distinct !DILocation(line: 345, column: 45, scope: !12470, inlinedAt: !12438)
!12526 = !DILocation(line: 81, column: 17, scope: !10528, inlinedAt: !12525)
!12527 = !DILocation(line: 127, column: 12, scope: !10232, inlinedAt: !12528)
!12528 = distinct !DILocation(line: 84, column: 21, scope: !10528, inlinedAt: !12525)
!12529 = !DILocation(line: 132, column: 13, scope: !10232, inlinedAt: !12528)
!12530 = !DILocation(line: 1917, column: 50, scope: !10239, inlinedAt: !12531)
!12531 = distinct !DILocation(line: 781, column: 12, scope: !10242, inlinedAt: !12532)
!12532 = distinct !DILocation(line: 866, column: 14, scope: !10244, inlinedAt: !12533)
!12533 = distinct !DILocation(line: 128, column: 22, scope: !10246, inlinedAt: !12528)
!12534 = !DILocation(line: 781, column: 12, scope: !10242, inlinedAt: !12532)
!12535 = !DILocation(line: 3558, column: 28, scope: !10250, inlinedAt: !12536)
!12536 = distinct !DILocation(line: 128, column: 41, scope: !10232, inlinedAt: !12528)
!12537 = !DILocation(line: 25, column: 14, scope: !10255, inlinedAt: !12538)
!12538 = distinct !DILocation(line: 287, column: 13, scope: !10257, inlinedAt: !12539)
!12539 = distinct !DILocation(line: 129, column: 17, scope: !10247, inlinedAt: !12528)
!12540 = distinct !{!12540, !10260}
!12541 = !DILocation(line: 135, column: 23, scope: !10232, inlinedAt: !12528)
!12542 = !DILocation(line: 346, column: 46, scope: !12543, inlinedAt: !12438)
!12543 = distinct !DILexicalBlock(scope: !12470, file: !2075, line: 345, column: 25)
!12544 = !DILocation(line: 2511, column: 13, scope: !12545, inlinedAt: !12546)
!12545 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !668, file: !667, line: 2510, type: !14, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12546 = distinct !DILocation(line: 346, column: 69, scope: !12543, inlinedAt: !12438)
!12547 = !DILocation(line: 3904, column: 24, scope: !2213, inlinedAt: !12548)
!12548 = distinct !DILocation(line: 1732, column: 18, scope: !12446, inlinedAt: !12549)
!12549 = distinct !DILocation(line: 347, column: 42, scope: !12550, inlinedAt: !12438)
!12550 = distinct !DILexicalBlock(scope: !12543, file: !2075, line: 346, column: 25)
!12551 = !DILocation(line: 347, column: 29, scope: !12550, inlinedAt: !12438)
!12552 = !DILocation(line: 3890, column: 24, scope: !10969, inlinedAt: !12553)
!12553 = distinct !DILocation(line: 1763, column: 13, scope: !12554, inlinedAt: !12555)
!12554 = distinct !DISubprogram(name: "store<std::sync::mpmc::list::Block<()>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEE5storeCskAlUH1kY1DR_10polars_ooc", scope: !84, file: !79, line: 1760, type: !14, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12555 = distinct !DILocation(line: 351, column: 41, scope: !12550, inlinedAt: !12438)
!12556 = !DILocation(line: 3890, column: 24, scope: !10017, inlinedAt: !12557)
!12557 = distinct !DILocation(line: 2898, column: 26, scope: !12558, inlinedAt: !12559)
!12558 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !84, file: !79, line: 2896, type: !14, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12559 = distinct !DILocation(line: 352, column: 41, scope: !12550, inlinedAt: !12438)
!12560 = !DILocation(line: 344, column: 21, scope: !12470, inlinedAt: !12438)
!12561 = !DILocation(line: 435, column: 30, scope: !12562, inlinedAt: !12422)
!12562 = distinct !DILexicalBlock(scope: !12428, file: !2075, line: 435, column: 39)
!12563 = !DILocation(line: 435, column: 20, scope: !12562, inlinedAt: !12422)
!12564 = !DILocation(line: 355, column: 21, scope: !12470, inlinedAt: !12438)
!12565 = !DILocation(line: 356, column: 21, scope: !12470, inlinedAt: !12438)
!12566 = !DILocation(line: 379, column: 24, scope: !12567, inlinedAt: !12570)
!12567 = distinct !DILexicalBlock(scope: !12568, file: !2075, line: 377, column: 9)
!12568 = distinct !DILexicalBlock(scope: !12569, file: !2075, line: 376, column: 9)
!12569 = distinct !DISubprogram(name: "read<()>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4readCskAlUH1kY1DR_10polars_ooc", scope: !4191, file: !2075, line: 369, type: !294, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12570 = distinct !DILocation(line: 431, column: 33, scope: !12428, inlinedAt: !12422)
!12571 = !DILocation(line: 253, column: 13, scope: !12572, inlinedAt: !12573)
!12572 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<()>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotuEE13get_uncheckedCskAlUH1kY1DR_10polars_ooc", scope: !2155, file: !371, line: 239, type: !14, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12573 = distinct !DILocation(line: 646, column: 26, scope: !12574, inlinedAt: !12575)
!12574 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<()>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotuE13get_uncheckedjECskAlUH1kY1DR_10polars_ooc", scope: !2159, file: !2158, line: 639, type: !14, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12575 = distinct !DILocation(line: 379, column: 39, scope: !12567, inlinedAt: !12570)
!12576 = !DILocation(line: 3905, column: 24, scope: !113, inlinedAt: !12577)
!12577 = distinct !DILocation(line: 2870, column: 26, scope: !10566, inlinedAt: !12578)
!12578 = distinct !DILocation(line: 47, column: 26, scope: !10568, inlinedAt: !12579)
!12579 = distinct !DILocation(line: 380, column: 18, scope: !12580, inlinedAt: !12570)
!12580 = distinct !DILexicalBlock(scope: !12567, file: !2075, line: 379, column: 13)
!12581 = !DILocation(line: 47, column: 15, scope: !10568, inlinedAt: !12579)
!12582 = !DILocation(line: 127, column: 12, scope: !10232, inlinedAt: !12583)
!12583 = distinct !DILocation(line: 48, column: 21, scope: !10568, inlinedAt: !12579)
!12584 = !DILocation(line: 132, column: 13, scope: !10232, inlinedAt: !12583)
!12585 = !DILocation(line: 1917, column: 50, scope: !10239, inlinedAt: !12586)
!12586 = distinct !DILocation(line: 781, column: 12, scope: !10242, inlinedAt: !12587)
!12587 = distinct !DILocation(line: 866, column: 14, scope: !10244, inlinedAt: !12588)
!12588 = distinct !DILocation(line: 128, column: 22, scope: !10246, inlinedAt: !12583)
!12589 = !DILocation(line: 781, column: 12, scope: !10242, inlinedAt: !12587)
!12590 = !DILocation(line: 3558, column: 28, scope: !10250, inlinedAt: !12591)
!12591 = distinct !DILocation(line: 128, column: 41, scope: !10232, inlinedAt: !12583)
!12592 = !DILocation(line: 25, column: 14, scope: !10255, inlinedAt: !12593)
!12593 = distinct !DILocation(line: 287, column: 13, scope: !10257, inlinedAt: !12594)
!12594 = distinct !DILocation(line: 129, column: 17, scope: !10247, inlinedAt: !12583)
!12595 = distinct !{!12595, !10260}
!12596 = !DILocation(line: 135, column: 23, scope: !10232, inlinedAt: !12583)
!12597 = !DILocation(line: 385, column: 16, scope: !12598, inlinedAt: !12570)
!12598 = distinct !DILexicalBlock(scope: !12580, file: !2075, line: 381, column: 13)
!12599 = !DILocation(line: 3905, column: 24, scope: !113, inlinedAt: !12600)
!12600 = distinct !DILocation(line: 2870, column: 26, scope: !12601, inlinedAt: !12602)
!12601 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !84, file: !79, line: 2868, type: !14, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12602 = distinct !DILocation(line: 96, column: 27, scope: !12603, inlinedAt: !12607)
!12603 = distinct !DILexicalBlock(scope: !12604, file: !2075, line: 93, column: 13)
!12604 = distinct !DILexicalBlock(scope: !12605, file: !2075, line: 92, column: 9)
!12605 = distinct !DILexicalBlock(scope: !12606, file: !2075, line: 92, column: 9)
!12606 = distinct !DISubprogram(name: "destroy<()>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockuE7destroyCskAlUH1kY1DR_10polars_ooc", scope: !10327, file: !2075, line: 89, type: !14, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12607 = distinct !DILocation(line: 386, column: 17, scope: !12598, inlinedAt: !12570)
!12608 = !DILocation(line: 96, column: 16, scope: !12603, inlinedAt: !12607)
!12609 = !DILocation(line: 128, column: 14, scope: !2113, inlinedAt: !12610)
!12610 = distinct !DILocation(line: 229, column: 22, scope: !2117, inlinedAt: !12611)
!12611 = distinct !DILocation(line: 344, column: 9, scope: !2120, inlinedAt: !12612)
!12612 = distinct !DILocation(line: 462, column: 23, scope: !2122, inlinedAt: !12613)
!12613 = distinct !DILocation(line: 1921, column: 24, scope: !2228, inlinedAt: !12614)
!12614 = distinct !DILocation(line: 810, column: 1, scope: !2232, inlinedAt: !12615)
!12615 = distinct !DILocation(line: 1003, column: 1, scope: !12616, inlinedAt: !12617)
!12616 = distinct !DISubprogram(name: "drop<alloc::boxed::Box<std::sync::mpmc::list::Block<()>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem4dropINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEEECskAlUH1kY1DR_10polars_ooc", scope: !2136, file: !2135, line: 999, type: !14, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12617 = distinct !DILocation(line: 105, column: 9, scope: !12606, inlinedAt: !12618)
!12618 = distinct !DILocation(line: 0, scope: !12598, inlinedAt: !12570)
!12619 = !DILocation(line: 393, column: 6, scope: !12569, inlinedAt: !12570)
!12620 = !DILocation(line: 4138, column: 23, scope: !12621, inlinedAt: !12622)
!12621 = distinct !DISubprogram(name: "atomic_or<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic9atomic_orjjECskAlUH1kY1DR_10polars_ooc", scope: !80, file: !79, line: 4131, type: !14, scopeLine: 4131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12622 = distinct !DILocation(line: 3295, column: 26, scope: !12623, inlinedAt: !12624)
!12623 = distinct !DISubprogram(name: "fetch_or", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE8fetch_or", scope: !84, file: !79, line: 3293, type: !14, scopeLine: 3293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12624 = distinct !DILocation(line: 97, column: 31, scope: !12603, inlinedAt: !12607)
!12625 = !DILocation(line: 97, column: 20, scope: !12603, inlinedAt: !12607)
!12626 = !DILocation(line: 253, column: 13, scope: !12627, inlinedAt: !12628)
!12627 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<()>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotuEE13get_uncheckedCskAlUH1kY1DR_10polars_ooc", scope: !2155, file: !371, line: 239, type: !14, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12628 = distinct !DILocation(line: 646, column: 26, scope: !12629, inlinedAt: !12630)
!12629 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<()>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotuE13get_uncheckedjECskAlUH1kY1DR_10polars_ooc", scope: !2159, file: !2158, line: 639, type: !14, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12630 = distinct !DILocation(line: 93, column: 47, scope: !12604, inlinedAt: !12607)
!12631 = !DILocation(line: 4138, column: 23, scope: !12632, inlinedAt: !12633)
!12632 = distinct !DISubprogram(name: "atomic_or<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic9atomic_orjjECskAlUH1kY1DR_10polars_ooc", scope: !80, file: !79, line: 4131, type: !14, scopeLine: 4131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12633 = distinct !DILocation(line: 3295, column: 26, scope: !12634, inlinedAt: !12635)
!12634 = distinct !DISubprogram(name: "fetch_or", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE8fetch_or", scope: !84, file: !79, line: 3293, type: !14, scopeLine: 3293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12635 = distinct !DILocation(line: 387, column: 34, scope: !12598, inlinedAt: !12570)
!12636 = !DILocation(line: 387, column: 23, scope: !12598, inlinedAt: !12570)
!12637 = !DILocation(line: 1917, column: 50, scope: !12638, inlinedAt: !12639)
!12638 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !774, file: !280, line: 1917, type: !14, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12639 = distinct !DILocation(line: 781, column: 12, scope: !12640, inlinedAt: !12641)
!12640 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCskAlUH1kY1DR_10polars_ooc", scope: !657, file: !656, line: 780, type: !14, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12641 = distinct !DILocation(line: 866, column: 14, scope: !12642, inlinedAt: !12643)
!12642 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCskAlUH1kY1DR_10polars_ooc", scope: !662, file: !656, line: 865, type: !14, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12643 = distinct !DILocation(line: 92, column: 18, scope: !12644, inlinedAt: !12645)
!12644 = !DILexicalBlockFile(scope: !12605, file: !2075, discriminator: 2)
!12645 = distinct !DILocation(line: 388, column: 17, scope: !12598, inlinedAt: !12570)
!12646 = !DILocation(line: 781, column: 12, scope: !12640, inlinedAt: !12641)
!12647 = !DILocation(line: 898, column: 17, scope: !12648, inlinedAt: !12649)
!12648 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !668, file: !667, line: 886, type: !14, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12649 = distinct !DILocation(line: 214, column: 28, scope: !12650, inlinedAt: !12651)
!12650 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !671, file: !656, line: 212, type: !14, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12651 = distinct !DILocation(line: 784, column: 35, scope: !12652, inlinedAt: !12641)
!12652 = distinct !DILexicalBlock(scope: !12640, file: !656, line: 782, column: 13)
!12653 = !DILocation(line: 253, column: 13, scope: !12627, inlinedAt: !12654)
!12654 = distinct !DILocation(line: 646, column: 26, scope: !12629, inlinedAt: !12655)
!12655 = distinct !DILocation(line: 93, column: 47, scope: !12604, inlinedAt: !12645)
!12656 = !DILocation(line: 3905, column: 24, scope: !113, inlinedAt: !12657)
!12657 = distinct !DILocation(line: 2870, column: 26, scope: !12601, inlinedAt: !12658)
!12658 = distinct !DILocation(line: 96, column: 27, scope: !12603, inlinedAt: !12645)
!12659 = !DILocation(line: 96, column: 16, scope: !12603, inlinedAt: !12645)
!12660 = !DILocation(line: 4138, column: 23, scope: !12621, inlinedAt: !12661)
!12661 = distinct !DILocation(line: 3295, column: 26, scope: !12623, inlinedAt: !12662)
!12662 = distinct !DILocation(line: 97, column: 31, scope: !12603, inlinedAt: !12645)
!12663 = !DILocation(line: 97, column: 20, scope: !12603, inlinedAt: !12645)
!12664 = !DILocation(line: 435, column: 25, scope: !12562, inlinedAt: !12422)
!12665 = !DILocation(line: 436, column: 20, scope: !12562, inlinedAt: !12422)
!12666 = !DILocation(line: 25, column: 38, scope: !12667, inlinedAt: !12668)
!12667 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXs5_NtNtNtNtCsh8eZTKRCwoO_3std3sys3pal4unix4timeNtB5_8TimespecNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !3647, file: !3646, line: 25, type: !14, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12668 = distinct !DILocation(line: 49, column: 38, scope: !12669, inlinedAt: !12670)
!12669 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsi_NtNtNtCsh8eZTKRCwoO_3std3sys4time4unixNtB5_7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !3654, file: !3653, line: 49, type: !14, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12670 = distinct !DILocation(line: 154, column: 38, scope: !12671, inlinedAt: !12672)
!12671 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsm_NtCsh8eZTKRCwoO_3std4timeNtB5_7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !3660, file: !3659, line: 154, type: !14, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12672 = distinct !DILocation(line: 1466, column: 14, scope: !12673, inlinedAt: !12674)
!12673 = distinct !DISubprogram(name: "ge<std::time::Instant, std::time::Instant>", linkageName: "_RNvYNtNtCsh8eZTKRCwoO_3std4time7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd2geCskAlUH1kY1DR_10polars_ooc", scope: !3664, file: !280, line: 1465, type: !14, scopeLine: 1465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12674 = distinct !DILocation(line: 436, column: 20, scope: !12562, inlinedAt: !12422)
!12675 = !DILocation(line: 46, column: 13, scope: !12676, inlinedAt: !12677)
!12676 = distinct !DISubprogram(name: "with<std::sync::mpmc::list::{impl#3}::recv::{closure_env#1}<()>, ()>", linkageName: "_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECskAlUH1kY1DR_10polars_ooc", scope: !4215, file: !3299, line: 37, type: !14, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12677 = distinct !DILocation(line: 442, column: 13, scope: !12428, inlinedAt: !12422)
!12678 = !{!12679}
!12679 = distinct !{!12679, !12680, !"_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECskAlUH1kY1DR_10polars_ooc: argument 0"}
!12680 = distinct !{!12680, !"_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECskAlUH1kY1DR_10polars_ooc"}
!12681 = !DILocation(line: 46, column: 21, scope: !12676, inlinedAt: !12677)
!12682 = !DILocation(line: 555, column: 18, scope: !12179, inlinedAt: !12683)
!12683 = distinct !DILocation(line: 59, column: 42, scope: !12181, inlinedAt: !12684)
!12684 = distinct !DILocation(line: 97, column: 49, scope: !12184, inlinedAt: !12685)
!12685 = distinct !DILocation(line: 250, column: 5, scope: !12188, inlinedAt: !12686)
!12686 = distinct !DILocation(line: 461, column: 37, scope: !12687, inlinedAt: !12688)
!12687 = distinct !DISubprogram(name: "try_with<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>, std::sync::mpmc::context::{impl#0}::with::{closure_env#1}<std::sync::mpmc::list::{impl#3}::recv::{closure_env#1}<()>, ()>, ()>", linkageName: "_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChanneluE4recvs_0uEs_0uECskAlUH1kY1DR_10polars_ooc", scope: !5141, file: !5140, line: 457, type: !294, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12688 = distinct !DILocation(line: 53, column: 14, scope: !12689, inlinedAt: !12677)
!12689 = distinct !DILexicalBlock(scope: !12690, file: !3299, line: 47, column: 9)
!12690 = distinct !DILexicalBlock(scope: !12676, file: !3299, line: 46, column: 9)
!12691 = !{!12692, !12694, !12696, !12679}
!12692 = distinct !{!12692, !12693, !"_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECskAlUH1kY1DR_10polars_ooc: argument 0"}
!12693 = distinct !{!12693, !"_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECskAlUH1kY1DR_10polars_ooc"}
!12694 = distinct !{!12694, !12695, !"_RNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00CskAlUH1kY1DR_10polars_ooc: argument 0"}
!12695 = distinct !{!12695, !"_RNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00CskAlUH1kY1DR_10polars_ooc"}
!12696 = distinct !{!12696, !12697, !"_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc: argument 0"}
!12697 = distinct !{!12697, !"_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc"}
!12698 = !DILocation(line: 59, column: 16, scope: !12181, inlinedAt: !12684)
!12699 = !DILocation(line: 62, column: 27, scope: !12182, inlinedAt: !12684)
!12700 = !DILocation(line: 269, column: 12, scope: !12701, inlinedAt: !12702)
!12701 = distinct !DISubprogram(name: "as_ref<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPINtNtB6_4cell4CellINtNtB6_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE6as_refCskAlUH1kY1DR_10polars_ooc", scope: !625, file: !624, line: 266, type: !14, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12702 = distinct !DILocation(line: 461, column: 56, scope: !12687, inlinedAt: !12688)
!12703 = !DILocation(line: 929, column: 22, scope: !12704, inlinedAt: !12705)
!12704 = distinct !DISubprogram(name: "replace<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc", scope: !2136, file: !2135, line: 915, type: !14, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12705 = distinct !DILocation(line: 513, column: 9, scope: !12706, inlinedAt: !12707)
!12706 = distinct !DISubprogram(name: "replace<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE7replaceCskAlUH1kY1DR_10polars_ooc", scope: !5150, file: !164, line: 510, type: !14, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12707 = distinct !DILocation(line: 675, column: 14, scope: !12708, inlinedAt: !12709)
!12708 = distinct !DISubprogram(name: "take<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMsa_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE4takeCskAlUH1kY1DR_10polars_ooc", scope: !5150, file: !164, line: 671, type: !14, scopeLine: 671, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12709 = distinct !DILocation(line: 53, column: 41, scope: !12710, inlinedAt: !12711)
!12710 = distinct !DISubprogram(name: "{closure#1}<std::sync::mpmc::list::{impl#3}::recv::{closure_env#1}<()>, ()>", linkageName: "_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChanneluE4recvs_0uEs_0CskAlUH1kY1DR_10polars_ooc", scope: !3300, file: !3299, line: 53, type: !294, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!12711 = distinct !DILocation(line: 462, column: 12, scope: !12712, inlinedAt: !12688)
!12712 = distinct !DILexicalBlock(scope: !12687, file: !5140, line: 461, column: 9)
!12713 = !DILocation(line: 930, column: 49, scope: !12714, inlinedAt: !12705)
!12714 = distinct !DILexicalBlock(scope: !12704, file: !2135, line: 929, column: 9)
!12715 = !DILocation(line: 53, column: 36, scope: !12710, inlinedAt: !12711)
!12716 = !DILocation(line: 53, column: 30, scope: !12710, inlinedAt: !12711)
!12717 = !DILocation(line: 54, column: 28, scope: !12710, inlinedAt: !12711)
!12718 = !DILocation(line: 54, column: 25, scope: !12710, inlinedAt: !12711)
!12719 = !DILocation(line: 1015, column: 18, scope: !12720, inlinedAt: !12721)
!12720 = distinct !DISubprogram(name: "unwrap<std::sync::mpmc::list::{impl#3}::recv::{closure_env#1}<()>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionNCNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtBP_7ChanneluE4recvs_0E6unwrapCskAlUH1kY1DR_10polars_ooc", scope: !2871, file: !2869, line: 1013, type: !14, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
end_hunk_5
