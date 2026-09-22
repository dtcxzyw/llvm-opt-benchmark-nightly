Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetMorph?download=true
inline.NumInlined: 30422
inline.NumDeleted: 8287
loop-unroll.NumCompletelyUnrolled: 293
loop-unroll.NumRuntimeUnrolled: 597
loop-unroll.NumUnrolled: 900
begin_hunk_0_@_ZN7openvdb5v13_05tools16LevelSetMorphingINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE5MorphINS0_4math10UnitaryMapELNSJ_20BiasedGradientSchemeE0ELNSJ_25TemporalIntegrationSchemeE0EE5eulerILi0ELi1EEEvRKNS4_11LeafManagerISD_E9LeafRangeEdjjj:bb.a
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !1189
  br label %_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit48

bb.ac:                                            ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit47
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !1184
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !1162
  %i.el = mul i64 %i.ek, %.sroa.9.082
  %i.em = getelementptr [16 x i8], ptr %i.ei, i64 %i.el
  %i.en = getelementptr [16 x i8], ptr %i.em, i64 %i.af
  %i.eo = getelementptr i8, ptr %i.en, i64 -16
  br label %_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit48

_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit48: ; preds = %bb.ac, %bb.ab
  %i.ep = phi ptr [ %i.eg, %bb.ab ], [ %i.eo, %bb.ac ] ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load atomic i32, ptr %i.eq seq_cst, align 4
  %.not.i.i49 = icmp eq i32 %i.er, 0
  br i1 %.not.i.i49, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i50, label %bb.ad

bb.ad:                                            ; preds = %_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit48
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.ep)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i50 unwind label %bb.al

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i50: ; preds = %bb.ad, %_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit48
  %i.es = load ptr, ptr %i.ep, align 8, !tbaa !219 ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i50
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 12 ; 4 uses
  %i.ev = atomicrmw xchg ptr %i.eu, i8 1 seq_cst, align 1
  %i.ew = trunc i8 %i.ev to i1
  br i1 %i.ew, label %.lr.ph.i.i.i.i54, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i51

.lr.ph.i.i.i.i54:                                 ; preds = %bb.ae, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i56
  %.sroa.0.02.i.i.i.i55 = phi i32 [ %.sroa.0.1.i.i.i.i57, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i56 ], [ 1, %bb.ae ] ; 8 uses
  %i.ex = icmp slt i32 %.sroa.0.02.i.i.i.i55, 17
  br i1 %i.ex, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i.i.i.i54
  %i.ey = icmp sgt i32 %.sroa.0.02.i.i.i.i55, 0
  br i1 %i.ey, label %.lr.ph.i.i.i.i.i.i59.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i58

.lr.ph.i.i.i.i.i.i59.preheader:                   ; preds = %bb.af
  %xtraiter124 = and i32 %.sroa.0.02.i.i.i.i55, 7 ; 2 uses
  %lcmp.mod125.not = icmp eq i32 %xtraiter124, 0
  br i1 %lcmp.mod125.not, label %.lr.ph.i.i.i.i.i.i59.prol.loopexit, label %.lr.ph.i.i.i.i.i.i59.prol

.lr.ph.i.i.i.i.i.i59.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i59.preheader, %.lr.ph.i.i.i.i.i.i59.prol
  %.01.i.i.i.i.i.i60.prol = phi i32 [ %i.ez, %.lr.ph.i.i.i.i.i.i59.prol ], [ %.sroa.0.02.i.i.i.i55, %.lr.ph.i.i.i.i.i.i59.preheader ]
  %prol.iter126 = phi i32 [ %prol.iter126.next, %.lr.ph.i.i.i.i.i.i59.prol ], [ 0, %.lr.ph.i.i.i.i.i.i59.preheader ]
  %i.ez = add nsw i32 %.01.i.i.i.i.i.i60.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter126.next = add i32 %prol.iter126, 1   ; 2 uses
  %prol.iter126.cmp.not = icmp eq i32 %prol.iter126.next, %xtraiter124
  br i1 %prol.iter126.cmp.not, label %.lr.ph.i.i.i.i.i.i59.prol.loopexit, label %.lr.ph.i.i.i.i.i.i59.prol, !llvm.loop !4913

.lr.ph.i.i.i.i.i.i59.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i59.prol, %.lr.ph.i.i.i.i.i.i59.preheader
  %.01.i.i.i.i.i.i60.unr = phi i32 [ %.sroa.0.02.i.i.i.i55, %.lr.ph.i.i.i.i.i.i59.preheader ], [ %i.ez, %.lr.ph.i.i.i.i.i.i59.prol ]
  %i.fa = icmp ult i32 %.sroa.0.02.i.i.i.i55, 8
  br i1 %i.fa, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i58, label %.lr.ph.i.i.i.i.i.i59

.lr.ph.i.i.i.i.i.i59:                             ; preds = %.lr.ph.i.i.i.i.i.i59.prol.loopexit, %.lr.ph.i.i.i.i.i.i59
  %.01.i.i.i.i.i.i60 = phi i32 [ %i.fb, %.lr.ph.i.i.i.i.i.i59 ], [ %.01.i.i.i.i.i.i60.unr, %.lr.ph.i.i.i.i.i.i59.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.fb = add nsw i32 %.01.i.i.i.i.i.i60, -8
  call void @llvm.x86.sse2.pause()
  %i.fc = icmp sgt i32 %.01.i.i.i.i.i.i60, 8
  br i1 %i.fc, label %.lr.ph.i.i.i.i.i.i59, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i58, !llvm.loop !9

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i58: ; preds = %.lr.ph.i.i.i.i.i.i59.prol.loopexit, %.lr.ph.i.i.i.i.i.i59, %bb.af
  %i.fd = shl i32 %.sroa.0.02.i.i.i.i55, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i56

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i54
  %i.fe = call noundef i32 @sched_yield() #20     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i56

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i56: ; preds = %bb.ag, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i58
  %.sroa.0.1.i.i.i.i57 = phi i32 [ %i.fd, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i58 ], [ %.sroa.0.02.i.i.i.i55, %bb.ag ]
  %i.ff = atomicrmw xchg ptr %i.eu, i8 1 seq_cst, align 1
  %i.fg = trunc i8 %i.ff to i1
  br i1 %i.fg, label %.lr.ph.i.i.i.i54, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i51, !llvm.loop !10

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i51: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i56, %bb.ae
  %i.fh = load ptr, ptr %i.ep, align 8, !tbaa !219 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.ah, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i52

bb.ah:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i51
  %i.fj = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #29
          to label %bb.ai unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i53 ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.fj, ptr %i.ep, align 8, !tbaa !219
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i52

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i53: ; preds = %bb.ah
  %i.fk = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.eu release, align 1
  br label %.body

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i52: ; preds = %bb.ai, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i51
  %i.fl = phi ptr [ %i.fj, %bb.ai ], [ %i.fh, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i51 ]
  store atomic i8 0, ptr %i.eu release, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i50, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i52
  %i.fm = phi ptr [ %i.fl, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i52 ], [ %i.es, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i50 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.fn = load ptr, ptr %i.z, align 8, !tbaa !1206, !nonnull !223, !align !445
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !1187
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.sroa.9.082
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !1189
  invoke void @_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter") align 8 %7, ptr noundef nonnull align 8 dereferenceable(96) %i.fr)
          to label %.preheader unwind label %bb.am

.preheader:                                       ; preds = %bb.aj
  %i.fs = load i32, ptr %i.ag, align 8, !tbaa !449 ; 2 uses
  %.not81 = icmp eq i32 %i.fs, 512
  br i1 %.not81, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph114.6, %bb.as, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit, %.lr.ph.i.i.i.i68.preheader, %.lr.ph.i.i.i.i68, %.lr.ph.i.i.i.i68.1, %.lr.ph.i.i.i.i68.2, %.lr.ph.i.i.i.i68.3, %.lr.ph.i.i.i.i68.4, %.lr.ph.i.i.i.i68.5, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.aw

bb.ak:                                            ; preds = %bb.v
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.al:                                            ; preds = %bb.ad
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %bb.aj
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.lr.ph:                                           ; preds = %.preheader, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit
  %i.fw = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ], [ %i.fs, %.preheader ] ; 2 uses
  %i.fx = zext i32 %i.fw to i64                   ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.fx ; 2 uses
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !234
  %i.ga = call double @llvm.fabs.f64(double %i.fz)
  %i.gb = fcmp ule double %i.ga, 1.000000e-15
  br i1 %i.gb, label %bb.as, label %bb.ao

bb.an:                                            ; preds = %.noexc65, %bb.ao
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ao:                                            ; preds = %.lr.ph
  %i.gd = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc65 unwind label %bb.an  ; 3 uses

.noexc65:                                         ; preds = %bb.ao
  %i.ge = load i32, ptr %i.ag, align 8, !tbaa !449 ; 4 uses
  %i.gf = lshr i32 %i.ge, 6
  %i.gg = lshr i32 %i.ge, 3
  %i.gh = and i32 %i.gg, 7
  %i.gi = and i32 %i.ge, 7
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 80
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !244
  %i.gl = add nsw i32 %i.gk, %i.gf
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gd, i64 84
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !244
  %i.go = add nsw i32 %i.gn, %i.gh
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gd, i64 88
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !244
  %i.gr = add nsw i32 %i.gq, %i.gi
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.go to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i9.i.i.i = zext i32 %i.gl to i64
  %.sroa.0.0.insert.insert.i10.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i9.i.i.i
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i, ptr %i.ah, align 8
  store i32 %i.gr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !219
  %i.gs = load ptr, ptr %i.ai, align 8, !tbaa !1221
  %i.gt = zext i32 %i.ge to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gt
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !234
  %i.gw = load ptr, ptr %i.aj, align 8, !tbaa !1228
  store double %i.gv, ptr %i.gw, align 8, !tbaa !234
  invoke void @_ZN7openvdb5v13_04math17SevenPointStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(140) %6, ptr noundef nonnull align 4 dereferenceable(12) %i.ah)
          to label %_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit unwind label %bb.an

_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit: ; preds = %.noexc65
  %i.gx = load ptr, ptr %i.aj, align 8, !tbaa !1228 ; 7 uses
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !234 ; 8 uses
  %i.gz = load double, ptr %i.fy, align 8, !tbaa !234
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.hd = load double, ptr %i.an, align 8, !tbaa !234, !noalias !4931
  %i.he = load double, ptr %i.ao, align 8, !tbaa !234, !noalias !4931
  %i.hf = load double, ptr %i.ap, align 8, !tbaa !234, !noalias !4931 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %9 = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  %i.hh = load double, ptr %i.hb, align 8, !tbaa !234, !noalias !4932
  %i.hi = load double, ptr %i.ha, align 8, !tbaa !234, !noalias !4932
  %i.hj = load double, ptr %i.hc, align 8, !tbaa !234, !noalias !4932
  %i.hk = fsub double %i.hh, %i.gy
  %i.hl = fsub double %i.hi, %i.gy
  %i.hm = fsub double %i.hj, %i.gy                ; 2 uses
  %i.hn = load <2 x double>, ptr %i.ak, align 8, !tbaa !234, !noalias !4931 ; 2 uses
  %i.ho = load <2 x double>, ptr %i.al, align 8, !tbaa !234, !noalias !4931 ; 2 uses
  %i.hp = insertelement <2 x double> poison, double %i.hk, i64 0 ; 2 uses
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hr = fmul <2 x double> %i.hq, %i.ho
  %i.hs = insertelement <2 x double> poison, double %i.hl, i64 0 ; 2 uses
  %i.ht = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.hn, <2 x double> %i.hr)
  %i.hv = load <2 x double>, ptr %i.am, align 8, !tbaa !234, !noalias !4931 ; 2 uses
  %i.hw = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hx, <2 x double> %i.hv, <2 x double> %i.hu) ; 4 uses
  %10 = load double, ptr %9, align 8, !tbaa !234, !noalias !4933
  %11 = load double, ptr %8, align 8, !tbaa !234, !noalias !4933
  %12 = load double, ptr %i.hg, align 8, !tbaa !234, !noalias !4933
  %13 = fsub double %10, %i.gy
  %14 = fsub double %11, %i.gy
  %15 = fsub double %12, %i.gy
  %16 = fneg double %13                           ; 2 uses
  %17 = fneg double %14                           ; 2 uses
  %18 = fneg double %15                           ; 2 uses
  %19 = insertelement <2 x double> poison, double %16, i64 0
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = fmul <2 x double> %i.ho, %20
  %21 = insertelement <2 x double> poison, double %17, i64 0
  %i.ia = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> %i.hn, <2 x double> %i.hz)
  %22 = insertelement <2 x double> poison, double %18, i64 0
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ic = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> %i.hv, <2 x double> %i.ib) ; 4 uses
  %i.id = insertelement <2 x double> %i.hp, double %16, i64 1
  %i.ie = insertelement <2 x double> poison, double %i.he, i64 0
  %i.if = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ig = fmul <2 x double> %i.id, %i.if
  %i.ih = insertelement <2 x double> %i.hs, double %17, i64 1
  %i.ii = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.ij = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ik = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ih, <2 x double> %i.ij, <2 x double> %i.ig) ; 2 uses
  %i.il = extractelement <2 x double> %i.ik, i64 0
  %i.im = call double @llvm.fmuladd.f64(double %i.hm, double %i.hf, double %i.il) ; 3 uses
  %i.in = extractelement <2 x double> %i.ik, i64 1
  %i.io = call double @llvm.fmuladd.f64(double %18, double %i.hf, double %i.in) ; 4 uses
  %i.ip = fcmp ogt double %i.gy, 0.000000e+00
  br i1 %i.ip, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit
  %i.iq = fcmp olt <2 x double> %i.ic, zeroinitializer
  %i.ir = select <2 x i1> %i.iq, <2 x double> zeroinitializer, <2 x double> %i.ic ; 2 uses
  %i.is = fmul <2 x double> %i.ir, %i.ir          ; 2 uses
  %i.it = fcmp ogt <2 x double> %i.hy, zeroinitializer
  %i.iu = select <2 x i1> %i.it, <2 x double> zeroinitializer, <2 x double> %i.hy ; 2 uses
  %i.iv = fmul <2 x double> %i.iu, %i.iu          ; 2 uses
  %i.iw = fcmp olt <2 x double> %i.is, %i.iv
  %i.ix = select <2 x i1> %i.iw, <2 x double> %i.iv, <2 x double> %i.is
  %i.iy = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ix)
  %i.iz = fcmp olt double %i.io, 0.000000e+00
  %.sroa.speculated80.i.i.i = select i1 %i.iz, double 0.000000e+00, double %i.io ; 2 uses
  %i.ja = fmul double %.sroa.speculated80.i.i.i, %.sroa.speculated80.i.i.i
  %i.jb = fcmp ogt double %i.im, 0.000000e+00
  br label %bb.ar

bb.aq:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit
  %i.jc = fcmp ogt <2 x double> %i.ic, zeroinitializer
  %i.jd = fcmp olt <2 x double> %i.hy, zeroinitializer
  %i.je = select <2 x i1> %i.jc, <2 x double> zeroinitializer, <2 x double> %i.ic ; 2 uses
  %i.jf = fmul <2 x double> %i.je, %i.je          ; 2 uses
  %i.jg = select <2 x i1> %i.jd, <2 x double> zeroinitializer, <2 x double> %i.hy ; 2 uses
  %i.jh = fmul <2 x double> %i.jg, %i.jg          ; 2 uses
  %i.ji = fcmp olt <2 x double> %i.jf, %i.jh
  %i.jj = select <2 x i1> %i.ji, <2 x double> %i.jh, <2 x double> %i.jf
  %i.jk = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.jj)
  %i.jl = fcmp ogt double %i.io, 0.000000e+00
  %.sroa.speculated62.i.i.i = select i1 %i.jl, double 0.000000e+00, double %i.io ; 2 uses
  %i.jm = fmul double %.sroa.speculated62.i.i.i, %.sroa.speculated62.i.i.i
  %i.jn = fcmp olt double %i.im, 0.000000e+00
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sink113.i.i.i = phi i1 [ %i.jn, %bb.aq ], [ %i.jb, %bb.ap ]
  %.sink110.i.i.i = phi double [ %i.jm, %bb.aq ], [ %i.ja, %bb.ap ] ; 2 uses
  %.sink.i.i.i = phi double [ %i.jk, %bb.aq ], [ %i.iy, %bb.ap ]
  %.sroa.speculated59.i.i.i = select i1 %.sink113.i.i.i, double 0.000000e+00, double %i.im ; 2 uses
  %i.jo = fmul double %.sroa.speculated59.i.i.i, %.sroa.speculated59.i.i.i ; 2 uses
  %i.jp = fcmp olt double %.sink110.i.i.i, %i.jo
  %.sroa.speculated.i.i.i = select i1 %i.jp, double %i.jo, double %.sink110.i.i.i
  %i.jq = fadd double %.sink.i.i.i, %.sroa.speculated.i.i.i
  %i.jr = fneg double %i.gz
  %i.js = fmul double %2, %i.jr
  %i.jt = call double @llvm.fmuladd.f64(double %i.js, double %i.jq, double %i.gy)
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fx
  store double %i.jt, ptr %i.ju, align 8, !tbaa !234
  %.pre = load i32, ptr %i.ag, align 8, !tbaa !449
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %bb.ar
  %i.jv = phi i32 [ %i.fw, %.lr.ph ], [ %.pre, %bb.ar ]
  %i.jw = load ptr, ptr %i.aq, align 8, !tbaa !467 ; 8 uses
  %i.jx = add i32 %i.jv, 1                        ; 4 uses
  %i.jy = lshr i32 %i.jx, 6                       ; 3 uses
  %i.jz = icmp ugt i32 %i.jx, 511
  br i1 %i.jz, label %._crit_edge, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ka = and i32 %i.jx, 63
  %i.kb = zext nneg i32 %i.jy to i64              ; 8 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.kb
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !266 ; 2 uses
  %i.ke = zext nneg i32 %i.ka to i64              ; 2 uses
  %i.kf = shl nuw i64 1, %i.ke
  %i.kg = and i64 %i.kd, %i.kf
  %.not.i.i.i.i67 = icmp eq i64 %i.kg, 0
  br i1 %.not.i.i.i.i67, label %bb.au, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

