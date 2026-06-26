inline.NumInlined: 27259
inline.NumDeleted: 5979
begin_hunk_0_@_ZN8facebook5velox12_GLOBAL__N_117exportToArrowImplERKNS0_10BaseVectorERKNS1_9SelectionERK12ArrowOptionsR10ArrowArrayPNS0_6memory10MemoryPoolE:bb.a
vec.epilog.middle.block1397:                      ; preds = %vec.epilog.vector.body1391
  %i.gx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.gv) ; 2 uses
  %cmp.n1398 = icmp eq i64 %i.el, %n.vec1390
  br i1 %cmp.n1398, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.i, label %.lr.ph.i32.i.preheader

.lr.ph.i32.i.preheader:                           ; preds = %iter.check1384, %vec.epilog.iter.check1386, %vec.epilog.middle.block1397
  %.0612.i33.i.ph = phi i32 [ 0, %iter.check1384 ], [ %i.go, %vec.epilog.iter.check1386 ], [ %i.gx, %vec.epilog.middle.block1397 ]
  %.sroa.08.011.i34.i.ph = phi ptr [ %i.ec, %iter.check1384 ], [ %i.fw, %vec.epilog.iter.check1386 ], [ %i.gq, %vec.epilog.middle.block1397 ]
  br label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i32.i.preheader, %.lr.ph.i32.i
  %.0612.i33.i = phi i32 [ %i.gz, %.lr.ph.i32.i ], [ %.0612.i33.i.ph, %.lr.ph.i32.i.preheader ]
  %.sroa.08.011.i34.i = phi ptr [ %i.ha, %.lr.ph.i32.i ], [ %.sroa.08.011.i34.i.ph, %.lr.ph.i32.i.preheader ] ; 2 uses
  %i.gy = load i64, ptr %.sroa.08.011.i34.i, align 4
  %.sroa.3.0.extract.shift.i35.i = lshr i64 %i.gy, 32
  %.sroa.3.0.extract.trunc.i36.i = trunc nuw i64 %.sroa.3.0.extract.shift.i35.i to i32
  %i.gz = add nsw i32 %.0612.i33.i, %.sroa.3.0.extract.trunc.i36.i ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i34.i, i64 8 ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.ee
  br i1 %i.hb, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.i, label %.lr.ph.i32.i, !llvm.loop !135

_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.sink.split.i: ; preds = %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.thread.i, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.i
  %.0.i31.ph.i = phi i32 [ %i.fu, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.thread.i ], [ 0, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #38
  br label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.i

_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.i: ; preds = %.lr.ph.i32.i, %middle.block1377, %vec.epilog.middle.block1397, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.sink.split.i
  %.0.i31.i = phi i32 [ %.0.i31.ph.i, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.sink.split.i ], [ %i.gx, %vec.epilog.middle.block1397 ], [ %i.go, %middle.block1377 ], [ %i.gz, %.lr.ph.i32.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #38, !noalias !136
  store i32 %i.ea, ptr %43, align 16, !tbaa !139, !alias.scope !140, !noalias !136
  %i.hc = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i32 %.0.i31.i, ptr %i.hc, align 16, !tbaa !139, !alias.scope !140, !noalias !136
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %44, ptr nonnull @.str.32, i64 11, i64 17, ptr nonnull %43)
          to label %.noexc132 unwind label %bb.bg

.noexc132:                                        ; preds = %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #38, !noalias !136
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_11ArrayVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %44, ptr nonnull @.str.32) #47
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %.noexc132
  unreachable

bb.aa:                                            ; preds = %.noexc132
  %i.hd = landingpad { ptr, i32 }
          cleanup
  %i.he = load ptr, ptr %44, align 8, !tbaa !143  ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aa
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !139
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #38
  br label %.body134

bb.ab:                                            ; preds = %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.thread.i, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.thread148.i, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #38
  %i.hj = load i64, ptr %3, align 8, !tbaa !99    ; 2 uses
  %i.hk = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.hj, i64 1) ; 2 uses
  %i.hl = extractvalue { i64, i1 } %i.hk, 1
  br i1 %i.hl, label %bb.ac, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit.i, !prof !132

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #38, !noalias !147
  store ptr @.str.16, ptr %41, align 16, !tbaa !139, !noalias !147
  %i.hm = getelementptr inbounds nuw i8, ptr %41, i64 16
  store i64 %i.hj, ptr %i.hm, align 16, !tbaa !139, !noalias !147
  %i.hn = getelementptr inbounds nuw i8, ptr %41, i64 32
  store i64 1, ptr %i.hn, align 16, !tbaa !139, !noalias !147
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %42, ptr nonnull @.str.24, i64 20, i64 1100, ptr nonnull %41)
          to label %.noexc133 unwind label %bb.bg

.noexc133:                                        ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #38, !noalias !147
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %42, ptr nonnull @.str.24) #47
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.noexc133
  unreachable

bb.ae:                                            ; preds = %.noexc133
  %i.ho = landingpad { ptr, i32 }
          cleanup
  %i.hp = load ptr, ptr %42, align 8, !tbaa !143  ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.hr = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ae
  %i.hs = load i64, ptr %i.hq, align 8, !tbaa !139
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.ht) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #38
  br label %.body134

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit.i: ; preds = %bb.ab
  %i.hu = extractvalue { i64, i1 } %i.hk, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #38
  %i.hv = getelementptr inbounds nuw i8, ptr %46, i64 4
  store i8 0, ptr %i.hv, align 4, !tbaa !150
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %45, i64 noundef %i.hu, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(8) %46, i1 noundef zeroext false)
          to label %.noexc136 unwind label %bb.bg

.noexc136:                                        ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #38
  %i.hw = load ptr, ptr %45, align 8, !tbaa !85   ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 44
  %i.hy = load i8, ptr %i.hx, align 4, !tbaa !151
  %i.hz = and i8 %i.hy, 2
  %.not.i.i123 = icmp eq i8 %i.hz, 0
  br i1 %.not.i.i123, label %bb.ag, label %bb.af, !prof !156

bb.af:                                            ; preds = %.noexc136
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #47
          to label %.noexc.i125 unwind label %bb.al

.noexc.i125:                                      ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %.noexc136
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !157 ; 4 uses
  %.val.i126 = load i8, ptr %i.s, align 8, !tbaa !31, !range !39, !noundef !40
  %i.ic = trunc nuw i8 %.val.i126 to i1
  br i1 %i.ic, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.id = load i32, ptr %i.dz, align 8, !tbaa !13 ; 2 uses
  %i.ie = icmp slt i32 %i.id, 2
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !158 ; 3 uses
  br i1 %i.ie, label %.loopexit97.i, label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %bb.ah
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !161
  %wide.trip.count.i.i = zext nneg i32 %i.id to i64
  %.pre.i.i = load i32, ptr %.pre.i, align 4, !tbaa !3
  br label %bb.aj

bb.ai:                                            ; preds = %bb.aj
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit97.i, label %bb.aj, !llvm.loop !162

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i38.i
  %i.ih = phi i32 [ %.pre.i.i, %.lr.ph.i38.i ], [ %i.il, %bb.ai ]
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.i38.i ], [ %indvars.iv.next.i.i, %bb.ai ] ; 3 uses
  %i.ii = getelementptr [4 x i8], ptr %i.ig, i64 %indvars.iv.i.i
  %i.ij = getelementptr i8, ptr %i.ii, i64 -4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !3
  %i.il = add nsw i32 %i.ik, %i.ih                ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.i.i
  %i.in = load i32, ptr %i.im, align 4, !tbaa !3
  %.not.i39.i = icmp eq i32 %i.il, %i.in
  br i1 %.not.i39.i, label %bb.ai, label %.preheader.i.i

.loopexit97.i:                                    ; preds = %bb.ai, %bb.ah
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !33 ; 3 uses
  %i.iq = sext i32 %i.ip to i64                   ; 2 uses
  %i.ir = shl nsw i64 %i.iq, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ib, ptr align 4 %.pre.i, i64 %i.ir, i1 false)
  %i.is = icmp eq i32 %i.ip, 0
  br i1 %i.is, label %bb.av, label %bb.ak

bb.ak:                                            ; preds = %.loopexit97.i
  %i.it = add nsw i32 %i.ip, -1
  %i.iu = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !158
  %i.iv = sext i32 %i.it to i64                   ; 2 uses
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !161
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.iz, i64 %i.iv
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !3
  %i.jc = add nsw i32 %i.jb, %i.ix
  br label %bb.av

bb.al:                                            ; preds = %bb.af
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.preheader.i.i:                                   ; preds = %bb.aj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %67, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.dx, align 8, !tbaa !31
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !33
  %i.jg = icmp sgt i32 %i.jf, 0
  br i1 %i.jg, label %.lr.ph.i49.preheader.i, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_11ArrayVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.i.a

.lr.ph.i49.preheader.i:                           ; preds = %.preheader.i.i
  %i.jh = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %67, i64 16
  br label %.lr.ph.i49.i

bb.am:                                            ; preds = %bb.ag
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %67, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.dx, align 8, !tbaa !31
  %i.jj = load ptr, ptr %1, align 8, !tbaa !92    ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !92 ; 2 uses
  %i.jm = icmp eq ptr %i.jj, %i.jl
  br i1 %i.jm, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_11ArrayVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.i.a, label %.lr.ph43.i.preheader.i

.lr.ph43.i.preheader.i:                           ; preds = %bb.am
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %67, i64 16
  br label %.lr.ph43.i.i

.lr.ph43.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph43.i.preheader.i
  %i.jr = phi ptr [ %i.jz, %._crit_edge.i.i ], [ null, %.lr.ph43.i.preheader.i ] ; 2 uses
  %i.js = phi ptr [ %i.ka, %._crit_edge.i.i ], [ null, %.lr.ph43.i.preheader.i ] ; 2 uses
  %i.jt = phi ptr [ %i.kb, %._crit_edge.i.i ], [ null, %.lr.ph43.i.preheader.i ] ; 2 uses
  %.186.i = phi i32 [ %.287.i, %._crit_edge.i.i ], [ 0, %.lr.ph43.i.preheader.i ] ; 2 uses
  %.2.i = phi i32 [ %.3.i, %._crit_edge.i.i ], [ 0, %.lr.ph43.i.preheader.i ] ; 2 uses
  %.sroa.033.041.i.i = phi ptr [ %i.kc, %._crit_edge.i.i ], [ %i.jj, %.lr.ph43.i.preheader.i ] ; 2 uses
  %i.ju = load i64, ptr %.sroa.033.041.i.i, align 4 ; 2 uses
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.ju, 32 ; 2 uses
  %.sroa.4.0.extract.trunc.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i to i32
  %i.jv = icmp sgt i32 %.sroa.4.0.extract.trunc.i.i, 0
  br i1 %i.jv, label %.lr.ph40.preheader.i.i, label %._crit_edge.i.i

.lr.ph40.preheader.i.i:                           ; preds = %.lr.ph43.i.i
  %sext.i.i = shl i64 %i.ju, 32
  %i.jw = ashr exact i64 %sext.i.i, 32
  %i.jx = sext i32 %.186.i to i64
  br label %.lr.ph40.i.i

._crit_edge.i.loopexit.i:                         ; preds = %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_11ArrayVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i
  %i.jy = trunc nsw i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.loopexit.i, %.lr.ph43.i.i
  %i.jz = phi ptr [ %i.jr, %.lr.ph43.i.i ], [ %i.mr, %._crit_edge.i.loopexit.i ]
  %i.ka = phi ptr [ %i.js, %.lr.ph43.i.i ], [ %i.ms, %._crit_edge.i.loopexit.i ]
  %i.kb = phi ptr [ %i.jt, %.lr.ph43.i.i ], [ %i.mt, %._crit_edge.i.loopexit.i ]
  %.287.i = phi i32 [ %.186.i, %.lr.ph43.i.i ], [ %i.jy, %._crit_edge.i.loopexit.i ] ; 2 uses
  %.3.i = phi i32 [ %.2.i, %.lr.ph43.i.i ], [ %.5.i, %._crit_edge.i.loopexit.i ] ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.033.041.i.i, i64 8 ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.jl
  br i1 %i.kd, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_11ArrayVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.i.a, label %.lr.ph43.i.i

.lr.ph40.i.i:                                     ; preds = %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_11ArrayVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i, %.lr.ph40.preheader.i.i
  %i.ke = phi ptr [ %i.mr, %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_11ArrayVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i ], [ %i.jr, %.lr.ph40.preheader.i.i ] ; 11 uses
  %i.kf = phi ptr [ %i.ms, %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_11ArrayVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i ], [ %i.js, %.lr.ph40.preheader.i.i ] ; 6 uses
  %i.kg = phi ptr [ %i.mt, %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_11ArrayVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i ], [ %i.jt, %.lr.ph40.preheader.i.i ] ; 5 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_11ArrayVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i ], [ %i.jx, %.lr.ph40.preheader.i.i ] ; 2 uses
  %.4.i = phi i32 [ %.5.i, %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_11ArrayVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i ], [ %.2.i, %.lr.ph40.preheader.i.i ] ; 3 uses
  %indvars.iv47.i.i = phi i64 [ %indvars.iv.next48.i.i, %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_11ArrayVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i ], [ 0, %.lr.ph40.preheader.i.i ] ; 2 uses
  %i.kh = add nsw i64 %indvars.iv47.i.i, %i.jw    ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %indvars.iv.i
  store i32 %.4.i, ptr %i.ki, align 4, !tbaa !3
  %i.kj = load ptr, ptr %0, align 8, !tbaa !124
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 32
  %i.kl = load ptr, ptr %i.kk, align 8
  %i.km = trunc nsw i64 %i.kh to i32
  %i.kn = invoke noundef zeroext i1 %i.kl(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.km)
          to label %.noexc53.i unwind label %.loopexit.i, !inline_history !163

.noexc53.i:                                       ; preds = %.lr.ph40.i.i
  br i1 %i.kn, label %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_11ArrayVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i, label %bb.an

