Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_core_functions_distributive?download=true
inline.NumInlined: 35645
inline.NumDeleted: 8765
loop-unroll.NumCompletelyUnrolled: 340
loop-unroll.NumRuntimeUnrolled: 607
loop-unroll.NumUnrolled: 947
begin_hunk_0_@_ZN6duckdb17AggregateFunction13StateFinalizeINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvRNS_6VectorERNS_18AggregateInputDataES6_mm:bb.a

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i8 8, ptr %i.a, align 1, !tbaa !256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.ab = load i8, ptr %i.g, align 1, !tbaa !255
  store i8 %i.ab, ptr %i.b, align 1, !tbaa !256
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.o unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %common.resume.sink.split.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i1 [ false, %bb.m ], [ true, %bb.l ] ; 2 uses
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.ae = load ptr, ptr %5, align 8, !tbaa !192   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.ae) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.o:                                             ; preds = %bb.m
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_19BoolStateEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !254
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  store ptr %2, ptr %10, align 8, !tbaa !298
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !300
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN6duckdb12_GLOBAL__N_117BoolOrFunFunction8FinalizeIbNS0_9BoolStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit23.i, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_19BoolStateEEEPT_RNS_6VectorE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %_ZN6duckdb17AggregateExecutor8FinalizeINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvRNS_6VectorERNS_18AggregateInputDataES6_mm.exit

.lr.ph.i:                                         ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_19BoolStateEEEPT_RNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_117BoolOrFunFunction8FinalizeIbNS0_9BoolStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit23.i
  %.024.i = phi i64 [ %i.as, %_ZN6duckdb12_GLOBAL__N_117BoolOrFunFunction8FinalizeIbNS0_9BoolStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit23.i ], [ 0, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_19BoolStateEEEPT_RNS_6VectorE.exit.i ] ; 3 uses
  %i.am = add i64 %.024.i, %4                     ; 2 uses
  store i64 %i.am, ptr %i.al, align 8, !tbaa !302
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.024.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1652 ; 2 uses
  %.val.i = load i8, ptr %i.ao, align 1, !tbaa !1650, !range !318, !noundef !319
  %i.ap = trunc nuw i8 %.val.i to i1
  br i1 %i.ap, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i
  call void @_ZN6duckdb21AggregateFinalizeData10ReturnNullEv(ptr noundef nonnull align 8 dereferenceable(24) %10)
  br label %_ZN6duckdb12_GLOBAL__N_117BoolOrFunFunction8FinalizeIbNS0_9BoolStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit23.i

bb.q:                                             ; preds = %.lr.ph.i
  %i.aq = getelementptr i8, ptr %i.ao, i64 1
  %.val20.i = load i8, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am
  store i8 %.val20.i, ptr %i.ar, align 1, !tbaa !358
  br label %_ZN6duckdb12_GLOBAL__N_117BoolOrFunFunction8FinalizeIbNS0_9BoolStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit23.i

_ZN6duckdb12_GLOBAL__N_117BoolOrFunFunction8FinalizeIbNS0_9BoolStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit23.i: ; preds = %bb.q, %bb.p
  %i.as = add nuw i64 %.024.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.as, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !10810

_ZN6duckdb17AggregateExecutor8FinalizeINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvRNS_6VectorERNS_18AggregateInputDataES6_mm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117BoolOrFunFunction8FinalizeIbNS0_9BoolStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit.i, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr nofree noundef captures(none) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !251
  switch i8 %i.a, label %bb.i [
    i8 2, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !252  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !253
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !254  ; 5 uses
  %.not.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  store i8 0, ptr %3, align 1, !tbaa !1650
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 6 uses
  %.pre.i.i = load i8, ptr %i.h, align 1, !range !318 ; 2 uses
  %xtraiter61 = and i64 %4, 3                     ; 3 uses
  %i.i = icmp ult i64 %4, 4
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %4, -4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.new
  %i.j = phi i8 [ %.pre.i.i, %.lr.ph.i.i.new ], [ %i.v, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.c ]
  %i.k = load i8, ptr %i.g, align 1, !tbaa !358, !range !318, !noundef !319
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = select i1 %i.l, i8 1, i8 %i.j            ; 2 uses
  store i8 %i.m, ptr %i.h, align 1, !tbaa !1649
  %i.n = load i8, ptr %i.g, align 1, !tbaa !358, !range !318, !noundef !319
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = select i1 %i.o, i8 1, i8 %i.m            ; 2 uses
  store i8 %i.p, ptr %i.h, align 1, !tbaa !1649
  %i.q = load i8, ptr %i.g, align 1, !tbaa !358, !range !318, !noundef !319
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = select i1 %i.r, i8 1, i8 %i.p            ; 2 uses
  store i8 %i.s, ptr %i.h, align 1, !tbaa !1649
  %i.t = load i8, ptr %i.g, align 1, !tbaa !358, !range !318, !noundef !319
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = select i1 %i.u, i8 1, i8 %i.s            ; 3 uses
  store i8 %i.v, ptr %i.h, align 1, !tbaa !1649
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !170

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !254  ; 21 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10830)
  %i.y = add i64 %4, 63
  %i.z = lshr i64 %i.y, 6                         ; 3 uses
  %.not52.i.i = icmp eq i64 %i.z, 0
  br i1 %.not52.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %.lr.ph51.i.i