bb.au:                                            ; preds = %bb.at
  %i.kh = shl nsw i64 -1, %i.ke
  %i.ki = and i64 %i.kd, %i.kh                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.ki, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i68.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i68.preheader:                       ; preds = %bb.au
  %exitcond.not.i.i.i.i112 = icmp eq i32 %i.jy, 7
  br i1 %exitcond.not.i.i.i.i112, label %._crit_edge, label %.lr.ph114

.lr.ph.i.i.i.i68:                                 ; preds = %.lr.ph114
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph114.1

.lr.ph114.1:                                      ; preds = %.lr.ph.i.i.i.i68
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.kb, 2 ; 3 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i.i.i.i.1
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.kk, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i68.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i68.1:                               ; preds = %.lr.ph114.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph114.2

.lr.ph114.2:                                      ; preds = %.lr.ph.i.i.i.i68.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.kb, 3 ; 3 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i.i.i.i.2
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.km, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i68.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i68.2:                               ; preds = %.lr.ph114.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph114.3

.lr.ph114.3:                                      ; preds = %.lr.ph.i.i.i.i68.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.kb, 4 ; 3 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i.i.i.i.3
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.ko, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i68.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i68.3:                               ; preds = %.lr.ph114.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph114.4

.lr.ph114.4:                                      ; preds = %.lr.ph.i.i.i.i68.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.kb, 5 ; 3 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i.i.i.i.4
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.kq, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i68.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i68.4:                               ; preds = %.lr.ph114.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph114.5

.lr.ph114.5:                                      ; preds = %.lr.ph.i.i.i.i68.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.kb, 6 ; 3 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i.i.i.i.5
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.ks, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i68.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i68.5:                               ; preds = %.lr.ph114.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph114.6

.lr.ph114.6:                                      ; preds = %.lr.ph.i.i.i.i68.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.kb, 7 ; 2 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i.i.i.i.6
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.ku, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph114:                                        ; preds = %.lr.ph.i.i.i.i68.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.kb, 1 ; 3 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i.i.i.i
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.kw, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i68, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph114.6, %.lr.ph114.5, %.lr.ph114.4, %.lr.ph114.3, %.lr.ph114.2, %.lr.ph114.1, %.lr.ph114
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph114 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph114.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph114.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph114.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph114.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph114.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph114.6 ]
  %.lcssa = phi i64 [ %i.kw, %.lr.ph114 ], [ %i.kk, %.lr.ph114.1 ], [ %i.km, %.lr.ph114.2 ], [ %i.ko, %.lr.ph114.3 ], [ %i.kq, %.lr.ph114.4 ], [ %i.ks, %.lr.ph114.5 ], [ %i.ku, %.lr.ph114.6 ]
  %i.kx = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.au
  %.016.lcssa.i.i.i.i = phi i32 [ %i.jy, %bb.au ], [ %i.kx, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.ki, %bb.au ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.ky = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.kz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.la = trunc nuw nsw i64 %i.kz to i32
  %i.lb = or disjoint i32 %i.ky, %i.la
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit: ; preds = %bb.at, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.lb, %.critedge.i.i.i.i ], [ %i.jx, %bb.at ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.ag, align 8, !tbaa !449
  %.not = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.av:                                            ; preds = %bb.an, %bb.am
  %.pn23 = phi { ptr, i32 } [ %i.fv, %bb.am ], [ %i.gc, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.body

bb.aw:                                            ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit, %._crit_edge
  %i.lc = add nuw i64 %.sroa.9.082, 1             ; 2 uses
  %i.ld = load i64, ptr %1, align 8, !tbaa !1176
  %i.le = icmp ult i64 %i.lc, %i.ld
  br i1 %i.le, label %bb.i, label %._crit_edge85, !llvm.loop !4930

.body:                                            ; preds = %bb.al, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i53, %bb.ak, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i36, %bb.r, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, %bb.av
  %.pn23.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fk, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i53 ], [ %i.eb, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i36 ], [ %i.cn, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ], [ %.pn23, %bb.av ], [ %i.cs, %bb.r ], [ %i.ft, %bb.ak ], [ %i.fu, %bb.al ]
  call void @_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(140) dereferenceable(140) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %.pn23.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvPN7openvdb5v13_05tools16LevelSetMorphingINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_4util15NullInterrupterEE5MorphINS1_4math10UnitaryMapELNSK_20BiasedGradientSchemeE0ELNSK_25TemporalIntegrationSchemeE0EEERKNS5_11LeafManagerISE_E9LeafRangeEESt5_BindIFMSO_FvSU_djESt12_PlaceholderILi1EESZ_ILi2EEdiEEE9_M_invokeERKSt9_Any_dataOSP_SU_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1284   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1289
  %.unpack.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !219 ; 3 uses
  %.elt5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_05tools16LevelSetMorphingINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE5MorphINS0_4math10UnitaryMapELNSJ_20BiasedGradientSchemeE0ELNSJ_25TemporalIntegrationSchemeE1EE5eulerILi0ELi1EEEvRKNS4_11LeafManagerISD_E9LeafRangeEdjjj:bb.a
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !1189
  br label %_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit48

bb.ac:                                            ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit47
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !1184
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !1162
  %i.el = mul i64 %i.ek, %.sroa.9.082
  %i.em = getelementptr [16 x i8], ptr %i.ei, i64 %i.el
  %i.en = getelementptr [16 x i8], ptr %i.em, i64 %i.af
  %i.eo = getelementptr i8, ptr %i.en, i64 -16
  br label %_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit48

_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit48: ; preds = %bb.ac, %bb.ab
  %i.ep = phi ptr [ %i.eg, %bb.ab ], [ %i.eo, %bb.ac ] ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load atomic i32, ptr %i.eq seq_cst, align 4
  %.not.i.i49 = icmp eq i32 %i.er, 0
  br i1 %.not.i.i49, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i50, label %bb.ad

bb.ad:                                            ; preds = %_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit48
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.ep)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i50 unwind label %bb.al

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i50: ; preds = %bb.ad, %_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit48
  %i.es = load ptr, ptr %i.ep, align 8, !tbaa !219 ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i50
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 12 ; 4 uses
  %i.ev = atomicrmw xchg ptr %i.eu, i8 1 seq_cst, align 1
  %i.ew = trunc i8 %i.ev to i1
  br i1 %i.ew, label %.lr.ph.i.i.i.i54, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i51

.lr.ph.i.i.i.i54:                                 ; preds = %bb.ae, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i56
  %.sroa.0.02.i.i.i.i55 = phi i32 [ %.sroa.0.1.i.i.i.i57, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i56 ], [ 1, %bb.ae ] ; 8 uses
  %i.ex = icmp slt i32 %.sroa.0.02.i.i.i.i55, 17
  br i1 %i.ex, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i.i.i.i54
  %i.ey = icmp sgt i32 %.sroa.0.02.i.i.i.i55, 0
  br i1 %i.ey, label %.lr.ph.i.i.i.i.i.i59.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i58

.lr.ph.i.i.i.i.i.i59.preheader:                   ; preds = %bb.af
  %xtraiter124 = and i32 %.sroa.0.02.i.i.i.i55, 7 ; 2 uses
  %lcmp.mod125.not = icmp eq i32 %xtraiter124, 0
  br i1 %lcmp.mod125.not, label %.lr.ph.i.i.i.i.i.i59.prol.loopexit, label %.lr.ph.i.i.i.i.i.i59.prol

.lr.ph.i.i.i.i.i.i59.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i59.preheader, %.lr.ph.i.i.i.i.i.i59.prol
  %.01.i.i.i.i.i.i60.prol = phi i32 [ %i.ez, %.lr.ph.i.i.i.i.i.i59.prol ], [ %.sroa.0.02.i.i.i.i55, %.lr.ph.i.i.i.i.i.i59.preheader ]
  %prol.iter126 = phi i32 [ %prol.iter126.next, %.lr.ph.i.i.i.i.i.i59.prol ], [ 0, %.lr.ph.i.i.i.i.i.i59.preheader ]
  %i.ez = add nsw i32 %.01.i.i.i.i.i.i60.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter126.next = add i32 %prol.iter126, 1   ; 2 uses
  %prol.iter126.cmp.not = icmp eq i32 %prol.iter126.next, %xtraiter124
  br i1 %prol.iter126.cmp.not, label %.lr.ph.i.i.i.i.i.i59.prol.loopexit, label %.lr.ph.i.i.i.i.i.i59.prol, !llvm.loop !5341

.lr.ph.i.i.i.i.i.i59.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i59.prol, %.lr.ph.i.i.i.i.i.i59.preheader
  %.01.i.i.i.i.i.i60.unr = phi i32 [ %.sroa.0.02.i.i.i.i55, %.lr.ph.i.i.i.i.i.i59.preheader ], [ %i.ez, %.lr.ph.i.i.i.i.i.i59.prol ]
  %i.fa = icmp ult i32 %.sroa.0.02.i.i.i.i55, 8
  br i1 %i.fa, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i58, label %.lr.ph.i.i.i.i.i.i59

.lr.ph.i.i.i.i.i.i59:                             ; preds = %.lr.ph.i.i.i.i.i.i59.prol.loopexit, %.lr.ph.i.i.i.i.i.i59
  %.01.i.i.i.i.i.i60 = phi i32 [ %i.fb, %.lr.ph.i.i.i.i.i.i59 ], [ %.01.i.i.i.i.i.i60.unr, %.lr.ph.i.i.i.i.i.i59.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.fb = add nsw i32 %.01.i.i.i.i.i.i60, -8
  call void @llvm.x86.sse2.pause()
  %i.fc = icmp sgt i32 %.01.i.i.i.i.i.i60, 8
  br i1 %i.fc, label %.lr.ph.i.i.i.i.i.i59, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i58, !llvm.loop !9

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i58: ; preds = %.lr.ph.i.i.i.i.i.i59.prol.loopexit, %.lr.ph.i.i.i.i.i.i59, %bb.af
  %i.fd = shl i32 %.sroa.0.02.i.i.i.i55, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i56

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i54
  %i.fe = call noundef i32 @sched_yield() #20     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i56

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i56: ; preds = %bb.ag, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i58
  %.sroa.0.1.i.i.i.i57 = phi i32 [ %i.fd, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i58 ], [ %.sroa.0.02.i.i.i.i55, %bb.ag ]
  %i.ff = atomicrmw xchg ptr %i.eu, i8 1 seq_cst, align 1
  %i.fg = trunc i8 %i.ff to i1
  br i1 %i.fg, label %.lr.ph.i.i.i.i54, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i51, !llvm.loop !10

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i51: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i56, %bb.ae
  %i.fh = load ptr, ptr %i.ep, align 8, !tbaa !219 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.ah, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i52

bb.ah:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i51
  %i.fj = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #29
          to label %bb.ai unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i53 ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.fj, ptr %i.ep, align 8, !tbaa !219
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i52

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i53: ; preds = %bb.ah
  %i.fk = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.eu release, align 1
  br label %.body

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i52: ; preds = %bb.ai, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i51
  %i.fl = phi ptr [ %i.fj, %bb.ai ], [ %i.fh, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i51 ]
  store atomic i8 0, ptr %i.eu release, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i50, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i52
  %i.fm = phi ptr [ %i.fl, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i52 ], [ %i.es, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i50 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.fn = load ptr, ptr %i.z, align 8, !tbaa !1206, !nonnull !223, !align !445
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !1187
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.sroa.9.082
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !1189
  invoke void @_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter") align 8 %7, ptr noundef nonnull align 8 dereferenceable(96) %i.fr)
          to label %.preheader unwind label %bb.am

.preheader:                                       ; preds = %bb.aj
  %i.fs = load i32, ptr %i.ag, align 8, !tbaa !449 ; 2 uses
  %.not81 = icmp eq i32 %i.fs, 512
  br i1 %.not81, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph114.6, %bb.as, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit, %.lr.ph.i.i.i.i68.preheader, %.lr.ph.i.i.i.i68, %.lr.ph.i.i.i.i68.1, %.lr.ph.i.i.i.i68.2, %.lr.ph.i.i.i.i68.3, %.lr.ph.i.i.i.i68.4, %.lr.ph.i.i.i.i68.5, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.aw

bb.ak:                                            ; preds = %bb.v
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.al:                                            ; preds = %bb.ad
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %bb.aj
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.lr.ph:                                           ; preds = %.preheader, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit
  %i.fw = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ], [ %i.fs, %.preheader ] ; 2 uses
  %i.fx = zext i32 %i.fw to i64                   ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.fx ; 2 uses
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !234
  %i.ga = call double @llvm.fabs.f64(double %i.fz)
  %i.gb = fcmp ule double %i.ga, 1.000000e-15
  br i1 %i.gb, label %bb.as, label %bb.ao

bb.an:                                            ; preds = %.noexc65, %bb.ao
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ao:                                            ; preds = %.lr.ph
  %i.gd = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc65 unwind label %bb.an  ; 3 uses

.noexc65:                                         ; preds = %bb.ao
  %i.ge = load i32, ptr %i.ag, align 8, !tbaa !449 ; 4 uses
  %i.gf = lshr i32 %i.ge, 6
  %i.gg = lshr i32 %i.ge, 3
  %i.gh = and i32 %i.gg, 7
  %i.gi = and i32 %i.ge, 7
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 80
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !244
  %i.gl = add nsw i32 %i.gk, %i.gf
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gd, i64 84
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !244
  %i.go = add nsw i32 %i.gn, %i.gh
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gd, i64 88
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !244
  %i.gr = add nsw i32 %i.gq, %i.gi
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.go to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i9.i.i.i = zext i32 %i.gl to i64
  %.sroa.0.0.insert.insert.i10.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i9.i.i.i
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i, ptr %i.ah, align 8
  store i32 %i.gr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !219
  %i.gs = load ptr, ptr %i.ai, align 8, !tbaa !1221
  %i.gt = zext i32 %i.ge to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gt
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !234
  %i.gw = load ptr, ptr %i.aj, align 8, !tbaa !1228
  store double %i.gv, ptr %i.gw, align 8, !tbaa !234
  invoke void @_ZN7openvdb5v13_04math17SevenPointStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(140) %6, ptr noundef nonnull align 4 dereferenceable(12) %i.ah)
          to label %_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit unwind label %bb.an

