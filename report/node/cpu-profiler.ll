inline.NumInlined: 1185
inline.NumDeleted: 792
begin_hunk_0_@_ZN2v88internal11CpuProfiler14StartProfilingEPKcNS_19CpuProfilingOptionsESt10unique_ptrINS_24DiscardedSamplesDelegateESt14default_deleteIS6_EE:bb.a
bb.n:                                             ; preds = %bb.m
  %i.bt = load ptr, ptr %0, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 9648 ; 4 uses
  %i.bv = load i64, ptr %i.bu, align 8            ; 5 uses
  %i.bw = add i64 %i.bv, 15
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load i64, ptr %i.bx, align 8
  %.fr105 = freeze i64 %i.by                      ; 2 uses
  %i.bz = lshr i64 %.fr105, 32                    ; 2 uses
  %i.ca = trunc nuw i64 %i.bz to i32
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph.split.us.a, label %.loopexit

.lr.ph.split.us.a:                                ; preds = %bb.n
  br i1 %.not37.not, label %.lr.ph.split.us.split.us.a, label %.lr.ph.split

.lr.ph.split.us.split.us.a:                       ; preds = %.lr.ph.split.us.a
  br i1 %.not39.not, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us.peel.next, label %.lr.ph.split.us.split

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us.peel.next: ; preds = %.lr.ph.split.us.split.us.a
  %invariant.op = add i64 %i.bv, 23               ; 5 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.bz, i64 1) ; 2 uses
  %xtraiter = and i64 %umax, 3                    ; 3 uses
  %i.cc = icmp ult i64 %.fr105, 17179869184
  br i1 %i.cc, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us.epil.preheader, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us.peel.next.new

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us.peel.next.new: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us.peel.next
  %unroll_iter = and i64 %umax, 2147483644
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us.peel.next.new
  %indvars.iv84 = phi i64 [ 0, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us.peel.next.new ], [ %indvars.iv.next85.3, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us ] ; 5 uses
  %niter = phi i64 [ 0, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us.peel.next.new ], [ %niter.next.3, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us ]
  %i.cd = shl nuw nsw i64 %indvars.iv84, 3
  %.reass = add i64 %i.cd, %invariant.op
  %i.ce = inttoptr i64 %.reass to ptr
  %i.cf = load atomic volatile i64, ptr %i.ce monotonic, align 8 ; 0 uses
  %indvars.iv.next85 = shl i64 %indvars.iv84, 3
  %10 = or disjoint i64 %indvars.iv.next85, 8
  %.reass.1.reass = add i64 %10, %invariant.op
  %i.cg = inttoptr i64 %.reass.1.reass to ptr
  %i.ch = load atomic volatile i64, ptr %i.cg monotonic, align 8 ; 0 uses
  %indvars.iv.next85.1 = shl i64 %indvars.iv84, 3
  %11 = or disjoint i64 %indvars.iv.next85.1, 16
  %.reass.2.reass = add i64 %11, %invariant.op
  %i.ci = inttoptr i64 %.reass.2.reass to ptr
  %i.cj = load atomic volatile i64, ptr %i.ci monotonic, align 8 ; 0 uses
  %indvars.iv.next85.2 = shl i64 %indvars.iv84, 3
  %12 = or disjoint i64 %indvars.iv.next85.2, 24
  %.reass.3.reass = add i64 %12, %invariant.op
  %i.ck = inttoptr i64 %.reass.3.reass to ptr
  %i.cl = load atomic volatile i64, ptr %i.ck monotonic, align 8 ; 0 uses
  %indvars.iv.next85.3 = add nuw nsw i64 %indvars.iv84, 4 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal11CpuProfiler14StartProfilingEPKcNS_19CpuProfilingOptionsESt10unique_ptrINS_24DiscardedSamplesDelegateESt14default_deleteIS6_EE:bb.a
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us, !llvm.loop !47

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.us.a, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us
  %i.cm = phi i64 [ %i.cy, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us ], [ %i.bv, %.lr.ph.split.us.split.us.a ] ; 2 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us ], [ 0, %.lr.ph.split.us.split.us.a ] ; 2 uses
  %i.cn = shl nsw i64 %indvars.iv80, 3
  %i.co = add nuw nsw i64 %i.cn, 23
  %i.cp = add i64 %i.cm, %i.co
end_hunk_1
begin_hunk_2_@_ZN2v88internal11CpuProfiler14StartProfilingEPKcNS_19CpuProfilingOptionsESt10unique_ptrINS_24DiscardedSamplesDelegateESt14default_deleteIS6_EE:bb.a
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = ashr i64 %i.db, 32
  %i.dd = icmp slt i64 %indvars.iv.next81, %i.dc
  br i1 %i.dd, label %.lr.ph.split.us.split, label %.loopexit, !llvm.loop !47

