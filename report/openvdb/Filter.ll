Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Filter?download=true
inline.NumInlined: 20337
inline.NumDeleted: 7408
loop-unroll.NumCompletelyUnrolled: 92
loop-unroll.NumRuntimeUnrolled: 140
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_ZN7openvdb5v13_04math12DenseStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE:bb.a
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.p, align 4
  store i32 %i.ip, ptr %i.r, align 4, !tbaa !206
  store ptr %i.io, ptr %i.x, align 8, !tbaa !418
  %i.iq = load ptr, ptr %i.in, align 8, !tbaa !206 ; 2 uses
  %i.ir = lshr i32 %.sroa.30.0166, 3
  %i.is = and i32 %i.ir, 15
  %i.it = or disjoint i32 %i.is, %i.bc            ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 32768
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.be
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !417
  %i.ix = and i32 %i.it, 63
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = shl nuw i64 1, %i.iy
  %i.ja = and i64 %i.iw, %i.iz
  %.not.i55 = icmp eq i64 %i.ja, 0
  %i.jb = zext nneg i32 %i.it to i64
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %i.jb ; 3 uses
  br i1 %.not.i55, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !206 ; 7 uses
  %i.je = and i32 %.sroa.30.0166, -8
  store i64 %.sroa.0.0.insert.insert.i.i59, ptr %i.l, align 8
  store i32 %i.je, ptr %i.n, align 8, !tbaa !206
  store ptr %i.jd, ptr %i.y, align 8, !tbaa !406
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jg = load atomic i32, ptr %i.jf seq_cst, align 4
  %.not.i.i.i61 = icmp eq i32 %i.jg, 0
  br i1 %.not.i.i.i61, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i62, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.jd)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i62

_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i62: ; preds = %bb.aj, %bb.ai
  %i.jh = load ptr, ptr %i.jd, align 8, !tbaa !206 ; 2 uses
  %i.ji = icmp eq ptr %i.jh, null
  br i1 %i.ji, label %bb.ak, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE4dataEv.exit.i63

bb.ak:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i62
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jd, i64 12 ; 4 uses
  %i.jk = atomicrmw xchg ptr %i.jj, i8 1 seq_cst, align 1
  %i.jl = trunc i8 %i.jk to i1
  br i1 %i.jl, label %.lr.ph.i.i.i.i.i72, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i69

.lr.ph.i.i.i.i.i72:                               ; preds = %bb.ak, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i74
  %.sroa.0.02.i.i.i.i.i73 = phi i32 [ %.sroa.0.1.i.i.i.i.i75, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i74 ], [ 1, %bb.ak ] ; 8 uses
  %i.jm = icmp slt i32 %.sroa.0.02.i.i.i.i.i73, 17
  br i1 %i.jm, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i72
  %i.jn = icmp sgt i32 %.sroa.0.02.i.i.i.i.i73, 0
  br i1 %i.jn, label %.lr.ph.i.i.i.i.i.i.i77.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i77.preheader:                 ; preds = %bb.al
  %xtraiter = and i32 %.sroa.0.02.i.i.i.i.i73, 7  ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i77.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i77.prol

.lr.ph.i.i.i.i.i.i.i77.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i77.preheader, %.lr.ph.i.i.i.i.i.i.i77.prol
  %.01.i.i.i.i.i.i.i78.prol = phi i32 [ %i.jo, %.lr.ph.i.i.i.i.i.i.i77.prol ], [ %.sroa.0.02.i.i.i.i.i73, %.lr.ph.i.i.i.i.i.i.i77.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i77.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i77.preheader ]
  %i.jo = add nsw i32 %.01.i.i.i.i.i.i.i78.prol, -1 ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i77.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i77.prol, !llvm.loop !3759

.lr.ph.i.i.i.i.i.i.i77.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i77.prol, %.lr.ph.i.i.i.i.i.i.i77.preheader
  %.01.i.i.i.i.i.i.i78.unr = phi i32 [ %.sroa.0.02.i.i.i.i.i73, %.lr.ph.i.i.i.i.i.i.i77.preheader ], [ %i.jo, %.lr.ph.i.i.i.i.i.i.i77.prol ]
  %i.jp = icmp ult i32 %.sroa.0.02.i.i.i.i.i73, 8
  br i1 %i.jp, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i76, label %.lr.ph.i.i.i.i.i.i.i77

