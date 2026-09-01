Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetAdvect?download=true
inline.NumInlined: 45983
inline.NumDeleted: 12404
loop-unroll.NumCompletelyUnrolled: 486
loop-unroll.NumRuntimeUnrolled: 808
loop-unroll.NumUnrolled: 1305
begin_hunk_0_@_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISL_EENSM_13tbb_allocatorISt4pairIKSL_bEEEE6lookupILb1ESL_PFPNSU_4nodeERNSP_INS1_13hash_map_baseIST_NSM_13spin_rw_mutexEE6bucketEEERSR_PKbEEEbRKT0_S16_PNSU_14const_accessorEbT1_SX_:.preheader

bb.ae:                                            ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71, %bb.aa, %bb.ab, %bb.ad
  %i.cn = icmp sgt i32 %.sroa.0.0, 0
  br i1 %i.cn, label %.lr.ph.i.i.preheader, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.ae
  %xtraiter = and i32 %.sroa.0.0, 6               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.01.i.i.prol = phi i32 [ %i.co, %.lr.ph.i.i.prol ], [ %.sroa.0.0, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.co = add nsw i32 %.01.i.i.prol, -1           ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !124

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.01.i.i.unr = phi i32 [ %.sroa.0.0, %.lr.ph.i.i.preheader ], [ %i.co, %.lr.ph.i.i.prol ]
  %i.cp = icmp ult i32 %.sroa.0.0, 8
  br i1 %i.cp, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.01.i.i = phi i32 [ %i.cq, %.lr.ph.i.i ], [ %.01.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.cq = add nsw i32 %.01.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.cr = icmp sgt i32 %.01.i.i, 8
  br i1 %i.cr, label %.lr.ph.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, !llvm.loop !110

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i:       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %i.cs = icmp samesign ult i32 %.sroa.0.0, 16
  br i1 %i.cs, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit, label %bb.af

_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit: ; preds = %bb.ae, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i
  %i.ct = shl i32 %.sroa.0.0, 1
  br label %bb.z, !llvm.loop !125

bb.af:                                            ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i
  %i.cu = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  store ptr null, ptr %7, align 8, !tbaa !14
  %i.cv = load i8, ptr %i.f, align 8, !tbaa !18, !range !25, !noundef !26
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cx = atomicrmw and ptr %i.cu, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.cy = atomicrmw sub ptr %i.cu, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.cz = call noundef i32 @sched_yield() #16     ; 0 uses
  %i.da = load atomic i64, ptr %i.c acquire, align 8
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeINS7_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeINS7_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0: ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.w, %bb.ac, %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71
  store ptr %i.bw, ptr %3, align 8, !tbaa !14
  store i8 %i.i, ptr %i.j, align 8, !tbaa !18
  %i.db = load ptr, ptr %7, align 8, !tbaa !14    ; 3 uses
  %.not.i73.jt0 = icmp eq ptr %i.db, null
  br i1 %.not.i73.jt0, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0, label %bb.aj

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeINS7_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6: ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit
  %i.dc = load ptr, ptr %7, align 8, !tbaa !14    ; 3 uses
  %.not.i73.jt6 = icmp eq ptr %i.dc, null
  br i1 %.not.i73.jt6, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6, label %bb.ak

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeINS7_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2: ; preds = %bb.p, %bb.ai
  %.4.jt2 = phi i64 [ %i.da, %bb.ai ], [ %i.aq, %bb.p ]
  %.3.jt2 = phi ptr [ %.246, %bb.ai ], [ %.145, %bb.p ]
  %.241.jt2 = phi i64 [ %.140, %bb.ai ], [ %.039, %bb.p ]
  %i.dd = load ptr, ptr %7, align 8, !tbaa !14    ; 3 uses
  %.not.i73.jt2 = icmp eq ptr %i.dd, null
  br i1 %.not.i73.jt2, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2, label %bb.al

bb.aj:                                            ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeINS7_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0
  store ptr null, ptr %7, align 8, !tbaa !14
  %i.de = load i8, ptr %i.f, align 8, !tbaa !18, !range !25, !noundef !26
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.am, label %bb.ap

bb.ak:                                            ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeINS7_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6
  store ptr null, ptr %7, align 8, !tbaa !14
  %i.dg = load i8, ptr %i.f, align 8, !tbaa !18, !range !25, !noundef !26
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.an, label %bb.aq

bb.al:                                            ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeINS7_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2
  store ptr null, ptr %7, align 8, !tbaa !14
  %i.di = load i8, ptr %i.f, align 8, !tbaa !18, !range !25, !noundef !26
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.ao, label %bb.ar

bb.am:                                            ; preds = %bb.aj
  %i.dk = atomicrmw and ptr %i.db, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0

bb.an:                                            ; preds = %bb.ak
  %i.dl = atomicrmw and ptr %i.dc, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6

bb.ao:                                            ; preds = %bb.al
  %i.dm = atomicrmw and ptr %i.dd, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2

bb.ap:                                            ; preds = %bb.aj
  %i.dn = atomicrmw sub ptr %i.db, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0

bb.aq:                                            ; preds = %bb.ak
  %i.do = atomicrmw sub ptr %i.dc, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6

bb.ar:                                            ; preds = %bb.al
  %i.dp = atomicrmw sub ptr %i.dd, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0: ; preds = %bb.ap, %bb.am, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeINS7_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.138, ptr %i.dq, align 8, !tbaa !21
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.b, ptr %i.dr, align 8, !tbaa !126
  br label %.loopexit92

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6: ; preds = %bb.aq, %bb.an, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeINS7_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %.loopexit92

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2: ; preds = %bb.ar, %bb.ao, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeINS7_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.a

.loopexit92:                                      ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0
  %.not54 = icmp eq i64 %.140, 0
  br i1 %.not54, label %bb.ay, label %bb.as

bb.as:                                            ; preds = %.loopexit92
  %i.ds = icmp ugt i64 %.140, 7
  br i1 %i.ds, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dt = shl nuw i64 1, %.140
  %i.du = shl i64 16, %.140
  %i.dv = invoke noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef %i.du)
          to label %.lr.ph.i.i.i.preheader.new unwind label %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeINS9_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE0_ED2Ev.exit4.i.i ; 5 uses

.lr.ph.i.i.i.preheader.new:                       ; preds = %bb.at
  %unroll_iter = and i64 %i.dt, -4
  br label %.lr.ph.i.i.i

common.resume:                                    ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75, %common.resume.i
  %common.resume.op = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %lpad.phi, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75 ]
  resume { ptr, i32 } %common.resume.op

