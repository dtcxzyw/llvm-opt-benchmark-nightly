inline.NumInlined: 789
inline.NumDeleted: 420
begin_hunk_0_@_ZN9benchmark8internal15BenchmarkRunner9RunWarmUpEv:bb.a

bb.b:                                             ; preds = %bb.l, %bb.a
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !50, !nonnull !48, !align !97
  invoke void @_ZNK9benchmark8internal17BenchmarkInstance5SetupEv(ptr noundef nonnull align 8 dereferenceable(424) %i.aa)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZN9benchmark8internal15BenchmarkRunner13DoNIterationsEv(ptr dead_on_unwind nonnull writable sret(%"struct.benchmark::internal::BenchmarkRunner::IterationResults") align 8 %2, ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.ab = call noundef nonnull align 8 dereferenceable(160) ptr @_ZN9benchmark8internal13ThreadManager6ResultaSEOS2_(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(176) %2) #23 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !106
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.ac)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i: ; preds = %bb.d
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !14  ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.u
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i
  %i.ah = load i64, ptr %i.u, align 8, !tbaa !15
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !14  ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.w
  br i1 %i.ak, label %_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.al = load i64, ptr %i.w, align 8, !tbaa !15
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #27
  br label %_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit

_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.an = load ptr, ptr %i.o, align 8, !tbaa !50, !nonnull !48, !align !97
  invoke void @_ZNK9benchmark8internal17BenchmarkInstance8TeardownEv(ptr noundef nonnull align 8 dereferenceable(424) %i.an)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit
  %i.ao = load i32, ptr %i.g, align 8, !tbaa !185
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = load i8, ptr @_ZN9benchmark23FLAGS_benchmark_dry_runE, align 1, !range !47
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i = select i1 %i.ap, i1 true, i1 %i.ar
  %i.as = load i64, ptr %i.p, align 8
  %i.at = icmp sgt i64 %i.as, 999999999999
  %or.cond8.i = select i1 %or.cond.i, i1 true, i1 %i.at
  br i1 %or.cond8.i, label %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = load double, ptr %i.x, align 8, !tbaa !149
  %i.av = load i8, ptr %i.y, align 8, !tbaa !72, !range !47, !noundef !48
  %i.aw = trunc nuw i8 %i.av to i1
  %.in.v.i.i = select i1 %i.aw, i64 88, i64 96
  %.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i.i
  %i.ax = load double, ptr %.in.i.i, align 8, !tbaa !70 ; 2 uses
  %i.ay = fcmp ult double %i.au, %i.ax
  br i1 %i.ay, label %bb.h, label %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.az = load double, ptr %i.z, align 8, !tbaa !186
  %i.ba = fmul double %i.ax, 5.000000e+00
  %i.bb = fcmp ult double %i.az, %i.ba
  br i1 %i.bb, label %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread14, label %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit

_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit: ; preds = %bb.h
  %i.bc = load ptr, ptr %i.o, align 8, !tbaa !50, !nonnull !48, !align !97
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 294
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !150, !range !47, !noundef !48
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread14, label %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread

bb.i:                                             ; preds = %_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.j:                                             ; preds = %bb.c
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.n

bb.k:                                             ; preds = %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread14
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread14: ; preds = %bb.h, %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit
  %i.bj = invoke noundef i64 @_ZNK9benchmark8internal15BenchmarkRunner21PredictNumItersNeededERKNS1_16IterationResultsE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(176) %1)
          to label %bb.l unwind label %bb.k

bb.l:                                             ; preds = %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread14
  store i64 %i.bj, ptr %i.m, align 8, !tbaa !84
  br label %bb.b

_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread: ; preds = %bb.f, %bb.g, %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit
  store i8 1, ptr %i.y, align 8, !tbaa !72
  store i64 %i.n, ptr %i.m, align 8, !tbaa !84
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bl = load ptr, ptr %i.i, align 8, !tbaa !106
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, ptr noundef %i.bl)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i7 unwind label %bb.m

bb.m:                                             ; preds = %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i7: ; preds = %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !14  ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.e
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i7
  %i.bq = load i64, ptr %i.e, align 8, !tbaa !15
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i9: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.b
  br i1 %i.bt, label %_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i9
  %i.bu = load i64, ptr %i.b, align 8, !tbaa !15
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #27
  br label %_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit13

_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.k ], [ %i.bg, %bb.i ], [ %i.bh, %bb.j ]
  call void @_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %.pn
}

declare void @_ZNK9benchmark8internal17BenchmarkInstance5SetupEv(ptr noundef nonnull align 8 dereferenceable(424)) local_unnamed_addr #0