.lr.ph.split:                                     ; preds = %.lr.ph.split.us.a
  br i1 %.not39.not, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us67
end_hunk_2
begin_hunk_3_@_ZN2v88internal11CpuProfiler14StartProfilingEPKcNS_19CpuProfilingOptionsESt10unique_ptrINS_24DiscardedSamplesDelegateESt14default_deleteIS6_EE:bb.a
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = ashr i64 %i.dt, 32
  %i.dv = icmp slt i64 %indvars.iv.next77, %i.du
  br i1 %i.dv, label %.lr.ph.split.split.us, label %.loopexit, !llvm.loop !47

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit
  %i.dw = phi i64 [ %i.ei, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit ], [ %i.bv, %.lr.ph.split ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN2v88internal11CpuProfiler14StartProfilingEPKcNS_19CpuProfilingOptionsESt10unique_ptrINS_24DiscardedSamplesDelegateESt14default_deleteIS6_EE:bb.a
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = ashr i64 %i.el, 32
  %i.en = icmp slt i64 %indvars.iv.next, %i.em
  br i1 %i.en, label %.lr.ph.split.split, label %.loopexit, !llvm.loop !47

.loopexit.loopexit.unr-lcssa:                     ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us.epil.preheader

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us.epil.preheader: ; preds = %.loopexit.loopexit.unr-lcssa, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us.peel.next
  %indvars.iv84.epil.init = phi i64 [ 0, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us.peel.next ], [ %indvars.iv.next85.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod105 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod105)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us.epil

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us.epil: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us.epil, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us.epil.preheader
  %indvars.iv84.epil = phi i64 [ %indvars.iv84.epil.init, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us.epil.preheader ], [ %indvars.iv.next85.epil, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us.epil.preheader ], [ %epil.iter.next, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us.epil ]
  %i.eo = shl nuw nsw i64 %indvars.iv84.epil, 3
  %.reass.epil = add i64 %i.eo, %invariant.op
  %i.ep = inttoptr i64 %.reass.epil to ptr
  %i.eq = load atomic volatile i64, ptr %i.ep monotonic, align 8 ; 0 uses
  %indvars.iv.next85.epil = add nuw nsw i64 %indvars.iv84.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us.epil, !llvm.loop !48

.loopexit:                                        ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us67, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us, %.loopexit.loopexit.unr-lcssa, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.us.us.epil, %bb.n, %bb.m
  %i.er = load ptr, ptr %7, align 8
  %.not.i42 = icmp eq ptr %i.er, null
  br i1 %.not.i42, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.r
end_hunk_4
begin_hunk_5_@_ZN2v88internal11CpuProfiler14StartProfilingEPKcNS_19CpuProfilingOptionsESt10unique_ptrINS_24DiscardedSamplesDelegateESt14default_deleteIS6_EE:bb.a
  %i.fb = load ptr, ptr %i.ev, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef %i.ew, ptr noundef %i.ey, i64 noundef %i.fa) #21, !inline_history !50
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %.loopexit, %bb.r, %bb.s
end_hunk_5
begin_hunk_6_@_ZN2v88internal11CpuProfiler26StartProcessorIfNotStartedEv:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #23, !noalias !51 ; 2 uses
  tail call void @_ZN2v88internal10SymbolizerC1EPNS0_20InstructionStreamMapE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.i) #21, !noalias !51
  %i.k = load ptr, ptr %i.e, align 8              ; 2 uses
  store ptr %i.j, ptr %i.e, align 8
  %.not.i.i.i.i = icmp eq ptr %i.k, null
end_hunk_6
begin_hunk_7_@_ZN2v88internal20ProfilerCodeObserverD0Ev:bb.a
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal20ProfilerCodeObserverE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN2v88internal16WeakCodeRegistry5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #21, !inline_history !54
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
end_hunk_7
begin_hunk_8_@_ZN2v88internal20ProfilerCodeObserverD0Ev:bb.a
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #24, !inline_history !54
  br label %_ZN2v88internal20ProfilerCodeObserverD2Ev.exit

