Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DAGCombiner?download=true
inline.NumInlined: 30676
inline.NumDeleted: 6198
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 112
begin_hunk_0_@_ZN12_GLOBAL__N_111DAGCombiner17visitBUILD_VECTOREPN4llvm6SDNodeE:bb.a
  br i1 %i.bku, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %i.bkv = add i32 %.0238.i.i, %i.bkr
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ke, %bb.kc
  %.sink351.i.i = phi i32 [ %i.bkv, %bb.ke ], [ %i.bkr, %bb.kc ]
  %i.bkw = getelementptr inbounds nuw [4 x i8], ptr %i.bju, i64 %indvars.iv.i379.i
  store i32 %.sink351.i.i, ptr %i.bkw, align 4, !tbaa !198
  br label %bb.kf

bb.kf:                                            ; preds = %.sink.split.i.i, %bb.kd, %bb.kb
  %indvars.iv.next.i382.i = add nuw nsw i64 %indvars.iv.i379.i, 1 ; 2 uses
  %.not247.i.i = icmp eq i64 %indvars.iv.next.i382.i, %i.bjv
  br i1 %.not247.i.i, label %._crit_edge.i383.i, label %bb.kb, !llvm.loop !1692

bb.kg:                                            ; preds = %._crit_edge.i383.i
  %i.bkx = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.bky = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.bkx, i32 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 %.sroa.0.0.copyload.i.i303.i.i, ptr %.sroa.21.0.copyload.i.i305.i.i) #36 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %.fca.0.extract17.i.i = extractvalue { ptr, i32 } %i.bky, 0
  %.fca.1.extract18.i.i = extractvalue { ptr, i32 } %i.bky, 1
  %.sroa.014.0.copyload.pre.i.i = load i16, ptr %17, align 8, !tbaa !214
  %.sroa.216.0.copyload.pre.i.i = load ptr, ptr %i.bbd, align 8, !tbaa !216
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %._crit_edge.i383.i
  %.sroa.216.0.copyload.i.i = phi ptr [ %.sroa.216.0.copyload.pre.i.i, %bb.kg ], [ %.sroa.21.0.copyload.i.i305.i.i, %._crit_edge.i383.i ]
  %.sroa.014.0.copyload.i.i = phi i16 [ %.sroa.014.0.copyload.pre.i.i, %bb.kg ], [ %.sroa.0.0.copyload.i.i303.i.i, %._crit_edge.i383.i ]
  %.sroa.024.0.i.i = phi ptr [ %.fca.0.extract17.i.i, %bb.kg ], [ %i.bjo, %._crit_edge.i383.i ]
  %.sroa.526.0.i.i = phi i32 [ %.fca.1.extract18.i.i, %bb.kg ], [ %.sroa.526.0.copyload.i.i, %._crit_edge.i383.i ]
  store ptr %.sroa.024.0.i.i, ptr %26, align 8, !tbaa !74
  store i32 %.sroa.526.0.i.i, ptr %.sroa.2508.0..sroa_idx.i, align 8, !tbaa !198
  %i.bkz = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.bla = load ptr, ptr %24, align 8, !tbaa !43
  store ptr %i.bla, ptr %25, align 8, !tbaa !573
  %i.blb = load i32, ptr %i.bbp, align 8, !tbaa !76
  %i.blc = zext i32 %i.blb to i64
  store i64 %i.blc, ptr %i.bbr, align 8, !tbaa !574
  %i.bld = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bkz, i16 %.sroa.014.0.copyload.i.i, ptr %.sroa.216.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(12) %35, ptr nonnull %i.bjq, i32 %i.bjp, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %26, ptr noundef nonnull byval(%"class.llvm::ArrayRef.292") align 8 %25) #36 ; 2 uses
  %.fca.0.extract7.i.i = extractvalue { ptr, i32 } %i.bld, 0 ; 2 uses
  %.fca.1.extract8.i.i = extractvalue { ptr, i32 } %i.bld, 1 ; 2 uses
  %i.ble = icmp ugt i32 %.0.i376.i, %i.bdv
  br i1 %i.ble, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %bb.kh
  %i.blf = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197 ; 2 uses
  %.sroa.03.0.copyload.i.i = load i16, ptr %16, align 8, !tbaa !214
  %.sroa.25.0.copyload.i.i = load ptr, ptr %i.bbb, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.fca.0.extract7.i.i, ptr %6, align 8, !tbaa !74
  store i32 %.fca.1.extract8.i.i, ptr %.sroa.211.0..sroa_idx.i308.i.i, align 8, !tbaa !198
  %i.blg = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.blf, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %35, i1 noundef zeroext false) #36 ; 2 uses
  %.fca.0.extract1.i309.i.i = extractvalue { ptr, i32 } %i.blg, 0
  %.fca.1.extract2.i310.i.i = extractvalue { ptr, i32 } %i.blg, 1
  store ptr %.fca.0.extract1.i309.i.i, ptr %7, align 8
  store i32 %.fca.1.extract2.i310.i.i, ptr %.sroa.24.0..sroa_idx.i311.i.i, align 8
  %i.blh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.blf, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %35, i16 %.sroa.03.0.copyload.i.i, ptr %.sroa.25.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #36 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.fca.0.extract.i386.i = extractvalue { ptr, i32 } %i.blh, 0
  %.fca.1.extract.i387.i = extractvalue { ptr, i32 } %i.blh, 1
  br label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %bb.kh
  %.sroa.18.0.i.i = phi i32 [ %.fca.1.extract.i387.i, %bb.ki ], [ %.fca.1.extract8.i.i, %bb.kh ] ; 2 uses
  %.sroa.0321.0.i.i = phi ptr [ %.fca.0.extract.i386.i, %bb.ki ], [ %.fca.0.extract7.i.i, %bb.kh ] ; 3 uses
  %i.bli = load ptr, ptr %24, align 8, !tbaa !43  ; 2 uses
  %i.blj = icmp eq ptr %i.bli, %i.bbo
  br i1 %i.blj, label %_ZN12_GLOBAL__N_111DAGCombiner21createBuildVecShuffleERKN4llvm5SDLocEPNS1_6SDNodeENS1_8ArrayRefIiEENS1_7SDValueES9_jb.exit.i, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  call void @free(ptr noundef %i.bli) #36
  br label %_ZN12_GLOBAL__N_111DAGCombiner21createBuildVecShuffleERKN4llvm5SDLocEPNS1_6SDNodeENS1_8ArrayRefIiEENS1_7SDValueES9_jb.exit.i

