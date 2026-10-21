Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/points?download=true
inline.NumInlined: 19258
inline.NumDeleted: 6035
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 416
loop-unroll.NumUnrolled: 522
begin_hunk_0_@_ZN7openvdb5v13_06points19TypedAttributeArrayINS0_4math4QuatIfEENS1_9NullCodecEE8collapseEv:bb.a
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i: ; preds = %bb.d, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %i.m, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i, %bb.d ]
  %i.o = atomicrmw xchg ptr %i.d, i8 1 seq_cst, align 1
  %i.p = trunc i8 %i.o to i1
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i, !llvm.loop !4

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i, %bb.b
  invoke void @_ZN7openvdb5v13_06points19TypedAttributeArrayINS0_4math4QuatIfEENS1_9NullCodecEE10deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.e unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit5.i

bb.e:                                             ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i
  store i8 1, ptr %i.a, align 8, !tbaa !225
  %i.q = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #30
          to label %.noexc.i unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit5.i

.noexc.i:                                         ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !587  ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !587
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4QuatIfEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit.sink.split.i.i

_ZNSt10unique_ptrIA_N7openvdb5v13_04math4QuatIfEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit.sink.split.i.i: ; preds = %.noexc.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #29
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4QuatIfEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit.sink.split.i.i, %.noexc.i
  store atomic i8 0, ptr %i.d release, align 1
  br label %_ZN7openvdb5v13_06points19TypedAttributeArrayINS0_4math4QuatIfEENS1_9NullCodecEE8collapseERKS5_.exit

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit5.i: ; preds = %bb.e, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.d release, align 1
  resume { ptr, i32 } %i.t

_ZN7openvdb5v13_06points19TypedAttributeArrayINS0_4math4QuatIfEENS1_9NullCodecEE8collapseERKS5_.exit: ; preds = %bb.a, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !587
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_06points19TypedAttributeArrayINS0_4math4QuatIfEENS1_9NullCodecEE7compactEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !225, !range !226, !noundef !227
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN7openvdb5v13_04math14isExactlyEqualINS1_4QuatIfEES4_EEbRKT_RKT0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { <2 x float>, <2 x float> } @_ZNK7openvdb5v13_06points19TypedAttributeArrayINS0_4math4QuatIfEENS1_9NullCodecEE3getEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 0) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.h = load i8, ptr %i.e, align 2, !tbaa !224
  %i.i = and i8 %i.h, 8
  %.not.i12 = icmp eq i8 %i.i, 0
  %i.j = load i32, ptr %i.f, align 8
  %i.k = load i32, ptr %i.g, align 4
  %i.l = select i1 %.not.i12, i32 1, i32 %i.j
  %i.m = mul i32 %i.l, %i.k
  %.not.not13 = icmp ugt i32 %i.m, 1
  br i1 %.not.not13, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.n = extractvalue { <2 x float>, <2 x float> } %i.d, 1
  %i.o = extractvalue { <2 x float>, <2 x float> } %i.d, 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> %i.n, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.q = add nuw i32 %.0514, 1                    ; 2 uses
  %i.r = load i8, ptr %i.e, align 2, !tbaa !224
  %i.s = and i8 %i.r, 8
  %.not.i = icmp eq i8 %i.s, 0
  %i.t = load i32, ptr %i.f, align 8
  %i.u = load i32, ptr %i.g, align 4
  %i.v = select i1 %.not.i, i32 1, i32 %i.t
  %i.w = mul i32 %i.v, %i.u
  %.not.not = icmp ult i32 %i.q, %i.w
  br i1 %.not.not, label %bb.d, label %.critedge, !llvm.loop !2343

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.0514 = phi i32 [ 1, %.lr.ph ], [ %i.q, %bb.c ] ; 2 uses
  %i.x = tail call { <2 x float>, <2 x float> } @_ZNK7openvdb5v13_06points19TypedAttributeArrayINS0_4math4QuatIfEENS1_9NullCodecEE3getEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %.0514) ; 2 uses
  %i.y = extractvalue { <2 x float>, <2 x float> } %i.x, 0
  %i.z = extractvalue { <2 x float>, <2 x float> } %i.x, 1
  %i.aa = shufflevector <2 x float> %i.y, <2 x float> %i.z, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ab = fcmp oeq <4 x float> %i.aa, %i.p
  %i.ac = freeze <4 x i1> %i.ab
  %i.ad = bitcast <4 x i1> %i.ac to i4
  %i.ae = icmp eq i4 %i.ad, -1
  br i1 %i.ae, label %bb.c, label %_ZN7openvdb5v13_04math14isExactlyEqualINS1_4QuatIfEES4_EEbRKT_RKT0_.exit.thread