.lr.ph51.i.i:                                     ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !252, !noalias !10831 ; 2 uses
  %.not.i.i20.i = icmp eq ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 10 uses
  br i1 %.not.i.i20.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i: ; preds = %.lr.ph51.i.i, %.loopexit.us.i.i
  %.049.us.i.i = phi i64 [ %i.bf, %.loopexit.us.i.i ], [ 0, %.lr.ph51.i.i ]
  %.sroa.4.048.us.i.i = phi i64 [ %.sroa.4.1.lcssa.us.i.i, %.loopexit.us.i.i ], [ 0, %.lr.ph51.i.i ] ; 7 uses
  %i.ad = add i64 %.sroa.4.048.us.i.i, 64
  %i.ae = tail call noundef i64 @llvm.umin.i64(i64 %i.ad, i64 %4) ; 5 uses
  %i.af = icmp ult i64 %.sroa.4.048.us.i.i, %i.ae
  br i1 %i.af, label %.lr.ph46.us.i.i, label %.loopexit.us.i.i

.lr.ph46.us.i.i.new:                              ; preds = %.prol.loopexit56, %.lr.ph46.us.i.i.new
  %i.ag = phi i8 [ %i.bd, %.lr.ph46.us.i.i.new ], [ %.unr60, %.prol.loopexit56 ]
  %.sroa.4.145.us.i.i = phi i64 [ %i.be, %.lr.ph46.us.i.i.new ], [ %.sroa.4.145.us.i.i.unr, %.prol.loopexit56 ] ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.4.145.us.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !358, !range !318, !alias.scope !10829, !noalias !10830, !noundef !319
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.4.145.us.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !358, !range !318, !alias.scope !10829, !noalias !10830, !noundef !319
  %i.am = or i8 %i.al, %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.4.145.us.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !358, !range !318, !alias.scope !10829, !noalias !10830, !noundef !319
  %6 = or i8 %i.am, %i.ap
  %7 = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.4.145.us.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 3
  %8 = load i8, ptr %i.aq, align 1, !tbaa !358, !range !318, !alias.scope !10829, !noalias !10830, !noundef !319
  %9 = or i8 %6, %8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.4.145.us.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i8, ptr %i.as, align 1, !tbaa !358, !range !318, !alias.scope !10829, !noalias !10830, !noundef !319
  %i.au = or i8 %9, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.4.145.us.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 5
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !358, !range !318, !alias.scope !10829, !noalias !10830, !noundef !319
  %10 = or i8 %i.au, %i.ax
  %11 = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.4.145.us.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 6
  %12 = load i8, ptr %i.ay, align 1, !tbaa !358, !range !318, !alias.scope !10829, !noalias !10830, !noundef !319
  %13 = or i8 %10, %12
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.4.145.us.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 7
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !358, !range !318, !alias.scope !10829, !noalias !10830, !noundef !319
  %i.bc = or i8 %13, %i.bb
  %.not89 = icmp eq i8 %i.bc, 0
  %i.bd = select i1 %.not89, i8 %i.ag, i8 1       ; 2 uses
  %i.be = add nuw i64 %.sroa.4.145.us.i.i, 8      ; 2 uses
  %exitcond60.not.i.i.7 = icmp eq i64 %i.be, %i.ae
  br i1 %exitcond60.not.i.i.7, label %..loopexit_crit_edge.us.i.i, label %.lr.ph46.us.i.i.new, !llvm.loop !10814

.loopexit.us.i.i:                                 ; preds = %..loopexit_crit_edge.us.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i
  %.sroa.4.1.lcssa.us.i.i = phi i64 [ %i.ae, %..loopexit_crit_edge.us.i.i ], [ %.sroa.4.048.us.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i ]
  %i.bf = add nuw nsw i64 %.049.us.i.i, 1         ; 2 uses
  %exitcond61.not.i.i = icmp eq i64 %i.bf, %i.z
  br i1 %exitcond61.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i, !llvm.loop !10815

.lr.ph46.us.i.i:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i
  store i8 0, ptr %3, align 1, !tbaa !1650, !alias.scope !10830, !noalias !10829
  %.promoted.us.i.i = load i8, ptr %i.ac, align 1, !alias.scope !10830, !noalias !10829 ; 2 uses
  %i.bg = sub nuw i64 %i.ae, %.sroa.4.048.us.i.i
  %xtraiter57 = and i64 %i.bg, 7                  ; 2 uses
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod58.not, label %.prol.loopexit56, label %.prol.preheader55