_ZN12_GLOBAL__N_111DAGCombiner21createBuildVecShuffleERKN4llvm5SDLocEPNS1_6SDNodeENS1_8ArrayRefIiEENS1_7SDValueES9_jb.exit.thread.i: ; preds = %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit299.i.i, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i295.i.i, %bb.jw, %bb.jt, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit291.i.i, %bb.js, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit289.i.i, %bb.jr, %bb.jq, %bb.jp, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i392.i, %bb.jk, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.i.i, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.i.i, %bb.ji, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  br label %.loopexit624.i

_ZN12_GLOBAL__N_111DAGCombiner21createBuildVecShuffleERKN4llvm5SDLocEPNS1_6SDNodeENS1_8ArrayRefIiEENS1_7SDValueES9_jb.exit.i: ; preds = %bb.kk, %bb.kj
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  %.not621.i = icmp eq ptr %.sroa.0321.0.i.i, null
  br i1 %.not621.i, label %.loopexit624.i, label %bb.kl

bb.kl:                                            ; preds = %_ZN12_GLOBAL__N_111DAGCombiner21createBuildVecShuffleERKN4llvm5SDLocEPNS1_6SDNodeENS1_8ArrayRefIiEENS1_7SDValueES9_jb.exit.i
  %i.blk = load i32, ptr %i.bax, align 8, !tbaa !76 ; 2 uses
  %i.bll = load i32, ptr %i.bay, align 4, !tbaa !77
  %.not.i398.i = icmp ult i32 %i.blk, %i.bll
  br i1 %.not.i398.i, label %bb.kn, label %bb.km, !prof !78

