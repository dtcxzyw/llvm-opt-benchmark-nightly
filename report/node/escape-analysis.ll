Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/escape-analysis?download=true
inline.NumInlined: 1702
inline.NumDeleted: 994
begin_hunk_0_@_ZN2v88internal8compiler15VariableTracker11MergeInputsEPNS1_4NodeE:bb.a
bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i79
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  %i.im = load i64, ptr %i.il, align 8            ; 2 uses
  %i.in = urem i64 %i.im, %i.hs
  %.not19.i.i.i.i.i82 = icmp eq i64 %i.in, %i.ht
  br i1 %.not19.i.i.i.i.i82, label %bb.aa, label %..loopexit_crit_edge21.i.i.i.i.i83, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i83:               ; preds = %bb.ab
  br label %_ZNK2v88internal8compiler15SparseSidetableINS1_15VariableTracker5StateEE3GetEPKNS1_4NodeE.exit88, !llvm.loop !1

_ZNKSt13unordered_mapIjN2v88internal8compiler15VariableTracker5StateENS0_4base4hashIjEESt8equal_toIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERSC_.exit.i84: ; preds = %bb.aa, %bb.x, %bb.z
  %.sroa.06.1.i.i.i85 = phi ptr [ %.sroa.06.0.i.i.i87, %bb.x ], [ %i.hx, %bb.z ], [ %i.ik, %bb.aa ]
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i85, i64 16
  br label %_ZNK2v88internal8compiler15SparseSidetableINS1_15VariableTracker5StateEE3GetEPKNS1_4NodeE.exit88

_ZNK2v88internal8compiler15SparseSidetableINS1_15VariableTracker5StateEE3GetEPKNS1_4NodeE.exit88: ; preds = %.lr.ph.i.i.i.i.i79, %.preheader184, %bb.y, %..loopexit_crit_edge21.i.i.i.i.i83, %_ZNKSt13unordered_mapIjN2v88internal8compiler15VariableTracker5StateENS0_4base4hashIjEESt8equal_toIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERSC_.exit.i84
  %i.ip = phi ptr [ %i.io, %_ZNKSt13unordered_mapIjN2v88internal8compiler15VariableTracker5StateENS0_4base4hashIjEESt8equal_toIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERSC_.exit.i84 ], [ %i.be, %..loopexit_crit_edge21.i.i.i.i.i83 ], [ %i.be, %.preheader184 ], [ %i.be, %bb.y ], [ %i.be, %.lr.ph.i.i.i.i.i79 ]
  %i.iq = call noundef ptr @_ZNK2v88internal8compiler15VariableTracker5State3GetENS1_8VariableE(ptr noundef nonnull align 8 dereferenceable(24) %i.ip, i32 %.sroa.0.0.i) ; 12 uses
  %.not65 = icmp eq ptr %i.iq, null
  br i1 %.not65, label %bb.bk, label %bb.at

bb.ac:                                            ; preds = %.lr.ph, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit110
  %.058174 = phi i1 [ true, %.lr.ph ], [ %spec.select, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit110 ]
  %.059173 = phi i32 [ 1, %.lr.ph ], [ %.160, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit110 ]
  %.061172 = phi i32 [ 1, %.lr.ph ], [ %i.mu, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit110 ] ; 3 uses
  %i.ir = load ptr, ptr %2, align 8               ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.it = load i32, ptr %i.is, align 8
  %i.iu = icmp slt i32 %.061172, %i.it
  br i1 %i.iu, label %bb.ae, label %bb.ad, !prof !19

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #14
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 20
  %i.iw = load i32, ptr %i.iv, align 4
  %i.ix = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.ir) #13
  %i.iy = load ptr, ptr %2, align 8
  %i.iz = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.iy) #13
  %i.ja = load i32, ptr %i.v, align 4
  %i.jb = and i32 %i.ja, 251658240
  %.not.i.i.i89 = icmp eq i32 %i.jb, 251658240
  br i1 %.not.i.i.i89, label %bb.af, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit91

bb.af:                                            ; preds = %bb.ae
  %i.jc = load ptr, ptr %i.aa, align 8
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = add i64 %i.jd, 16
  %i.jf = inttoptr i64 %i.je to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit91

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit91: ; preds = %bb.ae, %bb.af
  %.sink.i.i.i90 = phi ptr [ %i.jf, %bb.af ], [ %i.aa, %bb.ae ]
  %i.jg = zext i1 %i.ix to i32
  %i.jh = zext i1 %i.iz to i32
  %i.ji = add i32 %i.iw, %.061172
  %i.jj = add i32 %i.ji, %i.jg
  %i.jk = add i32 %i.jj, %i.jh
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i90, i64 %i.jl
  %i.jn = load ptr, ptr %i.jm, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 20
  %i.jp = load i32, ptr %i.jo, align 4            ; 2 uses
  %i.jq = and i32 %i.jp, 16777215                 ; 4 uses
  %i.jr = load i64, ptr %i.cb, align 8
  %.not.not.i.i.i92 = icmp eq i64 %i.jr, 0
  br i1 %.not.not.i.i.i92, label %.preheader181, label %bb.ah

.preheader181:                                    ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit91, %bb.ag
  %.sroa.06.0.in.i.i.i101 = phi ptr [ %.sroa.06.0.i.i.i102, %bb.ag ], [ %i.fk, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit91 ]
  %.sroa.06.0.i.i.i102 = load ptr, ptr %.sroa.06.0.in.i.i.i101, align 8 ; 4 uses
  %i.js = icmp eq ptr %.sroa.06.0.i.i.i102, null
  br i1 %i.js, label %_ZNK2v88internal8compiler15SparseSidetableINS1_15VariableTracker5StateEE3GetEPKNS1_4NodeE.exit103, label %bb.ag

bb.ag:                                            ; preds = %.preheader181
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i102, i64 8
  %i.ju = load i32, ptr %i.jt, align 4
  %i.jv = icmp eq i32 %i.jq, %i.ju
  br i1 %i.jv, label %_ZNKSt13unordered_mapIjN2v88internal8compiler15VariableTracker5StateENS0_4base4hashIjEESt8equal_toIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERSC_.exit.i99, label %.preheader181, !llvm.loop !0

bb.ah:                                            ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit91
  %i.jw = xor i32 %i.jq, -1
  %i.jx = shl i32 %i.jp, 15
  %i.jy = add i32 %i.jx, %i.jw                    ; 2 uses
  %i.jz = lshr i32 %i.jy, 12
  %i.ka = xor i32 %i.jz, %i.jy
  %i.kb = mul i32 %i.ka, 5                        ; 2 uses
  %i.kc = lshr i32 %i.kb, 4
  %i.kd = xor i32 %i.kc, %i.kb
  %i.ke = mul i32 %i.kd, 2057                     ; 2 uses
  %i.kf = lshr i32 %i.ke, 16
  %i.kg = xor i32 %i.kf, %i.ke
  %i.kh = zext i32 %i.kg to i64                   ; 3 uses
  %i.ki = load i64, ptr %i.fi, align 8            ; 2 uses
  %i.kj = urem i64 %i.kh, %i.ki                   ; 2 uses
  %i.kk = load ptr, ptr %i.fj, align 8
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.kj
  %i.km = load ptr, ptr %i.kl, align 8            ; 2 uses
  %.not.i.i.i.i.i93 = icmp eq ptr %i.km, null
  br i1 %.not.i.i.i.i.i93, label %_ZNK2v88internal8compiler15SparseSidetableINS1_15VariableTracker5StateEE3GetEPKNS1_4NodeE.exit103, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kn = load ptr, ptr %i.km, align 8            ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 40
  %i.kq = load i64, ptr %i.kp, align 8
  %i.kr = icmp eq i64 %i.kq, %i.kh
  %i.ks = load i32, ptr %i.ko, align 8
  %i.kt = icmp eq i32 %i.jq, %i.ks
  %i.ku = select i1 %i.kr, i1 %i.kt, i1 false
  br i1 %i.ku, label %_ZNKSt13unordered_mapIjN2v88internal8compiler15VariableTracker5StateENS0_4base4hashIjEESt8equal_toIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERSC_.exit.i99, label %.lr.ph.i.i.i.i.i94

bb.aj:                                            ; preds = %bb.ak
  %i.kv = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.kw = icmp eq i64 %i.lc, %i.kh
  %i.kx = load i32, ptr %i.kv, align 8
  %i.ky = icmp eq i32 %i.jq, %i.kx
  %i.kz = select i1 %i.kw, i1 %i.ky, i1 false
  br i1 %i.kz, label %_ZNKSt13unordered_mapIjN2v88internal8compiler15VariableTracker5StateENS0_4base4hashIjEESt8equal_toIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERSC_.exit.i99, label %.lr.ph.i.i.i.i.i94, !llvm.loop !1

