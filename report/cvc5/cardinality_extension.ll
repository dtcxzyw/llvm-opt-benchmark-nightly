Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/cardinality_extension?download=true
inline.NumInlined: 4677
inline.NumDeleted: 1309
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4cvc58internal6theory2uf20CardinalityExtension9SortModel6Region5checkENS1_6Theory6EffortEiRSt6vectorINS0_12NodeTemplateILb1EEESaISA_EE:bb.a
  br i1 %.not.i.i.i.i.i118, label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE4findERKS4_.exit131.thread, label %bb.az

bb.az:                                            ; preds = %.noexc130
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !155 ; 4 uses
  %i.gl = load ptr, ptr %i.ft, align 8            ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !158
  %i.gp = icmp eq i64 %i.ge, %i.go
  %i.gq = load ptr, ptr %i.gm, align 8
  %i.gr = icmp eq ptr %i.gl, %i.gq
  %i.gs = select i1 %i.gp, i1 %i.gr, i1 false
  br i1 %i.gs, label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE4findERKS4_.exit131, label %.lr.ph.i.i.i.i.i119

bb.ba:                                            ; preds = %bb.bb
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.gu = icmp eq i64 %i.ge, %i.ha
  %i.gv = load ptr, ptr %i.gt, align 8
  %i.gw = icmp eq ptr %i.gl, %i.gv
  %i.gx = select i1 %i.gu, i1 %i.gw, i1 false
  br i1 %i.gx, label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE4findERKS4_.exit131, label %.lr.ph.i.i.i.i.i119, !llvm.loop !2

.lr.ph.i.i.i.i.i119:                              ; preds = %bb.az, %bb.ba
  %.020.i.i.i.i.i120 = phi ptr [ %i.gy, %bb.ba ], [ %i.gk, %bb.az ]
  %i.gy = load ptr, ptr %.020.i.i.i.i.i120, align 8, !tbaa !155 ; 5 uses
  %.not18.i.i.i.i.i121 = icmp eq ptr %i.gy, null
  br i1 %.not18.i.i.i.i.i121, label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE4findERKS4_.exit131.thread, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i.i119
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !158 ; 2 uses
  %i.hb = urem i64 %i.ha, %i.gf
  %.not19.i.i.i.i.i122 = icmp eq i64 %i.hb, %i.gg
  br i1 %.not19.i.i.i.i.i122, label %bb.ba, label %..loopexit_crit_edge21.i.i.i.i.i123, !llvm.loop !2

..loopexit_crit_edge21.i.i.i.i.i123:              ; preds = %bb.bb
  br label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE4findERKS4_.exit131.thread, !llvm.loop !2

_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE4findERKS4_.exit131: ; preds = %bb.ba, %bb.ax, %bb.az
  %.sroa.06.1.i.i.i126 = phi ptr [ %.sroa.06.0.i.i.i128, %bb.ax ], [ %i.gk, %bb.az ], [ %i.gy, %bb.ba ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i126, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !160
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE4findERKS4_.exit131.thread, label %bb.bc

bb.bc:                                            ; preds = %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE4findERKS4_.exit131
  %i.hf = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EEixERKS4_(ptr noundef nonnull align 8 dereferenceable(112) %i.ev, ptr noundef nonnull align 8 dereferenceable(8) %i.ft)
          to label %bb.bd unwind label %.loopexit.split-lp298.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bc
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  %i.hh = load i8, ptr %i.hg, align 8, !tbaa !161, !range !162, !noundef !163
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE4findERKS4_.exit131.thread

_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE4findERKS4_.exit131.thread: ; preds = %.lr.ph.i.i.i.i.i119, %bb.aw, %.noexc130, %..loopexit_crit_edge21.i.i.i.i.i123, %bb.bd, %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE4findERKS4_.exit131
  %i.hj = load ptr, ptr %i.fu, align 8, !tbaa !94
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 376
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !174
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 40
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !168 ; 5 uses
  %i.ho = icmp sgt i32 %i.hn, %.040342
  br i1 %i.ho, label %bb.be, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.be:                                            ; preds = %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE4findERKS4_.exit131.thread
  %i.hp = load ptr, ptr %11, align 8, !tbaa !97   ; 4 uses
  %i.hq = load ptr, ptr %i.ft, align 8, !tbaa !97
  %.not.i132 = icmp eq ptr %i.hp, %i.hq
  br i1 %.not.i132, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.bf, !prof !99

bb.bf:                                            ; preds = %bb.be
  %i.hr = load i64, ptr %i.hp, align 8            ; 3 uses
  %i.hs = and i64 %i.hr, 1152920405095219200
  %.not.i.i133 = icmp eq i64 %i.hs, 1152920405095219200
  br i1 %.not.i.i133, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.bg, !prof !99

bb.bg:                                            ; preds = %bb.bf
  %i.ht = add i64 %i.hr, 1152920405095219200
  %i.hu = and i64 %i.ht, 1152920405095219200      ; 2 uses
  %i.hv = and i64 %i.hr, -1152920405095219201
  %i.hw = or disjoint i64 %i.hu, %i.hv
  store i64 %i.hw, ptr %i.hp, align 8
  %i.hx = icmp eq i64 %i.hu, 0
  br i1 %i.hx, label %bb.bh, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !99

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hp)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %.loopexit.split-lp298.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.bh, %bb.bg, %bb.bf
  %i.hy = load ptr, ptr %i.ft, align 8, !tbaa !97 ; 5 uses
  store ptr %i.hy, ptr %11, align 8, !tbaa !97
  %i.hz = load i64, ptr %i.hy, align 8            ; 3 uses
  %i.ia = lshr i64 %i.hz, 40
  %i.ib = trunc nuw nsw i64 %i.ia to i32
  %i.ic = and i32 %i.ib, 1048575                  ; 3 uses
  %i.id = icmp samesign ult i32 %i.ic, 1048574
  br i1 %i.id, label %bb.bi, label %bb.bj, !prof !98

