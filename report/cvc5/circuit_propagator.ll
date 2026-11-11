Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/circuit_propagator?download=true
inline.NumInlined: 2405
inline.NumDeleted: 739
begin_hunk_0_@_ZN4cvc58internal6theory8booleans17CircuitPropagator16computeBackEdgesENS0_12NodeTemplateILb0EEE:bb.a
bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %i.t, %bb.e ], [ %.sroa.06.0.i.i.i.i.i, %bb.g ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !125 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, label %bb.f, !llvm.loop !3

bb.h:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 2 uses
  %i.z = invoke noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc48 unwind label %bb.w   ; 3 uses

.noexc48:                                         ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !48 ; 2 uses
  %i.ac = urem i64 %i.z, %i.ab                    ; 2 uses
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  %.pre = load ptr, ptr %4, align 8               ; 7 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, label %bb.i

bb.i:                                             ; preds = %.noexc48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !125 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !154
  %i.ak = icmp eq i64 %i.z, %i.aj
  %i.al = load ptr, ptr %i.ah, align 8
  %i.am = icmp eq ptr %.pre, %i.al
  %i.an = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %i.an, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, label %.lr.ph.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ap = icmp eq i64 %i.z, %i.av
  %i.aq = load ptr, ptr %i.ao, align 8
  %i.ar = icmp eq ptr %.pre, %i.aq
  %i.as = select i1 %i.ap, i1 %i.ar, i1 false
  br i1 %i.as, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.i, %bb.j
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.at, %bb.j ], [ %i.ag, %bb.i ]
  %i.at = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !125 ; 5 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not18.i.i.i.i.i.i.i, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !154 ; 2 uses
  %i.aw = urem i64 %i.av, %i.ab
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.aw, %i.ac
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !4

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.k
  br label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, !llvm.loop !4

