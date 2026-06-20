inline.NumInlined: 3452
inline.NumDeleted: 1065
begin_hunk_0_@_ZN2v88internal29Runtime_RegExpMatchGlobalAtomEiPmPNS0_7IsolateE:bb.a
  %i.jo = icmp ult ptr %.270.lcssa.i.i, %i.hb
  br i1 %i.jo, label %.lr.ph66.preheader.i.i, label %._crit_edge67.i.i

.lr.ph66.preheader.i.i:                           ; preds = %._crit_edge.i.i
  %.270.lcssa76.i.i = ptrtoint ptr %.270.lcssa.i.i to i64 ; 2 uses
  %i.jp = add i64 %i.gs, %i.gv
  %i.jq = sub i64 %i.jp, %.270.lcssa76.i.i        ; 2 uses
  %scevgep77.i.i = getelementptr i8, ptr %.270.lcssa.i.i, i64 %i.jq
  %i.jr = add i64 %i.gv, %i.gs
  %.neg = add i64 %.270.lcssa76.i.i, 1
  %xtraiter = and i64 %i.jq, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph66.i.i.prol.loopexit, label %.lr.ph66.i.i.prol

.lr.ph66.i.i.prol:                                ; preds = %.lr.ph66.preheader.i.i
  %i.js = load i8, ptr %.270.lcssa.i.i, align 1
  %.not77.i.i.prol = icmp eq i8 %i.js, %i.gu      ; 3 uses
  %.sroa.047.6.i.i.prol = select i1 %.not77.i.i.prol, <2 x i64> <i64 255, i64 0>, <2 x i64> %.sroa.047.3.lcssa.i.i ; 2 uses
  %.6.i.i.prol = select i1 %.not77.i.i.prol, ptr %.270.lcssa.i.i, ptr %.3.lcssa.i.i ; 2 uses
  %i.jt = zext i1 %.not77.i.i.prol to i32
  %.2.i.i.prol = add nuw nsw i32 %i.jn, %i.jt     ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.270.lcssa.i.i, i64 1
  br label %.lr.ph66.i.i.prol.loopexit

.lr.ph66.i.i.prol.loopexit:                       ; preds = %.lr.ph66.i.i.prol, %.lr.ph66.preheader.i.i
  %.sroa.047.6.i.i.lcssa.unr = phi <2 x i64> [ poison, %.lr.ph66.preheader.i.i ], [ %.sroa.047.6.i.i.prol, %.lr.ph66.i.i.prol ]
  %.6.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph66.preheader.i.i ], [ %.6.i.i.prol, %.lr.ph66.i.i.prol ]
  %.2.i.i.lcssa.unr = phi i32 [ poison, %.lr.ph66.preheader.i.i ], [ %.2.i.i.prol, %.lr.ph66.i.i.prol ]
  %.164.i.i.unr = phi i32 [ %i.jn, %.lr.ph66.preheader.i.i ], [ %.2.i.i.prol, %.lr.ph66.i.i.prol ]
  %.563.i.i.unr = phi ptr [ %.3.lcssa.i.i, %.lr.ph66.preheader.i.i ], [ %.6.i.i.prol, %.lr.ph66.i.i.prol ]
  %.sroa.047.562.i.i.unr = phi <2 x i64> [ %.sroa.047.3.lcssa.i.i, %.lr.ph66.preheader.i.i ], [ %.sroa.047.6.i.i.prol, %.lr.ph66.i.i.prol ]
  %.37161.i.i.unr = phi ptr [ %.270.lcssa.i.i, %.lr.ph66.preheader.i.i ], [ %i.ju, %.lr.ph66.i.i.prol ]
  %i.jv = icmp eq i64 %i.jr, %.neg
  br i1 %i.jv, label %._crit_edge67.i.i, label %.lr.ph66.i.i

.lr.ph66.i.i:                                     ; preds = %.lr.ph66.i.i.prol.loopexit, %.lr.ph66.i.i
  %.164.i.i = phi i32 [ %.2.i.i.1, %.lr.ph66.i.i ], [ %.164.i.i.unr, %.lr.ph66.i.i.prol.loopexit ]
  %.563.i.i = phi ptr [ %.6.i.i.1, %.lr.ph66.i.i ], [ %.563.i.i.unr, %.lr.ph66.i.i.prol.loopexit ]
  %.sroa.047.562.i.i = phi <2 x i64> [ %.sroa.047.6.i.i.1, %.lr.ph66.i.i ], [ %.sroa.047.562.i.i.unr, %.lr.ph66.i.i.prol.loopexit ]
  %.37161.i.i = phi ptr [ %i.kc, %.lr.ph66.i.i ], [ %.37161.i.i.unr, %.lr.ph66.i.i.prol.loopexit ] ; 4 uses
  %i.jw = load i8, ptr %.37161.i.i, align 1
  %.not77.i.i = icmp eq i8 %i.jw, %i.gu           ; 3 uses
  %.6.i.i = select i1 %.not77.i.i, ptr %.37161.i.i, ptr %.563.i.i
  %i.jx = zext i1 %.not77.i.i to i32
  %.2.i.i = add nuw nsw i32 %.164.i.i, %i.jx
  %i.jy = getelementptr inbounds nuw i8, ptr %.37161.i.i, i64 1 ; 2 uses
  %i.jz = load i8, ptr %i.jy, align 1
  %.not77.i.i.1 = icmp eq i8 %i.jz, %i.gu         ; 3 uses
  %i.ka = select i1 %.not77.i.i.1, i1 true, i1 %.not77.i.i
  %.sroa.047.6.i.i.1 = select i1 %i.ka, <2 x i64> <i64 255, i64 0>, <2 x i64> %.sroa.047.562.i.i ; 2 uses
  %.6.i.i.1 = select i1 %.not77.i.i.1, ptr %i.jy, ptr %.6.i.i ; 2 uses
  %i.kb = zext i1 %.not77.i.i.1 to i32
  %.2.i.i.1 = add nuw nsw i32 %.2.i.i, %i.kb      ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.37161.i.i, i64 2 ; 2 uses
  %exitcond78.not.i.i.1 = icmp eq ptr %i.kc, %scevgep77.i.i
  br i1 %exitcond78.not.i.i.1, label %._crit_edge67.i.i, label %.lr.ph66.i.i, !llvm.loop !197

._crit_edge67.i.i:                                ; preds = %.lr.ph66.i.i.prol.loopexit, %.lr.ph66.i.i, %._crit_edge.i.i
  %.sroa.047.5.lcssa.i.i = phi <2 x i64> [ %.sroa.047.3.lcssa.i.i, %._crit_edge.i.i ], [ %.sroa.047.6.i.i.lcssa.unr, %.lr.ph66.i.i.prol.loopexit ], [ %.sroa.047.6.i.i.1, %.lr.ph66.i.i ]
  %.5.lcssa.i.i = phi ptr [ %.3.lcssa.i.i, %._crit_edge.i.i ], [ %.6.i.i.lcssa.unr, %.lr.ph66.i.i.prol.loopexit ], [ %.6.i.i.1, %.lr.ph66.i.i ] ; 2 uses
  %.1.lcssa.i.i = phi i32 [ %i.jn, %._crit_edge.i.i ], [ %.2.i.i.lcssa.unr, %.lr.ph66.i.i.prol.loopexit ], [ %.2.i.i.1, %.lr.ph66.i.i ]
  %i.kd = load i32, ptr %i.a, align 4
  %i.ke = add nsw i32 %i.kd, %.1.lcssa.i.i
  store i32 %i.ke, ptr %i.a, align 4
  %.not76.i.i = icmp eq ptr %.5.lcssa.i.i, null
  br i1 %.not76.i.i, label %_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exitthread-pre-split, label %bb.av

bb.av:                                            ; preds = %._crit_edge67.i.i
  %i.kf = bitcast <2 x i64> %.sroa.047.5.lcssa.i.i to <16 x i8>
  %i.kg = icmp slt <16 x i8> %i.kf, zeroinitializer
  %i.kh = bitcast <16 x i1> %i.kg to i16
  %i.ki = zext i16 %i.kh to i32
  %i.kj = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ki, i1 true)
  %i.kk = xor i32 %i.kj, 31
  %i.kl = zext nneg i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw i8, ptr %.5.lcssa.i.i, i64 %i.kl
  %i.kn = ptrtoint ptr %i.km to i64
  %i.ko = sub i64 %i.kn, %i.gv
  %i.kp = trunc i64 %i.ko to i32                  ; 2 uses
  store i32 %i.kp, ptr %i.b, align 4
  br label %_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit

bb.aw:                                            ; preds = %bb.ap
  %i.kq = icmp sgt i32 %i.gk, -1
  br i1 %i.kq, label %_ZNK2v84base6VectorIKhE6lengthEv.exit3.i.i.i, label %bb.ax, !prof !31

bb.ax:                                            ; preds = %bb.aw
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit3.i.i.i:     ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %2, ptr %6, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.gi, ptr %i.kr, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.gl, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.speculated.i.i.i = call i32 @llvm.usub.sat.i32(i32 %i.gk, i32 250)
  store i32 %.sroa.speculated.i.i.i, ptr %i.ks, align 8
  %i.kt = icmp samesign ult i32 %i.gk, 7
  %spec.select.i = select i1 %i.kt, ptr @_ZN2v88internal12StringSearchIhhE12LinearSearchEPS2_NS_4base6VectorIKhEEi, ptr @_ZN2v88internal12StringSearchIhhE13InitialSearchEPS2_NS_4base6VectorIKhEEi ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %spec.select.i, ptr %i.ku, align 8
  %i.kv = call noundef i32 %spec.select.i(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr %i.gp, i64 %i.gs, i32 noundef %.0.i) #21, !inline_history !198 ; 4 uses
  %i.kw = icmp eq i32 %i.kv, -1
  br i1 %i.kw, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhhEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %.lr.ph.i81.i

.lr.ph.i81.i:                                     ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit3.i.i.i
  %.not.i82.i = icmp eq i32 %i.gk, 0
  br i1 %.not.i82.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i81.i
  %i.kx = icmp sgt i32 %i.gr, -1
  br i1 %i.kx, label %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i.i, label %.lr.ph.split.us.split.i.i, !prof !31

