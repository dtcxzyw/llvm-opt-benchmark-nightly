Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/profile-generator?download=true
inline.NumInlined: 2623
inline.NumDeleted: 1470
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2v88internal21CpuProfilesCollection14StartProfilingEjPKcNS_19CpuProfilingOptionsESt10unique_ptrINS_24DiscardedSamplesDelegateESt14default_deleteIS6_EE:bb.a
bb.h:                                             ; preds = %_ZN2v819CpuProfilingOptionsD2Ev.exit
  store ptr %i.ab, ptr %i.ap, align 8
  %i.as = load ptr, ptr %i.c, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.at, ptr %i.c, align 8
  br label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit.sink.split

bb.i:                                             ; preds = %_ZN2v819CpuProfilingOptionsD2Ev.exit
  %i.au = load ptr, ptr %i.b, align 8             ; 10 uses
  %i.av = ptrtoint ptr %i.ap to i64               ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64               ; 4 uses
  %i.ax = sub i64 %i.av, %i.aw                    ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775800
  br i1 %i.ay, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #27
  unreachable

_ZNKSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.az = ashr exact i64 %i.ax, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.ba = add nsw i64 %.sroa.speculated.i.i.i, %i.az ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.az
  %i.bc = call i64 @llvm.umin.i64(i64 %i.ba, i64 1152921504606846975)
  %i.bd = select i1 %i.bb, i64 1152921504606846975, i64 %i.bc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bd, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #28 ; 10 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ax
  store ptr %i.ab, ptr %i.bg, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.au, %i.ap
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.bh = add i64 %i.av, -8
  %i.bi = sub i64 %i.bh, %i.aw                    ; 2 uses
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bi, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader65, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bl = add i64 %i.av, -8
  %i.bm = sub i64 %i.bl, %i.aw
  %i.bn = and i64 %i.bm, -8
  %i.bo = add i64 %i.bn, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bf, i64 %i.bo
  %scevgep61 = getelementptr i8, ptr %i.au, i64 %i.bo
  %bound0 = icmp ult ptr %i.bf, %scevgep61
  %bound1 = icmp ult ptr %i.au, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader65, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bk, 4611686018427387900     ; 3 uses
  %i.bp = shl i64 %n.vec, 3                       ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bf, i64 %i.bp  ; 2 uses
  %i.br = getelementptr i8, ptr %i.au, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bf, i64 %i.bs ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.au, i64 %i.bs ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.bt = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep62, align 8, !alias.scope !157, !noalias !152
  %wide.load63 = load <2 x i64>, ptr %i.bt, align 8, !alias.scope !157, !noalias !152
  %i.bu = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !160, !noalias !157
  store <2 x i64> %wide.load63, ptr %i.bu, align 8, !alias.scope !160, !noalias !157
  %i.bv = getelementptr i8, ptr %next.gep62, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep62, align 8, !alias.scope !157, !noalias !152
  store <2 x ptr> splat (ptr null), ptr %i.bv, align 8, !alias.scope !157, !noalias !152
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !162

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader65

.lr.ph.i.i.i.i.i.preheader65:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bf, %vector.memcheck ], [ %i.bf, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bq, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.au, %vector.memcheck ], [ %i.au, %.lr.ph.i.i.i.i.i.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader65, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader65 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader65 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.bx = load i64, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !155, !noalias !152
  store i64 %i.bx, ptr %.012.i.i.i.i.i, align 8, !alias.scope !152, !noalias !155
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !155, !noalias !152
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.by, %i.ap
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !165

_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bf, %_ZNKSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bq, %middle.block ], [ %i.bz, %.lr.ph.i.i.i.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  %i.cb = load ptr, ptr %i.aq, align 8
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.cc, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.cd) #29
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.bf, ptr %i.b, align 8
  store ptr %i.ca, ptr %i.c, align 8
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd
  store ptr %i.ce, ptr %i.aq, align 8
  br label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit.sink.split