bb.bi:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.ie = add nuw nsw i32 %i.ic, 1
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = shl nuw nsw i64 %i.if, 40
  %i.ih = and i64 %i.hz, -1152920405095219201
  %i.ii = or i64 %i.ig, %i.ih
  store i64 %i.ii, ptr %i.hy, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.bj:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.ij = icmp eq i32 %i.ic, 1048574
  br i1 %i.ij, label %bb.bk, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !99

bb.bk:                                            ; preds = %bb.bj
  %i.ik = or i64 %i.hz, 1152920405095219200
  store i64 %i.ik, ptr %i.hy, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hy)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %.loopexit.split-lp298.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.at, %bb.bj, %bb.bi, %bb.be, %bb.bk, %bb.bd, %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE4findERKS4_.exit131.thread
  %.1 = phi i32 [ %i.hn, %bb.bj ], [ %.040342, %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE4findERKS4_.exit131.thread ], [ %.040342, %bb.bd ], [ %i.hn, %bb.bk ], [ %i.hn, %bb.be ], [ %i.hn, %bb.bi ], [ %.040342, %bb.at ]
  %i.il = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0243.0341) #29 ; 2 uses
  %.not275 = icmp eq ptr %i.il, %i.eu
  br i1 %.not275, label %._crit_edge, label %bb.at, !llvm.loop !507

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit116: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i113, %bb.as
  %i.im = load ptr, ptr %11, align 8, !tbaa !97   ; 3 uses
  %i.in = load i64, ptr %i.im, align 8            ; 3 uses
  %i.io = and i64 %i.in, 1152920405095219200
  %.not.i.i136 = icmp eq i64 %i.io, 1152920405095219200
  br i1 %.not.i.i136, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.bl, !prof !99

bb.bl:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit116
  %i.ip = add i64 %i.in, 1152920405095219200
  %i.iq = and i64 %i.ip, 1152920405095219200      ; 2 uses
  %i.ir = and i64 %i.in, -1152920405095219201
  %i.is = or disjoint i64 %i.iq, %i.ir
  store i64 %i.is, ptr %i.im, align 8
  %i.it = icmp eq i64 %i.iq, 0
  br i1 %i.it, label %bb.bm, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !99

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.im)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iu = landingpad { ptr, i32 }
          catch ptr null
  %i.iv = extractvalue { ptr, i32 } %i.iu, 0
  call void @__clang_call_terminate(ptr %i.iv) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit116, %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit

.loopexit.split-lp298.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bc, %bb.bk, %bb.bh, %bb.ay, %bb.as, %bb.ar
  %lpad.loopexit.split-lp562 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #26
  br label %.body

.body:                                            ; preds = %bb.am, %.loopexit.split-lp298.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn68.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp562, %.loopexit.split-lp298.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.eq, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %.loopexit.split-lp

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS3_6theory2uf18sortInternalDegreeEEvT_SE_T0_.exit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !193 ; 3 uses
  %i.iy = load ptr, ptr %10, align 8, !tbaa !196  ; 3 uses
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = sub i64 %i.iz, %i.ja
  %i.jc = lshr exact i64 %i.jb, 3
  %i.jd = trunc i64 %i.jc to i32
  %i.je = icmp sgt i32 %i.jd, 0
  br i1 %i.je, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit144.lr.ph, label %._crit_edge358

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit144.lr.ph: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit144

.loopexit282.loopexit:                            ; preds = %select.unfold
  %.pre407.a = load ptr, ptr %i.iw, align 8, !tbaa !193
  %.pre408 = load ptr, ptr %10, align 8, !tbaa !196
  br label %.loopexit282

.loopexit282:                                     ; preds = %.loopexit282.loopexit, %._crit_edge350
  %i.jk = phi ptr [ %.pre408, %.loopexit282.loopexit ], [ %i.pv, %._crit_edge350 ] ; 4 uses
  %i.jl = phi ptr [ %.pre407.a, %.loopexit282.loopexit ], [ %i.pw, %._crit_edge350 ] ; 3 uses
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = ptrtoint ptr %i.jk to i64
  %i.jo = sub i64 %i.jm, %i.jn                    ; 2 uses
  %sext = shl i64 %i.jo, 29
  %i.jp = ashr i64 %sext, 32
  %i.jq = icmp slt i64 %indvars.iv.next401, %i.jp
  br i1 %i.jq, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit144, label %.preheader, !llvm.loop !508

.preheader:                                       ; preds = %.loopexit282
  %i.jr = lshr exact i64 %i.jo, 3
  %i.js = trunc i64 %i.jr to i32
  %i.jt = icmp sgt i32 %i.js, 0
  br i1 %i.jt, label %.lr.ph357, label %._crit_edge358