_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i, %bb.f, %bb.g, %.noexc48, %bb.i, %..loopexit_crit_edge21.i.i.i.i.i.i.i
  %i.ax = phi ptr [ %.pre, %..loopexit_crit_edge21.i.i.i.i.i.i.i ], [ %i.u, %bb.f ], [ %.pre, %bb.i ], [ %.pre, %.noexc48 ], [ %i.u, %bb.g ], [ %.pre, %.lr.ph.i.i.i.i.i.i.i ], [ %.pre, %bb.j ] ; 3 uses
  %.sroa.06.1.i.i.i.i.i = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i.i.i.i ], [ null, %bb.f ], [ %i.ag, %bb.i ], [ null, %.noexc48 ], [ %.sroa.06.0.i.i.i.i.i, %bb.g ], [ %i.at, %bb.j ], [ null, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ay = icmp eq ptr %.sroa.06.1.i.i.i.i.i, null
  %i.az = load i64, ptr %i.ax, align 8            ; 3 uses
  %i.ba = and i64 %i.az, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ba, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.l, !prof !33

bb.l:                                             ; preds = %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit
  %i.bb = add i64 %i.az, 1152920405095219200
  %i.bc = and i64 %i.bb, 1152920405095219200      ; 2 uses
  %i.bd = and i64 %i.az, -1152920405095219201
  %i.be = or disjoint i64 %i.bc, %i.bd
  store i64 %i.be, ptr %i.ax, align 8
  %i.bf = icmp eq i64 %i.bc, 0
  br i1 %i.bf, label %bb.m, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !33

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %i.ay, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, label %bb.aa

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.bi = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #23 ; 4 uses
  %i.bj = load ptr, ptr %1, align 8, !tbaa !133   ; 6 uses
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !133
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.bj, ptr %5, align 8, !tbaa !31
  %i.bl = load i64, ptr %i.bj, align 8            ; 3 uses
  %i.bm = lshr i64 %i.bl, 40
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = and i32 %i.bn, 1048575                  ; 3 uses
  %i.bp = icmp samesign ult i32 %i.bo, 1048574
  br i1 %i.bp, label %bb.o, label %bb.p, !prof !123

bb.o:                                             ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.bq = add nuw nsw i32 %i.bo, 1
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 40
  %i.bt = and i64 %i.bl, -1152920405095219201
  %i.bu = or i64 %i.bs, %i.bt
  store i64 %i.bu, ptr %i.bj, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit55

bb.p:                                             ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.bv = icmp eq i32 %i.bo, 1048574
  br i1 %i.bv, label %bb.q, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit55, !prof !33

bb.q:                                             ; preds = %bb.p
  %i.bw = or i64 %i.bl, 1152920405095219200
  store i64 %i.bw, ptr %i.bj, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit55 unwind label %bb.y

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit55: ; preds = %bb.p, %bb.o, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 1, ptr %i.a, align 1, !tbaa !134
  %i.bx = invoke noundef zeroext i1 @_ZN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE11insert_safeERKS4_RKb(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.r unwind label %bb.z       ; 0 uses

bb.r:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.by = load ptr, ptr %5, align 8, !tbaa !31    ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8            ; 3 uses
  %i.ca = and i64 %i.bz, 1152920405095219200
  %.not.i.i57 = icmp eq i64 %i.ca, 1152920405095219200
  br i1 %.not.i.i57, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit58, label %bb.s, !prof !33

bb.s:                                             ; preds = %bb.r
  %i.cb = add i64 %i.bz, 1152920405095219200
  %i.cc = and i64 %i.cb, 1152920405095219200      ; 2 uses
  %i.cd = and i64 %i.bz, -1152920405095219201
  %i.ce = or disjoint i64 %i.cc, %i.cd
  store i64 %i.ce, ptr %i.by, align 8
  %i.cf = icmp eq i64 %i.cc, 0
  br i1 %i.cf, label %bb.t, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit58, !prof !33

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit58 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit58: ; preds = %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.aa

bb.v:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.h
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.w ], [ %i.ci, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit135

bb.y:                                             ; preds = %bb.q
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.thread200

bb.z:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit55
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  br label %.thread200

.thread200:                                       ; preds = %bb.y, %bb.z
  %.pn29 = phi { ptr, i32 } [ %i.cl, %bb.z ], [ %i.ck, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.dy

bb.aa:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit58, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %.sroa.0179.0 = phi ptr [ %i.bi, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit58 ], [ null, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ] ; 5 uses
  %.sroa.12.0 = phi ptr [ %i.bk, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit58 ], [ null, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ] ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.cn = load ptr, ptr %1, align 8, !tbaa !133   ; 5 uses
  store ptr %i.cn, ptr %6, align 8, !tbaa !31
  %i.co = load i64, ptr %i.cn, align 8            ; 3 uses
  %i.cp = lshr i64 %i.co, 40
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = and i32 %i.cq, 1048575                  ; 3 uses
  %i.cs = icmp samesign ult i32 %i.cr, 1048574
  br i1 %i.cs, label %bb.ab, label %bb.ac, !prof !123

bb.ab:                                            ; preds = %bb.aa
  %i.ct = add nuw nsw i32 %i.cr, 1
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = shl nuw nsw i64 %i.cu, 40
  %i.cw = and i64 %i.co, -1152920405095219201
  %i.cx = or i64 %i.cv, %i.cw
  store i64 %i.cx, ptr %i.cn, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit60

bb.ac:                                            ; preds = %bb.aa
  %i.cy = icmp eq i32 %i.cr, 1048574
  br i1 %i.cy, label %bb.ad, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit60, !prof !33

bb.ad:                                            ; preds = %bb.ac
  %i.cz = or i64 %i.co, 1152920405095219200
  store i64 %i.cz, ptr %i.cn, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit60 unwind label %bb.ai

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit60: ; preds = %bb.ac, %bb.ab, %bb.ad
  %i.da = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS4_St6vectorIS4_SaIS4_EEESaISA_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEEixEOS3_.exit unwind label %bb.aj ; 0 uses

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEEixEOS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit60
  %i.db = load ptr, ptr %6, align 8, !tbaa !31    ; 3 uses
  %i.dc = load i64, ptr %i.db, align 8            ; 3 uses
  %i.dd = and i64 %i.dc, 1152920405095219200
  %.not.i.i62 = icmp eq i64 %i.dd, 1152920405095219200
  br i1 %.not.i.i62, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit63, label %bb.ae, !prof !33

bb.ae:                                            ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEEixEOS3_.exit
  %i.de = add i64 %i.dc, 1152920405095219200
  %i.df = and i64 %i.de, 1152920405095219200      ; 2 uses
  %i.dg = and i64 %i.dc, -1152920405095219201
  %i.dh = or disjoint i64 %i.df, %i.dg
  store i64 %i.dh, ptr %i.db, align 8
  %i.di = icmp eq i64 %i.df, 0
  br i1 %i.di, label %bb.af, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit63, !prof !33

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.db)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit63 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit63: ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEEixEOS3_.exit, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %.not = icmp eq ptr %.sroa.12.0, %.sroa.0179.0
  br i1 %.not, label %._crit_edge, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit79.lr.ph

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit79.lr.ph: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit63
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit79

._crit_edge:                                      ; preds = %.loopexit212, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit63
  %.sroa.0179.1.lcssa = phi ptr [ %.sroa.0179.0, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit63 ], [ %.sroa.0179.6, %.loopexit212 ] ; 3 uses
  %.sroa.19.1.lcssa = phi ptr [ %.sroa.0179.0, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit63 ], [ %.sroa.19.6, %.loopexit212 ]
  %.not.i.i.i64 = icmp eq ptr %.sroa.0179.1.lcssa, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge
  %.lcssa296 = ptrtoint ptr %.sroa.0179.1.lcssa to i64
  %i.dq = ptrtoint ptr %.sroa.19.1.lcssa to i64
  %i.dr = sub i64 %i.dq, %.lcssa296
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0179.1.lcssa, i64 noundef %i.dr) #25
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.ah
  ret void

bb.ai:                                            ; preds = %bb.ad
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit60
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn31 = phi { ptr, i32 } [ %i.dt, %bb.aj ], [ %i.ds, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.dx

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit79: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit79.lr.ph, %.loopexit212
  %i.du = phi i64 [ 0, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit79.lr.ph ], [ %i.rg, %.loopexit212 ]
  %.09363 = phi i32 [ 0, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit79.lr.ph ], [ %i.rf, %.loopexit212 ]
  %.sroa.19.1362 = phi ptr [ %.sroa.12.0, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit79.lr.ph ], [ %.sroa.19.6, %.loopexit212 ] ; 4 uses
  %.sroa.12.1361 = phi ptr [ %.sroa.12.0, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit79.lr.ph ], [ %.sroa.12.4, %.loopexit212 ] ; 3 uses
  %.sroa.0179.1360 = phi ptr [ %.sroa.0179.0, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit79.lr.ph ], [ %.sroa.0179.6, %.loopexit212 ] ; 5 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0179.1360, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !133 ; 8 uses
  store ptr %i.dw, ptr %7, align 8, !tbaa !133
  %i.dx = invoke noundef i32 @_ZN4cvc58internal6theory6Theory8theoryOfENS0_12NodeTemplateILb0EEENS0_7options12TheoryOfModeENS1_8TheoryIdE(ptr noundef nonnull align 8 %7, i32 noundef 0, i32 noundef 2)
          to label %bb.al unwind label %.thread

bb.al:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit79
  %i.dy = icmp eq i32 %i.dx, 1
  br i1 %i.dy, label %bb.am, label %.loopexit212

bb.am:                                            ; preds = %bb.al
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 3 uses
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = and i32 %i.eb, 1023                     ; 2 uses
  %i.ed = icmp eq i32 %i.ec, 1023
  %i.ee = select i1 %i.ed, i32 -1, i32 %i.ec
  %i.ef = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ee)
          to label %bb.an unwind label %.thread

bb.an:                                            ; preds = %bb.am
  %i.eg = icmp eq i32 %i.ef, 2
  %i.eh = load i64, ptr %i.dz, align 8
  %i.ei = lshr i64 %i.eh, 32
  %i.ej = and i64 %i.ei, 67108863
  %i.ek = sext i1 %i.eg to i64
  %i.el = add nsw i64 %i.ej, %i.ek                ; 2 uses
  %.not367 = icmp eq i64 %i.el, 0
  br i1 %.not367, label %.loopexit212, label %.lr.ph

.lr.ph:                                           ; preds = %bb.an
  %i.em = trunc nsw i64 %i.el to i32
  %i.en = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  br label %bb.ao

.thread:                                          ; preds = %bb.am, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit79
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.ao:                                            ; preds = %.lr.ph, %bb.dw
  %.0357 = phi i32 [ 0, %.lr.ph ], [ %i.re, %bb.dw ] ; 2 uses
  %.sroa.19.2356 = phi ptr [ %.sroa.19.1362, %.lr.ph ], [ %.sroa.19.3, %bb.dw ] ; 9 uses
  %.sroa.12.2355 = phi ptr [ %.sroa.12.1361, %.lr.ph ], [ %.sroa.12.3, %bb.dw ] ; 4 uses
  %.sroa.0179.2354 = phi ptr [ %.sroa.0179.1360, %.lr.ph ], [ %.sroa.0179.3, %bb.dw ] ; 12 uses
  %i.ep = load i64, ptr %i.dz, align 8, !noalias !251
  %i.eq = trunc i64 %i.ep to i32
  %i.er = and i32 %i.eq, 1023                     ; 2 uses
  %i.es = icmp eq i32 %i.er, 1023
  %i.et = select i1 %i.es, i32 -1, i32 %i.er
  %i.eu = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.et)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %bb.ao
  %i.ev = icmp eq i32 %i.eu, 2
  %i.ew = zext i1 %i.ev to i32
  %spec.select.i.i = add nuw nsw i32 %.0357, %i.ew
  %i.ex = sext i32 %spec.select.i.i to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.ex
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !30, !noalias !251 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.ez, ptr %8, align 8, !tbaa !31
  %i.fa = load i64, ptr %i.ez, align 8            ; 3 uses
  %i.fb = lshr i64 %i.fa, 40
  %i.fc = trunc nuw nsw i64 %i.fb to i32
  %i.fd = and i32 %i.fc, 1048575                  ; 3 uses
  %i.fe = icmp samesign ult i32 %i.fd, 1048574
  br i1 %i.fe, label %bb.aq, label %bb.ar, !prof !123