.prol.preheader55:                                ; preds = %.lr.ph46.us.i.i, %.prol.preheader55
  %i.bh = phi i8 [ %i.bl, %.prol.preheader55 ], [ %.promoted.us.i.i, %.lr.ph46.us.i.i ]
  %.sroa.4.145.us.i.i.prol = phi i64 [ %i.bm, %.prol.preheader55 ], [ %.sroa.4.048.us.i.i, %.lr.ph46.us.i.i ] ; 2 uses
  %prol.iter59 = phi i64 [ %prol.iter59.next, %.prol.preheader55 ], [ 0, %.lr.ph46.us.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.4.145.us.i.i.prol
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !358, !range !318, !alias.scope !10829, !noalias !10830, !noundef !319
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = select i1 %i.bk, i8 1, i8 %i.bh         ; 3 uses
  %i.bm = add nuw i64 %.sroa.4.145.us.i.i.prol, 1 ; 2 uses
  %prol.iter59.next = add i64 %prol.iter59, 1     ; 2 uses
  %prol.iter59.cmp.not = icmp eq i64 %prol.iter59.next, %xtraiter57
  br i1 %prol.iter59.cmp.not, label %.prol.loopexit56, label %.prol.preheader55, !llvm.loop !10816

.prol.loopexit56:                                 ; preds = %.prol.preheader55, %.lr.ph46.us.i.i
  %.lcssa49.unr = phi i8 [ poison, %.lr.ph46.us.i.i ], [ %i.bl, %.prol.preheader55 ]
  %.unr60 = phi i8 [ %.promoted.us.i.i, %.lr.ph46.us.i.i ], [ %i.bl, %.prol.preheader55 ]
  %.sroa.4.145.us.i.i.unr = phi i64 [ %.sroa.4.048.us.i.i, %.lr.ph46.us.i.i ], [ %i.bm, %.prol.preheader55 ]
  %i.bn = sub i64 %.sroa.4.048.us.i.i, %i.ae
  %i.bo = icmp ugt i64 %i.bn, -8
  br i1 %i.bo, label %..loopexit_crit_edge.us.i.i, label %.lr.ph46.us.i.i.new

..loopexit_crit_edge.us.i.i:                      ; preds = %.lr.ph46.us.i.i.new, %.prol.loopexit56
  %.lcssa49 = phi i8 [ %.lcssa49.unr, %.prol.loopexit56 ], [ %i.bd, %.lr.ph46.us.i.i.new ]
  store i8 %.lcssa49, ptr %i.ac, align 1, !alias.scope !10830, !noalias !10829
  br label %.loopexit.us.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i: ; preds = %.lr.ph51.i.i, %.loopexit.i.i
  %.049.i.i = phi i64 [ %i.ee, %.loopexit.i.i ], [ 0, %.lr.ph51.i.i ] ; 2 uses
  %.sroa.4.048.i.i = phi i64 [ %.sroa.4.3.i.i, %.loopexit.i.i ], [ 0, %.lr.ph51.i.i ] ; 16 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.049.i.i
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !253, !noalias !10831 ; 4 uses
  %i.br = add i64 %.sroa.4.048.i.i, 64
  %i.bs = tail call noundef i64 @llvm.umin.i64(i64 %i.br, i64 %4) ; 12 uses
  switch i64 %i.bq, label %.preheader42.i.i [
    i64 -1, label %.preheader.i.i
    i64 0, label %.loopexit.i.i
  ]

.preheader42.i.i:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i
  %i.bt = icmp ult i64 %.sroa.4.048.i.i, %i.bs
  br i1 %i.bt, label %.lr.ph.i22.i.preheader, label %.loopexit.i.i

.lr.ph.i22.i.preheader:                           ; preds = %.preheader42.i.i
  %i.bu = sub nuw i64 %i.bs, %.sroa.4.048.i.i
  %.neg = add i64 %.sroa.4.048.i.i, 1
  %xtraiter52 = and i64 %i.bu, 1
  %lcmp.mod53.not = icmp eq i64 %xtraiter52, 0
  br i1 %lcmp.mod53.not, label %.lr.ph.i22.i.prol.loopexit, label %.lr.ph.i22.i.prol

.lr.ph.i22.i.prol:                                ; preds = %.lr.ph.i22.i.preheader
  %i.bv = and i64 %i.bq, 1
  %.not.i23.i.prol = icmp eq i64 %i.bv, 0
  br i1 %.not.i23.i.prol, label %.lr.ph.i22.i.prol.loopexit.unr-lcssa, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i22.i.prol
  %i.bw = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.4.048.i.i
  store i8 0, ptr %3, align 1, !tbaa !1650, !alias.scope !10830, !noalias !10829
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !358, !range !318, !alias.scope !10829, !noalias !10830, !noundef !319
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = load i8, ptr %i.ac, align 1, !range !318, !alias.scope !10830, !noalias !10829
  %i.ca = select i1 %i.by, i8 1, i8 %i.bz
  store i8 %i.ca, ptr %i.ac, align 1, !tbaa !1649, !alias.scope !10830, !noalias !10829
  br label %.lr.ph.i22.i.prol.loopexit.unr-lcssa

.lr.ph.i22.i.prol.loopexit.unr-lcssa:             ; preds = %bb.e, %.lr.ph.i22.i.prol
  %i.cb = add nuw i64 %.sroa.4.048.i.i, 1
  br label %.lr.ph.i22.i.prol.loopexit

.lr.ph.i22.i.prol.loopexit:                       ; preds = %.lr.ph.i22.i.prol.loopexit.unr-lcssa, %.lr.ph.i22.i.preheader
  %.sroa.4.244.i.i.unr = phi i64 [ %.sroa.4.048.i.i, %.lr.ph.i22.i.preheader ], [ %i.cb, %.lr.ph.i22.i.prol.loopexit.unr-lcssa ]
  %i.cc = icmp eq i64 %i.bs, %.neg
  br i1 %i.cc, label %.loopexit.i.i, label %.lr.ph.i22.i

.preheader.i.i:                                   ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i
  %i.cd = icmp ult i64 %.sroa.4.048.i.i, %i.bs
  br i1 %i.cd, label %.lr.ph46.i.i, label %.loopexit.i.i

.lr.ph46.i.i:                                     ; preds = %.preheader.i.i
  store i8 0, ptr %3, align 1, !tbaa !1650, !alias.scope !10830, !noalias !10829
  %.promoted.i.i = load i8, ptr %i.ac, align 1, !alias.scope !10830, !noalias !10829 ; 2 uses
  %i.ce = sub nuw i64 %i.bs, %.sroa.4.048.i.i
  %xtraiter = and i64 %i.ce, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph46.i.i, %.prol.preheader
  %i.cf = phi i8 [ %i.cj, %.prol.preheader ], [ %.promoted.i.i, %.lr.ph46.i.i ]
  %.sroa.4.145.i.i.prol = phi i64 [ %i.ck, %.prol.preheader ], [ %.sroa.4.048.i.i, %.lr.ph46.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph46.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.4.145.i.i.prol
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !358, !range !318, !alias.scope !10829, !noalias !10830, !noundef !319
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = select i1 %i.ci, i8 1, i8 %i.cf         ; 3 uses
  %i.ck = add nuw i64 %.sroa.4.145.i.i.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !10817

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph46.i.i
  %.lcssa51.unr = phi i8 [ poison, %.lr.ph46.i.i ], [ %i.cj, %.prol.preheader ]
  %.unr = phi i8 [ %.promoted.i.i, %.lr.ph46.i.i ], [ %i.cj, %.prol.preheader ]
  %.sroa.4.145.i.i.unr = phi i64 [ %.sroa.4.048.i.i, %.lr.ph46.i.i ], [ %i.ck, %.prol.preheader ]
  %i.cl = sub i64 %.sroa.4.048.i.i, %i.bs
  %i.cm = icmp ugt i64 %i.cl, -8
  br i1 %i.cm, label %..loopexit_crit_edge.i.i, label %.lr.ph46.i.i.new

.lr.ph46.i.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph46.i.i.new
  %i.cn = phi i8 [ %i.dk, %.lr.ph46.i.i.new ], [ %.unr, %.prol.loopexit ]
  %.sroa.4.145.i.i = phi i64 [ %i.dl, %.lr.ph46.i.i.new ], [ %.sroa.4.145.i.i.unr, %.prol.loopexit ] ; 9 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.4.145.i.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !358, !range !318, !alias.scope !10829, !noalias !10830, !noundef !319
  %i.cq = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.4.145.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !358, !range !318, !alias.scope !10829, !noalias !10830, !noundef !319
  %i.ct = or i8 %i.cs, %i.cp
  %i.cu = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.4.145.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !358, !range !318, !alias.scope !10829, !noalias !10830, !noundef !319
  %14 = or i8 %i.ct, %i.cw
  %15 = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.4.145.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %15, i64 3
  %16 = load i8, ptr %i.cx, align 1, !tbaa !358, !range !318, !alias.scope !10829, !noalias !10830, !noundef !319
  %17 = or i8 %14, %16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.4.145.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !358, !range !318, !alias.scope !10829, !noalias !10830, !noundef !319
  %i.db = or i8 %17, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.4.145.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 5
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !358, !range !318, !alias.scope !10829, !noalias !10830, !noundef !319
  %18 = or i8 %i.db, %i.de
  %19 = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.4.145.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %19, i64 6
  %20 = load i8, ptr %i.df, align 1, !tbaa !358, !range !318, !alias.scope !10829, !noalias !10830, !noundef !319
  %21 = or i8 %18, %20
  %i.dg = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.4.145.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 7
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !358, !range !318, !alias.scope !10829, !noalias !10830, !noundef !319
  %i.dj = or i8 %21, %i.di
  %.not = icmp eq i8 %i.dj, 0
  %i.dk = select i1 %.not, i8 %i.cn, i8 1         ; 2 uses
  %i.dl = add nuw i64 %.sroa.4.145.i.i, 8         ; 2 uses
  %exitcond.not.i21.i.7 = icmp eq i64 %i.dl, %i.bs
  br i1 %exitcond.not.i21.i.7, label %..loopexit_crit_edge.i.i, label %.lr.ph46.i.i.new, !llvm.loop !10814

.lr.ph.i22.i:                                     ; preds = %.lr.ph.i22.i.prol.loopexit, %bb.h
  %.sroa.4.244.i.i = phi i64 [ %i.ed, %bb.h ], [ %.sroa.4.244.i.i.unr, %.lr.ph.i22.i.prol.loopexit ] ; 4 uses
  %i.dm = sub nuw i64 %.sroa.4.244.i.i, %.sroa.4.048.i.i
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dn, %i.bq
  %.not.i23.i = icmp eq i64 %i.do, 0
  br i1 %.not.i23.i, label %.lr.ph.i22.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i22.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.4.244.i.i
  store i8 0, ptr %3, align 1, !tbaa !1650, !alias.scope !10830, !noalias !10829
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !358, !range !318, !alias.scope !10829, !noalias !10830, !noundef !319
  %i.dr = trunc nuw i8 %i.dq to i1
  %i.ds = load i8, ptr %i.ac, align 1, !range !318, !alias.scope !10830, !noalias !10829
  %i.dt = select i1 %i.dr, i8 1, i8 %i.ds
  store i8 %i.dt, ptr %i.ac, align 1, !tbaa !1649, !alias.scope !10830, !noalias !10829
  br label %.lr.ph.i22.i.1

.lr.ph.i22.i.1:                                   ; preds = %bb.f, %.lr.ph.i22.i
  %i.du = add nuw i64 %.sroa.4.244.i.i, 1         ; 2 uses
  %i.dv = sub nuw i64 %i.du, %.sroa.4.048.i.i
  %i.dw = shl nuw i64 1, %i.dv
  %i.dx = and i64 %i.dw, %i.bq
  %.not.i23.i.1 = icmp eq i64 %i.dx, 0
  br i1 %.not.i23.i.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i22.i.1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.du
  store i8 0, ptr %3, align 1, !tbaa !1650, !alias.scope !10830, !noalias !10829
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !358, !range !318, !alias.scope !10829, !noalias !10830, !noundef !319
  %i.ea = trunc nuw i8 %i.dz to i1
  %i.eb = load i8, ptr %i.ac, align 1, !range !318, !alias.scope !10830, !noalias !10829
  %i.ec = select i1 %i.ea, i8 1, i8 %i.eb
  store i8 %i.ec, ptr %i.ac, align 1, !tbaa !1649, !alias.scope !10830, !noalias !10829
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i22.i.1
  %i.ed = add nuw i64 %.sroa.4.244.i.i, 2         ; 2 uses
  %exitcond58.not.i.i.1 = icmp eq i64 %i.ed, %i.bs
  br i1 %exitcond58.not.i.i.1, label %.loopexit.i.i, label %.lr.ph.i22.i, !llvm.loop !10818

..loopexit_crit_edge.i.i:                         ; preds = %.lr.ph46.i.i.new, %.prol.loopexit
  %.lcssa51 = phi i8 [ %.lcssa51.unr, %.prol.loopexit ], [ %i.dk, %.lr.ph46.i.i.new ]
  store i8 %.lcssa51, ptr %i.ac, align 1, !alias.scope !10830, !noalias !10829
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i22.i.prol.loopexit, %bb.h, %..loopexit_crit_edge.i.i, %.preheader.i.i, %.preheader42.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i
  %.sroa.4.3.i.i = phi i64 [ %i.bs, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i ], [ %.sroa.4.048.i.i, %.preheader.i.i ], [ %i.bs, %..loopexit_crit_edge.i.i ], [ %.sroa.4.048.i.i, %.preheader42.i.i ], [ %i.bs, %bb.h ], [ %i.bs, %.lr.ph.i22.i.prol.loopexit ]
  %i.ee = add nuw nsw i64 %.049.i.i, 1            ; 2 uses
  %exitcond59.not.i.i = icmp eq i64 %i.ee, %i.z
  br i1 %exitcond59.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i, !llvm.loop !10815

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.j unwind label %bb.ab

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIbEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.k unwind label %bb.ab

bb.k:                                             ; preds = %bb.j
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !296 ; 16 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ei = load ptr, ptr %5, align 8, !tbaa !294
  %.val.i = load ptr, ptr %i.ei, align 8          ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10832)
  call void @llvm.experimental.noalias.scope.decl(metadata !10833)
  %i.ej = load ptr, ptr %i.eh, align 8, !tbaa !252, !noalias !10834 ; 3 uses
  %.not.i.i24.i = icmp eq ptr %i.ej, null
  %.not7.i.i = icmp eq i64 %4, 0                  ; 2 uses
  br i1 %.not.i.i24.i, label %.preheader.i29.i, label %.preheader1.i.i

.preheader1.i.i:                                  ; preds = %bb.k
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %.preheader1.i.i
  %.not.i18.i.i = icmp eq ptr %.val.i, null
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 4 uses
  br i1 %.not.i18.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i: ; preds = %.lr.ph.i25.i, %bb.m
  %.0173.us.i.i = phi i64 [ %i.ew, %bb.m ], [ 0, %.lr.ph.i25.i ] ; 4 uses
  %i.el = lshr i64 %.0173.us.i.i, 6
  %i.em = and i64 %.0173.us.i.i, 63
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.el
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !253, !noalias !10834
  %i.ep = shl nuw i64 1, %i.em
  %i.eq = and i64 %i.ep, %i.eo
  %.not.us.i.i = icmp eq i64 %i.eq, 0
  br i1 %.not.us.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.0173.us.i.i
  store i8 0, ptr %3, align 1, !tbaa !1650, !alias.scope !10833, !noalias !10832
  %i.es = load i8, ptr %i.er, align 1, !tbaa !358, !range !318, !alias.scope !10832, !noalias !10833, !noundef !319
  %i.et = trunc nuw i8 %i.es to i1
  %i.eu = load i8, ptr %i.ek, align 1, !range !318, !alias.scope !10833, !noalias !10832
  %i.ev = select i1 %i.et, i8 1, i8 %i.eu
  store i8 %i.ev, ptr %i.ek, align 1, !tbaa !1649, !alias.scope !10833, !noalias !10832
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.ew = add nuw i64 %.0173.us.i.i, 1            ; 2 uses
  %exitcond11.not.i.i = icmp eq i64 %i.ew, %4
  br i1 %exitcond11.not.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !10822

.preheader.i29.i:                                 ; preds = %bb.k
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i29.i
  %.not.i20.i.i = icmp eq ptr %.val.i, null
  store i8 0, ptr %3, align 1, !tbaa !1650, !alias.scope !10833, !noalias !10832
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %.promoted.i30.i = load i8, ptr %i.ex, align 1, !alias.scope !10833, !noalias !10832 ; 4 uses
  br i1 %.not.i20.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.preheader: ; preds = %.lr.ph5.i.i
  %xtraiter65 = and i64 %4, 3                     ; 3 uses
  %i.ey = icmp ult i64 %4, 4
  br i1 %i.ey, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.preheader
  %unroll_iter72 = and i64 %4, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.preheader: ; preds = %.lr.ph5.i.i
  %xtraiter74 = and i64 %4, 7                     ; 3 uses
  %i.ez = icmp ult i64 %4, 8
  br i1 %i.ez, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.preheader
  %unroll_iter81 = and i64 %4, -8
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.preheader.new
  %i.fa = phi i8 [ %.promoted.i30.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.preheader.new ], [ %i.fx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i ]
  %.04.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.preheader.new ], [ %i.fy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i ] ; 9 uses
  %niter82 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.preheader.new ], [ %niter82.next.7, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.04.us.i.i
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !358, !range !318, !alias.scope !10832, !noalias !10833, !noundef !319
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.04.us.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !358, !range !318, !alias.scope !10832, !noalias !10833, !noundef !319
  %i.fg = or i8 %i.ff, %i.fc
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.04.us.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !358, !range !318, !alias.scope !10832, !noalias !10833, !noundef !319
  %22 = or i8 %i.fg, %i.fj
  %23 = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.04.us.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %23, i64 3
  %24 = load i8, ptr %i.fk, align 1, !tbaa !358, !range !318, !alias.scope !10832, !noalias !10833, !noundef !319
  %25 = or i8 %22, %24
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.04.us.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !358, !range !318, !alias.scope !10832, !noalias !10833, !noundef !319
  %i.fo = or i8 %25, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.04.us.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 5
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !358, !range !318, !alias.scope !10832, !noalias !10833, !noundef !319
  %26 = or i8 %i.fo, %i.fr
  %27 = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.04.us.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %27, i64 6
  %28 = load i8, ptr %i.fs, align 1, !tbaa !358, !range !318, !alias.scope !10832, !noalias !10833, !noundef !319
  %29 = or i8 %26, %28
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.04.us.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 7
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !358, !range !318, !alias.scope !10832, !noalias !10833, !noundef !319
  %i.fw = or i8 %29, %i.fv
  %.not99 = icmp eq i8 %i.fw, 0
  %i.fx = select i1 %.not99, i8 %i.fa, i8 1       ; 3 uses
  %i.fy = add nuw i64 %.04.us.i.i, 8              ; 2 uses
  %niter82.next.7 = add nuw i64 %niter82, 8       ; 2 uses
  %niter82.ncmp.7 = icmp eq i64 %niter82.next.7, %unroll_iter81
  br i1 %niter82.ncmp.7, label %..loopexit_crit_edge.i31.i.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i, !llvm.loop !10823

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i25.i, %bb.o
  %.0173.i.i = phi i64 [ %i.gn, %bb.o ], [ 0, %.lr.ph.i25.i ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0173.i.i
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !178, !noalias !10834
  %i.gb = zext i32 %i.ga to i64                   ; 3 uses
  %i.gc = lshr i64 %i.gb, 6
  %i.gd = and i64 %i.gb, 63
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.gc
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !253, !noalias !10834
  %i.gg = shl nuw i64 1, %i.gd
  %i.gh = and i64 %i.gg, %i.gf
  %.not.i26.i = icmp eq i64 %i.gh, 0
  br i1 %.not.i26.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.gb
  store i8 0, ptr %3, align 1, !tbaa !1650, !alias.scope !10833, !noalias !10832
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !358, !range !318, !alias.scope !10832, !noalias !10833, !noundef !319
  %i.gk = trunc nuw i8 %i.gj to i1
  %i.gl = load i8, ptr %i.ek, align 1, !range !318, !alias.scope !10833, !noalias !10832
  %i.gm = select i1 %i.gk, i8 1, i8 %i.gl
  store i8 %i.gm, ptr %i.ek, align 1, !tbaa !1649, !alias.scope !10833, !noalias !10832
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.gn = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i27.i = icmp eq i64 %i.gn, %4
  br i1 %exitcond.not.i27.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !10822

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.preheader.new
  %i.go = phi i8 [ %.promoted.i30.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.preheader.new ], [ %i.hn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i ]
  %.04.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.preheader.new ], [ %i.ho, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i ] ; 5 uses
  %niter73 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.preheader.new ], [ %niter73.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i ]
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !178, !noalias !10834
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !358, !range !318, !alias.scope !10832, !noalias !10833, !noundef !319
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !178, !noalias !10834
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !358, !range !318, !alias.scope !10832, !noalias !10833, !noundef !319
  %i.ha = or i8 %i.gz, %i.gt
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !178, !noalias !10834
  %i.he = zext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !358, !range !318, !alias.scope !10832, !noalias !10833, !noundef !319
  %30 = or i8 %i.ha, %i.hg
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !178, !noalias !10834
  %i.hk = zext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !358, !range !318, !alias.scope !10832, !noalias !10833, !noundef !319
  %31 = or i8 %30, %i.hm
  %.not92 = icmp eq i8 %31, 0
  %i.hn = select i1 %.not92, i8 %i.go, i8 1       ; 3 uses
  %i.ho = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter73.next.3 = add nuw i64 %niter73, 4       ; 2 uses
  %niter73.ncmp.3 = icmp eq i64 %niter73.next.3, %unroll_iter72
  br i1 %niter73.ncmp.3, label %..loopexit_crit_edge.i31.i.loopexit45.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i, !llvm.loop !10823