common.resume.i:                                  ; preds = %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeINS9_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i, %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeINS9_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE0_ED2Ev.exit4.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.dx, %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeINS9_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE0_ED2Ev.exit4.i.i ], [ %i.eo, %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeINS9_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i ]
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.140
  store atomic ptr null, ptr %i.dw monotonic, align 8
  br label %common.resume

_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeINS9_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE0_ED2Ev.exit4.i.i: ; preds = %bb.at
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.06.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.ej, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %.06.i.i.i ; 2 uses
  store i64 0, ptr %i.dy, align 8, !tbaa !127
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.dz, align 8, !tbaa !128
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %.06.i.i.i ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store i64 0, ptr %i.eb, align 8, !tbaa !127
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store ptr inttoptr (i64 3 to ptr), ptr %i.ec, align 8, !tbaa !128
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %.06.i.i.i ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  store i64 0, ptr %i.ee, align 8, !tbaa !127
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  store ptr inttoptr (i64 3 to ptr), ptr %i.ef, align 8, !tbaa !128
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %.06.i.i.i ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  store i64 0, ptr %i.eh, align 8, !tbaa !127
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 56
  store ptr inttoptr (i64 3 to ptr), ptr %i.ei, align 8, !tbaa !128
  %i.ej = add nuw i64 %.06.i.i.i, 4
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeINS7_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNST_6bucketEmb.exit.i, label %.lr.ph.i.i.i, !llvm.loop !130

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeINS7_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNST_6bucketEmb.exit.i: ; preds = %.lr.ph.i.i.i
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.140
  store atomic ptr %i.dv, ptr %i.ek release, align 8
  %i.el = shl i64 2, %.140
  %i.em = add i64 %i.el, -1
  br label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeINS7_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit

bb.au:                                            ; preds = %bb.as
  %i.en = invoke noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 4064)
          to label %.lr.ph.i.i10.i unwind label %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeINS9_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i ; 9 uses

_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeINS9_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i: ; preds = %bb.au
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

.lr.ph.i.i10.i:                                   ; preds = %bb.au, %.lr.ph.i.i10.i
  %.06.i.i11.i = phi i64 [ %i.eu, %.lr.ph.i.i10.i ], [ 0, %bb.au ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %.06.i.i11.i ; 2 uses
  store i64 0, ptr %i.ep, align 8, !tbaa !127
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.eq, align 8, !tbaa !128
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %.06.i.i11.i ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store i64 0, ptr %i.es, align 8, !tbaa !127
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  store ptr inttoptr (i64 3 to ptr), ptr %i.et, align 8, !tbaa !128
  %i.eu = add nuw nsw i64 %.06.i.i11.i, 2         ; 2 uses
  %exitcond.not.i.i12.i.1 = icmp eq i64 %i.eu, 254
  br i1 %exitcond.not.i.i12.i.1, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeINS7_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNST_6bucketEmb.exit14.i, label %.lr.ph.i.i10.i, !llvm.loop !130

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeINS7_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNST_6bucketEmb.exit14.i: ; preds = %.lr.ph.i.i10.i
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 64
  store atomic ptr %i.en, ptr %i.ev release, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  store atomic ptr %i.ex, ptr %i.ew release, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ez = getelementptr inbounds nuw i8, ptr %i.en, i64 96
  store atomic ptr %i.ez, ptr %i.ey release, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fb = getelementptr inbounds nuw i8, ptr %i.en, i64 224
  store atomic ptr %i.fb, ptr %i.fa release, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fd = getelementptr inbounds nuw i8, ptr %i.en, i64 480
  store atomic ptr %i.fd, ptr %i.fc release, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ff = getelementptr inbounds nuw i8, ptr %i.en, i64 992
  store atomic ptr %i.ff, ptr %i.fe release, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fh = getelementptr inbounds nuw i8, ptr %i.en, i64 2016
  store atomic ptr %i.fh, ptr %i.fg release, align 8
  br label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeINS7_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeINS7_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit: ; preds = %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeINS7_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNST_6bucketEmb.exit.i, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeINS7_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNST_6bucketEmb.exit14.i
  %.039.i = phi i64 [ %i.em, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeINS7_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNST_6bucketEmb.exit.i ], [ 255, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeINS7_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNST_6bucketEmb.exit14.i ]
  store atomic i64 %.039.i, ptr %i.c release, align 8
  br label %bb.ay

bb.av:                                            ; preds = %bb.f
  store ptr null, ptr %7, align 8, !tbaa !14
  %i.fi = load i8, ptr %i.f, align 8, !tbaa !18, !range !25, !noundef !26
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fk = atomicrmw and ptr %i.w, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75

bb.ax:                                            ; preds = %bb.av
  %i.fl = atomicrmw sub ptr %i.w, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75: ; preds = %bb.f, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %common.resume

bb.ay:                                            ; preds = %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeINS7_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit, %.loopexit92
  %.not55 = icmp eq ptr %.246, null
  br i1 %.not55, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %.246)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  ret i1 %.042
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISL_EENSM_13tbb_allocatorISt4pairIKSL_bEEEE31allocate_node_default_constructISL_EEPNSU_4nodeERNSP_INS1_13hash_map_baseIST_NSM_13spin_rw_mutexEE6bucketEEERKT_PKb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 32) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !127
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %1, align 8, !tbaa !19
  store ptr %i.d, ptr %i.c, align 8, !tbaa !131
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 0, ptr %i.e, align 8, !tbaa !133
  ret ptr %i.a
}