_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i.i: ; preds = %.lr.ph.split.us.i.i, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i.i
  %i.ky = phi i32 [ %i.ld, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i.i ], [ %i.kv, %.lr.ph.split.us.i.i ]
  %.02.us.us.i.i = phi i32 [ %i.lb, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i.i ], [ %.0.i, %.lr.ph.split.us.i.i ]
  %i.kz = load i32, ptr %i.a, align 4
  %i.la = add nsw i32 %i.kz, 1
  store i32 %i.la, ptr %i.a, align 4
  store i32 %i.ky, ptr %i.b, align 4
  %i.lb = add nsw i32 %.02.us.us.i.i, 1           ; 2 uses
  %i.lc = load ptr, ptr %i.ku, align 8
  %i.ld = call noundef i32 %i.lc(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr %i.gp, i64 %i.gs, i32 noundef %i.lb) #21, !inline_history !198 ; 2 uses
  %i.le = icmp eq i32 %i.ld, -1
  br i1 %i.le, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhhEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i.i, !llvm.loop !199

.lr.ph.split.us.split.i.i:                        ; preds = %.lr.ph.split.us.i.i
  %i.lf = load i32, ptr %i.a, align 4
  %i.lg = add nsw i32 %i.lf, 1
  store i32 %i.lg, ptr %i.a, align 4
  store i32 %i.kv, ptr %i.b, align 4
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i81.i, %.lr.ph.split.i.i
  %i.lh = phi i32 [ %i.lm, %.lr.ph.split.i.i ], [ %i.kv, %.lr.ph.i81.i ] ; 2 uses
  %i.li = load i32, ptr %i.a, align 4
  %i.lj = add nsw i32 %i.li, 1
  store i32 %i.lj, ptr %i.a, align 4
  store i32 %i.lh, ptr %i.b, align 4
  %i.lk = add nsw i32 %i.lh, %i.gk
  %i.ll = load ptr, ptr %i.ku, align 8
  %i.lm = call noundef i32 %i.ll(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr %i.gp, i64 %i.gs, i32 noundef %i.lk) #21, !inline_history !198 ; 2 uses
  %i.ln = icmp eq i32 %i.lm, -1
  br i1 %i.ln, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhhEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %.lr.ph.split.i.i, !llvm.loop !199

_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhhEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i: ; preds = %.lr.ph.split.i.i, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i.i, %_ZNK2v84base6VectorIKhE6lengthEv.exit3.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exitthread-pre-split

bb.ay:                                            ; preds = %bb.ao
  br i1 %i.gt, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %bb.ay
  %i.lo = load i8, ptr %i.gi, align 1
  %i.lp = zext i8 %i.lo to i16                    ; 2 uses
  %i.lq = insertelement <8 x i16> poison, i16 %i.lp, i64 0
  %i.lr = shufflevector <8 x i16> %i.lq, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ls = icmp sgt i32 %i.gr, -1
  br i1 %i.ls, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i, label %bb.ba, !prof !31

bb.ba:                                            ; preds = %bb.az
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i:        ; preds = %bb.az
  %i.lt = sext i32 %.0.i to i64
  %.idx.i.i = shl nsw i64 %i.lt, 1                ; 2 uses
  %i.lu = getelementptr inbounds i8, ptr %i.gp, i64 %.idx.i.i ; 2 uses
  %.idx49.i.i = shl nuw nsw i64 %i.gs, 1          ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx49.i.i ; 5 uses
  %i.lw = add nsw i64 %.idx.i.i, 1048560
  %.not22.i.i = icmp sgt i64 %i.lw, %.idx49.i.i
  br i1 %.not22.i.i, label %.preheader.i90.i, label %.preheader16.i.i

.preheader16.i.i:                                 ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i, %bb.bb
  %.026.i.i = phi i32 [ %i.md, %bb.bb ], [ 0, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i ]
  %.06525.i.i = phi ptr [ %.267.i87.i, %bb.bb ], [ null, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i ]
  %.sroa.047.024.i.i = phi <2 x i64> [ %.sroa.047.2.i86.i, %bb.bb ], [ undef, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i ]
  %.06823.i.i = phi ptr [ %scevgep54.i.i, %bb.bb ], [ %i.lu, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i ] ; 3 uses
  br label %bb.bc

.preheader.i90.i:                                 ; preds = %bb.bb, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i
  %.068.lcssa.i91.i = phi ptr [ %i.lu, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i ], [ %scevgep54.i.i, %bb.bb ] ; 3 uses
  %.sroa.047.0.lcssa.i92.i = phi <2 x i64> [ undef, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i ], [ %.sroa.047.2.i86.i, %bb.bb ] ; 2 uses
  %.065.lcssa.i93.i = phi ptr [ null, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i ], [ %.267.i87.i, %bb.bb ] ; 2 uses
  %.0.lcssa.i94.i = phi i32 [ 0, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i ], [ %i.md, %bb.bb ]
  %i.lx = getelementptr inbounds nuw i8, ptr %.068.lcssa.i91.i, i64 16 ; 2 uses
  %.not7530.i.i = icmp ugt ptr %i.lx, %i.lv
  br i1 %.not7530.i.i, label %._crit_edge.i100.i, label %.lr.ph.i95.i

bb.bb:                                            ; preds = %bb.bc
  %scevgep54.i.i = getelementptr i8, ptr %.06823.i.i, i64 1048560 ; 2 uses
  %i.ly = bitcast <8 x i16> %i.mk to <4 x i32>
  %i.lz = lshr <4 x i32> %i.ly, splat (i32 16)
  %i.ma = bitcast <8 x i16> %i.mk to <4 x i32>
  %i.mb = and <4 x i32> %i.ma, splat (i32 65535)
  %i.mc = add nuw nsw <4 x i32> %i.mb, %i.lz
  %12 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.mc)
  %i.md = add i32 %12, %.026.i.i                  ; 2 uses
  %i.me = getelementptr i8, ptr %.06823.i.i, i64 2097120
  %.not.i89.i = icmp ugt ptr %i.me, %i.lv
  br i1 %.not.i89.i, label %.preheader.i90.i, label %.preheader16.i.i, !llvm.loop !200

bb.bc:                                            ; preds = %bb.bd, %.preheader16.i.i
  %i.mf = phi <8 x i16> [ zeroinitializer, %.preheader16.i.i ], [ %i.mu, %bb.bd ]
  %.16620.i.i = phi ptr [ %.06525.i.i, %.preheader16.i.i ], [ %.267.i87.i.1, %bb.bd ]
  %.sroa.047.119.i.i = phi <2 x i64> [ %.sroa.047.024.i.i, %.preheader16.i.i ], [ %.sroa.047.2.i86.i.1, %bb.bd ]
  %.16918.i.i = phi ptr [ %.06823.i.i, %.preheader16.i.i ], [ %i.na, %bb.bd ] ; 4 uses
  %.07217.i.i = phi i32 [ 0, %.preheader16.i.i ], [ %i.mz, %bb.bd ] ; 2 uses
  %i.mg = load <8 x i16>, ptr %.16918.i.i, align 1, !alias.scope !201
  %i.mh = icmp eq <8 x i16> %i.mg, %i.lr
  %i.mi = sext <8 x i1> %i.mh to <8 x i16>        ; 3 uses
  %i.mj = bitcast <8 x i16> %i.mi to <2 x i64>
  %i.mk = sub <8 x i16> %i.mf, %i.mi              ; 3 uses
  %i.ml = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.mi, <8 x i16> zeroinitializer)
  %i.mm = icmp slt <16 x i8> %i.ml, zeroinitializer
  %i.mn = bitcast <16 x i1> %i.mm to i16
  %i.mo = icmp eq i16 %i.mn, 0                    ; 2 uses
  %.sroa.047.2.i86.i = select i1 %i.mo, <2 x i64> %.sroa.047.119.i.i, <2 x i64> %i.mj ; 3 uses
  %.267.i87.i = select i1 %i.mo, ptr %.16620.i.i, ptr %.16918.i.i ; 3 uses
  %exitcond.not.i88.i = icmp eq i32 %.07217.i.i, 65534
  br i1 %exitcond.not.i88.i, label %bb.bb, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mp = getelementptr inbounds nuw i8, ptr %.16918.i.i, i64 16 ; 2 uses
  %i.mq = load <8 x i16>, ptr %i.mp, align 1, !alias.scope !201
  %i.mr = icmp eq <8 x i16> %i.mq, %i.lr
  %i.ms = sext <8 x i1> %i.mr to <8 x i16>        ; 3 uses
  %i.mt = bitcast <8 x i16> %i.ms to <2 x i64>
  %i.mu = sub <8 x i16> %i.mk, %i.ms
  %i.mv = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ms, <8 x i16> zeroinitializer)
  %i.mw = icmp slt <16 x i8> %i.mv, zeroinitializer
  %i.mx = bitcast <16 x i1> %i.mw to i16
  %i.my = icmp eq i16 %i.mx, 0                    ; 2 uses
  %.sroa.047.2.i86.i.1 = select i1 %i.my, <2 x i64> %.sroa.047.2.i86.i, <2 x i64> %i.mt
  %.267.i87.i.1 = select i1 %i.my, ptr %.267.i87.i, ptr %i.mp
  %i.mz = add nuw nsw i32 %.07217.i.i, 2
  %i.na = getelementptr inbounds nuw i8, ptr %.16918.i.i, i64 32
  br label %bb.bc