_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit: ; preds = %.noexc65
  %i.gx = load ptr, ptr %i.aj, align 8, !tbaa !1228 ; 7 uses
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !234 ; 8 uses
  %i.gz = load double, ptr %i.fy, align 8, !tbaa !234
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.hd = load double, ptr %i.an, align 8, !tbaa !234, !noalias !5359
  %i.he = load double, ptr %i.ao, align 8, !tbaa !234, !noalias !5359
  %i.hf = load double, ptr %i.ap, align 8, !tbaa !234, !noalias !5359 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %9 = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  %i.hh = load double, ptr %i.hb, align 8, !tbaa !234, !noalias !5360
  %i.hi = load double, ptr %i.ha, align 8, !tbaa !234, !noalias !5360
  %i.hj = load double, ptr %i.hc, align 8, !tbaa !234, !noalias !5360
  %i.hk = fsub double %i.hh, %i.gy
  %i.hl = fsub double %i.hi, %i.gy
  %i.hm = fsub double %i.hj, %i.gy                ; 2 uses
  %i.hn = load <2 x double>, ptr %i.ak, align 8, !tbaa !234, !noalias !5359 ; 2 uses
  %i.ho = load <2 x double>, ptr %i.al, align 8, !tbaa !234, !noalias !5359 ; 2 uses
  %i.hp = insertelement <2 x double> poison, double %i.hk, i64 0 ; 2 uses
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hr = fmul <2 x double> %i.hq, %i.ho
  %i.hs = insertelement <2 x double> poison, double %i.hl, i64 0 ; 2 uses
  %i.ht = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.hn, <2 x double> %i.hr)
  %i.hv = load <2 x double>, ptr %i.am, align 8, !tbaa !234, !noalias !5359 ; 2 uses
  %i.hw = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hx, <2 x double> %i.hv, <2 x double> %i.hu) ; 4 uses
  %10 = load double, ptr %9, align 8, !tbaa !234, !noalias !5361
  %11 = load double, ptr %8, align 8, !tbaa !234, !noalias !5361
  %12 = load double, ptr %i.hg, align 8, !tbaa !234, !noalias !5361
  %13 = fsub double %10, %i.gy
  %14 = fsub double %11, %i.gy
  %15 = fsub double %12, %i.gy
  %16 = fneg double %13                           ; 2 uses
  %17 = fneg double %14                           ; 2 uses
  %18 = fneg double %15                           ; 2 uses
  %19 = insertelement <2 x double> poison, double %16, i64 0
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = fmul <2 x double> %i.ho, %20
  %21 = insertelement <2 x double> poison, double %17, i64 0
  %i.ia = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> %i.hn, <2 x double> %i.hz)
  %22 = insertelement <2 x double> poison, double %18, i64 0
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ic = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> %i.hv, <2 x double> %i.ib) ; 4 uses
  %i.id = insertelement <2 x double> %i.hp, double %16, i64 1
  %i.ie = insertelement <2 x double> poison, double %i.he, i64 0
  %i.if = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ig = fmul <2 x double> %i.id, %i.if
  %i.ih = insertelement <2 x double> %i.hs, double %17, i64 1
  %i.ii = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.ij = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ik = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ih, <2 x double> %i.ij, <2 x double> %i.ig) ; 2 uses
  %i.il = extractelement <2 x double> %i.ik, i64 0
  %i.im = call double @llvm.fmuladd.f64(double %i.hm, double %i.hf, double %i.il) ; 3 uses
  %i.in = extractelement <2 x double> %i.ik, i64 1
  %i.io = call double @llvm.fmuladd.f64(double %18, double %i.hf, double %i.in) ; 4 uses
  %i.ip = fcmp ogt double %i.gy, 0.000000e+00
  br i1 %i.ip, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit
  %i.iq = fcmp olt <2 x double> %i.ic, zeroinitializer
  %i.ir = select <2 x i1> %i.iq, <2 x double> zeroinitializer, <2 x double> %i.ic ; 2 uses
  %i.is = fmul <2 x double> %i.ir, %i.ir          ; 2 uses
  %i.it = fcmp ogt <2 x double> %i.hy, zeroinitializer
  %i.iu = select <2 x i1> %i.it, <2 x double> zeroinitializer, <2 x double> %i.hy ; 2 uses
  %i.iv = fmul <2 x double> %i.iu, %i.iu          ; 2 uses
  %i.iw = fcmp olt <2 x double> %i.is, %i.iv
  %i.ix = select <2 x i1> %i.iw, <2 x double> %i.iv, <2 x double> %i.is
  %i.iy = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ix)
  %i.iz = fcmp olt double %i.io, 0.000000e+00
  %.sroa.speculated80.i.i.i = select i1 %i.iz, double 0.000000e+00, double %i.io ; 2 uses
  %i.ja = fmul double %.sroa.speculated80.i.i.i, %.sroa.speculated80.i.i.i
  %i.jb = fcmp ogt double %i.im, 0.000000e+00
  br label %bb.ar

bb.aq:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit
  %i.jc = fcmp ogt <2 x double> %i.ic, zeroinitializer
  %i.jd = fcmp olt <2 x double> %i.hy, zeroinitializer
  %i.je = select <2 x i1> %i.jc, <2 x double> zeroinitializer, <2 x double> %i.ic ; 2 uses
  %i.jf = fmul <2 x double> %i.je, %i.je          ; 2 uses
  %i.jg = select <2 x i1> %i.jd, <2 x double> zeroinitializer, <2 x double> %i.hy ; 2 uses
  %i.jh = fmul <2 x double> %i.jg, %i.jg          ; 2 uses
  %i.ji = fcmp olt <2 x double> %i.jf, %i.jh
  %i.jj = select <2 x i1> %i.ji, <2 x double> %i.jh, <2 x double> %i.jf
  %i.jk = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.jj)
  %i.jl = fcmp ogt double %i.io, 0.000000e+00
  %.sroa.speculated62.i.i.i = select i1 %i.jl, double 0.000000e+00, double %i.io ; 2 uses
  %i.jm = fmul double %.sroa.speculated62.i.i.i, %.sroa.speculated62.i.i.i
  %i.jn = fcmp olt double %i.im, 0.000000e+00
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sink113.i.i.i = phi i1 [ %i.jn, %bb.aq ], [ %i.jb, %bb.ap ]
  %.sink110.i.i.i = phi double [ %i.jm, %bb.aq ], [ %i.ja, %bb.ap ] ; 2 uses
  %.sink.i.i.i = phi double [ %i.jk, %bb.aq ], [ %i.iy, %bb.ap ]
  %.sroa.speculated59.i.i.i = select i1 %.sink113.i.i.i, double 0.000000e+00, double %i.im ; 2 uses
  %i.jo = fmul double %.sroa.speculated59.i.i.i, %.sroa.speculated59.i.i.i ; 2 uses
  %i.jp = fcmp olt double %.sink110.i.i.i, %i.jo
  %.sroa.speculated.i.i.i = select i1 %i.jp, double %i.jo, double %.sink110.i.i.i
  %i.jq = fadd double %.sink.i.i.i, %.sroa.speculated.i.i.i
  %i.jr = fneg double %i.gz
  %i.js = fmul double %2, %i.jr
  %i.jt = call double @llvm.fmuladd.f64(double %i.js, double %i.jq, double %i.gy)
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fx
  store double %i.jt, ptr %i.ju, align 8, !tbaa !234
  %.pre = load i32, ptr %i.ag, align 8, !tbaa !449
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %bb.ar
  %i.jv = phi i32 [ %i.fw, %.lr.ph ], [ %.pre, %bb.ar ]
  %i.jw = load ptr, ptr %i.aq, align 8, !tbaa !467 ; 8 uses
  %i.jx = add i32 %i.jv, 1                        ; 4 uses
  %i.jy = lshr i32 %i.jx, 6                       ; 3 uses
  %i.jz = icmp ugt i32 %i.jx, 511
  br i1 %i.jz, label %._crit_edge, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ka = and i32 %i.jx, 63
  %i.kb = zext nneg i32 %i.jy to i64              ; 8 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.kb
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !266 ; 2 uses
  %i.ke = zext nneg i32 %i.ka to i64              ; 2 uses
  %i.kf = shl nuw i64 1, %i.ke
  %i.kg = and i64 %i.kd, %i.kf
  %.not.i.i.i.i67 = icmp eq i64 %i.kg, 0
  br i1 %.not.i.i.i.i67, label %bb.au, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

bb.au:                                            ; preds = %bb.at
  %i.kh = shl nsw i64 -1, %i.ke
  %i.ki = and i64 %i.kd, %i.kh                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.ki, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i68.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i68.preheader:                       ; preds = %bb.au
  %exitcond.not.i.i.i.i112 = icmp eq i32 %i.jy, 7
  br i1 %exitcond.not.i.i.i.i112, label %._crit_edge, label %.lr.ph114

.lr.ph.i.i.i.i68:                                 ; preds = %.lr.ph114
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph114.1

.lr.ph114.1:                                      ; preds = %.lr.ph.i.i.i.i68
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.kb, 2 ; 3 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i.i.i.i.1
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.kk, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i68.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i68.1:                               ; preds = %.lr.ph114.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph114.2

.lr.ph114.2:                                      ; preds = %.lr.ph.i.i.i.i68.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.kb, 3 ; 3 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i.i.i.i.2
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.km, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i68.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i68.2:                               ; preds = %.lr.ph114.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph114.3

.lr.ph114.3:                                      ; preds = %.lr.ph.i.i.i.i68.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.kb, 4 ; 3 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i.i.i.i.3
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.ko, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i68.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i68.3:                               ; preds = %.lr.ph114.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph114.4

.lr.ph114.4:                                      ; preds = %.lr.ph.i.i.i.i68.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.kb, 5 ; 3 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i.i.i.i.4
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.kq, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i68.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i68.4:                               ; preds = %.lr.ph114.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph114.5

.lr.ph114.5:                                      ; preds = %.lr.ph.i.i.i.i68.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.kb, 6 ; 3 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i.i.i.i.5
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.ks, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i68.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i68.5:                               ; preds = %.lr.ph114.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph114.6

.lr.ph114.6:                                      ; preds = %.lr.ph.i.i.i.i68.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.kb, 7 ; 2 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i.i.i.i.6
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.ku, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph114:                                        ; preds = %.lr.ph.i.i.i.i68.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.kb, 1 ; 3 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i.i.i.i
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.kw, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i68, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph114.6, %.lr.ph114.5, %.lr.ph114.4, %.lr.ph114.3, %.lr.ph114.2, %.lr.ph114.1, %.lr.ph114
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph114 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph114.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph114.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph114.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph114.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph114.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph114.6 ]
  %.lcssa = phi i64 [ %i.kw, %.lr.ph114 ], [ %i.kk, %.lr.ph114.1 ], [ %i.km, %.lr.ph114.2 ], [ %i.ko, %.lr.ph114.3 ], [ %i.kq, %.lr.ph114.4 ], [ %i.ks, %.lr.ph114.5 ], [ %i.ku, %.lr.ph114.6 ]
  %i.kx = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.au
  %.016.lcssa.i.i.i.i = phi i32 [ %i.jy, %bb.au ], [ %i.kx, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.ki, %bb.au ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.ky = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.kz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.la = trunc nuw nsw i64 %i.kz to i32
  %i.lb = or disjoint i32 %i.ky, %i.la
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit: ; preds = %bb.at, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.lb, %.critedge.i.i.i.i ], [ %i.jx, %bb.at ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.ag, align 8, !tbaa !449
  %.not = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.av:                                            ; preds = %bb.an, %bb.am
  %.pn23 = phi { ptr, i32 } [ %i.fv, %bb.am ], [ %i.gc, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.body

bb.aw:                                            ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit, %._crit_edge
  %i.lc = add nuw i64 %.sroa.9.082, 1             ; 2 uses
  %i.ld = load i64, ptr %1, align 8, !tbaa !1176
  %i.le = icmp ult i64 %i.lc, %i.ld
  br i1 %i.le, label %bb.i, label %._crit_edge85, !llvm.loop !5358

.body:                                            ; preds = %bb.al, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i53, %bb.ak, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i36, %bb.r, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, %bb.av
  %.pn23.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fk, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i53 ], [ %i.eb, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i36 ], [ %i.cn, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ], [ %.pn23, %bb.av ], [ %i.cs, %bb.r ], [ %i.ft, %bb.ak ], [ %i.fu, %bb.al ]
  call void @_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(140) dereferenceable(140) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %.pn23.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvPN7openvdb5v13_05tools16LevelSetMorphingINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_4util15NullInterrupterEE5MorphINS1_4math10UnitaryMapELNSK_20BiasedGradientSchemeE0ELNSK_25TemporalIntegrationSchemeE1EEERKNS5_11LeafManagerISE_E9LeafRangeEESt5_BindIFMSO_FvSU_djESt12_PlaceholderILi1EESZ_ILi2EEdiEEE9_M_invokeERKSt9_Any_dataOSP_SU_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1383   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1390
  %.unpack.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !219 ; 3 uses
  %.elt5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_05tools16LevelSetMorphingINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE5MorphINS0_4math10UnitaryMapELNSJ_20BiasedGradientSchemeE0ELNSJ_25TemporalIntegrationSchemeE1EE5eulerILi1ELi2EEEvRKNS4_11LeafManagerISD_E9LeafRangeEdjjj:bb.a
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !1189
  br label %_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit50

bb.ac:                                            ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit49
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 56
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !1184
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.em = load i64, ptr %i.el, align 8, !tbaa !1162
  %i.en = mul i64 %i.em, %.sroa.9.084
  %i.eo = getelementptr [16 x i8], ptr %i.ek, i64 %i.en
  %i.ep = getelementptr [16 x i8], ptr %i.eo, i64 %i.af
  %i.eq = getelementptr i8, ptr %i.ep, i64 -16
  br label %_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit50

_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit50: ; preds = %bb.ac, %bb.ab
  %i.er = phi ptr [ %i.ei, %bb.ab ], [ %i.eq, %bb.ac ] ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load atomic i32, ptr %i.es seq_cst, align 4
  %.not.i.i51 = icmp eq i32 %i.et, 0
  br i1 %.not.i.i51, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i52, label %bb.ad

bb.ad:                                            ; preds = %_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit50
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.er)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i52 unwind label %bb.al

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i52: ; preds = %bb.ad, %_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit50
  %i.eu = load ptr, ptr %i.er, align 8, !tbaa !219 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i52
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 12 ; 4 uses
  %i.ex = atomicrmw xchg ptr %i.ew, i8 1 seq_cst, align 1
  %i.ey = trunc i8 %i.ex to i1
  br i1 %i.ey, label %.lr.ph.i.i.i.i56, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i53

.lr.ph.i.i.i.i56:                                 ; preds = %bb.ae, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i58
  %.sroa.0.02.i.i.i.i57 = phi i32 [ %.sroa.0.1.i.i.i.i59, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i58 ], [ 1, %bb.ae ] ; 8 uses
  %i.ez = icmp slt i32 %.sroa.0.02.i.i.i.i57, 17
  br i1 %i.ez, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i.i.i.i56
  %i.fa = icmp sgt i32 %.sroa.0.02.i.i.i.i57, 0
  br i1 %i.fa, label %.lr.ph.i.i.i.i.i.i61.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i60

.lr.ph.i.i.i.i.i.i61.preheader:                   ; preds = %bb.af
  %xtraiter128 = and i32 %.sroa.0.02.i.i.i.i57, 7 ; 2 uses
  %lcmp.mod129.not = icmp eq i32 %xtraiter128, 0
  br i1 %lcmp.mod129.not, label %.lr.ph.i.i.i.i.i.i61.prol.loopexit, label %.lr.ph.i.i.i.i.i.i61.prol

.lr.ph.i.i.i.i.i.i61.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i61.preheader, %.lr.ph.i.i.i.i.i.i61.prol
  %.01.i.i.i.i.i.i62.prol = phi i32 [ %i.fb, %.lr.ph.i.i.i.i.i.i61.prol ], [ %.sroa.0.02.i.i.i.i57, %.lr.ph.i.i.i.i.i.i61.preheader ]
  %prol.iter130 = phi i32 [ %prol.iter130.next, %.lr.ph.i.i.i.i.i.i61.prol ], [ 0, %.lr.ph.i.i.i.i.i.i61.preheader ]
  %i.fb = add nsw i32 %.01.i.i.i.i.i.i62.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter130.next = add i32 %prol.iter130, 1   ; 2 uses
  %prol.iter130.cmp.not = icmp eq i32 %prol.iter130.next, %xtraiter128
  br i1 %prol.iter130.cmp.not, label %.lr.ph.i.i.i.i.i.i61.prol.loopexit, label %.lr.ph.i.i.i.i.i.i61.prol, !llvm.loop !5380

.lr.ph.i.i.i.i.i.i61.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i61.prol, %.lr.ph.i.i.i.i.i.i61.preheader
  %.01.i.i.i.i.i.i62.unr = phi i32 [ %.sroa.0.02.i.i.i.i57, %.lr.ph.i.i.i.i.i.i61.preheader ], [ %i.fb, %.lr.ph.i.i.i.i.i.i61.prol ]
  %i.fc = icmp ult i32 %.sroa.0.02.i.i.i.i57, 8
  br i1 %i.fc, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i60, label %.lr.ph.i.i.i.i.i.i61