.lr.ph357:                                        ; preds = %.preheader
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.fj

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit144: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit144.lr.ph, %.loopexit282
  %i.jw = phi ptr [ %i.iy, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit144.lr.ph ], [ %i.jk, %.loopexit282 ] ; 3 uses
  %i.jx = phi ptr [ %i.ix, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit144.lr.ph ], [ %i.jl, %.loopexit282 ] ; 2 uses
  %indvars.iv.a = phi i64 [ 0, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit144.lr.ph ], [ %indvars.iv.next401, %.loopexit282 ] ; 5 uses
  %indvars.iv.next401 = add nuw nsw i64 %indvars.iv.a, 1 ; 4 uses
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jw to i64
  %i.ka = sub i64 %i.jy, %i.jz
  %i.kb = shl i64 %i.ka, 29
  %i.kc = ashr i64 %i.kb, 32
  %i.kd = icmp slt i64 %indvars.iv.next401, %i.kc
  br i1 %i.kd, label %.lr.ph349, label %._crit_edge350

.lr.ph349:                                        ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit144, %bb.dj
  %indvars.iv397 = phi i64 [ %indvars.iv.next398, %bb.dj ], [ %indvars.iv.next401, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit144 ] ; 3 uses
  %i.ke = phi ptr [ %i.pn, %bb.dj ], [ %i.jw, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit144 ]
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %indvars.iv.a
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !97 ; 5 uses
  store ptr %i.kg, ptr %12, align 8, !tbaa !97
  %i.kh = load i64, ptr %i.kg, align 8            ; 3 uses
  %i.ki = lshr i64 %i.kh, 40
  %i.kj = trunc nuw nsw i64 %i.ki to i32
  %i.kk = and i32 %i.kj, 1048575                  ; 3 uses
  %i.kl = icmp samesign ult i32 %i.kk, 1048574
  br i1 %i.kl, label %bb.bo, label %bb.bp, !prof !98

bb.bo:                                            ; preds = %.lr.ph349
  %i.km = add nuw nsw i32 %i.kk, 1
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = shl nuw nsw i64 %i.kn, 40
  %i.kp = and i64 %i.kh, -1152920405095219201
  %i.kq = or i64 %i.ko, %i.kp
  store i64 %i.kq, ptr %i.kg, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.bp:                                            ; preds = %.lr.ph349
  %i.kr = icmp eq i32 %i.kk, 1048574
  br i1 %i.kr, label %bb.bq, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !99

bb.bq:                                            ; preds = %bb.bp
  %i.ks = or i64 %i.kh, 1152920405095219200
  store i64 %i.ks, ptr %i.kg, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.bp, %bb.bo, %bb.bq
  %i.kt = load ptr, ptr %10, align 8, !tbaa !196
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv397
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !97 ; 8 uses
  store ptr %i.kv, ptr %13, align 8, !tbaa !97
  %i.kw = load i64, ptr %i.kv, align 8            ; 3 uses
  %i.kx = lshr i64 %i.kw, 40
  %i.ky = trunc nuw nsw i64 %i.kx to i32
  %i.kz = and i32 %i.ky, 1048575                  ; 3 uses
  %i.la = icmp samesign ult i32 %i.kz, 1048574
  br i1 %i.la, label %bb.br, label %bb.bs, !prof !98

bb.br:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.lb = add nuw nsw i32 %i.kz, 1
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = shl nuw nsw i64 %i.lc, 40
  %i.le = and i64 %i.kw, -1152920405095219201
  %i.lf = or i64 %i.ld, %i.le
  store i64 %i.lf, ptr %i.kv, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit147

bb.bs:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.lg = icmp eq i32 %i.kz, 1048574
  br i1 %i.lg, label %bb.bt, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit147, !prof !99

bb.bt:                                            ; preds = %bb.bs
  %i.lh = or i64 %i.kw, 1152920405095219200
  store i64 %i.lh, ptr %i.kv, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit147 unwind label %bb.da

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit147: ; preds = %bb.bs, %bb.br, %bb.bt
  %i.li = invoke noundef zeroext i1 @_ZN4cvc58internal6theory2uf20CardinalityExtension9SortModel6Region10isDisequalENS0_12NodeTemplateILb1EEES7_i(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 %12, ptr noundef nonnull align 8 %13, i32 noundef 1)
          to label %bb.bu unwind label %bb.db

bb.bu:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit147
  %i.lj = load i64, ptr %i.kv, align 8            ; 3 uses
  %i.lk = and i64 %i.lj, 1152920405095219200
  %.not.i.i148 = icmp eq i64 %i.lk, 1152920405095219200
  br i1 %.not.i.i148, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit150, label %bb.bv, !prof !99

bb.bv:                                            ; preds = %bb.bu
  %i.ll = add i64 %i.lj, 1152920405095219200
  %i.lm = and i64 %i.ll, 1152920405095219200      ; 2 uses
  %i.ln = and i64 %i.lj, -1152920405095219201
  %i.lo = or disjoint i64 %i.lm, %i.ln
  store i64 %i.lo, ptr %i.kv, align 8
  %i.lp = icmp eq i64 %i.lm, 0
  br i1 %i.lp, label %bb.bw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit150, !prof !99

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit150 unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lq = landingpad { ptr, i32 }
          catch ptr null
  %i.lr = extractvalue { ptr, i32 } %i.lq, 0
  call void @__clang_call_terminate(ptr %i.lr) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit150: ; preds = %bb.bu, %bb.bv, %bb.bw
  %i.ls = load ptr, ptr %12, align 8, !tbaa !97   ; 3 uses
  %i.lt = load i64, ptr %i.ls, align 8            ; 3 uses
  %i.lu = and i64 %i.lt, 1152920405095219200
  %.not.i.i151 = icmp eq i64 %i.lu, 1152920405095219200
  br i1 %.not.i.i151, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit153, label %bb.by, !prof !99