declare noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !136  ; 4 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.idx.i.i = shl i64 %i.j, 4                     ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.d
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i, %.preheader.preheader.i.i
  %i.m = phi ptr [ %i.n, %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i ], [ %i.l, %.preheader.preheader.i.i ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -16 ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.p = load atomic i32, ptr %i.o seq_cst, align 4
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.q = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(13) %i.n)
          to label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i unwind label %bb.j ; 0 uses

bb.f:                                             ; preds = %.preheader.i.i
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !27
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load atomic i32, ptr %i.o seq_cst, align 8
  %.not3.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not3.i.i.i.i, label %bb.h, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !27   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #27
  br label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i

bb.j:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #26
  unreachable

_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.x = icmp eq ptr %i.n, %i.h
  br i1 %i.x, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i, label %.preheader.i.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i, %bb.d
  %i.y = or disjoint i64 %.idx.i.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.i, i64 noundef %i.y) #27
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !138 ; 2 uses
  %.not.i2 = icmp eq ptr %i.aa, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS6_EED2Ev.exit, label %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree8LeafNodeIfLj3EEEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i

_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree8LeafNodeIfLj3EEEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIS5_EED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #27
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6lookupILb1ESI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEEbRKT0_S13_PNSR_14const_accessorEbT1_SU_:.preheader