bb.an:                                            ; preds = %.noexc53.i
  %i.ko = load ptr, ptr %i.jn, align 8, !tbaa !158
  %i.kp = getelementptr inbounds [4 x i8], ptr %i.ko, i64 %i.kh
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !3  ; 2 uses
  %i.kr = load ptr, ptr %i.jo, align 8, !tbaa !161 ; 3 uses
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.kh
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !3  ; 2 uses
  %.not.i.i.i.i.i129 = icmp eq ptr %i.kg, %i.kf
  br i1 %.not.i.i.i.i.i129, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i32 %i.kq, ptr %i.kg, align 4, !tbaa !164
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  store i32 %i.kt, ptr %i.ku, align 4, !tbaa !166
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 2 uses
  store ptr %i.kv, ptr %i.jp, align 8, !tbaa !167
  br label %_ZN8facebook5velox12_GLOBAL__N_19Selection8addRangeEii.exit.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.kw = ptrtoint ptr %i.kf to i64               ; 2 uses
  %i.kx = ptrtoint ptr %i.ke to i64               ; 3 uses
  %i.ky = sub i64 %i.kw, %i.kx                    ; 4 uses
  %i.kz = icmp eq i64 %i.ky, 9223372036854775800
  br i1 %i.kz, label %.invoke.i, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.ap
  %i.la = ashr exact i64 %i.ky, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.la, i64 1)
  %i.lb = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.la ; 2 uses
  %i.lc = icmp ult i64 %i.lb, %i.la
  %i.ld = call i64 @llvm.umin.i64(i64 %i.lb, i64 1152921504606846975)
  %i.le = select i1 %i.lc, i64 1152921504606846975, i64 %i.ld ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.le, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.lf = shl nuw nsw i64 %i.le, 3
  %i.lg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lf) #46
          to label %.noexc55.i unwind label %.loopexit.i ; 11 uses

.noexc55.i:                                       ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.ky ; 2 uses
  store i32 %i.kq, ptr %i.lh, align 4, !tbaa !164
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  store i32 %i.kt, ptr %i.li, align 4, !tbaa !166
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ke, %i.kf
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i.i.i.i, label %iter.check1460

iter.check1460:                                   ; preds = %.noexc55.i
  %i.lj = ptrtoaddr ptr %i.lg to i64
  %i.lk = add i64 %i.kw, -8
  %i.ll = sub i64 %i.lk, %i.kx                    ; 3 uses
  %i.lm = lshr i64 %i.ll, 3
  %i.ln = add nuw nsw i64 %i.lm, 1                ; 5 uses
  %min.iters.check1441.a = icmp ult i64 %i.ll, 24
  %i.lo = sub i64 %i.lj, %i.kx
  %diff.check1440 = icmp ult i64 %i.lo, 128
  %or.cond = or i1 %min.iters.check1441.a, %diff.check1440
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check1442

vector.main.loop.iter.check1442:                  ; preds = %iter.check1460
  %min.iters.check1443 = icmp ult i64 %i.ll, 120
  br i1 %min.iters.check1443, label %vec.epilog.ph1464, label %vector.ph1444

vector.ph1444:                                    ; preds = %vector.main.loop.iter.check1442
  %n.mod.vf1445 = and i64 %i.ln, 12
  %n.vec1446 = and i64 %i.ln, 4611686018427387888 ; 4 uses
  %i.lp = shl i64 %n.vec1446, 3                   ; 2 uses
  %i.lq = getelementptr i8, ptr %i.lg, i64 %i.lp  ; 2 uses
  %i.lr = getelementptr i8, ptr %i.ke, i64 %i.lp
  br label %vector.body1447

vector.body1447:                                  ; preds = %vector.body1447, %vector.ph1444
  %index1448 = phi i64 [ 0, %vector.ph1444 ], [ %index.next1455, %vector.body1447 ] ; 2 uses
  %i.ls = shl i64 %index1448, 3                   ; 2 uses
  %next.gep1449 = getelementptr i8, ptr %i.lg, i64 %i.ls ; 4 uses
  %next.gep1450 = getelementptr i8, ptr %i.ke, i64 %i.ls ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.lt = getelementptr i8, ptr %next.gep1450, i64 32
  %i.lu = getelementptr i8, ptr %next.gep1450, i64 64
  %i.lv = getelementptr i8, ptr %next.gep1450, i64 96
  %wide.load1451.a = load <4 x i64>, ptr %next.gep1450, align 4, !alias.scope !171, !noalias !168
  %wide.load1452.a = load <4 x i64>, ptr %i.lt, align 4, !alias.scope !171, !noalias !168
  %wide.load1453 = load <4 x i64>, ptr %i.lu, align 4, !alias.scope !171, !noalias !168
  %wide.load1454 = load <4 x i64>, ptr %i.lv, align 4, !alias.scope !171, !noalias !168
  %i.lw = getelementptr i8, ptr %next.gep1449, i64 32
  %i.lx = getelementptr i8, ptr %next.gep1449, i64 64
  %i.ly = getelementptr i8, ptr %next.gep1449, i64 96
  store <4 x i64> %wide.load1451.a, ptr %next.gep1449, align 4, !alias.scope !168, !noalias !171
  store <4 x i64> %wide.load1452.a, ptr %i.lw, align 4, !alias.scope !168, !noalias !171
  store <4 x i64> %wide.load1453, ptr %i.lx, align 4, !alias.scope !168, !noalias !171
  store <4 x i64> %wide.load1454, ptr %i.ly, align 4, !alias.scope !168, !noalias !171
  %index.next1455 = add nuw i64 %index1448, 16    ; 2 uses
  %i.lz = icmp eq i64 %index.next1455, %n.vec1446
  br i1 %i.lz, label %middle.block1456, label %vector.body1447, !llvm.loop !173

middle.block1456:                                 ; preds = %vector.body1447
  %cmp.n1457 = icmp eq i64 %i.ln, %n.vec1446
  br i1 %cmp.n1457, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i.i.i.i, label %vec.epilog.iter.check1462

vec.epilog.iter.check1462:                        ; preds = %middle.block1456
  %min.epilog.iters.check1463 = icmp eq i64 %n.mod.vf1445, 0
  br i1 %min.epilog.iters.check1463, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph1464, !prof !96

vec.epilog.ph1464:                                ; preds = %vector.main.loop.iter.check1442, %vec.epilog.iter.check1462
  %vec.epilog.resume.val1458 = phi i64 [ %n.vec1446, %vec.epilog.iter.check1462 ], [ 0, %vector.main.loop.iter.check1442 ]
  %n.vec1466 = and i64 %i.ln, 4611686018427387900 ; 3 uses
  %i.ma = shl i64 %n.vec1466, 3                   ; 2 uses
  %i.mb = getelementptr i8, ptr %i.lg, i64 %i.ma  ; 2 uses
  %i.mc = getelementptr i8, ptr %i.ke, i64 %i.ma
  br label %vec.epilog.vector.body1467

vec.epilog.vector.body1467:                       ; preds = %vec.epilog.vector.body1467, %vec.epilog.ph1464
  %index1468 = phi i64 [ %vec.epilog.resume.val1458, %vec.epilog.ph1464 ], [ %index.next1472, %vec.epilog.vector.body1467 ] ; 2 uses
  %i.md = shl i64 %index1468, 3                   ; 2 uses
  %next.gep1469 = getelementptr i8, ptr %i.lg, i64 %i.md
  %next.gep1470 = getelementptr i8, ptr %i.ke, i64 %i.md
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %wide.load1471 = load <4 x i64>, ptr %next.gep1470, align 4, !alias.scope !171, !noalias !168
  store <4 x i64> %wide.load1471, ptr %next.gep1469, align 4, !alias.scope !168, !noalias !171
  %index.next1472 = add nuw i64 %index1468, 4     ; 2 uses
  %i.me = icmp eq i64 %index.next1472, %n.vec1466
  br i1 %i.me, label %vec.epilog.middle.block1473, label %vec.epilog.vector.body1467, !llvm.loop !174

vec.epilog.middle.block1473:                      ; preds = %vec.epilog.vector.body1467
  %cmp.n1474 = icmp eq i64 %i.ln, %n.vec1466
  br i1 %cmp.n1474, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %iter.check1460, %vec.epilog.iter.check1462, %vec.epilog.middle.block1473
  %.012.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.lg, %iter.check1460 ], [ %i.lq, %vec.epilog.iter.check1462 ], [ %i.mb, %vec.epilog.middle.block1473 ]
  %.0911.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ke, %iter.check1460 ], [ %i.lr, %vec.epilog.iter.check1462 ], [ %i.mc, %vec.epilog.middle.block1473 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mh, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mg, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox12_GLOBAL__N_117exportToArrowImplERKNS0_10BaseVectorERKNS1_9SelectionERK12ArrowOptionsR10ArrowArrayPNS0_6memory10MemoryPoolE:bb.a
  store i32 %.0.i128, ptr %i.mx, align 4, !tbaa !3
  %i.my = load ptr, ptr %0, align 8, !tbaa !124
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 32
  %i.na = load ptr, ptr %i.mz, align 8
  %i.nb = trunc nuw nsw i64 %indvars.iv.i50.i to i32
  %i.nc = invoke noundef zeroext i1 %i.na(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.nb)
          to label %.noexc56.i unwind label %.loopexit.split-lp.loopexit.i, !inline_history !163

.noexc56.i:                                       ; preds = %.lr.ph.i49.i
  br i1 %i.nc, label %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_11ArrayVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit31.i.i, label %bb.ar

bb.ar:                                            ; preds = %.noexc56.i
  %i.nd = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !158
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %indvars.iv.i50.i
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !3  ; 2 uses
  %i.ng = load ptr, ptr %i.if, align 8, !tbaa !161 ; 3 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv.i50.i
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !3  ; 2 uses
  %.not.i.i.i13.i.i = icmp eq ptr %i.mw, %i.mv
  br i1 %.not.i.i.i13.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 %i.nf, ptr %i.mw, align 4, !tbaa !164
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  store i32 %i.ni, ptr %i.nj, align 4, !tbaa !166
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mw, i64 8 ; 2 uses
  store ptr %i.nk, ptr %i.jh, align 8, !tbaa !167
  br label %_ZN8facebook5velox12_GLOBAL__N_19Selection8addRangeEii.exit.i14.i.i

bb.at:                                            ; preds = %bb.ar
  %i.nl = ptrtoint ptr %i.mv to i64               ; 2 uses
  %i.nm = ptrtoint ptr %i.mu to i64               ; 3 uses
  %i.nn = sub i64 %i.nl, %i.nm                    ; 4 uses
  %i.no = icmp eq i64 %i.nn, 9223372036854775800
  br i1 %i.no, label %.invoke.i, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i15.i.i

.invoke.i:                                        ; preds = %bb.at, %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #47
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i15.i.i: ; preds = %bb.at
  %i.np = ashr exact i64 %i.nn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i16.i.i = call i64 @llvm.umax.i64(i64 %i.np, i64 1)
  %i.nq = add nsw i64 %.sroa.speculated.i.i.i.i.i16.i.i, %i.np ; 2 uses
  %i.nr = icmp ult i64 %i.nq, %i.np
  %i.ns = call i64 @llvm.umin.i64(i64 %i.nq, i64 1152921504606846975)
  %i.nt = select i1 %i.nr, i64 1152921504606846975, i64 %i.ns ; 3 uses
  %.not.i.i.i.i.i17.i.i = icmp ne i64 %i.nt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i17.i.i)
  %i.nu = shl nuw nsw i64 %i.nt, 3
  %i.nv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nu) #46
          to label %.noexc58.i unwind label %.loopexit.split-lp.loopexit.i ; 11 uses

.noexc58.i:                                       ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i15.i.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.nn ; 2 uses
  store i32 %i.nf, ptr %i.nw, align 4, !tbaa !164
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 4
  store i32 %i.ni, ptr %i.nx, align 4, !tbaa !166
  %.not10.i.i.i.i.i.i.i18.i.i = icmp eq ptr %i.mu, %i.mv
  br i1 %.not10.i.i.i.i.i.i.i18.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i.i23.i.i, label %iter.check1422

iter.check1422:                                   ; preds = %.noexc58.i
  %i.ny = ptrtoaddr ptr %i.nv to i64
  %i.nz = add i64 %i.nl, -8
  %i.oa = sub i64 %i.nz, %i.nm                    ; 3 uses
  %i.ob = lshr i64 %i.oa, 3
  %i.oc = add nuw nsw i64 %i.ob, 1                ; 5 uses
  %min.iters.check1403.a = icmp ult i64 %i.oa, 24
  %i.od = sub i64 %i.ny, %i.nm
  %diff.check1402 = icmp ult i64 %i.od, 128
  %or.cond1477.a = or i1 %min.iters.check1403.a, %diff.check1402
  br i1 %or.cond1477.a, label %.lr.ph.i.i.i.i.i.i.i19.i.i.preheader, label %vector.main.loop.iter.check1404

vector.main.loop.iter.check1404:                  ; preds = %iter.check1422
  %min.iters.check1405 = icmp ult i64 %i.oa, 120
  br i1 %min.iters.check1405, label %vec.epilog.ph1426, label %vector.ph1406

vector.ph1406:                                    ; preds = %vector.main.loop.iter.check1404
  %n.mod.vf1407 = and i64 %i.oc, 12
  %n.vec1408 = and i64 %i.oc, 4611686018427387888 ; 4 uses
  %i.oe = shl i64 %n.vec1408, 3                   ; 2 uses
  %i.of = getelementptr i8, ptr %i.nv, i64 %i.oe  ; 2 uses
  %i.og = getelementptr i8, ptr %i.mu, i64 %i.oe
  br label %vector.body1409