bb.aq:                                            ; preds = %bb.ap
  %i.ff = add nuw nsw i32 %i.fd, 1
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = shl nuw nsw i64 %i.fg, 40
  %i.fi = and i64 %i.fa, -1152920405095219201
  %i.fj = or i64 %i.fh, %i.fi
  store i64 %i.fj, ptr %i.ez, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit83

bb.ar:                                            ; preds = %bb.ap
  %i.fk = icmp eq i32 %i.fd, 1048574
  br i1 %i.fk, label %bb.as, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit83, !prof !33

bb.as:                                            ; preds = %bb.ar
  %i.fl = or i64 %i.fa, 1152920405095219200
  store i64 %i.fl, ptr %i.ez, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ez)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit83 unwind label %bb.dk

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit83: ; preds = %bb.ar, %bb.aq, %bb.as
  %i.fm = invoke noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc149 unwind label %bb.dl ; 4 uses

.noexc149:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit83
  %i.fn = load i64, ptr %i.dl, align 8, !tbaa !44 ; 2 uses
  %i.fo = urem i64 %i.fm, %i.fn                   ; 3 uses
  %i.fp = load ptr, ptr %i.cm, align 8, !tbaa !43
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fo
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.i147 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i147, label %.loopexit.i148, label %bb.at

bb.at:                                            ; preds = %.noexc149
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !125 ; 4 uses
  %i.ft = load ptr, ptr %8, align 8               ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !154
  %i.fx = icmp eq i64 %i.fm, %i.fw
  %i.fy = load ptr, ptr %i.fu, align 8
  %i.fz = icmp eq ptr %i.ft, %i.fy
  %i.ga = select i1 %i.fx, i1 %i.fz, i1 false
  br i1 %i.ga, label %.loopexit, label %.lr.ph.i.i.i