bb.ae:                                            ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71, %bb.aa, %bb.ab, %bb.ad
  %i.cn = icmp sgt i32 %.sroa.0.0, 0
  br i1 %i.cn, label %.lr.ph.i.i.preheader, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.ae
  %xtraiter = and i32 %.sroa.0.0, 6               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.01.i.i.prol = phi i32 [ %i.co, %.lr.ph.i.i.prol ], [ %.sroa.0.0, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.co = add nsw i32 %.01.i.i.prol, -1           ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !673

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.01.i.i.unr = phi i32 [ %.sroa.0.0, %.lr.ph.i.i.preheader ], [ %i.co, %.lr.ph.i.i.prol ]
  %i.cp = icmp ult i32 %.sroa.0.0, 8
  br i1 %i.cp, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.01.i.i = phi i32 [ %i.cq, %.lr.ph.i.i ], [ %.01.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.cq = add nsw i32 %.01.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.cr = icmp sgt i32 %.01.i.i, 8
  br i1 %i.cr, label %.lr.ph.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, !llvm.loop !110

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i:       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %i.cs = icmp samesign ult i32 %.sroa.0.0, 16
  br i1 %i.cs, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit, label %bb.af

_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit: ; preds = %bb.ae, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i
  %i.ct = shl i32 %.sroa.0.0, 1
  br label %bb.z, !llvm.loop !674

bb.af:                                            ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i
  %i.cu = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  store ptr null, ptr %7, align 8, !tbaa !14
  %i.cv = load i8, ptr %i.f, align 8, !tbaa !18, !range !25, !noundef !26
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cx = atomicrmw and ptr %i.cu, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.cy = atomicrmw sub ptr %i.cu, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.cz = call noundef i32 @sched_yield() #16     ; 0 uses
  %i.da = load atomic i64, ptr %i.c acquire, align 8
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0: ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.w, %bb.ac, %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71
  store ptr %i.bw, ptr %3, align 8, !tbaa !14
  store i8 %i.i, ptr %i.j, align 8, !tbaa !18
  %i.db = load ptr, ptr %7, align 8, !tbaa !14    ; 3 uses
  %.not.i73.jt0 = icmp eq ptr %i.db, null
  br i1 %.not.i73.jt0, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0, label %bb.aj

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6: ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit
  %i.dc = load ptr, ptr %7, align 8, !tbaa !14    ; 3 uses
  %.not.i73.jt6 = icmp eq ptr %i.dc, null
  br i1 %.not.i73.jt6, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6, label %bb.ak

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2: ; preds = %bb.p, %bb.ai
  %.4.jt2 = phi i64 [ %i.da, %bb.ai ], [ %i.aq, %bb.p ]
  %.3.jt2 = phi ptr [ %.246, %bb.ai ], [ %.145, %bb.p ]
  %.241.jt2 = phi i64 [ %.140, %bb.ai ], [ %.039, %bb.p ]
  %i.dd = load ptr, ptr %7, align 8, !tbaa !14    ; 3 uses
  %.not.i73.jt2 = icmp eq ptr %i.dd, null
  br i1 %.not.i73.jt2, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2, label %bb.al

bb.aj:                                            ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0
  store ptr null, ptr %7, align 8, !tbaa !14
  %i.de = load i8, ptr %i.f, align 8, !tbaa !18, !range !25, !noundef !26
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.am, label %bb.ap

bb.ak:                                            ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6
  store ptr null, ptr %7, align 8, !tbaa !14
  %i.dg = load i8, ptr %i.f, align 8, !tbaa !18, !range !25, !noundef !26
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.an, label %bb.aq

bb.al:                                            ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2
  store ptr null, ptr %7, align 8, !tbaa !14
  %i.di = load i8, ptr %i.f, align 8, !tbaa !18, !range !25, !noundef !26
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.ao, label %bb.ar

bb.am:                                            ; preds = %bb.aj
  %i.dk = atomicrmw and ptr %i.db, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0

bb.an:                                            ; preds = %bb.ak
  %i.dl = atomicrmw and ptr %i.dc, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6

bb.ao:                                            ; preds = %bb.al
  %i.dm = atomicrmw and ptr %i.dd, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2

bb.ap:                                            ; preds = %bb.aj
  %i.dn = atomicrmw sub ptr %i.db, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0

bb.aq:                                            ; preds = %bb.ak
  %i.do = atomicrmw sub ptr %i.dc, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6

bb.ar:                                            ; preds = %bb.al
  %i.dp = atomicrmw sub ptr %i.dd, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0: ; preds = %bb.ap, %bb.am, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.138, ptr %i.dq, align 8, !tbaa !660
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.b, ptr %i.dr, align 8, !tbaa !675
  br label %.loopexit92

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6: ; preds = %bb.aq, %bb.an, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %.loopexit92

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2: ; preds = %bb.ar, %bb.ao, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.a

.loopexit92:                                      ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0
  %.not54 = icmp eq i64 %.140, 0
  br i1 %.not54, label %bb.ay, label %bb.as

bb.as:                                            ; preds = %.loopexit92
  %i.ds = icmp ugt i64 %.140, 7
  br i1 %i.ds, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dt = shl nuw i64 1, %.140
  %i.du = shl i64 16, %.140
  %i.dv = invoke noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef %i.du)
          to label %.lr.ph.i.i.i.preheader.new unwind label %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE0_ED2Ev.exit4.i.i ; 5 uses

.lr.ph.i.i.i.preheader.new:                       ; preds = %bb.at
  %unroll_iter = and i64 %i.dt, -4
  br label %.lr.ph.i.i.i

common.resume:                                    ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75, %common.resume.i
  %common.resume.op = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %lpad.phi, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75 ]
  resume { ptr, i32 } %common.resume.op

common.resume.i:                                  ; preds = %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i, %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE0_ED2Ev.exit4.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.dx, %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE0_ED2Ev.exit4.i.i ], [ %i.eo, %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i ]
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.140
  store atomic ptr null, ptr %i.dw monotonic, align 8
  br label %common.resume

_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE0_ED2Ev.exit4.i.i: ; preds = %bb.at
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.06.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.ej, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %.06.i.i.i ; 2 uses
  store i64 0, ptr %i.dy, align 8, !tbaa !127
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.dz, align 8, !tbaa !128
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %.06.i.i.i ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store i64 0, ptr %i.eb, align 8, !tbaa !127
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store ptr inttoptr (i64 3 to ptr), ptr %i.ec, align 8, !tbaa !128
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %.06.i.i.i ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  store i64 0, ptr %i.ee, align 8, !tbaa !127
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  store ptr inttoptr (i64 3 to ptr), ptr %i.ef, align 8, !tbaa !128
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %.06.i.i.i ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  store i64 0, ptr %i.eh, align 8, !tbaa !127
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 56
  store ptr inttoptr (i64 3 to ptr), ptr %i.ei, align 8, !tbaa !128
  %i.ej = add nuw i64 %.06.i.i.i, 4
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit.i, label %.lr.ph.i.i.i, !llvm.loop !676

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit.i: ; preds = %.lr.ph.i.i.i
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.140
  store atomic ptr %i.dv, ptr %i.ek release, align 8
  %i.el = shl i64 2, %.140
  %i.em = add i64 %i.el, -1
  br label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit

bb.au:                                            ; preds = %bb.as
  %i.en = invoke noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 4064)
          to label %.lr.ph.i.i10.i unwind label %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i ; 9 uses

_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i: ; preds = %bb.au
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