.lr.ph.i.i.i.i.i.i61:                             ; preds = %.lr.ph.i.i.i.i.i.i61.prol.loopexit, %.lr.ph.i.i.i.i.i.i61
  %.01.i.i.i.i.i.i62 = phi i32 [ %i.fd, %.lr.ph.i.i.i.i.i.i61 ], [ %.01.i.i.i.i.i.i62.unr, %.lr.ph.i.i.i.i.i.i61.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.fd = add nsw i32 %.01.i.i.i.i.i.i62, -8
  call void @llvm.x86.sse2.pause()
  %i.fe = icmp sgt i32 %.01.i.i.i.i.i.i62, 8
  br i1 %i.fe, label %.lr.ph.i.i.i.i.i.i61, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i60, !llvm.loop !9

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i60: ; preds = %.lr.ph.i.i.i.i.i.i61.prol.loopexit, %.lr.ph.i.i.i.i.i.i61, %bb.af
  %i.ff = shl i32 %.sroa.0.02.i.i.i.i57, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i58

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i56
  %i.fg = call noundef i32 @sched_yield() #20     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i58

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i58: ; preds = %bb.ag, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i60
  %.sroa.0.1.i.i.i.i59 = phi i32 [ %i.ff, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i60 ], [ %.sroa.0.02.i.i.i.i57, %bb.ag ]
  %i.fh = atomicrmw xchg ptr %i.ew, i8 1 seq_cst, align 1
  %i.fi = trunc i8 %i.fh to i1
  br i1 %i.fi, label %.lr.ph.i.i.i.i56, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i53, !llvm.loop !10

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i53: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i58, %bb.ae
  %i.fj = load ptr, ptr %i.er, align 8, !tbaa !219 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %bb.ah, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i54

bb.ah:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i53
  %i.fl = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #29
          to label %bb.ai unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i55 ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.fl, ptr %i.er, align 8, !tbaa !219
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i54

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i55: ; preds = %bb.ah
  %i.fm = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.ew release, align 1
  br label %.body

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i54: ; preds = %bb.ai, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i53
  %i.fn = phi ptr [ %i.fl, %bb.ai ], [ %i.fj, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i53 ]
  store atomic i8 0, ptr %i.ew release, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i52, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i54
  %i.fo = phi ptr [ %i.fn, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i54 ], [ %i.eu, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i52 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.fp = load ptr, ptr %i.z, align 8, !tbaa !1206, !nonnull !223, !align !445
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !1187
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.sroa.9.084
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !1189
  invoke void @_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter") align 8 %7, ptr noundef nonnull align 8 dereferenceable(96) %i.ft)
          to label %.preheader unwind label %bb.am

.preheader:                                       ; preds = %bb.aj
  %i.fu = load i32, ptr %i.ag, align 8, !tbaa !449 ; 2 uses
  %.not83 = icmp eq i32 %i.fu, 512
  br i1 %.not83, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph118.6, %bb.as, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit, %.lr.ph.i.i.i.i70.preheader, %.lr.ph.i.i.i.i70, %.lr.ph.i.i.i.i70.1, %.lr.ph.i.i.i.i70.2, %.lr.ph.i.i.i.i70.3, %.lr.ph.i.i.i.i70.4, %.lr.ph.i.i.i.i70.5, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.aw

bb.ak:                                            ; preds = %bb.v
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.al:                                            ; preds = %bb.ad
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %bb.aj
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.lr.ph:                                           ; preds = %.preheader, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit
  %i.fy = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ], [ %i.fu, %.preheader ] ; 2 uses
  %i.fz = zext i32 %i.fy to i64                   ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.fz ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !234
  %i.gc = call double @llvm.fabs.f64(double %i.gb)
  %i.gd = fcmp ule double %i.gc, 1.000000e-15
  br i1 %i.gd, label %bb.as, label %bb.ao

bb.an:                                            ; preds = %.noexc67, %bb.ao
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ao:                                            ; preds = %.lr.ph
  %i.gf = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc67 unwind label %bb.an  ; 3 uses

.noexc67:                                         ; preds = %bb.ao
  %i.gg = load i32, ptr %i.ag, align 8, !tbaa !449 ; 4 uses
  %i.gh = lshr i32 %i.gg, 6
  %i.gi = lshr i32 %i.gg, 3
  %i.gj = and i32 %i.gi, 7
  %i.gk = and i32 %i.gg, 7
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 80
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !244
  %i.gn = add nsw i32 %i.gm, %i.gh
  %i.go = getelementptr inbounds nuw i8, ptr %i.gf, i64 84
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !244
  %i.gq = add nsw i32 %i.gp, %i.gj
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gf, i64 88
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !244
  %i.gt = add nsw i32 %i.gs, %i.gk
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.gq to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i9.i.i.i = zext i32 %i.gn to i64
  %.sroa.0.0.insert.insert.i10.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i9.i.i.i
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i, ptr %i.ah, align 8
  store i32 %i.gt, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !219
  %i.gu = load ptr, ptr %i.ai, align 8, !tbaa !1221
  %i.gv = zext i32 %i.gg to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.gv
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !234
  %i.gy = load ptr, ptr %i.aj, align 8, !tbaa !1228
  store double %i.gx, ptr %i.gy, align 8, !tbaa !234
  invoke void @_ZN7openvdb5v13_04math17SevenPointStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(140) %6, ptr noundef nonnull align 4 dereferenceable(12) %i.ah)
          to label %_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit unwind label %bb.an

_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit: ; preds = %.noexc67
  %i.gz = load ptr, ptr %i.aj, align 8, !tbaa !1228 ; 7 uses
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !234 ; 8 uses
  %i.hb = load double, ptr %i.ga, align 8, !tbaa !234
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hf = load double, ptr %i.an, align 8, !tbaa !234, !noalias !5398
  %i.hg = load double, ptr %i.ao, align 8, !tbaa !234, !noalias !5398
  %i.hh = load double, ptr %i.ap, align 8, !tbaa !234, !noalias !5398 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %9 = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  %i.hj = load double, ptr %i.hd, align 8, !tbaa !234, !noalias !5399
  %i.hk = load double, ptr %i.hc, align 8, !tbaa !234, !noalias !5399
  %i.hl = load double, ptr %i.he, align 8, !tbaa !234, !noalias !5399
  %i.hm = fsub double %i.hj, %i.ha
  %i.hn = fsub double %i.hk, %i.ha
  %i.ho = fsub double %i.hl, %i.ha                ; 2 uses
  %i.hp = load <2 x double>, ptr %i.ak, align 8, !tbaa !234, !noalias !5398 ; 2 uses
  %i.hq = load <2 x double>, ptr %i.al, align 8, !tbaa !234, !noalias !5398 ; 2 uses
  %i.hr = insertelement <2 x double> poison, double %i.hm, i64 0 ; 2 uses
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ht = fmul <2 x double> %i.hs, %i.hq
  %i.hu = insertelement <2 x double> poison, double %i.hn, i64 0 ; 2 uses
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.hp, <2 x double> %i.ht)
  %i.hx = load <2 x double>, ptr %i.am, align 8, !tbaa !234, !noalias !5398 ; 2 uses
  %i.hy = insertelement <2 x double> poison, double %i.ho, i64 0
  %i.hz = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> %i.hx, <2 x double> %i.hw) ; 4 uses
  %10 = load double, ptr %9, align 8, !tbaa !234, !noalias !5400
  %11 = load double, ptr %8, align 8, !tbaa !234, !noalias !5400
  %12 = load double, ptr %i.hi, align 8, !tbaa !234, !noalias !5400
  %13 = fsub double %10, %i.ha
  %14 = fsub double %11, %i.ha
  %15 = fsub double %12, %i.ha
  %16 = fneg double %13                           ; 2 uses
  %17 = fneg double %14                           ; 2 uses
  %18 = fneg double %15                           ; 2 uses
  %19 = insertelement <2 x double> poison, double %16, i64 0
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = fmul <2 x double> %i.hq, %20
  %21 = insertelement <2 x double> poison, double %17, i64 0
  %i.ic = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer
  %i.id = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ic, <2 x double> %i.hp, <2 x double> %i.ib)
  %22 = insertelement <2 x double> poison, double %18, i64 0
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ie = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> %i.hx, <2 x double> %i.id) ; 4 uses
  %i.if = insertelement <2 x double> %i.hr, double %16, i64 1
  %i.ig = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.ih = shufflevector <2 x double> %i.ig, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ii = fmul <2 x double> %i.if, %i.ih
  %i.ij = insertelement <2 x double> %i.hu, double %17, i64 1
  %i.ik = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.il = shufflevector <2 x double> %i.ik, <2 x double> poison, <2 x i32> zeroinitializer
  %i.im = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ij, <2 x double> %i.il, <2 x double> %i.ii) ; 2 uses
  %i.in = extractelement <2 x double> %i.im, i64 0
  %i.io = call double @llvm.fmuladd.f64(double %i.ho, double %i.hh, double %i.in) ; 3 uses
  %i.ip = extractelement <2 x double> %i.im, i64 1
  %i.iq = call double @llvm.fmuladd.f64(double %18, double %i.hh, double %i.ip) ; 4 uses
  %i.ir = fcmp ogt double %i.ha, 0.000000e+00
  br i1 %i.ir, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit
  %i.is = fcmp olt <2 x double> %i.ie, zeroinitializer
  %i.it = select <2 x i1> %i.is, <2 x double> zeroinitializer, <2 x double> %i.ie ; 2 uses
  %i.iu = fmul <2 x double> %i.it, %i.it          ; 2 uses
  %i.iv = fcmp ogt <2 x double> %i.ia, zeroinitializer
  %i.iw = select <2 x i1> %i.iv, <2 x double> zeroinitializer, <2 x double> %i.ia ; 2 uses
  %i.ix = fmul <2 x double> %i.iw, %i.iw          ; 2 uses
  %i.iy = fcmp olt <2 x double> %i.iu, %i.ix
  %i.iz = select <2 x i1> %i.iy, <2 x double> %i.ix, <2 x double> %i.iu
  %i.ja = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.iz)
  %i.jb = fcmp olt double %i.iq, 0.000000e+00
  %.sroa.speculated80.i.i.i = select i1 %i.jb, double 0.000000e+00, double %i.iq ; 2 uses
  %i.jc = fmul double %.sroa.speculated80.i.i.i, %.sroa.speculated80.i.i.i
  %i.jd = fcmp ogt double %i.io, 0.000000e+00
  br label %bb.ar

bb.aq:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit
  %i.je = fcmp ogt <2 x double> %i.ie, zeroinitializer
  %i.jf = fcmp olt <2 x double> %i.ia, zeroinitializer
  %i.jg = select <2 x i1> %i.je, <2 x double> zeroinitializer, <2 x double> %i.ie ; 2 uses
  %i.jh = fmul <2 x double> %i.jg, %i.jg          ; 2 uses
  %i.ji = select <2 x i1> %i.jf, <2 x double> zeroinitializer, <2 x double> %i.ia ; 2 uses
  %i.jj = fmul <2 x double> %i.ji, %i.ji          ; 2 uses
  %i.jk = fcmp olt <2 x double> %i.jh, %i.jj
  %i.jl = select <2 x i1> %i.jk, <2 x double> %i.jj, <2 x double> %i.jh
  %i.jm = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.jl)
  %i.jn = fcmp ogt double %i.iq, 0.000000e+00
  %.sroa.speculated62.i.i.i = select i1 %i.jn, double 0.000000e+00, double %i.iq ; 2 uses
  %i.jo = fmul double %.sroa.speculated62.i.i.i, %.sroa.speculated62.i.i.i
  %i.jp = fcmp olt double %i.io, 0.000000e+00
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sink113.i.i.i = phi i1 [ %i.jp, %bb.aq ], [ %i.jd, %bb.ap ]
  %.sink110.i.i.i = phi double [ %i.jo, %bb.aq ], [ %i.jc, %bb.ap ] ; 2 uses
  %.sink.i.i.i = phi double [ %i.jm, %bb.aq ], [ %i.ja, %bb.ap ]
  %.sroa.speculated59.i.i.i = select i1 %.sink113.i.i.i, double 0.000000e+00, double %i.io ; 2 uses
  %i.jq = fmul double %.sroa.speculated59.i.i.i, %.sroa.speculated59.i.i.i ; 2 uses
  %i.jr = fcmp olt double %.sink110.i.i.i, %i.jq
  %.sroa.speculated.i.i.i = select i1 %i.jr, double %i.jq, double %.sink110.i.i.i
  %i.js = fadd double %.sink.i.i.i, %.sroa.speculated.i.i.i
  %i.jt = fneg double %i.hb
  %i.ju = fmul double %2, %i.jt
  %i.jv = call double @llvm.fmuladd.f64(double %i.ju, double %i.js, double %i.ha)
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.fz
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !234
  %i.jy = fmul double %i.jv, 5.000000e-01
  %i.jz = call double @llvm.fmuladd.f64(double %i.jx, double 5.000000e-01, double %i.jy)
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fz
  store double %i.jz, ptr %i.ka, align 8, !tbaa !234
  %.pre = load i32, ptr %i.ag, align 8, !tbaa !449
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %bb.ar
  %i.kb = phi i32 [ %i.fy, %.lr.ph ], [ %.pre, %bb.ar ]
  %i.kc = load ptr, ptr %i.aq, align 8, !tbaa !467 ; 8 uses
  %i.kd = add i32 %i.kb, 1                        ; 4 uses
  %i.ke = lshr i32 %i.kd, 6                       ; 3 uses
  %i.kf = icmp ugt i32 %i.kd, 511
  br i1 %i.kf, label %._crit_edge, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kg = and i32 %i.kd, 63
  %i.kh = zext nneg i32 %i.ke to i64              ; 8 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.kh
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !266 ; 2 uses
  %i.kk = zext nneg i32 %i.kg to i64              ; 2 uses
  %i.kl = shl nuw i64 1, %i.kk
  %i.km = and i64 %i.kj, %i.kl
  %.not.i.i.i.i69 = icmp eq i64 %i.km, 0
  br i1 %.not.i.i.i.i69, label %bb.au, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

bb.au:                                            ; preds = %bb.at
  %i.kn = shl nsw i64 -1, %i.kk
  %i.ko = and i64 %i.kj, %i.kn                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.ko, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i70.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i70.preheader:                       ; preds = %bb.au
  %exitcond.not.i.i.i.i116 = icmp eq i32 %i.ke, 7
  br i1 %exitcond.not.i.i.i.i116, label %._crit_edge, label %.lr.ph118

.lr.ph.i.i.i.i70:                                 ; preds = %.lr.ph118
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph118.1

.lr.ph118.1:                                      ; preds = %.lr.ph.i.i.i.i70
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.kh, 2 ; 3 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.next.i.i.i.i.1
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.kq, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i70.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i70.1:                               ; preds = %.lr.ph118.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph118.2

.lr.ph118.2:                                      ; preds = %.lr.ph.i.i.i.i70.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.kh, 3 ; 3 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.next.i.i.i.i.2
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.ks, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i70.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i70.2:                               ; preds = %.lr.ph118.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph118.3

.lr.ph118.3:                                      ; preds = %.lr.ph.i.i.i.i70.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.kh, 4 ; 3 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.next.i.i.i.i.3
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.ku, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i70.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i70.3:                               ; preds = %.lr.ph118.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph118.4

.lr.ph118.4:                                      ; preds = %.lr.ph.i.i.i.i70.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.kh, 5 ; 3 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.next.i.i.i.i.4
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.kw, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i70.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i70.4:                               ; preds = %.lr.ph118.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph118.5

.lr.ph118.5:                                      ; preds = %.lr.ph.i.i.i.i70.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.kh, 6 ; 3 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.next.i.i.i.i.5
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.ky, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i70.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i70.5:                               ; preds = %.lr.ph118.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph118.6

.lr.ph118.6:                                      ; preds = %.lr.ph.i.i.i.i70.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.kh, 7 ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.next.i.i.i.i.6
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.la, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph118:                                        ; preds = %.lr.ph.i.i.i.i70.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.kh, 1 ; 3 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.next.i.i.i.i
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.lc, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i70, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph118.6, %.lr.ph118.5, %.lr.ph118.4, %.lr.ph118.3, %.lr.ph118.2, %.lr.ph118.1, %.lr.ph118
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph118 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph118.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph118.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph118.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph118.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph118.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph118.6 ]
  %.lcssa = phi i64 [ %i.lc, %.lr.ph118 ], [ %i.kq, %.lr.ph118.1 ], [ %i.ks, %.lr.ph118.2 ], [ %i.ku, %.lr.ph118.3 ], [ %i.kw, %.lr.ph118.4 ], [ %i.ky, %.lr.ph118.5 ], [ %i.la, %.lr.ph118.6 ]
  %i.ld = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.au
  %.016.lcssa.i.i.i.i = phi i32 [ %i.ke, %bb.au ], [ %i.ld, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.ko, %bb.au ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.le = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.lf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.lg = trunc nuw nsw i64 %i.lf to i32
  %i.lh = or disjoint i32 %i.le, %i.lg
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit: ; preds = %bb.at, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.lh, %.critedge.i.i.i.i ], [ %i.kd, %bb.at ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.ag, align 8, !tbaa !449
  %.not = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.av:                                            ; preds = %bb.an, %bb.am
  %.pn25 = phi { ptr, i32 } [ %i.fx, %bb.am ], [ %i.ge, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.body

bb.aw:                                            ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit, %._crit_edge
  %i.li = add nuw i64 %.sroa.9.084, 1             ; 2 uses
  %i.lj = load i64, ptr %1, align 8, !tbaa !1176
  %i.lk = icmp ult i64 %i.li, %i.lj
  br i1 %i.lk, label %bb.i, label %._crit_edge87, !llvm.loop !5397

.body:                                            ; preds = %bb.al, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i55, %bb.ak, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i38, %bb.r, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, %bb.av
  %.pn25.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fm, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i55 ], [ %i.eb, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i38 ], [ %i.cn, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ], [ %.pn25, %bb.av ], [ %i.cs, %bb.r ], [ %i.fv, %bb.ak ], [ %i.fw, %bb.al ]
  call void @_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(140) dereferenceable(140) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %.pn25.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvPN7openvdb5v13_05tools16LevelSetMorphingINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_4util15NullInterrupterEE5MorphINS1_4math10UnitaryMapELNSK_20BiasedGradientSchemeE0ELNSK_25TemporalIntegrationSchemeE1EEERKNS5_11LeafManagerISE_E9LeafRangeEESt5_BindIFMSO_FvSU_dESt12_PlaceholderILi1EESZ_ILi2EEdEEE9_M_invokeERKSt9_Any_dataOSP_SU_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_2
begin_hunk_3_@_ZN7openvdb5v13_05tools16LevelSetMorphingINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE5MorphINS0_4math10UnitaryMapELNSJ_20BiasedGradientSchemeE0ELNSJ_25TemporalIntegrationSchemeE2EE5eulerILi0ELi1EEEvRKNS4_11LeafManagerISD_E9LeafRangeEdjjj:bb.a
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !1189
  br label %_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit48

bb.ac:                                            ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit47
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !1184
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !1162
  %i.el = mul i64 %i.ek, %.sroa.9.082
  %i.em = getelementptr [16 x i8], ptr %i.ei, i64 %i.el
  %i.en = getelementptr [16 x i8], ptr %i.em, i64 %i.af
  %i.eo = getelementptr i8, ptr %i.en, i64 -16
  br label %_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit48

_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit48: ; preds = %bb.ac, %bb.ab
  %i.ep = phi ptr [ %i.eg, %bb.ab ], [ %i.eo, %bb.ac ] ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load atomic i32, ptr %i.eq seq_cst, align 4
  %.not.i.i49 = icmp eq i32 %i.er, 0
  br i1 %.not.i.i49, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i50, label %bb.ad

bb.ad:                                            ; preds = %_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit48
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.ep)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i50 unwind label %bb.al

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i50: ; preds = %bb.ad, %_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit48
  %i.es = load ptr, ptr %i.ep, align 8, !tbaa !219 ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i50
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 12 ; 4 uses
  %i.ev = atomicrmw xchg ptr %i.eu, i8 1 seq_cst, align 1
  %i.ew = trunc i8 %i.ev to i1
  br i1 %i.ew, label %.lr.ph.i.i.i.i54, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i51