.lr.ph.i.i.i.i.i.i.i77:                           ; preds = %.lr.ph.i.i.i.i.i.i.i77.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i77
  %.01.i.i.i.i.i.i.i78 = phi i32 [ %i.jq, %.lr.ph.i.i.i.i.i.i.i77 ], [ %.01.i.i.i.i.i.i.i78.unr, %.lr.ph.i.i.i.i.i.i.i77.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.jq = add nsw i32 %.01.i.i.i.i.i.i.i78, -8
  tail call void @llvm.x86.sse2.pause()
  %i.jr = icmp sgt i32 %.01.i.i.i.i.i.i.i78, 8
  br i1 %i.jr, label %.lr.ph.i.i.i.i.i.i.i77, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i76, !llvm.loop !5

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i76: ; preds = %.lr.ph.i.i.i.i.i.i.i77.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i77, %bb.al
  %i.js = shl i32 %.sroa.0.02.i.i.i.i.i73, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i74

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i72
  %i.jt = tail call noundef i32 @sched_yield() #19 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i74

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i74: ; preds = %bb.am, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i76
  %.sroa.0.1.i.i.i.i.i75 = phi i32 [ %i.js, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i76 ], [ %.sroa.0.02.i.i.i.i.i73, %bb.am ]
  %i.ju = atomicrmw xchg ptr %i.jj, i8 1 seq_cst, align 1
  %i.jv = trunc i8 %i.ju to i1
  br i1 %i.jv, label %.lr.ph.i.i.i.i.i72, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i69, !llvm.loop !6

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i69: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i74, %bb.ak
  %i.jw = load ptr, ptr %i.jd, align 8, !tbaa !206 ; 2 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %bb.an, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i70

bb.an:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i69
  %i.jy = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #28
          to label %bb.ao unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i71 ; 2 uses

bb.ao:                                            ; preds = %bb.an
  store ptr %i.jy, ptr %i.jd, align 8, !tbaa !206
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i70

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i71: ; preds = %bb.an
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i70: ; preds = %bb.ao, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i69
  %i.ka = phi ptr [ %i.jy, %bb.ao ], [ %i.jw, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i69 ]
  store atomic i8 0, ptr %i.jj release, align 4
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE4dataEv.exit.i63

_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE4dataEv.exit.i63: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i70, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i62
  %i.kb = phi ptr [ %i.ka, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i70 ], [ %i.jh, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i62 ]
  store ptr %i.kb, ptr %i.o, align 8, !tbaa !415
  %i.kc = load ptr, ptr %i.jc, align 8, !tbaa !206 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load atomic i32, ptr %i.kd seq_cst, align 4
  %.not.i.i.i.i.i.i.i64 = icmp eq i32 %i.ke, 0
  br i1 %.not.i.i.i.i.i.i.i64, label %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_.exit.i65, label %bb.ap

bb.ap:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE4dataEv.exit.i63
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.kc)
  br label %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_.exit.i65

_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_.exit.i65: ; preds = %bb.ap, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE4dataEv.exit.i63
  %i.kf = and i32 %.sroa.30.0166, 7
  %i.kg = or disjoint i32 %i.am, %i.kf
  %i.kh = load ptr, ptr %i.kc, align 8, !tbaa !206 ; 2 uses
  %.not.i.i.i.i.i.i66 = icmp eq ptr %i.kh, null
  %i.ki = zext nneg i32 %i.kg to i64
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.ki
  %.0.i.i.i.i.i.i67 = select i1 %.not.i.i.i.i.i.i66, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIfLj3EE2atEjE5sZero, ptr %i.kj
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

bb.aq:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.kk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit: ; preds = %bb.aq, %bb.ag, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, %bb.ah, %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_.exit.i65, %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_.exit.i, %bb.p, %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_.exit.i40, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.i, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i, %bb.o
  %.1.i.i = phi ptr [ %i.br, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i ], [ %i.cl, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.i ], [ %i.fb, %bb.p ], [ %i.em, %bb.o ], [ %.0.i.i.i.i.i.i42, %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_.exit.i40 ], [ %.0.i.i.i.i.i.i, %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_.exit.i ], [ %i.hx, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i ], [ %i.kk, %bb.aq ], [ %i.in, %bb.ag ], [ %.0.i.i.i.i.i.i67, %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_.exit.i65 ], [ %i.jc, %bb.ah ]
  %i.kl = load float, ptr %.1.i.i, align 4, !tbaa !217
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.km = load ptr, ptr %i.z, align 8, !tbaa !444
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv
  store float %i.kl, ptr %i.kn, align 4, !tbaa !217
  %i.ko = add i32 %.sroa.30.0166, 1
  %exitcond.not = icmp eq i32 %.sroa.30.0166, %i.j
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !3760

._crit_edge.loopexit:                             ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit
  %i.kp = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph176
  %.2.lcssa = phi i32 [ %.1173, %.lr.ph176 ], [ %i.kp, %._crit_edge.loopexit ] ; 2 uses
  %i.kq = and i64 %.sroa.080.1172, -4294967296
  %.sroa.080.4.insert.shift112 = add i64 %i.kq, 4294967296 ; 2 uses
  %.sroa.080.4.insert.mask113 = and i64 %.sroa.080.1172, 4294967295
  %.sroa.080.4.insert.insert114 = or disjoint i64 %.sroa.080.4.insert.shift112, %.sroa.080.4.insert.mask113 ; 2 uses
  %.sroa.080.4.extract.shift = lshr exact i64 %.sroa.080.4.insert.shift112, 32
  %.sroa.080.4.extract.trunc = trunc nuw i64 %.sroa.080.4.extract.shift to i32 ; 2 uses
  %.not9 = icmp slt i32 %i.i, %.sroa.080.4.extract.trunc
  br i1 %.not9, label %._crit_edge177, label %.lr.ph176, !llvm.loop !3761