..loopexit_crit_edge.i31.i.loopexit.unr-lcssa:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i
  %lcmp.mod78.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod78.not, label %..loopexit_crit_edge.i31.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i31.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.preheader
  %.epil.init77 = phi i8 [ %.promoted.i30.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.preheader ], [ %i.fx, %..loopexit_crit_edge.i31.i.loopexit.unr-lcssa ]
  %.04.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.preheader ], [ %i.fy, %..loopexit_crit_edge.i31.i.loopexit.unr-lcssa ]
  %lcmp.mod80 = icmp ne i64 %xtraiter74, 0
  call void @llvm.assume(i1 %lcmp.mod80)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil.preheader
  %i.hp = phi i8 [ %i.ht, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil ], [ %.epil.init77, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil.preheader ]
  %.04.us.i.i.epil = phi i64 [ %i.hu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil ], [ %.04.us.i.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil.preheader ] ; 2 uses
  %epil.iter75 = phi i64 [ %epil.iter75.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil.preheader ]
  %i.hq = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.04.us.i.i.epil
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !358, !range !318, !alias.scope !10832, !noalias !10833, !noundef !319
  %i.hs = trunc nuw i8 %i.hr to i1
  %i.ht = select i1 %i.hs, i8 1, i8 %i.hp         ; 2 uses
  %i.hu = add nuw i64 %.04.us.i.i.epil, 1
  %epil.iter75.next = add i64 %epil.iter75, 1     ; 2 uses
  %epil.iter75.cmp.not = icmp eq i64 %epil.iter75.next, %xtraiter74
  br i1 %epil.iter75.cmp.not, label %..loopexit_crit_edge.i31.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil, !llvm.loop !10824