_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit.sink.split: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.h
  %.lcssa53.sink = phi ptr [ %i.ab, %_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %i.ab, %bb.h ], [ %i.u, %bb.d ]
  %.sroa.4.3.ph = phi i64 [ 0, %_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ 0, %bb.h ], [ 4294967296, %bb.d ]
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.lcssa53.sink, i64 216
  %.pre.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 8
  br label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit: ; preds = %bb.e, %.lr.ph.split.us, %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit.sink.split, %bb.a
  %.sroa.0.3 = phi i32 [ 0, %bb.a ], [ %1, %.lr.ph.split.us ], [ %.pre.pre, %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit.sink.split ], [ %1, %bb.e ]
  %.sroa.4.3 = phi i64 [ 8589934592, %bb.a ], [ 4294967296, %.lr.ph.split.us ], [ %.sroa.4.3.ph, %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit.sink.split ], [ 4294967296, %bb.e ]
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #30
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.3 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.3, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

declare void @_ZN2v819CpuProfilingOptionsC1ENS_16CpuProfilingModeEjiNS_10MaybeLocalINS_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, ptr) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 0, 12884901888) i64 @_ZN2v88internal21CpuProfilesCollection14StartProfilingEPKcNS_19CpuProfilingOptionsESt10unique_ptrINS_24DiscardedSamplesDelegateESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::CpuProfilingOptions", align 8 ; 3 uses
  %5 = alloca %"class.std::unique_ptr.120", align 8 ; 3 uses
  %i.a = atomicrmw add ptr @_ZN2v88internal21CpuProfilesCollection8last_id_E, i32 1 seq_cst, align 4
  %i.b = add i32 %i.a, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 12, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  store ptr %i.e, ptr %i.c, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN2v819CpuProfilingOptionsC2EOS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN2v812api_internal19MoveGlobalReferenceEPPmS2_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #30
  store ptr null, ptr %i.d, align 8
  br label %_ZN2v819CpuProfilingOptionsC2EOS0_.exit

_ZN2v819CpuProfilingOptionsC2EOS0_.exit:          ; preds = %bb.a, %bb.b
  %i.g = load i64, ptr %3, align 8
  store i64 %i.g, ptr %5, align 8
  store ptr null, ptr %3, align 8
  %i.h = call i64 @_ZN2v88internal21CpuProfilesCollection14StartProfilingEjPKcNS_19CpuProfilingOptionsESt10unique_ptrINS_24DiscardedSamplesDelegateESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.b, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %i.i = load ptr, ptr %5, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824DiscardedSamplesDelegateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824DiscardedSamplesDelegateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824DiscardedSamplesDelegateEEclEPS1_.exit.i: ; preds = %_ZN2v819CpuProfilingOptionsC2EOS0_.exit
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.i) #30, !inline_history !151
  br label %_ZNSt10unique_ptrIN2v824DiscardedSamplesDelegateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824DiscardedSamplesDelegateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN2v819CpuProfilingOptionsC2EOS0_.exit, %_ZNKSt14default_deleteIN2v824DiscardedSamplesDelegateEEclEPS1_.exit.i
  %i.m = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN2v819CpuProfilingOptionsD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN2v824DiscardedSamplesDelegateESt14default_deleteIS1_EED2Ev.exit
  call void @_ZN2v812api_internal13DisposeGlobalEPm(ptr noundef nonnull %i.m) #30
  br label %_ZN2v819CpuProfilingOptionsD2Ev.exit