bb.by:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit150
  %i.lv = add i64 %i.lt, 1152920405095219200
  %i.lw = and i64 %i.lv, 1152920405095219200      ; 2 uses
  %i.lx = and i64 %i.lt, -1152920405095219201
  %i.ly = or disjoint i64 %i.lw, %i.lx
  store i64 %i.ly, ptr %i.ls, align 8
  %i.lz = icmp eq i64 %i.lw, 0
  br i1 %i.lz, label %bb.bz, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit153, !prof !99

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ls)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit153 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ma = landingpad { ptr, i32 }
          catch ptr null
  %i.mb = extractvalue { ptr, i32 } %i.ma, 0
  call void @__clang_call_terminate(ptr %i.mb) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit153: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit150, %bb.by, %bb.bz
  br i1 %i.li, label %bb.dj, label %bb.cb

bb.cb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit153
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.mc = load ptr, ptr %10, align 8, !tbaa !196
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv.a
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !97 ; 10 uses
  store ptr %i.me, ptr %14, align 8, !tbaa !97
  %i.mf = load i64, ptr %i.me, align 8            ; 3 uses
  %i.mg = lshr i64 %i.mf, 40
  %i.mh = trunc nuw nsw i64 %i.mg to i32
  %i.mi = and i32 %i.mh, 1048575                  ; 3 uses
  %i.mj = icmp samesign ult i32 %i.mi, 1048574
  br i1 %i.mj, label %bb.cc, label %bb.cd, !prof !98

bb.cc:                                            ; preds = %bb.cb
  %i.mk = add nuw nsw i32 %i.mi, 1
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = shl nuw nsw i64 %i.ml, 40
  %i.mn = and i64 %i.mf, -1152920405095219201
  %i.mo = or i64 %i.mm, %i.mn
  store i64 %i.mo, ptr %i.me, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit155

bb.cd:                                            ; preds = %bb.cb
  %i.mp = icmp eq i32 %i.mi, 1048574
  br i1 %i.mp, label %bb.ce, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit155, !prof !99

bb.ce:                                            ; preds = %bb.cd
  %i.mq = or i64 %i.mf, 1152920405095219200
  store i64 %i.mq, ptr %i.me, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.me)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit155 unwind label %bb.dd

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit155: ; preds = %bb.cd, %bb.cc, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.mr = load ptr, ptr %10, align 8, !tbaa !196
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %indvars.iv397
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !97 ; 9 uses
  store ptr %i.mt, ptr %15, align 8, !tbaa !97
  %i.mu = load i64, ptr %i.mt, align 8            ; 3 uses
  %i.mv = lshr i64 %i.mu, 40
  %i.mw = trunc nuw nsw i64 %i.mv to i32
  %i.mx = and i32 %i.mw, 1048575                  ; 3 uses
  %i.my = icmp samesign ult i32 %i.mx, 1048574
  br i1 %i.my, label %bb.cf, label %bb.cg, !prof !98

bb.cf:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit155
  %i.mz = add nuw nsw i32 %i.mx, 1
  %i.na = zext nneg i32 %i.mz to i64
  %i.nb = shl nuw nsw i64 %i.na, 40
  %i.nc = and i64 %i.mu, -1152920405095219201
  %i.nd = or i64 %i.nb, %i.nc
  store i64 %i.nd, ptr %i.mt, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit157

bb.cg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit155
  %i.ne = icmp eq i32 %i.mx, 1048574
  br i1 %i.ne, label %bb.ch, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit157, !prof !99

bb.ch:                                            ; preds = %bb.cg
  %i.nf = or i64 %i.mu, 1152920405095219200
  store i64 %i.nf, ptr %i.mt, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mt)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit157 unwind label %bb.de

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit157: ; preds = %bb.cg, %bb.cf, %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !517
  %i.ng = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !192, !noalias !517
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef %i.nh, i32 noundef 5)
          to label %.noexc158 unwind label %bb.df

.noexc158:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit157
  store ptr %i.me, ptr %8, align 8, !tbaa !178, !noalias !517
  %i.ni = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull align 8 %8)
          to label %bb.ci unwind label %bb.ck, !noalias !517

bb.ci:                                            ; preds = %.noexc158
  store ptr %i.mt, ptr %9, align 8, !tbaa !178, !noalias !517
  %i.nj = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.ni, ptr noundef nonnull align 8 %9)
          to label %bb.cj unwind label %bb.ck, !noalias !517 ; 0 uses

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %16, ptr noundef nonnull align 8 dereferenceable(124) %7)
          to label %bb.cl unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %.noexc158
  %i.nk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !517
  br label %.body159

bb.cl:                                            ; preds = %bb.cj
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !517
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.nl = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EEixERKS4_(ptr noundef nonnull align 8 dereferenceable(112) %i.jf, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.cm unwind label %bb.dg     ; 3 uses

bb.cm:                                            ; preds = %bb.cl
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !64 ; 2 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !71
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !73
  %i.nr = getelementptr inbounds i8, ptr %i.nq, i64 -8
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !74
  %i.nt = icmp eq ptr %i.nn, %i.ns
  br i1 %i.nt, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(80) %i.nl)
          to label %bb.co unwind label %bb.dg

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nl, i64 48
  store i8 1, ptr %i.nu, align 8, !tbaa !161
  %i.nv = load i32, ptr %i.jg, align 8, !tbaa !168
  %i.nw = add i32 %i.nv, 1
  %i.nx = load ptr, ptr %i.jh, align 8, !tbaa !64 ; 2 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !71
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !73
  %i.ob = getelementptr inbounds i8, ptr %i.oa, i64 -8
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !74
  %i.od = icmp eq ptr %i.nx, %i.oc
  br i1 %i.od, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(44) %i.ji)
          to label %bb.cq unwind label %bb.dg