.lr.ph.i95.i:                                     ; preds = %.preheader.i90.i, %.lr.ph.i95.i
  %i.nb = phi ptr [ %i.nm, %.lr.ph.i95.i ], [ %i.lx, %.preheader.i90.i ] ; 3 uses
  %i.nc = phi <8 x i16> [ %i.nh, %.lr.ph.i95.i ], [ zeroinitializer, %.preheader.i90.i ]
  %.333.i.i = phi ptr [ %.4.i97.i, %.lr.ph.i95.i ], [ %.065.lcssa.i93.i, %.preheader.i90.i ]
  %.sroa.047.332.i.i = phi <2 x i64> [ %.sroa.047.4.i96.i, %.lr.ph.i95.i ], [ %.sroa.047.0.lcssa.i92.i, %.preheader.i90.i ]
  %.27031.i.i = phi ptr [ %i.nb, %.lr.ph.i95.i ], [ %.068.lcssa.i91.i, %.preheader.i90.i ] ; 2 uses
  %i.nd = load <8 x i16>, ptr %.27031.i.i, align 1, !alias.scope !204
  %i.ne = icmp eq <8 x i16> %i.nd, %i.lr
  %i.nf = sext <8 x i1> %i.ne to <8 x i16>        ; 3 uses
  %i.ng = bitcast <8 x i16> %i.nf to <2 x i64>
  %i.nh = sub <8 x i16> %i.nc, %i.nf              ; 2 uses
  %i.ni = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.nf, <8 x i16> zeroinitializer)
  %i.nj = icmp slt <16 x i8> %i.ni, zeroinitializer
  %i.nk = bitcast <16 x i1> %i.nj to i16
  %i.nl = icmp eq i16 %i.nk, 0                    ; 2 uses
  %.sroa.047.4.i96.i = select i1 %i.nl, <2 x i64> %.sroa.047.332.i.i, <2 x i64> %i.ng ; 2 uses
  %.4.i97.i = select i1 %i.nl, ptr %.333.i.i, ptr %.27031.i.i ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nb, i64 16 ; 2 uses
  %.not75.i98.i = icmp ugt ptr %i.nm, %i.lv
  br i1 %.not75.i98.i, label %._crit_edge.loopexit.i99.i, label %.lr.ph.i95.i, !llvm.loop !207

._crit_edge.loopexit.i99.i:                       ; preds = %.lr.ph.i95.i
  %i.nn = bitcast <8 x i16> %i.nh to <4 x i32>
  br label %._crit_edge.i100.i

._crit_edge.i100.i:                               ; preds = %._crit_edge.loopexit.i99.i, %.preheader.i90.i
  %.270.lcssa.i101.i = phi ptr [ %.068.lcssa.i91.i, %.preheader.i90.i ], [ %i.nb, %._crit_edge.loopexit.i99.i ] ; 2 uses
  %.sroa.047.3.lcssa.i102.i = phi <2 x i64> [ %.sroa.047.0.lcssa.i92.i, %.preheader.i90.i ], [ %.sroa.047.4.i96.i, %._crit_edge.loopexit.i99.i ] ; 2 uses
  %.3.lcssa.i103.i = phi ptr [ %.065.lcssa.i93.i, %.preheader.i90.i ], [ %.4.i97.i, %._crit_edge.loopexit.i99.i ] ; 2 uses
  %.sroa.050.2.lcssa.i104.i = phi <4 x i32> [ zeroinitializer, %.preheader.i90.i ], [ %i.nn, %._crit_edge.loopexit.i99.i ] ; 2 uses
  %i.no = lshr <4 x i32> %.sroa.050.2.lcssa.i104.i, splat (i32 16)
  %i.np = and <4 x i32> %.sroa.050.2.lcssa.i104.i, splat (i32 65535)
  %i.nq = add nuw nsw <4 x i32> %i.np, %i.no
  %13 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.nq)
  %i.nr = add i32 %13, %.0.lcssa.i94.i            ; 2 uses
  %i.ns = icmp ult ptr %.270.lcssa.i101.i, %i.lv
  br i1 %i.ns, label %.lr.ph44.i.i, label %._crit_edge45.i.i

.lr.ph44.i.i:                                     ; preds = %._crit_edge.i100.i, %.lr.ph44.i.i
  %.142.i.i = phi i32 [ %.2.i112.i, %.lr.ph44.i.i ], [ %i.nr, %._crit_edge.i100.i ]
  %.541.i.i = phi ptr [ %.6.i111.i, %.lr.ph44.i.i ], [ %.3.lcssa.i103.i, %._crit_edge.i100.i ]
  %.sroa.047.540.i.i = phi <2 x i64> [ %.sroa.047.6.i110.i, %.lr.ph44.i.i ], [ %.sroa.047.3.lcssa.i102.i, %._crit_edge.i100.i ]
  %.37139.i.i = phi ptr [ %i.nv, %.lr.ph44.i.i ], [ %.270.lcssa.i101.i, %._crit_edge.i100.i ] ; 3 uses
  %i.nt = load i16, ptr %.37139.i.i, align 2
  %.not77.i109.i = icmp eq i16 %i.nt, %i.lp       ; 3 uses
  %.sroa.047.6.i110.i = select i1 %.not77.i109.i, <2 x i64> <i64 65535, i64 0>, <2 x i64> %.sroa.047.540.i.i ; 2 uses
  %.6.i111.i = select i1 %.not77.i109.i, ptr %.37139.i.i, ptr %.541.i.i ; 2 uses
  %i.nu = zext i1 %.not77.i109.i to i32
  %.2.i112.i = add nsw i32 %.142.i.i, %i.nu       ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.37139.i.i, i64 2 ; 2 uses
  %i.nw = icmp ult ptr %i.nv, %i.lv
  br i1 %i.nw, label %.lr.ph44.i.i, label %._crit_edge45.i.i, !llvm.loop !208

._crit_edge45.i.i:                                ; preds = %.lr.ph44.i.i, %._crit_edge.i100.i
  %.sroa.047.5.lcssa.i105.i = phi <2 x i64> [ %.sroa.047.3.lcssa.i102.i, %._crit_edge.i100.i ], [ %.sroa.047.6.i110.i, %.lr.ph44.i.i ]
  %.5.lcssa.i106.i = phi ptr [ %.3.lcssa.i103.i, %._crit_edge.i100.i ], [ %.6.i111.i, %.lr.ph44.i.i ] ; 2 uses
  %.1.lcssa.i107.i = phi i32 [ %i.nr, %._crit_edge.i100.i ], [ %.2.i112.i, %.lr.ph44.i.i ]
  %i.nx = load i32, ptr %i.a, align 4
  %i.ny = add nsw i32 %i.nx, %.1.lcssa.i107.i
  store i32 %i.ny, ptr %i.a, align 4
  %.not76.i108.i = icmp eq ptr %.5.lcssa.i106.i, null
  br i1 %.not76.i108.i, label %_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exitthread-pre-split, label %bb.be

bb.be:                                            ; preds = %._crit_edge45.i.i
  %i.nz = bitcast <2 x i64> %.sroa.047.5.lcssa.i105.i to <8 x i16>
  %i.oa = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.nz, <8 x i16> zeroinitializer)
  %i.ob = icmp slt <16 x i8> %i.oa, zeroinitializer
  %i.oc = bitcast <16 x i1> %i.ob to i16
  %i.od = zext i16 %i.oc to i32
  %i.oe = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.od, i1 true)
  %i.of = xor i32 %i.oe, 31
  %i.og = zext nneg i32 %i.of to i64
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %.5.lcssa.i106.i, i64 %i.og
  %i.oi = ptrtoint ptr %i.oh to i64
  %i.oj = ptrtoint ptr %i.gp to i64
  %i.ok = sub i64 %i.oi, %i.oj
  %i.ol = lshr exact i64 %i.ok, 1
  %i.om = trunc i64 %i.ol to i32                  ; 2 uses
  store i32 %i.om, ptr %i.b, align 4
  br label %_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit

bb.bf:                                            ; preds = %bb.ay
  %i.on = icmp sgt i32 %i.gk, -1
  br i1 %i.on, label %_ZNK2v84base6VectorIKhE6lengthEv.exit3.i.i113.i, label %bb.bg, !prof !31

bb.bg:                                            ; preds = %bb.bf
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit3.i.i113.i:  ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %2, ptr %5, align 8
  %i.oo = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.gi, ptr %i.oo, align 8
  %.sroa.2.0..sroa_idx.i.i114.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.gl, ptr %.sroa.2.0..sroa_idx.i.i114.i, align 8
  %i.op = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.speculated.i.i115.i = call i32 @llvm.usub.sat.i32(i32 %i.gk, i32 250)
  store i32 %.sroa.speculated.i.i115.i, ptr %i.op, align 8
  %i.oq = icmp samesign ult i32 %i.gk, 7
  %spec.select109.i = select i1 %i.oq, ptr @_ZN2v88internal12StringSearchIhtE12LinearSearchEPS2_NS_4base6VectorIKtEEi, ptr @_ZN2v88internal12StringSearchIhtE13InitialSearchEPS2_NS_4base6VectorIKtEEi ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  store ptr %spec.select109.i, ptr %i.or, align 8
  %i.os = call noundef i32 %spec.select109.i(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr %i.gp, i64 %i.gs, i32 noundef %.0.i) #21, !inline_history !209 ; 5 uses
  %i.ot = icmp eq i32 %i.os, -1
  br i1 %i.ot, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIthEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %.lr.ph.i116.i

.lr.ph.i116.i:                                    ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit3.i.i113.i
  %.not.i117.i = icmp eq i32 %i.gk, 0
  br i1 %.not.i117.i, label %.lr.ph.split.us.i119.i, label %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.i.i

.lr.ph.split.us.i119.i:                           ; preds = %.lr.ph.i116.i
  %i.ou = icmp sgt i32 %i.gr, -1
  br i1 %i.ou, label %.lr.ph.split.us.split.us.i.i, label %.lr.ph.split.us.split.i120.i, !prof !31

.lr.ph.split.us.split.us.i.i:                     ; preds = %.lr.ph.split.us.i119.i
  br i1 %.not396, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i.i, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.i.i

_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i.i: ; preds = %.lr.ph.split.us.split.us.i.i, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i.i
  %i.ov = phi i32 [ %i.pa, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i.i ], [ %i.os, %.lr.ph.split.us.split.us.i.i ]
  %.02.us.us.us.i.i = phi i32 [ %i.oy, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i.i ], [ %.0.i, %.lr.ph.split.us.split.us.i.i ]
  %i.ow = load i32, ptr %i.a, align 4
  %i.ox = add nsw i32 %i.ow, 1
  store i32 %i.ox, ptr %i.a, align 4
  store i32 %i.ov, ptr %i.b, align 4
  %i.oy = add nsw i32 %.02.us.us.us.i.i, 1        ; 2 uses
  %i.oz = load ptr, ptr %i.or, align 8
  %i.pa = call noundef i32 %i.oz(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr %i.gp, i64 %i.gs, i32 noundef %i.oy) #21, !inline_history !209 ; 2 uses
  %i.pb = icmp eq i32 %i.pa, -1
  br i1 %i.pb, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIthEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i.i, !llvm.loop !210