bb.km:                                            ; preds = %bb.kl
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %51, ptr nonnull %.sroa.0321.0.i.i, i32 %.sroa.18.0.i.i)
  br label %bb.ko

bb.kn:                                            ; preds = %bb.kl
  %i.blm = zext i32 %i.blk to i64
  %i.bln = load ptr, ptr %51, align 8, !tbaa !43
  %i.blo = getelementptr inbounds nuw [16 x i8], ptr %i.bln, i64 %i.blm ; 2 uses
  store ptr %.sroa.0321.0.i.i, ptr %i.blo, align 1
  %.sroa.32.0..sroa_idx.i399.i = getelementptr inbounds nuw i8, ptr %i.blo, i64 8
  store i32 %.sroa.18.0.i.i, ptr %.sroa.32.0..sroa_idx.i399.i, align 1
  %i.blp = load i32, ptr %i.bax, align 8, !tbaa !76
  %i.blq = add i32 %i.blp, 1
  store i32 %i.blq, ptr %i.bax, align 8, !tbaa !76
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %bb.km
  %indvars.iv.next707.i = add nuw nsw i64 %indvars.iv706.i, 1 ; 2 uses
  %exitcond710.not.i = icmp eq i64 %indvars.iv.next707.i, %wide.trip.count709.i
  br i1 %exitcond710.not.i, label %.critedge.i351, label %bb.ie, !llvm.loop !1693

.loopexit624.i:                                   ; preds = %_ZN12_GLOBAL__N_111DAGCombiner21createBuildVecShuffleERKN4llvm5SDLocEPNS1_6SDNodeENS1_8ArrayRefIiEENS1_7SDValueES9_jb.exit.i, %_ZN12_GLOBAL__N_111DAGCombiner21createBuildVecShuffleERKN4llvm5SDLocEPNS1_6SDNodeENS1_8ArrayRefIiEENS1_7SDValueES9_jb.exit.thread.i
  %.pre732.i = load ptr, ptr %51, align 8, !tbaa !43
  br label %bb.mf

.critedge.i351:                                   ; preds = %bb.ko, %._crit_edge662.i
  br i1 %.1244584.i, label %bb.kp, label %bb.kt

bb.kp:                                            ; preds = %.critedge.i351
  %i.blr = call noundef zeroext i1 @_ZNK4llvm3EVT9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %36)
  %i.bls = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197 ; 2 uses
  %.sroa.093.0.copyload.i = load i16, ptr %36, align 8, !tbaa !214 ; 2 uses
  %.sroa.295.0.copyload.i = load ptr, ptr %i.ake, align 8, !tbaa !216 ; 2 uses
  br i1 %i.blr, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.blt = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bls, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %35, i16 %.sroa.093.0.copyload.i, ptr %.sroa.295.0.copyload.i, i1 noundef zeroext false, i1 noundef zeroext false) #36
  br label %bb.ks

bb.kr:                                            ; preds = %bb.kp
  %i.blu = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getConstantFPEdRKNS_5SDLocENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %i.bls, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(12) %35, i16 %.sroa.093.0.copyload.i, ptr %.sroa.295.0.copyload.i, i1 noundef zeroext false) #36
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %.pn.i357 = phi { ptr, i32 } [ %i.blt, %bb.kq ], [ %i.blu, %bb.kr ] ; 2 uses
  %.sroa.397.0.i = extractvalue { ptr, i32 } %.pn.i357, 1
  %.sroa.096.0.i = extractvalue { ptr, i32 } %.pn.i357, 0
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %51, ptr %.sroa.096.0.i, i32 %.sroa.397.0.i)
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %.critedge.i351
  %i.blv = load i32, ptr %i.bax, align 8, !tbaa !76 ; 2 uses
  %i.blw = icmp eq i32 %i.blv, 1
  br i1 %i.blw, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  %i.blx = load ptr, ptr %51, align 8, !tbaa !43  ; 3 uses
  %.sroa.0544.0.copyload.i = load ptr, ptr %i.blx, align 8, !tbaa !74
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.blx, i64 8
  %.sroa.25.0.copyload.i = load i32, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !198
  br label %bb.mf