_ZN2v819CpuProfilingOptionsD2Ev.exit:             ; preds = %_ZNSt10unique_ptrIN2v824DiscardedSamplesDelegateESt14default_deleteIS1_EED2Ev.exit, %bb.c
  ret i64 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal21CpuProfilesCollection13StopProfilingEj(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !166 ; 4 uses
  %i.e = load ptr, ptr %i.b, align 8, !noalias !169 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr i64 %i.h, 5                         ; 3 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.i.preheader.i.i, label %._crit_edge.i.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %i.k = mul nsw i64 %i.i, -32
  %scevgep.i.i = getelementptr i8, ptr %i.d, i64 %i.k
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.i.preheader.i.i
  %i.l = phi ptr [ %i.z, %bb.h ], [ %i.d, %.lr.ph.i.preheader.i.i ] ; 6 uses
  %i.m = phi i64 [ %i.af, %bb.h ], [ %i.f, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.056.i.i.i = phi i64 [ %i.ad, %bb.h ], [ %i.i, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  %.val1.i.i.i.i = load ptr, ptr %i.o, align 8, !noalias !172
  %i.p = getelementptr i8, ptr %.val1.i.i.i.i, i64 216
  %.val1.val.i.i.i.i = load i32, ptr %i.p, align 8, !noalias !172
  %i.q = icmp eq i32 %1, %.val1.val.i.i.i.i
  br i1 %i.q, label %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection13StopProfilingEjE3$_0ET_SI_SI_T0_.exit", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.r = getelementptr inbounds i8, ptr %i.l, i64 -16
  %.val1.i15.i.i.i = load ptr, ptr %i.r, align 8, !noalias !172
  %i.s = getelementptr i8, ptr %.val1.i15.i.i.i, i64 216
  %.val1.val.i16.i.i.i = load i32, ptr %i.s, align 8, !noalias !172
  %i.t = icmp eq i32 %1, %.val1.val.i16.i.i.i
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds i8, ptr %i.l, i64 -8
  %.cast.i.i.i = ptrtoint ptr %i.u to i64
  br label %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection13StopProfilingEjE3$_0ET_SI_SI_T0_.exit"

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds i8, ptr %i.l, i64 -24
  %.val1.i17.i.i.i = load ptr, ptr %i.v, align 8, !noalias !172
  %i.w = getelementptr i8, ptr %.val1.i17.i.i.i, i64 216
  %.val1.val.i18.i.i.i = load i32, ptr %i.w, align 8, !noalias !172
  %i.x = icmp eq i32 %1, %.val1.val.i18.i.i.i
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds i8, ptr %i.l, i64 -16
  %.cast42.i.i.i = ptrtoint ptr %i.y to i64
  br label %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection13StopProfilingEjE3$_0ET_SI_SI_T0_.exit"

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds i8, ptr %i.l, i64 -32 ; 3 uses
  %.val1.i19.i.i.i = load ptr, ptr %i.z, align 8, !noalias !172
  %i.aa = getelementptr i8, ptr %.val1.i19.i.i.i, i64 216
  %.val1.val.i20.i.i.i = load i32, ptr %i.aa, align 8, !noalias !172
  %i.ab = icmp eq i32 %1, %.val1.val.i20.i.i.i
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds i8, ptr %i.l, i64 -24
  %.cast43.i.i.i = ptrtoint ptr %i.ac to i64
  br label %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection13StopProfilingEjE3$_0ET_SI_SI_T0_.exit"

bb.h:                                             ; preds = %bb.f
  %i.ad = add nsw i64 %.056.i.i.i, -1
  %i.ae = icmp sgt i64 %.056.i.i.i, 1
  %i.af = ptrtoint ptr %i.z to i64                ; 3 uses
  br i1 %i.ae, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !179

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.h
  %.pre73.i.i.i = sub i64 %i.af, %i.g
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi74.i.i.i = phi i64 [ %.pre73.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.h, %bb.a ]
  %i.ag = phi i64 [ %i.af, %._crit_edge.loopexit.i.i.i ], [ %i.f, %bb.a ] ; 4 uses
  %i.ah = phi ptr [ %scevgep.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.ai = ashr exact i64 %.pre-phi74.i.i.i, 3
  switch i64 %i.ai, label %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection13StopProfilingEjE3$_0ET_SI_SI_T0_.exit" [
    i64 3, label %bb.i
    i64 2, label %bb.k
    i64 1, label %bb.m
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.aj = inttoptr i64 %i.ag to ptr
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %.val1.i23.i.i.i = load ptr, ptr %i.ak, align 8, !noalias !172
  %i.al = getelementptr i8, ptr %.val1.i23.i.i.i, i64 216
  %.val1.val.i24.i.i.i = load i32, ptr %i.al, align 8, !noalias !172
  %i.am = icmp eq i32 %1, %.val1.val.i24.i.i.i
  br i1 %i.am, label %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection13StopProfilingEjE3$_0ET_SI_SI_T0_.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds i8, ptr %i.ah, i64 -8 ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i
  %i.ap = phi ptr [ %i.an, %bb.j ], [ %i.ah, %._crit_edge.i.i.i ]
  %i.aq = phi i64 [ %i.ao, %bb.j ], [ %i.ag, %._crit_edge.i.i.i ] ; 2 uses
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %.val1.i25.i.i.i = load ptr, ptr %i.as, align 8, !noalias !172
  %i.at = getelementptr i8, ptr %.val1.i25.i.i.i, i64 216
  %.val1.val.i26.i.i.i = load i32, ptr %i.at, align 8, !noalias !172
  %i.au = icmp eq i32 %1, %.val1.val.i26.i.i.i
  br i1 %i.au, label %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection13StopProfilingEjE3$_0ET_SI_SI_T0_.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %i.aw = ptrtoint ptr %i.av to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i
  %i.ax = phi i64 [ %i.aw, %bb.l ], [ %i.ag, %._crit_edge.i.i.i ] ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %.val1.i27.i.i.i = load ptr, ptr %i.az, align 8, !noalias !172
  %i.ba = getelementptr i8, ptr %.val1.i27.i.i.i, i64 216
  %.val1.val.i28.i.i.i = load i32, ptr %i.ba, align 8, !noalias !172
  %i.bb = icmp eq i32 %1, %.val1.val.i28.i.i.i
  %spec.select.i.i = select i1 %i.bb, i64 %i.ax, i64 %i.g
  br label %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection13StopProfilingEjE3$_0ET_SI_SI_T0_.exit"

"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection13StopProfilingEjE3$_0ET_SI_SI_T0_.exit": ; preds = %.lr.ph.i.i.i, %bb.c, %bb.e, %bb.g, %._crit_edge.i.i.i, %bb.i, %bb.k, %bb.m
  %.sink.i.i.i = phi i64 [ %spec.select.i.i, %bb.m ], [ %i.aq, %bb.k ], [ %i.ag, %bb.i ], [ %i.g, %._crit_edge.i.i.i ], [ %.cast43.i.i.i, %bb.g ], [ %.cast42.i.i.i, %bb.e ], [ %.cast.i.i.i, %bb.c ], [ %i.m, %.lr.ph.i.i.i ]
  %i.bc = inttoptr i64 %.sink.i.i.i to ptr        ; 2 uses
  %i.bd = icmp eq ptr %i.e, %i.bc
  br i1 %i.bd, label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection13StopProfilingEjE3$_0ET_SI_SI_T0_.exit"
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -8 ; 5 uses
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void @_ZN2v88internal10CpuProfile13FinishProfileEv(ptr noundef nonnull align 8 dereferenceable(232) %i.bf)
  %i.bg = load ptr, ptr %i.be, align 8            ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bk
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = ptrtoint ptr %i.bg to i64
  store i64 %i.bl, ptr %i.bi, align 8
  store ptr null, ptr %i.be, align 8
  %i.bm = load ptr, ptr %i.bh, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bn, ptr %i.bh, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

bb.p:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %i.be)
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.o, %bb.p
  %i.bp = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bq = ptrtoint ptr %i.be to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  %i.bv = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 3                 ; 2 uses
  %i.cb = icmp sgt i64 %i.ca, 0
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.q, %_ZNSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.cg, %_ZNSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.ca, %bb.q ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.cf, %_ZNSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.bt, %bb.q ] ; 4 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.ce, %_ZNSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.bu, %bb.q ] ; 3 uses
  %i.cc = load ptr, ptr %.0910.i.i.i.i.i.i.i, align 8
  store ptr null, ptr %.0910.i.i.i.i.i.i.i, align 8
  %i.cd = load ptr, ptr %.0811.i.i.i.i.i.i.i, align 8 ; 2 uses
  store ptr %i.cc, ptr %.0811.i.i.i.i.i.i.i, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call void @_ZNKSt14default_deleteIN2v88internal10CpuProfileEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %.0811.i.i.i.i.i.i.i, ptr noundef nonnull %i.cd)
  br label %_ZNSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i: ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.cg = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.ch = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, !llvm.loop !180

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i: ; preds = %_ZNSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.c, align 8
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, %bb.q, %_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  %i.ci = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i ], [ %i.bv, %bb.q ], [ %i.bv, %_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit ]
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -8 ; 3 uses
  store ptr %i.cj, ptr %i.c, align 8
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i, label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i
  tail call void @_ZNKSt14default_deleteIN2v88internal10CpuProfileEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull %i.ck)
  br label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit: ; preds = %bb.s, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection13StopProfilingEjE3$_0ET_SI_SI_T0_.exit"
  %.0 = phi ptr [ null, %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection13StopProfilingEjE3$_0ET_SI_SI_T0_.exit" ], [ %i.bg, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i ], [ %i.bg, %bb.s ]
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #30
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal21CpuProfilesCollection6LookupEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1
  %i.c = icmp eq i8 %i.b, 0                       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !noalias !181 ; 5 uses
  %i.h = load ptr, ptr %i.e, align 8, !noalias !184 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = ashr i64 %i.k, 5                         ; 3 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.preheader.i.i, label %._crit_edge.i.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  br i1 %i.c, label %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit", label %.lr.ph.i.preheader25.i.i

.lr.ph.i.preheader25.i.i:                         ; preds = %.lr.ph.i.preheader.i.i
  %i.n = mul nsw i64 %i.l, -32
  %scevgep.i.i = getelementptr i8, ptr %i.g, i64 %i.n ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit30.thread52.i.i.i", %.lr.ph.i.preheader25.i.i
  %i.o = phi ptr [ %i.ab, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit30.thread52.i.i.i" ], [ %i.g, %.lr.ph.i.preheader25.i.i ] ; 8 uses
  %.070.i.i.i = phi i64 [ %i.af, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit30.thread52.i.i.i" ], [ %i.l, %.lr.ph.i.preheader25.i.i ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  %.val2.i.i.i.i = load ptr, ptr %i.p, align 8, !noalias !187
  %i.q = load ptr, ptr %.val2.i.i.i.i, align 8, !noalias !187 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit.thread49.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit.i.i.i": ; preds = %.lr.ph.i.i.i
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(1) %1) #31, !noalias !187
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit.thread49.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit.thread49.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit.i.i.i", %.lr.ph.i.i.i
  %i.t = getelementptr inbounds i8, ptr %i.o, i64 -16
  %.val2.i22.i.i.i = load ptr, ptr %i.t, align 8, !noalias !187
  %i.u = load ptr, ptr %.val2.i22.i.i.i, align 8, !noalias !187 ; 2 uses
  %.not.i.i23.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i23.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit24.thread50.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit24.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit24.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit.thread49.i.i.i"
  %i.v = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(1) %1) #31, !noalias !187
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit.loopexit.split.loop.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit24.thread50.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit24.thread50.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit24.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit.thread49.i.i.i"
  %i.x = getelementptr inbounds i8, ptr %i.o, i64 -24
  %.val2.i25.i.i.i = load ptr, ptr %i.x, align 8, !noalias !187
  %i.y = load ptr, ptr %.val2.i25.i.i.i, align 8, !noalias !187 ; 2 uses
  %.not.i.i26.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i26.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit27.thread51.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit27.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit27.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit24.thread50.i.i.i"
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(1) %1) #31, !noalias !187
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit.loopexit.split.loop.exit40", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit27.thread51.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit27.thread51.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit27.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit24.thread50.i.i.i"
  %i.ab = getelementptr inbounds i8, ptr %i.o, i64 -32 ; 2 uses
  %.val2.i28.i.i.i = load ptr, ptr %i.ab, align 8, !noalias !187
  %i.ac = load ptr, ptr %.val2.i28.i.i.i, align 8, !noalias !187 ; 2 uses
  %.not.i.i29.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i29.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit30.thread52.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit30.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit30.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit27.thread51.i.i.i"
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ac, ptr noundef nonnull dereferenceable(1) %1) #31, !noalias !187
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit.loopexit.split.loop.exit42", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit30.thread52.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit30.thread52.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit30.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit27.thread51.i.i.i"
  %i.af = add nsw i64 %.070.i.i.i, -1
  %i.ag = icmp sgt i64 %.070.i.i.i, 1
  br i1 %i.ag, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !194