_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.i.i: ; preds = %.lr.ph.split.us.split.us.i.i, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.us.us.i.i
  %i.pc = phi i32 [ %i.pu, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.us.us.i.i ], [ %i.os, %.lr.ph.split.us.split.us.i.i ]
  %.02.us.us.i121.i = phi i32 [ %i.ps, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.us.us.i.i ], [ %.0.i, %.lr.ph.split.us.split.us.i.i ] ; 5 uses
  %i.pd = load i32, ptr %i.a, align 4
  %i.pe = add nsw i32 %i.pd, 1
  store i32 %i.pe, ptr %i.a, align 4
  store i32 %i.pc, ptr %i.b, align 4
  %i.pf = icmp slt i32 %.02.us.us.i121.i, %i.gr
  br i1 %i.pf, label %bb.bh, label %.thread.i.us.us.i.i

bb.bh:                                            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.i.i
  %i.pg = sext i32 %.02.us.us.i121.i to i64
  %i.ph = getelementptr inbounds nuw [2 x i8], ptr %i.gp, i64 %i.pg
  %i.pi = load i16, ptr %i.ph, align 2
  %i.pj = and i16 %i.pi, -1024
  %or.cond.i.us.us.i.i = icmp eq i16 %i.pj, -10240
  br i1 %or.cond.i.us.us.i.i, label %bb.bi, label %.thread.i.us.us.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.pk = add nsw i32 %.02.us.us.i121.i, 1        ; 2 uses
  %i.pl = icmp slt i32 %i.pk, %i.gr
  br i1 %i.pl, label %bb.bj, label %.thread.i.us.us.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.pm = sext i32 %i.pk to i64
  %i.pn = getelementptr inbounds nuw [2 x i8], ptr %i.gp, i64 %i.pm
  %i.po = load i16, ptr %i.pn, align 2
  %i.pp = and i16 %i.po, -1024
  %or.cond6.not.not.i.us.us.i.i = icmp eq i16 %i.pp, -9216
  %i.pq = add nsw i32 %.02.us.us.i121.i, 2
  br i1 %or.cond6.not.not.i.us.us.i.i, label %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.us.us.i.i, label %.thread.i.us.us.i.i

.thread.i.us.us.i.i:                              ; preds = %bb.bj, %bb.bi, %bb.bh, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.i.i
  %i.pr = add nsw i32 %.02.us.us.i121.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.us.us.i.i

_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.us.us.i.i: ; preds = %.thread.i.us.us.i.i, %bb.bj
  %i.ps = phi i32 [ %i.pq, %bb.bj ], [ %i.pr, %.thread.i.us.us.i.i ] ; 2 uses
  %i.pt = load ptr, ptr %i.or, align 8
  %i.pu = call noundef i32 %i.pt(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr %i.gp, i64 %i.gs, i32 noundef %i.ps) #21, !inline_history !209 ; 2 uses
  %i.pv = icmp eq i32 %i.pu, -1
  br i1 %i.pv, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIthEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.i.i, !llvm.loop !210

.lr.ph.split.us.split.i120.i:                     ; preds = %.lr.ph.split.us.i119.i
  %i.pw = load i32, ptr %i.a, align 4
  %i.px = add nsw i32 %i.pw, 1
  store i32 %i.px, ptr %i.a, align 4
  store i32 %i.os, ptr %i.b, align 4
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.i.i: ; preds = %.lr.ph.i116.i, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.i.i
  %i.py = phi i32 [ %i.qd, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.i.i ], [ %i.os, %.lr.ph.i116.i ] ; 2 uses
  %i.pz = load i32, ptr %i.a, align 4
  %i.qa = add nsw i32 %i.pz, 1
  store i32 %i.qa, ptr %i.a, align 4
  store i32 %i.py, ptr %i.b, align 4
  %i.qb = add nsw i32 %i.py, %i.gk
  %i.qc = load ptr, ptr %i.or, align 8
  %i.qd = call noundef i32 %i.qc(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr %i.gp, i64 %i.gs, i32 noundef %i.qb) #21, !inline_history !209 ; 2 uses
  %i.qe = icmp eq i32 %i.qd, -1
  br i1 %i.qe, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIthEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.i.i, !llvm.loop !210

_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIthEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i: ; preds = %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.i.i, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.us.us.i.i, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i.i, %_ZNK2v84base6VectorIKhE6lengthEv.exit3.i.i113.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exitthread-pre-split

bb.bk:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit22
  br i1 %i.go, label %bb.bl, label %bb.bz

bb.bl:                                            ; preds = %bb.bk
  %i.qf = icmp sgt i32 %i.gk, -1
  br i1 %i.qf, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i.i.i, label %bb.bm, !prof !31

bb.bm:                                            ; preds = %bb.bl
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i.i.i:    ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %2, ptr %4, align 8
  %i.qg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.gi, ptr %i.qg, align 8
  %.sroa.2.0..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.gl, ptr %.sroa.2.0..sroa_idx8.i.i.i, align 8
  %i.qh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.speculated.i.i126.i = call i32 @llvm.usub.sat.i32(i32 %i.gk, i32 250)
  store i32 %.sroa.speculated.i.i126.i, ptr %i.qh, align 8
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.gl ; 4 uses
  %i.qj = icmp samesign ugt i32 %i.gk, 7
  br i1 %i.qj, label %.preheader23.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.preheader23.i.i.i.i.i.i:                         ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i.i.i
  %i.qk = ptrtoint ptr %i.gi to i64               ; 3 uses
  %i.ql = and i64 %i.qk, 7
  %i.qm = icmp eq i64 %i.ql, 0
  br i1 %i.qm, label %.preheader.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %.preheader23.i.i.i.i.i.i
  %i.qn = load i16, ptr %i.gi, align 2
  %i.qo = icmp ugt i16 %i.qn, 255
  br i1 %i.qo, label %.lr.ph.i._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i, %.preheader23.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN2v88internal29Runtime_RegExpMatchGlobalAtomEiPmPNS0_7IsolateE:bb.a
  %i.rg = sub i64 %i.re, %i.rf
  br label %_ZN2v88internal16StringSearchBase15IsOneByteStringENS_4base6VectorIKtEE.exit.i.i.i

bb.bp:                                            ; preds = %.lr.ph35.i.i.i.i.i.i
  %i.rh = getelementptr inbounds nuw i8, ptr %.334.i.i.i.i.i.i, i64 2 ; 3 uses
  %i.ri = icmp ult ptr %i.rh, %i.qi
  br i1 %i.ri, label %.lr.ph35.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !89

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.bp, %.loopexit.i.i.i.i.i.i
  %.3.lcssa.i.i.i.i.i.i = phi ptr [ %.2.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %i.rh, %bb.bp ]
  %i.rj = ptrtoint ptr %.3.lcssa.i.i.i.i.i.i to i64
  %i.rk = ptrtoint ptr %i.gi to i64
  %i.rl = sub i64 %i.rj, %i.rk
  br label %_ZN2v88internal16StringSearchBase15IsOneByteStringENS_4base6VectorIKtEE.exit.i.i.i

_ZN2v88internal16StringSearchBase15IsOneByteStringENS_4base6VectorIKtEE.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.bo, %.lr.ph.i._crit_edge.i.i.i.i.i
  %.0.in.in.i.i.i.i.i.i = phi i64 [ %i.qs, %.lr.ph.i._crit_edge.i.i.i.i.i ], [ %i.rg, %bb.bo ], [ %i.rl, %._crit_edge.i.i.i.i.i.i ]
  %.0.in.i.i.i.i.i.i = lshr exact i64 %.0.in.in.i.i.i.i.i.i, 1
  %.0.i.i.i.i.i.i = trunc i64 %.0.in.i.i.i.i.i.i to i32
  %.not.i.i.i = icmp ugt i32 %i.gk, %.0.i.i.i.i.i.i
  br i1 %.not.i.i.i, label %bb.bq, label %_ZNK2v84base6VectorIKtE6lengthEv.exit3.i.i.i

bb.bq:                                            ; preds = %_ZN2v88internal16StringSearchBase15IsOneByteStringENS_4base6VectorIKtEE.exit.i.i.i
  %i.rm = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN2v88internal12StringSearchIthE10FailSearchEPS2_NS_4base6VectorIKhEEi, ptr %i.rm, align 8
  br label %_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit.i.i

_ZNK2v84base6VectorIKtE6lengthEv.exit3.i.i.i:     ; preds = %_ZN2v88internal16StringSearchBase15IsOneByteStringENS_4base6VectorIKtEE.exit.i.i.i
  %i.rn = icmp ult i32 %i.gk, 7
  br i1 %i.rn, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit3.i.i.i
  %i.ro = icmp eq i32 %i.gk, 1
  %i.rp = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  br i1 %i.ro, label %_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit.thread.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store ptr @_ZN2v88internal12StringSearchIthE12LinearSearchEPS2_NS_4base6VectorIKhEEi, ptr %i.rp, align 8
  br label %_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit.i.i

bb.bt:                                            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit3.i.i.i
  %i.rq = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN2v88internal12StringSearchIthE13InitialSearchEPS2_NS_4base6VectorIKhEEi, ptr %i.rq, align 8
  br label %_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit.i.i

_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit.i.i: ; preds = %bb.bt, %bb.bs, %bb.bq
  %i.rr = phi ptr [ @_ZN2v88internal12StringSearchIthE10FailSearchEPS2_NS_4base6VectorIKhEEi, %bb.bq ], [ @_ZN2v88internal12StringSearchIthE13InitialSearchEPS2_NS_4base6VectorIKhEEi, %bb.bt ], [ @_ZN2v88internal12StringSearchIthE12LinearSearchEPS2_NS_4base6VectorIKhEEi, %bb.bs ]
  %i.rs = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.rt = call noundef i32 %i.rr(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr %i.gp, i64 %i.gs, i32 noundef %.0.i) #21, !inline_history !211 ; 4 uses
  %i.ru = icmp eq i32 %i.rt, -1
  br i1 %i.ru, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhtEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %.lr.ph.i127.i