.lr.ph.i.i.i.i.i94:                               ; preds = %bb.ai, %bb.aj
  %.020.i.i.i.i.i95 = phi ptr [ %i.la, %bb.aj ], [ %i.kn, %bb.ai ]
  %i.la = load ptr, ptr %.020.i.i.i.i.i95, align 8 ; 5 uses
  %.not18.i.i.i.i.i96 = icmp eq ptr %i.la, null
  br i1 %.not18.i.i.i.i.i96, label %_ZNK2v88internal8compiler15SparseSidetableINS1_15VariableTracker5StateEE3GetEPKNS1_4NodeE.exit103, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i94
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 40
  %i.lc = load i64, ptr %i.lb, align 8            ; 2 uses
  %i.ld = urem i64 %i.lc, %i.ki
  %.not19.i.i.i.i.i97 = icmp eq i64 %i.ld, %i.kj
  br i1 %.not19.i.i.i.i.i97, label %bb.aj, label %..loopexit_crit_edge21.i.i.i.i.i98, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i98:               ; preds = %bb.ak
  br label %_ZNK2v88internal8compiler15SparseSidetableINS1_15VariableTracker5StateEE3GetEPKNS1_4NodeE.exit103, !llvm.loop !1

_ZNKSt13unordered_mapIjN2v88internal8compiler15VariableTracker5StateENS0_4base4hashIjEESt8equal_toIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERSC_.exit.i99: ; preds = %bb.aj, %bb.ag, %bb.ai
  %.sroa.06.1.i.i.i100 = phi ptr [ %.sroa.06.0.i.i.i102, %bb.ag ], [ %i.kn, %bb.ai ], [ %i.la, %bb.aj ]
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i100, i64 16
  br label %_ZNK2v88internal8compiler15SparseSidetableINS1_15VariableTracker5StateEE3GetEPKNS1_4NodeE.exit103

_ZNK2v88internal8compiler15SparseSidetableINS1_15VariableTracker5StateEE3GetEPKNS1_4NodeE.exit103: ; preds = %.lr.ph.i.i.i.i.i94, %.preheader181, %bb.ah, %..loopexit_crit_edge21.i.i.i.i.i98, %_ZNKSt13unordered_mapIjN2v88internal8compiler15VariableTracker5StateENS0_4base4hashIjEESt8equal_toIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERSC_.exit.i99
  %i.lf = phi ptr [ %i.le, %_ZNKSt13unordered_mapIjN2v88internal8compiler15VariableTracker5StateENS0_4base4hashIjEESt8equal_toIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERSC_.exit.i99 ], [ %i.be, %..loopexit_crit_edge21.i.i.i.i.i98 ], [ %i.be, %.preheader181 ], [ %i.be, %bb.ah ], [ %i.be, %.lr.ph.i.i.i.i.i94 ] ; 8 uses
  br i1 %.not.i104, label %bb.al, label %bb.am, !prof !17

bb.al:                                            ; preds = %_ZNK2v88internal8compiler15SparseSidetableINS1_15VariableTracker5StateEE3GetEPKNS1_4NodeE.exit103
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #14
  unreachable

bb.am:                                            ; preds = %_ZNK2v88internal8compiler15SparseSidetableINS1_15VariableTracker5StateEE3GetEPKNS1_4NodeE.exit103
  %i.lg = load ptr, ptr %i.lf, align 8            ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.lg, null
  br i1 %.not16.i.i.i, label %_ZNK2v88internal8compiler15VariableTracker5State3GetENS1_8VariableE.exit, label %.lr.ph.i.i.i105

.lr.ph.i.i.i105:                                  ; preds = %bb.am, %bb.ap
  %.018.i.i.i = phi ptr [ %i.lt, %bb.ap ], [ %i.lg, %bb.am ] ; 6 uses
  %.01217.i.i.i = phi i32 [ %i.ll, %bb.ap ], [ 0, %bb.am ]
  %i.lh = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 20
  %.sroa.01.0.copyload.i.i.i = load i32, ptr %i.lh, align 4 ; 2 uses
  %.not15.i.i.i = icmp eq i32 %i.gy, %.sroa.01.0.copyload.i.i.i
  br i1 %.not15.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8FindHashENS9_9HashValueE.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i.i105
  %i.li = xor i32 %.sroa.01.0.copyload.i.i.i, %i.gy
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.preheader.i.i.i
  %.1.i.i.i = phi i32 [ %i.ll, %bb.an ], [ %.01217.i.i.i, %.preheader.i.i.i ] ; 4 uses
  %i.lj = lshr exact i32 -2147483648, %.1.i.i.i
  %i.lk = and i32 %i.lj, %i.li
  %.not.i.not.i.i.i = icmp eq i32 %i.lk, 0
  %i.ll = add nsw i32 %.1.i.i.i, 1                ; 2 uses
  br i1 %.not.i.not.i.i.i, label %bb.an, label %bb.ao, !llvm.loop !4

bb.ao:                                            ; preds = %bb.an
  %i.lm = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 16
  %i.ln = load i8, ptr %i.lm, align 8
  %i.lo = sext i8 %i.ln to i32
  %i.lp = icmp slt i32 %.1.i.i.i, %i.lo
  br i1 %i.lp, label %bb.ap, label %_ZNK2v88internal8compiler15VariableTracker5State3GetENS1_8VariableE.exit

bb.ap:                                            ; preds = %bb.ao
  %i.lq = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 32
  %i.lr = sext i32 %.1.i.i.i to i64
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %i.lr
  %i.lt = load ptr, ptr %i.ls, align 8            ; 2 uses
  %.not.i.i.i107 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i.i107, label %_ZNK2v88internal8compiler15VariableTracker5State3GetENS1_8VariableE.exit, label %.lr.ph.i.i.i105, !llvm.loop !5

_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8FindHashENS9_9HashValueE.exit.i.i: ; preds = %.lr.ph.i.i.i105
  %i.lu = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 24
  %i.lv = load ptr, ptr %i.lu, align 8            ; 3 uses
  %.not11.i.i.i = icmp eq ptr %i.lv, null
  br i1 %.not11.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8FindHashENS9_9HashValueE.exit.i.i
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  %i.lx = load ptr, ptr %i.lw, align 8            ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 16 ; 3 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.lx, null
  br i1 %.not10.i.i.i.i.i.i, label %_ZNK2v88internal8compiler15VariableTracker5State3GetENS1_8VariableE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.aq, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.lx, %bb.aq ] ; 3 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ly, %bb.aq ]
  %i.lz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32
  %i.ma = load i32, ptr %i.lz, align 4
  %i.mb = icmp slt i32 %i.ma, %.sroa.0.0.i        ; 2 uses
  %.19.i.i.i.i.i.i = select i1 %i.mb, ptr %.0811.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i = select i1 %i.mb, i64 24, i64 16
  %.1.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !6

_ZNKSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.mc = icmp eq ptr %.19.i.i.i.i.i.i, %i.ly
  br i1 %i.mc, label %_ZNK2v88internal8compiler15VariableTracker5State3GetENS1_8VariableE.exit, label %_ZNKSt3mapIN2v88internal8compiler8VariableEPNS2_4NodeESt4lessIS3_ENS1_13ZoneAllocatorISt4pairIKS3_S5_EEEE4findERSA_.exit.i.i.i

_ZNKSt3mapIN2v88internal8compiler8VariableEPNS2_4NodeESt4lessIS3_ENS1_13ZoneAllocatorISt4pairIKS3_S5_EEEE4findERSA_.exit.i.i.i: ; preds = %_ZNKSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i.i
  %i.md = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %i.md, align 4
  %i.me = icmp slt i32 %.sroa.0.0.i, %.sroa.0.0.copyload.i.i.i.i.i.i ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %i.me, ptr %i.ly, ptr %.19.i.i.i.i.i.i
  %4 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 32
  %spec.select.i.i.i108 = select i1 %i.me, ptr %i.lf, ptr %4
  br label %_ZNK2v88internal8compiler15VariableTracker5State3GetENS1_8VariableE.exit