bb.cq:                                            ; preds = %bb.co, %bb.cp
  store i32 %i.nw, ptr %i.jg, align 8, !tbaa !75
  %i.oe = load ptr, ptr %16, align 8, !tbaa !97   ; 3 uses
  %i.of = load i64, ptr %i.oe, align 8            ; 3 uses
  %i.og = and i64 %i.of, 1152920405095219200
  %.not.i.i163 = icmp eq i64 %i.og, 1152920405095219200
  br i1 %.not.i.i163, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit165, label %bb.cr, !prof !99

bb.cr:                                            ; preds = %bb.cq
  %i.oh = add i64 %i.of, 1152920405095219200
  %i.oi = and i64 %i.oh, 1152920405095219200      ; 2 uses
  %i.oj = and i64 %i.of, -1152920405095219201
  %i.ok = or disjoint i64 %i.oi, %i.oj
  store i64 %i.ok, ptr %i.oe, align 8
  %i.ol = icmp eq i64 %i.oi, 0
  br i1 %i.ol, label %bb.cs, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit165, !prof !99

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.oe)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit165 unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.om = landingpad { ptr, i32 }
          catch ptr null
  %i.on = extractvalue { ptr, i32 } %i.om, 0
  call void @__clang_call_terminate(ptr %i.on) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit165: ; preds = %bb.cq, %bb.cr, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.oo = load i64, ptr %i.mt, align 8            ; 3 uses
  %i.op = and i64 %i.oo, 1152920405095219200
  %.not.i.i166 = icmp eq i64 %i.op, 1152920405095219200
  br i1 %.not.i.i166, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit168, label %bb.cu, !prof !99

bb.cu:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit165
  %i.oq = add i64 %i.oo, 1152920405095219200
  %i.or = and i64 %i.oq, 1152920405095219200      ; 2 uses
  %i.os = and i64 %i.oo, -1152920405095219201
  %i.ot = or disjoint i64 %i.or, %i.os
  store i64 %i.ot, ptr %i.mt, align 8
  %i.ou = icmp eq i64 %i.or, 0
  br i1 %i.ou, label %bb.cv, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit168, !prof !99

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mt)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit168 unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ov = landingpad { ptr, i32 }
          catch ptr null
  %i.ow = extractvalue { ptr, i32 } %i.ov, 0
  call void @__clang_call_terminate(ptr %i.ow) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit168: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit165, %bb.cu, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.ox = load i64, ptr %i.me, align 8            ; 3 uses
  %i.oy = and i64 %i.ox, 1152920405095219200
  %.not.i.i169 = icmp eq i64 %i.oy, 1152920405095219200
  br i1 %.not.i.i169, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit171, label %bb.cx, !prof !99

bb.cx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit168
  %i.oz = add i64 %i.ox, 1152920405095219200
  %i.pa = and i64 %i.oz, 1152920405095219200      ; 2 uses
  %i.pb = and i64 %i.ox, -1152920405095219201
  %i.pc = or disjoint i64 %i.pa, %i.pb
  store i64 %i.pc, ptr %i.me, align 8
  %i.pd = icmp eq i64 %i.pa, 0
  br i1 %i.pd, label %bb.cy, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit171, !prof !99

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.me)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit171 unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.pe = landingpad { ptr, i32 }
          catch ptr null
  %i.pf = extractvalue { ptr, i32 } %i.pe, 0
  call void @__clang_call_terminate(ptr %i.pf) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit171: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit168, %bb.cx, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.dj