declare void @_ZNK9benchmark8internal17BenchmarkInstance8TeardownEv(ptr noundef nonnull align 8 dereferenceable(424)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN9benchmark8internal15BenchmarkRunner16RunMemoryManagerEl(ptr noundef nonnull align 8 captures(none) dereferenceable(184) %0, i64 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load i64, ptr @_ZN9benchmark13MemoryManager14TombstoneValueE, align 8, !tbaa !93 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !93
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.b, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !93
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !187  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.h, ptr %i.c, align 8, !tbaa !187
  br label %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE9push_backEOS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !89   ; 5 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775776
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #25
  unreachable

_ZNKSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 5                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i, %i.n ; 2 uses
  %3 = icmp ult i64 %i.o, %i.n
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.o, i64 288230376151711743)
  %4 = select i1 %3, i64 288230376151711743, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.q = shl nuw nsw i64 %4, 5
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #26 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.l ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx12, align 8, !tbaa !93
  %.sroa.6.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %i.b, ptr %.sroa.6.0..sroa_idx14, align 8, !tbaa !93
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %_ZNKSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !188, !alias.scope !189
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !193

_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 32
  %.not.i23.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #27
  br label %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !89
  store ptr %i.v, ptr %i.c, align 8, !tbaa !187
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %4
  store ptr %i.w, ptr %i.e, align 8, !tbaa !90
  br label %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.x = phi ptr [ %i.g, %bb.b ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %i.y = load ptr, ptr @_ZN9benchmark8internal14memory_managerE, align 8, !tbaa !194 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !121
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr null, ptr %2, align 8, !tbaa !98
  %i.ac = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #26
          to label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit unwind label %bb.m ; 22 uses

_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE9push_backEOS2_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.ac, i8 0, i64 40, i1 false)
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !101
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i64 0, ptr %i.af, align 8, !tbaa !8
  store i8 0, ptr %i.ae, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 88 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !101
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  store i64 0, ptr %i.ai, align 8, !tbaa !8
  store i8 0, ptr %i.ah, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  store i32 0, ptr %i.aj, align 8, !tbaa !102
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 120 ; 3 uses
  store i32 0, ptr %i.ak, align 8, !tbaa !105
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  store ptr null, ptr %i.al, align 8, !tbaa !106
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !107
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !108
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 152
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, i8 0, i64 48, i1 false)
  store i32 1, ptr %i.ap, align 8, !tbaa !109
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(100) %i.aq, i8 0, i64 40, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 248
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.ar) #23
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 296
  store i32 1, ptr %i.as, align 8, !tbaa !111
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 300
  store i32 0, ptr %i.at, align 4, !tbaa !118
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 304
  store i32 0, ptr %i.au, align 8, !tbaa !119
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.av, i8 0, i64 40, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 352
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.aw) #23
  store ptr %i.ac, ptr %2, align 8, !tbaa !120
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !50
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  invoke void @_ZNK9benchmark8internal17BenchmarkInstance5SetupEv(ptr noundef nonnull align 8 dereferenceable(424) %.pre)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !50, !nonnull !48, !align !97
  %i.az = load ptr, ptr %2, align 8, !tbaa !120
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !85
  invoke void @_ZN9benchmark8internal12_GLOBAL__N_111RunInThreadEPKNS0_17BenchmarkInstanceEliPNS0_13ThreadManagerEPNS0_23PerfCountersMeasurementEPNS_15ProfilerManagerE(ptr noundef nonnull %i.ay, i64 noundef %1, i32 noundef 0, ptr noundef %i.az, ptr noundef %i.bb, ptr noundef null)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.bc = load ptr, ptr %2, align 8, !tbaa !120
  invoke void @_ZN9benchmark8internal13ThreadManager17WaitForAllThreadsEv(ptr noundef nonnull align 8 dereferenceable(400) %i.bc)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %2, align 8, !tbaa !120   ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !120
  %.not.i.i8 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i8, label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt14default_deleteIN9benchmark8internal13ThreadManagerEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.bd)
  br label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit9

_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit9: ; preds = %bb.h, %bb.i
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !50, !nonnull !48, !align !97
  invoke void @_ZNK9benchmark8internal17BenchmarkInstance8TeardownEv(ptr noundef nonnull align 8 dereferenceable(424) %i.be)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit9
  %i.bf = load ptr, ptr @_ZN9benchmark8internal14memory_managerE, align 8, !tbaa !194 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !121
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bj = load ptr, ptr %2, align 8, !tbaa !120   ; 2 uses
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZNKSt14default_deleteIN9benchmark8internal13ThreadManagerEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.bj)
  br label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret ptr %i.x