bb.ar:                                            ; preds = %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8FindHashENS9_9HashValueE.exit.i.i
  %.sroa.0.0.copyload.i5.i.i = load i32, ptr %.018.i.i.i, align 8
  %i.mf = icmp eq i32 %.sroa.0.0.i, %.sroa.0.0.copyload.i5.i.i
  %..i.i.i = select i1 %i.mf, ptr %.018.i.i.i, ptr %i.lf
  br label %_ZNK2v88internal8compiler15VariableTracker5State3GetENS1_8VariableE.exit

_ZNK2v88internal8compiler15VariableTracker5State3GetENS1_8VariableE.exit: ; preds = %bb.ao, %bb.ap, %bb.am, %bb.aq, %_ZNKSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i.i, %_ZNKSt3mapIN2v88internal8compiler8VariableEPNS2_4NodeESt4lessIS3_ENS1_13ZoneAllocatorISt4pairIKS3_S5_EEEE4findERSA_.exit.i.i.i, %bb.ar
  %.sink.i.i.i106 = phi ptr [ %i.lf, %bb.aq ], [ %..i.i.i, %bb.ar ], [ %spec.select.i.i.i108, %_ZNKSt3mapIN2v88internal8compiler8VariableEPNS2_4NodeESt4lessIS3_ENS1_13ZoneAllocatorISt4pairIKS3_S5_EEEE4findERSA_.exit.i.i.i ], [ %i.lf, %_ZNKSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i.i ], [ %i.lf, %bb.am ], [ %i.lf, %bb.ap ], [ %i.lf, %bb.ao ]
  %i.mg = getelementptr inbounds nuw i8, ptr %.sink.i.i.i106, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8            ; 3 uses
  %.not68 = icmp eq ptr %i.mh, %.sroa.31.0.i
  %spec.select = select i1 %.not68, i1 %.058174, i1 false ; 2 uses
  %.not69 = icmp ne ptr %i.mh, null
  %i.mi = zext i1 %.not69 to i32
  %.160 = add nuw nsw i32 %.059173, %i.mi         ; 2 uses
  %i.mj = load ptr, ptr %i.fg, align 8            ; 2 uses
  %i.mk = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.ml = icmp ult ptr %i.mj, %i.mk
  br i1 %i.ml, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit110, label %bb.as, !prof !19

bb.as:                                            ; preds = %_ZNK2v88internal8compiler15VariableTracker5State3GetENS1_8VariableE.exit
  %i.mm = load ptr, ptr %i.aw, align 8
  %i.mn = ptrtoint ptr %i.mk to i64
  %i.mo = ptrtoint ptr %i.mm to i64
  %i.mp = sub i64 %i.mn, %i.mo
  %i.mq = ashr exact i64 %i.mp, 3
  %i.mr = add nsw i64 %i.mq, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 noundef %i.mr)
  %.pre.i109 = load ptr, ptr %i.fg, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit110

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit110: ; preds = %_ZNK2v88internal8compiler15VariableTracker5State3GetENS1_8VariableE.exit, %bb.as
  %i.ms = phi ptr [ %i.mj, %_ZNK2v88internal8compiler15VariableTracker5State3GetENS1_8VariableE.exit ], [ %.pre.i109, %bb.as ] ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  store ptr %i.mt, ptr %i.fg, align 8
  store ptr %i.mh, ptr %i.ms, align 8
  %i.mu = add nuw nsw i32 %.061172, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.mu, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.ac, !llvm.loop !39

bb.at:                                            ; preds = %_ZNK2v88internal8compiler15SparseSidetableINS1_15VariableTracker5StateEE3GetEPKNS1_4NodeE.exit88
  %i.mv = load ptr, ptr %i.iq, align 8            ; 4 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.mx = load i16, ptr %i.mw, align 8
  %i.my = icmp eq i16 %i.mx, 36
  br i1 %i.my, label %bb.au, label %bb.bk

bb.au:                                            ; preds = %bb.at
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 28
  %i.na = load i32, ptr %i.mz, align 4
  %i.nb = icmp sgt i32 %i.na, 0
  br i1 %i.nb, label %bb.aw, label %bb.av, !prof !19

bb.av:                                            ; preds = %bb.au
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #14
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mv, i64 20
  %i.nd = load i32, ptr %i.nc, align 4
  %i.ne = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.mv) #13
  %i.nf = load ptr, ptr %i.iq, align 8
  %i.ng = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.nf) #13
  %i.nh = load ptr, ptr %i.iq, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  %i.nj = load i32, ptr %i.ni, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.iq, i64 20 ; 2 uses
  %i.nl = load i32, ptr %i.nk, align 4
  %i.nm = and i32 %i.nl, 251658240
  %.not.i.i.i111 = icmp eq i32 %i.nm, 251658240
  %i.nn = ptrtoint ptr %i.iq to i64
  %i.no = add i64 %i.nn, 32
  %i.np = inttoptr i64 %i.no to ptr               ; 4 uses
  br i1 %.not.i.i.i111, label %bb.ax, label %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit113

bb.ax:                                            ; preds = %bb.aw
  %i.nq = load ptr, ptr %i.np, align 8
  %i.nr = ptrtoint ptr %i.nq to i64
  %i.ns = add i64 %i.nr, 16
  %i.nt = inttoptr i64 %i.ns to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit113

_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit113: ; preds = %bb.aw, %bb.ax
  %.sink.i.i.i112 = phi ptr [ %i.nt, %bb.ax ], [ %i.np, %bb.aw ]
  %i.nu = zext i1 %i.ne to i32
  %i.nv = zext i1 %i.ng to i32
  %i.nw = add i32 %i.nd, %i.nu
  %i.nx = add i32 %i.nw, %i.nv
  %i.ny = add i32 %i.nx, %i.nj
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i112, i64 %i.nz
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = icmp eq ptr %i.ob, %i.am
  br i1 %i.oc, label %.preheader, label %bb.bk

.preheader:                                       ; preds = %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit113
  br i1 %i.fl, label %.lr.ph177, label %._crit_edge178

.lr.ph177:                                        ; preds = %.preheader
  %i.od = getelementptr inbounds nuw i8, ptr %i.iq, i64 16 ; 2 uses
  br label %bb.az

._crit_edge178:                                   ; preds = %bb.bj, %.preheader
  %.not.i114 = icmp eq i32 %.sroa.0.0.i, -1
  br i1 %.not.i114, label %bb.ay, label %_ZN2v88internal8compiler15VariableTracker5State3SetENS1_8VariableEPNS1_4NodeE.exit, !prof !17

bb.ay:                                            ; preds = %._crit_edge178
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #14
  unreachable

_ZN2v88internal8compiler15VariableTracker5State3SetENS1_8VariableEPNS1_4NodeE.exit: ; preds = %._crit_edge178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.iq, ptr %i.g, align 8
  call void @_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE6ModifyIZNS9_3SetES3_S5_EUlPS5_E_EEvS3_T_(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 %.sroa.0.0.i, ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorneERKSA_.exit

bb.az:                                            ; preds = %.lr.ph177, %bb.bj
  %indvars.iv = phi i64 [ 0, %.lr.ph177 ], [ %indvars.iv.next, %bb.bj ] ; 5 uses
  %i.oe = load ptr, ptr %i.iq, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 20
  %i.og = load i32, ptr %i.of, align 4
  %i.oh = sext i32 %i.og to i64
  %i.oi = icmp slt i64 %indvars.iv, %i.oh
  br i1 %i.oi, label %bb.bb, label %bb.ba, !prof !19

bb.ba:                                            ; preds = %bb.az
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #14
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.oj = load i32, ptr %i.nk, align 4
  %i.ok = and i32 %i.oj, 251658240
  %.not.i.i.i115 = icmp eq i32 %i.ok, 251658240
  br i1 %.not.i.i.i115, label %bb.bc, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

bb.bc:                                            ; preds = %bb.bb
  %i.ol = load ptr, ptr %i.np, align 8
  %i.om = ptrtoint ptr %i.ol to i64
  %i.on = add i64 %i.om, 16
  %i.oo = inttoptr i64 %i.on to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit: ; preds = %bb.bb, %bb.bc
  %.sink.i.i.i116 = phi ptr [ %i.oo, %bb.bc ], [ %i.np, %bb.bb ]
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i.i116, i64 %indvars.iv
  %i.oq = load ptr, ptr %i.op, align 8
  %i.or = load ptr, ptr %i.aw, align 8
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %indvars.iv
  %i.ot = load ptr, ptr %i.os, align 8            ; 2 uses
  %.not66 = icmp eq ptr %i.ot, null
  br i1 %.not66, label %bb.bd, label %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit

bb.bd:                                            ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %i.ou = load ptr, ptr %i.fm, align 8            ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 792 ; 2 uses
  %i.ow = load ptr, ptr %i.ov, align 8            ; 2 uses
  %.not.i117 = icmp eq ptr %i.ow, null
  br i1 %.not.i117, label %bb.be, label %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit

bb.be:                                            ; preds = %bb.bd
  %i.ox = load ptr, ptr %i.ou, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8
  %i.pa = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4DeadEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oz) #13
  %i.pb = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ox, ptr noundef %i.pa, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #13 ; 2 uses
  store ptr %i.pb, ptr %i.ov, align 8
  br label %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit

_ZN2v88internal8compiler12MachineGraph4DeadEv.exit: ; preds = %bb.be, %bb.bd, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %i.pc = phi ptr [ %i.ot, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit ], [ %i.pb, %bb.be ], [ %i.ow, %bb.bd ] ; 2 uses
  %.not67 = icmp eq ptr %i.oq, %i.pc
  br i1 %.not67, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit
  %i.pd = trunc nuw nsw i64 %indvars.iv to i32
  call void @_ZN2v88internal8compiler14NodeProperties17ReplaceValueInputEPNS1_4NodeES4_i(ptr noundef nonnull %i.iq, ptr noundef %i.pc, i32 noundef %i.pd) #13
  %i.pe = load ptr, ptr %i.fn, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.iq, ptr %i.f, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.pg = load i32, ptr %i.od, align 8
  %i.ph = load i32, ptr %i.pf, align 4            ; 2 uses
  %.0.i.i118 = call i32 @llvm.usub.sat.i32(i32 %i.pg, i32 %i.ph)
  %i.pi = and i32 %.0.i.i118, 255
  %i.pj = icmp eq i32 %i.pi, 3
  br i1 %i.pj, label %bb.bg, label %_ZN2v88internal8compiler18EffectGraphReducer7RevisitEPNS1_4NodeE.exit

bb.bg:                                            ; preds = %bb.bf
  %i.pk = add i32 %i.ph, 1
  store i32 %i.pk, ptr %i.od, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pe, i64 88 ; 3 uses
  %i.pm = load ptr, ptr %i.pl, align 8            ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pe, i64 104
  %i.po = load ptr, ptr %i.pn, align 8
  %i.pp = getelementptr inbounds i8, ptr %i.po, i64 -8
  %.not.i.i.i119 = icmp eq ptr %i.pm, %i.pp
  br i1 %.not.i.i.i119, label %bb.bi, label %bb.bh
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler15VariableTracker5ScopeD2Ev:bb.a
  br i1 %i.bg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK2v88internal8compiler15SparseSidetableINS1_15VariableTracker5StateEE3GetEPKNS1_4NodeE.exit
  %i.bh = load ptr, ptr %i.a, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 1, ptr %i.bi, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK2v88internal8compiler15SparseSidetableINS1_15VariableTracker5StateEE3GetEPKNS1_4NodeE.exit, %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %0, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN2v88internal8compiler15SparseSidetableINS1_15VariableTracker5StateEE3SetEPKNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(88) %i.bl, ptr noundef %i.bm, ptr noundef nonnull byval(%"class.v8::internal::compiler::VariableTracker::State") align 8 %i.bn)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler15SparseSidetableINS1_15VariableTracker5StateEE3SetEPKNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef byval(%"class.v8::internal::compiler::VariableTracker::State") align 8 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.311", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = and i32 %i.c, 16777215                   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8
  %.not.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.g, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8 ; 4 uses
  %i.h = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.h, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.d, %i.j
  br i1 %i.k, label %_ZNSt13unordered_mapIjN2v88internal8compiler15VariableTracker5StateENS0_4base4hashIjEESt8equal_toIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERSC_.exit, label %bb.c, !llvm.loop !45

bb.e:                                             ; preds = %bb.a
  %i.l = xor i32 %i.d, -1
  %i.m = shl i32 %i.c, 15
  %i.n = add i32 %i.m, %i.l                       ; 2 uses
  %i.o = lshr i32 %i.n, 12
  %i.p = xor i32 %i.o, %i.n
  %i.q = mul i32 %i.p, 5                          ; 2 uses
  %i.r = lshr i32 %i.q, 4
  %i.s = xor i32 %i.r, %i.q
  %i.t = mul i32 %i.s, 2057                       ; 2 uses
  %i.u = lshr i32 %i.t, 16
  %i.v = xor i32 %i.u, %i.t
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = urem i64 %i.w, %i.y                      ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.ad, align 8            ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp eq i64 %i.ah, %i.w
  %i.aj = load i32, ptr %i.af, align 8
  %i.ak = icmp eq i32 %i.d, %i.aj
  %i.al = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %i.al, label %_ZNSt13unordered_mapIjN2v88internal8compiler15VariableTracker5StateENS0_4base4hashIjEESt8equal_toIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERSC_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.an = icmp eq i64 %i.at, %i.w
  %i.ao = load i32, ptr %i.am, align 8
  %i.ap = icmp eq i32 %i.d, %i.ao
  %i.aq = select i1 %i.an, i1 %i.ap, i1 false
  br i1 %i.aq, label %_ZNSt13unordered_mapIjN2v88internal8compiler15VariableTracker5StateENS0_4base4hashIjEESt8equal_toIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERSC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.ar, %bb.g ], [ %i.ae, %bb.f ]
  %i.ar = load ptr, ptr %.020.i.i.i.i, align 8    ; 5 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %i.au = urem i64 %i.at, %i.y
  %.not19.i.i.i.i = icmp eq i64 %i.au, %i.z
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit, !llvm.loop !1