bb.kv:                                            ; preds = %bb.kt
  %i.bly = load ptr, ptr %37, align 8, !tbaa !43  ; 6 uses
  %i.blz = load i32, ptr %i.apw, align 8, !tbaa !76 ; 2 uses
  %i.bma = zext i32 %i.blz to i64
  %.idx685.i = shl nuw nsw i64 %i.bma, 2          ; 2 uses
  %i.bmb = getelementptr i8, ptr %i.bly, i64 %.idx685.i ; 2 uses
  %.not285667.i = icmp eq i32 %i.blz, 0
  br i1 %.not285667.i, label %._crit_edge671.i, label %.lr.ph670.i.preheader

.lr.ph670.i.preheader:                            ; preds = %bb.kv
  %i.bmc = add nsw i64 %.idx685.i, -4             ; 2 uses
  %i.bmd = lshr exact i64 %i.bmc, 2
  %i.bme = add nuw nsw i64 %i.bmd, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.bmc, 28
  br i1 %min.iters.check, label %.lr.ph670.i.preheader685, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph670.i.preheader
  %i.bmf = getelementptr inbounds nuw i8, ptr %51, i64 12
  %bound0 = icmp ult ptr %i.bly, %i.bmf
  %bound1 = icmp ult ptr %i.bax, %i.bmb
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph670.i.preheader685, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bme, 9223372036854775800    ; 3 uses
  %i.bmg = shl i64 %n.vec, 2
  %i.bmh = getelementptr i8, ptr %i.bly, i64 %i.bmg
  %92 = load <1 x i32>, ptr %i.bax, align 8
  %93 = shufflevector <1 x i32> %92, <1 x i32> poison, <4 x i32> zeroinitializer
  %94 = add <4 x i32> %93, splat (i32 -1)         ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bmi = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bly, i64 %i.bmi ; 3 uses
  %i.bmj = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !198, !alias.scope !1703, !noalias !1704 ; 2 uses
  %wide.load681 = load <4 x i32>, ptr %i.bmj, align 4, !tbaa !198, !alias.scope !1703, !noalias !1704 ; 2 uses
  %i.bmk = icmp eq <4 x i32> %wide.load, zeroinitializer
  %i.bml = icmp eq <4 x i32> %wide.load681, zeroinitializer
  %i.bmm = add nsw <4 x i32> %wide.load, splat (i32 -1)
  %i.bmn = add nsw <4 x i32> %wide.load681, splat (i32 -1)
  %i.bmo = sdiv <4 x i32> %i.bmm, splat (i32 2)
  %i.bmp = sdiv <4 x i32> %i.bmn, splat (i32 2)
  %predphi = select <4 x i1> %i.bmk, <4 x i32> %94, <4 x i32> %i.bmo
  %predphi682 = select <4 x i1> %i.bml, <4 x i32> %94, <4 x i32> %i.bmp
  store <4 x i32> %predphi, ptr %next.gep, align 4, !tbaa !198, !alias.scope !1703, !noalias !1704
  store <4 x i32> %predphi682, ptr %i.bmj, align 4, !tbaa !198, !alias.scope !1703, !noalias !1704
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bmq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bmq, label %middle.block, label %vector.body, !llvm.loop !1697

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bme, %n.vec
  br i1 %cmp.n, label %._crit_edge671.loopexit.i, label %.lr.ph670.i.preheader685