..loopexit_crit_edge.i31.i.loopexit45.unr-lcssa:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i
  %lcmp.mod69.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod69.not, label %..loopexit_crit_edge.i31.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i31.i.loopexit45.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.preheader
  %.epil.init68 = phi i8 [ %.promoted.i30.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.preheader ], [ %i.hn, %..loopexit_crit_edge.i31.i.loopexit45.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.preheader ], [ %i.ho, %..loopexit_crit_edge.i31.i.loopexit45.unr-lcssa ]
  %lcmp.mod71 = icmp ne i64 %xtraiter65, 0
  call void @llvm.assume(i1 %lcmp.mod71)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil.preheader
  %i.hv = phi i8 [ %i.ic, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil ], [ %.epil.init68, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.id, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil ], [ %.04.i.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil.preheader ] ; 2 uses
  %epil.iter66 = phi i64 [ %epil.iter66.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil.preheader ]
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i.epil
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !178, !noalias !10834
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.hy
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !358, !range !318, !alias.scope !10832, !noalias !10833, !noundef !319
  %i.ib = trunc nuw i8 %i.ia to i1
  %i.ic = select i1 %i.ib, i8 1, i8 %i.hv         ; 2 uses
  %i.id = add nuw i64 %.04.i.i.epil, 1
  %epil.iter66.next = add i64 %epil.iter66, 1     ; 2 uses
  %epil.iter66.cmp.not = icmp eq i64 %epil.iter66.next, %xtraiter65
  br i1 %epil.iter66.cmp.not, label %..loopexit_crit_edge.i31.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil, !llvm.loop !10825