bb.au:                                            ; preds = %bb.av
  %i.gb = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gc = icmp eq i64 %i.fm, %i.gi
  %i.gd = load ptr, ptr %i.gb, align 8
  %i.ge = icmp eq ptr %i.ft, %i.gd
  %i.gf = select i1 %i.gc, i1 %i.ge, i1 false
  br i1 %i.gf, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !5

.lr.ph.i.i.i:                                     ; preds = %bb.at, %bb.au
  %.020.i.i.i = phi ptr [ %i.gg, %bb.au ], [ %i.fs, %bb.at ]
  %i.gg = load ptr, ptr %.020.i.i.i, align 8, !tbaa !125 ; 5 uses
  %.not18.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not18.i.i.i, label %.loopexit.i148, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !154 ; 2 uses
  %i.gj = urem i64 %i.gi, %i.fn
  %.not19.i.i.i = icmp eq i64 %i.gj, %i.fo
  br i1 %.not19.i.i.i, label %bb.au, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !5

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.av
  br label %.loopexit.i148, !llvm.loop !5

.loopexit.i148:                                   ; preds = %.lr.ph.i.i.i, %..loopexit_crit_edge21.i.i.i, %.noexc149
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.cm, ptr %3, align 8, !tbaa !158
  %i.gk = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23
          to label %.noexc155 unwind label %bb.dl ; 6 uses

.noexc155:                                        ; preds = %.loopexit.i148
  store ptr null, ptr %i.gk, align 8, !tbaa !125
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %8, align 8, !tbaa !31    ; 5 uses
  store ptr %i.gm, ptr %i.gl, align 8, !tbaa !31
  %i.gn = load i64, ptr %i.gm, align 8            ; 3 uses
  %i.go = lshr i64 %i.gn, 40
  %i.gp = trunc nuw nsw i64 %i.go to i32
  %i.gq = and i32 %i.gp, 1048575                  ; 3 uses
  %i.gr = icmp samesign ult i32 %i.gq, 1048574
  br i1 %i.gr, label %bb.aw, label %bb.ax, !prof !123