.lr.ph.i.i.i.i54:                                 ; preds = %bb.ae, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i56
  %.sroa.0.02.i.i.i.i55 = phi i32 [ %.sroa.0.1.i.i.i.i57, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i56 ], [ 1, %bb.ae ] ; 8 uses
  %i.ex = icmp slt i32 %.sroa.0.02.i.i.i.i55, 17
  br i1 %i.ex, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i.i.i.i54
  %i.ey = icmp sgt i32 %.sroa.0.02.i.i.i.i55, 0
  br i1 %i.ey, label %.lr.ph.i.i.i.i.i.i59.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i58

.lr.ph.i.i.i.i.i.i59.preheader:                   ; preds = %bb.af
  %xtraiter124 = and i32 %.sroa.0.02.i.i.i.i55, 7 ; 2 uses
  %lcmp.mod125.not = icmp eq i32 %xtraiter124, 0
  br i1 %lcmp.mod125.not, label %.lr.ph.i.i.i.i.i.i59.prol.loopexit, label %.lr.ph.i.i.i.i.i.i59.prol

.lr.ph.i.i.i.i.i.i59.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i59.preheader, %.lr.ph.i.i.i.i.i.i59.prol
  %.01.i.i.i.i.i.i60.prol = phi i32 [ %i.ez, %.lr.ph.i.i.i.i.i.i59.prol ], [ %.sroa.0.02.i.i.i.i55, %.lr.ph.i.i.i.i.i.i59.preheader ]
  %prol.iter126 = phi i32 [ %prol.iter126.next, %.lr.ph.i.i.i.i.i.i59.prol ], [ 0, %.lr.ph.i.i.i.i.i.i59.preheader ]
  %i.ez = add nsw i32 %.01.i.i.i.i.i.i60.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter126.next = add i32 %prol.iter126, 1   ; 2 uses
  %prol.iter126.cmp.not = icmp eq i32 %prol.iter126.next, %xtraiter124
  br i1 %prol.iter126.cmp.not, label %.lr.ph.i.i.i.i.i.i59.prol.loopexit, label %.lr.ph.i.i.i.i.i.i59.prol, !llvm.loop !5830

.lr.ph.i.i.i.i.i.i59.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i59.prol, %.lr.ph.i.i.i.i.i.i59.preheader
  %.01.i.i.i.i.i.i60.unr = phi i32 [ %.sroa.0.02.i.i.i.i55, %.lr.ph.i.i.i.i.i.i59.preheader ], [ %i.ez, %.lr.ph.i.i.i.i.i.i59.prol ]
  %i.fa = icmp ult i32 %.sroa.0.02.i.i.i.i55, 8
  br i1 %i.fa, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i58, label %.lr.ph.i.i.i.i.i.i59

.lr.ph.i.i.i.i.i.i59:                             ; preds = %.lr.ph.i.i.i.i.i.i59.prol.loopexit, %.lr.ph.i.i.i.i.i.i59
  %.01.i.i.i.i.i.i60 = phi i32 [ %i.fb, %.lr.ph.i.i.i.i.i.i59 ], [ %.01.i.i.i.i.i.i60.unr, %.lr.ph.i.i.i.i.i.i59.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.fb = add nsw i32 %.01.i.i.i.i.i.i60, -8
  call void @llvm.x86.sse2.pause()
  %i.fc = icmp sgt i32 %.01.i.i.i.i.i.i60, 8
  br i1 %i.fc, label %.lr.ph.i.i.i.i.i.i59, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i58, !llvm.loop !9

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i58: ; preds = %.lr.ph.i.i.i.i.i.i59.prol.loopexit, %.lr.ph.i.i.i.i.i.i59, %bb.af
  %i.fd = shl i32 %.sroa.0.02.i.i.i.i55, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i56

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i54
  %i.fe = call noundef i32 @sched_yield() #20     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i56

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i56: ; preds = %bb.ag, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i58
  %.sroa.0.1.i.i.i.i57 = phi i32 [ %i.fd, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i58 ], [ %.sroa.0.02.i.i.i.i55, %bb.ag ]
  %i.ff = atomicrmw xchg ptr %i.eu, i8 1 seq_cst, align 1
  %i.fg = trunc i8 %i.ff to i1
  br i1 %i.fg, label %.lr.ph.i.i.i.i54, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i51, !llvm.loop !10

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i51: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i56, %bb.ae
  %i.fh = load ptr, ptr %i.ep, align 8, !tbaa !219 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.ah, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i52

bb.ah:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i51
  %i.fj = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #29
          to label %bb.ai unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i53 ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.fj, ptr %i.ep, align 8, !tbaa !219
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i52

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i53: ; preds = %bb.ah
  %i.fk = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.eu release, align 1
  br label %.body

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i52: ; preds = %bb.ai, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i51
  %i.fl = phi ptr [ %i.fj, %bb.ai ], [ %i.fh, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i51 ]
  store atomic i8 0, ptr %i.eu release, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i50, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i52
  %i.fm = phi ptr [ %i.fl, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i52 ], [ %i.es, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i50 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.fn = load ptr, ptr %i.z, align 8, !tbaa !1206, !nonnull !223, !align !445
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !1187
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.sroa.9.082
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !1189
  invoke void @_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter") align 8 %7, ptr noundef nonnull align 8 dereferenceable(96) %i.fr)
          to label %.preheader unwind label %bb.am

.preheader:                                       ; preds = %bb.aj
  %i.fs = load i32, ptr %i.ag, align 8, !tbaa !449 ; 2 uses
  %.not81 = icmp eq i32 %i.fs, 512
  br i1 %.not81, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph114.6, %bb.as, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit, %.lr.ph.i.i.i.i68.preheader, %.lr.ph.i.i.i.i68, %.lr.ph.i.i.i.i68.1, %.lr.ph.i.i.i.i68.2, %.lr.ph.i.i.i.i68.3, %.lr.ph.i.i.i.i68.4, %.lr.ph.i.i.i.i68.5, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.aw

bb.ak:                                            ; preds = %bb.v
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.al:                                            ; preds = %bb.ad
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %bb.aj
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.lr.ph:                                           ; preds = %.preheader, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit
  %i.fw = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ], [ %i.fs, %.preheader ] ; 2 uses
  %i.fx = zext i32 %i.fw to i64                   ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.fx ; 2 uses
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !234
  %i.ga = call double @llvm.fabs.f64(double %i.fz)
  %i.gb = fcmp ule double %i.ga, 1.000000e-15
  br i1 %i.gb, label %bb.as, label %bb.ao

bb.an:                                            ; preds = %.noexc65, %bb.ao
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ao:                                            ; preds = %.lr.ph
  %i.gd = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc65 unwind label %bb.an  ; 3 uses

.noexc65:                                         ; preds = %bb.ao
  %i.ge = load i32, ptr %i.ag, align 8, !tbaa !449 ; 4 uses
  %i.gf = lshr i32 %i.ge, 6
  %i.gg = lshr i32 %i.ge, 3
  %i.gh = and i32 %i.gg, 7
  %i.gi = and i32 %i.ge, 7
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 80
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !244
  %i.gl = add nsw i32 %i.gk, %i.gf
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gd, i64 84
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !244
  %i.go = add nsw i32 %i.gn, %i.gh
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gd, i64 88
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !244
  %i.gr = add nsw i32 %i.gq, %i.gi
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.go to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i9.i.i.i = zext i32 %i.gl to i64
  %.sroa.0.0.insert.insert.i10.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i9.i.i.i
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i, ptr %i.ah, align 8
  store i32 %i.gr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !219
  %i.gs = load ptr, ptr %i.ai, align 8, !tbaa !1221
  %i.gt = zext i32 %i.ge to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gt
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !234
  %i.gw = load ptr, ptr %i.aj, align 8, !tbaa !1228
  store double %i.gv, ptr %i.gw, align 8, !tbaa !234
  invoke void @_ZN7openvdb5v13_04math17SevenPointStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(140) %6, ptr noundef nonnull align 4 dereferenceable(12) %i.ah)
          to label %_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit unwind label %bb.an

_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit: ; preds = %.noexc65
  %i.gx = load ptr, ptr %i.aj, align 8, !tbaa !1228 ; 7 uses
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !234 ; 8 uses
  %i.gz = load double, ptr %i.fy, align 8, !tbaa !234
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.hd = load double, ptr %i.an, align 8, !tbaa !234, !noalias !5848
  %i.he = load double, ptr %i.ao, align 8, !tbaa !234, !noalias !5848
  %i.hf = load double, ptr %i.ap, align 8, !tbaa !234, !noalias !5848 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %9 = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  %i.hh = load double, ptr %i.hb, align 8, !tbaa !234, !noalias !5849
  %i.hi = load double, ptr %i.ha, align 8, !tbaa !234, !noalias !5849
  %i.hj = load double, ptr %i.hc, align 8, !tbaa !234, !noalias !5849
  %i.hk = fsub double %i.hh, %i.gy
  %i.hl = fsub double %i.hi, %i.gy
  %i.hm = fsub double %i.hj, %i.gy                ; 2 uses
  %i.hn = load <2 x double>, ptr %i.ak, align 8, !tbaa !234, !noalias !5848 ; 2 uses
  %i.ho = load <2 x double>, ptr %i.al, align 8, !tbaa !234, !noalias !5848 ; 2 uses
  %i.hp = insertelement <2 x double> poison, double %i.hk, i64 0 ; 2 uses
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hr = fmul <2 x double> %i.hq, %i.ho
  %i.hs = insertelement <2 x double> poison, double %i.hl, i64 0 ; 2 uses
  %i.ht = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.hn, <2 x double> %i.hr)
  %i.hv = load <2 x double>, ptr %i.am, align 8, !tbaa !234, !noalias !5848 ; 2 uses
  %i.hw = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hx, <2 x double> %i.hv, <2 x double> %i.hu) ; 4 uses
  %10 = load double, ptr %9, align 8, !tbaa !234, !noalias !5850
  %11 = load double, ptr %8, align 8, !tbaa !234, !noalias !5850
  %12 = load double, ptr %i.hg, align 8, !tbaa !234, !noalias !5850
  %13 = fsub double %10, %i.gy
  %14 = fsub double %11, %i.gy
  %15 = fsub double %12, %i.gy
  %16 = fneg double %13                           ; 2 uses
  %17 = fneg double %14                           ; 2 uses
  %18 = fneg double %15                           ; 2 uses
  %19 = insertelement <2 x double> poison, double %16, i64 0
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = fmul <2 x double> %i.ho, %20
  %21 = insertelement <2 x double> poison, double %17, i64 0
  %i.ia = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> %i.hn, <2 x double> %i.hz)
  %22 = insertelement <2 x double> poison, double %18, i64 0
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ic = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> %i.hv, <2 x double> %i.ib) ; 4 uses
  %i.id = insertelement <2 x double> %i.hp, double %16, i64 1
  %i.ie = insertelement <2 x double> poison, double %i.he, i64 0
  %i.if = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ig = fmul <2 x double> %i.id, %i.if
  %i.ih = insertelement <2 x double> %i.hs, double %17, i64 1
  %i.ii = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.ij = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ik = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ih, <2 x double> %i.ij, <2 x double> %i.ig) ; 2 uses
  %i.il = extractelement <2 x double> %i.ik, i64 0
  %i.im = call double @llvm.fmuladd.f64(double %i.hm, double %i.hf, double %i.il) ; 3 uses
  %i.in = extractelement <2 x double> %i.ik, i64 1
  %i.io = call double @llvm.fmuladd.f64(double %18, double %i.hf, double %i.in) ; 4 uses
  %i.ip = fcmp ogt double %i.gy, 0.000000e+00
  br i1 %i.ip, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit
  %i.iq = fcmp olt <2 x double> %i.ic, zeroinitializer
  %i.ir = select <2 x i1> %i.iq, <2 x double> zeroinitializer, <2 x double> %i.ic ; 2 uses
  %i.is = fmul <2 x double> %i.ir, %i.ir          ; 2 uses
  %i.it = fcmp ogt <2 x double> %i.hy, zeroinitializer
  %i.iu = select <2 x i1> %i.it, <2 x double> zeroinitializer, <2 x double> %i.hy ; 2 uses
  %i.iv = fmul <2 x double> %i.iu, %i.iu          ; 2 uses
  %i.iw = fcmp olt <2 x double> %i.is, %i.iv
  %i.ix = select <2 x i1> %i.iw, <2 x double> %i.iv, <2 x double> %i.is
  %i.iy = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ix)
  %i.iz = fcmp olt double %i.io, 0.000000e+00
  %.sroa.speculated80.i.i.i = select i1 %i.iz, double 0.000000e+00, double %i.io ; 2 uses
  %i.ja = fmul double %.sroa.speculated80.i.i.i, %.sroa.speculated80.i.i.i
  %i.jb = fcmp ogt double %i.im, 0.000000e+00
  br label %bb.ar

bb.aq:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit
  %i.jc = fcmp ogt <2 x double> %i.ic, zeroinitializer
  %i.jd = fcmp olt <2 x double> %i.hy, zeroinitializer
  %i.je = select <2 x i1> %i.jc, <2 x double> zeroinitializer, <2 x double> %i.ic ; 2 uses
  %i.jf = fmul <2 x double> %i.je, %i.je          ; 2 uses
  %i.jg = select <2 x i1> %i.jd, <2 x double> zeroinitializer, <2 x double> %i.hy ; 2 uses
  %i.jh = fmul <2 x double> %i.jg, %i.jg          ; 2 uses
  %i.ji = fcmp olt <2 x double> %i.jf, %i.jh
  %i.jj = select <2 x i1> %i.ji, <2 x double> %i.jh, <2 x double> %i.jf
  %i.jk = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.jj)
  %i.jl = fcmp ogt double %i.io, 0.000000e+00
  %.sroa.speculated62.i.i.i = select i1 %i.jl, double 0.000000e+00, double %i.io ; 2 uses
  %i.jm = fmul double %.sroa.speculated62.i.i.i, %.sroa.speculated62.i.i.i
  %i.jn = fcmp olt double %i.im, 0.000000e+00
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sink113.i.i.i = phi i1 [ %i.jn, %bb.aq ], [ %i.jb, %bb.ap ]
  %.sink110.i.i.i = phi double [ %i.jm, %bb.aq ], [ %i.ja, %bb.ap ] ; 2 uses
  %.sink.i.i.i = phi double [ %i.jk, %bb.aq ], [ %i.iy, %bb.ap ]
  %.sroa.speculated59.i.i.i = select i1 %.sink113.i.i.i, double 0.000000e+00, double %i.im ; 2 uses
  %i.jo = fmul double %.sroa.speculated59.i.i.i, %.sroa.speculated59.i.i.i ; 2 uses
  %i.jp = fcmp olt double %.sink110.i.i.i, %i.jo
  %.sroa.speculated.i.i.i = select i1 %i.jp, double %i.jo, double %.sink110.i.i.i
  %i.jq = fadd double %.sink.i.i.i, %.sroa.speculated.i.i.i
  %i.jr = fneg double %i.gz
  %i.js = fmul double %2, %i.jr
  %i.jt = call double @llvm.fmuladd.f64(double %i.js, double %i.jq, double %i.gy)
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fx
  store double %i.jt, ptr %i.ju, align 8, !tbaa !234
  %.pre = load i32, ptr %i.ag, align 8, !tbaa !449
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %bb.ar
  %i.jv = phi i32 [ %i.fw, %.lr.ph ], [ %.pre, %bb.ar ]
  %i.jw = load ptr, ptr %i.aq, align 8, !tbaa !467 ; 8 uses
  %i.jx = add i32 %i.jv, 1                        ; 4 uses
  %i.jy = lshr i32 %i.jx, 6                       ; 3 uses
  %i.jz = icmp ugt i32 %i.jx, 511
  br i1 %i.jz, label %._crit_edge, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ka = and i32 %i.jx, 63
  %i.kb = zext nneg i32 %i.jy to i64              ; 8 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.kb
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !266 ; 2 uses
  %i.ke = zext nneg i32 %i.ka to i64              ; 2 uses
  %i.kf = shl nuw i64 1, %i.ke
  %i.kg = and i64 %i.kd, %i.kf
  %.not.i.i.i.i67 = icmp eq i64 %i.kg, 0
  br i1 %.not.i.i.i.i67, label %bb.au, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