.lr.ph.i.i10.i:                                   ; preds = %bb.au, %.lr.ph.i.i10.i
  %.06.i.i11.i = phi i64 [ %i.eu, %.lr.ph.i.i10.i ], [ 0, %bb.au ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %.06.i.i11.i ; 2 uses
  store i64 0, ptr %i.ep, align 8, !tbaa !127
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.eq, align 8, !tbaa !128
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %.06.i.i11.i ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store i64 0, ptr %i.es, align 8, !tbaa !127
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  store ptr inttoptr (i64 3 to ptr), ptr %i.et, align 8, !tbaa !128
  %i.eu = add nuw nsw i64 %.06.i.i11.i, 2         ; 2 uses
  %exitcond.not.i.i12.i.1 = icmp eq i64 %i.eu, 254
  br i1 %exitcond.not.i.i12.i.1, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit14.i, label %.lr.ph.i.i10.i, !llvm.loop !676

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit14.i: ; preds = %.lr.ph.i.i10.i
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 64
  store atomic ptr %i.en, ptr %i.ev release, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  store atomic ptr %i.ex, ptr %i.ew release, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ez = getelementptr inbounds nuw i8, ptr %i.en, i64 96
  store atomic ptr %i.ez, ptr %i.ey release, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fb = getelementptr inbounds nuw i8, ptr %i.en, i64 224
  store atomic ptr %i.fb, ptr %i.fa release, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fd = getelementptr inbounds nuw i8, ptr %i.en, i64 480
  store atomic ptr %i.fd, ptr %i.fc release, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ff = getelementptr inbounds nuw i8, ptr %i.en, i64 992
  store atomic ptr %i.ff, ptr %i.fe release, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fh = getelementptr inbounds nuw i8, ptr %i.en, i64 2016
  store atomic ptr %i.fh, ptr %i.fg release, align 8
  br label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit: ; preds = %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit.i, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit14.i
  %.039.i = phi i64 [ %i.em, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit.i ], [ 255, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit14.i ]
  store atomic i64 %.039.i, ptr %i.c release, align 8
  br label %bb.ay

bb.av:                                            ; preds = %bb.f
  store ptr null, ptr %7, align 8, !tbaa !14
  %i.fi = load i8, ptr %i.f, align 8, !tbaa !18, !range !25, !noundef !26
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fk = atomicrmw and ptr %i.w, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75

bb.ax:                                            ; preds = %bb.av
  %i.fl = atomicrmw sub ptr %i.w, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75: ; preds = %bb.f, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %common.resume

bb.ay:                                            ; preds = %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit, %.loopexit92
  %.not55 = icmp eq ptr %.246, null
  br i1 %.not55, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %.246)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  ret i1 %.042
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE31allocate_node_default_constructISI_EEPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERKT_PKb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 32) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !127
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %1, align 8, !tbaa !624
  store ptr %i.d, ptr %i.c, align 8, !tbaa !677
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 0, ptr %i.e, align 8, !tbaa !679
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessorC2EPSR_mb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i8 0, ptr %i.a, align 8, !tbaa !18
  %i.b = or i64 %2, 1
  %i.c = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true) ; 2 uses
  %i.d = xor i64 %i.c, 63
  %i.e = lshr exact i64 -9223372036854775808, %i.c
  %i.f = and i64 %i.e, -2
  %i.g = sub i64 %2, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.d
  %i.j = load atomic ptr, ptr %i.i acquire, align 8
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.g ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !666
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load atomic ptr, ptr %i.m acquire, align 8
  %i.o = icmp eq ptr %i.n, inttoptr (i64 3 to ptr)
  %.pre10 = load ptr, ptr %i.l, align 8, !tbaa !666 ; 5 uses
  br i1 %i.o, label %bb.b, label %.noexc.thread

bb.b:                                             ; preds = %bb.a
  %i.p = load atomic i64, ptr %.pre10 monotonic, align 8 ; 2 uses
  %i.q = and i64 %i.p, -3
  %.not.i.i7 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i7, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, label %.noexc.thread

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i: ; preds = %bb.b
  %i.r = cmpxchg ptr %.pre10, i64 %i.p, i64 1 seq_cst seq_cst, align 8
  %i.s = extractvalue { i64, i1 } %i.r, 1
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !666 ; 3 uses
  br i1 %i.s, label %bb.c, label %.noexc.thread

bb.c:                                             ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i
  store ptr %.pre10, ptr %0, align 8, !tbaa !14
  store i8 1, ptr %i.a, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.u = load atomic ptr, ptr %i.t monotonic, align 8
  %i.v = icmp eq ptr %i.u, inttoptr (i64 3 to ptr)
  br i1 %i.v, label %bb.d, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessor7acquireEPSR_mb.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13rehash_bucketEPNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEm(ptr noundef nonnull align 8 dereferenceable(570) %1, ptr noundef nonnull %.pre, i64 noundef %2)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessor7acquireEPSR_mb.exit unwind label %bb.n, !inline_history !680

.noexc.thread:                                    ; preds = %bb.b, %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.a
  %i.w = phi ptr [ %.pre10, %bb.b ], [ %.pre, %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i ], [ %.pre10, %bb.a ] ; 7 uses
  %i.x = zext i1 %3 to i8
  store i8 %i.x, ptr %i.a, align 8, !tbaa !18
  store ptr %i.w, ptr %0, align 8, !tbaa !14
  br i1 %3, label %.preheader.i.outer, label %.preheader9.i.outer

.preheader.i.outer:                               ; preds = %.noexc.thread, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i
  %.sroa.0.0.i.i.ph = phi i32 [ %i.ai, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i ], [ 1, %.noexc.thread ] ; 4 uses
  %i.y = icmp slt i32 %.sroa.0.0.i.i.ph, 17
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.h
  %i.z = load atomic i64, ptr %i.w monotonic, align 8 ; 3 uses
  %i.aa = and i64 %i.z, -3
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader.i
  %i.ab = cmpxchg ptr %i.w, i64 %i.z, i64 1 seq_cst seq_cst, align 8
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  br i1 %i.ac, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessor7acquireEPSR_mb.exit, label %.lr.ph.i.i.preheader.i.i