bb.da:                                            ; preds = %bb.bt
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.db:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit147
  %i.ph = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #26
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.pn86 = phi { ptr, i32 } [ %i.ph, %bb.db ], [ %i.pg, %bb.da ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  br label %.loopexit.split-lp

bb.dd:                                            ; preds = %bb.ce
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.de:                                            ; preds = %bb.ch
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.df:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit157
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %.body159

bb.dg:                                            ; preds = %bb.cl, %bb.cn, %bb.cp
  %i.pl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #26
  br label %.body159

.body159:                                         ; preds = %bb.df, %bb.ck, %bb.dg
  %.pn88.pn = phi { ptr, i32 } [ %i.pl, %bb.dg ], [ %i.pk, %bb.df ], [ %i.nk, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #26
  br label %bb.dh

bb.dh:                                            ; preds = %.body159, %bb.de
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn88.pn, %.body159 ], [ %i.pj, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #26
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dd
  %.pn88.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn, %bb.dh ], [ %i.pi, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %.loopexit.split-lp

bb.dj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit153, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit171
  %indvars.iv.next398 = add nuw nsw i64 %indvars.iv397, 1 ; 2 uses
  %i.pm = load ptr, ptr %i.iw, align 8, !tbaa !193 ; 2 uses
  %i.pn = load ptr, ptr %10, align 8, !tbaa !196  ; 3 uses
  %i.po = ptrtoint ptr %i.pm to i64
  %i.pp = ptrtoint ptr %i.pn to i64
  %i.pq = sub i64 %i.po, %i.pp
  %i.pr = lshr exact i64 %i.pq, 3
  %i.ps = trunc i64 %i.pr to i32
  %i.pt = trunc nuw i64 %indvars.iv.next398 to i32
  %i.pu = icmp slt i32 %i.pt, %i.ps
  br i1 %i.pu, label %.lr.ph349, label %._crit_edge350, !llvm.loop !511

._crit_edge350:                                   ; preds = %bb.dj, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit144
  %i.pv = phi ptr [ %i.jw, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit144 ], [ %i.pn, %bb.dj ]
  %i.pw = phi ptr [ %i.jx, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit144 ], [ %i.pm, %bb.dj ]
  %i.px = load ptr, ptr %i.jj, align 8, !tbaa !164 ; 2 uses
  %.not277351 = icmp eq ptr %i.px, null
  br i1 %.not277351, label %.loopexit282, label %.lr.ph354

.lr.ph354:                                        ; preds = %._crit_edge350, %select.unfold
  %.sroa.0229.0352 = phi ptr [ %i.vh, %select.unfold ], [ %i.px, %._crit_edge350 ] ; 4 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.0229.0352, i64 40 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.0229.0352, i64 48
  %i.qa = load i8, ptr %i.pz, align 8, !tbaa !166, !range !162, !noundef !163
  %i.qb = trunc nuw i8 %i.qa to i1
  br i1 %i.qb, label %bb.dk, label %select.unfold

bb.dk:                                            ; preds = %.lr.ph354
  %i.qc = load ptr, ptr %i.py, align 8, !tbaa !97 ; 5 uses
  store ptr %i.qc, ptr %17, align 8, !tbaa !97
  %i.qd = load i64, ptr %i.qc, align 8            ; 3 uses
  %i.qe = lshr i64 %i.qd, 40
  %i.qf = trunc nuw nsw i64 %i.qe to i32
  %i.qg = and i32 %i.qf, 1048575                  ; 3 uses
  %i.qh = icmp samesign ult i32 %i.qg, 1048574
  br i1 %i.qh, label %bb.dl, label %bb.dm, !prof !98

bb.dl:                                            ; preds = %bb.dk
  %i.qi = add nuw nsw i32 %i.qg, 1
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = shl nuw nsw i64 %i.qj, 40
  %i.ql = and i64 %i.qd, -1152920405095219201
  %i.qm = or i64 %i.qk, %i.ql
  store i64 %i.qm, ptr %i.qc, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit173

bb.dm:                                            ; preds = %bb.dk
  %i.qn = icmp eq i32 %i.qg, 1048574
  br i1 %i.qn, label %bb.dn, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit173, !prof !99

bb.dn:                                            ; preds = %bb.dm
  %i.qo = or i64 %i.qd, 1152920405095219200
  store i64 %i.qo, ptr %i.qc, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit173 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit173: ; preds = %bb.dm, %bb.dl, %bb.dn
  %i.qp = load ptr, ptr %10, align 8, !tbaa !196
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.qp, i64 %indvars.iv.a
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !97 ; 8 uses
  store ptr %i.qr, ptr %18, align 8, !tbaa !97
  %i.qs = load i64, ptr %i.qr, align 8            ; 3 uses
  %i.qt = lshr i64 %i.qs, 40
  %i.qu = trunc nuw nsw i64 %i.qt to i32
  %i.qv = and i32 %i.qu, 1048575                  ; 3 uses
  %i.qw = icmp samesign ult i32 %i.qv, 1048574
  br i1 %i.qw, label %bb.do, label %bb.dp, !prof !98

bb.do:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit173
  %i.qx = add nuw nsw i32 %i.qv, 1
  %i.qy = zext nneg i32 %i.qx to i64
  %i.qz = shl nuw nsw i64 %i.qy, 40
  %i.ra = and i64 %i.qs, -1152920405095219201
  %i.rb = or i64 %i.qz, %i.ra
  store i64 %i.rb, ptr %i.qr, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit175

bb.dp:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit173
  %i.rc = icmp eq i32 %i.qv, 1048574
  br i1 %i.rc, label %bb.dq, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit175, !prof !99

bb.dq:                                            ; preds = %bb.dp
  %i.rd = or i64 %i.qs, 1152920405095219200
  store i64 %i.rd, ptr %i.qr, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit175 unwind label %bb.ew

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit175: ; preds = %bb.dp, %bb.do, %bb.dq
  %i.re = invoke noundef zeroext i1 @_ZN4cvc58internal6theory2uf20CardinalityExtension9SortModel6Region10isDisequalENS0_12NodeTemplateILb1EEES7_i(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 %17, ptr noundef nonnull align 8 %18, i32 noundef 1)
          to label %bb.dr unwind label %bb.ex

bb.dr:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit175
  %i.rf = load i64, ptr %i.qr, align 8            ; 3 uses
  %i.rg = and i64 %i.rf, 1152920405095219200
  %.not.i.i176 = icmp eq i64 %i.rg, 1152920405095219200
  br i1 %.not.i.i176, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit178, label %bb.ds, !prof !99

bb.ds:                                            ; preds = %bb.dr
  %i.rh = add i64 %i.rf, 1152920405095219200
  %i.ri = and i64 %i.rh, 1152920405095219200      ; 2 uses
  %i.rj = and i64 %i.rf, -1152920405095219201
  %i.rk = or disjoint i64 %i.ri, %i.rj
  store i64 %i.rk, ptr %i.qr, align 8
  %i.rl = icmp eq i64 %i.ri, 0
  br i1 %i.rl, label %bb.dt, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit178, !prof !99

bb.dt:                                            ; preds = %bb.ds
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit178 unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.rm = landingpad { ptr, i32 }
          catch ptr null
  %i.rn = extractvalue { ptr, i32 } %i.rm, 0
  call void @__clang_call_terminate(ptr %i.rn) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit178: ; preds = %bb.dr, %bb.ds, %bb.dt
  %i.ro = load ptr, ptr %17, align 8, !tbaa !97   ; 3 uses
  %i.rp = load i64, ptr %i.ro, align 8            ; 3 uses
  %i.rq = and i64 %i.rp, 1152920405095219200
  %.not.i.i179 = icmp eq i64 %i.rq, 1152920405095219200
  br i1 %.not.i.i179, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit181, label %bb.dv, !prof !99

bb.dv:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit178
  %i.rr = add i64 %i.rp, 1152920405095219200
  %i.rs = and i64 %i.rr, 1152920405095219200      ; 2 uses
  %i.rt = and i64 %i.rp, -1152920405095219201
  %i.ru = or disjoint i64 %i.rs, %i.rt
  store i64 %i.ru, ptr %i.ro, align 8
  %i.rv = icmp eq i64 %i.rs, 0
  br i1 %i.rv, label %bb.dw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit181, !prof !99

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ro)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit181 unwind label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.rw = landingpad { ptr, i32 }
          catch ptr null
  %i.rx = extractvalue { ptr, i32 } %i.rw, 0
  call void @__clang_call_terminate(ptr %i.rx) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit181: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit178, %bb.dv, %bb.dw
  br i1 %i.re, label %select.unfold, label %bb.dy

bb.dy:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit181
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.ry = load ptr, ptr %i.py, align 8, !tbaa !97 ; 10 uses
  store ptr %i.ry, ptr %19, align 8, !tbaa !97
  %i.rz = load i64, ptr %i.ry, align 8            ; 3 uses
  %i.sa = lshr i64 %i.rz, 40
  %i.sb = trunc nuw nsw i64 %i.sa to i32
  %i.sc = and i32 %i.sb, 1048575                  ; 3 uses
  %i.sd = icmp samesign ult i32 %i.sc, 1048574
  br i1 %i.sd, label %bb.dz, label %bb.ea, !prof !98

bb.dz:                                            ; preds = %bb.dy
  %i.se = add nuw nsw i32 %i.sc, 1
  %i.sf = zext nneg i32 %i.se to i64
  %i.sg = shl nuw nsw i64 %i.sf, 40
  %i.sh = and i64 %i.rz, -1152920405095219201
  %i.si = or i64 %i.sg, %i.sh
  store i64 %i.si, ptr %i.ry, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit183

bb.ea:                                            ; preds = %bb.dy
  %i.sj = icmp eq i32 %i.sc, 1048574
  br i1 %i.sj, label %bb.eb, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit183, !prof !99

bb.eb:                                            ; preds = %bb.ea
  %i.sk = or i64 %i.rz, 1152920405095219200
  store i64 %i.sk, ptr %i.ry, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ry)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit183 unwind label %bb.ez

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit183: ; preds = %bb.ea, %bb.dz, %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.sl = load ptr, ptr %10, align 8, !tbaa !196
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %indvars.iv.a
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !97 ; 9 uses
  store ptr %i.sn, ptr %20, align 8, !tbaa !97
  %i.so = load i64, ptr %i.sn, align 8            ; 3 uses
  %i.sp = lshr i64 %i.so, 40
  %i.sq = trunc nuw nsw i64 %i.sp to i32
  %i.sr = and i32 %i.sq, 1048575                  ; 3 uses
  %i.ss = icmp samesign ult i32 %i.sr, 1048574
  br i1 %i.ss, label %bb.ec, label %bb.ed, !prof !98