.critedge:                                        ; preds = %bb.c, %bb.b
  %i.af = tail call { <2 x float>, <2 x float> } @_ZNK7openvdb5v13_06points19TypedAttributeArrayINS0_4math4QuatIfEENS1_9NullCodecEE3getEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 0) ; 2 uses
  %i.ag = extractvalue { <2 x float>, <2 x float> } %i.af, 0
  %i.ah = extractvalue { <2 x float>, <2 x float> } %i.af, 1
  %i.ai = load i8, ptr %i.a, align 8, !tbaa !225, !range !226, !noundef !227
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZN7openvdb5v13_06points19TypedAttributeArrayINS0_4math4QuatIfEENS1_9NullCodecEE8collapseERKS5_.exit, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 4 uses
  %i.al = atomicrmw xchg ptr %i.ak, i8 1 seq_cst, align 1
  %i.am = trunc i8 %i.al to i1
  br i1 %i.am, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i
  %.sroa.0.02.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i ], [ 1, %bb.e ] ; 8 uses
  %i.an = icmp slt i32 %.sroa.0.02.i.i.i.i, 17
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = icmp sgt i32 %.sroa.0.02.i.i.i.i, 0
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.f
  %xtraiter = and i32 %.sroa.0.02.i.i.i.i, 7      ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.01.i.i.i.i.i.i.prol = phi i32 [ %i.ap, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.02.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.ap = add nsw i32 %.01.i.i.i.i.i.i.prol, -1   ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !2344

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.aq = icmp ult i32 %.sroa.0.02.i.i.i.i, 8
  br i1 %i.aq, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.01.i.i.i.i.i.i = phi i32 [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.01.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.ar = add nsw i32 %.01.i.i.i.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.as = icmp sgt i32 %.01.i.i.i.i.i.i, 8
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i, !llvm.loop !3

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.f
  %i.at = shl i32 %.sroa.0.02.i.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.au = tail call noundef i32 @sched_yield() #19 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i: ; preds = %bb.g, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %i.at, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i, %bb.g ]
  %i.av = atomicrmw xchg ptr %i.ak, i8 1 seq_cst, align 1
  %i.aw = trunc i8 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i, !llvm.loop !4

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i, %bb.e
  invoke void @_ZN7openvdb5v13_06points19TypedAttributeArrayINS0_4math4QuatIfEENS1_9NullCodecEE10deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.h unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit5.i

bb.h:                                             ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i
  store i8 1, ptr %i.a, align 8, !tbaa !225
  %i.ax = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #30
          to label %.noexc.i unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit5.i

.noexc.i:                                         ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !587 ; 2 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !587
  %.not.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4QuatIfEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit.sink.split.i.i

_ZNSt10unique_ptrIA_N7openvdb5v13_04math4QuatIfEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit.sink.split.i.i: ; preds = %.noexc.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.az) #29
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4QuatIfEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit.sink.split.i.i, %.noexc.i
  store atomic i8 0, ptr %i.ak release, align 1
  br label %_ZN7openvdb5v13_06points19TypedAttributeArrayINS0_4math4QuatIfEENS1_9NullCodecEE8collapseERKS5_.exit

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit5.i: ; preds = %bb.h, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.ak release, align 1
  resume { ptr, i32 } %i.ba

_ZN7openvdb5v13_06points19TypedAttributeArrayINS0_4math4QuatIfEENS1_9NullCodecEE8collapseERKS5_.exit: ; preds = %.critedge, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !587 ; 2 uses
  store <2 x float> %i.ag, ptr %i.bc, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store <2 x float> %i.ah, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !160
  br label %_ZN7openvdb5v13_04math14isExactlyEqualINS1_4QuatIfEES4_EEbRKT_RKT0_.exit.thread

_ZN7openvdb5v13_04math14isExactlyEqualINS1_4QuatIfEES4_EEbRKT_RKT0_.exit.thread: ; preds = %bb.d, %_ZN7openvdb5v13_06points19TypedAttributeArrayINS0_4math4QuatIfEENS1_9NullCodecEE8collapseERKS5_.exit, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ true, %_ZN7openvdb5v13_06points19TypedAttributeArrayINS0_4math4QuatIfEENS1_9NullCodecEE8collapseERKS5_.exit ], [ false, %bb.d ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_06points19TypedAttributeArrayINS0_4math4QuatIfEENS1_9NullCodecEE4readERSi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN7openvdb5v13_06points19TypedAttributeArrayINS0_4math4QuatIfEENS1_9NullCodecEE12readMetadataERSi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  tail call void @_ZN7openvdb5v13_06points19TypedAttributeArrayINS0_4math4QuatIfEENS1_9NullCodecEE11readBuffersERSi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_06points19TypedAttributeArrayINS0_4math4QuatIfEENS1_9NullCodecEE5writeERSob(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNK7openvdb5v13_06points19TypedAttributeArrayINS0_4math4QuatIfEENS1_9NullCodecEE13writeMetadataERSobb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, i1 noundef zeroext false)
  tail call void @_ZNK7openvdb5v13_06points19TypedAttributeArrayINS0_4math4QuatIfEENS1_9NullCodecEE12writeBuffersERSob(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_06points19TypedAttributeArrayINS0_4math4QuatIfEENS1_9NullCodecEE5writeERSo(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNK7openvdb5v13_06points19TypedAttributeArrayINS0_4math4QuatIfEENS1_9NullCodecEE13writeMetadataERSobb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext false, i1 noundef zeroext false)
  tail call void @_ZNK7openvdb5v13_06points19TypedAttributeArrayINS0_4math4QuatIfEENS1_9NullCodecEE12writeBuffersERSob(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_06points19TypedAttributeArrayINS0_4math4QuatIfEENS1_9NullCodecEE12readMetadataERSi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !169
  %i.f = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 8) ; 0 uses
  %i.g = load i64, ptr %i.a, align 8, !tbaa !169
  %i.h = add i64 %i.g, -6
  store i64 %i.h, ptr %i.a, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i8 0, ptr %i.b, align 1, !tbaa !160
  %i.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  %i.j = load i8, ptr %i.b, align 1, !tbaa !160
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 4 uses
  store i8 %i.j, ptr %i.k, align 2, !tbaa !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i8 0, ptr %i.c, align 1, !tbaa !160
  %i.l = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !133
  %i.m = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.d, i64 noundef 4) ; 0 uses
  %i.n = load i32, ptr %i.d, align 4, !tbaa !133
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.n, ptr %i.o, align 8, !tbaa !595
  %i.p = load i8, ptr %i.k, align 2, !tbaa !224
  %i.q = icmp ugt i8 %i.p, 31
  br i1 %i.q, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str, i64 noundef 9) ; 0 uses
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.48, i64 noundef 44) ; 0 uses
  %i.t = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !135
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !153  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !159
  %.not.i1.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 67
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !160
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.y)
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !135
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call noundef signext i8 %i.af(ptr noundef nonnull align 8 dereferenceable(570) %i.y, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i8 [ %i.ac, %bb.d ], [ %i.ag, %bb.e ]
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.a
  %i.aj = load i8, ptr %i.c, align 1, !tbaa !160  ; 4 uses
  %i.ak = icmp ugt i8 %i.aj, 15
  br i1 %i.ak, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.al, ptr %2, align 8, !tbaa !165
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.am, align 8, !tbaa !167
  store i8 0, ptr %i.al, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.49, i64 noundef 58)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ao = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4) #19 ; 0 uses
  %i.ap = load ptr, ptr %4, align 8, !tbaa !168   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !160
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.o

bb.j:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.l ], [ %i.av, %bb.k ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.au, %bb.j ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ax = call ptr @__cxa_begin_catch(ptr %.1) #19 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = call ptr @__cxa_allocate_exception(i64 40) #19 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull @.str.50, ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_07IoErrorE, i64 16), ptr %i.ay, align 8, !tbaa !135
  invoke void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTIN7openvdb5v13_07IoErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #28
          to label %bb.t unwind label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %2, align 8, !tbaa !168   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.al
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.p
  %i.bc = load i64, ptr %i.al, align 8, !tbaa !160
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
end_hunk_0