bb.f:                                             ; preds = %.preheader.i
  %i.ad = and i64 %i.z, 2
  %.not1.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not1.i.i, label %bb.g, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ae = atomicrmw or ptr %i.w, i64 2 seq_cst, align 8 ; 0 uses
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i: ; preds = %bb.g, %bb.f
  br i1 %i.y, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i, label %bb.h

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i: ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i
  %i.af = icmp sgt i32 %.sroa.0.0.i.i.ph, 0
  br i1 %i.af, label %.lr.ph.i.i.preheader.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i, %bb.e
  %.sroa.0.1811.i.i = phi i32 [ %.sroa.0.0.i.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i ], [ 1, %bb.e ] ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.preheader.i.i
  %.01.i.i.i.i = phi i32 [ %i.ag, %.lr.ph.i.i.i.i ], [ %.sroa.0.1811.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %i.ag = add nsw i32 %.01.i.i.i.i, -1
end_hunk_1
begin_hunk_2_@_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6lookupILb1ESI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEEbRKT0_S13_PNSR_14const_accessorEbT1_SU_:.preheader

bb.ae:                                            ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71, %bb.aa, %bb.ab, %bb.ad
  %i.cn = icmp sgt i32 %.sroa.0.0, 0
  br i1 %i.cn, label %.lr.ph.i.i.preheader, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.ae
  %xtraiter = and i32 %.sroa.0.0, 6               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.01.i.i.prol = phi i32 [ %i.co, %.lr.ph.i.i.prol ], [ %.sroa.0.0, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.co = add nsw i32 %.01.i.i.prol, -1           ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !5660

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.01.i.i.unr = phi i32 [ %.sroa.0.0, %.lr.ph.i.i.preheader ], [ %i.co, %.lr.ph.i.i.prol ]
  %i.cp = icmp ult i32 %.sroa.0.0, 8
  br i1 %i.cp, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.01.i.i = phi i32 [ %i.cq, %.lr.ph.i.i ], [ %.01.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.cq = add nsw i32 %.01.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.cr = icmp sgt i32 %.01.i.i, 8
  br i1 %i.cr, label %.lr.ph.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, !llvm.loop !110

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i:       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %i.cs = icmp samesign ult i32 %.sroa.0.0, 16
  br i1 %i.cs, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit, label %bb.af

_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit: ; preds = %bb.ae, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i
  %i.ct = shl i32 %.sroa.0.0, 1
  br label %bb.z, !llvm.loop !5661

bb.af:                                            ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i
  %i.cu = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  store ptr null, ptr %7, align 8, !tbaa !14
  %i.cv = load i8, ptr %i.f, align 8, !tbaa !18, !range !25, !noundef !26
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cx = atomicrmw and ptr %i.cu, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.cy = atomicrmw sub ptr %i.cu, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.cz = call noundef i32 @sched_yield() #16     ; 0 uses
  %i.da = load atomic i64, ptr %i.c acquire, align 8
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0: ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.w, %bb.ac, %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71
  store ptr %i.bw, ptr %3, align 8, !tbaa !14
  store i8 %i.i, ptr %i.j, align 8, !tbaa !18
  %i.db = load ptr, ptr %7, align 8, !tbaa !14    ; 3 uses
  %.not.i73.jt0 = icmp eq ptr %i.db, null
  br i1 %.not.i73.jt0, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0, label %bb.aj

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6: ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit
  %i.dc = load ptr, ptr %7, align 8, !tbaa !14    ; 3 uses
  %.not.i73.jt6 = icmp eq ptr %i.dc, null
  br i1 %.not.i73.jt6, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6, label %bb.ak

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2: ; preds = %bb.p, %bb.ai
  %.4.jt2 = phi i64 [ %i.da, %bb.ai ], [ %i.aq, %bb.p ]
  %.3.jt2 = phi ptr [ %.246, %bb.ai ], [ %.145, %bb.p ]
  %.241.jt2 = phi i64 [ %.140, %bb.ai ], [ %.039, %bb.p ]
  %i.dd = load ptr, ptr %7, align 8, !tbaa !14    ; 3 uses
  %.not.i73.jt2 = icmp eq ptr %i.dd, null
  br i1 %.not.i73.jt2, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2, label %bb.al

bb.aj:                                            ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0
  store ptr null, ptr %7, align 8, !tbaa !14
  %i.de = load i8, ptr %i.f, align 8, !tbaa !18, !range !25, !noundef !26
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.am, label %bb.ap

bb.ak:                                            ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6
  store ptr null, ptr %7, align 8, !tbaa !14
  %i.dg = load i8, ptr %i.f, align 8, !tbaa !18, !range !25, !noundef !26
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.an, label %bb.aq

bb.al:                                            ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2
  store ptr null, ptr %7, align 8, !tbaa !14
  %i.di = load i8, ptr %i.f, align 8, !tbaa !18, !range !25, !noundef !26
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.ao, label %bb.ar

bb.am:                                            ; preds = %bb.aj
  %i.dk = atomicrmw and ptr %i.db, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0

bb.an:                                            ; preds = %bb.ak
  %i.dl = atomicrmw and ptr %i.dc, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6

bb.ao:                                            ; preds = %bb.al
  %i.dm = atomicrmw and ptr %i.dd, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2

bb.ap:                                            ; preds = %bb.aj
  %i.dn = atomicrmw sub ptr %i.db, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0

bb.aq:                                            ; preds = %bb.ak
  %i.do = atomicrmw sub ptr %i.dc, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6

bb.ar:                                            ; preds = %bb.al
  %i.dp = atomicrmw sub ptr %i.dd, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0: ; preds = %bb.ap, %bb.am, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.138, ptr %i.dq, align 8, !tbaa !5647
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.b, ptr %i.dr, align 8, !tbaa !5662
  br label %.loopexit92

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6: ; preds = %bb.aq, %bb.an, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %.loopexit92

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2: ; preds = %bb.ar, %bb.ao, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.a

.loopexit92:                                      ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0
  %.not54 = icmp eq i64 %.140, 0
  br i1 %.not54, label %bb.ay, label %bb.as

bb.as:                                            ; preds = %.loopexit92
  %i.ds = icmp ugt i64 %.140, 7
  br i1 %i.ds, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dt = shl nuw i64 1, %.140
  %i.du = shl i64 16, %.140
  %i.dv = invoke noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef %i.du)
          to label %.lr.ph.i.i.i.preheader.new unwind label %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE0_ED2Ev.exit4.i.i ; 5 uses

.lr.ph.i.i.i.preheader.new:                       ; preds = %bb.at
  %unroll_iter = and i64 %i.dt, -4
  br label %.lr.ph.i.i.i

common.resume:                                    ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75, %common.resume.i
  %common.resume.op = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %lpad.phi, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75 ]
  resume { ptr, i32 } %common.resume.op

common.resume.i:                                  ; preds = %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i, %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE0_ED2Ev.exit4.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.dx, %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE0_ED2Ev.exit4.i.i ], [ %i.eo, %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i ]
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.140
  store atomic ptr null, ptr %i.dw monotonic, align 8
  br label %common.resume