bb.au:                                            ; preds = %bb.at
  %i.kh = shl nsw i64 -1, %i.ke
  %i.ki = and i64 %i.kd, %i.kh                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.ki, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i68.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i68.preheader:                       ; preds = %bb.au
  %exitcond.not.i.i.i.i112 = icmp eq i32 %i.jy, 7
  br i1 %exitcond.not.i.i.i.i112, label %._crit_edge, label %.lr.ph114

.lr.ph.i.i.i.i68:                                 ; preds = %.lr.ph114
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph114.1

.lr.ph114.1:                                      ; preds = %.lr.ph.i.i.i.i68
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.kb, 2 ; 3 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i.i.i.i.1
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.kk, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i68.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i68.1:                               ; preds = %.lr.ph114.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph114.2

.lr.ph114.2:                                      ; preds = %.lr.ph.i.i.i.i68.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.kb, 3 ; 3 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i.i.i.i.2
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.km, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i68.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i68.2:                               ; preds = %.lr.ph114.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph114.3

.lr.ph114.3:                                      ; preds = %.lr.ph.i.i.i.i68.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.kb, 4 ; 3 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i.i.i.i.3
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.ko, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i68.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i68.3:                               ; preds = %.lr.ph114.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph114.4

.lr.ph114.4:                                      ; preds = %.lr.ph.i.i.i.i68.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.kb, 5 ; 3 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i.i.i.i.4
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.kq, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i68.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i68.4:                               ; preds = %.lr.ph114.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph114.5

.lr.ph114.5:                                      ; preds = %.lr.ph.i.i.i.i68.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.kb, 6 ; 3 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i.i.i.i.5
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.ks, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i68.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i68.5:                               ; preds = %.lr.ph114.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph114.6

.lr.ph114.6:                                      ; preds = %.lr.ph.i.i.i.i68.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.kb, 7 ; 2 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i.i.i.i.6
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.ku, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph114:                                        ; preds = %.lr.ph.i.i.i.i68.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.kb, 1 ; 3 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i.i.i.i
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.kw, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i68, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph114.6, %.lr.ph114.5, %.lr.ph114.4, %.lr.ph114.3, %.lr.ph114.2, %.lr.ph114.1, %.lr.ph114
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph114 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph114.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph114.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph114.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph114.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph114.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph114.6 ]
  %.lcssa = phi i64 [ %i.kw, %.lr.ph114 ], [ %i.kk, %.lr.ph114.1 ], [ %i.km, %.lr.ph114.2 ], [ %i.ko, %.lr.ph114.3 ], [ %i.kq, %.lr.ph114.4 ], [ %i.ks, %.lr.ph114.5 ], [ %i.ku, %.lr.ph114.6 ]
  %i.kx = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.au
  %.016.lcssa.i.i.i.i = phi i32 [ %i.jy, %bb.au ], [ %i.kx, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.ki, %bb.au ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.ky = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.kz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.la = trunc nuw nsw i64 %i.kz to i32
  %i.lb = or disjoint i32 %i.ky, %i.la
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit: ; preds = %bb.at, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.lb, %.critedge.i.i.i.i ], [ %i.jx, %bb.at ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.ag, align 8, !tbaa !449
  %.not = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.av:                                            ; preds = %bb.an, %bb.am
  %.pn23 = phi { ptr, i32 } [ %i.fv, %bb.am ], [ %i.gc, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.body

bb.aw:                                            ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit, %._crit_edge
  %i.lc = add nuw i64 %.sroa.9.082, 1             ; 2 uses
  %i.ld = load i64, ptr %1, align 8, !tbaa !1176
  %i.le = icmp ult i64 %i.lc, %i.ld
  br i1 %i.le, label %bb.i, label %._crit_edge85, !llvm.loop !5847

.body:                                            ; preds = %bb.al, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i53, %bb.ak, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i36, %bb.r, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, %bb.av
  %.pn23.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fk, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i53 ], [ %i.eb, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i36 ], [ %i.cn, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ], [ %.pn23, %bb.av ], [ %i.cs, %bb.r ], [ %i.ft, %bb.ak ], [ %i.fu, %bb.al ]
  call void @_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(140) dereferenceable(140) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %.pn23.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvPN7openvdb5v13_05tools16LevelSetMorphingINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_4util15NullInterrupterEE5MorphINS1_4math10UnitaryMapELNSK_20BiasedGradientSchemeE0ELNSK_25TemporalIntegrationSchemeE2EEERKNS5_11LeafManagerISE_E9LeafRangeEESt5_BindIFMSO_FvSU_djESt12_PlaceholderILi1EESZ_ILi2EEdiEEE9_M_invokeERKSt9_Any_dataOSP_SU_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1482   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1489
  %.unpack.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !219 ; 3 uses
  %.elt5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_3
begin_hunk_4_@_ZN7openvdb5v13_05tools16LevelSetMorphingINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE5MorphINS0_4math10UnitaryMapELNSJ_20BiasedGradientSchemeE0ELNSJ_25TemporalIntegrationSchemeE2EE5eulerILi3ELi4EEEvRKNS4_11LeafManagerISD_E9LeafRangeEdjjj:bb.a
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !1189
  br label %_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit50

bb.ac:                                            ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit49
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 56
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !1184
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.em = load i64, ptr %i.el, align 8, !tbaa !1162
  %i.en = mul i64 %i.em, %.sroa.9.084
  %i.eo = getelementptr [16 x i8], ptr %i.ek, i64 %i.en
  %i.ep = getelementptr [16 x i8], ptr %i.eo, i64 %i.af
  %i.eq = getelementptr i8, ptr %i.ep, i64 -16
  br label %_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit50

_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit50: ; preds = %bb.ac, %bb.ab
  %i.er = phi ptr [ %i.ei, %bb.ab ], [ %i.eq, %bb.ac ] ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load atomic i32, ptr %i.es seq_cst, align 4
  %.not.i.i51 = icmp eq i32 %i.et, 0
  br i1 %.not.i.i51, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i52, label %bb.ad

bb.ad:                                            ; preds = %_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit50
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.er)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i52 unwind label %bb.al

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i52: ; preds = %bb.ad, %_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit50
  %i.eu = load ptr, ptr %i.er, align 8, !tbaa !219 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i52
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 12 ; 4 uses
  %i.ex = atomicrmw xchg ptr %i.ew, i8 1 seq_cst, align 1
  %i.ey = trunc i8 %i.ex to i1
  br i1 %i.ey, label %.lr.ph.i.i.i.i56, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i53

.lr.ph.i.i.i.i56:                                 ; preds = %bb.ae, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i58
  %.sroa.0.02.i.i.i.i57 = phi i32 [ %.sroa.0.1.i.i.i.i59, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i58 ], [ 1, %bb.ae ] ; 8 uses
  %i.ez = icmp slt i32 %.sroa.0.02.i.i.i.i57, 17
  br i1 %i.ez, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i.i.i.i56
  %i.fa = icmp sgt i32 %.sroa.0.02.i.i.i.i57, 0
  br i1 %i.fa, label %.lr.ph.i.i.i.i.i.i61.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i60

.lr.ph.i.i.i.i.i.i61.preheader:                   ; preds = %bb.af
  %xtraiter128 = and i32 %.sroa.0.02.i.i.i.i57, 7 ; 2 uses
  %lcmp.mod129.not = icmp eq i32 %xtraiter128, 0
  br i1 %lcmp.mod129.not, label %.lr.ph.i.i.i.i.i.i61.prol.loopexit, label %.lr.ph.i.i.i.i.i.i61.prol

.lr.ph.i.i.i.i.i.i61.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i61.preheader, %.lr.ph.i.i.i.i.i.i61.prol
  %.01.i.i.i.i.i.i62.prol = phi i32 [ %i.fb, %.lr.ph.i.i.i.i.i.i61.prol ], [ %.sroa.0.02.i.i.i.i57, %.lr.ph.i.i.i.i.i.i61.preheader ]
  %prol.iter130 = phi i32 [ %prol.iter130.next, %.lr.ph.i.i.i.i.i.i61.prol ], [ 0, %.lr.ph.i.i.i.i.i.i61.preheader ]
  %i.fb = add nsw i32 %.01.i.i.i.i.i.i62.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter130.next = add i32 %prol.iter130, 1   ; 2 uses
  %prol.iter130.cmp.not = icmp eq i32 %prol.iter130.next, %xtraiter128
  br i1 %prol.iter130.cmp.not, label %.lr.ph.i.i.i.i.i.i61.prol.loopexit, label %.lr.ph.i.i.i.i.i.i61.prol, !llvm.loop !5869

.lr.ph.i.i.i.i.i.i61.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i61.prol, %.lr.ph.i.i.i.i.i.i61.preheader
  %.01.i.i.i.i.i.i62.unr = phi i32 [ %.sroa.0.02.i.i.i.i57, %.lr.ph.i.i.i.i.i.i61.preheader ], [ %i.fb, %.lr.ph.i.i.i.i.i.i61.prol ]
  %i.fc = icmp ult i32 %.sroa.0.02.i.i.i.i57, 8
  br i1 %i.fc, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i60, label %.lr.ph.i.i.i.i.i.i61

.lr.ph.i.i.i.i.i.i61:                             ; preds = %.lr.ph.i.i.i.i.i.i61.prol.loopexit, %.lr.ph.i.i.i.i.i.i61
  %.01.i.i.i.i.i.i62 = phi i32 [ %i.fd, %.lr.ph.i.i.i.i.i.i61 ], [ %.01.i.i.i.i.i.i62.unr, %.lr.ph.i.i.i.i.i.i61.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.fd = add nsw i32 %.01.i.i.i.i.i.i62, -8
  call void @llvm.x86.sse2.pause()
  %i.fe = icmp sgt i32 %.01.i.i.i.i.i.i62, 8
  br i1 %i.fe, label %.lr.ph.i.i.i.i.i.i61, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i60, !llvm.loop !9

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i60: ; preds = %.lr.ph.i.i.i.i.i.i61.prol.loopexit, %.lr.ph.i.i.i.i.i.i61, %bb.af
  %i.ff = shl i32 %.sroa.0.02.i.i.i.i57, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i58

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i56
  %i.fg = call noundef i32 @sched_yield() #20     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i58

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i58: ; preds = %bb.ag, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i60
  %.sroa.0.1.i.i.i.i59 = phi i32 [ %i.ff, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i60 ], [ %.sroa.0.02.i.i.i.i57, %bb.ag ]
  %i.fh = atomicrmw xchg ptr %i.ew, i8 1 seq_cst, align 1
  %i.fi = trunc i8 %i.fh to i1
  br i1 %i.fi, label %.lr.ph.i.i.i.i56, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i53, !llvm.loop !10

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i53: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i58, %bb.ae
  %i.fj = load ptr, ptr %i.er, align 8, !tbaa !219 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %bb.ah, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i54

bb.ah:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i53
  %i.fl = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #29
          to label %bb.ai unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i55 ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.fl, ptr %i.er, align 8, !tbaa !219
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i54

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i55: ; preds = %bb.ah
  %i.fm = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.ew release, align 1
  br label %.body

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i54: ; preds = %bb.ai, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i53
  %i.fn = phi ptr [ %i.fl, %bb.ai ], [ %i.fj, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i53 ]
  store atomic i8 0, ptr %i.ew release, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i52, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i54
  %i.fo = phi ptr [ %i.fn, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i54 ], [ %i.eu, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i52 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.fp = load ptr, ptr %i.z, align 8, !tbaa !1206, !nonnull !223, !align !445
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !1187
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.sroa.9.084
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !1189
  invoke void @_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter") align 8 %7, ptr noundef nonnull align 8 dereferenceable(96) %i.ft)
          to label %.preheader unwind label %bb.am

.preheader:                                       ; preds = %bb.aj
  %i.fu = load i32, ptr %i.ag, align 8, !tbaa !449 ; 2 uses
  %.not83 = icmp eq i32 %i.fu, 512
  br i1 %.not83, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph118.6, %bb.as, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit, %.lr.ph.i.i.i.i70.preheader, %.lr.ph.i.i.i.i70, %.lr.ph.i.i.i.i70.1, %.lr.ph.i.i.i.i70.2, %.lr.ph.i.i.i.i70.3, %.lr.ph.i.i.i.i70.4, %.lr.ph.i.i.i.i70.5, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.aw

bb.ak:                                            ; preds = %bb.v
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.al:                                            ; preds = %bb.ad
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %bb.aj
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.lr.ph:                                           ; preds = %.preheader, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit
  %i.fy = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ], [ %i.fu, %.preheader ] ; 2 uses
  %i.fz = zext i32 %i.fy to i64                   ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.fz ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !234
  %i.gc = call double @llvm.fabs.f64(double %i.gb)
  %i.gd = fcmp ule double %i.gc, 1.000000e-15
  br i1 %i.gd, label %bb.as, label %bb.ao

bb.an:                                            ; preds = %.noexc67, %bb.ao
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ao:                                            ; preds = %.lr.ph
  %i.gf = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc67 unwind label %bb.an  ; 3 uses

.noexc67:                                         ; preds = %bb.ao
  %i.gg = load i32, ptr %i.ag, align 8, !tbaa !449 ; 4 uses
  %i.gh = lshr i32 %i.gg, 6
  %i.gi = lshr i32 %i.gg, 3
  %i.gj = and i32 %i.gi, 7
  %i.gk = and i32 %i.gg, 7
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 80
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !244
  %i.gn = add nsw i32 %i.gm, %i.gh
  %i.go = getelementptr inbounds nuw i8, ptr %i.gf, i64 84
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !244
  %i.gq = add nsw i32 %i.gp, %i.gj
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gf, i64 88
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !244
  %i.gt = add nsw i32 %i.gs, %i.gk
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.gq to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i9.i.i.i = zext i32 %i.gn to i64
  %.sroa.0.0.insert.insert.i10.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i9.i.i.i
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i, ptr %i.ah, align 8
  store i32 %i.gt, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !219
  %i.gu = load ptr, ptr %i.ai, align 8, !tbaa !1221
  %i.gv = zext i32 %i.gg to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.gv
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !234
  %i.gy = load ptr, ptr %i.aj, align 8, !tbaa !1228
  store double %i.gx, ptr %i.gy, align 8, !tbaa !234
  invoke void @_ZN7openvdb5v13_04math17SevenPointStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(140) %6, ptr noundef nonnull align 4 dereferenceable(12) %i.ah)
          to label %_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit unwind label %bb.an