.lr.ph670.i.preheader685:                         ; preds = %vector.memcheck, %.lr.ph670.i.preheader, %middle.block
  %.0269668.i.ph = phi ptr [ %i.bly, %vector.memcheck ], [ %i.bly, %.lr.ph670.i.preheader ], [ %i.bmh, %middle.block ]
  br label %.lr.ph670.i

._crit_edge671.loopexit.i:                        ; preds = %bb.ky, %middle.block
  %.pre728.i = load i32, ptr %i.bax, align 8, !tbaa !76
  br label %._crit_edge671.i

._crit_edge671.i:                                 ; preds = %._crit_edge671.loopexit.i, %bb.kv
  %i.bmr = phi i32 [ %.pre728.i, %._crit_edge671.loopexit.i ], [ %i.blv, %bb.kv ] ; 2 uses
  %i.bms = and i32 %i.bmr, 1
  %.not286.i = icmp eq i32 %i.bms, 0
  br i1 %.not286.i, label %bb.la, label %bb.kz

.lr.ph670.i:                                      ; preds = %.lr.ph670.i.preheader685, %bb.ky
  %.0269668.i = phi ptr [ %i.bmz, %bb.ky ], [ %.0269668.i.ph, %.lr.ph670.i.preheader685 ] ; 3 uses
  %i.bmt = load i32, ptr %.0269668.i, align 4, !tbaa !198 ; 2 uses
  %i.bmu = icmp eq i32 %i.bmt, 0
  br i1 %i.bmu, label %bb.kw, label %bb.kx

bb.kw:                                            ; preds = %.lr.ph670.i
  %i.bmv = load i32, ptr %i.bax, align 8, !tbaa !76
  %i.bmw = add i32 %i.bmv, -1
  br label %bb.ky

bb.kx:                                            ; preds = %.lr.ph670.i
  %i.bmx = add nsw i32 %i.bmt, -1
  %i.bmy = sdiv i32 %i.bmx, 2
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kx, %bb.kw
  %storemerge.i = phi i32 [ %i.bmy, %bb.kx ], [ %i.bmw, %bb.kw ]
  store i32 %storemerge.i, ptr %.0269668.i, align 4, !tbaa !198
  %i.bmz = getelementptr inbounds nuw i8, ptr %.0269668.i, i64 4 ; 2 uses
  %.not285.i = icmp eq ptr %i.bmz, %i.bmb
  br i1 %.not285.i, label %._crit_edge671.loopexit.i, label %.lr.ph670.i, !llvm.loop !1698

bb.kz:                                            ; preds = %._crit_edge671.i
  %i.bna = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.sroa.068.0.copyload.i = load i16, ptr %36, align 8, !tbaa !214
  %.sroa.270.0.copyload.i = load ptr, ptr %i.ake, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.bnb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.bna, i32 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.068.0.copyload.i, ptr %.sroa.270.0.copyload.i) #36 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %.fca.0.extract64.i = extractvalue { ptr, i32 } %i.bnb, 0
  %.fca.1.extract65.i = extractvalue { ptr, i32 } %i.bnb, 1
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %51, ptr %.fca.0.extract64.i, i32 %.fca.1.extract65.i)
  %.pre729.i = load i32, ptr %i.bax, align 8, !tbaa !76
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %._crit_edge671.i
  %i.bnc = phi i32 [ %.pre729.i, %bb.kz ], [ %i.bmr, %._crit_edge671.i ] ; 2 uses
  %i.bnd = icmp ugt i32 %i.bnc, 1
  br i1 %i.bnd, label %.lr.ph681.i, label %._crit_edge682.i