vector.body1409:                                  ; preds = %vector.body1409, %vector.ph1406
  %index1410 = phi i64 [ 0, %vector.ph1406 ], [ %index.next1417, %vector.body1409 ] ; 2 uses
  %i.oh = shl i64 %index1410, 3                   ; 2 uses
  %next.gep1411 = getelementptr i8, ptr %i.nv, i64 %i.oh ; 4 uses
  %next.gep1412 = getelementptr i8, ptr %i.mu, i64 %i.oh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.oi = getelementptr i8, ptr %next.gep1412, i64 32
  %i.oj = getelementptr i8, ptr %next.gep1412, i64 64
  %i.ok = getelementptr i8, ptr %next.gep1412, i64 96
  %wide.load1413.a = load <4 x i64>, ptr %next.gep1412, align 4, !alias.scope !180, !noalias !177
  %wide.load1414.a = load <4 x i64>, ptr %i.oi, align 4, !alias.scope !180, !noalias !177
  %wide.load1415 = load <4 x i64>, ptr %i.oj, align 4, !alias.scope !180, !noalias !177
  %wide.load1416 = load <4 x i64>, ptr %i.ok, align 4, !alias.scope !180, !noalias !177
  %i.ol = getelementptr i8, ptr %next.gep1411, i64 32
  %i.om = getelementptr i8, ptr %next.gep1411, i64 64
  %i.on = getelementptr i8, ptr %next.gep1411, i64 96
  store <4 x i64> %wide.load1413.a, ptr %next.gep1411, align 4, !alias.scope !177, !noalias !180
  store <4 x i64> %wide.load1414.a, ptr %i.ol, align 4, !alias.scope !177, !noalias !180
  store <4 x i64> %wide.load1415, ptr %i.om, align 4, !alias.scope !177, !noalias !180
  store <4 x i64> %wide.load1416, ptr %i.on, align 4, !alias.scope !177, !noalias !180
  %index.next1417 = add nuw i64 %index1410, 16    ; 2 uses
  %i.oo = icmp eq i64 %index.next1417, %n.vec1408
  br i1 %i.oo, label %middle.block1418, label %vector.body1409, !llvm.loop !182

middle.block1418:                                 ; preds = %vector.body1409
  %cmp.n1419 = icmp eq i64 %i.oc, %n.vec1408
  br i1 %cmp.n1419, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i.i23.i.i, label %vec.epilog.iter.check1424

vec.epilog.iter.check1424:                        ; preds = %middle.block1418
  %min.epilog.iters.check1425 = icmp eq i64 %n.mod.vf1407, 0
  br i1 %min.epilog.iters.check1425, label %.lr.ph.i.i.i.i.i.i.i19.i.i.preheader, label %vec.epilog.ph1426, !prof !96

vec.epilog.ph1426:                                ; preds = %vector.main.loop.iter.check1404, %vec.epilog.iter.check1424
  %vec.epilog.resume.val1420 = phi i64 [ %n.vec1408, %vec.epilog.iter.check1424 ], [ 0, %vector.main.loop.iter.check1404 ]
  %n.vec1428 = and i64 %i.oc, 4611686018427387900 ; 3 uses
  %i.op = shl i64 %n.vec1428, 3                   ; 2 uses
  %i.oq = getelementptr i8, ptr %i.nv, i64 %i.op  ; 2 uses
  %i.or = getelementptr i8, ptr %i.mu, i64 %i.op
  br label %vec.epilog.vector.body1429

vec.epilog.vector.body1429:                       ; preds = %vec.epilog.vector.body1429, %vec.epilog.ph1426
  %index1430 = phi i64 [ %vec.epilog.resume.val1420, %vec.epilog.ph1426 ], [ %index.next1434, %vec.epilog.vector.body1429 ] ; 2 uses
  %i.os = shl i64 %index1430, 3                   ; 2 uses
  %next.gep1431 = getelementptr i8, ptr %i.nv, i64 %i.os
  %next.gep1432 = getelementptr i8, ptr %i.mu, i64 %i.os
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %wide.load1433 = load <4 x i64>, ptr %next.gep1432, align 4, !alias.scope !180, !noalias !177
  store <4 x i64> %wide.load1433, ptr %next.gep1431, align 4, !alias.scope !177, !noalias !180
  %index.next1434 = add nuw i64 %index1430, 4     ; 2 uses
  %i.ot = icmp eq i64 %index.next1434, %n.vec1428
  br i1 %i.ot, label %vec.epilog.middle.block1435, label %vec.epilog.vector.body1429, !llvm.loop !183

vec.epilog.middle.block1435:                      ; preds = %vec.epilog.vector.body1429
  %cmp.n1436 = icmp eq i64 %i.oc, %n.vec1428
  br i1 %cmp.n1436, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i.i23.i.i, label %.lr.ph.i.i.i.i.i.i.i19.i.i.preheader

.lr.ph.i.i.i.i.i.i.i19.i.i.preheader:             ; preds = %iter.check1422, %vec.epilog.iter.check1424, %vec.epilog.middle.block1435
  %.012.i.i.i.i.i.i.i20.i.i.ph = phi ptr [ %i.nv, %iter.check1422 ], [ %i.of, %vec.epilog.iter.check1424 ], [ %i.oq, %vec.epilog.middle.block1435 ]
  %.0911.i.i.i.i.i.i.i21.i.i.ph = phi ptr [ %i.mu, %iter.check1422 ], [ %i.og, %vec.epilog.iter.check1424 ], [ %i.or, %vec.epilog.middle.block1435 ]
  br label %.lr.ph.i.i.i.i.i.i.i19.i.i

.lr.ph.i.i.i.i.i.i.i19.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i19.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i19.i.i
  %.012.i.i.i.i.i.i.i20.i.i = phi ptr [ %i.ow, %.lr.ph.i.i.i.i.i.i.i19.i.i ], [ %.012.i.i.i.i.i.i.i20.i.i.ph, %.lr.ph.i.i.i.i.i.i.i19.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i.i21.i.i = phi ptr [ %i.ov, %.lr.ph.i.i.i.i.i.i.i19.i.i ], [ %.0911.i.i.i.i.i.i.i21.i.i.ph, %.lr.ph.i.i.i.i.i.i.i19.i.i.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.ou = load i64, ptr %.0911.i.i.i.i.i.i.i21.i.i, align 4, !alias.scope !180, !noalias !177
  store i64 %i.ou, ptr %.012.i.i.i.i.i.i.i20.i.i, align 4, !alias.scope !177, !noalias !180
  %i.ov = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i21.i.i, i64 8 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i20.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i22.i.i = icmp eq ptr %i.ov, %i.mv
  br i1 %.not.i.i.i.i.i.i.i22.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i.i23.i.i, label %.lr.ph.i.i.i.i.i.i.i19.i.i, !llvm.loop !184

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i.i23.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i19.i.i, %middle.block1418, %vec.epilog.middle.block1435, %.noexc58.i
  %.0.lcssa.i.i.i.i.i.i.i24.i.i = phi ptr [ %i.nv, %.noexc58.i ], [ %i.oq, %vec.epilog.middle.block1435 ], [ %i.of, %middle.block1418 ], [ %i.ow, %.lr.ph.i.i.i.i.i.i.i19.i.i ]
  %i.ox = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i24.i.i, i64 8 ; 2 uses
  %.not.i24.i.i.i.i25.i.i = icmp eq ptr %i.mu, null
  br i1 %.not.i24.i.i.i.i25.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i29.i.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i.i23.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.mu, i64 noundef %i.nn) #45
  %.pre4.pre.i28.i.i = load ptr, ptr %i.if, align 8, !tbaa !161
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i29.i.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i29.i.i: ; preds = %bb.au, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i.i23.i.i
  %.pre4.i30.i.i = phi ptr [ %.pre4.pre.i28.i.i, %bb.au ], [ %i.ng, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i.i23.i.i ]
  store ptr %i.nv, ptr %67, align 8, !tbaa !41
  store ptr %i.ox, ptr %i.jh, align 8, !tbaa !167
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.nt ; 2 uses
  store ptr %i.oy, ptr %i.ji, align 8, !tbaa !44
  br label %_ZN8facebook5velox12_GLOBAL__N_19Selection8addRangeEii.exit.i14.i.i

_ZN8facebook5velox12_GLOBAL__N_19Selection8addRangeEii.exit.i14.i.i: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i29.i.i, %bb.as
  %i.oz = phi ptr [ %i.mu, %bb.as ], [ %i.nv, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i29.i.i ]
  %i.pa = phi ptr [ %i.mv, %bb.as ], [ %i.oy, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i29.i.i ]
  %i.pb = phi ptr [ %i.nk, %bb.as ], [ %i.ox, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i29.i.i ]
  %i.pc = phi ptr [ %i.ng, %bb.as ], [ %.pre4.i30.i.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i29.i.i ]
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %indvars.iv.i50.i
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !3
  %i.pf = add nsw i32 %i.pe, %.0.i128
  br label %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_11ArrayVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit31.i.i

_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_11ArrayVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit31.i.i: ; preds = %_ZN8facebook5velox12_GLOBAL__N_19Selection8addRangeEii.exit.i14.i.i, %.noexc56.i
  %i.pg = phi ptr [ %i.mu, %.noexc56.i ], [ %i.oz, %_ZN8facebook5velox12_GLOBAL__N_19Selection8addRangeEii.exit.i14.i.i ]
  %i.ph = phi ptr [ %i.mv, %.noexc56.i ], [ %i.pa, %_ZN8facebook5velox12_GLOBAL__N_19Selection8addRangeEii.exit.i14.i.i ]
  %i.pi = phi ptr [ %i.mw, %.noexc56.i ], [ %i.pb, %_ZN8facebook5velox12_GLOBAL__N_19Selection8addRangeEii.exit.i14.i.i ]
  %.1.i = phi i32 [ %.0.i128, %.noexc56.i ], [ %i.pf, %_ZN8facebook5velox12_GLOBAL__N_19Selection8addRangeEii.exit.i14.i.i ] ; 2 uses
  %i.pj = load i32, ptr %i.je, align 8, !tbaa !33
  %i.pk = sext i32 %i.pj to i64
  %i.pl = icmp slt i64 %indvars.iv.next.i51.i, %i.pk
  br i1 %i.pl, label %.lr.ph.i49.i, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_11ArrayVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.loopexit107.i, !llvm.loop !185

_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_11ArrayVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.loopexit107.i: ; preds = %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_11ArrayVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit31.i.i
  %70 = trunc nuw nsw i64 %indvars.iv.next.i51.i to i32
  br label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_11ArrayVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.i.a

_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_11ArrayVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.i.a: ; preds = %._crit_edge.i.i, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_11ArrayVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.loopexit107.i, %bb.am, %.preheader.i.i
  %.489.i = phi i32 [ 0, %bb.am ], [ 0, %.preheader.i.i ], [ %70, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_11ArrayVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.loopexit107.i ], [ %.287.i, %._crit_edge.i.i ]
  %.6.i = phi i32 [ 0, %bb.am ], [ 0, %.preheader.i.i ], [ %.1.i, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_11ArrayVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.loopexit107.i ], [ %.3.i, %._crit_edge.i.i ]
  %i.pm = sext i32 %.489.i to i64
  br label %bb.av

.loopexit.i:                                      ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %.lr.ph40.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i15.i.i, %.lr.ph.i49.i
  %lpad.loopexit93.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke.i
  %lpad.loopexit.split-lp94.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.av:                                            ; preds = %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_11ArrayVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.i.a, %bb.ak, %.loopexit97.i
  %.sink159.i = phi i64 [ %i.pm, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_11ArrayVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.i.a ], [ 0, %.loopexit97.i ], [ %i.iq, %bb.ak ]
  %.6.sink.i = phi i32 [ %.6.i, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_11ArrayVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.i.a ], [ 0, %.loopexit97.i ], [ %i.jc, %bb.ak ]
  %i.pn = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %.sink159.i
  store i32 %.6.sink.i, ptr %i.pn, align 4, !tbaa !3
  %i.po = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8 ; 2 uses
  %i.pq = load ptr, ptr %45, align 8, !tbaa !85   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.pq, null
  br i1 %.not.i.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 40
  %i.ps = atomicrmw add ptr %i.pr, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i.i.i

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i.i.i: ; preds = %bb.aw, %bb.av
  %i.pt = load ptr, ptr %i.pp, align 8, !tbaa !85 ; 7 uses
  store ptr %i.pq, ptr %i.pp, align 8, !tbaa !85
  %.not.i2.i.i.i = icmp eq ptr %i.pt, null
  br i1 %.not.i2.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i.i.i
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 40
  %i.pv = atomicrmw sub ptr %i.pu, i32 1 acq_rel, align 4
  %i.pw = icmp eq i32 %i.pv, 1
  br i1 %i.pw, label %.sink.split.i.i.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit.i.i

.sink.split.i.i.i.i.i:                            ; preds = %bb.ax
  %i.px = load ptr, ptr %i.pt, align 8, !tbaa !124
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 64
  %i.pz = load ptr, ptr %i.py, align 8
  invoke void %i.pz(ptr noundef nonnull align 8 dereferenceable(64) %i.pt)
          to label %.noexc.i.i.i.i unwind label %bb.ay, !inline_history !186

.noexc.i.i.i.i:                                   ; preds = %.sink.split.i.i.i.i.i
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !187
  %.not.i.i.i.i60.i = icmp eq ptr %i.qb, null
  %i.qc = load ptr, ptr %i.pt, align 8, !tbaa !124
  %..i.i.i.i.i = select i1 %.not.i.i.i.i60.i, i64 8, i64 48
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 %..i.i.i.i.i
  %i.qe = load ptr, ptr %i.qd, align 8
  invoke void %i.qe(ptr noundef nonnull align 8 dereferenceable(64) %i.pt)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit.i.i unwind label %bb.ay, !inline_history !186

bb.ay:                                            ; preds = %.noexc.i.i.i.i, %.sink.split.i.i.i.i.i
  %i.qf = landingpad { ptr, i32 }
          catch ptr null
  %i.qg = extractvalue { ptr, i32 } %i.qf, 0
  call void @__clang_call_terminate(ptr %i.qg) #48
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit.i.i: ; preds = %.noexc.i.i.i.i, %bb.ax, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i.i.i
  %i.qh = load ptr, ptr %45, align 8, !tbaa !85   ; 8 uses
  %.not.i59.i = icmp eq ptr %i.qh, null
  br i1 %.not.i59.i, label %_ZN8facebook5velox12_GLOBAL__N_124VeloxToArrowBridgeHolder9setBufferEmRKN5boost13intrusive_ptrINS0_6BufferEEE.exit.thread.i, label %bb.az

_ZN8facebook5velox12_GLOBAL__N_124VeloxToArrowBridgeHolder9setBufferEmRKN5boost13intrusive_ptrINS0_6BufferEEE.exit.thread.i: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit.i.i
  %i.qi = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 2, ptr %i.qi, align 8, !tbaa !103
  br label %bb.bb

bb.az:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit.i.i
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !157
  %i.ql = load ptr, ptr %i.f, align 8, !tbaa !80
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  store ptr %i.qk, ptr %i.qm, align 8, !tbaa !82
  %i.qn = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 2, ptr %i.qn, align 8, !tbaa !103
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qh, i64 40
  %i.qp = atomicrmw sub ptr %i.qo, i32 1 acq_rel, align 4
  %i.qq = icmp eq i32 %i.qp, 1
  br i1 %i.qq, label %.sink.split.i.i.i, label %bb.bb

.sink.split.i.i.i:                                ; preds = %bb.az
  %i.qr = load ptr, ptr %i.qh, align 8, !tbaa !124
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 64
  %i.qt = load ptr, ptr %i.qs, align 8
  invoke void %i.qt(ptr noundef nonnull align 8 dereferenceable(64) %i.qh)
          to label %.noexc.i.i unwind label %bb.ba, !inline_history !186

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !187
  %.not.i.i.i127 = icmp eq ptr %i.qv, null
  %i.qw = load ptr, ptr %i.qh, align 8, !tbaa !124
  %..i.i.i = select i1 %.not.i.i.i127, i64 8, i64 48
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 %..i.i.i
  %i.qy = load ptr, ptr %i.qx, align 8
  invoke void %i.qy(ptr noundef nonnull align 8 dereferenceable(64) %i.qh)
          to label %bb.bb unwind label %bb.ba, !inline_history !186

bb.ba:                                            ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.qz = landingpad { ptr, i32 }
          catch ptr null
  %i.ra = extractvalue { ptr, i32 } %i.qz, 0
  call void @__clang_call_terminate(ptr %i.ra) #48
  unreachable

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i, %bb.al
  %.pn.i124 = phi { ptr, i32 } [ %i.jd, %bb.al ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit93.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp94.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %45) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #38
  br label %.body134

bb.bb:                                            ; preds = %.noexc.i.i, %bb.az, %_ZN8facebook5velox12_GLOBAL__N_124VeloxToArrowBridgeHolder9setBufferEmRKN5boost13intrusive_ptrINS0_6BufferEEE.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #38
  %i.rb = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !112 ; 4 uses
  %i.rd = load ptr, ptr %i.q, align 8, !tbaa !113 ; 3 uses
  %i.re = ptrtoint ptr %i.rc to i64
  %i.rf = ptrtoint ptr %i.rd to i64
  %i.rg = sub i64 %i.re, %i.rf
  %i.rh = ashr exact i64 %i.rg, 3                 ; 2 uses
  %i.ri = icmp eq ptr %i.rc, %i.rd
  br i1 %i.ri, label %_ZNSt6vectorISt10unique_ptrI10ArrowArraySt14default_deleteIS1_EESaIS4_EE6resizeEm.exit.thread.i, label %bb.bc

_ZNSt6vectorISt10unique_ptrI10ArrowArraySt14default_deleteIS1_EESaIS4_EE6resizeEm.exit.thread.i: ; preds = %bb.bb
  %i.rj = sub nuw nsw i64 1, %i.rh
  invoke void @_ZNSt6vectorISt10unique_ptrI10ArrowArraySt14default_deleteIS1_EESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.rj)
          to label %.noexc121 unwind label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.rk = icmp ugt i64 %i.rh, 1
  br i1 %i.rk, label %bb.bd, label %.noexc121