..loopexit_crit_edge.i31.i:                       ; preds = %..loopexit_crit_edge.i31.i.loopexit45.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil, %..loopexit_crit_edge.i31.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil
  %.us-phi.i.i = phi i8 [ %i.ht, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil ], [ %i.fx, %..loopexit_crit_edge.i31.i.loopexit.unr-lcssa ], [ %i.hn, %..loopexit_crit_edge.i31.i.loopexit45.unr-lcssa ], [ %i.ic, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil ]
  store i8 %.us-phi.i.i, ptr %i.ex, align 1, !alias.scope !10833, !noalias !10832
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %bb.o, %bb.m, %..loopexit_crit_edge.i31.i, %.preheader.i29.i, %.preheader1.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !217 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8 ; 4 uses
  %i.ih = load atomic i64, ptr %i.ig acquire, align 8 ; 2 uses
  %i.ii = icmp eq i64 %i.ih, 4294967297
  %i.ij = trunc i64 %i.ih to i32                  ; 2 uses
  br i1 %i.ii, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ig, align 8, !tbaa !219
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 12
  store i32 0, ptr %i.ik, align 4, !tbaa !220
  %i.il = load ptr, ptr %i.if, align 8, !tbaa !216
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #27, !inline_history !10826
  %i.io = load ptr, ptr %i.if, align 8, !tbaa !216
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8
  call void %i.iq(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #27, !inline_history !10826
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.ir = load i8, ptr @__libc_single_threaded, align 1, !tbaa !191
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ir, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.is = add nsw i32 %i.ij, -1
  store i32 %i.is, ptr %i.ig, align 8, !tbaa !178
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.it = atomicrmw volatile add ptr %i.ig, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ij, %bb.s ], [ %i.it, %bb.t ]
  %i.iu = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.iu, label %bb.u, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !221

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.q, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.iv = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !217 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 4 uses
  %i.iy = load atomic i64, ptr %i.ix acquire, align 8 ; 2 uses
  %i.iz = icmp eq i64 %i.iy, 4294967297
  %i.ja = trunc i64 %i.iy to i32                  ; 2 uses
  br i1 %i.iz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.ix, align 8, !tbaa !219
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 12
  store i32 0, ptr %i.jb, align 4, !tbaa !220
  %i.jc = load ptr, ptr %i.iw, align 8, !tbaa !216
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #27, !inline_history !10827
  %i.jf = load ptr, ptr %i.iw, align 8, !tbaa !216
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #27, !inline_history !10827
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.x:                                             ; preds = %bb.v
  %i.ji = load i8, ptr @__libc_single_threaded, align 1, !tbaa !191
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.ji, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.jj = add nsw i32 %i.ja, -1
  store i32 %i.jj, ptr %i.ix, align 8, !tbaa !178
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.z:                                             ; preds = %bb.x
  %i.jk = atomicrmw volatile add ptr %i.ix, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.ja, %bb.y ], [ %i.jk, %bb.z ]
  %i.jl = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.jl, label %bb.aa, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !221

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.w, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.ab:                                            ; preds = %bb.j, %bb.i
  %i.jm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.jm

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod63.not = icmp eq i64 %xtraiter61, 0
  br i1 %lcmp.mod63.not, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.epil.init = phi i8 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.v, %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit.loopexit.unr-lcssa ]
  %lcmp.mod64 = icmp ne i64 %xtraiter61, 0
  tail call void @llvm.assume(i1 %lcmp.mod64)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader
  %i.jn = phi i8 [ %.epil.init, %.epil.preheader ], [ %i.jq, %bb.ac ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ac ]
  %i.jo = load i8, ptr %i.g, align 1, !tbaa !358, !range !318, !noundef !319
  %i.jp = trunc nuw i8 %i.jo to i1
  %i.jq = select i1 %i.jp, i8 1, i8 %i.jn         ; 2 uses
  store i8 %i.jq, ptr %i.h, align 1, !tbaa !1649
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter61
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %bb.ac, !llvm.loop !10828

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit.loopexit.unr-lcssa, %bb.ac, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, %bb.d, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_19BoolStateENS2_18BoolAndFunFunctionELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %1) #6 align 2 {
bb.a:
end_hunk_0