bb.aw:                                            ; preds = %.noexc155
  %i.gs = add nuw nsw i32 %i.gq, 1
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = shl nuw nsw i64 %i.gt, 40
  %i.gv = and i64 %i.gn, -1152920405095219201
  %i.gw = or i64 %i.gu, %i.gv
  store i64 %i.gw, ptr %i.gm, align 8
  br label %.noexc150

bb.ax:                                            ; preds = %.noexc155
  %i.gx = icmp eq i32 %i.gq, 1048574
  br i1 %i.gx, label %bb.ay, label %.noexc150, !prof !33

bb.ay:                                            ; preds = %bb.ax
  %i.gy = or i64 %i.gn, 1152920405095219200
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory8booleans17CircuitPropagator16computeBackEdgesENS0_12NodeTemplateILb0EEE:bb.a

bb.cy:                                            ; preds = %_ZNSt13unordered_mapIKN4cvc58internal12NodeTemplateILb1EEEKbSt4hashIS3_ESt8equal_toIS4_ESaISt4pairIS4_S5_EEE6insertISA_IS3_bEEENSt9enable_ifIXsr16is_constructibleISB_OT_EE5valueESA_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEE4typeESI_.exit.i
  %i.pk = add i64 %i.pi, 1152920405095219200
  %i.pl = and i64 %i.pk, 1152920405095219200      ; 2 uses
  %i.pm = and i64 %i.pi, -1152920405095219201
  %i.pn = or disjoint i64 %i.pl, %i.pm
  store i64 %i.pn, ptr %i.ph, align 8
  %i.po = icmp eq i64 %i.pl, 0
  br i1 %i.po, label %bb.cz, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEbED2Ev.exit.i, !prof !33

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ph)
          to label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEbED2Ev.exit.i unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.pp = landingpad { ptr, i32 }
          catch ptr null
  %i.pq = extractvalue { ptr, i32 } %i.pp, 0
  call void @__clang_call_terminate(ptr %i.pq) #24
  unreachable

_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEbED2Ev.exit.i: ; preds = %bb.cz, %bb.cy, %_ZNSt13unordered_mapIKN4cvc58internal12NodeTemplateILb1EEEKbSt4hashIS3_ESt8equal_toIS4_ESaISt4pairIS4_S5_EEE6insertISA_IS3_bEEENSt9enable_ifIXsr16is_constructibleISB_OT_EE5valueESA_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEE4typeESI_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.pr = getelementptr inbounds nuw i8, ptr %i.or, i64 48 ; 3 uses
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !171 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.or, i64 64
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !172
  %i.pv = getelementptr inbounds i8, ptr %i.pu, i64 -8
  %.not.i.i158 = icmp eq ptr %i.ps, %i.pv
  br i1 %.not.i.i158, label %bb.df, label %bb.db

bb.db:                                            ; preds = %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEbED2Ev.exit.i
  %i.pw = load ptr, ptr %11, align 8, !tbaa !31   ; 5 uses
  store ptr %i.pw, ptr %i.ps, align 8, !tbaa !31
  %i.px = load i64, ptr %i.pw, align 8            ; 3 uses
  %i.py = lshr i64 %i.px, 40
  %i.pz = trunc nuw nsw i64 %i.py to i32
  %i.qa = and i32 %i.pz, 1048575                  ; 3 uses
  %i.qb = icmp samesign ult i32 %i.qa, 1048574
  br i1 %i.qb, label %bb.dc, label %bb.dd, !prof !123

bb.dc:                                            ; preds = %bb.db
  %i.qc = add nuw nsw i32 %i.qa, 1
  %i.qd = zext nneg i32 %i.qc to i64
  %i.qe = shl nuw nsw i64 %i.qd, 40
  %i.qf = and i64 %i.px, -1152920405095219201
  %i.qg = or i64 %i.qe, %i.qf
  store i64 %i.qg, ptr %i.pw, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i159

bb.dd:                                            ; preds = %bb.db
  %i.qh = icmp eq i32 %i.qa, 1048574
  br i1 %i.qh, label %bb.de, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i159, !prof !33

bb.de:                                            ; preds = %bb.dd
  %i.qi = or i64 %i.px, 1152920405095219200
  store i64 %i.qi, ptr %i.pw, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.pw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i159 unwind label %bb.du

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i159: ; preds = %bb.de, %bb.dd, %bb.dc
  %i.qj = load ptr, ptr %i.pr, align 8, !tbaa !171
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  store ptr %i.qk, ptr %i.pr, align 8, !tbaa !171
  br label %_ZN4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE6insertERKS4_.exit131