bb.bd:                                            ; preds = %bb.bc
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rd, i64 8 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.rc, %i.rl
  br i1 %.not.i.i.i, label %.noexc121, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bd, %_ZSt8_DestroyISt10unique_ptrI10ArrowArraySt14default_deleteIS1_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.rn, %_ZSt8_DestroyISt10unique_ptrI10ArrowArraySt14default_deleteIS1_EEEvPT_.exit.i.i.i.i.i ], [ %i.rl, %bb.bd ] ; 2 uses
  %i.rm = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !114 ; 2 uses
  %.not.i.i.i.i.i.i.i.i120 = icmp eq ptr %i.rm, null
  br i1 %.not.i.i.i.i.i.i.i.i120, label %_ZSt8_DestroyISt10unique_ptrI10ArrowArraySt14default_deleteIS1_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteI10ArrowArrayEclEPS0_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteI10ArrowArrayEclEPS0_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.rm, i64 noundef 80) #45
  br label %_ZSt8_DestroyISt10unique_ptrI10ArrowArraySt14default_deleteIS1_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrI10ArrowArraySt14default_deleteIS1_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteI10ArrowArrayEclEPS0_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.rn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.rn, %i.rc
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrI10ArrowArraySt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !115

_ZSt8_DestroyIPSt10unique_ptrI10ArrowArraySt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrI10ArrowArraySt14default_deleteIS1_EEEvPT_.exit.i.i.i.i.i
  store ptr %i.rl, ptr %i.rb, align 8, !tbaa !112
  br label %.noexc121

.noexc121:                                        ; preds = %bb.bc, %bb.bd, %_ZSt8_DestroyIPSt10unique_ptrI10ArrowArraySt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorISt10unique_ptrI10ArrowArraySt14default_deleteIS1_EESaIS4_EE6resizeEm.exit.thread.i
  %i.ro = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znam(i64 noundef 64) #46
          to label %.noexc122 unwind label %bb.bg ; 2 uses

.noexc122:                                        ; preds = %.noexc121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ro, i8 0, i64 64, i1 false), !noalias !188
  %i.rp = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 3 uses
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !120 ; 2 uses
  store ptr %i.ro, ptr %i.rp, align 8, !tbaa !120
  %.not.i.i.i.i3.i = icmp eq ptr %i.rq, null
  br i1 %.not.i.i.i.i3.i, label %_ZN8facebook5velox12_GLOBAL__N_124VeloxToArrowBridgeHolder14resizeChildrenEm.exit, label %_ZNKSt14default_deleteIA_P10ArrowArrayEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_P10ArrowArrayEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i: ; preds = %.noexc122
  call void @_ZdaPv(ptr noundef nonnull %i.rq) #45
  br label %_ZN8facebook5velox12_GLOBAL__N_124VeloxToArrowBridgeHolder14resizeChildrenEm.exit

_ZN8facebook5velox12_GLOBAL__N_124VeloxToArrowBridgeHolder14resizeChildrenEm.exit: ; preds = %_ZNKSt14default_deleteIA_P10ArrowArrayEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i, %.noexc122
  %i.rr = load ptr, ptr %i.dt, align 8, !tbaa !7  ; 2 uses
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !124
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 280
  %i.ru = load ptr, ptr %i.rt, align 8
  %i.rv = invoke noundef ptr %i.ru(ptr noundef nonnull align 8 dereferenceable(94) %i.rr)
          to label %bb.be unwind label %bb.bg, !inline_history !191

bb.be:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_124VeloxToArrowBridgeHolder14resizeChildrenEm.exit
  %i.rw = invoke fastcc noundef ptr @_ZN8facebook5velox12_GLOBAL__N_124VeloxToArrowBridgeHolder13allocateChildEm(ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 noundef 0)
          to label %bb.bf unwind label %bb.bg, !inline_history !191

bb.bf:                                            ; preds = %bb.be
  invoke fastcc void @_ZN8facebook5velox12_GLOBAL__N_117exportToArrowImplERKNS0_10BaseVectorERKNS1_9SelectionERK12ArrowOptionsR10ArrowArrayPNS0_6memory10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(94) %i.rv, ptr noundef nonnull align 8 dereferenceable(36) %67, ptr noundef nonnull align 8 dereferenceable(51) %2, ptr noundef nonnull align 8 dereferenceable(80) %i.rw, ptr noundef %4)
          to label %_ZN8facebook5velox12_GLOBAL__N_112exportArraysERKNS0_11ArrayVectorERKNS1_9SelectionERK12ArrowOptionsR10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderE.exit unwind label %bb.bg, !inline_history !191

bb.bg:                                            ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit.i, %bb.ac, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.i, %.noexc121, %_ZNSt6vectorISt10unique_ptrI10ArrowArraySt14default_deleteIS1_EESaIS4_EE6resizeEm.exit.thread.i, %bb.bf, %bb.be, %_ZN8facebook5velox12_GLOBAL__N_124VeloxToArrowBridgeHolder14resizeChildrenEm.exit
  %i.rx = landingpad { ptr, i32 }
          cleanup
  br label %.body134

.body134:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.loopexit.split-lp.i, %bb.bg
  %eh.lpad-body135 = phi { ptr, i32 } [ %i.rx, %bb.bg ], [ %i.ho, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.hd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn.i124, %.loopexit.split-lp.i ]
  %i.ry = load i8, ptr %i.dx, align 8, !tbaa !31, !range !39, !noundef !40
  %i.rz = trunc nuw i8 %i.ry to i1
  store i8 0, ptr %i.dx, align 8, !tbaa !31
  br i1 %i.rz, label %bb.bh, label %_ZN8facebook5velox12_GLOBAL__N_19SelectionD2Ev.exit

bb.bh:                                            ; preds = %.body134
  %i.sa = load ptr, ptr %67, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.sa, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_19SelectionD2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.sb = getelementptr inbounds nuw i8, ptr %67, i64 16
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !44
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox12_GLOBAL__N_117exportToArrowImplERKNS0_10BaseVectorERKNS1_9SelectionERK12ArrowOptionsR10ArrowArrayPNS0_6memory10MemoryPoolE:bb.a
vec.epilog.middle.block1239:                      ; preds = %vec.epilog.vector.body1233
  %i.agu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ags) ; 2 uses
  %cmp.n1240 = icmp eq i64 %i.aei, %n.vec1232
  br i1 %cmp.n1240, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.i281, label %.lr.ph.i32.i294.preheader

.lr.ph.i32.i294.preheader:                        ; preds = %iter.check1226, %vec.epilog.iter.check1228, %vec.epilog.middle.block1239
  %.0612.i33.i295.ph = phi i32 [ 0, %iter.check1226 ], [ %i.agl, %vec.epilog.iter.check1228 ], [ %i.agu, %vec.epilog.middle.block1239 ]
  %.sroa.08.011.i34.i296.ph = phi ptr [ %i.adz, %iter.check1226 ], [ %i.aft, %vec.epilog.iter.check1228 ], [ %i.agn, %vec.epilog.middle.block1239 ]
  br label %.lr.ph.i32.i294

.lr.ph.i32.i294:                                  ; preds = %.lr.ph.i32.i294.preheader, %.lr.ph.i32.i294
  %.0612.i33.i295 = phi i32 [ %i.agw, %.lr.ph.i32.i294 ], [ %.0612.i33.i295.ph, %.lr.ph.i32.i294.preheader ]
  %.sroa.08.011.i34.i296 = phi ptr [ %i.agx, %.lr.ph.i32.i294 ], [ %.sroa.08.011.i34.i296.ph, %.lr.ph.i32.i294.preheader ] ; 2 uses
  %i.agv = load i64, ptr %.sroa.08.011.i34.i296, align 4
  %.sroa.3.0.extract.shift.i35.i297 = lshr i64 %i.agv, 32
  %.sroa.3.0.extract.trunc.i36.i298 = trunc nuw i64 %.sroa.3.0.extract.shift.i35.i297 to i32
  %i.agw = add nsw i32 %.0612.i33.i295, %.sroa.3.0.extract.trunc.i36.i298 ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i34.i296, i64 8 ; 2 uses
  %i.agy = icmp eq ptr %i.agx, %i.aeb
  br i1 %i.agy, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.i281, label %.lr.ph.i32.i294, !llvm.loop !228

_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.sink.split.i279: ; preds = %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.thread.i163, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.i299
  %.0.i31.ph.i280 = phi i32 [ %i.afr, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.thread.i163 ], [ 0, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.i299 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #38
  br label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.i281

_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.i281: ; preds = %.lr.ph.i32.i294, %middle.block1219, %vec.epilog.middle.block1239, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.sink.split.i279
  %.0.i31.i282 = phi i32 [ %.0.i31.ph.i280, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.sink.split.i279 ], [ %i.agu, %vec.epilog.middle.block1239 ], [ %i.agl, %middle.block1219 ], [ %i.agw, %.lr.ph.i32.i294 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #38, !noalias !229
  store i32 %i.adx, ptr %37, align 16, !tbaa !139, !alias.scope !232, !noalias !229
  %i.agz = getelementptr inbounds nuw i8, ptr %37, i64 16
  store i32 %.0.i31.i282, ptr %i.agz, align 16, !tbaa !139, !alias.scope !232, !noalias !229
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %38, ptr nonnull @.str.32, i64 11, i64 17, ptr nonnull %37)
          to label %.noexc301 unwind label %bb.gd

.noexc301:                                        ; preds = %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.i281
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #38, !noalias !229
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_9MapVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %38, ptr nonnull @.str.32) #47
          to label %bb.eq unwind label %bb.er

bb.eq:                                            ; preds = %.noexc301
  unreachable

bb.er:                                            ; preds = %.noexc301
  %i.aha = landingpad { ptr, i32 }
          cleanup
  %i.ahb = load ptr, ptr %38, align 8, !tbaa !143 ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.ahd = icmp eq ptr %i.ahb, %i.ahc
  br i1 %i.ahd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i283: ; preds = %bb.er
  %i.ahe = load i64, ptr %i.ahc, align 8, !tbaa !139
  %i.ahf = add i64 %i.ahe, 1
  call void @_ZdlPvm(ptr noundef %i.ahb, i64 noundef %i.ahf) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i284

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i284: ; preds = %bb.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i283
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #38
  br label %.body303

bb.es:                                            ; preds = %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.thread.i163, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.thread148.i291, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.i299
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #38
  %i.ahg = load i64, ptr %3, align 8, !tbaa !99   ; 2 uses
  %i.ahh = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ahg, i64 1) ; 2 uses
  %i.ahi = extractvalue { i64, i1 } %i.ahh, 1
  br i1 %i.ahi, label %bb.et, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit.i165, !prof !132

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #38, !noalias !235
  store ptr @.str.16, ptr %35, align 16, !tbaa !139, !noalias !235
  %i.ahj = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i64 %i.ahg, ptr %i.ahj, align 16, !tbaa !139, !noalias !235
  %i.ahk = getelementptr inbounds nuw i8, ptr %35, i64 32
  store i64 1, ptr %i.ahk, align 16, !tbaa !139, !noalias !235
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr nonnull @.str.24, i64 20, i64 1100, ptr nonnull %35)
          to label %.noexc302 unwind label %bb.gd