bb.m:                                             ; preds = %bb.j, %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit9, %bb.g, %bb.f, %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit, %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE9push_backEOS2_.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %2, align 8, !tbaa !120   ; 2 uses
  %.not.i10 = icmp eq ptr %i.bl, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EED2Ev.exit11, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZNKSt14default_deleteIN9benchmark8internal13ThreadManagerEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.bl)
  br label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EED2Ev.exit11

_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EED2Ev.exit11: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.bk
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark8internal15BenchmarkRunner18RunProfilerManagerEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr", align 8   ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store ptr null, ptr %1, align 8, !tbaa !98
  %i.a = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #26
          to label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit unwind label %bb.h ; 22 uses

_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.a, i8 0, i64 40, i1 false)
  store ptr %i.c, ptr %i.b, align 8, !tbaa !101
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %i.d, align 8, !tbaa !8
  store i8 0, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %i.g, align 8, !tbaa !8
  store i8 0, ptr %i.f, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i32 0, ptr %i.h, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !105
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr null, ptr %i.j, align 8, !tbaa !106
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr %i.i, ptr %i.k, align 8, !tbaa !107
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr %i.i, ptr %i.l, align 8, !tbaa !108
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, i8 0, i64 48, i1 false)
  store i32 1, ptr %i.n, align 8, !tbaa !109
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(100) %i.o, i8 0, i64 40, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.p) #23
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store i32 1, ptr %i.q, align 8, !tbaa !111
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 300
  store i32 0, ptr %i.r, align 4, !tbaa !118
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store i32 0, ptr %i.s, align 8, !tbaa !119
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i8 0, i64 40, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.u) #23
  store ptr %i.a, ptr %1, align 8, !tbaa !120
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  invoke void @_ZNK9benchmark8internal17BenchmarkInstance5SetupEv(ptr noundef nonnull align 8 dereferenceable(424) %.pre)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50, !nonnull !48, !align !97
  %i.x = load ptr, ptr %1, align 8, !tbaa !120
  %i.y = load ptr, ptr @_ZN9benchmark8internal16profiler_managerE, align 8, !tbaa !196
  invoke void @_ZN9benchmark8internal12_GLOBAL__N_111RunInThreadEPKNS0_17BenchmarkInstanceEliPNS0_13ThreadManagerEPNS0_23PerfCountersMeasurementEPNS_15ProfilerManagerE(ptr noundef nonnull %i.w, i64 noundef 1, i32 noundef 0, ptr noundef %i.x, ptr noundef null, ptr noundef %i.y)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %1, align 8, !tbaa !120
  invoke void @_ZN9benchmark8internal13ThreadManager17WaitForAllThreadsEv(ptr noundef nonnull align 8 dereferenceable(400) %i.z)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_ZN9benchmark13BenchmarkNameD2Ev:bb.a
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit
  %.05 = phi ptr [ %i.x, %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit ], [ %0, %bb.a ] ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 496
  %i.b = getelementptr inbounds nuw i8, ptr %.05, i64 512
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !106
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i: ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.05, i64 360
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05, i64 376 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !15
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05, i64 320
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05, i64 336 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !15
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05, i64 280
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05, i64 296 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !15
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #27
  br label %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit

_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  tail call void @_ZN9benchmark13BenchmarkNameD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(560) %.05) #23
  %i.x = getelementptr inbounds nuw i8, ptr %.05, i64 560 ; 2 uses
  %.not = icmp eq ptr %i.x, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !257

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNKSt14default_deleteIN9benchmark8internal13ThreadManagerEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 352
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 248
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.c) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !106
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef %i.f)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !15
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN9benchmark8internal13ThreadManagerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !15
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #27
  br label %_ZN9benchmark8internal13ThreadManagerD2Ev.exit

_ZN9benchmark8internal13ThreadManagerD2Ev.exit:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 400) #27
  br label %bb.d

bb.d:                                             ; preds = %_ZN9benchmark8internal13ThreadManagerD2Ev.exit, %bb.a
  ret void
}

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6thread24_M_thread_deps_never_runEv() #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKN9benchmark8internal17BenchmarkInstanceEliPNS4_13ThreadManagerEPNS4_23PerfCountersMeasurementEPNS3_15ProfilerManagerEES7_liS9_SB_DnEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKN9benchmark8internal17BenchmarkInstanceEliPNS4_13ThreadManagerEPNS4_23PerfCountersMeasurementEPNS3_15ProfilerManagerEES7_liS9_SB_DnEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !258
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.i = load i64, ptr %i.c, align 8, !tbaa !93
  %i.j = load i32, ptr %i.d, align 8, !tbaa !4
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !120
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !126
  tail call void %i.g(ptr noundef %i.h, i64 noundef %i.i, i32 noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef null), !inline_history !259
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(560) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !94     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775520
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #25
  unreachable

_ZNKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 560                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %3 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 16470307208669242)
  %4 = select i1 %3, i64 16470307208669242, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %4, 560                  ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #26 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  invoke void @_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(560) %i.o, ptr noundef nonnull align 8 dereferenceable(560) %2)
          to label %_ZNSt16allocator_traitsISaIN9benchmark17BenchmarkReporter3RunEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN9benchmark17BenchmarkReporter3RunEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_M_check_lenEmPKc.exit
  %i.p = tail call noundef ptr @_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.n, ptr noundef nonnull align 1 dereferenceable(1) %0) #23
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 560
  %i.r = tail call noundef ptr @_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.q, ptr noundef nonnull align 1 dereferenceable(1) %0) #23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt16allocator_traitsISaIN9benchmark17BenchmarkReporter3RunEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !96
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.v) #27
  br label %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt16allocator_traitsISaIN9benchmark17BenchmarkReporter3RunEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit, %bb.c
  store ptr %i.n, ptr %0, align 8, !tbaa !94
  store ptr %i.r, ptr %i.a, align 8, !tbaa !95
  %i.w = getelementptr inbounds nuw [560 x i8], ptr %i.n, i64 %4
  store ptr %i.w, ptr %i.s, align 8, !tbaa !96
  ret void

bb.d:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_M_check_lenEmPKc.exit
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.z) #23 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.m) #27
  invoke void @__cxa_rethrow() #25
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.x

bb.g:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #28
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef nonnull align 8 dereferenceable(560) %1) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  tail call void @_ZN9benchmark13BenchmarkNameC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.d, ptr noundef nonnull align 8 dereferenceable(20) %i.e, i64 20, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !101
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.k = load i64, ptr %i.j, align 8, !tbaa !8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 %i.k, ptr %i.c, align 8, !tbaa !93
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.n     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.m, ptr %i.f, align 8, !tbaa !14
  %i.n = load i64, ptr %i.c, align 8, !tbaa !93
  store i64 %i.n, ptr %i.h, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.o = phi ptr [ %i.m, %.noexc ], [ %i.h, %bb.a ] ; 2 uses
  switch i64 %i.k, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !15
  store i8 %i.p, ptr %i.o, align 1, !tbaa !15
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.q = load i64, ptr %i.c, align 8, !tbaa !93   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %i.q, ptr %i.r, align 8, !tbaa !8
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.w = load i32, ptr %i.v, align 8, !tbaa !254
  store i32 %i.w, ptr %i.u, align 8, !tbaa !254
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !101
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !14  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !93
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i19, label %._crit_edge.i.i18

.noexc.i19:                                       ; preds = %bb.d
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc20 unwind label %bb.o   ; 2 uses

.noexc20:                                         ; preds = %.noexc.i19
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !14
  %i.af = load i64, ptr %i.b, align 8, !tbaa !93
  store i64 %i.af, ptr %i.z, align 8, !tbaa !15
  br label %._crit_edge.i.i18

._crit_edge.i.i18:                                ; preds = %.noexc20, %bb.d
  %i.ag = phi ptr [ %i.ae, %.noexc20 ], [ %i.z, %bb.d ] ; 2 uses
  switch i64 %i.ac, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i18
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !15
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !15
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i18
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !93  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !8
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !207
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !207
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 5 uses
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !101
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !14 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.au = load i64, ptr %i.at, align 8, !tbaa !8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.au, ptr %i.a, align 8, !tbaa !93
  %i.av = icmp ugt i64 %i.au, 15
  br i1 %i.av, label %.noexc.i23, label %._crit_edge.i.i22

.noexc.i23:                                       ; preds = %bb.g
  %i.aw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc24 unwind label %bb.p   ; 2 uses

.noexc24:                                         ; preds = %.noexc.i23
  store ptr %i.aw, ptr %i.ap, align 8, !tbaa !14
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !93
  store i64 %i.ax, ptr %i.ar, align 8, !tbaa !15
  br label %._crit_edge.i.i22

._crit_edge.i.i22:                                ; preds = %.noexc24, %bb.g
  %i.ay = phi ptr [ %i.aw, %.noexc24 ], [ %i.ar, %bb.g ] ; 2 uses
  switch i64 %i.au, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i22
  %i.az = load i8, ptr %i.as, align 1, !tbaa !15
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !15
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i22
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.as, i64 %i.au, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i22
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !93  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !8
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba
  store i8 0, ptr %i.bd, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(98) %i.be, ptr noundef nonnull align 8 dereferenceable(98) %i.bf, i64 98, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 4 uses
  store i32 0, ptr %i.bg, align 8, !tbaa !105
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  store ptr null, ptr %i.bh, align 8, !tbaa !106
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !107
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !108
end_hunk_1