_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit.thread.i.i: ; preds = %bb.br
  store ptr @_ZN2v88internal12StringSearchIthE16SingleCharSearchEPS2_NS_4base6VectorIKhEEi, ptr %i.rp, align 8
  %i.rv = load i16, ptr %i.gi, align 2            ; 3 uses
  %i.rw = icmp ugt i16 %i.rv, 255
  br i1 %i.rw, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhtEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %bb.bu

bb.bu:                                            ; preds = %_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit.thread.i.i
  %i.rx = icmp sgt i32 %i.gr, -1
  br i1 %i.rx, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i.i, label %bb.bv, !prof !31

bb.bv:                                            ; preds = %bb.bu
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i.i:      ; preds = %bb.bu
  %i.ry = add nsw i32 %i.gr, -1
  %i.rz = trunc nuw i16 %i.rv to i8
  %i.sa = zext nneg i16 %i.rv to i32
  %i.sb = ptrtoint ptr %i.gp to i64
  br label %bb.bw

bb.bw:                                            ; preds = %bb.by, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i.i
  %.016.i.i211.i = phi i32 [ %.0.i, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i.i ], [ %i.so, %bb.by ] ; 2 uses
  %i.sc = sext i32 %.016.i.i211.i to i64
  %i.sd = getelementptr inbounds i8, ptr %i.gp, i64 %i.sc
  %i.se = sub i32 %i.gr, %.016.i.i211.i
  %i.sf = sext i32 %i.se to i64
  %i.sg = call noundef ptr @memchr(ptr noundef %i.sd, i32 noundef %i.sa, i64 noundef %i.sf) #23 ; 2 uses
  %i.sh = icmp eq ptr %i.sg, null
  br i1 %i.sh, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhtEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.si = ptrtoint ptr %i.sg to i64
  %i.sj = sub i64 %i.si, %i.sb                    ; 2 uses
  %i.sk = trunc i64 %i.sj to i32                  ; 4 uses
  %sext.i.i212.i = shl i64 %i.sj, 32
  %i.sl = ashr exact i64 %sext.i.i212.i, 32
  %i.sm = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.sl
  %i.sn = load i8, ptr %i.sm, align 1
  %.not.i.i213.i = icmp eq i8 %i.sn, %i.rz
  br i1 %.not.i.i213.i, label %_ZN2v88internal12StringSearchIthE16SingleCharSearchEPS2_NS_4base6VectorIKhEEi.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.so = add nsw i32 %i.sk, 1
  %i.sp = icmp sgt i32 %i.ry, %i.sk
  br i1 %i.sp, label %bb.bw, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhtEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, !llvm.loop !212

_ZN2v88internal12StringSearchIthE16SingleCharSearchEPS2_NS_4base6VectorIKhEEi.exit.i: ; preds = %bb.bx
  %i.sq = icmp eq i32 %i.sk, -1
  br i1 %i.sq, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhtEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %.lr.ph.split.preheader.i129.i

.lr.ph.i127.i:                                    ; preds = %_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit.i.i
  %.not.i128.i = icmp eq i32 %i.gk, 0
  br i1 %.not.i128.i, label %.lr.ph.split.us.i132.i, label %.lr.ph.split.preheader.i129.i

.lr.ph.split.preheader.i129.i:                    ; preds = %.lr.ph.i127.i, %_ZN2v88internal12StringSearchIthE16SingleCharSearchEPS2_NS_4base6VectorIKhEEi.exit.i
  %i.sr = phi ptr [ %i.rs, %.lr.ph.i127.i ], [ %i.rp, %_ZN2v88internal12StringSearchIthE16SingleCharSearchEPS2_NS_4base6VectorIKhEEi.exit.i ]
  %i.ss = phi i32 [ %i.rt, %.lr.ph.i127.i ], [ %i.sk, %_ZN2v88internal12StringSearchIthE16SingleCharSearchEPS2_NS_4base6VectorIKhEEi.exit.i ]
  br label %.lr.ph.split.i130.i

.lr.ph.split.us.i132.i:                           ; preds = %.lr.ph.i127.i
  %i.st = icmp sgt i32 %i.gr, -1
  br i1 %i.st, label %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i134.i, label %.lr.ph.split.us.split.i133.i, !prof !31

_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i134.i: ; preds = %.lr.ph.split.us.i132.i, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i134.i
  %i.su = phi i32 [ %i.sz, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i134.i ], [ %i.rt, %.lr.ph.split.us.i132.i ]
  %.07.us.us.i.i = phi i32 [ %i.sx, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i134.i ], [ %.0.i, %.lr.ph.split.us.i132.i ]
  %i.sv = load i32, ptr %i.a, align 4
  %i.sw = add nsw i32 %i.sv, 1
  store i32 %i.sw, ptr %i.a, align 4
  store i32 %i.su, ptr %i.b, align 4
  %i.sx = add nsw i32 %.07.us.us.i.i, 1           ; 2 uses
  %i.sy = load ptr, ptr %i.rs, align 8
  %i.sz = call noundef i32 %i.sy(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr %i.gp, i64 %i.gs, i32 noundef %i.sx) #21, !inline_history !211 ; 2 uses
  %i.ta = icmp eq i32 %i.sz, -1
  br i1 %i.ta, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhtEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i134.i, !llvm.loop !213

.lr.ph.split.us.split.i133.i:                     ; preds = %.lr.ph.split.us.i132.i
  %i.tb = load i32, ptr %i.a, align 4
  %i.tc = add nsw i32 %i.tb, 1
  store i32 %i.tc, ptr %i.a, align 4
  store i32 %i.rt, ptr %i.b, align 4
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

.lr.ph.split.i130.i:                              ; preds = %.lr.ph.split.i130.i, %.lr.ph.split.preheader.i129.i
  %i.td = phi i32 [ %i.ti, %.lr.ph.split.i130.i ], [ %i.ss, %.lr.ph.split.preheader.i129.i ] ; 2 uses
  %i.te = load i32, ptr %i.a, align 4
  %i.tf = add nsw i32 %i.te, 1
  store i32 %i.tf, ptr %i.a, align 4
  store i32 %i.td, ptr %i.b, align 4
  %i.tg = add nsw i32 %i.td, %i.gk
  %i.th = load ptr, ptr %i.sr, align 8
  %i.ti = call noundef i32 %i.th(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr %i.gp, i64 %i.gs, i32 noundef %i.tg) #21, !inline_history !211 ; 2 uses
  %i.tj = icmp eq i32 %i.ti, -1
  br i1 %i.tj, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhtEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %.lr.ph.split.i130.i, !llvm.loop !213

_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhtEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i: ; preds = %bb.by, %bb.bw, %.lr.ph.split.i130.i, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i134.i, %_ZN2v88internal12StringSearchIthE16SingleCharSearchEPS2_NS_4base6VectorIKhEEi.exit.i, %_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit.thread.i.i, %_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exitthread-pre-split

bb.bz:                                            ; preds = %bb.bk
  %i.tk = icmp eq i32 %i.gk, 1
  br i1 %i.tk, label %bb.ca, label %bb.cg

bb.ca:                                            ; preds = %bb.bz
  %i.tl = load i16, ptr %i.gi, align 2            ; 2 uses
  %i.tm = insertelement <8 x i16> poison, i16 %i.tl, i64 0
  %i.tn = shufflevector <8 x i16> %i.tm, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.to = icmp sgt i32 %i.gr, -1
  br i1 %i.to, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i137.i, label %bb.cb, !prof !31

bb.cb:                                            ; preds = %bb.ca
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i137.i:     ; preds = %bb.ca
  %i.tp = sext i32 %.0.i to i64
  %.idx.i138.i = shl nsw i64 %i.tp, 1             ; 2 uses
  %i.tq = getelementptr inbounds i8, ptr %i.gp, i64 %.idx.i138.i ; 2 uses
  %.idx49.i139.i = shl nuw nsw i64 %i.gs, 1       ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx49.i139.i ; 5 uses
  %i.ts = add nsw i64 %.idx.i138.i, 1048560
  %.not22.i140.i = icmp sgt i64 %i.ts, %.idx49.i139.i
  br i1 %.not22.i140.i, label %.preheader.i155.i, label %.preheader16.i141.i

.preheader16.i141.i:                              ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i137.i, %bb.cc
  %.026.i142.i = phi i32 [ %i.tz, %bb.cc ], [ 0, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i137.i ]
  %.06525.i143.i = phi ptr [ %.267.i151.i, %bb.cc ], [ null, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i137.i ]
  %.sroa.047.024.i144.i = phi <2 x i64> [ %.sroa.047.2.i150.i, %bb.cc ], [ undef, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i137.i ]
  %.06823.i145.i = phi ptr [ %scevgep54.i153.i, %bb.cc ], [ %i.tq, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i137.i ] ; 3 uses
  br label %bb.cd

.preheader.i155.i:                                ; preds = %bb.cc, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i137.i
  %.068.lcssa.i156.i = phi ptr [ %i.tq, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i137.i ], [ %scevgep54.i153.i, %bb.cc ] ; 3 uses
  %.sroa.047.0.lcssa.i157.i = phi <2 x i64> [ undef, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i137.i ], [ %.sroa.047.2.i150.i, %bb.cc ] ; 2 uses
  %.065.lcssa.i158.i = phi ptr [ null, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i137.i ], [ %.267.i151.i, %bb.cc ] ; 2 uses
  %.0.lcssa.i159.i = phi i32 [ 0, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i137.i ], [ %i.tz, %bb.cc ]
  %i.tt = getelementptr inbounds nuw i8, ptr %.068.lcssa.i156.i, i64 16 ; 2 uses
  %.not7530.i160.i = icmp ugt ptr %i.tt, %i.tr
  br i1 %.not7530.i160.i, label %._crit_edge.i169.i, label %.lr.ph.i161.i