bb.ec:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit183
  %i.st = add nuw nsw i32 %i.sr, 1
  %i.su = zext nneg i32 %i.st to i64
  %i.sv = shl nuw nsw i64 %i.su, 40
  %i.sw = and i64 %i.so, -1152920405095219201
  %i.sx = or i64 %i.sv, %i.sw
  store i64 %i.sx, ptr %i.sn, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit185

bb.ed:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit183
  %i.sy = icmp eq i32 %i.sr, 1048574
  br i1 %i.sy, label %bb.ee, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit185, !prof !99

bb.ee:                                            ; preds = %bb.ed
  %i.sz = or i64 %i.so, 1152920405095219200
  store i64 %i.sz, ptr %i.sn, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.sn)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit185 unwind label %bb.fa

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit185: ; preds = %bb.ed, %bb.ec, %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !518
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !518
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !519
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !192, !noalias !519
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef %i.tb, i32 noundef 5)
          to label %.noexc186 unwind label %bb.fb

.noexc186:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit185
  store ptr %i.ry, ptr %5, align 8, !tbaa !178, !noalias !519
  %i.tc = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef nonnull align 8 %5)
          to label %bb.ef unwind label %.body.i, !noalias !519

bb.ef:                                            ; preds = %.noexc186
  store ptr %i.sn, ptr %6, align 8, !tbaa !178, !noalias !519
  %i.td = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.tc, ptr noundef nonnull align 8 %6)
          to label %bb.eg unwind label %.body.i, !noalias !519 ; 0 uses