_ZNSt13unordered_mapIjN2v88internal8compiler15VariableTracker5StateENS0_4base4hashIjEESt8equal_toIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERSC_.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.ae, %bb.f ], [ %i.ar, %bb.g ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.j

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i, %bb.e
  %i.aw = call noundef zeroext i1 @_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEEeqERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  br i1 %i.aw, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.ax = load i32, ptr %i.b, align 4
  %i.ay = and i32 %i.ax, 16777215
  store i32 %i.ay, ptr %3, align 8, !alias.scope !48
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ba = call { ptr, i8 } @_ZNSt10_HashtableIjSt4pairIKjN2v88internal8compiler15VariableTracker5StateEENS3_13ZoneAllocatorIS7_EENSt8__detail10_Select1stESt8equal_toIjENS2_4base4hashIjEENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS0_IjS6_EEEES0_INSA_14_Node_iteratorIS7_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.i, %_ZNSt13unordered_mapIjN2v88internal8compiler15VariableTracker5StateENS0_4base4hashIjEESt8equal_toIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERSC_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2v88internal8compiler15VariableTracker5State3GetENS1_8VariableE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, -1
  br i1 %.not, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = xor i32 %1, -1
  %i.b = shl i32 %1, 15
  %i.c = add i32 %i.b, %i.a                       ; 2 uses
  %i.d = lshr i32 %i.c, 12
  %i.e = xor i32 %i.d, %i.c
  %i.f = mul i32 %i.e, 5                          ; 2 uses
  %i.g = lshr i32 %i.f, 4
  %i.h = xor i32 %i.g, %i.f
  %i.i = mul i32 %i.h, 2057                       ; 2 uses
  %i.j = lshr i32 %i.i, 16
  %i.k = xor i32 %i.j, %i.i                       ; 2 uses
  %i.l = load ptr, ptr %0, align 8                ; 2 uses
  %.not16.i.i = icmp eq ptr %i.l, null
  br i1 %.not16.i.i, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE3GetERKS3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.f
  %.018.i.i = phi ptr [ %i.y, %bb.f ], [ %i.l, %bb.c ] ; 6 uses
  %.01217.i.i = phi i32 [ %i.q, %bb.f ], [ 0, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 20
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.m, align 4 ; 2 uses
  %.not15.i.i = icmp eq i32 %i.k, %.sroa.01.0.copyload.i.i
  br i1 %.not15.i.i, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8FindHashENS9_9HashValueE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %i.n = xor i32 %.sroa.01.0.copyload.i.i, %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i.i
  %.1.i.i = phi i32 [ %i.q, %bb.d ], [ %.01217.i.i, %.preheader.i.i ] ; 4 uses
  %i.o = lshr exact i32 -2147483648, %.1.i.i
  %i.p = and i32 %i.o, %i.n
  %.not.i.not.i.i = icmp eq i32 %i.p, 0
  %i.q = add nsw i32 %.1.i.i, 1                   ; 2 uses
  br i1 %.not.i.not.i.i, label %bb.d, label %bb.e, !llvm.loop !4

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 16
  %i.s = load i8, ptr %i.r, align 8
  %i.t = sext i8 %i.s to i32
  %i.u = icmp slt i32 %.1.i.i, %i.t
  br i1 %i.u, label %bb.f, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE3GetERKS3_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 32
  %i.w = sext i32 %.1.i.i to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE3GetERKS3_.exit, label %.lr.ph.i.i, !llvm.loop !5

_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8FindHashENS9_9HashValueE.exit.i: ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %.not11.i.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8FindHashENS9_9HashValueE.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE3GetERKS3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ac, %bb.g ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.g ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp slt i32 %i.af, %1                  ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ag, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ag, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

_ZNKSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ah = icmp eq ptr %.19.i.i.i.i.i, %i.ad
  br i1 %i.ah, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE3GetERKS3_.exit, label %_ZNKSt3mapIN2v88internal8compiler8VariableEPNS2_4NodeESt4lessIS3_ENS1_13ZoneAllocatorISt4pairIKS3_S5_EEEE4findERSA_.exit.i.i

_ZNKSt3mapIN2v88internal8compiler8VariableEPNS2_4NodeESt4lessIS3_ENS1_13ZoneAllocatorISt4pairIKS3_S5_EEEE4findERSA_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.ai, align 4
  %i.aj = icmp slt i32 %1, %.sroa.0.0.copyload.i.i.i.i.i ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.aj, ptr %i.ad, ptr %.19.i.i.i.i.i
  %2 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 32
  %spec.select.i.i = select i1 %i.aj, ptr %0, ptr %2
  br label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE3GetERKS3_.exit

bb.h:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8FindHashENS9_9HashValueE.exit.i
  %.sroa.0.0.copyload.i5.i = load i32, ptr %.018.i.i, align 8
  %i.ak = icmp eq i32 %1, %.sroa.0.0.copyload.i5.i
  %..i.i = select i1 %i.ak, ptr %.018.i.i, ptr %0
  br label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE3GetERKS3_.exit

_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE3GetERKS3_.exit: ; preds = %bb.e, %bb.f, %bb.c, %bb.g, %_ZNKSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, %_ZNKSt3mapIN2v88internal8compiler8VariableEPNS2_4NodeESt4lessIS3_ENS1_13ZoneAllocatorISt4pairIKS3_S5_EEEE4findERSA_.exit.i.i, %bb.h
  %.sink.i.i = phi ptr [ %0, %bb.g ], [ %..i.i, %bb.h ], [ %spec.select.i.i, %_ZNKSt3mapIN2v88internal8compiler8VariableEPNS2_4NodeESt4lessIS3_ENS1_13ZoneAllocatorISt4pairIKS3_S5_EEEE4findERSA_.exit.i.i ], [ %0, %_ZNKSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i ], [ %0, %bb.c ], [ %0, %bb.f ], [ %0, %bb.e ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  ret ptr %i.am
}

declare void @_ZN2v88internal8compiler14NodeProperties17ReplaceValueInputEPNS1_4NodeES4_i(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder3PhiENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(288) ptr @_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(288) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted23 = load ptr, ptr %i.a, align 8
  %.promoted24 = load i32, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.promoted = load ptr, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %i.e = phi ptr [ %i.ay, %bb.j ], [ %.promoted, %bb.a ] ; 2 uses
  %.promoted25 = phi i32 [ %.promoted26, %bb.j ], [ %.promoted24, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %.0.lcssa.i, %bb.j ], [ %.promoted23, %bb.a ] ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not8 = icmp eq ptr %i.h, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.e) #15 ; 3 uses
  store ptr %i.i, ptr %i.b, align 8
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = phi ptr [ %i.i, %bb.d ], [ %i.e, %bb.c ]
  %i.n = icmp eq i32 %.promoted25, 0
  br i1 %i.n, label %.loopexit.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.p = sext i32 %.promoted25 to i64
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %.critedge
  %indvars.iv = phi i64 [ %i.p, %.preheader ], [ %indvars.iv.next, %.critedge ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %i.q = trunc nsw i64 %indvars.iv.next to i32    ; 2 uses
  store i32 %i.q, ptr %0, align 8
  %i.r = load i32, ptr %i.o, align 4
  %i.s = lshr exact i32 -2147483648, %i.q
  %i.t = and i32 %i.r, %i.s
  %.not.i.not = icmp eq i32 %i.t, 0
  br i1 %.not.i.not, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next
  %i.v = load ptr, ptr %i.u, align 8              ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.critedge, label %bb.h

.critedge:                                        ; preds = %bb.f, %bb.g
  %i.x = icmp eq i64 %indvars.iv.next, 0
  br i1 %i.x, label %.loopexit.sink.split, label %bb.f, !llvm.loop !49

bb.h:                                             ; preds = %bb.g
  %i.y = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  store i32 %i.y, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aa = load i8, ptr %i.z, align 8
  %i.ab = sext i8 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv, %i.ab
  br i1 %i.ac, label %.lr.ph.i, label %_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE12FindLeftmostEPKNS9_11FocusedTreeEPiPSt5arrayISC_Lm32EE.exit

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %.lr.ph.i ], [ %indvars.iv, %bb.h ] ; 4 uses
  %.041.i = phi ptr [ %.1.i, %.lr.ph.i ], [ %i.v, %bb.h ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.041.i, i64 20
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = trunc nsw i64 %indvars.iv30 to i32
  %i.ag = lshr exact i32 -2147483648, %i.af
  %i.ah = and i32 %i.ae, %i.ag
  %.not.i.i.not.i = icmp eq i32 %i.ah, 0          ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.041.i, i64 32
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %indvars.iv30
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %.not.i11 = icmp eq ptr %i.ak, null             ; 2 uses
  %spec.select = select i1 %.not.i11, ptr null, ptr %.041.i
  %.sink.i = select i1 %.not.i.i.not.i, ptr %i.ak, ptr %spec.select
  %i.al = select i1 %.not.i.i.not.i, i1 true, i1 %.not.i11
  %.1.i = select i1 %i.al, ptr %.041.i, ptr %i.ak ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv30
  store ptr %.sink.i, ptr %i.am, align 8
  %indvars.iv.next31 = add nsw i64 %indvars.iv30, 1 ; 3 uses
  %i.an = trunc nsw i64 %indvars.iv.next31 to i32 ; 2 uses
  store i32 %i.an, ptr %0, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.ap = load i8, ptr %i.ao, align 8
  %i.aq = sext i8 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next31, %i.aq
  br i1 %i.ar, label %.lr.ph.i, label %_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE12FindLeftmostEPKNS9_11FocusedTreeEPiPSt5arrayISC_Lm32EE.exit, !llvm.loop !2

_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE12FindLeftmostEPKNS9_11FocusedTreeEPiPSt5arrayISC_Lm32EE.exit: ; preds = %.lr.ph.i, %bb.h
  %.promoted26 = phi i32 [ %i.y, %bb.h ], [ %i.an, %.lr.ph.i ]
  %.0.lcssa.i = phi ptr [ %i.v, %bb.h ], [ %.1.i, %.lr.ph.i ] ; 5 uses
  store ptr %.0.lcssa.i, ptr %i.a, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not9 = icmp eq ptr %i.at, null
  br i1 %.not9, label %.thread, label %bb.i

.thread:                                          ; preds = %_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE12FindLeftmostEPKNS9_11FocusedTreeEPiPSt5arrayISC_Lm32EE.exit
  %.sroa.31.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8
  br label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE12FindLeftmostEPKNS9_11FocusedTreeEPiPSt5arrayISC_Lm32EE.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  store ptr %i.av, ptr %i.b, align 8
  %.pre = load ptr, ptr %i.as, align 8
  %.pre.fr = freeze ptr %.pre
  %i.aw = icmp eq ptr %.pre.fr, null
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %spec.select45 = select i1 %i.aw, ptr %.sroa.31.0..sroa_idx.i, ptr %i.ax
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread
  %i.ay = phi ptr [ %i.av, %bb.i ], [ %i.m, %.thread ]
  %i.az = phi ptr [ %spec.select45, %bb.i ], [ %.sroa.31.0..sroa_idx.i40, %.thread ]
  %.sroa.31.0.i = load ptr, ptr %i.az, align 8
  %i.ba = load ptr, ptr %i.d, align 8
  %.not10 = icmp eq ptr %.sroa.31.0.i, %i.ba
  br i1 %.not10, label %bb.b, label %.loopexit, !llvm.loop !50

.loopexit.sink.split:                             ; preds = %bb.e, %.critedge
  store i32 0, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.d, %bb.b, %.loopexit.sink.split
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler14EscapeAnalysis6ReduceEPNS1_4NodeEPNS1_18EffectGraphReducer9ReductionE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %4 = alloca %"struct.std::array.265", align 8   ; 6 uses
  %5 = alloca %"struct.std::array.264", align 8   ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.v8::internal::compiler::Type", align 8 ; 7 uses
  %7 = alloca %"class.v8::internal::compiler::Type", align 8 ; 8 uses
  %8 = alloca %"class.v8::internal::compiler::Type", align 8 ; 8 uses
  %9 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  %10 = alloca %"class.v8::internal::TNode.249", align 8 ; 4 uses
  %11 = alloca %"class.v8::internal::TNode.250", align 8 ; 4 uses
  %12 = alloca %"class.v8::internal::TNode.250", align 8 ; 4 uses
  %13 = alloca %"class.v8::internal::compiler::StateValuesAccess::iterator", align 8 ; 5 uses
  %14 = alloca %"class.v8::internal::compiler::EscapeAnalysisTracker::Scope", align 8 ; 79 uses
  %i.b = load ptr, ptr %1, align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  call void @_ZN2v88internal8compiler15VariableTracker5ScopeC2EPS2_PNS1_4NodeEPNS1_18EffectGraphReducer9ReductionE(ptr noundef nonnull align 8 dereferenceable(80) %14, ptr noundef nonnull %i.e, ptr noundef nonnull %1, ptr noundef %2)
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 4 uses
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %14, i64 56
  store ptr %0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.j = load ptr, ptr %i.i, align 8              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i16, ptr %i.k, align 8
  switch i16 %i.l, label %bb.ds [
    i16 266, label %bb.b
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15double_iteratorppEv:bb.a
  br i1 %.not.i.i, label %.split.i, label %.thread6.i

.split.i:                                         ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 24
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 32
  %.sroa.0.0.in.i.i.i = select i1 %.not.i.i.i, ptr %.sroa.3.0.copyload, ptr %i.r
  %.sroa.0.0.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload, i64 24
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.i9.i.i = icmp eq ptr %i.t, null
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.221.0.copyload, i64 32
  %.sroa.0.0.in.i12.i.i = select i1 %.not.i9.i.i, ptr %.sroa.322.0.copyload, ptr %i.u
  %.sroa.0.0.i13.i.i = load i32, ptr %.sroa.0.0.in.i12.i.i, align 8
  %i.v = icmp eq i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i13.i.i
  br i1 %i.v, label %_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15double_iteratorC2ENS9_8iteratorESB_.exit, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.i

_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratoreqERKSA_.exit.i: ; preds = %bb.e
  %.mux.i.i = select i1 %i.k, i1 %i.l, i1 false
  br i1 %.mux.i.i, label %_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15double_iteratorC2ENS9_8iteratorESB_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratoreqERKSA_.exit.i
  br i1 %i.k, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.thread8.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.l, label %_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15double_iteratorC2ENS9_8iteratorESB_.exit, label %..thread6_crit_edge.i

..thread6_crit_edge.i:                            ; preds = %bb.h
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload, i64 20
  %.sroa.04.0.copyload.i.pre.i = load i32, ptr %.phi.trans.insert.i, align 4
  %.phi.trans.insert12.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 20
  %.pre.i = load i32, ptr %.phi.trans.insert12.i, align 4
  br label %.thread6.i

.thread6.i:                                       ; preds = %..thread6_crit_edge.i, %bb.f
  %i.w = phi i32 [ %.pre.i, %..thread6_crit_edge.i ], [ %i.o, %bb.f ] ; 2 uses
  %.sroa.04.0.copyload.i.i = phi i32 [ %.sroa.04.0.copyload.i.pre.i, %..thread6_crit_edge.i ], [ %.sroa.03.0.copyload.i.i, %bb.f ] ; 2 uses
  %i.x = icmp eq i32 %i.w, %.sroa.04.0.copyload.i.i
  br i1 %i.x, label %.thread6.i._ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.i_crit_edge, label %.split10.i

.thread6.i._ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.i_crit_edge: ; preds = %.thread6.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert24 = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload, i64 24
  %.pre25 = load ptr, ptr %.phi.trans.insert24, align 8
  br label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.i

.split10.i:                                       ; preds = %.thread6.i
  %i.y = icmp ult i32 %i.w, %.sroa.04.0.copyload.i.i
  br i1 %i.y, label %_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15double_iteratorC2ENS9_8iteratorESB_.exit, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.thread8.i

_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.i: ; preds = %.thread6.i._ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.i_crit_edge, %.split.i
  %i.z = phi ptr [ %.pre25, %.thread6.i._ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.i_crit_edge ], [ %i.t, %.split.i ]
  %i.aa = phi ptr [ %.pre, %.thread6.i._ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.i_crit_edge ], [ %i.q, %.split.i ]
  %.not.i.i2.i = icmp eq ptr %i.aa, null
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 32
  %.sroa.0.0.in.i.i3.i = select i1 %.not.i.i2.i, ptr %.sroa.3.0.copyload, ptr %i.ab
  %.sroa.0.0.i.i4.i = load i32, ptr %.sroa.0.0.in.i.i3.i, align 8
  %.not.i10.i.i = icmp eq ptr %i.z, null
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.221.0.copyload, i64 32
  %.sroa.0.0.in.i13.i.i = select i1 %.not.i10.i.i, ptr %.sroa.322.0.copyload, ptr %i.ac
  %.sroa.0.0.i14.i.i = load i32, ptr %.sroa.0.0.in.i13.i.i, align 8
  %i.ad = icmp slt i32 %.sroa.0.0.i.i4.i, %.sroa.0.0.i14.i.i
  br i1 %i.ad, label %_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15double_iteratorC2ENS9_8iteratorESB_.exit, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.thread8.i

_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.thread8.i: ; preds = %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.i, %.split10.i, %bb.g
  br label %_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15double_iteratorC2ENS9_8iteratorESB_.exit

_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15double_iteratorC2ENS9_8iteratorESB_.exit: ; preds = %bb.h, %.split10.i, %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.i, %.split.i, %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratoreqERKSA_.exit.i, %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.thread8.i
  %.sroa.14.0 = phi i8 [ 1, %.split.i ], [ 1, %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.thread8.i ], [ 1, %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratoreqERKSA_.exit.i ], [ 0, %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.i ], [ 0, %.split10.i ], [ 0, %bb.h ]
  %.sroa.119.0 = phi i8 [ 1, %.split.i ], [ 0, %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.thread8.i ], [ 1, %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratoreqERKSA_.exit.i ], [ 1, %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.i ], [ 1, %.split10.i ], [ 1, %bb.h ]
  store i64 %.sroa.020.0.copyload, ptr %i.j, align 8
  store ptr %.sroa.221.0.copyload, ptr %.sroa.221.0..sroa_idx, align 8
  store ptr %.sroa.322.0.copyload, ptr %.sroa.322.0..sroa_idx, align 8
  store i8 %.sroa.119.0, ptr %i.a, align 8
  store i8 %.sroa.14.0, ptr %i.e, align 1
  ret ptr %0
}

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4DeadEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE6ModifyIZNS9_3SetES3_S5_EUlPS5_E_EEvS3_T_(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<v8::internal::compiler::Variable, std::pair<const v8::internal::compiler::Variable, v8::internal::compiler::Node *>, std::_Select1st<std::pair<const v8::internal::compiler::Variable, v8::internal::compiler::Node *>>, std::less<v8::internal::compiler::Variable>, v8::internal::ZoneAllocator<std::pair<const v8::internal::compiler::Variable, v8::internal::compiler::Node *>>>::_Reuse_or_alloc_node", align 8 ; 7 uses
  %4 = alloca %"class.v8::internal::compiler::Variable", align 4 ; 4 uses
  %5 = alloca %"struct.std::array", align 8       ; 6 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  store i32 %1, ptr %4, align 4
  %i.b = xor i32 %1, -1
  %i.c = shl i32 %1, 15
  %i.d = add i32 %i.c, %i.b                       ; 2 uses
  %i.e = lshr i32 %i.d, 12
  %i.f = xor i32 %i.e, %i.d
  %i.g = mul i32 %i.f, 5                          ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = xor i32 %i.h, %i.g
  %i.j = mul i32 %i.i, 2057                       ; 2 uses
  %i.k = lshr i32 %i.j, 16
  %i.l = xor i32 %i.k, %i.j                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.m = load ptr, ptr %0, align 8                ; 2 uses
  %.not44.i = icmp eq ptr %i.m, null
  br i1 %.not44.i, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit.thread, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %bb.a, %bb.f
  %.046.i = phi ptr [ %i.at, %bb.f ], [ %i.m, %bb.a ] ; 13 uses
  %.03245.i = phi i32 [ %i.au, %bb.f ], [ 0, %bb.a ] ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.046.i, i64 20
  %.sroa.01.0.copyload.i = load i32, ptr %i.n, align 4 ; 2 uses
  %.not36.i = icmp eq i32 %i.l, %.sroa.01.0.copyload.i
  %i.o = getelementptr inbounds nuw i8, ptr %.046.i, i64 16 ; 2 uses
  br i1 %.not36.i, label %.critedge.preheader.i, label %bb.b

.critedge.preheader.i:                            ; preds = %.lr.ph48.i
  %i.p = load i8, ptr %i.o, align 8               ; 3 uses
  %i.q = sext i8 %i.p to i32
  %i.r = icmp slt i32 %.03245.i, %i.q
  br i1 %i.r, label %.lr.ph52.i, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8FindHashENS9_9HashValueEPSt5arrayIPKNS9_11FocusedTreeELm32EEPi.exit

.lr.ph52.i:                                       ; preds = %.critedge.preheader.i
  %i.s = sext i32 %.03245.i to i64                ; 2 uses
  %i.t = sext i8 %i.p to i64
  %i.u = shl nsw i64 %i.s, 3                      ; 2 uses
  %scevgep = getelementptr i8, ptr %5, i64 %i.u
  %scevgep85 = getelementptr i8, ptr %.046.i, i64 32
  %scevgep86 = getelementptr i8, ptr %scevgep85, i64 %i.u
  %i.v = sub nsw i64 %i.t, %i.s
  %i.w = shl nsw i64 %i.v, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep, ptr align 8 %scevgep86, i64 %i.w, i1 false)
  %i.x = sext i8 %i.p to i32
  br label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8FindHashENS9_9HashValueEPSt5arrayIPKNS9_11FocusedTreeELm32EEPi.exit

bb.b:                                             ; preds = %.lr.ph48.i
  %i.y = xor i32 %.sroa.01.0.copyload.i, %i.l     ; 2 uses
  %i.z = lshr exact i32 -2147483648, %.03245.i
  %i.aa = and i32 %i.y, %i.z
  %.not.i.not42.i = icmp eq i32 %i.aa, 0
  %.pre = load i8, ptr %i.o, align 8              ; 2 uses
  br i1 %.not.i.not42.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.046.i, i64 32
  %i.ac = sext i32 %.03245.i to i64
  %i.ad = sext i8 %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %i.ae = icmp slt i64 %indvars.iv.i, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ag = load ptr, ptr %i.af, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ah = phi ptr [ %i.ag, %bb.d ], [ null, %bb.c ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i
  store ptr %i.ah, ptr %i.ai, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.ak = lshr exact i32 -2147483648, %i.aj
  %i.al = and i32 %i.ak, %i.y
  %.not.i.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.not.i, label %bb.c, label %._crit_edge.i, !llvm.loop !87

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.1.lcssa.i = phi i32 [ %.03245.i, %bb.b ], [ %i.aj, %bb.e ] ; 4 uses
  %i.am = sext i32 %.1.lcssa.i to i64             ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.am
  store ptr %.046.i, ptr %i.an, align 8
  %i.ao = sext i8 %.pre to i32
  %i.ap = icmp slt i32 %.1.lcssa.i, %i.ao
  br i1 %i.ap, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.i
  %i.aq = add nuw nsw i32 %.1.lcssa.i, 1
  br label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit.thread

bb.f:                                             ; preds = %._crit_edge.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.046.i, i64 32
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.am
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = add nuw nsw i32 %.1.lcssa.i, 1          ; 2 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit.thread, label %.lr.ph48.i, !llvm.loop !88

_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8FindHashENS9_9HashValueEPSt5arrayIPKNS9_11FocusedTreeELm32EEPi.exit: ; preds = %.lr.ph52.i, %.critedge.preheader.i
  %.3.i = phi i32 [ %.03245.i, %.critedge.preheader.i ], [ %i.x, %.lr.ph52.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.046.i, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %.not11.i = icmp eq ptr %i.aw, null
  br i1 %.not11.i, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit.thread97, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8FindHashENS9_9HashValueEPSt5arrayIPKNS9_11FocusedTreeELm32EEPi.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not10.i.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ay, %bb.g ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.az, %bb.g ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = icmp slt i32 %i.bb, %1                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.bc, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.bc, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZNKSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bd = icmp eq ptr %.19.i.i.i.i, %i.az
  br i1 %i.bd, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit, label %_ZNKSt3mapIN2v88internal8compiler8VariableEPNS2_4NodeESt4lessIS3_ENS1_13ZoneAllocatorISt4pairIKS3_S5_EEEE4findERSA_.exit.i

_ZNKSt3mapIN2v88internal8compiler8VariableEPNS2_4NodeESt4lessIS3_ENS1_13ZoneAllocatorISt4pairIKS3_S5_EEEE4findERSA_.exit.i: ; preds = %_ZNKSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.be, align 4
  %i.bf = icmp slt i32 %1, %.sroa.0.0.copyload.i.i.i.i ; 2 uses
  %spec.select.i.i.i = select i1 %i.bf, ptr %i.az, ptr %.19.i.i.i.i
  %6 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 32
  %spec.select.i = select i1 %i.bf, ptr %0, ptr %6
  br label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit

_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit: ; preds = %bb.g, %_ZNKSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %_ZNKSt3mapIN2v88internal8compiler8VariableEPNS2_4NodeESt4lessIS3_ENS1_13ZoneAllocatorISt4pairIKS3_S5_EEEE4findERSA_.exit.i
  %.sink.i = phi ptr [ %0, %bb.g ], [ %0, %_ZNKSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i ], [ %spec.select.i, %_ZNKSt3mapIN2v88internal8compiler8VariableEPNS2_4NodeESt4lessIS3_ENS1_13ZoneAllocatorISt4pairIKS3_S5_EEEE4findERSA_.exit.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = load ptr, ptr %2, align 8               ; 2 uses
  store ptr %i.bi, ptr %i.a, align 8
  %.not = icmp eq ptr %i.bh, %i.bi
  br i1 %.not, label %bb.q, label %bb.h

_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit.thread97: ; preds = %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8FindHashENS9_9HashValueEPSt5arrayIPKNS9_11FocusedTreeELm32EEPi.exit
  %.sroa.0.0.copyload.i36 = load i32, ptr %.046.i, align 8
  %i.bj = icmp eq i32 %1, %.sroa.0.0.copyload.i36
  %..i = select i1 %i.bj, ptr %.046.i, ptr %0
  %i.bk = getelementptr inbounds nuw i8, ptr %..i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = load ptr, ptr %2, align 8               ; 2 uses
  store ptr %i.bm, ptr %i.a, align 8
  %.not99 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not99, label %bb.q, label %.thread100

_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit.thread: ; preds = %bb.f, %.thread.i, %bb.a
  %.3.i.ph = phi i32 [ 0, %bb.a ], [ %i.aq, %.thread.i ], [ %i.au, %bb.f ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = load ptr, ptr %2, align 8               ; 2 uses
  store ptr %i.bp, ptr %i.a, align 8
  %.not68 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not68, label %bb.q, label %.thread

.thread100:                                       ; preds = %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit.thread97
  %i.bq = load i32, ptr %.046.i, align 8
  %i.br = icmp eq i32 %i.bq, %1
  br i1 %i.br, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit, %.thread100
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8            ; 2 uses
  %i.by = sub i64 %i.bv, %i.bx
  %i.bz = icmp ult i64 %i.by, 56
  br i1 %i.bz, label %bb.i, label %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS0_8compiler8VariableEPNS4_4NodeESt4lessIS5_EEEJRPS1_EEEPT_DpOT0_.exit, !prof !17

bb.i:                                             ; preds = %bb.h
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bt, i64 noundef 56) #13
  %.pre.i.i = load i64, ptr %i.bw, align 8
  br label %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS0_8compiler8VariableEPNS4_4NodeESt4lessIS5_EEEJRPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_7ZoneMapINS0_8compiler8VariableEPNS4_4NodeESt4lessIS5_EEEJRPS1_EEEPT_DpOT0_.exit: ; preds = %bb.h, %bb.i
  %i.ca = phi i64 [ %.pre.i.i, %bb.i ], [ %i.bx, %bb.h ] ; 2 uses
  %i.cb = inttoptr i64 %i.ca to ptr               ; 15 uses
  %i.cc = add i64 %i.ca, 56
  store i64 %i.cc, ptr %i.bw, align 8
  %i.cd = load ptr, ptr %i.bs, align 8
  %i.ce = ptrtoint ptr %i.cd to i64
  store i64 %i.ce, ptr %i.cb, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 6 uses
  store i32 0, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 3 uses
  store ptr null, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 32 ; 3 uses
  store ptr %i.cf, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 40 ; 3 uses
  store ptr %i.cf, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 48 ; 3 uses
  store i64 0, ptr %i.cj, align 8
  %i.ck = load ptr, ptr %i.av, align 8            ; 4 uses
  %.not31 = icmp eq ptr %i.ck, null
  br i1 %.not31, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS0_8compiler8VariableEPNS4_4NodeESt4lessIS5_EEEJRPS1_EEEPT_DpOT0_.exit
  %.not.i.i.i = icmp eq ptr %i.ck, %i.cb
  br i1 %.not.i.i.i, label %_ZN2v88internal7ZoneMapINS0_8compiler8VariableEPNS2_4NodeESt4lessIS3_EEaSERKS8_.exit, label %_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE20_Reuse_or_alloc_nodeC2ERSF_.exit.i.i.i

_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE20_Reuse_or_alloc_nodeC2ERSF_.exit.i.i.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr null, ptr %3, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.cb, ptr %i.cm, align 8
  store ptr null, ptr %i.cl, align 8
  store ptr null, ptr %i.cg, align 8
  store ptr %i.cf, ptr %i.ch, align 8
  store ptr %i.cf, ptr %i.ci, align 8
  store i64 0, ptr %i.cj, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not5.i.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE20_Reuse_or_alloc_nodeC2ERSF_.exit.i.i.i
  %i.cp = call noundef ptr @_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE7_M_copyILb0ENSF_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESK_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.cb, ptr noundef nonnull %i.co, ptr noundef nonnull %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi ptr [ %i.cp, %bb.k ], [ %i.cr, %bb.l ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %bb.l, !llvm.loop !89

_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %bb.l
  store ptr %.0.i.i.i.i.i.i, ptr %i.ch, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.cp, %_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.ct, %bb.m ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i8.i.i.i.i, label %_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE7_M_copyILb0ENSF_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ERKSF_RT0_.exit.i.i.i, label %bb.m, !llvm.loop !90

_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE7_M_copyILb0ENSF_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ERKSF_RT0_.exit.i.i.i: ; preds = %bb.m
  store ptr %.0.i.i7.i.i.i.i, ptr %i.ci, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cv = load i64, ptr %i.cu, align 8
  store i64 %i.cv, ptr %i.cj, align 8
  store ptr %i.cp, ptr %i.cg, align 8
  %.pre.i.i.i = load ptr, ptr %i.cm, align 8
  %.pre6.i.i.i = load ptr, ptr %3, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE7_M_copyILb0ENSF_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ERKSF_RT0_.exit.i.i.i, %_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE20_Reuse_or_alloc_nodeC2ERSF_.exit.i.i.i
  %i.cw = phi ptr [ %.pre6.i.i.i, %_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE7_M_copyILb0ENSF_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ERKSF_RT0_.exit.i.i.i ], [ null, %_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE20_Reuse_or_alloc_nodeC2ERSF_.exit.i.i.i ]
  %i.cx = phi ptr [ %.pre.i.i.i, %_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE7_M_copyILb0ENSF_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ERKSF_RT0_.exit.i.i.i ], [ %i.cb, %_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE20_Reuse_or_alloc_nodeC2ERSF_.exit.i.i.i ]
  call void @_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(56) %i.cx, ptr noundef %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZN2v88internal7ZoneMapINS0_8compiler8VariableEPNS2_4NodeESt4lessIS3_EEaSERKS8_.exit

bb.o:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS0_8compiler8VariableEPNS4_4NodeESt4lessIS5_EEEJRPS1_EEEPT_DpOT0_.exit
  %i.cy = tail call noundef i64 @_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE5eraseERS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.cb, ptr noundef nonnull align 4 dereferenceable(4) %.046.i) ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.046.i, i64 8
  %i.da = tail call { ptr, i8 } @_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS5_RKS7_EEES4_ISt17_Rb_tree_iteratorIS8_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.cb, ptr noundef nonnull align 4 dereferenceable(4) %.046.i, ptr noundef nonnull align 8 dereferenceable(8) %i.cz) ; 0 uses
  br label %_ZN2v88internal7ZoneMapINS0_8compiler8VariableEPNS2_4NodeESt4lessIS3_EEaSERKS8_.exit

_ZN2v88internal7ZoneMapINS0_8compiler8VariableEPNS2_4NodeESt4lessIS3_EEaSERKS8_.exit: ; preds = %bb.n, %bb.j, %bb.o
  %i.db = call noundef i64 @_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE5eraseERS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.cb, ptr noundef nonnull align 4 dereferenceable(4) %4) ; 0 uses
  %i.dc = call { ptr, i8 } @_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS3_RS7_EEES4_ISt17_Rb_tree_iteratorIS8_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.cb, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit.thread, %_ZN2v88internal7ZoneMapINS0_8compiler8VariableEPNS2_4NodeESt4lessIS3_EEaSERKS8_.exit, %.thread100
  %.3.i556267 = phi i32 [ %.3.i, %.thread100 ], [ %.3.i, %_ZN2v88internal7ZoneMapINS0_8compiler8VariableEPNS2_4NodeESt4lessIS3_EEaSERKS8_.exit ], [ %.3.i.ph, %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit.thread ] ; 4 uses
  %.028 = phi ptr [ null, %.thread100 ], [ %i.cb, %_ZN2v88internal7ZoneMapINS0_8compiler8VariableEPNS2_4NodeESt4lessIS3_EEaSERKS8_.exit ], [ null, %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit.thread ]
  %i.dd = call i32 @llvm.smax.i32(i32 %.3.i556267, i32 1)
  %.sroa.speculated = add nsw i32 %i.dd, -1
  %i.de = zext nneg i32 %.sroa.speculated to i64
  %i.df = shl nuw nsw i64 %i.de, 3
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8            ; 3 uses
  %i.di = add nuw nsw i64 %i.df, 40               ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 3 uses
  %i.dm = load i64, ptr %i.dl, align 8            ; 2 uses
  %i.dn = sub i64 %i.dk, %i.dm
  %i.do = icmp ugt i64 %i.di, %i.dn
  br i1 %i.do, label %bb.p, label %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapINS3_8VariableEPNS3_4NodeENS_4base4hashIS5_EEE11FocusedTreeEEEPvm.exit, !prof !17

bb.p:                                             ; preds = %.thread
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.dh, i64 noundef %i.di) #13
  %.pre.i = load i64, ptr %i.dl, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapINS3_8VariableEPNS3_4NodeENS_4base4hashIS5_EEE11FocusedTreeEEEPvm.exit

_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapINS3_8VariableEPNS3_4NodeENS_4base4hashIS5_EEE11FocusedTreeEEEPvm.exit: ; preds = %.thread, %bb.p
  %i.dp = phi i64 [ %.pre.i, %bb.p ], [ %i.dm, %.thread ] ; 2 uses
  %i.dq = inttoptr i64 %i.dp to ptr               ; 7 uses
  %i.dr = add i64 %i.dp, %i.di
  store i64 %i.dr, ptr %i.dl, align 8
  %i.ds = load i32, ptr %4, align 4
  store i32 %i.ds, ptr %i.dq, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.du = load ptr, ptr %i.a, align 8
  store ptr %i.du, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dw = trunc i32 %.3.i556267 to i8
  store i8 %i.dw, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  store i32 %i.l, ptr %i.dx, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  store ptr %.028, ptr %i.dy, align 8
  %.ptr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32 ; 2 uses
  store ptr null, ptr %.ptr, align 8
  %i.dz = icmp sgt i32 %.3.i556267, 0
  br i1 %i.dz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapINS3_8VariableEPNS3_4NodeENS_4base4hashIS5_EEE11FocusedTreeEEEPvm.exit
  %i.ea = zext nneg i32 %.3.i556267 to i64
  %i.eb = shl nuw nsw i64 %i.ea, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.ptr, ptr nonnull align 8 %5, i64 %i.eb, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapINS3_8VariableEPNS3_4NodeENS_4base4hashIS5_EEE11FocusedTreeEEEPvm.exit
  store ptr %i.dq, ptr %0, align 8
end_hunk_2