_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit: ; preds = %.noexc67
  %i.gz = load ptr, ptr %i.aj, align 8, !tbaa !1228 ; 7 uses
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !234 ; 8 uses
  %i.hb = load double, ptr %i.ga, align 8, !tbaa !234
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hf = load double, ptr %i.an, align 8, !tbaa !234, !noalias !5887
  %i.hg = load double, ptr %i.ao, align 8, !tbaa !234, !noalias !5887
  %i.hh = load double, ptr %i.ap, align 8, !tbaa !234, !noalias !5887 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %9 = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  %i.hj = load double, ptr %i.hd, align 8, !tbaa !234, !noalias !5888
  %i.hk = load double, ptr %i.hc, align 8, !tbaa !234, !noalias !5888
  %i.hl = load double, ptr %i.he, align 8, !tbaa !234, !noalias !5888
  %i.hm = fsub double %i.hj, %i.ha
  %i.hn = fsub double %i.hk, %i.ha
  %i.ho = fsub double %i.hl, %i.ha                ; 2 uses
  %i.hp = load <2 x double>, ptr %i.ak, align 8, !tbaa !234, !noalias !5887 ; 2 uses
  %i.hq = load <2 x double>, ptr %i.al, align 8, !tbaa !234, !noalias !5887 ; 2 uses
  %i.hr = insertelement <2 x double> poison, double %i.hm, i64 0 ; 2 uses
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ht = fmul <2 x double> %i.hs, %i.hq
  %i.hu = insertelement <2 x double> poison, double %i.hn, i64 0 ; 2 uses
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.hp, <2 x double> %i.ht)
  %i.hx = load <2 x double>, ptr %i.am, align 8, !tbaa !234, !noalias !5887 ; 2 uses
  %i.hy = insertelement <2 x double> poison, double %i.ho, i64 0
  %i.hz = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> %i.hx, <2 x double> %i.hw) ; 4 uses
  %10 = load double, ptr %9, align 8, !tbaa !234, !noalias !5889
  %11 = load double, ptr %8, align 8, !tbaa !234, !noalias !5889
  %12 = load double, ptr %i.hi, align 8, !tbaa !234, !noalias !5889
  %13 = fsub double %10, %i.ha
  %14 = fsub double %11, %i.ha
  %15 = fsub double %12, %i.ha
  %16 = fneg double %13                           ; 2 uses
  %17 = fneg double %14                           ; 2 uses
  %18 = fneg double %15                           ; 2 uses
  %19 = insertelement <2 x double> poison, double %16, i64 0
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = fmul <2 x double> %i.hq, %20
  %21 = insertelement <2 x double> poison, double %17, i64 0
  %i.ic = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer
  %i.id = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ic, <2 x double> %i.hp, <2 x double> %i.ib)
  %22 = insertelement <2 x double> poison, double %18, i64 0
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ie = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> %i.hx, <2 x double> %i.id) ; 4 uses
  %i.if = insertelement <2 x double> %i.hr, double %16, i64 1
  %i.ig = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.ih = shufflevector <2 x double> %i.ig, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ii = fmul <2 x double> %i.if, %i.ih
  %i.ij = insertelement <2 x double> %i.hu, double %17, i64 1
  %i.ik = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.il = shufflevector <2 x double> %i.ik, <2 x double> poison, <2 x i32> zeroinitializer
  %i.im = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ij, <2 x double> %i.il, <2 x double> %i.ii) ; 2 uses
  %i.in = extractelement <2 x double> %i.im, i64 0
  %i.io = call double @llvm.fmuladd.f64(double %i.ho, double %i.hh, double %i.in) ; 3 uses
  %i.ip = extractelement <2 x double> %i.im, i64 1
  %i.iq = call double @llvm.fmuladd.f64(double %18, double %i.hh, double %i.ip) ; 4 uses
  %i.ir = fcmp ogt double %i.ha, 0.000000e+00
  br i1 %i.ir, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit
  %i.is = fcmp olt <2 x double> %i.ie, zeroinitializer
  %i.it = select <2 x i1> %i.is, <2 x double> zeroinitializer, <2 x double> %i.ie ; 2 uses
  %i.iu = fmul <2 x double> %i.it, %i.it          ; 2 uses
  %i.iv = fcmp ogt <2 x double> %i.ia, zeroinitializer
  %i.iw = select <2 x i1> %i.iv, <2 x double> zeroinitializer, <2 x double> %i.ia ; 2 uses
  %i.ix = fmul <2 x double> %i.iw, %i.iw          ; 2 uses
  %i.iy = fcmp olt <2 x double> %i.iu, %i.ix
  %i.iz = select <2 x i1> %i.iy, <2 x double> %i.ix, <2 x double> %i.iu
  %i.ja = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.iz)
  %i.jb = fcmp olt double %i.iq, 0.000000e+00
  %.sroa.speculated80.i.i.i = select i1 %i.jb, double 0.000000e+00, double %i.iq ; 2 uses
  %i.jc = fmul double %.sroa.speculated80.i.i.i, %.sroa.speculated80.i.i.i
  %i.jd = fcmp ogt double %i.io, 0.000000e+00
  br label %bb.ar

bb.aq:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit
  %i.je = fcmp ogt <2 x double> %i.ie, zeroinitializer
  %i.jf = fcmp olt <2 x double> %i.ia, zeroinitializer
  %i.jg = select <2 x i1> %i.je, <2 x double> zeroinitializer, <2 x double> %i.ie ; 2 uses
  %i.jh = fmul <2 x double> %i.jg, %i.jg          ; 2 uses
  %i.ji = select <2 x i1> %i.jf, <2 x double> zeroinitializer, <2 x double> %i.ia ; 2 uses
  %i.jj = fmul <2 x double> %i.ji, %i.ji          ; 2 uses
  %i.jk = fcmp olt <2 x double> %i.jh, %i.jj
  %i.jl = select <2 x i1> %i.jk, <2 x double> %i.jj, <2 x double> %i.jh
  %i.jm = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.jl)
  %i.jn = fcmp ogt double %i.iq, 0.000000e+00
  %.sroa.speculated62.i.i.i = select i1 %i.jn, double 0.000000e+00, double %i.iq ; 2 uses
  %i.jo = fmul double %.sroa.speculated62.i.i.i, %.sroa.speculated62.i.i.i
  %i.jp = fcmp olt double %i.io, 0.000000e+00
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sink113.i.i.i = phi i1 [ %i.jp, %bb.aq ], [ %i.jd, %bb.ap ]
  %.sink110.i.i.i = phi double [ %i.jo, %bb.aq ], [ %i.jc, %bb.ap ] ; 2 uses
  %.sink.i.i.i = phi double [ %i.jm, %bb.aq ], [ %i.ja, %bb.ap ]
  %.sroa.speculated59.i.i.i = select i1 %.sink113.i.i.i, double 0.000000e+00, double %i.io ; 2 uses
  %i.jq = fmul double %.sroa.speculated59.i.i.i, %.sroa.speculated59.i.i.i ; 2 uses
  %i.jr = fcmp olt double %.sink110.i.i.i, %i.jq
  %.sroa.speculated.i.i.i = select i1 %i.jr, double %i.jq, double %.sink110.i.i.i
  %i.js = fadd double %.sink.i.i.i, %.sroa.speculated.i.i.i
  %i.jt = fneg double %i.hb
  %i.ju = fmul double %2, %i.jt
  %i.jv = call double @llvm.fmuladd.f64(double %i.ju, double %i.js, double %i.ha)
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.fz
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !234
  %i.jy = fmul double %i.jv, 2.500000e-01
  %i.jz = call double @llvm.fmuladd.f64(double %i.jx, double 7.500000e-01, double %i.jy)
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fz
  store double %i.jz, ptr %i.ka, align 8, !tbaa !234
  %.pre = load i32, ptr %i.ag, align 8, !tbaa !449
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %bb.ar
  %i.kb = phi i32 [ %i.fy, %.lr.ph ], [ %.pre, %bb.ar ]
  %i.kc = load ptr, ptr %i.aq, align 8, !tbaa !467 ; 8 uses
  %i.kd = add i32 %i.kb, 1                        ; 4 uses
  %i.ke = lshr i32 %i.kd, 6                       ; 3 uses
  %i.kf = icmp ugt i32 %i.kd, 511
  br i1 %i.kf, label %._crit_edge, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kg = and i32 %i.kd, 63
  %i.kh = zext nneg i32 %i.ke to i64              ; 8 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.kh
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !266 ; 2 uses
  %i.kk = zext nneg i32 %i.kg to i64              ; 2 uses
  %i.kl = shl nuw i64 1, %i.kk
  %i.km = and i64 %i.kj, %i.kl
  %.not.i.i.i.i69 = icmp eq i64 %i.km, 0
  br i1 %.not.i.i.i.i69, label %bb.au, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

bb.au:                                            ; preds = %bb.at
  %i.kn = shl nsw i64 -1, %i.kk
  %i.ko = and i64 %i.kj, %i.kn                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.ko, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i70.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i70.preheader:                       ; preds = %bb.au
  %exitcond.not.i.i.i.i116 = icmp eq i32 %i.ke, 7
  br i1 %exitcond.not.i.i.i.i116, label %._crit_edge, label %.lr.ph118

.lr.ph.i.i.i.i70:                                 ; preds = %.lr.ph118
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph118.1

.lr.ph118.1:                                      ; preds = %.lr.ph.i.i.i.i70
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.kh, 2 ; 3 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.next.i.i.i.i.1
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.kq, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i70.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i70.1:                               ; preds = %.lr.ph118.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph118.2

.lr.ph118.2:                                      ; preds = %.lr.ph.i.i.i.i70.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.kh, 3 ; 3 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.next.i.i.i.i.2
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.ks, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i70.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i70.2:                               ; preds = %.lr.ph118.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph118.3

.lr.ph118.3:                                      ; preds = %.lr.ph.i.i.i.i70.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.kh, 4 ; 3 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.next.i.i.i.i.3
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.ku, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i70.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i70.3:                               ; preds = %.lr.ph118.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph118.4

.lr.ph118.4:                                      ; preds = %.lr.ph.i.i.i.i70.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.kh, 5 ; 3 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.next.i.i.i.i.4
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.kw, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i70.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i70.4:                               ; preds = %.lr.ph118.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph118.5

.lr.ph118.5:                                      ; preds = %.lr.ph.i.i.i.i70.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.kh, 6 ; 3 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.next.i.i.i.i.5
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.ky, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i70.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i70.5:                               ; preds = %.lr.ph118.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph118.6

.lr.ph118.6:                                      ; preds = %.lr.ph.i.i.i.i70.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.kh, 7 ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.next.i.i.i.i.6
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.la, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph118:                                        ; preds = %.lr.ph.i.i.i.i70.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.kh, 1 ; 3 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.next.i.i.i.i
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.lc, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i70, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph118.6, %.lr.ph118.5, %.lr.ph118.4, %.lr.ph118.3, %.lr.ph118.2, %.lr.ph118.1, %.lr.ph118
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph118 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph118.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph118.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph118.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph118.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph118.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph118.6 ]
  %.lcssa = phi i64 [ %i.lc, %.lr.ph118 ], [ %i.kq, %.lr.ph118.1 ], [ %i.ks, %.lr.ph118.2 ], [ %i.ku, %.lr.ph118.3 ], [ %i.kw, %.lr.ph118.4 ], [ %i.ky, %.lr.ph118.5 ], [ %i.la, %.lr.ph118.6 ]
  %i.ld = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.au
  %.016.lcssa.i.i.i.i = phi i32 [ %i.ke, %bb.au ], [ %i.ld, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.ko, %bb.au ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.le = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.lf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.lg = trunc nuw nsw i64 %i.lf to i32
  %i.lh = or disjoint i32 %i.le, %i.lg
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit: ; preds = %bb.at, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.lh, %.critedge.i.i.i.i ], [ %i.kd, %bb.at ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.ag, align 8, !tbaa !449
  %.not = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.av:                                            ; preds = %bb.an, %bb.am
  %.pn25 = phi { ptr, i32 } [ %i.fx, %bb.am ], [ %i.ge, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.body

bb.aw:                                            ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit, %._crit_edge
  %i.li = add nuw i64 %.sroa.9.084, 1             ; 2 uses
  %i.lj = load i64, ptr %1, align 8, !tbaa !1176
  %i.lk = icmp ult i64 %i.li, %i.lj
  br i1 %i.lk, label %bb.i, label %._crit_edge87, !llvm.loop !5886

.body:                                            ; preds = %bb.al, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i55, %bb.ak, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i38, %bb.r, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, %bb.av
  %.pn25.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fm, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i55 ], [ %i.eb, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i38 ], [ %i.cn, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ], [ %.pn25, %bb.av ], [ %i.cs, %bb.r ], [ %i.fv, %bb.ak ], [ %i.fw, %bb.al ]
  call void @_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(140) dereferenceable(140) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %.pn25.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvPN7openvdb5v13_05tools16LevelSetMorphingINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_4util15NullInterrupterEE5MorphINS1_4math10UnitaryMapELNSK_20BiasedGradientSchemeE0ELNSK_25TemporalIntegrationSchemeE2EEERKNS5_11LeafManagerISE_E9LeafRangeEESt5_BindIFMSO_FvSU_dESt12_PlaceholderILi1EESZ_ILi2EEdEEE9_M_invokeERKSt9_Any_dataOSP_SU_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_4
begin_hunk_5_@_ZN7openvdb5v13_05tools16LevelSetMorphingINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE5MorphINS0_4math10UnitaryMapELNSJ_20BiasedGradientSchemeE0ELNSJ_25TemporalIntegrationSchemeE2EE5eulerILi1ELi3EEEvRKNS4_11LeafManagerISD_E9LeafRangeEdjjj:bb.a
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !1189
  br label %_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit50

bb.ac:                                            ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit49
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 56
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !1184
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.em = load i64, ptr %i.el, align 8, !tbaa !1162
  %i.en = mul i64 %i.em, %.sroa.9.084
  %i.eo = getelementptr [16 x i8], ptr %i.ek, i64 %i.en
  %i.ep = getelementptr [16 x i8], ptr %i.eo, i64 %i.af
  %i.eq = getelementptr i8, ptr %i.ep, i64 -16
  br label %_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit50

_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit50: ; preds = %bb.ac, %bb.ab
  %i.er = phi ptr [ %i.ei, %bb.ab ], [ %i.eq, %bb.ac ] ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load atomic i32, ptr %i.es seq_cst, align 4
  %.not.i.i51 = icmp eq i32 %i.et, 0
  br i1 %.not.i.i51, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i52, label %bb.ad

bb.ad:                                            ; preds = %_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit50
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.er)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i52 unwind label %bb.al

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i52: ; preds = %bb.ad, %_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRange8Iterator6bufferEm.exit50
  %i.eu = load ptr, ptr %i.er, align 8, !tbaa !219 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i52
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 12 ; 4 uses
  %i.ex = atomicrmw xchg ptr %i.ew, i8 1 seq_cst, align 1
  %i.ey = trunc i8 %i.ex to i1
  br i1 %i.ey, label %.lr.ph.i.i.i.i56, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i53

.lr.ph.i.i.i.i56:                                 ; preds = %bb.ae, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i58
  %.sroa.0.02.i.i.i.i57 = phi i32 [ %.sroa.0.1.i.i.i.i59, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i58 ], [ 1, %bb.ae ] ; 8 uses
  %i.ez = icmp slt i32 %.sroa.0.02.i.i.i.i57, 17
  br i1 %i.ez, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i.i.i.i56
  %i.fa = icmp sgt i32 %.sroa.0.02.i.i.i.i57, 0
  br i1 %i.fa, label %.lr.ph.i.i.i.i.i.i61.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i60

.lr.ph.i.i.i.i.i.i61.preheader:                   ; preds = %bb.af
  %xtraiter128 = and i32 %.sroa.0.02.i.i.i.i57, 7 ; 2 uses
  %lcmp.mod129.not = icmp eq i32 %xtraiter128, 0
  br i1 %lcmp.mod129.not, label %.lr.ph.i.i.i.i.i.i61.prol.loopexit, label %.lr.ph.i.i.i.i.i.i61.prol

.lr.ph.i.i.i.i.i.i61.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i61.preheader, %.lr.ph.i.i.i.i.i.i61.prol
  %.01.i.i.i.i.i.i62.prol = phi i32 [ %i.fb, %.lr.ph.i.i.i.i.i.i61.prol ], [ %.sroa.0.02.i.i.i.i57, %.lr.ph.i.i.i.i.i.i61.preheader ]
  %prol.iter130 = phi i32 [ %prol.iter130.next, %.lr.ph.i.i.i.i.i.i61.prol ], [ 0, %.lr.ph.i.i.i.i.i.i61.preheader ]
  %i.fb = add nsw i32 %.01.i.i.i.i.i.i62.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter130.next = add i32 %prol.iter130, 1   ; 2 uses
  %prol.iter130.cmp.not = icmp eq i32 %prol.iter130.next, %xtraiter128
  br i1 %prol.iter130.cmp.not, label %.lr.ph.i.i.i.i.i.i61.prol.loopexit, label %.lr.ph.i.i.i.i.i.i61.prol, !llvm.loop !5893

.lr.ph.i.i.i.i.i.i61.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i61.prol, %.lr.ph.i.i.i.i.i.i61.preheader
  %.01.i.i.i.i.i.i62.unr = phi i32 [ %.sroa.0.02.i.i.i.i57, %.lr.ph.i.i.i.i.i.i61.preheader ], [ %i.fb, %.lr.ph.i.i.i.i.i.i61.prol ]
  %i.fc = icmp ult i32 %.sroa.0.02.i.i.i.i57, 8
  br i1 %i.fc, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i60, label %.lr.ph.i.i.i.i.i.i61