._crit_edge177:                                   ; preds = %._crit_edge, %bb.b
  %.sroa.080.1.lcssa = phi i64 [ %.sroa.080.4.insert.insert, %bb.b ], [ %.sroa.080.4.insert.insert114, %._crit_edge ]
  %.1.lcssa = phi i32 [ %.0183, %bb.b ], [ %.2.lcssa, %._crit_edge ]
  %i.kr = add i64 %.sroa.080.1.lcssa, 1           ; 2 uses
  %.sroa.080.0.insert.ext = and i64 %i.kr, 4294967295
  %.sroa.080.0.extract.trunc = trunc i64 %i.kr to i32
  %.not = icmp slt i32 %i.h, %.sroa.080.0.extract.trunc
  br i1 %.not, label %._crit_edge186, label %bb.b, !llvm.loop !3762
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SS_SS_SV_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #6 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SS_RSV_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %.fr = freeze i64 %i.d                          ; 2 uses
  %i.e = ashr i64 %.fr, 2                         ; 4 uses
  %i.f = add nsw i64 %i.e, -1
  %i.g = lshr i64 %i.f, 1
  %i.h = icmp sgt i64 %i.e, 2
  %i.i = and i64 %.fr, 4
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  %i.k = add nsw i64 %i.e, -2                     ; 2 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = add nsw i64 %i.e, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.sroa.0.011.us = phi ptr [ %i.aj, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.o = load float, ptr %.sroa.0.011.us, align 4, !tbaa !217 ; 3 uses
  %i.p = load float, ptr %0, align 4, !tbaa !217  ; 2 uses
  %i.q = fcmp olt float %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store float %i.p, ptr %.sroa.0.011.us, align 4, !tbaa !217
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.034.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.r = shl i64 %.034.i.i.us, 1                  ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load float, ptr %i.t, align 4, !tbaa !217
  %i.x = load float, ptr %i.v, align 4, !tbaa !217
  %i.y = fcmp olt float %i.w, %i.x
  %spec.select.i.i.us = select i1 %i.y, i64 %i.u, i64 %i.s ; 6 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.aa = load float, ptr %i.z, align 4, !tbaa !217
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i.us
  store float %i.aa, ptr %i.ab, align 4, !tbaa !217
  %i.ac = icmp slt i64 %spec.select.i.i.us, %i.g
  br i1 %i.ac, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !144

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SS_SS_RSV_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ad = load float, ptr %i.m, align 4, !tbaa !217
  store float %i.ad, ptr %i.n, align 4, !tbaa !217
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.019.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %4, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.019.i.i.i.us = phi i64 [ %.0920.i.i78.i.us, %bb.c ], [ %.019.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.0920.in.i.i.i.us = add nsw i64 %.019.i.i.i.us, -1
  %.0920.i.i78.i.us = lshr i64 %.0920.in.i.i.i.us, 1 ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i78.i.us
  %i.af = load float, ptr %i.ae, align 4, !tbaa !217 ; 2 uses
  %i.ag = fcmp olt float %i.af, %i.o
  br i1 %i.ag, label %bb.c, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SS_SS_RSV_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.us
  store float %i.af, ptr %i.ah, align 4, !tbaa !217
  %.not9.i.us = icmp eq i64 %.0920.i.i78.i.us, 0
  br i1 %.not9.i.us, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SS_SS_RSV_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !145

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SS_SS_RSV_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.0.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.019.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.us
  store float %i.o, ptr %i.ai, align 4, !tbaa !217
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SS_SS_RSV_.exit.us, %.lr.ph.split.us
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.011.us, i64 4 ; 2 uses
  %i.ak = icmp ult ptr %i.aj, %2
  br i1 %i.ak, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !3763

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.al = icmp eq i64 %spec.select.i.i.us, %i.l
  %or.cond = select i1 %i.j, i1 %i.al, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4
  br i1 %i.j, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load float, ptr %0, align 4, !tbaa !217
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.an = icmp eq i64 %i.k, 0
  br i1 %i.an, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre31 = load float, ptr %0, align 4, !tbaa !217
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %.sroa.0.011.us12.us = phi ptr [ %i.au, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.ao = load float, ptr %.sroa.0.011.us12.us, align 4, !tbaa !217 ; 3 uses
  %i.ap = load float, ptr %0, align 4, !tbaa !217 ; 2 uses
  %i.aq = fcmp olt float %i.ao, %i.ap
  br i1 %i.aq, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store float %i.ap, ptr %.sroa.0.011.us12.us, align 4, !tbaa !217
  %i.ar = load float, ptr %i.am, align 4, !tbaa !217 ; 2 uses
  store float %i.ar, ptr %0, align 4, !tbaa !217
  %i.as = fcmp uge float %i.ar, %i.ao
  %spec.select = zext i1 %i.as to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select
  store float %i.ao, ptr %i.at, align 4, !tbaa !217
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.011.us12.us, i64 4 ; 2 uses
  %i.av = icmp ult ptr %i.au, %2
  br i1 %i.av, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !3763

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.f
  %i.aw = phi float [ %i.az, %bb.f ], [ %.pre31, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %.sroa.0.011.us12 = phi ptr [ %i.ba, %bb.f ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %i.ax = load float, ptr %.sroa.0.011.us12, align 4, !tbaa !217 ; 3 uses
  %i.ay = fcmp olt float %i.ax, %i.aw
  br i1 %i.ay, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  store float %i.aw, ptr %.sroa.0.011.us12, align 4, !tbaa !217
  store float %i.ax, ptr %0, align 4, !tbaa !217
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.az = phi float [ %i.ax, %._crit_edge.i.i.us13 ], [ %i.aw, %.lr.ph.split.split.us.split ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.011.us12, i64 4 ; 2 uses
  %i.bb = icmp ult ptr %i.ba, %2
  br i1 %i.bb, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !3763

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.bc = phi float [ %i.bf, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 3 uses
  %.sroa.0.011 = phi ptr [ %i.bg, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.bd = load float, ptr %.sroa.0.011, align 4, !tbaa !217 ; 3 uses
  %i.be = fcmp olt float %i.bd, %i.bc
  br i1 %i.be, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  store float %i.bc, ptr %.sroa.0.011, align 4, !tbaa !217
  store float %i.bd, ptr %0, align 4, !tbaa !217
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bf = phi float [ %i.bc, %.lr.ph.split.split ], [ %i.bd, %._crit_edge.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 4 ; 2 uses
  %i.bh = icmp ult ptr %i.bg, %2
  br i1 %i.bh, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !3763
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SS_RSV_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 2                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.ak, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.us
  %i.p = load float, ptr %i.o, align 4, !tbaa !217 ; 2 uses
  %i.q = icmp slt i64 %.09.us, %i.i
  br i1 %i.q, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.034.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.09.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.034.i.us, 1                    ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load float, ptr %i.t, align 4, !tbaa !217
  %i.x = load float, ptr %i.v, align 4, !tbaa !217
  %i.y = fcmp olt float %i.w, %i.x
  %spec.select.i.us = select i1 %i.y, i64 %i.u, i64 %i.s ; 6 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.aa = load float, ptr %i.z, align 4, !tbaa !217
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.us
  store float %i.aa, ptr %i.ab, align 4, !tbaa !217
  %i.ac = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ac, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !144

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ad = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.ad, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.af = load float, ptr %i.ae, align 4, !tbaa !217 ; 2 uses
  %i.ag = fcmp olt float %i.af, %i.p
  br i1 %i.ag, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store float %i.af, ptr %i.ah, align 4, !tbaa !217
  %i.ai = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.ai, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit.us, !llvm.loop !145

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.09.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store float %i.p, ptr %i.aj, align 4, !tbaa !217
  %.not.us = icmp eq i64 %.09.us, 0
  %i.ak = add nsw i64 %.09.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !3764

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit
  %.09 = phi i64 [ %i.bj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %.09
  %i.am = load float, ptr %i.al, align 4, !tbaa !217 ; 2 uses
  %i.an = icmp slt i64 %.09, %i.i
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.034.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.09, %.split ] ; 2 uses
  %i.ao = shl i64 %.034.i, 1                      ; 2 uses
  %i.ap = add i64 %i.ao, 2                        ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ap
  %i.ar = or disjoint i64 %i.ao, 1                ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ar
  %i.at = load float, ptr %i.aq, align 4, !tbaa !217
  %i.au = load float, ptr %i.as, align 4, !tbaa !217
  %i.av = fcmp olt float %i.at, %i.au
  %spec.select.i = select i1 %i.av, i64 %i.ar, i64 %i.ap ; 4 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !217
  %i.ay = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i
  store float %i.ax, ptr %i.ay, align 4, !tbaa !217
  %i.az = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !144

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.09, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ba = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bb = load float, ptr %i.m, align 4, !tbaa !217
  store float %i.bb, ptr %i.n, align 4, !tbaa !217
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bc = icmp sgt i64 %.1.i, %.09
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i
  %i.be = load float, ptr %i.bd, align 4, !tbaa !217 ; 2 uses
  %i.bf = fcmp olt float %i.be, %i.am
  br i1 %i.bf, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store float %i.be, ptr %i.bg, align 4, !tbaa !217
  %i.bh = icmp sgt i64 %.0920.i.i, %.09
  br i1 %i.bh, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit, !llvm.loop !145

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store float %i.am, ptr %i.bi, align 4, !tbaa !217
  %.not = icmp eq i64 %.09, 0
  %i.bj = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !3764

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeIfLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !488    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !228
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !230
  store i8 0, ptr %i.b, align 8, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.41, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #19 ; 0 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !231    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !206
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.l, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.k, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.n = call ptr @__cxa_begin_catch(ptr %.1) #19 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_04math12DenseStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE:bb.a
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.p, align 4
  store i32 %i.ip, ptr %i.r, align 4, !tbaa !206
  store ptr %i.io, ptr %i.x, align 8, !tbaa !653
  %i.iq = load ptr, ptr %i.in, align 8, !tbaa !206 ; 2 uses
  %i.ir = lshr i32 %.sroa.30.0166, 3
  %i.is = and i32 %i.ir, 15
  %i.it = or disjoint i32 %i.is, %i.bc            ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 32768
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.be
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !417
  %i.ix = and i32 %i.it, 63
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = shl nuw i64 1, %i.iy
  %i.ja = and i64 %i.iw, %i.iz
  %.not.i55 = icmp eq i64 %i.ja, 0
  %i.jb = zext nneg i32 %i.it to i64
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %i.jb ; 3 uses
  br i1 %.not.i55, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !206 ; 7 uses
  %i.je = and i32 %.sroa.30.0166, -8
  store i64 %.sroa.0.0.insert.insert.i.i59, ptr %i.l, align 8
  store i32 %i.je, ptr %i.n, align 8, !tbaa !206
  store ptr %i.jd, ptr %i.y, align 8, !tbaa !604
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jg = load atomic i32, ptr %i.jf seq_cst, align 4
  %.not.i.i.i61 = icmp eq i32 %i.jg, 0
  br i1 %.not.i.i.i61, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i62, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.jd)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i62

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i62: ; preds = %bb.aj, %bb.ai
  %i.jh = load ptr, ptr %i.jd, align 8, !tbaa !206 ; 2 uses
  %i.ji = icmp eq ptr %i.jh, null
  br i1 %i.ji, label %bb.ak, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i63

bb.ak:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i62
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jd, i64 12 ; 4 uses
  %i.jk = atomicrmw xchg ptr %i.jj, i8 1 seq_cst, align 1
  %i.jl = trunc i8 %i.jk to i1
  br i1 %i.jl, label %.lr.ph.i.i.i.i.i72, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i69

.lr.ph.i.i.i.i.i72:                               ; preds = %bb.ak, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i74
  %.sroa.0.02.i.i.i.i.i73 = phi i32 [ %.sroa.0.1.i.i.i.i.i75, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i74 ], [ 1, %bb.ak ] ; 8 uses
  %i.jm = icmp slt i32 %.sroa.0.02.i.i.i.i.i73, 17
  br i1 %i.jm, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i72
  %i.jn = icmp sgt i32 %.sroa.0.02.i.i.i.i.i73, 0
  br i1 %i.jn, label %.lr.ph.i.i.i.i.i.i.i77.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i77.preheader:                 ; preds = %bb.al
  %xtraiter = and i32 %.sroa.0.02.i.i.i.i.i73, 7  ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i77.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i77.prol

.lr.ph.i.i.i.i.i.i.i77.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i77.preheader, %.lr.ph.i.i.i.i.i.i.i77.prol
  %.01.i.i.i.i.i.i.i78.prol = phi i32 [ %i.jo, %.lr.ph.i.i.i.i.i.i.i77.prol ], [ %.sroa.0.02.i.i.i.i.i73, %.lr.ph.i.i.i.i.i.i.i77.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i77.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i77.preheader ]
  %i.jo = add nsw i32 %.01.i.i.i.i.i.i.i78.prol, -1 ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i77.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i77.prol, !llvm.loop !4300

.lr.ph.i.i.i.i.i.i.i77.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i77.prol, %.lr.ph.i.i.i.i.i.i.i77.preheader
  %.01.i.i.i.i.i.i.i78.unr = phi i32 [ %.sroa.0.02.i.i.i.i.i73, %.lr.ph.i.i.i.i.i.i.i77.preheader ], [ %i.jo, %.lr.ph.i.i.i.i.i.i.i77.prol ]
  %i.jp = icmp ult i32 %.sroa.0.02.i.i.i.i.i73, 8
  br i1 %i.jp, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i76, label %.lr.ph.i.i.i.i.i.i.i77

.lr.ph.i.i.i.i.i.i.i77:                           ; preds = %.lr.ph.i.i.i.i.i.i.i77.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i77
  %.01.i.i.i.i.i.i.i78 = phi i32 [ %i.jq, %.lr.ph.i.i.i.i.i.i.i77 ], [ %.01.i.i.i.i.i.i.i78.unr, %.lr.ph.i.i.i.i.i.i.i77.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.jq = add nsw i32 %.01.i.i.i.i.i.i.i78, -8
  tail call void @llvm.x86.sse2.pause()
  %i.jr = icmp sgt i32 %.01.i.i.i.i.i.i.i78, 8
  br i1 %i.jr, label %.lr.ph.i.i.i.i.i.i.i77, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i76, !llvm.loop !5

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i76: ; preds = %.lr.ph.i.i.i.i.i.i.i77.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i77, %bb.al
  %i.js = shl i32 %.sroa.0.02.i.i.i.i.i73, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i74

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i72
  %i.jt = tail call noundef i32 @sched_yield() #19 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i74

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i74: ; preds = %bb.am, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i76
  %.sroa.0.1.i.i.i.i.i75 = phi i32 [ %i.js, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i76 ], [ %.sroa.0.02.i.i.i.i.i73, %bb.am ]
  %i.ju = atomicrmw xchg ptr %i.jj, i8 1 seq_cst, align 1
  %i.jv = trunc i8 %i.ju to i1
  br i1 %i.jv, label %.lr.ph.i.i.i.i.i72, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i69, !llvm.loop !6

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i69: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i74, %bb.ak
  %i.jw = load ptr, ptr %i.jd, align 8, !tbaa !206 ; 2 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %bb.an, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i70

bb.an:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i69
  %i.jy = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #28
          to label %bb.ao unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i71 ; 2 uses

bb.ao:                                            ; preds = %bb.an
  store ptr %i.jy, ptr %i.jd, align 8, !tbaa !206
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i70

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i71: ; preds = %bb.an
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i70: ; preds = %bb.ao, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i69
  %i.ka = phi ptr [ %i.jy, %bb.ao ], [ %i.jw, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i69 ]
  store atomic i8 0, ptr %i.jj release, align 4
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i63

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i63: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i70, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i62
  %i.kb = phi ptr [ %i.ka, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i70 ], [ %i.jh, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i62 ]
  store ptr %i.kb, ptr %i.o, align 8, !tbaa !652
  %i.kc = load ptr, ptr %i.jc, align 8, !tbaa !206 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load atomic i32, ptr %i.kd seq_cst, align 4
  %.not.i.i.i.i.i.i.i64 = icmp eq i32 %i.ke, 0
  br i1 %.not.i.i.i.i.i.i.i64, label %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i65, label %bb.ap

bb.ap:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i63
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.kc)
  br label %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i65

_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i65: ; preds = %bb.ap, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i63
  %i.kf = and i32 %.sroa.30.0166, 7
  %i.kg = or disjoint i32 %i.am, %i.kf
  %i.kh = load ptr, ptr %i.kc, align 8, !tbaa !206 ; 2 uses
  %.not.i.i.i.i.i.i66 = icmp eq ptr %i.kh, null
  %i.ki = zext nneg i32 %i.kg to i64
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.ki
  %.0.i.i.i.i.i.i67 = select i1 %.not.i.i.i.i.i.i66, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIdLj3EE2atEjE5sZero, ptr %i.kj
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

bb.aq:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.kk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit: ; preds = %bb.aq, %bb.ag, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, %bb.ah, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i65, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i, %bb.p, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i40, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i, %bb.o
  %.1.i.i = phi ptr [ %i.br, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i ], [ %i.cl, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i ], [ %i.fb, %bb.p ], [ %i.em, %bb.o ], [ %.0.i.i.i.i.i.i42, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i40 ], [ %.0.i.i.i.i.i.i, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i ], [ %i.hx, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i ], [ %i.kk, %bb.aq ], [ %i.in, %bb.ag ], [ %.0.i.i.i.i.i.i67, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i65 ], [ %i.jc, %bb.ah ]
  %i.kl = load double, ptr %.1.i.i, align 8, !tbaa !432
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.km = load ptr, ptr %i.z, align 8, !tbaa !614
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %indvars.iv
  store double %i.kl, ptr %i.kn, align 8, !tbaa !432
  %i.ko = add i32 %.sroa.30.0166, 1
  %exitcond.not = icmp eq i32 %.sroa.30.0166, %i.j
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !4301

._crit_edge.loopexit:                             ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit
  %i.kp = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph176
  %.2.lcssa = phi i32 [ %.1173, %.lr.ph176 ], [ %i.kp, %._crit_edge.loopexit ] ; 2 uses
  %i.kq = and i64 %.sroa.080.1172, -4294967296
  %.sroa.080.4.insert.shift112 = add i64 %i.kq, 4294967296 ; 2 uses
  %.sroa.080.4.insert.mask113 = and i64 %.sroa.080.1172, 4294967295
  %.sroa.080.4.insert.insert114 = or disjoint i64 %.sroa.080.4.insert.shift112, %.sroa.080.4.insert.mask113 ; 2 uses
  %.sroa.080.4.extract.shift = lshr exact i64 %.sroa.080.4.insert.shift112, 32
  %.sroa.080.4.extract.trunc = trunc nuw i64 %.sroa.080.4.extract.shift to i32 ; 2 uses
  %.not9 = icmp slt i32 %i.i, %.sroa.080.4.extract.trunc
  br i1 %.not9, label %._crit_edge177, label %.lr.ph176, !llvm.loop !4302

._crit_edge177:                                   ; preds = %._crit_edge, %bb.b
  %.sroa.080.1.lcssa = phi i64 [ %.sroa.080.4.insert.insert, %bb.b ], [ %.sroa.080.4.insert.insert114, %._crit_edge ]
  %.1.lcssa = phi i32 [ %.0183, %bb.b ], [ %.2.lcssa, %._crit_edge ]
  %i.kr = add i64 %.sroa.080.1.lcssa, 1           ; 2 uses
  %.sroa.080.0.insert.ext = and i64 %i.kr, 4294967295
  %.sroa.080.0.extract.trunc = trunc i64 %i.kr to i32
  %.not = icmp slt i32 %i.h, %.sroa.080.0.extract.trunc
  br i1 %.not, label %._crit_edge186, label %bb.b, !llvm.loop !4303
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SS_SS_SV_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #6 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1311", align 1
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SS_RSV_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %.fr = freeze i64 %i.d                          ; 2 uses
  %i.e = ashr i64 %.fr, 3                         ; 4 uses
  %i.f = add nsw i64 %i.e, -1
  %i.g = lshr i64 %i.f, 1
  %i.h = icmp sgt i64 %i.e, 2
  %i.i = and i64 %.fr, 8
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  %i.k = add nsw i64 %i.e, -2                     ; 2 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = add nsw i64 %i.e, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.sroa.0.011.us = phi ptr [ %i.aj, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.o = load double, ptr %.sroa.0.011.us, align 8, !tbaa !432 ; 3 uses
  %i.p = load double, ptr %0, align 8, !tbaa !432 ; 2 uses
  %i.q = fcmp olt double %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store double %i.p, ptr %.sroa.0.011.us, align 8, !tbaa !432
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.034.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.r = shl i64 %.034.i.i.us, 1                  ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = load double, ptr %i.t, align 8, !tbaa !432
  %i.x = load double, ptr %i.v, align 8, !tbaa !432
  %i.y = fcmp olt double %i.w, %i.x
  %spec.select.i.i.us = select i1 %i.y, i64 %i.u, i64 %i.s ; 6 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.aa = load double, ptr %i.z, align 8, !tbaa !432
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.034.i.i.us
  store double %i.aa, ptr %i.ab, align 8, !tbaa !432
  %i.ac = icmp slt i64 %spec.select.i.i.us, %i.g
  br i1 %i.ac, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !175

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SS_SS_RSV_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ad = load double, ptr %i.m, align 8, !tbaa !432
  store double %i.ad, ptr %i.n, align 8, !tbaa !432
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.019.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %4, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.019.i.i.i.us = phi i64 [ %.0920.i.i78.i.us, %bb.c ], [ %.019.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.0920.in.i.i.i.us = add nsw i64 %.019.i.i.i.us, -1
  %.0920.i.i78.i.us = lshr i64 %.0920.in.i.i.i.us, 1 ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i78.i.us
  %i.af = load double, ptr %i.ae, align 8, !tbaa !432 ; 2 uses
  %i.ag = fcmp olt double %i.af, %i.o
  br i1 %i.ag, label %bb.c, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SS_SS_RSV_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.us
  store double %i.af, ptr %i.ah, align 8, !tbaa !432
  %.not9.i.us = icmp eq i64 %.0920.i.i78.i.us, 0
  br i1 %.not9.i.us, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SS_SS_RSV_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !176

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SS_SS_RSV_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.0.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.019.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.us
  store double %i.o, ptr %i.ai, align 8, !tbaa !432
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SS_SS_RSV_.exit.us, %.lr.ph.split.us
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.011.us, i64 8 ; 2 uses
  %i.ak = icmp ult ptr %i.aj, %2
  br i1 %i.ak, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !4304

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.al = icmp eq i64 %spec.select.i.i.us, %i.l
  %or.cond = select i1 %i.j, i1 %i.al, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.j, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load double, ptr %0, align 8, !tbaa !432
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.an = icmp eq i64 %i.k, 0
  br i1 %i.an, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre31 = load double, ptr %0, align 8, !tbaa !432
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %.sroa.0.011.us12.us = phi ptr [ %i.au, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.ao = load double, ptr %.sroa.0.011.us12.us, align 8, !tbaa !432 ; 3 uses
  %i.ap = load double, ptr %0, align 8, !tbaa !432 ; 2 uses
  %i.aq = fcmp olt double %i.ao, %i.ap
  br i1 %i.aq, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store double %i.ap, ptr %.sroa.0.011.us12.us, align 8, !tbaa !432
  %i.ar = load double, ptr %i.am, align 8, !tbaa !432 ; 2 uses
  store double %i.ar, ptr %0, align 8, !tbaa !432
  %i.as = fcmp uge double %i.ar, %i.ao
  %spec.select = zext i1 %i.as to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select
  store double %i.ao, ptr %i.at, align 8, !tbaa !432
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.011.us12.us, i64 8 ; 2 uses
  %i.av = icmp ult ptr %i.au, %2
  br i1 %i.av, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !4304

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.f
  %i.aw = phi double [ %i.az, %bb.f ], [ %.pre31, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %.sroa.0.011.us12 = phi ptr [ %i.ba, %bb.f ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %i.ax = load double, ptr %.sroa.0.011.us12, align 8, !tbaa !432 ; 3 uses
  %i.ay = fcmp olt double %i.ax, %i.aw
  br i1 %i.ay, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  store double %i.aw, ptr %.sroa.0.011.us12, align 8, !tbaa !432
  store double %i.ax, ptr %0, align 8, !tbaa !432
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.az = phi double [ %i.ax, %._crit_edge.i.i.us13 ], [ %i.aw, %.lr.ph.split.split.us.split ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.011.us12, i64 8 ; 2 uses
  %i.bb = icmp ult ptr %i.ba, %2
  br i1 %i.bb, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !4304

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.bc = phi double [ %i.bf, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 3 uses
  %.sroa.0.011 = phi ptr [ %i.bg, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.bd = load double, ptr %.sroa.0.011, align 8, !tbaa !432 ; 3 uses
  %i.be = fcmp olt double %i.bd, %i.bc
  br i1 %i.be, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  store double %i.bc, ptr %.sroa.0.011, align 8, !tbaa !432
  store double %i.bd, ptr %0, align 8, !tbaa !432
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bf = phi double [ %i.bc, %.lr.ph.split.split ], [ %i.bd, %._crit_edge.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 8 ; 2 uses
  %i.bh = icmp ult ptr %i.bg, %2
  br i1 %i.bh, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !4304
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SS_RSV_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 3                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.ak, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.us
  %i.p = load double, ptr %i.o, align 8, !tbaa !432 ; 2 uses
  %i.q = icmp slt i64 %.09.us, %i.i
  br i1 %i.q, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.034.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.09.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.034.i.us, 1                    ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = load double, ptr %i.t, align 8, !tbaa !432
  %i.x = load double, ptr %i.v, align 8, !tbaa !432
  %i.y = fcmp olt double %i.w, %i.x
  %spec.select.i.us = select i1 %i.y, i64 %i.u, i64 %i.s ; 6 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.aa = load double, ptr %i.z, align 8, !tbaa !432
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.034.i.us
  store double %i.aa, ptr %i.ab, align 8, !tbaa !432
  %i.ac = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ac, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !175

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ad = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.ad, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.us
  %i.af = load double, ptr %i.ae, align 8, !tbaa !432 ; 2 uses
  %i.ag = fcmp olt double %i.af, %i.p
  br i1 %i.ag, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.us
  store double %i.af, ptr %i.ah, align 8, !tbaa !432
  %i.ai = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.ai, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit.us, !llvm.loop !176

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.09.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store double %i.p, ptr %i.aj, align 8, !tbaa !432
  %.not.us = icmp eq i64 %.09.us, 0
  %i.ak = add nsw i64 %.09.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !4305

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit
  %.09 = phi i64 [ %i.bj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %0, i64 %.09
  %i.am = load double, ptr %i.al, align 8, !tbaa !432 ; 2 uses
  %i.an = icmp slt i64 %.09, %i.i
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.034.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.09, %.split ] ; 2 uses
  %i.ao = shl i64 %.034.i, 1                      ; 2 uses
  %i.ap = add i64 %i.ao, 2                        ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ap
  %i.ar = or disjoint i64 %i.ao, 1                ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ar
  %i.at = load double, ptr %i.aq, align 8, !tbaa !432
  %i.au = load double, ptr %i.as, align 8, !tbaa !432
  %i.av = fcmp olt double %i.at, %i.au
  %spec.select.i = select i1 %i.av, i64 %i.ar, i64 %i.ap ; 4 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !432
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %.034.i
  store double %i.ax, ptr %i.ay, align 8, !tbaa !432
  %i.az = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !175

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.09, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ba = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bb = load double, ptr %i.m, align 8, !tbaa !432
  store double %i.bb, ptr %i.n, align 8, !tbaa !432
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bc = icmp sgt i64 %.1.i, %.09
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i
  %i.be = load double, ptr %i.bd, align 8, !tbaa !432 ; 2 uses
  %i.bf = fcmp olt double %i.be, %i.am
  br i1 %i.bf, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i
  store double %i.be, ptr %i.bg, align 8, !tbaa !432
  %i.bh = icmp sgt i64 %.0920.i.i, %.09
  br i1 %i.bh, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit, !llvm.loop !176

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  store double %i.am, ptr %i.bi, align 8, !tbaa !432
  %.not = icmp eq i64 %.09, 0
  %i.bj = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !4305

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_comp_iterIZNK7openvdb5v13_04math11BaseStencilINSB_12DenseStencilINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESP_Lb1EE6medianEvEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeIdLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !661    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !228
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !230
  store i8 0, ptr %i.b, align 8, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.41, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #19 ; 0 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !231    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !206
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.l, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.k, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.n = call ptr @__cxa_begin_catch(ptr %.1) #19 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k
end_hunk_1