._crit_edge.loopexit.i.i.i:                       ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit30.thread52.i.i.i"
  %2 = ptrtoint ptr %scevgep.i.i to i64
  %.pre87.i.i.i = sub i64 %2, %i.j
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.b
  %.pre-phi88.i.i.i = phi i64 [ %.pre87.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.k, %bb.b ]
  %i.ah = phi ptr [ %scevgep.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.g, %bb.b ] ; 7 uses
  %i.ai = ashr exact i64 %.pre-phi88.i.i.i, 3
  switch i64 %i.ai, label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit [
    i64 3, label %bb.c
    i64 2, label %bb.e
    i64 1, label %bb.g
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  br i1 %i.c, label %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -8 ; 3 uses
  %.val2.i33.i.i.i = load ptr, ptr %i.aj, align 8, !noalias !187
  %i.ak = load ptr, ptr %.val2.i33.i.i.i, align 8, !noalias !187 ; 2 uses
  %.not.i.i34.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i34.i.i.i, label %bb.f, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit35.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit35.i.i.i": ; preds = %bb.d
  %i.al = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ak, ptr noundef nonnull dereferenceable(1) %1) #31, !noalias !187
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit", label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  br i1 %i.c, label %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit", label %bb.f

bb.f:                                             ; preds = %bb.d, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit35.i.i.i", %bb.e
  %.ptr18 = phi ptr [ %i.ah, %bb.e ], [ %i.aj, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit35.i.i.i" ], [ %i.aj, %bb.d ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.ptr18, i64 -8 ; 3 uses
  %.val2.i36.i.i.i = load ptr, ptr %i.an, align 8, !noalias !187
  %i.ao = load ptr, ptr %.val2.i36.i.i.i, align 8, !noalias !187 ; 2 uses
  %.not.i.i37.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i37.i.i.i, label %bb.h, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit38.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit38.i.i.i": ; preds = %bb.f
  %i.ap = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(1) %1) #31, !noalias !187
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit", label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  br i1 %i.c, label %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit", label %bb.h