_ZN2v88internal20ProfilerCodeObserverD2Ev.exit:   ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN2v88internal20InstructionStreamMapD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.i) #21, !inline_history !54
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #24
  ret void
}
end_hunk_8
begin_hunk_9_@_ZNSt10_HashtableIPN2v88internal7IsolateESt4pairIKS3_PNS1_11CpuProfilerEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNSA_10_Hash_nodeIS8_Lb0EEEmSO_:bb.a
  store ptr %i.af, ptr %3, align 8
  store ptr %3, ptr %i.ag, align 8
  %i.ah = icmp eq ptr %i.ag, %1
  br i1 %i.ah, label %bb.i, label %_ZNSt10_HashtableIPN2v88internal7IsolateESt4pairIKS3_PNS1_11CpuProfilerEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEE.exit, !prof !55

bb.i:                                             ; preds = %_ZNKSt10_HashtableIPN2v88internal7IsolateESt4pairIKS3_PNS1_11CpuProfilerEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS5_m.exit.thread41, %_ZNKSt10_HashtableIPN2v88internal7IsolateESt4pairIKS3_PNS1_11CpuProfilerEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS5_m.exit
  %i.ai = load ptr, ptr %3, align 8               ; 2 uses
end_hunk_9
begin_hunk_10_@_ZNSt10_HashtableIPN2v88internal7IsolateESt4pairIKS3_PNS1_11CpuProfilerEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE
define linkonce_odr hidden void @_ZNSt10_HashtableIPN2v88internal7IsolateESt4pairIKS3_PNS1_11CpuProfilerEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !56

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
end_hunk_10
begin_hunk_11_@_ZNSt10_HashtableIPN2v88internal7IsolateESt4pairIKS3_PNS1_11CpuProfilerEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE:bb.a

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN2v88internal7IsolateEPNS4_11CpuProfilerEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !56

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
end_hunk_11
begin_hunk_12_@_ZNSt10_HashtableIPN2v88internal7IsolateESt4pairIKS3_PNS1_11CpuProfilerEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE:bb.a
  %.2 = phi i8 [ 1, %bb.g ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %.1 = phi i64 [ %.05271, %bb.g ], [ %.05271, %bb.o ], [ %i.m, %bb.n ], [ %i.m, %bb.m ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !57

._crit_edge:                                      ; preds = %bb.p
  %i.ad = trunc nuw i8 %.2 to i1
end_hunk_12
begin_hunk_13_@_ZN2v88internal21CpuProfilesCollectionD2Ev:bb.a
_ZSt8_DestroyISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !58

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.b, align 8
end_hunk_13
begin_hunk_14_@_ZN2v88internal21CpuProfilesCollectionD2Ev:bb.a
_ZSt8_DestroyISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EEEvPT_.exit.i.i.i5: ; preds = %bb.d, %.lr.ph.i.i.i2
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 8 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.s, %i.q
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i7, label %.lr.ph.i.i.i2, !llvm.loop !58

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i7: ; preds = %_ZSt8_DestroyISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EEEvPT_.exit.i.i.i5
  %.pr.i8 = load ptr, ptr %i.n, align 8
end_hunk_14
begin_hunk_15_@_ZNKSt14default_deleteIN2v88internal10CpuProfileEEclEPS2_:bb.a
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef 480) #24
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.m = icmp ult ptr %.06.i.i.i.i, %i.h
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN2v88internal10CpuProfile10SampleInfoESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i, !llvm.loop !59

_ZNSt11_Deque_baseIN2v88internal10CpuProfile10SampleInfoESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.c, align 8
end_hunk_15
begin_hunk_16_@_ZNKSt14default_deleteIN2v88internal10CpuProfileEEclEPS2_:bb.a
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.s) #21, !inline_history !60
  br label %_ZNSt10unique_ptrIN2v824DiscardedSamplesDelegateESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN2v824DiscardedSamplesDelegateESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN2v824DiscardedSamplesDelegateEEclEPS1_.exit.i.i, %_ZNSt5dequeIN2v88internal10CpuProfile10SampleInfoESaIS3_EED2Ev.exit.i
end_hunk_16
begin_hunk_17_@llvm.assume
!44 = distinct !{null}
!45 = distinct !{null, null}
!46 = !{ptr @_ZN2v88internal11CpuProfiler22AdjustSamplingIntervalEv}
!47 = distinct !{!47, !9}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = distinct !{null}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZSt11make_uniqueIN2v88internal10SymbolizerEJPNS1_20InstructionStreamMapEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!53 = distinct !{!53, !"_ZSt11make_uniqueIN2v88internal10SymbolizerEJPNS1_20InstructionStreamMapEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!54 = !{ptr @_ZN2v88internal20ProfilerCodeObserverD2Ev}
!55 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!56 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!57 = distinct !{!57, !9}
!58 = distinct !{!58, !9}
!59 = distinct !{!59, !9}
!60 = distinct !{null, null, null}
end_hunk_17