_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE0_ED2Ev.exit4.i.i: ; preds = %bb.at
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.06.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.ej, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %.06.i.i.i ; 2 uses
  store i64 0, ptr %i.dy, align 8, !tbaa !127
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.dz, align 8, !tbaa !128
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %.06.i.i.i ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store i64 0, ptr %i.eb, align 8, !tbaa !127
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store ptr inttoptr (i64 3 to ptr), ptr %i.ec, align 8, !tbaa !128
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %.06.i.i.i ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  store i64 0, ptr %i.ee, align 8, !tbaa !127
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  store ptr inttoptr (i64 3 to ptr), ptr %i.ef, align 8, !tbaa !128
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %.06.i.i.i ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  store i64 0, ptr %i.eh, align 8, !tbaa !127
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 56
  store ptr inttoptr (i64 3 to ptr), ptr %i.ei, align 8, !tbaa !128
  %i.ej = add nuw i64 %.06.i.i.i, 4
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit.i, label %.lr.ph.i.i.i, !llvm.loop !5663

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit.i: ; preds = %.lr.ph.i.i.i
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.140
  store atomic ptr %i.dv, ptr %i.ek release, align 8
  %i.el = shl i64 2, %.140
  %i.em = add i64 %i.el, -1
  br label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit

bb.au:                                            ; preds = %bb.as
  %i.en = invoke noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 4064)
          to label %.lr.ph.i.i10.i unwind label %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i ; 9 uses

_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNSA_4TreeINSA_8RootNodeINSA_12InternalNodeINSE_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i: ; preds = %bb.au
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