bb.cc:                                            ; preds = %bb.cd
  %scevgep54.i153.i = getelementptr i8, ptr %.06823.i145.i, i64 1048560 ; 2 uses
  %i.tu = bitcast <8 x i16> %i.ug to <4 x i32>
  %i.tv = lshr <4 x i32> %i.tu, splat (i32 16)
  %i.tw = bitcast <8 x i16> %i.ug to <4 x i32>
  %i.tx = and <4 x i32> %i.tw, splat (i32 65535)
  %i.ty = add nuw nsw <4 x i32> %i.tx, %i.tv
  %14 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ty)
  %i.tz = add i32 %14, %.026.i142.i               ; 2 uses
  %i.ua = getelementptr i8, ptr %.06823.i145.i, i64 2097120
  %.not.i154.i = icmp ugt ptr %i.ua, %i.tr
  br i1 %.not.i154.i, label %.preheader.i155.i, label %.preheader16.i141.i, !llvm.loop !214

bb.cd:                                            ; preds = %bb.ce, %.preheader16.i141.i
  %i.ub = phi <8 x i16> [ zeroinitializer, %.preheader16.i141.i ], [ %i.uq, %bb.ce ]
  %.16620.i146.i = phi ptr [ %.06525.i143.i, %.preheader16.i141.i ], [ %.267.i151.i.1, %bb.ce ]
  %.sroa.047.119.i147.i = phi <2 x i64> [ %.sroa.047.024.i144.i, %.preheader16.i141.i ], [ %.sroa.047.2.i150.i.1, %bb.ce ]
  %.16918.i148.i = phi ptr [ %.06823.i145.i, %.preheader16.i141.i ], [ %i.uw, %bb.ce ] ; 4 uses
  %.07217.i149.i = phi i32 [ 0, %.preheader16.i141.i ], [ %i.uv, %bb.ce ] ; 2 uses
  %i.uc = load <8 x i16>, ptr %.16918.i148.i, align 1, !alias.scope !215
  %i.ud = icmp eq <8 x i16> %i.uc, %i.tn
  %i.ue = sext <8 x i1> %i.ud to <8 x i16>        ; 3 uses
  %i.uf = bitcast <8 x i16> %i.ue to <2 x i64>
  %i.ug = sub <8 x i16> %i.ub, %i.ue              ; 3 uses
  %i.uh = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ue, <8 x i16> zeroinitializer)
  %i.ui = icmp slt <16 x i8> %i.uh, zeroinitializer
  %i.uj = bitcast <16 x i1> %i.ui to i16
  %i.uk = icmp eq i16 %i.uj, 0                    ; 2 uses
  %.sroa.047.2.i150.i = select i1 %i.uk, <2 x i64> %.sroa.047.119.i147.i, <2 x i64> %i.uf ; 3 uses
  %.267.i151.i = select i1 %i.uk, ptr %.16620.i146.i, ptr %.16918.i148.i ; 3 uses
  %exitcond.not.i152.i = icmp eq i32 %.07217.i149.i, 65534
  br i1 %exitcond.not.i152.i, label %bb.cc, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ul = getelementptr inbounds nuw i8, ptr %.16918.i148.i, i64 16 ; 2 uses
  %i.um = load <8 x i16>, ptr %i.ul, align 1, !alias.scope !215
  %i.un = icmp eq <8 x i16> %i.um, %i.tn
  %i.uo = sext <8 x i1> %i.un to <8 x i16>        ; 3 uses
  %i.up = bitcast <8 x i16> %i.uo to <2 x i64>
  %i.uq = sub <8 x i16> %i.ug, %i.uo
  %i.ur = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.uo, <8 x i16> zeroinitializer)
  %i.us = icmp slt <16 x i8> %i.ur, zeroinitializer
  %i.ut = bitcast <16 x i1> %i.us to i16
  %i.uu = icmp eq i16 %i.ut, 0                    ; 2 uses
  %.sroa.047.2.i150.i.1 = select i1 %i.uu, <2 x i64> %.sroa.047.2.i150.i, <2 x i64> %i.up
  %.267.i151.i.1 = select i1 %i.uu, ptr %.267.i151.i, ptr %i.ul
  %i.uv = add nuw nsw i32 %.07217.i149.i, 2
  %i.uw = getelementptr inbounds nuw i8, ptr %.16918.i148.i, i64 32
  br label %bb.cd

.lr.ph.i161.i:                                    ; preds = %.preheader.i155.i, %.lr.ph.i161.i
  %i.ux = phi ptr [ %i.vi, %.lr.ph.i161.i ], [ %i.tt, %.preheader.i155.i ] ; 3 uses
  %i.uy = phi <8 x i16> [ %i.vd, %.lr.ph.i161.i ], [ zeroinitializer, %.preheader.i155.i ]
  %.333.i162.i = phi ptr [ %.4.i166.i, %.lr.ph.i161.i ], [ %.065.lcssa.i158.i, %.preheader.i155.i ]
  %.sroa.047.332.i163.i = phi <2 x i64> [ %.sroa.047.4.i165.i, %.lr.ph.i161.i ], [ %.sroa.047.0.lcssa.i157.i, %.preheader.i155.i ]
  %.27031.i164.i = phi ptr [ %i.ux, %.lr.ph.i161.i ], [ %.068.lcssa.i156.i, %.preheader.i155.i ] ; 2 uses
  %i.uz = load <8 x i16>, ptr %.27031.i164.i, align 1, !alias.scope !218
  %i.va = icmp eq <8 x i16> %i.uz, %i.tn
  %i.vb = sext <8 x i1> %i.va to <8 x i16>        ; 3 uses
  %i.vc = bitcast <8 x i16> %i.vb to <2 x i64>
  %i.vd = sub <8 x i16> %i.uy, %i.vb              ; 2 uses
  %i.ve = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.vb, <8 x i16> zeroinitializer)
  %i.vf = icmp slt <16 x i8> %i.ve, zeroinitializer
  %i.vg = bitcast <16 x i1> %i.vf to i16
  %i.vh = icmp eq i16 %i.vg, 0                    ; 2 uses
  %.sroa.047.4.i165.i = select i1 %i.vh, <2 x i64> %.sroa.047.332.i163.i, <2 x i64> %i.vc ; 2 uses
  %.4.i166.i = select i1 %i.vh, ptr %.333.i162.i, ptr %.27031.i164.i ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ux, i64 16 ; 2 uses
  %.not75.i167.i = icmp ugt ptr %i.vi, %i.tr
  br i1 %.not75.i167.i, label %._crit_edge.loopexit.i168.i, label %.lr.ph.i161.i, !llvm.loop !221

._crit_edge.loopexit.i168.i:                      ; preds = %.lr.ph.i161.i
  %i.vj = bitcast <8 x i16> %i.vd to <4 x i32>
  br label %._crit_edge.i169.i

._crit_edge.i169.i:                               ; preds = %._crit_edge.loopexit.i168.i, %.preheader.i155.i
  %.270.lcssa.i170.i = phi ptr [ %.068.lcssa.i156.i, %.preheader.i155.i ], [ %i.ux, %._crit_edge.loopexit.i168.i ] ; 2 uses
  %.sroa.047.3.lcssa.i171.i = phi <2 x i64> [ %.sroa.047.0.lcssa.i157.i, %.preheader.i155.i ], [ %.sroa.047.4.i165.i, %._crit_edge.loopexit.i168.i ] ; 2 uses
  %.3.lcssa.i172.i = phi ptr [ %.065.lcssa.i158.i, %.preheader.i155.i ], [ %.4.i166.i, %._crit_edge.loopexit.i168.i ] ; 2 uses
  %.sroa.050.2.lcssa.i173.i = phi <4 x i32> [ zeroinitializer, %.preheader.i155.i ], [ %i.vj, %._crit_edge.loopexit.i168.i ] ; 2 uses
  %i.vk = lshr <4 x i32> %.sroa.050.2.lcssa.i173.i, splat (i32 16)
  %i.vl = and <4 x i32> %.sroa.050.2.lcssa.i173.i, splat (i32 65535)
  %i.vm = add nuw nsw <4 x i32> %i.vl, %i.vk
  %15 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.vm)
  %i.vn = add i32 %15, %.0.lcssa.i159.i           ; 2 uses
  %i.vo = icmp ult ptr %.270.lcssa.i170.i, %i.tr
  br i1 %i.vo, label %.lr.ph44.i179.i, label %._crit_edge45.i174.i

.lr.ph44.i179.i:                                  ; preds = %._crit_edge.i169.i, %.lr.ph44.i179.i
  %.142.i180.i = phi i32 [ %.2.i187.i, %.lr.ph44.i179.i ], [ %i.vn, %._crit_edge.i169.i ]
  %.541.i181.i = phi ptr [ %.6.i186.i, %.lr.ph44.i179.i ], [ %.3.lcssa.i172.i, %._crit_edge.i169.i ]
  %.sroa.047.540.i182.i = phi <2 x i64> [ %.sroa.047.6.i185.i, %.lr.ph44.i179.i ], [ %.sroa.047.3.lcssa.i171.i, %._crit_edge.i169.i ]
  %.37139.i183.i = phi ptr [ %i.vr, %.lr.ph44.i179.i ], [ %.270.lcssa.i170.i, %._crit_edge.i169.i ] ; 3 uses
  %i.vp = load i16, ptr %.37139.i183.i, align 2
  %.not77.i184.i = icmp eq i16 %i.vp, %i.tl       ; 3 uses
  %.sroa.047.6.i185.i = select i1 %.not77.i184.i, <2 x i64> <i64 65535, i64 0>, <2 x i64> %.sroa.047.540.i182.i ; 2 uses
  %.6.i186.i = select i1 %.not77.i184.i, ptr %.37139.i183.i, ptr %.541.i181.i ; 2 uses
  %i.vq = zext i1 %.not77.i184.i to i32
  %.2.i187.i = add nsw i32 %.142.i180.i, %i.vq    ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.37139.i183.i, i64 2 ; 2 uses
  %i.vs = icmp ult ptr %i.vr, %i.tr
  br i1 %i.vs, label %.lr.ph44.i179.i, label %._crit_edge45.i174.i, !llvm.loop !222