bb.df:                                            ; preds = %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEbED2Ev.exit.i
  invoke void @_ZNSt5dequeIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(136) %i.or, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZN4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE6insertERKS4_.exit131 unwind label %bb.du

bb.dg:                                            ; preds = %_ZSt9make_pairIRKN4cvc58internal12NodeTemplateILb1EEERKbESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_.exit.i
  %i.ql = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEbED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %.body163

_ZN4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE6insertERKS4_.exit131: ; preds = %bb.cs, %bb.cp, %bb.df, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i159, %bb.cr
  %i.qm = load ptr, ptr %11, align 8, !tbaa !31   ; 3 uses
  %i.qn = load i64, ptr %i.qm, align 8            ; 3 uses
  %i.qo = and i64 %i.qn, 1152920405095219200
  %.not.i.i132 = icmp eq i64 %i.qo, 1152920405095219200
  br i1 %.not.i.i132, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit133, label %bb.dh, !prof !33

bb.dh:                                            ; preds = %_ZN4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE6insertERKS4_.exit131
  %i.qp = add i64 %i.qn, 1152920405095219200
  %i.qq = and i64 %i.qp, 1152920405095219200      ; 2 uses
  %i.qr = and i64 %i.qn, -1152920405095219201
  %i.qs = or disjoint i64 %i.qq, %i.qr
  store i64 %i.qs, ptr %i.qm, align 8
  %i.qt = icmp eq i64 %i.qq, 0
  br i1 %i.qt, label %bb.di, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit133, !prof !33

bb.di:                                            ; preds = %bb.dh
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qm)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit133 unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.qu = landingpad { ptr, i32 }
          catch ptr null
  %i.qv = extractvalue { ptr, i32 } %i.qu, 0
  call void @__clang_call_terminate(ptr %i.qv) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit133: ; preds = %_ZN4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE6insertERKS4_.exit131, %bb.dh, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.dw