.noexc302:                                        ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #38, !noalias !235
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr nonnull @.str.24) #47
          to label %bb.eu unwind label %bb.ev

bb.eu:                                            ; preds = %.noexc302
  unreachable

bb.ev:                                            ; preds = %.noexc302
  %i.ahl = landingpad { ptr, i32 }
          cleanup
  %i.ahm = load ptr, ptr %36, align 8, !tbaa !143 ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.aho = icmp eq ptr %i.ahm, %i.ahn
  br i1 %i.aho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i277, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i276: ; preds = %bb.ev
  %i.ahp = load i64, ptr %i.ahn, align 8, !tbaa !139
  %i.ahq = add i64 %i.ahp, 1
  call void @_ZdlPvm(ptr noundef %i.ahm, i64 noundef %i.ahq) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i277

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i277: ; preds = %bb.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i276
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #38
  br label %.body303

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit.i165: ; preds = %bb.es
  %i.ahr = extractvalue { i64, i1 } %i.ahh, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #38
  %i.ahs = getelementptr inbounds nuw i8, ptr %40, i64 4
  store i8 0, ptr %i.ahs, align 4, !tbaa !150
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %39, i64 noundef %i.ahr, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(8) %40, i1 noundef zeroext false)
          to label %.noexc305 unwind label %bb.gd

.noexc305:                                        ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #38
  %i.aht = load ptr, ptr %39, align 8, !tbaa !85  ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 44
  %i.ahv = load i8, ptr %i.ahu, align 4, !tbaa !151
  %i.ahw = and i8 %i.ahv, 2
  %.not.i.i166 = icmp eq i8 %i.ahw, 0
  br i1 %.not.i.i166, label %bb.ex, label %bb.ew, !prof !156

bb.ew:                                            ; preds = %.noexc305
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #47
          to label %.noexc.i171 unwind label %bb.fc

.noexc.i171:                                      ; preds = %bb.ew
  unreachable

bb.ex:                                            ; preds = %.noexc305
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.aht, i64 16
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !157 ; 4 uses
  %.val.i172 = load i8, ptr %i.s, align 8, !tbaa !31, !range !39, !noundef !40
  %i.ahz = trunc nuw i8 %.val.i172 to i1
  br i1 %i.ahz, label %bb.fd, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aia = load i32, ptr %i.adw, align 8, !tbaa !13 ; 2 uses
  %i.aib = icmp slt i32 %i.aia, 2
  %.phi.trans.insert.i173 = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %.pre.i174 = load ptr, ptr %.phi.trans.insert.i173, align 8, !tbaa !158 ; 3 uses
  br i1 %i.aib, label %.loopexit97.i275, label %.lr.ph.i38.i175

.lr.ph.i38.i175:                                  ; preds = %bb.ey
  %i.aic = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !161
  %wide.trip.count.i.i176 = zext nneg i32 %i.aia to i64
  %.pre.i.i177 = load i32, ptr %.pre.i174, align 4, !tbaa !3
  br label %bb.fa

bb.ez:                                            ; preds = %bb.fa
  %indvars.iv.next.i.i273 = add nuw nsw i64 %indvars.iv.i.i178, 1 ; 2 uses
  %exitcond.not.i.i274 = icmp eq i64 %indvars.iv.next.i.i273, %wide.trip.count.i.i176
  br i1 %exitcond.not.i.i274, label %.loopexit97.i275, label %bb.fa, !llvm.loop !238

bb.fa:                                            ; preds = %bb.ez, %.lr.ph.i38.i175
  %i.aie = phi i32 [ %.pre.i.i177, %.lr.ph.i38.i175 ], [ %i.aii, %bb.ez ]
  %indvars.iv.i.i178 = phi i64 [ 1, %.lr.ph.i38.i175 ], [ %indvars.iv.next.i.i273, %bb.ez ] ; 3 uses
  %i.aif = getelementptr [4 x i8], ptr %i.aid, i64 %indvars.iv.i.i178
  %i.aig = getelementptr i8, ptr %i.aif, i64 -4
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !3
  %i.aii = add nsw i32 %i.aih, %i.aie             ; 2 uses
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %.pre.i174, i64 %indvars.iv.i.i178
  %i.aik = load i32, ptr %i.aij, align 4, !tbaa !3
  %.not.i39.i179 = icmp eq i32 %i.aii, %i.aik
  br i1 %.not.i39.i179, label %bb.ez, label %.preheader.i.i182

.loopexit97.i275:                                 ; preds = %bb.ez, %bb.ey
  %i.ail = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aim = load i32, ptr %i.ail, align 8, !tbaa !33 ; 3 uses
  %i.ain = sext i32 %i.aim to i64                 ; 2 uses
  %i.aio = shl nsw i64 %i.ain, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ahy, ptr align 4 %.pre.i174, i64 %i.aio, i1 false)
  %i.aip = icmp eq i32 %i.aim, 0
  br i1 %i.aip, label %bb.fm, label %bb.fb

bb.fb:                                            ; preds = %.loopexit97.i275
  %i.aiq = add nsw i32 %i.aim, -1
  %i.air = load ptr, ptr %.phi.trans.insert.i173, align 8, !tbaa !158
  %i.ais = sext i32 %i.aiq to i64                 ; 2 uses
  %i.ait = getelementptr inbounds [4 x i8], ptr %i.air, i64 %i.ais
  %i.aiu = load i32, ptr %i.ait, align 4, !tbaa !3
  %i.aiv = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aiw = load ptr, ptr %i.aiv, align 8, !tbaa !161
  %i.aix = getelementptr inbounds [4 x i8], ptr %i.aiw, i64 %i.ais
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !3
  %i.aiz = add nsw i32 %i.aiy, %i.aiu
  br label %bb.fm

bb.fc:                                            ; preds = %bb.ew
  %i.aja = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i167

.preheader.i.i182:                                ; preds = %bb.fa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %66, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.adu, align 8, !tbaa !31
  %i.ajb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ajc = load i32, ptr %i.ajb, align 8, !tbaa !33
  %i.ajd = icmp sgt i32 %i.ajc, 0
  br i1 %i.ajd, label %.lr.ph.i49.preheader.i201, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_9MapVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.i.a

.lr.ph.i49.preheader.i201:                        ; preds = %.preheader.i.i182
  %i.aje = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 2 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %66, i64 16
  br label %.lr.ph.i49.i202

bb.fd:                                            ; preds = %bb.ex
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %66, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.adu, align 8, !tbaa !31
  %i.ajg = load ptr, ptr %1, align 8, !tbaa !92   ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aji = load ptr, ptr %i.ajh, align 8, !tbaa !92 ; 2 uses
  %i.ajj = icmp eq ptr %i.ajg, %i.aji
  br i1 %i.ajj, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_9MapVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.i.a, label %.lr.ph43.i.preheader.i231

.lr.ph43.i.preheader.i231:                        ; preds = %bb.fd
  %i.ajk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ajl = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 2 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %66, i64 16
  br label %.lr.ph43.i.i232

.lr.ph43.i.i232:                                  ; preds = %._crit_edge.i.i238, %.lr.ph43.i.preheader.i231
  %i.ajo = phi ptr [ %i.ajw, %._crit_edge.i.i238 ], [ null, %.lr.ph43.i.preheader.i231 ] ; 2 uses
  %i.ajp = phi ptr [ %i.ajx, %._crit_edge.i.i238 ], [ null, %.lr.ph43.i.preheader.i231 ] ; 2 uses
  %i.ajq = phi ptr [ %i.ajy, %._crit_edge.i.i238 ], [ null, %.lr.ph43.i.preheader.i231 ] ; 2 uses
  %.186.i233 = phi i32 [ %.287.i239, %._crit_edge.i.i238 ], [ 0, %.lr.ph43.i.preheader.i231 ] ; 2 uses
  %.2.i234 = phi i32 [ %.3.i240, %._crit_edge.i.i238 ], [ 0, %.lr.ph43.i.preheader.i231 ] ; 2 uses
  %.sroa.033.041.i.i235 = phi ptr [ %i.ajz, %._crit_edge.i.i238 ], [ %i.ajg, %.lr.ph43.i.preheader.i231 ] ; 2 uses
  %i.ajr = load i64, ptr %.sroa.033.041.i.i235, align 4 ; 2 uses
  %.sroa.4.0.extract.shift.i.i236 = lshr i64 %i.ajr, 32 ; 2 uses
  %.sroa.4.0.extract.trunc.i.i237 = trunc nuw i64 %.sroa.4.0.extract.shift.i.i236 to i32
  %i.ajs = icmp sgt i32 %.sroa.4.0.extract.trunc.i.i237, 0
  br i1 %i.ajs, label %.lr.ph40.preheader.i.i241, label %._crit_edge.i.i238

.lr.ph40.preheader.i.i241:                        ; preds = %.lr.ph43.i.i232
  %sext.i.i242 = shl i64 %i.ajr, 32
  %i.ajt = ashr exact i64 %sext.i.i242, 32
  %i.aju = sext i32 %.186.i233 to i64
  br label %.lr.ph40.i.i243

._crit_edge.i.loopexit.i256:                      ; preds = %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_9MapVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i
  %i.ajv = trunc nsw i64 %indvars.iv.next.i247 to i32
  br label %._crit_edge.i.i238

._crit_edge.i.i238:                               ; preds = %._crit_edge.i.loopexit.i256, %.lr.ph43.i.i232
  %i.ajw = phi ptr [ %i.ajo, %.lr.ph43.i.i232 ], [ %i.amo, %._crit_edge.i.loopexit.i256 ]
  %i.ajx = phi ptr [ %i.ajp, %.lr.ph43.i.i232 ], [ %i.amp, %._crit_edge.i.loopexit.i256 ]
  %i.ajy = phi ptr [ %i.ajq, %.lr.ph43.i.i232 ], [ %i.amq, %._crit_edge.i.loopexit.i256 ]
  %.287.i239 = phi i32 [ %.186.i233, %.lr.ph43.i.i232 ], [ %i.ajv, %._crit_edge.i.loopexit.i256 ] ; 2 uses
  %.3.i240 = phi i32 [ %.2.i234, %.lr.ph43.i.i232 ], [ %.5.i253, %._crit_edge.i.loopexit.i256 ] ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %.sroa.033.041.i.i235, i64 8 ; 2 uses
  %i.aka = icmp eq ptr %i.ajz, %i.aji
  br i1 %i.aka, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_9MapVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.i.a, label %.lr.ph43.i.i232

.lr.ph40.i.i243:                                  ; preds = %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_9MapVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i, %.lr.ph40.preheader.i.i241
  %i.akb = phi ptr [ %i.amo, %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_9MapVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i ], [ %i.ajo, %.lr.ph40.preheader.i.i241 ] ; 11 uses
  %i.akc = phi ptr [ %i.amp, %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_9MapVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i ], [ %i.ajp, %.lr.ph40.preheader.i.i241 ] ; 6 uses
  %i.akd = phi ptr [ %i.amq, %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_9MapVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i ], [ %i.ajq, %.lr.ph40.preheader.i.i241 ] ; 5 uses
  %indvars.iv.i244 = phi i64 [ %indvars.iv.next.i247, %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_9MapVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i ], [ %i.aju, %.lr.ph40.preheader.i.i241 ] ; 2 uses
  %.4.i245 = phi i32 [ %.5.i253, %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_9MapVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i ], [ %.2.i234, %.lr.ph40.preheader.i.i241 ] ; 3 uses
  %indvars.iv47.i.i246 = phi i64 [ %indvars.iv.next48.i.i254, %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_9MapVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i ], [ 0, %.lr.ph40.preheader.i.i241 ] ; 2 uses
  %i.ake = add nsw i64 %indvars.iv47.i.i246, %i.ajt ; 4 uses
  %indvars.iv.next.i247 = add nsw i64 %indvars.iv.i244, 1 ; 2 uses
  %i.akf = getelementptr inbounds [4 x i8], ptr %i.ahy, i64 %indvars.iv.i244
  store i32 %.4.i245, ptr %i.akf, align 4, !tbaa !3
  %i.akg = load ptr, ptr %0, align 8, !tbaa !124
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 32
  %i.aki = load ptr, ptr %i.akh, align 8
  %i.akj = trunc nsw i64 %i.ake to i32
  %i.akk = invoke noundef zeroext i1 %i.aki(ptr noundef nonnull align 8 dereferenceable(161) %0, i32 noundef %i.akj)
          to label %.noexc53.i250 unwind label %.loopexit.i248, !inline_history !239

.noexc53.i250:                                    ; preds = %.lr.ph40.i.i243
  br i1 %i.akk, label %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_9MapVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i, label %bb.fe

bb.fe:                                            ; preds = %.noexc53.i250
  %i.akl = load ptr, ptr %i.ajk, align 8, !tbaa !158
  %i.akm = getelementptr inbounds [4 x i8], ptr %i.akl, i64 %i.ake
  %i.akn = load i32, ptr %i.akm, align 4, !tbaa !3 ; 2 uses
  %i.ako = load ptr, ptr %i.ajl, align 8, !tbaa !161 ; 3 uses
  %i.akp = getelementptr inbounds [4 x i8], ptr %i.ako, i64 %i.ake
  %i.akq = load i32, ptr %i.akp, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i251 = icmp eq ptr %i.akd, %i.akc
  br i1 %.not.i.i.i.i.i251, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  store i32 %i.akn, ptr %i.akd, align 4, !tbaa !164
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akd, i64 4
  store i32 %i.akq, ptr %i.akr, align 4, !tbaa !166
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akd, i64 8 ; 2 uses
  store ptr %i.aks, ptr %i.ajm, align 8, !tbaa !167
  br label %_ZN8facebook5velox12_GLOBAL__N_19Selection8addRangeEii.exit.i.i.i252