.lr.ph681.i:                                      ; preds = %bb.la
  %i.bne = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 4 uses
  %i.bnf = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 3 uses
  %i.bng = getelementptr inbounds nuw i8, ptr %52, i64 12
  %.idx.i.i.i.i.i.i403.i = shl nuw nsw i64 %i.apu, 2
  %i.bnh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bni = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.12.0..sroa_idx473.i = getelementptr inbounds nuw i8, ptr %53, i64 8
  %.sroa.14.0..sroa_idx478.i = getelementptr inbounds nuw i8, ptr %53, i64 12
  %i.bnj = getelementptr inbounds nuw i8, ptr %54, i64 8
  %xtraiter730 = and i64 %i.apu, 1
  %i.bnk = icmp eq i16 %i.aps, 1
  %unroll_iter733 = and i64 %i.apu, 65534
  %lcmp.mod731.not = icmp eq i64 %xtraiter730, 0
  %lcmp.mod732 = trunc i16 %i.aps to i1
  br label %bb.lb

.loopexit.i355:                                   ; preds = %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit.i, %bb.ld
  %i.bnl = icmp ugt i32 %.1268.i, 3
  br i1 %i.bnl, label %bb.lb, label %._crit_edge682.i, !llvm.loop !1699

._crit_edge682.i:                                 ; preds = %.loopexit.i355, %bb.la
  %i.bnm = load ptr, ptr %51, align 8, !tbaa !43  ; 3 uses
  %.sroa.0544.0.copyload545.i = load ptr, ptr %i.bnm, align 8, !tbaa !74
  %.sroa.25.0..sroa_idx546.i = getelementptr inbounds nuw i8, ptr %i.bnm, i64 8
  %.sroa.25.0.copyload547.i = load i32, ptr %.sroa.25.0..sroa_idx546.i, align 8, !tbaa !198
  br label %bb.mf

bb.lb:                                            ; preds = %.loopexit.i355, %.lr.ph681.i
  %.0267679.i = phi i32 [ %i.bnc, %.lr.ph681.i ], [ %i.bnu, %.loopexit.i355 ] ; 4 uses
  %i.bnn = and i32 %.0267679.i, 1
  %.not287.i = icmp eq i32 %i.bnn, 0
  br i1 %.not287.i, label %bb.ld, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.bno = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.sroa.052.0.copyload.i = load i16, ptr %36, align 8, !tbaa !214
  %.sroa.254.0.copyload.i = load ptr, ptr %i.ake, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.bnp = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.bno, i32 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.052.0.copyload.i, ptr %.sroa.254.0.copyload.i) #36 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %.fca.0.extract48.i = extractvalue { ptr, i32 } %i.bnp, 0
  %.fca.1.extract49.i = extractvalue { ptr, i32 } %i.bnp, 1
  %i.bnq = zext i32 %.0267679.i to i64
  %i.bnr = load ptr, ptr %51, align 8, !tbaa !43
  %i.bns = getelementptr inbounds nuw [16 x i8], ptr %i.bnr, i64 %i.bnq ; 2 uses
  store ptr %.fca.0.extract48.i, ptr %i.bns, align 8, !tbaa !74
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bns, i64 8
  store i32 %.fca.1.extract49.i, ptr %.sroa.456.0..sroa_idx.i, align 8, !tbaa !198
  %i.bnt = add i32 %.0267679.i, 1
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %bb.lb
  %.1268.i = phi i32 [ %i.bnt, %bb.lc ], [ %.0267679.i, %bb.lb ] ; 2 uses
  %i.bnu = lshr i32 %.1268.i, 1                   ; 3 uses
  %.not686.i = icmp eq i32 %i.bnu, 0
  br i1 %.not686.i, label %.loopexit.i355, label %.lr.ph678.preheader.i

.lr.ph678.preheader.i:                            ; preds = %bb.ld
  %wide.trip.count717.i = zext nneg i32 %i.bnu to i64
  br label %.lr.ph678.i