.lr.ph.i.i10.i:                                   ; preds = %bb.au, %.lr.ph.i.i10.i
  %.06.i.i11.i = phi i64 [ %i.eu, %.lr.ph.i.i10.i ], [ 0, %bb.au ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %.06.i.i11.i ; 2 uses
  store i64 0, ptr %i.ep, align 8, !tbaa !127
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.eq, align 8, !tbaa !128
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %.06.i.i11.i ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store i64 0, ptr %i.es, align 8, !tbaa !127
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  store ptr inttoptr (i64 3 to ptr), ptr %i.et, align 8, !tbaa !128
  %i.eu = add nuw nsw i64 %.06.i.i11.i, 2         ; 2 uses
  %exitcond.not.i.i12.i.1 = icmp eq i64 %i.eu, 254
  br i1 %exitcond.not.i.i12.i.1, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit14.i, label %.lr.ph.i.i10.i, !llvm.loop !5663

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit14.i: ; preds = %.lr.ph.i.i10.i
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 64
  store atomic ptr %i.en, ptr %i.ev release, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  store atomic ptr %i.ex, ptr %i.ew release, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ez = getelementptr inbounds nuw i8, ptr %i.en, i64 96
  store atomic ptr %i.ez, ptr %i.ey release, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fb = getelementptr inbounds nuw i8, ptr %i.en, i64 224
  store atomic ptr %i.fb, ptr %i.fa release, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fd = getelementptr inbounds nuw i8, ptr %i.en, i64 480
  store atomic ptr %i.fd, ptr %i.fc release, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ff = getelementptr inbounds nuw i8, ptr %i.en, i64 992
  store atomic ptr %i.ff, ptr %i.fe release, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fh = getelementptr inbounds nuw i8, ptr %i.en, i64 2016
  store atomic ptr %i.fh, ptr %i.fg release, align 8
  br label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit: ; preds = %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit.i, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit14.i
  %.039.i = phi i64 [ %i.em, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit.i ], [ 255, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE12init_bucketsEPNSQ_6bucketEmb.exit14.i ]
  store atomic i64 %.039.i, ptr %i.c release, align 8
  br label %bb.ay

bb.av:                                            ; preds = %bb.f
  store ptr null, ptr %7, align 8, !tbaa !14
  %i.fi = load i8, ptr %i.f, align 8, !tbaa !18, !range !25, !noundef !26
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fk = atomicrmw and ptr %i.w, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75

bb.ax:                                            ; preds = %bb.av
  %i.fl = atomicrmw sub ptr %i.w, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75: ; preds = %bb.f, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %common.resume

bb.ay:                                            ; preds = %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit, %.loopexit92
  %.not55 = icmp eq ptr %.246, null
  br i1 %.not55, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %.246)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  ret i1 %.042
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE31allocate_node_default_constructISI_EEPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERKT_PKb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 32) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !127
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %1, align 8, !tbaa !5606
  store ptr %i.d, ptr %i.c, align 8, !tbaa !5664
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 0, ptr %i.e, align 8, !tbaa !5666
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessorC2EPSR_mb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i8 0, ptr %i.a, align 8, !tbaa !18
  %i.b = or i64 %2, 1
  %i.c = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true) ; 2 uses
  %i.d = xor i64 %i.c, 63
  %i.e = lshr exact i64 -9223372036854775808, %i.c
  %i.f = and i64 %i.e, -2
  %i.g = sub i64 %2, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.d
  %i.j = load atomic ptr, ptr %i.i acquire, align 8
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.g ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !5653
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load atomic ptr, ptr %i.m acquire, align 8
  %i.o = icmp eq ptr %i.n, inttoptr (i64 3 to ptr)
  %.pre10 = load ptr, ptr %i.l, align 8, !tbaa !5653 ; 5 uses
  br i1 %i.o, label %bb.b, label %.noexc.thread

bb.b:                                             ; preds = %bb.a
  %i.p = load atomic i64, ptr %.pre10 monotonic, align 8 ; 2 uses
  %i.q = and i64 %i.p, -3
  %.not.i.i7 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i7, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, label %.noexc.thread

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i: ; preds = %bb.b
  %i.r = cmpxchg ptr %.pre10, i64 %i.p, i64 1 seq_cst seq_cst, align 8
  %i.s = extractvalue { i64, i1 } %i.r, 1
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !5653 ; 3 uses
  br i1 %i.s, label %bb.c, label %.noexc.thread

bb.c:                                             ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i
  store ptr %.pre10, ptr %0, align 8, !tbaa !14
  store i8 1, ptr %i.a, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.u = load atomic ptr, ptr %i.t monotonic, align 8
  %i.v = icmp eq ptr %i.u, inttoptr (i64 3 to ptr)
  br i1 %i.v, label %bb.d, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessor7acquireEPSR_mb.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13rehash_bucketEPNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEm(ptr noundef nonnull align 8 dereferenceable(570) %1, ptr noundef nonnull %.pre, i64 noundef %2)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessor7acquireEPSR_mb.exit unwind label %bb.n, !inline_history !5667

.noexc.thread:                                    ; preds = %bb.b, %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.a
  %i.w = phi ptr [ %.pre10, %bb.b ], [ %.pre, %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i ], [ %.pre10, %bb.a ] ; 7 uses
  %i.x = zext i1 %3 to i8
  store i8 %i.x, ptr %i.a, align 8, !tbaa !18
  store ptr %i.w, ptr %0, align 8, !tbaa !14
  br i1 %3, label %.preheader.i.outer, label %.preheader9.i.outer

.preheader.i.outer:                               ; preds = %.noexc.thread, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i
  %.sroa.0.0.i.i.ph = phi i32 [ %i.ai, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i ], [ 1, %.noexc.thread ] ; 4 uses
  %i.y = icmp slt i32 %.sroa.0.0.i.i.ph, 17
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.h
  %i.z = load atomic i64, ptr %i.w monotonic, align 8 ; 3 uses
  %i.aa = and i64 %i.z, -3
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader.i
  %i.ab = cmpxchg ptr %i.w, i64 %i.z, i64 1 seq_cst seq_cst, align 8
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  br i1 %i.ac, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE15bucket_accessor7acquireEPSR_mb.exit, label %.lr.ph.i.i.preheader.i.i

bb.f:                                             ; preds = %.preheader.i
  %i.ad = and i64 %i.z, 2
  %.not1.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not1.i.i, label %bb.g, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ae = atomicrmw or ptr %i.w, i64 2 seq_cst, align 8 ; 0 uses
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i: ; preds = %bb.g, %bb.f
  br i1 %i.y, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i, label %bb.h

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i: ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i
  %i.af = icmp sgt i32 %.sroa.0.0.i.i.ph, 0
  br i1 %i.af, label %.lr.ph.i.i.preheader.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i, %bb.e
  %.sroa.0.1811.i.i = phi i32 [ %.sroa.0.0.i.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i ], [ 1, %bb.e ] ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.preheader.i.i
  %.01.i.i.i.i = phi i32 [ %i.ag, %.lr.ph.i.i.i.i ], [ %.sroa.0.1811.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %i.ag = add nsw i32 %.01.i.i.i.i, -1
end_hunk_2