bb.fg:                                            ; preds = %bb.fe
  %i.akt = ptrtoint ptr %i.akc to i64             ; 2 uses
  %i.aku = ptrtoint ptr %i.akb to i64             ; 3 uses
  %i.akv = sub i64 %i.akt, %i.aku                 ; 4 uses
  %i.akw = icmp eq i64 %i.akv, 9223372036854775800
  br i1 %i.akw, label %.invoke.i227, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i257

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i257: ; preds = %bb.fg
  %i.akx = ashr exact i64 %i.akv, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i258 = call i64 @llvm.umax.i64(i64 %i.akx, i64 1)
  %i.aky = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i258, %i.akx ; 2 uses
  %i.akz = icmp ult i64 %i.aky, %i.akx
  %i.ala = call i64 @llvm.umin.i64(i64 %i.aky, i64 1152921504606846975)
  %i.alb = select i1 %i.akz, i64 1152921504606846975, i64 %i.ala ; 3 uses
  %.not.i.i.i.i.i.i.i259 = icmp ne i64 %i.alb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i259)
  %i.alc = shl nuw nsw i64 %i.alb, 3
  %i.ald = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.alc) #46
          to label %.noexc55.i260 unwind label %.loopexit.i248 ; 11 uses

.noexc55.i260:                                    ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i257
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 %i.akv ; 2 uses
  store i32 %i.akn, ptr %i.ale, align 4, !tbaa !164
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 4
  store i32 %i.akq, ptr %i.alf, align 4, !tbaa !166
  %.not10.i.i.i.i.i.i.i.i.i261 = icmp eq ptr %i.akb, %i.akc
  br i1 %.not10.i.i.i.i.i.i.i.i.i261, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i.i.i.i266, label %iter.check1300

iter.check1300:                                   ; preds = %.noexc55.i260
  %i.alg = ptrtoaddr ptr %i.ald to i64
  %i.alh = add i64 %i.akt, -8
  %i.ali = sub i64 %i.alh, %i.aku                 ; 3 uses
  %i.alj = lshr i64 %i.ali, 3
  %i.alk = add nuw nsw i64 %i.alj, 1              ; 5 uses
  %min.iters.check1281.a = icmp ult i64 %i.ali, 24
  %i.all = sub i64 %i.alg, %i.aku
  %diff.check1280 = icmp ult i64 %i.all, 128
  %or.cond1478 = or i1 %min.iters.check1281.a, %diff.check1280
  br i1 %or.cond1478, label %.lr.ph.i.i.i.i.i.i.i.i.i262.preheader, label %vector.main.loop.iter.check1282

vector.main.loop.iter.check1282:                  ; preds = %iter.check1300
  %min.iters.check1283 = icmp ult i64 %i.ali, 120
  br i1 %min.iters.check1283, label %vec.epilog.ph1304, label %vector.ph1284

vector.ph1284:                                    ; preds = %vector.main.loop.iter.check1282
  %n.mod.vf1285 = and i64 %i.alk, 12
  %n.vec1286 = and i64 %i.alk, 4611686018427387888 ; 4 uses
  %i.alm = shl i64 %n.vec1286, 3                  ; 2 uses
  %i.aln = getelementptr i8, ptr %i.ald, i64 %i.alm ; 2 uses
  %i.alo = getelementptr i8, ptr %i.akb, i64 %i.alm
  br label %vector.body1287

vector.body1287:                                  ; preds = %vector.body1287, %vector.ph1284
  %index1288 = phi i64 [ 0, %vector.ph1284 ], [ %index.next1295, %vector.body1287 ] ; 2 uses
  %i.alp = shl i64 %index1288, 3                  ; 2 uses
  %next.gep1289 = getelementptr i8, ptr %i.ald, i64 %i.alp ; 4 uses
  %next.gep1290 = getelementptr i8, ptr %i.akb, i64 %i.alp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.alq = getelementptr i8, ptr %next.gep1290, i64 32
  %i.alr = getelementptr i8, ptr %next.gep1290, i64 64
  %i.als = getelementptr i8, ptr %next.gep1290, i64 96
  %wide.load1291.a = load <4 x i64>, ptr %next.gep1290, align 4, !alias.scope !243, !noalias !240
  %wide.load1292.a = load <4 x i64>, ptr %i.alq, align 4, !alias.scope !243, !noalias !240
  %wide.load1293 = load <4 x i64>, ptr %i.alr, align 4, !alias.scope !243, !noalias !240
  %wide.load1294 = load <4 x i64>, ptr %i.als, align 4, !alias.scope !243, !noalias !240
  %i.alt = getelementptr i8, ptr %next.gep1289, i64 32
  %i.alu = getelementptr i8, ptr %next.gep1289, i64 64
  %i.alv = getelementptr i8, ptr %next.gep1289, i64 96
  store <4 x i64> %wide.load1291.a, ptr %next.gep1289, align 4, !alias.scope !240, !noalias !243
  store <4 x i64> %wide.load1292.a, ptr %i.alt, align 4, !alias.scope !240, !noalias !243
  store <4 x i64> %wide.load1293, ptr %i.alu, align 4, !alias.scope !240, !noalias !243
  store <4 x i64> %wide.load1294, ptr %i.alv, align 4, !alias.scope !240, !noalias !243
  %index.next1295 = add nuw i64 %index1288, 16    ; 2 uses
  %i.alw = icmp eq i64 %index.next1295, %n.vec1286
  br i1 %i.alw, label %middle.block1296, label %vector.body1287, !llvm.loop !245

middle.block1296:                                 ; preds = %vector.body1287
  %cmp.n1297 = icmp eq i64 %i.alk, %n.vec1286
  br i1 %cmp.n1297, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i.i.i.i266, label %vec.epilog.iter.check1302

vec.epilog.iter.check1302:                        ; preds = %middle.block1296
  %min.epilog.iters.check1303 = icmp eq i64 %n.mod.vf1285, 0
  br i1 %min.epilog.iters.check1303, label %.lr.ph.i.i.i.i.i.i.i.i.i262.preheader, label %vec.epilog.ph1304, !prof !96

vec.epilog.ph1304:                                ; preds = %vector.main.loop.iter.check1282, %vec.epilog.iter.check1302
  %vec.epilog.resume.val1298 = phi i64 [ %n.vec1286, %vec.epilog.iter.check1302 ], [ 0, %vector.main.loop.iter.check1282 ]
  %n.vec1306 = and i64 %i.alk, 4611686018427387900 ; 3 uses
  %i.alx = shl i64 %n.vec1306, 3                  ; 2 uses
  %i.aly = getelementptr i8, ptr %i.ald, i64 %i.alx ; 2 uses
  %i.alz = getelementptr i8, ptr %i.akb, i64 %i.alx
  br label %vec.epilog.vector.body1307

vec.epilog.vector.body1307:                       ; preds = %vec.epilog.vector.body1307, %vec.epilog.ph1304
  %index1308 = phi i64 [ %vec.epilog.resume.val1298, %vec.epilog.ph1304 ], [ %index.next1312, %vec.epilog.vector.body1307 ] ; 2 uses
  %i.ama = shl i64 %index1308, 3                  ; 2 uses
  %next.gep1309 = getelementptr i8, ptr %i.ald, i64 %i.ama
  %next.gep1310 = getelementptr i8, ptr %i.akb, i64 %i.ama
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %wide.load1311 = load <4 x i64>, ptr %next.gep1310, align 4, !alias.scope !243, !noalias !240
  store <4 x i64> %wide.load1311, ptr %next.gep1309, align 4, !alias.scope !240, !noalias !243
  %index.next1312 = add nuw i64 %index1308, 4     ; 2 uses
  %i.amb = icmp eq i64 %index.next1312, %n.vec1306
  br i1 %i.amb, label %vec.epilog.middle.block1313, label %vec.epilog.vector.body1307, !llvm.loop !246

vec.epilog.middle.block1313:                      ; preds = %vec.epilog.vector.body1307
  %cmp.n1314 = icmp eq i64 %i.alk, %n.vec1306
  br i1 %cmp.n1314, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i.i.i.i266, label %.lr.ph.i.i.i.i.i.i.i.i.i262.preheader