.lr.ph.i.i.i.i.i.i61:                             ; preds = %.lr.ph.i.i.i.i.i.i61.prol.loopexit, %.lr.ph.i.i.i.i.i.i61
  %.01.i.i.i.i.i.i62 = phi i32 [ %i.fd, %.lr.ph.i.i.i.i.i.i61 ], [ %.01.i.i.i.i.i.i62.unr, %.lr.ph.i.i.i.i.i.i61.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.fd = add nsw i32 %.01.i.i.i.i.i.i62, -8
  call void @llvm.x86.sse2.pause()
  %i.fe = icmp sgt i32 %.01.i.i.i.i.i.i62, 8
  br i1 %i.fe, label %.lr.ph.i.i.i.i.i.i61, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i60, !llvm.loop !9

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i60: ; preds = %.lr.ph.i.i.i.i.i.i61.prol.loopexit, %.lr.ph.i.i.i.i.i.i61, %bb.af
  %i.ff = shl i32 %.sroa.0.02.i.i.i.i57, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i58

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i56
  %i.fg = call noundef i32 @sched_yield() #20     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i58

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i58: ; preds = %bb.ag, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i60
  %.sroa.0.1.i.i.i.i59 = phi i32 [ %i.ff, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i60 ], [ %.sroa.0.02.i.i.i.i57, %bb.ag ]
  %i.fh = atomicrmw xchg ptr %i.ew, i8 1 seq_cst, align 1
  %i.fi = trunc i8 %i.fh to i1
  br i1 %i.fi, label %.lr.ph.i.i.i.i56, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i53, !llvm.loop !10

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i53: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i58, %bb.ae
  %i.fj = load ptr, ptr %i.er, align 8, !tbaa !219 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %bb.ah, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i54

bb.ah:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i53
  %i.fl = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #29
          to label %bb.ai unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i55 ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.fl, ptr %i.er, align 8, !tbaa !219
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i54

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i55: ; preds = %bb.ah
  %i.fm = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.ew release, align 1
  br label %.body

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i54: ; preds = %bb.ai, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i53
  %i.fn = phi ptr [ %i.fl, %bb.ai ], [ %i.fj, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i53 ]
  store atomic i8 0, ptr %i.ew release, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i52, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i54
  %i.fo = phi ptr [ %i.fn, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i54 ], [ %i.eu, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i52 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.fp = load ptr, ptr %i.z, align 8, !tbaa !1206, !nonnull !223, !align !445
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !1187
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.sroa.9.084
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !1189
  invoke void @_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter") align 8 %7, ptr noundef nonnull align 8 dereferenceable(96) %i.ft)
          to label %.preheader unwind label %bb.am

.preheader:                                       ; preds = %bb.aj
  %i.fu = load i32, ptr %i.ag, align 8, !tbaa !449 ; 2 uses
  %.not83 = icmp eq i32 %i.fu, 512
  br i1 %.not83, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph118.6, %bb.as, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit, %.lr.ph.i.i.i.i70.preheader, %.lr.ph.i.i.i.i70, %.lr.ph.i.i.i.i70.1, %.lr.ph.i.i.i.i70.2, %.lr.ph.i.i.i.i70.3, %.lr.ph.i.i.i.i70.4, %.lr.ph.i.i.i.i70.5, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.aw

bb.ak:                                            ; preds = %bb.v
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.al:                                            ; preds = %bb.ad
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %bb.aj
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.lr.ph:                                           ; preds = %.preheader, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit
  %i.fy = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ], [ %i.fu, %.preheader ] ; 2 uses
  %i.fz = zext i32 %i.fy to i64                   ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.fz ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !234
  %i.gc = call double @llvm.fabs.f64(double %i.gb)
  %i.gd = fcmp ule double %i.gc, 1.000000e-15
  br i1 %i.gd, label %bb.as, label %bb.ao

bb.an:                                            ; preds = %.noexc67, %bb.ao
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ao:                                            ; preds = %.lr.ph
  %i.gf = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc67 unwind label %bb.an  ; 3 uses

.noexc67:                                         ; preds = %bb.ao
  %i.gg = load i32, ptr %i.ag, align 8, !tbaa !449 ; 4 uses
  %i.gh = lshr i32 %i.gg, 6
  %i.gi = lshr i32 %i.gg, 3
  %i.gj = and i32 %i.gi, 7
  %i.gk = and i32 %i.gg, 7
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 80
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !244
  %i.gn = add nsw i32 %i.gm, %i.gh
  %i.go = getelementptr inbounds nuw i8, ptr %i.gf, i64 84
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !244
  %i.gq = add nsw i32 %i.gp, %i.gj
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gf, i64 88
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !244
  %i.gt = add nsw i32 %i.gs, %i.gk
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.gq to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i9.i.i.i = zext i32 %i.gn to i64
  %.sroa.0.0.insert.insert.i10.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i9.i.i.i
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i, ptr %i.ah, align 8
  store i32 %i.gt, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !219
  %i.gu = load ptr, ptr %i.ai, align 8, !tbaa !1221
  %i.gv = zext i32 %i.gg to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.gv
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !234
  %i.gy = load ptr, ptr %i.aj, align 8, !tbaa !1228
  store double %i.gx, ptr %i.gy, align 8, !tbaa !234
  invoke void @_ZN7openvdb5v13_04math17SevenPointStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(140) %6, ptr noundef nonnull align 4 dereferenceable(12) %i.ah)
          to label %_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit unwind label %bb.an

_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit: ; preds = %.noexc67
  %i.gz = load ptr, ptr %i.aj, align 8, !tbaa !1228 ; 7 uses
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !234 ; 8 uses
  %i.hb = load double, ptr %i.ga, align 8, !tbaa !234
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hf = load double, ptr %i.an, align 8, !tbaa !234, !noalias !5911
  %i.hg = load double, ptr %i.ao, align 8, !tbaa !234, !noalias !5911
  %i.hh = load double, ptr %i.ap, align 8, !tbaa !234, !noalias !5911 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %9 = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  %i.hj = load double, ptr %i.hd, align 8, !tbaa !234, !noalias !5912
  %i.hk = load double, ptr %i.hc, align 8, !tbaa !234, !noalias !5912
  %i.hl = load double, ptr %i.he, align 8, !tbaa !234, !noalias !5912
  %i.hm = fsub double %i.hj, %i.ha
  %i.hn = fsub double %i.hk, %i.ha
  %i.ho = fsub double %i.hl, %i.ha                ; 2 uses
  %i.hp = load <2 x double>, ptr %i.ak, align 8, !tbaa !234, !noalias !5911 ; 2 uses
  %i.hq = load <2 x double>, ptr %i.al, align 8, !tbaa !234, !noalias !5911 ; 2 uses
  %i.hr = insertelement <2 x double> poison, double %i.hm, i64 0 ; 2 uses
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ht = fmul <2 x double> %i.hs, %i.hq
  %i.hu = insertelement <2 x double> poison, double %i.hn, i64 0 ; 2 uses
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.hp, <2 x double> %i.ht)
  %i.hx = load <2 x double>, ptr %i.am, align 8, !tbaa !234, !noalias !5911 ; 2 uses
  %i.hy = insertelement <2 x double> poison, double %i.ho, i64 0
  %i.hz = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> %i.hx, <2 x double> %i.hw) ; 4 uses
  %10 = load double, ptr %9, align 8, !tbaa !234, !noalias !5913
  %11 = load double, ptr %8, align 8, !tbaa !234, !noalias !5913
  %12 = load double, ptr %i.hi, align 8, !tbaa !234, !noalias !5913
  %13 = fsub double %10, %i.ha
  %14 = fsub double %11, %i.ha
  %15 = fsub double %12, %i.ha
  %16 = fneg double %13                           ; 2 uses
  %17 = fneg double %14                           ; 2 uses
  %18 = fneg double %15                           ; 2 uses
  %19 = insertelement <2 x double> poison, double %16, i64 0
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = fmul <2 x double> %i.hq, %20
  %21 = insertelement <2 x double> poison, double %17, i64 0
  %i.ic = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer
  %i.id = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ic, <2 x double> %i.hp, <2 x double> %i.ib)
  %22 = insertelement <2 x double> poison, double %18, i64 0
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ie = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> %i.hx, <2 x double> %i.id) ; 4 uses
  %i.if = insertelement <2 x double> %i.hr, double %16, i64 1
  %i.ig = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.ih = shufflevector <2 x double> %i.ig, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ii = fmul <2 x double> %i.if, %i.ih
  %i.ij = insertelement <2 x double> %i.hu, double %17, i64 1
  %i.ik = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.il = shufflevector <2 x double> %i.ik, <2 x double> poison, <2 x i32> zeroinitializer
  %i.im = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ij, <2 x double> %i.il, <2 x double> %i.ii) ; 2 uses
  %i.in = extractelement <2 x double> %i.im, i64 0
  %i.io = call double @llvm.fmuladd.f64(double %i.ho, double %i.hh, double %i.in) ; 3 uses
  %i.ip = extractelement <2 x double> %i.im, i64 1
  %i.iq = call double @llvm.fmuladd.f64(double %18, double %i.hh, double %i.ip) ; 4 uses
  %i.ir = fcmp ogt double %i.ha, 0.000000e+00
  br i1 %i.ir, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit
  %i.is = fcmp olt <2 x double> %i.ie, zeroinitializer
  %i.it = select <2 x i1> %i.is, <2 x double> zeroinitializer, <2 x double> %i.ie ; 2 uses
  %i.iu = fmul <2 x double> %i.it, %i.it          ; 2 uses
  %i.iv = fcmp ogt <2 x double> %i.ia, zeroinitializer
  %i.iw = select <2 x i1> %i.iv, <2 x double> zeroinitializer, <2 x double> %i.ia ; 2 uses
  %i.ix = fmul <2 x double> %i.iw, %i.iw          ; 2 uses
  %i.iy = fcmp olt <2 x double> %i.iu, %i.ix
  %i.iz = select <2 x i1> %i.iy, <2 x double> %i.ix, <2 x double> %i.iu
  %i.ja = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.iz)
  %i.jb = fcmp olt double %i.iq, 0.000000e+00
  %.sroa.speculated80.i.i.i = select i1 %i.jb, double 0.000000e+00, double %i.iq ; 2 uses
  %i.jc = fmul double %.sroa.speculated80.i.i.i, %.sroa.speculated80.i.i.i
  %i.jd = fcmp ogt double %i.io, 0.000000e+00
  br label %bb.ar

bb.aq:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit
  %i.je = fcmp ogt <2 x double> %i.ie, zeroinitializer
  %i.jf = fcmp olt <2 x double> %i.ia, zeroinitializer
  %i.jg = select <2 x i1> %i.je, <2 x double> zeroinitializer, <2 x double> %i.ie ; 2 uses
  %i.jh = fmul <2 x double> %i.jg, %i.jg          ; 2 uses
  %i.ji = select <2 x i1> %i.jf, <2 x double> zeroinitializer, <2 x double> %i.ia ; 2 uses
  %i.jj = fmul <2 x double> %i.ji, %i.ji          ; 2 uses
  %i.jk = fcmp olt <2 x double> %i.jh, %i.jj
  %i.jl = select <2 x i1> %i.jk, <2 x double> %i.jj, <2 x double> %i.jh
  %i.jm = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.jl)
  %i.jn = fcmp ogt double %i.iq, 0.000000e+00
  %.sroa.speculated62.i.i.i = select i1 %i.jn, double 0.000000e+00, double %i.iq ; 2 uses
  %i.jo = fmul double %.sroa.speculated62.i.i.i, %.sroa.speculated62.i.i.i
  %i.jp = fcmp olt double %i.io, 0.000000e+00
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sink113.i.i.i = phi i1 [ %i.jp, %bb.aq ], [ %i.jd, %bb.ap ]
  %.sink110.i.i.i = phi double [ %i.jo, %bb.aq ], [ %i.jc, %bb.ap ] ; 2 uses
  %.sink.i.i.i = phi double [ %i.jm, %bb.aq ], [ %i.ja, %bb.ap ]
  %.sroa.speculated59.i.i.i = select i1 %.sink113.i.i.i, double 0.000000e+00, double %i.io ; 2 uses
  %i.jq = fmul double %.sroa.speculated59.i.i.i, %.sroa.speculated59.i.i.i ; 2 uses
  %i.jr = fcmp olt double %.sink110.i.i.i, %i.jq
  %.sroa.speculated.i.i.i = select i1 %i.jr, double %i.jq, double %.sink110.i.i.i
  %i.js = fadd double %.sink.i.i.i, %.sroa.speculated.i.i.i
  %i.jt = fneg double %i.hb
  %i.ju = fmul double %2, %i.jt
  %i.jv = call double @llvm.fmuladd.f64(double %i.ju, double %i.js, double %i.ha)
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.fz
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !234
  %i.jy = fmul double %i.jv, f0x3FE5555555555556
  %i.jz = call double @llvm.fmuladd.f64(double %i.jx, double f0x3FD5555555555555, double %i.jy)
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fz
  store double %i.jz, ptr %i.ka, align 8, !tbaa !234
  %.pre = load i32, ptr %i.ag, align 8, !tbaa !449
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %bb.ar
  %i.kb = phi i32 [ %i.fy, %.lr.ph ], [ %.pre, %bb.ar ]
  %i.kc = load ptr, ptr %i.aq, align 8, !tbaa !467 ; 8 uses
  %i.kd = add i32 %i.kb, 1                        ; 4 uses
  %i.ke = lshr i32 %i.kd, 6                       ; 3 uses
  %i.kf = icmp ugt i32 %i.kd, 511
  br i1 %i.kf, label %._crit_edge, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kg = and i32 %i.kd, 63
  %i.kh = zext nneg i32 %i.ke to i64              ; 8 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.kh
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !266 ; 2 uses
  %i.kk = zext nneg i32 %i.kg to i64              ; 2 uses
  %i.kl = shl nuw i64 1, %i.kk
  %i.km = and i64 %i.kj, %i.kl
  %.not.i.i.i.i69 = icmp eq i64 %i.km, 0
  br i1 %.not.i.i.i.i69, label %bb.au, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

bb.au:                                            ; preds = %bb.at
  %i.kn = shl nsw i64 -1, %i.kk
  %i.ko = and i64 %i.kj, %i.kn                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.ko, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i70.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i70.preheader:                       ; preds = %bb.au
  %exitcond.not.i.i.i.i116 = icmp eq i32 %i.ke, 7
  br i1 %exitcond.not.i.i.i.i116, label %._crit_edge, label %.lr.ph118

.lr.ph.i.i.i.i70:                                 ; preds = %.lr.ph118
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph118.1

.lr.ph118.1:                                      ; preds = %.lr.ph.i.i.i.i70
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.kh, 2 ; 3 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.next.i.i.i.i.1
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.kq, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i70.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i70.1:                               ; preds = %.lr.ph118.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph118.2

.lr.ph118.2:                                      ; preds = %.lr.ph.i.i.i.i70.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.kh, 3 ; 3 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.next.i.i.i.i.2
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.ks, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i70.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i70.2:                               ; preds = %.lr.ph118.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph118.3

.lr.ph118.3:                                      ; preds = %.lr.ph.i.i.i.i70.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.kh, 4 ; 3 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.next.i.i.i.i.3
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.ku, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i70.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i70.3:                               ; preds = %.lr.ph118.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph118.4

.lr.ph118.4:                                      ; preds = %.lr.ph.i.i.i.i70.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.kh, 5 ; 3 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.next.i.i.i.i.4
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.kw, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i70.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i70.4:                               ; preds = %.lr.ph118.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph118.5

.lr.ph118.5:                                      ; preds = %.lr.ph.i.i.i.i70.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.kh, 6 ; 3 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.next.i.i.i.i.5
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.ky, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i70.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i70.5:                               ; preds = %.lr.ph118.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph118.6

.lr.ph118.6:                                      ; preds = %.lr.ph.i.i.i.i70.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.kh, 7 ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.next.i.i.i.i.6
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.la, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph118:                                        ; preds = %.lr.ph.i.i.i.i70.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.kh, 1 ; 3 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.next.i.i.i.i
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.lc, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i70, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph118.6, %.lr.ph118.5, %.lr.ph118.4, %.lr.ph118.3, %.lr.ph118.2, %.lr.ph118.1, %.lr.ph118
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph118 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph118.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph118.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph118.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph118.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph118.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph118.6 ]
  %.lcssa = phi i64 [ %i.lc, %.lr.ph118 ], [ %i.kq, %.lr.ph118.1 ], [ %i.ks, %.lr.ph118.2 ], [ %i.ku, %.lr.ph118.3 ], [ %i.kw, %.lr.ph118.4 ], [ %i.ky, %.lr.ph118.5 ], [ %i.la, %.lr.ph118.6 ]
  %i.ld = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.au
  %.016.lcssa.i.i.i.i = phi i32 [ %i.ke, %bb.au ], [ %i.ld, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.ko, %bb.au ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.le = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.lf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.lg = trunc nuw nsw i64 %i.lf to i32
  %i.lh = or disjoint i32 %i.le, %i.lg
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit: ; preds = %bb.at, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.lh, %.critedge.i.i.i.i ], [ %i.kd, %bb.at ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.ag, align 8, !tbaa !449
  %.not = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.av:                                            ; preds = %bb.an, %bb.am
  %.pn25 = phi { ptr, i32 } [ %i.fx, %bb.am ], [ %i.ge, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.body

bb.aw:                                            ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit, %._crit_edge
  %i.li = add nuw i64 %.sroa.9.084, 1             ; 2 uses
  %i.lj = load i64, ptr %1, align 8, !tbaa !1176
  %i.lk = icmp ult i64 %i.li, %i.lj
  br i1 %i.lk, label %bb.i, label %._crit_edge87, !llvm.loop !5910

.body:                                            ; preds = %bb.al, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i55, %bb.ak, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i38, %bb.r, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, %bb.av
  %.pn25.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fm, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i55 ], [ %i.eb, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i38 ], [ %i.cn, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ], [ %.pn25, %bb.av ], [ %i.cs, %bb.r ], [ %i.fv, %bb.ak ], [ %i.fw, %bb.al ]
  call void @_ZN7openvdb5v13_04math11BaseStencilINS1_17SevenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(140) dereferenceable(140) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %.pn25.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i64 @_ZN7openvdb5v13_05tools16LevelSetMorphingINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE5MorphINS0_4math14TranslationMapELNSJ_20BiasedGradientSchemeE0ELNSJ_25TemporalIntegrationSchemeE2EE6advectEdd(ptr noundef nonnull align 8 dereferenceable(72) %0, double noundef %1, double noundef %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_5