bb.eg:                                            ; preds = %bb.ef
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %21, ptr noundef nonnull align 8 dereferenceable(124) %4)
          to label %bb.eh unwind label %.body.i

.body.i:                                          ; preds = %bb.eg, %bb.ef, %.noexc186
  %i.te = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !519
  br label %.body187

bb.eh:                                            ; preds = %bb.eg
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !519
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !518
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !518
  %i.tf = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EEixERKS4_(ptr noundef nonnull align 8 dereferenceable(112) %i.jf, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.ei unwind label %bb.fc     ; 3 uses

bb.ei:                                            ; preds = %bb.eh
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !64 ; 2 uses
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !71
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 16
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !73
  %i.tl = getelementptr inbounds i8, ptr %i.tk, i64 -8
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !74
  %i.tn = icmp eq ptr %i.th, %i.tm
  br i1 %i.tn, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  invoke void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(80) %i.tf)
          to label %bb.ek unwind label %bb.fc

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.to = getelementptr inbounds nuw i8, ptr %i.tf, i64 48
  store i8 1, ptr %i.to, align 8, !tbaa !161
  %i.tp = load i32, ptr %i.jg, align 8, !tbaa !168
  %i.tq = add i32 %i.tp, 1
  %i.tr = load ptr, ptr %i.jh, align 8, !tbaa !64 ; 2 uses
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !71
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !73
  %i.tv = getelementptr inbounds i8, ptr %i.tu, i64 -8
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !74
  %i.tx = icmp eq ptr %i.tr, %i.tw
  br i1 %i.tx, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  invoke void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(44) %i.ji)
          to label %bb.em unwind label %bb.fc

bb.em:                                            ; preds = %bb.ek, %bb.el
  store i32 %i.tq, ptr %i.jg, align 8, !tbaa !75
  %i.ty = load ptr, ptr %21, align 8, !tbaa !97   ; 3 uses
  %i.tz = load i64, ptr %i.ty, align 8            ; 3 uses
  %i.ua = and i64 %i.tz, 1152920405095219200
  %.not.i.i193 = icmp eq i64 %i.ua, 1152920405095219200
  br i1 %.not.i.i193, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit195, label %bb.en, !prof !99

bb.en:                                            ; preds = %bb.em
  %i.ub = add i64 %i.tz, 1152920405095219200
  %i.uc = and i64 %i.ub, 1152920405095219200      ; 2 uses
  %i.ud = and i64 %i.tz, -1152920405095219201
  %i.ue = or disjoint i64 %i.uc, %i.ud
  store i64 %i.ue, ptr %i.ty, align 8
  %i.uf = icmp eq i64 %i.uc, 0
  br i1 %i.uf, label %bb.eo, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit195, !prof !99

bb.eo:                                            ; preds = %bb.en
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ty)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit195 unwind label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.ug = landingpad { ptr, i32 }
          catch ptr null
  %i.uh = extractvalue { ptr, i32 } %i.ug, 0
  call void @__clang_call_terminate(ptr %i.uh) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit195: ; preds = %bb.em, %bb.en, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.ui = load i64, ptr %i.sn, align 8            ; 3 uses
  %i.uj = and i64 %i.ui, 1152920405095219200
  %.not.i.i196 = icmp eq i64 %i.uj, 1152920405095219200
  br i1 %.not.i.i196, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit198, label %bb.eq, !prof !99

bb.eq:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit195
  %i.uk = add i64 %i.ui, 1152920405095219200
  %i.ul = and i64 %i.uk, 1152920405095219200      ; 2 uses
  %i.um = and i64 %i.ui, -1152920405095219201
  %i.un = or disjoint i64 %i.ul, %i.um
  store i64 %i.un, ptr %i.sn, align 8
  %i.uo = icmp eq i64 %i.ul, 0
  br i1 %i.uo, label %bb.er, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit198, !prof !99

bb.er:                                            ; preds = %bb.eq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.sn)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit198 unwind label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.up = landingpad { ptr, i32 }
          catch ptr null
  %i.uq = extractvalue { ptr, i32 } %i.up, 0
  call void @__clang_call_terminate(ptr %i.uq) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit198: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit195, %bb.eq, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.ur = load i64, ptr %i.ry, align 8            ; 3 uses
  %i.us = and i64 %i.ur, 1152920405095219200
  %.not.i.i199 = icmp eq i64 %i.us, 1152920405095219200
  br i1 %.not.i.i199, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit201, label %bb.et, !prof !99

bb.et:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit198
  %i.ut = add i64 %i.ur, 1152920405095219200
  %i.uu = and i64 %i.ut, 1152920405095219200      ; 2 uses
  %i.uv = and i64 %i.ur, -1152920405095219201
  %i.uw = or disjoint i64 %i.uu, %i.uv
  store i64 %i.uw, ptr %i.ry, align 8
  %i.ux = icmp eq i64 %i.uu, 0
  br i1 %i.ux, label %bb.eu, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit201, !prof !99

bb.eu:                                            ; preds = %bb.et
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ry)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit201 unwind label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.uy = landingpad { ptr, i32 }
          catch ptr null
  %i.uz = extractvalue { ptr, i32 } %i.uy, 0
  call void @__clang_call_terminate(ptr %i.uz) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit201: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit198, %bb.et, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %select.unfold

bb.ew:                                            ; preds = %bb.dq
  %i.va = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.ex:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit175
  %i.vb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #26
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.pn77 = phi { ptr, i32 } [ %i.vb, %bb.ex ], [ %i.va, %bb.ew ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #26
end_hunk_0