bb.dk:                                            ; preds = %bb.as
  %i.qw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dl:                                            ; preds = %.loopexit.i148, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit83
  %i.qx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dm:                                            ; preds = %bb.bg
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.dn:                                            ; preds = %bb.bl, %bb.bk
  %i.qz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #22
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.pn33 = phi { ptr, i32 } [ %i.qz, %bb.dn ], [ %i.qy, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %.body

.body:                                            ; preds = %bb.bd, %bb.ba, %bb.dl, %bb.do
  %.pn33.pn = phi { ptr, i32 } [ %.pn33, %bb.do ], [ %i.hh, %bb.bd ], [ %i.qx, %bb.dl ], [ %i.hc, %bb.ba ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #22
  br label %bb.dp

bb.dp:                                            ; preds = %.body, %bb.dk
  %.pn33.pn.pn = phi { ptr, i32 } [ %.pn33.pn, %.body ], [ %i.qw, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.dx

bb.dq:                                            ; preds = %bb.bu
  %i.ra = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dr:                                            ; preds = %bb.by
  %i.rb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #22
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.pn37.pn = phi { ptr, i32 } [ %i.rb, %bb.dr ], [ %i.ra, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.dx

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ao, %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i113, %bb.ci
  %lpad.loopexit.split-lp730 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dt:                                            ; preds = %bb.cm
  %i.rc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.du:                                            ; preds = %bb.df, %bb.de, %bb.cx, %bb.cu, %bb.cq
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %.body163

.body163:                                         ; preds = %bb.dg, %bb.du
  %eh.lpad-body164 = phi { ptr, i32 } [ %i.rd, %bb.du ], [ %i.ql, %bb.dg ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #22
  br label %bb.dv

bb.dv:                                            ; preds = %.body163, %bb.dt
  %.pn40 = phi { ptr, i32 } [ %eh.lpad-body164, %.body163 ], [ %i.rc, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.dx

bb.dw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit133, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit111
  %.sroa.0179.3 = phi ptr [ %.sroa.0179.10, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit133 ], [ %.sroa.0179.2354, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit111 ] ; 2 uses
  %.sroa.12.3 = phi ptr [ %.sroa.12.6, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit133 ], [ %.sroa.12.2355, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit111 ] ; 2 uses
  %.sroa.19.3 = phi ptr [ %.sroa.19.10, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit133 ], [ %.sroa.19.2356, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit111 ] ; 2 uses
  %i.re = add nuw i32 %.0357, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.re, %i.em
  br i1 %exitcond.not, label %.loopexit212, label %bb.ao, !llvm.loop !249

.loopexit212:                                     ; preds = %bb.dw, %bb.an, %bb.al
  %.sroa.0179.6 = phi ptr [ %.sroa.0179.1360, %bb.al ], [ %.sroa.0179.1360, %bb.an ], [ %.sroa.0179.3, %bb.dw ] ; 3 uses
  %.sroa.12.4 = phi ptr [ %.sroa.12.1361, %bb.al ], [ %.sroa.12.1361, %bb.an ], [ %.sroa.12.3, %bb.dw ] ; 2 uses
  %.sroa.19.6 = phi ptr [ %.sroa.19.1362, %bb.al ], [ %.sroa.19.1362, %bb.an ], [ %.sroa.19.3, %bb.dw ] ; 2 uses
  %i.rf = add i32 %.09363, 1                      ; 2 uses
  %i.rg = zext i32 %i.rf to i64                   ; 2 uses
  %i.rh = ptrtoint ptr %.sroa.12.4 to i64
  %i.ri = ptrtoint ptr %.sroa.0179.6 to i64
  %i.rj = sub i64 %i.rh, %i.ri
  %i.rk = ashr exact i64 %i.rj, 3
  %i.rl = icmp ugt i64 %i.rk, %i.rg
  br i1 %i.rl, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit79, label %._crit_edge, !llvm.loop !250

bb.dx:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.dp, %bb.ds, %bb.dv, %bb.ak
  %.sroa.0179.8 = phi ptr [ %.sroa.0179.2354, %bb.ds ], [ %.sroa.0179.2354, %bb.dp ], [ %.sroa.0179.0, %bb.ak ], [ %.sroa.0179.10, %bb.dv ], [ %.sroa.0179.2354, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.19.8 = phi ptr [ %.sroa.19.2356, %bb.ds ], [ %.sroa.19.2356, %bb.dp ], [ %.sroa.12.0, %bb.ak ], [ %.sroa.19.10, %bb.dv ], [ %.sroa.19.2356, %.loopexit.split-lp.loopexit.split-lp ]
  %.pn40.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn, %bb.ds ], [ %.pn33.pn.pn, %bb.dp ], [ %.pn31, %bb.ak ], [ %.pn40, %bb.dv ], [ %lpad.loopexit.split-lp730, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i134 = icmp eq ptr %.sroa.0179.8, null
  br i1 %.not.i.i.i134, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit135, label %bb.dy

bb.dy:                                            ; preds = %.thread, %.thread200, %bb.dx
  %.pn40.pn.pn.pn.pn.pn207 = phi { ptr, i32 } [ %.pn29, %.thread200 ], [ %.pn40.pn.pn.pn.pn.pn, %bb.dx ], [ %i.eo, %.thread ]
  %.sroa.19.8206 = phi ptr [ %i.bk, %.thread200 ], [ %.sroa.19.8, %bb.dx ], [ %.sroa.19.1362, %.thread ]
  %.sroa.0179.8205 = phi ptr [ %i.bi, %.thread200 ], [ %.sroa.0179.8, %bb.dx ], [ %.sroa.0179.1360, %.thread ] ; 2 uses
  %i.rm = ptrtoint ptr %.sroa.19.8206 to i64
  %i.rn = ptrtoint ptr %.sroa.0179.8205 to i64
  %i.ro = sub i64 %i.rm, %i.rn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0179.8205, i64 noundef %i.ro) #25
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit135

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit135: ; preds = %bb.x, %bb.dx, %bb.dy
  %.pn40.pn.pn.pn.pn.pn199 = phi { ptr, i32 } [ %.pn40.pn.pn.pn.pn.pn207, %bb.dy ], [ %.pn40.pn.pn.pn.pn.pn, %bb.dx ], [ %.pn.pn, %bb.x ]
  resume { ptr, i32 } %.pn40.pn.pn.pn.pn.pn199
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory8booleans17CircuitPropagator16assignAndEnqueueENS0_12NodeTemplateILb0EEEbSt10shared_ptrINS0_9ProofNodeEE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef align 8 %1, i1 noundef zeroext %2, ptr nofree noundef align 8 captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.330", align 8 ; 2 uses
  %9 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !133    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 1023
  %i.e = icmp eq i64 %i.d, 19
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstIbEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.g = load i8, ptr %i.f, align 1, !tbaa !134, !range !130, !noundef !131
  %i.h = zext i1 %2 to i8
  %.not = icmp eq i8 %i.g, %i.h
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !133    ; 5 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !31
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = lshr i64 %i.j, 40
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = and i32 %i.l, 1048575                    ; 3 uses
  %i.n = icmp samesign ult i32 %i.m, 1048574
  br i1 %i.n, label %bb.d, label %bb.e, !prof !123

bb.d:                                             ; preds = %bb.c
  %i.o = add nuw nsw i32 %i.m, 1
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 40
  %i.r = and i64 %i.j, -1152920405095219201
  %i.s = or i64 %i.q, %i.r
  store i64 %i.s, ptr %i.i, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.e:                                             ; preds = %bb.c
  %i.t = icmp eq i32 %i.m, 1048574
  br i1 %i.t, label %bb.f, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !33

bb.f:                                             ; preds = %bb.e
  %i.u = or i64 %i.j, 1152920405095219200
  store i64 %i.u, ptr %i.i, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.d, %bb.e, %bb.f
  invoke void @_ZN4cvc58internal6theory8booleans17CircuitPropagator12makeConflictENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 %4)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.v = load ptr, ptr %4, align 8, !tbaa !31     ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 3 uses
  %i.x = and i64 %i.w, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.x, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.h, !prof !33

bb.h:                                             ; preds = %bb.g
  %i.y = add i64 %i.w, 1152920405095219200
  %i.z = and i64 %i.y, 1152920405095219200        ; 2 uses
  %i.aa = and i64 %i.w, -1152920405095219201
  %i.ab = or disjoint i64 %i.z, %i.aa
  store i64 %i.ab, ptr %i.v, align 8
  %i.ac = icmp eq i64 %i.z, 0
  br i1 %i.ac, label %bb.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !33

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #24
  unreachable

bb.k:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  br label %bb.br

bb.l:                                             ; preds = %bb.b, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !137
  %.not80 = icmp eq ptr %i.ah, null
  br i1 %.not80, label %_ZNSolsEPFRSoS_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load ptr, ptr %3, align 8, !tbaa !150
  %.not.i26 = icmp eq ptr %i.ai, null
  br i1 %.not.i26, label %_ZN4cvc58internallsERSoNS0_12NodeTemplateILb0EEE.exit, label %bb.o

_ZN4cvc58internallsERSoNS0_12NodeTemplateILb0EEE.exit: ; preds = %bb.m
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4cvc58internal6EnvObj7warningEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 5 uses
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.6, i64 noundef 40) ; 0 uses
  %i.al = load ptr, ptr %1, align 8, !tbaa !133
  tail call void @_ZNK4cvc58internal4expr9NodeValue8toStreamERSo(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !20
  %i.an = getelementptr i8, ptr %i.am, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %i.aj, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 240
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !187 ; 6 uses
  %.not.i.i.i46 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i46, label %.noexc, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i47

.noexc:                                           ; preds = %_ZN4cvc58internallsERSoNS0_12NodeTemplateILb0EEE.exit
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i47: ; preds = %_ZN4cvc58internallsERSoNS0_12NodeTemplateILb0EEE.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load i8, ptr %i.as, align 8, !tbaa !193
  %.not.i1.i.i48 = icmp eq i8 %i.at, 0
  br i1 %.not.i1.i.i48, label %.noexc50, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i47
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 67
  %i.av = load i8, ptr %i.au, align 1, !tbaa !144
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

.noexc50:                                         ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i47
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ar)
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call noundef signext i8 %i.ay(ptr noundef nonnull align 8 dereferenceable(570) %i.ar, i8 noundef signext 10), !inline_history !6
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc50, %bb.n
  %.0.i.i.i49 = phi i8 [ %i.av, %bb.n ], [ %i.az, %.noexc50 ]
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i8 noundef signext %.0.i.i.i49)
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba) ; 0 uses
  br label %_ZNSolsEPFRSoS_E.exit

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  br i1 %2, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %1, align 8, !tbaa !133   ; 5 uses
  store ptr %i.bc, ptr %5, align 8, !tbaa !31
  %i.bd = load i64, ptr %i.bc, align 8            ; 3 uses
  %i.be = lshr i64 %i.bd, 40
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = and i32 %i.bf, 1048575                  ; 3 uses
  %i.bh = icmp samesign ult i32 %i.bg, 1048574
  br i1 %i.bh, label %bb.q, label %bb.r, !prof !123

bb.q:                                             ; preds = %bb.p
  %i.bi = add nuw nsw i32 %i.bg, 1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 40
  %i.bl = and i64 %i.bd, -1152920405095219201
  %i.bm = or i64 %i.bk, %i.bl
  store i64 %i.bm, ptr %i.bc, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit27

bb.r:                                             ; preds = %bb.p
  %i.bn = icmp eq i32 %i.bg, 1048574
  br i1 %i.bn, label %bb.s, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit27, !prof !33

bb.s:                                             ; preds = %bb.r
  %i.bo = or i64 %i.bd, 1152920405095219200
end_hunk_1