._crit_edge45.i174.i:                             ; preds = %.lr.ph44.i179.i, %._crit_edge.i169.i
  %.sroa.047.5.lcssa.i175.i = phi <2 x i64> [ %.sroa.047.3.lcssa.i171.i, %._crit_edge.i169.i ], [ %.sroa.047.6.i185.i, %.lr.ph44.i179.i ]
  %.5.lcssa.i176.i = phi ptr [ %.3.lcssa.i172.i, %._crit_edge.i169.i ], [ %.6.i186.i, %.lr.ph44.i179.i ] ; 2 uses
  %.1.lcssa.i177.i = phi i32 [ %i.vn, %._crit_edge.i169.i ], [ %.2.i187.i, %.lr.ph44.i179.i ]
  %i.vt = load i32, ptr %i.a, align 4
  %i.vu = add nsw i32 %i.vt, %.1.lcssa.i177.i
  store i32 %i.vu, ptr %i.a, align 4
  %.not76.i178.i = icmp eq ptr %.5.lcssa.i176.i, null
  br i1 %.not76.i178.i, label %_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exitthread-pre-split, label %bb.cf

bb.cf:                                            ; preds = %._crit_edge45.i174.i
  %i.vv = bitcast <2 x i64> %.sroa.047.5.lcssa.i175.i to <8 x i16>
  %i.vw = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.vv, <8 x i16> zeroinitializer)
  %i.vx = icmp slt <16 x i8> %i.vw, zeroinitializer
  %i.vy = bitcast <16 x i1> %i.vx to i16
  %i.vz = zext i16 %i.vy to i32
  %i.wa = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.vz, i1 true)
  %i.wb = xor i32 %i.wa, 31
  %i.wc = zext nneg i32 %i.wb to i64
  %i.wd = getelementptr inbounds nuw [2 x i8], ptr %.5.lcssa.i176.i, i64 %i.wc
  %i.we = ptrtoint ptr %i.wd to i64
  %i.wf = ptrtoint ptr %i.gp to i64
  %i.wg = sub i64 %i.we, %i.wf
  %i.wh = lshr exact i64 %i.wg, 1
  %i.wi = trunc i64 %i.wh to i32                  ; 2 uses
  store i32 %i.wi, ptr %i.b, align 4
  br label %_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit

bb.cg:                                            ; preds = %bb.bz
  %i.wj = icmp sgt i32 %i.gk, -1
  br i1 %i.wj, label %_ZNK2v84base6VectorIKtE6lengthEv.exit3.i.i188.i, label %bb.ch, !prof !31

bb.ch:                                            ; preds = %bb.cg
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit3.i.i188.i:  ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %2, ptr %3, align 8
  %i.wk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.gi, ptr %i.wk, align 8
  %.sroa.2.0..sroa_idx.i.i189.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.gl, ptr %.sroa.2.0..sroa_idx.i.i189.i, align 8
  %i.wl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.speculated.i.i190.i = call i32 @llvm.usub.sat.i32(i32 %i.gk, i32 250)
  store i32 %.sroa.speculated.i.i190.i, ptr %i.wl, align 8
  %i.wm = icmp samesign ult i32 %i.gk, 7
  %spec.select110.i = select i1 %i.wm, ptr @_ZN2v88internal12StringSearchIttE12LinearSearchEPS2_NS_4base6VectorIKtEEi, ptr @_ZN2v88internal12StringSearchIttE13InitialSearchEPS2_NS_4base6VectorIKtEEi ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store ptr %spec.select110.i, ptr %i.wn, align 8
  %i.wo = call noundef i32 %spec.select110.i(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr %i.gp, i64 %i.gs, i32 noundef %.0.i) #21, !inline_history !223 ; 5 uses
  %i.wp = icmp eq i32 %i.wo, -1
  br i1 %i.wp, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIttEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %.lr.ph.i191.i

.lr.ph.i191.i:                                    ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit3.i.i188.i
  %.not.i192.i = icmp eq i32 %i.gk, 0
  br i1 %.not.i192.i, label %.lr.ph.split.us.i196.i, label %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.i194.i

.lr.ph.split.us.i196.i:                           ; preds = %.lr.ph.i191.i
  %i.wq = icmp sgt i32 %i.gr, -1
  br i1 %i.wq, label %.lr.ph.split.us.split.us.i198.i, label %.lr.ph.split.us.split.i197.i, !prof !31

.lr.ph.split.us.split.us.i198.i:                  ; preds = %.lr.ph.split.us.i196.i
  br i1 %.not396, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i199.i, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.i201.i

_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i199.i: ; preds = %.lr.ph.split.us.split.us.i198.i, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i199.i
  %i.wr = phi i32 [ %i.ww, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i199.i ], [ %i.wo, %.lr.ph.split.us.split.us.i198.i ]
  %.02.us.us.us.i200.i = phi i32 [ %i.wu, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i199.i ], [ %.0.i, %.lr.ph.split.us.split.us.i198.i ]
  %i.ws = load i32, ptr %i.a, align 4
  %i.wt = add nsw i32 %i.ws, 1
  store i32 %i.wt, ptr %i.a, align 4
  store i32 %i.wr, ptr %i.b, align 4
  %i.wu = add nsw i32 %.02.us.us.us.i200.i, 1     ; 2 uses
  %i.wv = load ptr, ptr %i.wn, align 8
  %i.ww = call noundef i32 %i.wv(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr %i.gp, i64 %i.gs, i32 noundef %i.wu) #21, !inline_history !223 ; 2 uses
  %i.wx = icmp eq i32 %i.ww, -1
  br i1 %i.wx, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIttEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i199.i, !llvm.loop !224

_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.i201.i: ; preds = %.lr.ph.split.us.split.us.i198.i, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.us.us.i204.i
  %i.wy = phi i32 [ %i.xq, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.us.us.i204.i ], [ %i.wo, %.lr.ph.split.us.split.us.i198.i ]
  %.02.us.us.i202.i = phi i32 [ %i.xo, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.us.us.i204.i ], [ %.0.i, %.lr.ph.split.us.split.us.i198.i ] ; 5 uses
  %i.wz = load i32, ptr %i.a, align 4
  %i.xa = add nsw i32 %i.wz, 1
  store i32 %i.xa, ptr %i.a, align 4
  store i32 %i.wy, ptr %i.b, align 4
  %i.xb = icmp slt i32 %.02.us.us.i202.i, %i.gr
  br i1 %i.xb, label %bb.ci, label %.thread.i.us.us.i203.i

bb.ci:                                            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.i201.i
  %i.xc = sext i32 %.02.us.us.i202.i to i64
  %i.xd = getelementptr inbounds nuw [2 x i8], ptr %i.gp, i64 %i.xc
  %i.xe = load i16, ptr %i.xd, align 2
  %i.xf = and i16 %i.xe, -1024
  %or.cond.i.us.us.i205.i = icmp eq i16 %i.xf, -10240
  br i1 %or.cond.i.us.us.i205.i, label %bb.cj, label %.thread.i.us.us.i203.i

bb.cj:                                            ; preds = %bb.ci
  %i.xg = add nsw i32 %.02.us.us.i202.i, 1        ; 2 uses
  %i.xh = icmp slt i32 %i.xg, %i.gr
  br i1 %i.xh, label %bb.ck, label %.thread.i.us.us.i203.i

bb.ck:                                            ; preds = %bb.cj
  %i.xi = sext i32 %i.xg to i64
  %i.xj = getelementptr inbounds nuw [2 x i8], ptr %i.gp, i64 %i.xi
  %i.xk = load i16, ptr %i.xj, align 2
  %i.xl = and i16 %i.xk, -1024
  %or.cond6.not.not.i.us.us.i206.i = icmp eq i16 %i.xl, -9216
  %i.xm = add nsw i32 %.02.us.us.i202.i, 2
  br i1 %or.cond6.not.not.i.us.us.i206.i, label %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.us.us.i204.i, label %.thread.i.us.us.i203.i

.thread.i.us.us.i203.i:                           ; preds = %bb.ck, %bb.cj, %bb.ci, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.i201.i
  %i.xn = add nsw i32 %.02.us.us.i202.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.us.us.i204.i

_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.us.us.i204.i: ; preds = %.thread.i.us.us.i203.i, %bb.ck
  %i.xo = phi i32 [ %i.xm, %bb.ck ], [ %i.xn, %.thread.i.us.us.i203.i ] ; 2 uses
  %i.xp = load ptr, ptr %i.wn, align 8
  %i.xq = call noundef i32 %i.xp(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr %i.gp, i64 %i.gs, i32 noundef %i.xo) #21, !inline_history !223 ; 2 uses
  %i.xr = icmp eq i32 %i.xq, -1
  br i1 %i.xr, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIttEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.i201.i, !llvm.loop !224

.lr.ph.split.us.split.i197.i:                     ; preds = %.lr.ph.split.us.i196.i
  %i.xs = load i32, ptr %i.a, align 4
  %i.xt = add nsw i32 %i.xs, 1
  store i32 %i.xt, ptr %i.a, align 4
  store i32 %i.wo, ptr %i.b, align 4
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.i194.i: ; preds = %.lr.ph.i191.i, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.i194.i
  %i.xu = phi i32 [ %i.xz, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.i194.i ], [ %i.wo, %.lr.ph.i191.i ] ; 2 uses
  %i.xv = load i32, ptr %i.a, align 4
  %i.xw = add nsw i32 %i.xv, 1
  store i32 %i.xw, ptr %i.a, align 4
  store i32 %i.xu, ptr %i.b, align 4
  %i.xx = add nsw i32 %i.xu, %i.gk
  %i.xy = load ptr, ptr %i.wn, align 8
  %i.xz = call noundef i32 %i.xy(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr %i.gp, i64 %i.gs, i32 noundef %i.xx) #21, !inline_history !223 ; 2 uses
  %i.ya = icmp eq i32 %i.xz, -1
  br i1 %i.ya, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIttEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.i194.i, !llvm.loop !224

_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIttEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i: ; preds = %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.i194.i, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.us.us.i204.i, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i199.i, %_ZNK2v84base6VectorIKtE6lengthEv.exit3.i.i188.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exitthread-pre-split