.lr.ph.i.i.i.i.i.i.i.i.i262.preheader:            ; preds = %iter.check1300, %vec.epilog.iter.check1302, %vec.epilog.middle.block1313
  %.012.i.i.i.i.i.i.i.i.i263.ph = phi ptr [ %i.ald, %iter.check1300 ], [ %i.aln, %vec.epilog.iter.check1302 ], [ %i.aly, %vec.epilog.middle.block1313 ]
  %.0911.i.i.i.i.i.i.i.i.i264.ph = phi ptr [ %i.akb, %iter.check1300 ], [ %i.alo, %vec.epilog.iter.check1302 ], [ %i.alz, %vec.epilog.middle.block1313 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i262

.lr.ph.i.i.i.i.i.i.i.i.i262:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i262.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i262
  %.012.i.i.i.i.i.i.i.i.i263 = phi ptr [ %i.ame, %.lr.ph.i.i.i.i.i.i.i.i.i262 ], [ %.012.i.i.i.i.i.i.i.i.i263.ph, %.lr.ph.i.i.i.i.i.i.i.i.i262.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i264 = phi ptr [ %i.amd, %.lr.ph.i.i.i.i.i.i.i.i.i262 ], [ %.0911.i.i.i.i.i.i.i.i.i264.ph, %.lr.ph.i.i.i.i.i.i.i.i.i262.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox12_GLOBAL__N_117exportToArrowImplERKNS0_10BaseVectorERKNS1_9SelectionERK12ArrowOptionsR10ArrowArrayPNS0_6memory10MemoryPoolE:bb.a
  store i32 %.0.i203, ptr %i.amu, align 4, !tbaa !3
  %i.amv = load ptr, ptr %0, align 8, !tbaa !124
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 32
  %i.amx = load ptr, ptr %i.amw, align 8
  %i.amy = trunc nuw nsw i64 %indvars.iv.i50.i204 to i32
  %i.amz = invoke noundef zeroext i1 %i.amx(ptr noundef nonnull align 8 dereferenceable(161) %0, i32 noundef %i.amy)
          to label %.noexc56.i208 unwind label %.loopexit.split-lp.loopexit.i206, !inline_history !239

.noexc56.i208:                                    ; preds = %.lr.ph.i49.i202
  br i1 %i.amz, label %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_9MapVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit31.i.i, label %bb.fi

bb.fi:                                            ; preds = %.noexc56.i208
  %i.ana = load ptr, ptr %.phi.trans.insert.i173, align 8, !tbaa !158
  %i.anb = getelementptr inbounds nuw [4 x i8], ptr %i.ana, i64 %indvars.iv.i50.i204
  %i.anc = load i32, ptr %i.anb, align 4, !tbaa !3 ; 2 uses
  %i.and = load ptr, ptr %i.aic, align 8, !tbaa !161 ; 3 uses
  %i.ane = getelementptr inbounds nuw [4 x i8], ptr %i.and, i64 %indvars.iv.i50.i204
  %i.anf = load i32, ptr %i.ane, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i13.i.i209 = icmp eq ptr %i.amt, %i.ams
  br i1 %.not.i.i.i13.i.i209, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  store i32 %i.anc, ptr %i.amt, align 4, !tbaa !164
  %i.ang = getelementptr inbounds nuw i8, ptr %i.amt, i64 4
  store i32 %i.anf, ptr %i.ang, align 4, !tbaa !166
  %i.anh = getelementptr inbounds nuw i8, ptr %i.amt, i64 8 ; 2 uses
  store ptr %i.anh, ptr %i.aje, align 8, !tbaa !167
  br label %_ZN8facebook5velox12_GLOBAL__N_19Selection8addRangeEii.exit.i14.i.i210

bb.fk:                                            ; preds = %bb.fi
  %i.ani = ptrtoint ptr %i.ams to i64             ; 2 uses
  %i.anj = ptrtoint ptr %i.amr to i64             ; 3 uses
  %i.ank = sub i64 %i.ani, %i.anj                 ; 4 uses
  %i.anl = icmp eq i64 %i.ank, 9223372036854775800
  br i1 %i.anl, label %.invoke.i227, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i15.i.i212

.invoke.i227:                                     ; preds = %bb.fk, %bb.fg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #47
          to label %.cont.i230 unwind label %.loopexit.split-lp.loopexit.split-lp.i228

.cont.i230:                                       ; preds = %.invoke.i227
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i15.i.i212: ; preds = %bb.fk
  %i.anm = ashr exact i64 %i.ank, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i16.i.i213 = call i64 @llvm.umax.i64(i64 %i.anm, i64 1)
  %i.ann = add nsw i64 %.sroa.speculated.i.i.i.i.i16.i.i213, %i.anm ; 2 uses
  %i.ano = icmp ult i64 %i.ann, %i.anm
  %i.anp = call i64 @llvm.umin.i64(i64 %i.ann, i64 1152921504606846975)
  %i.anq = select i1 %i.ano, i64 1152921504606846975, i64 %i.anp ; 3 uses
  %.not.i.i.i.i.i17.i.i214 = icmp ne i64 %i.anq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i17.i.i214)
  %i.anr = shl nuw nsw i64 %i.anq, 3
  %i.ans = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.anr) #46
          to label %.noexc58.i215 unwind label %.loopexit.split-lp.loopexit.i206 ; 11 uses

.noexc58.i215:                                    ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i15.i.i212
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 %i.ank ; 2 uses
  store i32 %i.anc, ptr %i.ant, align 4, !tbaa !164
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 4
  store i32 %i.anf, ptr %i.anu, align 4, !tbaa !166
  %.not10.i.i.i.i.i.i.i18.i.i216 = icmp eq ptr %i.amr, %i.ams
  br i1 %.not10.i.i.i.i.i.i.i18.i.i216, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i.i23.i.i221, label %iter.check1262

iter.check1262:                                   ; preds = %.noexc58.i215
  %i.anv = ptrtoaddr ptr %i.ans to i64
  %i.anw = add i64 %i.ani, -8
  %i.anx = sub i64 %i.anw, %i.anj                 ; 3 uses
  %i.any = lshr i64 %i.anx, 3
  %i.anz = add nuw nsw i64 %i.any, 1              ; 5 uses
  %min.iters.check1243.a = icmp ult i64 %i.anx, 24
  %i.aoa = sub i64 %i.anv, %i.anj
  %diff.check = icmp ult i64 %i.aoa, 128
  %or.cond1479 = or i1 %min.iters.check1243.a, %diff.check
  br i1 %or.cond1479, label %.lr.ph.i.i.i.i.i.i.i19.i.i217.preheader, label %vector.main.loop.iter.check1244

vector.main.loop.iter.check1244:                  ; preds = %iter.check1262
  %min.iters.check1245 = icmp ult i64 %i.anx, 120
  br i1 %min.iters.check1245, label %vec.epilog.ph1266, label %vector.ph1246

vector.ph1246:                                    ; preds = %vector.main.loop.iter.check1244
  %n.mod.vf1247 = and i64 %i.anz, 12
  %n.vec1248 = and i64 %i.anz, 4611686018427387888 ; 4 uses
  %i.aob = shl i64 %n.vec1248, 3                  ; 2 uses
  %i.aoc = getelementptr i8, ptr %i.ans, i64 %i.aob ; 2 uses
  %i.aod = getelementptr i8, ptr %i.amr, i64 %i.aob
  br label %vector.body1249

vector.body1249:                                  ; preds = %vector.body1249, %vector.ph1246
  %index1250 = phi i64 [ 0, %vector.ph1246 ], [ %index.next1257, %vector.body1249 ] ; 2 uses
  %i.aoe = shl i64 %index1250, 3                  ; 2 uses
  %next.gep1251 = getelementptr i8, ptr %i.ans, i64 %i.aoe ; 4 uses
  %next.gep1252 = getelementptr i8, ptr %i.amr, i64 %i.aoe ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.aof = getelementptr i8, ptr %next.gep1252, i64 32
  %i.aog = getelementptr i8, ptr %next.gep1252, i64 64
  %i.aoh = getelementptr i8, ptr %next.gep1252, i64 96
  %wide.load1253.a = load <4 x i64>, ptr %next.gep1252, align 4, !alias.scope !252, !noalias !249
  %wide.load1254.a = load <4 x i64>, ptr %i.aof, align 4, !alias.scope !252, !noalias !249
  %wide.load1255 = load <4 x i64>, ptr %i.aog, align 4, !alias.scope !252, !noalias !249
  %wide.load1256 = load <4 x i64>, ptr %i.aoh, align 4, !alias.scope !252, !noalias !249
  %i.aoi = getelementptr i8, ptr %next.gep1251, i64 32
  %i.aoj = getelementptr i8, ptr %next.gep1251, i64 64
  %i.aok = getelementptr i8, ptr %next.gep1251, i64 96
  store <4 x i64> %wide.load1253.a, ptr %next.gep1251, align 4, !alias.scope !249, !noalias !252
  store <4 x i64> %wide.load1254.a, ptr %i.aoi, align 4, !alias.scope !249, !noalias !252
  store <4 x i64> %wide.load1255, ptr %i.aoj, align 4, !alias.scope !249, !noalias !252
  store <4 x i64> %wide.load1256, ptr %i.aok, align 4, !alias.scope !249, !noalias !252
  %index.next1257 = add nuw i64 %index1250, 16    ; 2 uses
  %i.aol = icmp eq i64 %index.next1257, %n.vec1248
  br i1 %i.aol, label %middle.block1258, label %vector.body1249, !llvm.loop !254

middle.block1258:                                 ; preds = %vector.body1249
  %cmp.n1259 = icmp eq i64 %i.anz, %n.vec1248
  br i1 %cmp.n1259, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i.i23.i.i221, label %vec.epilog.iter.check1264

vec.epilog.iter.check1264:                        ; preds = %middle.block1258
  %min.epilog.iters.check1265 = icmp eq i64 %n.mod.vf1247, 0
  br i1 %min.epilog.iters.check1265, label %.lr.ph.i.i.i.i.i.i.i19.i.i217.preheader, label %vec.epilog.ph1266, !prof !96

vec.epilog.ph1266:                                ; preds = %vector.main.loop.iter.check1244, %vec.epilog.iter.check1264
  %vec.epilog.resume.val1260 = phi i64 [ %n.vec1248, %vec.epilog.iter.check1264 ], [ 0, %vector.main.loop.iter.check1244 ]
  %n.vec1268 = and i64 %i.anz, 4611686018427387900 ; 3 uses
  %i.aom = shl i64 %n.vec1268, 3                  ; 2 uses
  %i.aon = getelementptr i8, ptr %i.ans, i64 %i.aom ; 2 uses
  %i.aoo = getelementptr i8, ptr %i.amr, i64 %i.aom
  br label %vec.epilog.vector.body1269

vec.epilog.vector.body1269:                       ; preds = %vec.epilog.vector.body1269, %vec.epilog.ph1266
  %index1270 = phi i64 [ %vec.epilog.resume.val1260, %vec.epilog.ph1266 ], [ %index.next1274, %vec.epilog.vector.body1269 ] ; 2 uses
  %i.aop = shl i64 %index1270, 3                  ; 2 uses
  %next.gep1271 = getelementptr i8, ptr %i.ans, i64 %i.aop
  %next.gep1272 = getelementptr i8, ptr %i.amr, i64 %i.aop
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %wide.load1273 = load <4 x i64>, ptr %next.gep1272, align 4, !alias.scope !252, !noalias !249
  store <4 x i64> %wide.load1273, ptr %next.gep1271, align 4, !alias.scope !249, !noalias !252
  %index.next1274 = add nuw i64 %index1270, 4     ; 2 uses
  %i.aoq = icmp eq i64 %index.next1274, %n.vec1268
  br i1 %i.aoq, label %vec.epilog.middle.block1275, label %vec.epilog.vector.body1269, !llvm.loop !255

vec.epilog.middle.block1275:                      ; preds = %vec.epilog.vector.body1269
  %cmp.n1276 = icmp eq i64 %i.anz, %n.vec1268
  br i1 %cmp.n1276, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i.i23.i.i221, label %.lr.ph.i.i.i.i.i.i.i19.i.i217.preheader

.lr.ph.i.i.i.i.i.i.i19.i.i217.preheader:          ; preds = %iter.check1262, %vec.epilog.iter.check1264, %vec.epilog.middle.block1275
  %.012.i.i.i.i.i.i.i20.i.i218.ph = phi ptr [ %i.ans, %iter.check1262 ], [ %i.aoc, %vec.epilog.iter.check1264 ], [ %i.aon, %vec.epilog.middle.block1275 ]
  %.0911.i.i.i.i.i.i.i21.i.i219.ph = phi ptr [ %i.amr, %iter.check1262 ], [ %i.aod, %vec.epilog.iter.check1264 ], [ %i.aoo, %vec.epilog.middle.block1275 ]
  br label %.lr.ph.i.i.i.i.i.i.i19.i.i217

.lr.ph.i.i.i.i.i.i.i19.i.i217:                    ; preds = %.lr.ph.i.i.i.i.i.i.i19.i.i217.preheader, %.lr.ph.i.i.i.i.i.i.i19.i.i217
  %.012.i.i.i.i.i.i.i20.i.i218 = phi ptr [ %i.aot, %.lr.ph.i.i.i.i.i.i.i19.i.i217 ], [ %.012.i.i.i.i.i.i.i20.i.i218.ph, %.lr.ph.i.i.i.i.i.i.i19.i.i217.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i.i21.i.i219 = phi ptr [ %i.aos, %.lr.ph.i.i.i.i.i.i.i19.i.i217 ], [ %.0911.i.i.i.i.i.i.i21.i.i219.ph, %.lr.ph.i.i.i.i.i.i.i19.i.i217.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.aor = load i64, ptr %.0911.i.i.i.i.i.i.i21.i.i219, align 4, !alias.scope !252, !noalias !249
  store i64 %i.aor, ptr %.012.i.i.i.i.i.i.i20.i.i218, align 4, !alias.scope !249, !noalias !252
  %i.aos = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i21.i.i219, i64 8 ; 2 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i20.i.i218, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i22.i.i220 = icmp eq ptr %i.aos, %i.ams
  br i1 %.not.i.i.i.i.i.i.i22.i.i220, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i.i23.i.i221, label %.lr.ph.i.i.i.i.i.i.i19.i.i217, !llvm.loop !256

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i.i23.i.i221: ; preds = %.lr.ph.i.i.i.i.i.i.i19.i.i217, %middle.block1258, %vec.epilog.middle.block1275, %.noexc58.i215
  %.0.lcssa.i.i.i.i.i.i.i24.i.i222 = phi ptr [ %i.ans, %.noexc58.i215 ], [ %i.aon, %vec.epilog.middle.block1275 ], [ %i.aoc, %middle.block1258 ], [ %i.aot, %.lr.ph.i.i.i.i.i.i.i19.i.i217 ]
  %i.aou = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i24.i.i222, i64 8 ; 2 uses
  %.not.i24.i.i.i.i25.i.i223 = icmp eq ptr %i.amr, null
  br i1 %.not.i24.i.i.i.i25.i.i223, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i29.i.i225, label %bb.fl

bb.fl:                                            ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i.i23.i.i221
  call void @_ZdlPvm(ptr noundef nonnull %i.amr, i64 noundef %i.ank) #45
  %.pre4.pre.i28.i.i224 = load ptr, ptr %i.aic, align 8, !tbaa !161
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i29.i.i225

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i29.i.i225: ; preds = %bb.fl, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i.i23.i.i221
  %.pre4.i30.i.i226 = phi ptr [ %.pre4.pre.i28.i.i224, %bb.fl ], [ %i.and, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i.i23.i.i221 ]
  store ptr %i.ans, ptr %66, align 8, !tbaa !41
  store ptr %i.aou, ptr %i.aje, align 8, !tbaa !167
  %i.aov = getelementptr inbounds nuw [8 x i8], ptr %i.ans, i64 %i.anq ; 2 uses
  store ptr %i.aov, ptr %i.ajf, align 8, !tbaa !44
  br label %_ZN8facebook5velox12_GLOBAL__N_19Selection8addRangeEii.exit.i14.i.i210

_ZN8facebook5velox12_GLOBAL__N_19Selection8addRangeEii.exit.i14.i.i210: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i29.i.i225, %bb.fj
  %i.aow = phi ptr [ %i.amr, %bb.fj ], [ %i.ans, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i29.i.i225 ]
  %i.aox = phi ptr [ %i.ams, %bb.fj ], [ %i.aov, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i29.i.i225 ]
  %i.aoy = phi ptr [ %i.anh, %bb.fj ], [ %i.aou, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i29.i.i225 ]
  %i.aoz = phi ptr [ %i.and, %bb.fj ], [ %.pre4.i30.i.i226, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i29.i.i225 ]
  %i.apa = getelementptr inbounds nuw [4 x i8], ptr %i.aoz, i64 %indvars.iv.i50.i204
  %i.apb = load i32, ptr %i.apa, align 4, !tbaa !3
  %i.apc = add nsw i32 %i.apb, %.0.i203
  br label %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_9MapVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit31.i.i

_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_9MapVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit31.i.i: ; preds = %_ZN8facebook5velox12_GLOBAL__N_19Selection8addRangeEii.exit.i14.i.i210, %.noexc56.i208
  %i.apd = phi ptr [ %i.amr, %.noexc56.i208 ], [ %i.aow, %_ZN8facebook5velox12_GLOBAL__N_19Selection8addRangeEii.exit.i14.i.i210 ]
  %i.ape = phi ptr [ %i.ams, %.noexc56.i208 ], [ %i.aox, %_ZN8facebook5velox12_GLOBAL__N_19Selection8addRangeEii.exit.i14.i.i210 ]
  %i.apf = phi ptr [ %i.amt, %.noexc56.i208 ], [ %i.aoy, %_ZN8facebook5velox12_GLOBAL__N_19Selection8addRangeEii.exit.i14.i.i210 ]
  %.1.i211 = phi i32 [ %.0.i203, %.noexc56.i208 ], [ %i.apc, %_ZN8facebook5velox12_GLOBAL__N_19Selection8addRangeEii.exit.i14.i.i210 ] ; 2 uses
  %i.apg = load i32, ptr %i.ajb, align 8, !tbaa !33
  %i.aph = sext i32 %i.apg to i64
  %i.api = icmp slt i64 %indvars.iv.next.i51.i205, %i.aph
  br i1 %i.api, label %.lr.ph.i49.i202, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_9MapVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.loopexit107.i, !llvm.loop !257

_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_9MapVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.loopexit107.i: ; preds = %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_9MapVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit31.i.i
  %71 = trunc nuw nsw i64 %indvars.iv.next.i51.i205 to i32
  br label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_9MapVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.i.a

_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_9MapVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.i.a: ; preds = %._crit_edge.i.i238, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_9MapVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.loopexit107.i, %bb.fd, %.preheader.i.i182
  %.489.i183 = phi i32 [ 0, %bb.fd ], [ 0, %.preheader.i.i182 ], [ %71, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_9MapVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.loopexit107.i ], [ %.287.i239, %._crit_edge.i.i238 ]
  %.6.i184 = phi i32 [ 0, %bb.fd ], [ 0, %.preheader.i.i182 ], [ %.1.i211, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_9MapVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.loopexit107.i ], [ %.3.i240, %._crit_edge.i.i238 ]
  %i.apj = sext i32 %.489.i183 to i64
  br label %bb.fm

.loopexit.i248:                                   ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i257, %.lr.ph40.i.i243
  %lpad.loopexit.i249 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i167

.loopexit.split-lp.loopexit.i206:                 ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i15.i.i212, %.lr.ph.i49.i202
  %lpad.loopexit93.i207 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i167

.loopexit.split-lp.loopexit.split-lp.i228:        ; preds = %.invoke.i227
  %lpad.loopexit.split-lp94.i229 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i167

bb.fm:                                            ; preds = %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_9MapVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.i.a, %bb.fb, %.loopexit97.i275
  %.sink159.i185 = phi i64 [ %i.apj, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_9MapVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.i.a ], [ 0, %.loopexit97.i275 ], [ %i.ain, %bb.fb ]
  %.6.sink.i186 = phi i32 [ %.6.i184, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_9MapVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.i.a ], [ 0, %.loopexit97.i275 ], [ %i.aiz, %bb.fb ]
  %i.apk = getelementptr inbounds [4 x i8], ptr %i.ahy, i64 %.sink159.i185
  store i32 %.6.sink.i186, ptr %i.apk, align 4, !tbaa !3
  %i.apl = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 8 ; 2 uses
  %i.apn = load ptr, ptr %39, align 8, !tbaa !85  ; 3 uses
  %.not.i.i.i.i187 = icmp eq ptr %i.apn, null
  br i1 %.not.i.i.i.i187, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i.i.i188, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 40
  %i.app = atomicrmw add ptr %i.apo, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i.i.i188

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i.i.i188: ; preds = %bb.fn, %bb.fm
  %i.apq = load ptr, ptr %i.apm, align 8, !tbaa !85 ; 7 uses
  store ptr %i.apn, ptr %i.apm, align 8, !tbaa !85
  %.not.i2.i.i.i189 = icmp eq ptr %i.apq, null
  br i1 %.not.i2.i.i.i189, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit.i.i190, label %bb.fo

bb.fo:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i.i.i188
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 40
  %i.aps = atomicrmw sub ptr %i.apr, i32 1 acq_rel, align 4
  %i.apt = icmp eq i32 %i.aps, 1
  br i1 %i.apt, label %.sink.split.i.i.i.i.i197, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit.i.i190

.sink.split.i.i.i.i.i197:                         ; preds = %bb.fo
  %i.apu = load ptr, ptr %i.apq, align 8, !tbaa !124
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 64
  %i.apw = load ptr, ptr %i.apv, align 8
  invoke void %i.apw(ptr noundef nonnull align 8 dereferenceable(64) %i.apq)
          to label %.noexc.i.i.i.i198 unwind label %bb.fp, !inline_history !186

.noexc.i.i.i.i198:                                ; preds = %.sink.split.i.i.i.i.i197
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apq, i64 8
  %i.apy = load ptr, ptr %i.apx, align 8, !tbaa !187
  %.not.i.i.i.i60.i199 = icmp eq ptr %i.apy, null
  %i.apz = load ptr, ptr %i.apq, align 8, !tbaa !124
  %..i.i.i.i.i200 = select i1 %.not.i.i.i.i60.i199, i64 8, i64 48
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 %..i.i.i.i.i200
  %i.aqb = load ptr, ptr %i.aqa, align 8
  invoke void %i.aqb(ptr noundef nonnull align 8 dereferenceable(64) %i.apq)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit.i.i190 unwind label %bb.fp, !inline_history !186

bb.fp:                                            ; preds = %.noexc.i.i.i.i198, %.sink.split.i.i.i.i.i197
  %i.aqc = landingpad { ptr, i32 }
          catch ptr null
  %i.aqd = extractvalue { ptr, i32 } %i.aqc, 0
  call void @__clang_call_terminate(ptr %i.aqd) #48
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit.i.i190: ; preds = %.noexc.i.i.i.i198, %bb.fo, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i.i.i188
  %i.aqe = load ptr, ptr %39, align 8, !tbaa !85  ; 8 uses
  %.not.i59.i191 = icmp eq ptr %i.aqe, null
  br i1 %.not.i59.i191, label %_ZN8facebook5velox12_GLOBAL__N_124VeloxToArrowBridgeHolder9setBufferEmRKN5boost13intrusive_ptrINS0_6BufferEEE.exit.thread.i196, label %bb.fq

_ZN8facebook5velox12_GLOBAL__N_124VeloxToArrowBridgeHolder9setBufferEmRKN5boost13intrusive_ptrINS0_6BufferEEE.exit.thread.i196: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit.i.i190
  %i.aqf = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 2, ptr %i.aqf, align 8, !tbaa !103
  br label %bb.fs

bb.fq:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit.i.i190
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqe, i64 16
  %i.aqh = load ptr, ptr %i.aqg, align 8, !tbaa !157
  %i.aqi = load ptr, ptr %i.f, align 8, !tbaa !80
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 8
  store ptr %i.aqh, ptr %i.aqj, align 8, !tbaa !82
  %i.aqk = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 2, ptr %i.aqk, align 8, !tbaa !103
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqe, i64 40
  %i.aqm = atomicrmw sub ptr %i.aql, i32 1 acq_rel, align 4
  %i.aqn = icmp eq i32 %i.aqm, 1
  br i1 %i.aqn, label %.sink.split.i.i.i192, label %bb.fs

.sink.split.i.i.i192:                             ; preds = %bb.fq
  %i.aqo = load ptr, ptr %i.aqe, align 8, !tbaa !124
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqo, i64 64
  %i.aqq = load ptr, ptr %i.aqp, align 8
  invoke void %i.aqq(ptr noundef nonnull align 8 dereferenceable(64) %i.aqe)
          to label %.noexc.i.i193 unwind label %bb.fr, !inline_history !186

.noexc.i.i193:                                    ; preds = %.sink.split.i.i.i192
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqe, i64 8
  %i.aqs = load ptr, ptr %i.aqr, align 8, !tbaa !187
  %.not.i.i.i194 = icmp eq ptr %i.aqs, null
  %i.aqt = load ptr, ptr %i.aqe, align 8, !tbaa !124
  %..i.i.i195 = select i1 %.not.i.i.i194, i64 8, i64 48
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqt, i64 %..i.i.i195
  %i.aqv = load ptr, ptr %i.aqu, align 8
  invoke void %i.aqv(ptr noundef nonnull align 8 dereferenceable(64) %i.aqe)
          to label %bb.fs unwind label %bb.fr, !inline_history !186

bb.fr:                                            ; preds = %.noexc.i.i193, %.sink.split.i.i.i192
  %i.aqw = landingpad { ptr, i32 }
          catch ptr null
  %i.aqx = extractvalue { ptr, i32 } %i.aqw, 0
  call void @__clang_call_terminate(ptr %i.aqx) #48
  unreachable

.loopexit.split-lp.i167:                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i228, %.loopexit.split-lp.loopexit.i206, %.loopexit.i248, %bb.fc
  %.pn.i168 = phi { ptr, i32 } [ %i.aja, %bb.fc ], [ %lpad.loopexit.i249, %.loopexit.i248 ], [ %lpad.loopexit93.i207, %.loopexit.split-lp.loopexit.i206 ], [ %lpad.loopexit.split-lp94.i229, %.loopexit.split-lp.loopexit.split-lp.i228 ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #38
  br label %.body303

bb.fs:                                            ; preds = %.noexc.i.i193, %bb.fq, %_ZN8facebook5velox12_GLOBAL__N_124VeloxToArrowBridgeHolder9setBufferEmRKN5boost13intrusive_ptrINS0_6BufferEEE.exit.thread.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #38
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.aqz = load ptr, ptr %i.aqy, align 8, !tbaa !112 ; 4 uses
  %i.ara = load ptr, ptr %i.q, align 8, !tbaa !113 ; 3 uses
  %i.arb = ptrtoint ptr %i.aqz to i64
  %i.arc = ptrtoint ptr %i.ara to i64
  %i.ard = sub i64 %i.arb, %i.arc
  %i.are = ashr exact i64 %i.ard, 3               ; 2 uses
  %i.arf = icmp eq ptr %i.aqz, %i.ara
  br i1 %i.arf, label %_ZNSt6vectorISt10unique_ptrI10ArrowArraySt14default_deleteIS1_EESaIS4_EE6resizeEm.exit.thread.i158, label %bb.ft

_ZNSt6vectorISt10unique_ptrI10ArrowArraySt14default_deleteIS1_EESaIS4_EE6resizeEm.exit.thread.i158: ; preds = %bb.fs
  %i.arg = sub nuw nsw i64 1, %i.are
  invoke void @_ZNSt6vectorISt10unique_ptrI10ArrowArraySt14default_deleteIS1_EESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.arg)
          to label %.noexc159 unwind label %bb.gd

bb.ft:                                            ; preds = %bb.fs
  %i.arh = icmp ugt i64 %i.are, 1
  br i1 %i.arh, label %bb.fu, label %.noexc159

bb.fu:                                            ; preds = %bb.ft
  %i.ari = getelementptr inbounds nuw i8, ptr %i.ara, i64 8 ; 3 uses
  %.not.i.i.i150 = icmp eq ptr %i.aqz, %i.ari
  br i1 %.not.i.i.i150, label %.noexc159, label %.lr.ph.i.i.i.i.i151

.lr.ph.i.i.i.i.i151:                              ; preds = %bb.fu, %_ZSt8_DestroyISt10unique_ptrI10ArrowArraySt14default_deleteIS1_EEEvPT_.exit.i.i.i.i.i155
  %.05.i.i.i.i.i152 = phi ptr [ %i.ark, %_ZSt8_DestroyISt10unique_ptrI10ArrowArraySt14default_deleteIS1_EEEvPT_.exit.i.i.i.i.i155 ], [ %i.ari, %bb.fu ] ; 2 uses
  %i.arj = load ptr, ptr %.05.i.i.i.i.i152, align 8, !tbaa !114 ; 2 uses
  %.not.i.i.i.i.i.i.i.i153 = icmp eq ptr %i.arj, null
  br i1 %.not.i.i.i.i.i.i.i.i153, label %_ZSt8_DestroyISt10unique_ptrI10ArrowArraySt14default_deleteIS1_EEEvPT_.exit.i.i.i.i.i155, label %_ZNKSt14default_deleteI10ArrowArrayEclEPS0_.exit.i.i.i.i.i.i.i.i154

_ZNKSt14default_deleteI10ArrowArrayEclEPS0_.exit.i.i.i.i.i.i.i.i154: ; preds = %.lr.ph.i.i.i.i.i151
  call void @_ZdlPvm(ptr noundef nonnull %i.arj, i64 noundef 80) #45
  br label %_ZSt8_DestroyISt10unique_ptrI10ArrowArraySt14default_deleteIS1_EEEvPT_.exit.i.i.i.i.i155

_ZSt8_DestroyISt10unique_ptrI10ArrowArraySt14default_deleteIS1_EEEvPT_.exit.i.i.i.i.i155: ; preds = %_ZNKSt14default_deleteI10ArrowArrayEclEPS0_.exit.i.i.i.i.i.i.i.i154, %.lr.ph.i.i.i.i.i151
  %i.ark = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i152, i64 8 ; 2 uses
  %.not.i.i.i.i.i156 = icmp eq ptr %i.ark, %i.aqz
  br i1 %.not.i.i.i.i.i156, label %_ZSt8_DestroyIPSt10unique_ptrI10ArrowArraySt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i.i157, label %.lr.ph.i.i.i.i.i151, !llvm.loop !115

_ZSt8_DestroyIPSt10unique_ptrI10ArrowArraySt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i.i157: ; preds = %_ZSt8_DestroyISt10unique_ptrI10ArrowArraySt14default_deleteIS1_EEEvPT_.exit.i.i.i.i.i155
  store ptr %i.ari, ptr %i.aqy, align 8, !tbaa !112
  br label %.noexc159

.noexc159:                                        ; preds = %bb.ft, %bb.fu, %_ZSt8_DestroyIPSt10unique_ptrI10ArrowArraySt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i.i157, %_ZNSt6vectorISt10unique_ptrI10ArrowArraySt14default_deleteIS1_EESaIS4_EE6resizeEm.exit.thread.i158
  %i.arl = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znam(i64 noundef 64) #46
          to label %.noexc160 unwind label %bb.gd ; 2 uses

.noexc160:                                        ; preds = %.noexc159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.arl, i8 0, i64 64, i1 false), !noalias !258
  %i.arm = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 3 uses
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !120 ; 2 uses
  store ptr %i.arl, ptr %i.arm, align 8, !tbaa !120
  %.not.i.i.i.i3.i148 = icmp eq ptr %i.arn, null
  br i1 %.not.i.i.i.i3.i148, label %_ZN8facebook5velox12_GLOBAL__N_124VeloxToArrowBridgeHolder14resizeChildrenEm.exit161, label %_ZNKSt14default_deleteIA_P10ArrowArrayEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i149

_ZNKSt14default_deleteIA_P10ArrowArrayEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i149: ; preds = %.noexc160
  call void @_ZdaPv(ptr noundef nonnull %i.arn) #45
  br label %_ZN8facebook5velox12_GLOBAL__N_124VeloxToArrowBridgeHolder14resizeChildrenEm.exit161

_ZN8facebook5velox12_GLOBAL__N_124VeloxToArrowBridgeHolder14resizeChildrenEm.exit161: ; preds = %_ZNKSt14default_deleteIA_P10ArrowArrayEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i149, %.noexc160
  %i.aro = invoke fastcc noundef ptr @_ZN8facebook5velox12_GLOBAL__N_124VeloxToArrowBridgeHolder13allocateChildEm(ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 noundef 0)
          to label %bb.fv unwind label %bb.gd, !inline_history !205

bb.fv:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_124VeloxToArrowBridgeHolder14resizeChildrenEm.exit161
  invoke fastcc void @_ZN8facebook5velox12_GLOBAL__N_117exportToArrowImplERKNS0_10BaseVectorERKNS1_9SelectionERK12ArrowOptionsR10ArrowArrayPNS0_6memory10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(94) %56, ptr noundef nonnull align 8 dereferenceable(36) %66, ptr noundef nonnull align 8 dereferenceable(51) %2, ptr noundef nonnull align 8 dereferenceable(80) %i.aro, ptr noundef %4)
          to label %_ZN8facebook5velox12_GLOBAL__N_110exportMapsERKNS0_9MapVectorERKNS1_9SelectionERK12ArrowOptionsR10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderE.exit unwind label %bb.gd, !inline_history !205

bb.fw:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.arp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.fx:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.arq = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.fy:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  %i.arr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.fz:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN8facebook5velox10BaseVectorEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.ars = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %64) #38, !inline_history !205
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %.pn.i77 = phi { ptr, i32 } [ %i.ars, %bb.fz ], [ %i.arr, %bb.fy ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.vq) #38, !inline_history !205
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %65) #38, !inline_history !205
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #38
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %63) #38, !inline_history !205
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %57) #38, !inline_history !205
  call void @_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %58) #38, !inline_history !205
end_hunk_3