.lr.ph678.i:                                      ; preds = %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit.i, %.lr.ph678.preheader.i
  %indvars.iv714.i = phi i64 [ 0, %.lr.ph678.preheader.i ], [ %indvars.iv.next715.i, %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit.i ] ; 6 uses
  %i.bnv = shl nuw nsw i64 %indvars.iv714.i, 1    ; 6 uses
  %i.bnw = or disjoint i64 %i.bnv, 1              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #36
  store ptr %i.bne, ptr %52, align 8, !tbaa !43
  store i32 0, ptr %i.bnf, align 8, !tbaa !76
  store i32 8, ptr %i.bng, align 4, !tbaa !77
  br i1 %i.apy, label %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit411.loopexit.i, label %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit411.sink.split.i

_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit411.loopexit.i: ; preds = %.lr.ph678.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %52, ptr noundef nonnull %i.bne, i64 noundef %i.apu, i64 noundef 4) #36
  %i.bnx = load ptr, ptr %52, align 8, !tbaa !43
  br label %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit411.sink.split.i

_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit411.sink.split.i: ; preds = %.lr.ph678.i, %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit411.loopexit.i
  %.sink813.i = phi ptr [ %i.bnx, %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit411.loopexit.i ], [ %i.bne, %.lr.ph678.i ]
  call void @llvm.memset.p0.i64(ptr align 4 %.sink813.i, i8 -1, i64 %.idx.i.i.i.i.i.i403.i, i1 false), !tbaa !198
  store i32 %i.apt, ptr %i.bnf, align 8, !tbaa !76
  %i.bny = shl nuw i64 %indvars.iv714.i, 33
  %i.bnz = load ptr, ptr %51, align 8, !tbaa !43
  %i.boa = ashr exact i64 %i.bny, 28
  %i.bob = getelementptr inbounds nuw i8, ptr %i.bnz, i64 %i.boa ; 2 uses
  %.sroa.0485.0.copyload.i = load ptr, ptr %i.bob, align 8, !tbaa !74 ; 9 uses
  %.sroa.12493.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bob, i64 8
  %.sroa.12493.0.copyload.i = load i32, ptr %.sroa.12493.0..sroa_idx.i, align 8, !tbaa !198 ; 6 uses
  %i.boc = getelementptr inbounds nuw i8, ptr %.sroa.0485.0.copyload.i, i64 24
  %i.bod = load i32, ptr %i.boc, align 8, !tbaa !72
  %i.boe = icmp eq i32 %i.bod, 171
  br i1 %i.boe, label %bb.le, label %.thread613.i

bb.le:                                            ; preds = %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit411.sink.split.i
  %i.bof = call noundef zeroext i1 @_ZNK4llvm6SDNode16hasAnyUseOfValueEj(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0485.0.copyload.i, i32 noundef %.sroa.12493.0.copyload.i) #36
  br i1 %i.bof, label %.thread613.i, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.bog = getelementptr inbounds nuw i8, ptr %.sroa.0485.0.copyload.i, i64 40
  %i.boh = load ptr, ptr %i.bog, align 8, !tbaa !204 ; 4 uses
  %i.boi = getelementptr inbounds nuw i8, ptr %i.boh, i64 40
  %i.boj = load ptr, ptr %i.boi, align 8, !tbaa !193
  %i.bok = getelementptr inbounds nuw i8, ptr %i.boj, i64 24
  %i.bol = load i32, ptr %i.bok, align 8, !tbaa !72
  %i.bom = add i32 %i.bol, -53
  %spec.select.i.i412.i = icmp ult i32 %i.bom, 2
  br i1 %spec.select.i.i412.i, label %bb.lg, label %.thread613.i

bb.lg:                                            ; preds = %bb.lf
  %i.bon = load ptr, ptr %i.boh, align 8, !tbaa !193
  %i.boo = getelementptr inbounds nuw i8, ptr %i.boh, i64 8 ; 2 uses
  %i.bop = load i32, ptr %i.boo, align 8, !tbaa !211
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bon, i64 48
  %i.bor = load ptr, ptr %i.boq, align 8, !tbaa !212
  %i.bos = zext i32 %i.bop to i64
  %i.bot = getelementptr inbounds nuw [16 x i8], ptr %i.bor, i64 %i.bos ; 2 uses
end_hunk_0