_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exitthread-pre-split: ; preds = %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIttEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, %._crit_edge45.i174.i, %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhtEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIthEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, %._crit_edge45.i.i, %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhhEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, %._crit_edge67.i.i
  %.pr = load i32, ptr %i.b, align 4
  br label %_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit

_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exitthread-pre-split, %bb.av, %bb.be, %bb.cf
  %i.yb = phi i32 [ %.pr, %_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exitthread-pre-split ], [ %i.kp, %bb.av ], [ %i.om, %bb.be ], [ %i.wi, %bb.cf ] ; 2 uses
  %.not.i = icmp eq i32 %i.yb, -1
  br i1 %.not.i, label %.thread392, label %bb.cl

.thread392:                                       ; preds = %_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit
  %i.yc = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.yd = load i64, ptr %i.yc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.cp

bb.cl:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit
  %i.ye = load i32, ptr %i.a, align 4
  call void @_ZN2v88internal34RegExpResultsCache_MatchGlobalAtom9TryInsertEPNS0_7IsolateENS0_6TaggedINS0_6StringEEES6_ii(ptr noundef nonnull %2, i64 %i.bm, i64 %i.bp, i32 noundef %i.ye, i32 noundef %i.yb) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.yf = load i32, ptr %i.b, align 4             ; 2 uses
  store i32 %i.yf, ptr %i.c, align 4
  %i.yg = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.yh = add nsw i32 %i.yf, %i.ca
  store i32 %i.yh, ptr %i.yg, align 4
  %i.yi = getelementptr inbounds nuw i8, ptr %2, i64 344
  %.sroa.0.0.copyload.i.i.i24 = load i64, ptr %i.yi, align 8
  %i.yj = add i64 %.sroa.0.0.copyload.i.i.i24, -1
  %i.yk = inttoptr i64 %i.yj to ptr
  %i.yl = load atomic volatile i64, ptr %i.yk monotonic, align 8
  %i.ym = add i64 %i.yl, 31
  %i.yn = inttoptr i64 %i.ym to ptr
  %i.yo = load i64, ptr %i.yn, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal6String23IsConsStringEqualToImplItEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE:bb.a
  %i.bw = sext i32 %.0 to i64
  %i.bx = getelementptr inbounds [2 x i8], ptr %.0.i27, i64 %i.bw
  %bcmp.i.i28 = call i32 @bcmp(ptr %i.bx, ptr %.sroa.038.0140, i64 %i.l)
  %i.by = icmp eq i32 %bcmp.i.i28, 0
  br i1 %i.by, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread133

bb.o:                                             ; preds = %bb.b, %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = lshr i64 %i.ca, 32
  %i.cc = trunc nuw i64 %i.cb to i32
  %i.cd = add nsw i32 %.0, %i.cc
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit

bb.p:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #22
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit: ; preds = %bb.b, %bb.b, %bb.o
  %.1 = phi i32 [ %i.cd, %bb.o ], [ %.0, %bb.b ], [ %.0, %bb.b ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.cf = load i64, ptr %i.ce, align 8
  br label %bb.b

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.b
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ch = sext i32 %.0 to i64
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.cg, i64 %i.ch
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.ci, ptr %.sroa.038.0140, i64 %i.l)
  %i.cj = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.cj, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread133

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread: ; preds = %bb.j, %bb.d, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit, %bb.c, %bb.e, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.sroa.038.0140, i64 %.sroa.speculated
  %i.cl = sub i64 %.sroa.6.0141, %.sroa.speculated ; 2 uses
  %.not = icmp eq i64 %i.cl, 0
  br i1 %.not, label %.thread133, label %bb.q

bb.q:                                             ; preds = %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread
  store i32 0, ptr %i.a, align 4
  %i.cm = load i32, ptr %i.d, align 8
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %.thread133, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit32

_ZN2v88internal18ConsStringIterator4NextEPi.exit32: ; preds = %bb.q
  %i.co = call i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 dereferenceable(276) %4, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.thread133, label %.lr.ph, !llvm.loop !328

.thread133:                                       ; preds = %bb.q, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, %_ZN2v88internal18ConsStringIterator4NextEPi.exit32, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %bb.e, %.lr.ph.i.i19, %.lr.ph.i.i, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit.thread, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit, %_ZN2v88internal18ConsStringIterator4NextEPi.exit
  %.116 = phi i1 [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit ], [ false, %.lr.ph.i.i19 ], [ true, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit.thread ], [ true, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit ], [ false, %.lr.ph.i.i ], [ true, %bb.q ], [ false, %bb.e ], [ false, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ], [ true, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread ], [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit32 ], [ false, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i1 %.116
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6StringEEELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.m, label %bb.b, label %bb.e, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 8, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 7 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_6StringEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.c, -8
  %i.t = sub i64 %i.s, %i.h                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 56
  %i.w = sub i64 %i.r, %i.h
  %diff.check = icmp ult i64 %i.w, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.d, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8
  %wide.load13 = load <2 x i64>, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load13, ptr %i.ac, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !329

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_6StringEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i64, ptr %.sroa.04.07.i.i.i.i, align 8
  store i64 %i.ae, ptr %.08.i.i.i.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_6StringEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !330

_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_6StringEEES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.l
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6StringEEELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.p, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6StringEEELm8ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6StringEEELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #18

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { builtin nounwind allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!7 = distinct !{!7, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!10 = distinct !{!10, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!13 = distinct !{!13, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!14 = !{!15, !12}
!15 = distinct !{!15, !16, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!16 = distinct !{!16, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!17 = !{!18, !20, !12}
!18 = distinct !{!18, !19, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!19 = distinct !{!19, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!20 = distinct !{!20, !21, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!21 = distinct !{!21, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!22 = distinct !{null}
!23 = !{!24, !20, !12}
!24 = distinct !{!24, !25, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!25 = distinct !{!25, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!26 = distinct !{null}
!27 = !{!20, !12}
!28 = !{i8 0, i8 2}
!29 = !{}
!30 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!31 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !33}
!38 = distinct !{!38, !33}
!39 = distinct !{!39, !33}
!40 = distinct !{!40, !33}
!41 = distinct !{!41, !33}
!42 = distinct !{!42, !33}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!45 = distinct !{!45, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!48 = distinct !{!48, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!51 = distinct !{!51, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!52 = !{!53, !50}
!53 = distinct !{!53, !54, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!54 = distinct !{!54, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!55 = !{!56, !58, !50}
!56 = distinct !{!56, !57, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!57 = distinct !{!57, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!58 = distinct !{!58, !59, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!59 = distinct !{!59, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!60 = !{!61, !58, !50}
!61 = distinct !{!61, !62, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!62 = distinct !{!62, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!63 = !{!58, !50}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!66 = distinct !{!66, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!69 = distinct !{!69, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!72 = distinct !{!72, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!73 = !{!74, !71}
!74 = distinct !{!74, !75, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!75 = distinct !{!75, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!76 = !{!77, !79, !71}
!77 = distinct !{!77, !78, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!78 = distinct !{!78, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!79 = distinct !{!79, !80, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!80 = distinct !{!80, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!81 = !{!82, !79, !71}
!82 = distinct !{!82, !83, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!83 = distinct !{!83, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!84 = !{!79, !71}
!85 = distinct !{null}
!86 = distinct !{!86, !33}
!87 = distinct !{!87, !33}
!88 = distinct !{!88, !33}
!89 = distinct !{!89, !33}
!90 = distinct !{null}
!91 = distinct !{!91, !33}
!92 = distinct !{null}
!93 = distinct !{!93, !33}
!94 = distinct !{null}
!95 = distinct !{!95, !33}
!96 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!97 = distinct !{!97, !33}
!98 = !{!"branch_weights", !"expected", i32 2145337206, i32 2146442}
!99 = distinct !{!99, !33}
!100 = !{!"branch_weights", i32 2146410443, i32 1073205}
!101 = !{!"branch_weights", i32 -2146410, i32 2146410}
!102 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!103 = distinct !{!103, !104}
!104 = !{!"llvm.loop.unroll.disable"}
!105 = distinct !{!105, !33}
!106 = distinct !{!106, !107}
!107 = !{!"llvm.loop.peeled.count", i32 1}
!108 = distinct !{!108, !33}
!109 = distinct !{!109, !104}
!110 = distinct !{!110, !33}
!111 = distinct !{!111, !33}
!112 = distinct !{!112, !33}
!113 = distinct !{!113, !33}
!114 = !{!"branch_weights", !"expected", i32 2145766520, i32 1717128}
!115 = distinct !{!115, !33}
!116 = distinct !{!116, !33}
!117 = distinct !{!117, !33}
!118 = distinct !{!118, !33}
!119 = distinct !{!119, !33}
!120 = distinct !{!120, !33}
!121 = distinct !{!121, !33}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!124 = distinct !{!124, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!127 = distinct !{!127, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!130 = distinct !{!130, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!131 = !{!132, !129}
!132 = distinct !{!132, !133, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!133 = distinct !{!133, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!134 = !{!135, !137, !129}
!135 = distinct !{!135, !136, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!136 = distinct !{!136, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!137 = distinct !{!137, !138, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!138 = distinct !{!138, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!139 = !{!140, !137, !129}
!140 = distinct !{!140, !141, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!141 = distinct !{!141, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!142 = !{!137, !129}
!143 = distinct !{!143, !33}
!144 = distinct !{!144, !33}
!145 = distinct !{!145, !33}
!146 = distinct !{!146, !33, !147, !148}
!147 = !{!"llvm.loop.isvectorized", i32 1}
!148 = !{!"llvm.loop.unroll.runtime.disable"}
!149 = distinct !{!149, !104}
!150 = distinct !{!150, !33, !147}
!151 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!152 = !{!"branch_weights", !"expected", i32 2146839403, i32 644245}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!155 = distinct !{!155, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!158 = distinct !{!158, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!161 = distinct !{!161, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!162 = !{!163, !160}
!163 = distinct !{!163, !164, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!164 = distinct !{!164, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!165 = !{!166, !168, !160}
!166 = distinct !{!166, !167, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!167 = distinct !{!167, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!168 = distinct !{!168, !169, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
end_hunk_2