bb.h:                                             ; preds = %bb.f, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit38.i.i.i", %bb.g
  %.ptr17 = phi ptr [ %i.ah, %bb.g ], [ %i.an, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit38.i.i.i" ], [ %i.an, %bb.f ] ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.ptr17, i64 -8
  %.val2.i39.i.i.i = load ptr, ptr %i.ar, align 8, !noalias !187
  %i.as = load ptr, ptr %.val2.i39.i.i.i, align 8, !noalias !187 ; 2 uses
  %.not.i.i40.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i40.i.i.i, label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit41.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit41.i.i.i": ; preds = %bb.h
  %i.at = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.as, ptr noundef nonnull dereferenceable(1) %1) #31, !noalias !187
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit", label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit

"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit24.i.i.i"
  %i.av = getelementptr inbounds i8, ptr %i.o, i64 -8
  br label %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit"

"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit.loopexit.split.loop.exit40": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit27.i.i.i"
  %i.aw = getelementptr inbounds i8, ptr %i.o, i64 -16
  br label %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit"

"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit.loopexit.split.loop.exit42": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit30.i.i.i"
  %i.ax = getelementptr inbounds i8, ptr %i.o, i64 -24
  br label %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit"

"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit.i.i.i", %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit.loopexit.split.loop.exit", %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit.loopexit.split.loop.exit40", %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit.loopexit.split.loop.exit42", %.lr.ph.i.preheader.i.i, %bb.c, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit35.i.i.i", %bb.e, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit38.i.i.i", %bb.g, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit41.i.i.i"
  %.sink.i.i.i.ptr = phi ptr [ %.ptr17, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit41.i.i.i" ], [ %.ptr18, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit38.i.i.i" ], [ %i.ah, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit35.i.i.i" ], [ %i.ah, %bb.e ], [ %i.ah, %bb.g ], [ %i.g, %.lr.ph.i.preheader.i.i ], [ %i.ah, %bb.c ], [ %i.av, %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit.loopexit.split.loop.exit" ], [ %i.ax, %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit.loopexit.split.loop.exit42" ], [ %i.aw, %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit.loopexit.split.loop.exit40" ], [ %i.o, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit.i.i.i" ] ; 2 uses
  %i.ay = icmp eq ptr %.sink.i.i.i.ptr, %i.h
  br i1 %i.ay, label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit"
  %i.az = getelementptr inbounds i8, ptr %.sink.i.i.i.ptr, i64 -8
  %i.ba = load ptr, ptr %i.az, align 8
  br label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit: ; preds = %bb.h, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit41.i.i.i", %._crit_edge.i.i.i, %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit", %bb.i
  %.0 = phi ptr [ %i.ba, %bb.i ], [ null, %"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_.exit" ], [ null, %._crit_edge.i.i.i ], [ null, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal21CpuProfilesCollection6LookupEPKcE3$_0EclISt16reverse_iteratorINS_17__normal_iteratorIPSt10unique_ptrINS3_10CpuProfileESt14default_deleteISD_EESt6vectorISG_SaISG_EEEEEEEbT_.exit41.i.i.i" ], [ null, %bb.h ]
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit
  %.1 = phi ptr [ %.0, %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal21CpuProfilesCollection17IsLastProfileLeftEj(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %.not = icmp eq i64 %i.h, 8
  br i1 %.not, label %bb.b, label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 216
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp eq i32 %1, %i.k
  br label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit: ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #30
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal21CpuProfilesCollection13RemoveProfileEPNS0_10CpuProfileE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr i64 %i.g, 5                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.j = and i64 %i.g, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.j ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.058.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i ], [ %i.s, %bb.f ] ; 2 uses
  %.sroa.038.057.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %i.r, %bb.f ] ; 9 uses
  %.val1.i.i.i.i = load ptr, ptr %.sroa.038.057.i.i.i, align 8
  %i.k = icmp eq ptr %.val1.i.i.i.i, %1
  br i1 %i.k, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_21CpuProfilesCollection13RemoveProfileEPS5_E3$_0ET_SH_SH_T0_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 8
  %.val1.i22.i.i.i = load ptr, ptr %i.l, align 8
  %i.m = icmp eq ptr %.val1.i22.i.i.i, %1
  br i1 %i.m, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_21CpuProfilesCollection13RemoveProfileEPS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 16
  %.val1.i23.i.i.i = load ptr, ptr %i.n, align 8
  %i.o = icmp eq ptr %.val1.i23.i.i.i, %1
  br i1 %i.o, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_21CpuProfilesCollection13RemoveProfileEPS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit23", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 24
  %.val1.i24.i.i.i = load ptr, ptr %i.p, align 8
  %i.q = icmp eq ptr %.val1.i24.i.i.i, %1
  br i1 %i.q, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_21CpuProfilesCollection13RemoveProfileEPS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit25", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 32
  %i.s = add nsw i64 %.058.i.i.i, -1
  %i.t = icmp sgt i64 %.058.i.i.i, 1
  br i1 %i.t, label %bb.b, label %._crit_edge.loopexit.i.i.i, !llvm.loop !195

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.f
  %.pre.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre66.i.i.i = sub i64 %i.e, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi67.i.i.i = phi i64 [ %.pre66.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.g, %bb.a ]
  %.sroa.038.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.u = ashr exact i64 %.pre-phi67.i.i.i, 3
  switch i64 %i.u, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_21CpuProfilesCollection13RemoveProfileEPS5_E3$_0ET_SH_SH_T0_.exit" [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge64.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %.val1.i25.i.i.i = load ptr, ptr %.sroa.038.0.lcssa.i.i.i, align 8
  %i.v = icmp eq ptr %.val1.i25.i.i.i, %1
  br i1 %i.v, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_21CpuProfilesCollection13RemoveProfileEPS5_E3$_0ET_SH_SH_T0_.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %bb.h, %._crit_edge.i.i.i
  %.sroa.038.1.i.i.i = phi ptr [ %i.w, %bb.h ], [ %.sroa.038.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.val1.i26.i.i.i = load ptr, ptr %.sroa.038.1.i.i.i, align 8
  %i.x = icmp eq ptr %.val1.i26.i.i.i, %1
  br i1 %i.x, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_21CpuProfilesCollection13RemoveProfileEPS5_E3$_0ET_SH_SH_T0_.exit", label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge64.i.i.i

._crit_edge._crit_edge64.i.i.i:                   ; preds = %bb.i, %._crit_edge.i.i.i
  %.sroa.038.2.i.i.i = phi ptr [ %i.y, %bb.i ], [ %.sroa.038.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.val1.i27.i.i.i = load ptr, ptr %.sroa.038.2.i.i.i, align 8
  %i.z = icmp eq ptr %.val1.i27.i.i.i, %1
  %spec.select.i.i.i = select i1 %i.z, ptr %.sroa.038.2.i.i.i, ptr %i.d
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_21CpuProfilesCollection13RemoveProfileEPS5_E3$_0ET_SH_SH_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_21CpuProfilesCollection13RemoveProfileEPS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 8
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_21CpuProfilesCollection13RemoveProfileEPS5_E3$_0ET_SH_SH_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_21CpuProfilesCollection13RemoveProfileEPS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit23": ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 16
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_21CpuProfilesCollection13RemoveProfileEPS5_E3$_0ET_SH_SH_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_21CpuProfilesCollection13RemoveProfileEPS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit25": ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 24
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_21CpuProfilesCollection13RemoveProfileEPS5_E3$_0ET_SH_SH_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_21CpuProfilesCollection13RemoveProfileEPS5_E3$_0ET_SH_SH_T0_.exit": ; preds = %bb.b, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_21CpuProfilesCollection13RemoveProfileEPS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_21CpuProfilesCollection13RemoveProfileEPS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit23", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_21CpuProfilesCollection13RemoveProfileEPS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit25", %._crit_edge.i.i.i, %bb.g, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge64.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.038.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge64.i.i.i ], [ %i.d, %._crit_edge.i.i.i ], [ %.sroa.038.0.lcssa.i.i.i, %bb.g ], [ %i.ac, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_21CpuProfilesCollection13RemoveProfileEPS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit25" ], [ %i.ab, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_21CpuProfilesCollection13RemoveProfileEPS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit23" ], [ %i.aa, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_21CpuProfilesCollection13RemoveProfileEPS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit" ], [ %.sroa.038.057.i.i.i, %bb.b ]
  %i.ad = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.ae = sub i64 %i.ad, %i.f
  %i.af = getelementptr inbounds i8, ptr %i.b, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, %i.d
  br i1 %i.ah, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_21CpuProfilesCollection13RemoveProfileEPS5_E3$_0ET_SH_SH_T0_.exit"
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.e, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3                 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %_ZNSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.aq, %_ZNSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.ak, %bb.j ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.ap, %_ZNSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.af, %bb.j ] ; 4 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.ao, %_ZNSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.ag, %bb.j ] ; 3 uses
  %i.am = load ptr, ptr %.0910.i.i.i.i.i.i.i, align 8
  store ptr null, ptr %.0910.i.i.i.i.i.i.i, align 8
  %i.an = load ptr, ptr %.0811.i.i.i.i.i.i.i, align 8 ; 2 uses
  store ptr %i.am, ptr %.0811.i.i.i.i.i.i.i, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call void @_ZNKSt14default_deleteIN2v88internal10CpuProfileEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %.0811.i.i.i.i.i.i.i, ptr noundef nonnull %i.an)
  br label %_ZNSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.aq = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.ar = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, !llvm.loop !180

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i: ; preds = %_ZNSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.c, align 8
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, %bb.j, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_21CpuProfilesCollection13RemoveProfileEPS5_E3$_0ET_SH_SH_T0_.exit"
  %i.as = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i ], [ %i.d, %bb.j ], [ %i.d, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_21CpuProfilesCollection13RemoveProfileEPS5_E3$_0ET_SH_SH_T0_.exit" ]
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 3 uses
  store ptr %i.at, ptr %i.c, align 8
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i
end_hunk_0
