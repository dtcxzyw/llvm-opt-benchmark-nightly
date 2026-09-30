Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/array_info?download=true
inline.NumInlined: 1351
inline.NumDeleted: 534
begin_hunk_0_@_ZN4cvc58internal6theory6arrays9ArrayInfo9mergeInfoENS0_12NodeTemplateILb0EEES5_:bb.a
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  %.pre = load ptr, ptr %4, align 8               ; 7 uses
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS1_6theory6arrays4InfoESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSD_.exit, label %bb.j

bb.j:                                             ; preds = %.noexc101
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !100 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !121
  %i.aj = icmp eq i64 %i.y, %i.ai
  %i.ak = load ptr, ptr %i.ag, align 8
  %i.al = icmp eq ptr %.pre, %i.ak
  %i.am = select i1 %i.aj, i1 %i.al, i1 false
  br i1 %i.am, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS1_6theory6arrays4InfoESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSD_.exit, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ao = icmp eq i64 %i.y, %i.au
  %i.ap = load ptr, ptr %i.an, align 8
  %i.aq = icmp eq ptr %.pre, %i.ap
  %i.ar = select i1 %i.ao, i1 %i.aq, i1 false
  br i1 %i.ar, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS1_6theory6arrays4InfoESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %bb.k
  %.020.i.i.i.i = phi ptr [ %i.as, %bb.k ], [ %i.af, %bb.j ]
  %i.as = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !100 ; 5 uses
  %.not18.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS1_6theory6arrays4InfoESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSD_.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !121 ; 2 uses
  %i.av = urem i64 %i.au, %i.aa
  %.not19.i.i.i.i = icmp eq i64 %i.av, %i.ab
  br i1 %.not19.i.i.i.i, label %bb.k, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.l
  br label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS1_6theory6arrays4InfoESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSD_.exit, !llvm.loop !3

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS1_6theory6arrays4InfoESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSD_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.k, %bb.h, %bb.g, %..loopexit_crit_edge21.i.i.i.i, %bb.j, %.noexc101
  %i.aw = phi ptr [ %.pre, %..loopexit_crit_edge21.i.i.i.i ], [ %i.u, %bb.h ], [ %.pre, %bb.j ], [ %.pre, %.noexc101 ], [ %i.u, %bb.g ], [ %.pre, %bb.k ], [ %.pre, %.lr.ph.i.i.i.i ] ; 3 uses
  %.sroa.06.1.i.i = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i ], [ %.sroa.06.0.i.i, %bb.h ], [ %i.af, %bb.j ], [ null, %.noexc101 ], [ null, %bb.g ], [ null, %.lr.ph.i.i.i.i ], [ %i.as, %bb.k ] ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8            ; 3 uses
  %i.ay = and i64 %i.ax, 1152920405095219200
  %.not.i.i102 = icmp eq i64 %i.ay, 1152920405095219200
  br i1 %.not.i.i102, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.m, !prof !57

bb.m:                                             ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS1_6theory6arrays4InfoESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSD_.exit
  %i.az = add i64 %i.ax, 1152920405095219200
  %i.ba = and i64 %i.az, 1152920405095219200      ; 2 uses
  %i.bb = and i64 %i.ax, -1152920405095219201
  %i.bc = or disjoint i64 %i.ba, %i.bb
  store i64 %i.bc, ptr %i.aw, align 8
  %i.bd = icmp eq i64 %i.ba, 0
  br i1 %i.bd, label %bb.n, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !57

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS1_6theory6arrays4InfoESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSD_.exit, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.bg = load ptr, ptr %2, align 8, !tbaa !41    ; 5 uses
  store ptr %i.bg, ptr %5, align 8, !tbaa !118
  %i.bh = load i64, ptr %i.bg, align 8            ; 3 uses
  %i.bi = lshr i64 %i.bh, 40
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  %i.bk = and i32 %i.bj, 1048575                  ; 3 uses
  %i.bl = icmp samesign ult i32 %i.bk, 1048574
  br i1 %i.bl, label %bb.p, label %bb.q, !prof !123

bb.p:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.bm = add nuw nsw i32 %i.bk, 1
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 40
  %i.bp = and i64 %i.bh, -1152920405095219201
  %i.bq = or i64 %i.bo, %i.bp
  store i64 %i.bq, ptr %i.bg, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit104

bb.q:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.br = icmp eq i32 %i.bk, 1048574
  br i1 %i.br, label %bb.r, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit104, !prof !57

bb.r:                                             ; preds = %bb.q
  %i.bs = or i64 %i.bh, 1152920405095219200
  store i64 %i.bs, ptr %i.bg, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit104 unwind label %bb.ag

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit104: ; preds = %bb.q, %bb.p, %bb.r
  %i.bt = load i64, ptr %i.r, align 8, !tbaa !99
  %.not.not.i.i105 = icmp eq i64 %i.bt, 0
  br i1 %.not.not.i.i105, label %bb.s, label %bb.v

bb.s:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit104
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bv = load ptr, ptr %5, align 8               ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.sroa.06.0.in.i.i113 = phi ptr [ %i.bu, %bb.s ], [ %.sroa.06.0.i.i114, %bb.u ]
  %.sroa.06.0.i.i114 = load ptr, ptr %.sroa.06.0.in.i.i113, align 8, !tbaa !100 ; 4 uses
  %.not.i.i115 = icmp eq ptr %.sroa.06.0.i.i114, null
  br i1 %.not.i.i115, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS1_6theory6arrays4InfoESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSD_.exit117, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i114, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !118
  %i.by = icmp eq ptr %i.bv, %i.bx
  br i1 %i.by, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS1_6theory6arrays4InfoESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSD_.exit117, label %bb.t, !llvm.loop !2

bb.v:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit104
  %i.bz = invoke noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc116 unwind label %bb.ah ; 3 uses

.noexc116:                                        ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !80 ; 2 uses
  %i.cc = urem i64 %i.bz, %i.cb                   ; 2 uses
  %i.cd = load ptr, ptr %i.d, align 8, !tbaa !79
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !119 ; 2 uses
  %.not.i.i.i.i106 = icmp eq ptr %i.cf, null
  %.pre206 = load ptr, ptr %5, align 8            ; 7 uses
  br i1 %.not.i.i.i.i106, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS1_6theory6arrays4InfoESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSD_.exit117, label %bb.w

bb.w:                                             ; preds = %.noexc116
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !100 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !121
  %i.ck = icmp eq i64 %i.bz, %i.cj
  %i.cl = load ptr, ptr %i.ch, align 8
  %i.cm = icmp eq ptr %.pre206, %i.cl
  %i.cn = select i1 %i.ck, i1 %i.cm, i1 false
  br i1 %i.cn, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS1_6theory6arrays4InfoESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSD_.exit117, label %.lr.ph.i.i.i.i107

bb.x:                                             ; preds = %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cp = icmp eq i64 %i.bz, %i.cv
  %i.cq = load ptr, ptr %i.co, align 8
  %i.cr = icmp eq ptr %.pre206, %i.cq
  %i.cs = select i1 %i.cp, i1 %i.cr, i1 false
  br i1 %i.cs, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS1_6theory6arrays4InfoESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSD_.exit117, label %.lr.ph.i.i.i.i107, !llvm.loop !3

.lr.ph.i.i.i.i107:                                ; preds = %bb.w, %bb.x
  %.020.i.i.i.i108 = phi ptr [ %i.ct, %bb.x ], [ %i.cg, %bb.w ]
  %i.ct = load ptr, ptr %.020.i.i.i.i108, align 8, !tbaa !100 ; 5 uses
  %.not18.i.i.i.i109 = icmp eq ptr %i.ct, null
  br i1 %.not18.i.i.i.i109, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS1_6theory6arrays4InfoESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSD_.exit117, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i107
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !121 ; 2 uses
  %i.cw = urem i64 %i.cv, %i.cb
  %.not19.i.i.i.i110 = icmp eq i64 %i.cw, %i.cc
  br i1 %.not19.i.i.i.i110, label %bb.x, label %..loopexit_crit_edge21.i.i.i.i111, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i111:                ; preds = %bb.y
  br label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS1_6theory6arrays4InfoESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSD_.exit117, !llvm.loop !3

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS1_6theory6arrays4InfoESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSD_.exit117: ; preds = %.lr.ph.i.i.i.i107, %bb.x, %bb.u, %bb.t, %..loopexit_crit_edge21.i.i.i.i111, %bb.w, %.noexc116
  %i.cx = phi ptr [ %.pre206, %..loopexit_crit_edge21.i.i.i.i111 ], [ %i.bv, %bb.u ], [ %.pre206, %bb.w ], [ %.pre206, %.noexc116 ], [ %i.bv, %bb.t ], [ %.pre206, %bb.x ], [ %.pre206, %.lr.ph.i.i.i.i107 ] ; 3 uses
  %.sroa.06.1.i.i112 = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i111 ], [ %.sroa.06.0.i.i114, %bb.u ], [ %i.cg, %bb.w ], [ null, %.noexc116 ], [ null, %bb.t ], [ null, %.lr.ph.i.i.i.i107 ], [ %i.ct, %bb.x ] ; 3 uses
  %i.cy = load i64, ptr %i.cx, align 8            ; 3 uses
  %i.cz = and i64 %i.cy, 1152920405095219200
  %.not.i.i118 = icmp eq i64 %i.cz, 1152920405095219200
  br i1 %.not.i.i118, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit119, label %bb.z, !prof !57

bb.z:                                             ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS1_6theory6arrays4InfoESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSD_.exit117
  %i.da = add i64 %i.cy, 1152920405095219200
  %i.db = and i64 %i.da, 1152920405095219200      ; 2 uses
  %i.dc = and i64 %i.cy, -1152920405095219201
  %i.dd = or disjoint i64 %i.db, %i.dc
  store i64 %i.dd, ptr %i.cx, align 8
  %i.de = icmp eq i64 %i.db, 0
  br i1 %i.de, label %bb.aa, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit119, !prof !57

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cx)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit119 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit119: ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS1_6theory6arrays4InfoESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSD_.exit117, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not195 = icmp eq ptr %.sroa.06.1.i.i, null
  %.not196 = icmp eq ptr %.sroa.06.1.i.i112, null ; 2 uses
  br i1 %.not195, label %bb.aw, label %.critedge81

bb.ac:                                            ; preds = %bb.a
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ad:                                            ; preds = %bb.e
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.dj, %bb.ae ], [ %i.di, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.bp

bb.ag:                                            ; preds = %bb.r
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.v
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #23
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn63 = phi { ptr, i32 } [ %i.dl, %bb.ah ], [ %i.dk, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.bp

.critedge81:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit119
  br i1 %.not196, label %bb.bo, label %.critedge85

.critedge85:                                      ; preds = %.critedge81
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !103 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 384
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !54
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 392
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !55 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 400
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !56 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i112, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !103 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 384
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !54
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 392
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !55
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 400
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !56
  invoke void @_ZNK4cvc58internal6theory6arrays9ArrayInfo10mergeListsEPNS_7context6CDListINS0_12NodeTemplateILb0EEENS4_14DefaultCleanUpIS7_EESaIS7_EEEPKSB_(ptr nonnull align 8 poison, ptr noundef %i.dp, ptr noundef %i.dx)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %.critedge85
  invoke void @_ZNK4cvc58internal6theory6arrays9ArrayInfo10mergeListsEPNS_7context6CDListINS0_12NodeTemplateILb0EEENS4_14DefaultCleanUpIS7_EESaIS7_EEEPKSB_(ptr nonnull align 8 poison, ptr noundef %i.dr, ptr noundef %i.dz)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNK4cvc58internal6theory6arrays9ArrayInfo10mergeListsEPNS_7context6CDListINS0_12NodeTemplateILb0EEENS4_14DefaultCleanUpIS7_EESaIS7_EEEPKSB_(ptr nonnull align 8 poison, ptr noundef %i.dt, ptr noundef %i.eb)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  invoke void @_ZN4cvc58internal7IntStat9maxAssignEl(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, i64 noundef 0)
          to label %bb.ao unwind label %bb.an

bb.am:                                            ; preds = %bb.ak, %bb.aj, %.critedge85
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.an:                                            ; preds = %bb.av, %bb.au, %bb.as, %bb.ar, %bb.aq, %bb.ao, %bb.al
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ao:                                            ; preds = %bb.al
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !114
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !116
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek                    ; 2 uses
  %i.em = lshr exact i64 %i.el, 3
  %i.en = trunc i64 %i.em to i32                  ; 2 uses
  %sext = shl i64 %i.el, 29
  %i.eo = ashr exact i64 %sext, 32
  invoke void @_ZN4cvc58internal7IntStat9maxAssignEl(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, i64 noundef %i.eo)
          to label %bb.ap unwind label %bb.an

bb.ap:                                            ; preds = %bb.ao
  %.not = icmp eq i32 %i.en, 0
  br i1 %.not, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.eq = sitofp i32 %i.en to double
  %i.er = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal11AverageStatlsEd(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, double noundef %i.eq)
          to label %bb.ar unwind label %bb.an     ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.et = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal7IntStatppEv(ptr noundef nonnull align 8 dereferenceable(8) %i.es)
          to label %bb.as unwind label %bb.an     ; 0 uses

bb.as:                                            ; preds = %bb.ar, %bb.ap
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !114
  %i.ex = load ptr, ptr %i.eu, align 8, !tbaa !116
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez                    ; 2 uses
  %i.fb = lshr exact i64 %i.fa, 3
  %i.fc = trunc i64 %i.fb to i32                  ; 2 uses
  %sext72 = shl i64 %i.fa, 29
  %i.fd = ashr exact i64 %sext72, 32
  invoke void @_ZN4cvc58internal7IntStat9maxAssignEl(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, i64 noundef %i.fd)
          to label %bb.at unwind label %bb.an

bb.at:                                            ; preds = %bb.as
  %.not73 = icmp eq i32 %i.fc, 0
  br i1 %.not73, label %bb.bo, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ff = sitofp i32 %i.fc to double
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal11AverageStatlsEd(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, double noundef %i.ff)
          to label %bb.av unwind label %bb.an     ; 0 uses

bb.av:                                            ; preds = %bb.au
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal7IntStatppEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fh)
          to label %bb.bo unwind label %bb.an     ; 0 uses

bb.aw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit119
  br i1 %.not196, label %bb.bo, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i112, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !103 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 384
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !54
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 392
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !55
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 400
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !56
  %i.fr = invoke noalias noundef nonnull dereferenceable(408) ptr @_Znwm(i64 noundef 408) #24
          to label %bb.ay unwind label %bb.bj     ; 6 uses

bb.ay:                                            ; preds = %bb.ax
  %i.fs = load ptr, ptr %0, align 8, !tbaa !78
  invoke void @_ZN4cvc58internal6theory6arrays4InfoC2EPNS_7context7ContextE(ptr noundef nonnull align 8 dereferenceable(408) %i.fr, ptr noundef %i.fs)
          to label %bb.az unwind label %bb.bk

bb.az:                                            ; preds = %bb.ay
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 384
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !54
  invoke void @_ZNK4cvc58internal6theory6arrays9ArrayInfo10mergeListsEPNS_7context6CDListINS0_12NodeTemplateILb0EEENS4_14DefaultCleanUpIS7_EESaIS7_EEEPKSB_(ptr nonnull align 8 poison, ptr noundef %i.fu, ptr noundef %i.fm)
          to label %bb.ba unwind label %bb.bj

bb.ba:                                            ; preds = %bb.az
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 392
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !55
  invoke void @_ZNK4cvc58internal6theory6arrays9ArrayInfo10mergeListsEPNS_7context6CDListINS0_12NodeTemplateILb0EEENS4_14DefaultCleanUpIS7_EESaIS7_EEEPKSB_(ptr nonnull align 8 poison, ptr noundef %i.fw, ptr noundef %i.fo)
          to label %bb.bb unwind label %bb.bj

bb.bb:                                            ; preds = %bb.ba
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 400
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !56
  invoke void @_ZNK4cvc58internal6theory6arrays9ArrayInfo10mergeListsEPNS_7context6CDListINS0_12NodeTemplateILb0EEENS4_14DefaultCleanUpIS7_EESaIS7_EEEPKSB_(ptr nonnull align 8 poison, ptr noundef %i.fy, ptr noundef %i.fq)
          to label %bb.bc unwind label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.fz = load ptr, ptr %1, align 8, !tbaa !41    ; 5 uses
  store ptr %i.fz, ptr %6, align 8, !tbaa !118
  %i.ga = load i64, ptr %i.fz, align 8            ; 3 uses
  %i.gb = lshr i64 %i.ga, 40
  %i.gc = trunc nuw nsw i64 %i.gb to i32
  %i.gd = and i32 %i.gc, 1048575                  ; 3 uses
  %i.ge = icmp samesign ult i32 %i.gd, 1048574
  br i1 %i.ge, label %bb.bd, label %bb.be, !prof !123

bb.bd:                                            ; preds = %bb.bc
  %i.gf = add nuw nsw i32 %i.gd, 1
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = shl nuw nsw i64 %i.gg, 40
  %i.gi = and i64 %i.ga, -1152920405095219201
  %i.gj = or i64 %i.gh, %i.gi
  store i64 %i.gj, ptr %i.fz, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit162

bb.be:                                            ; preds = %bb.bc
  %i.gk = icmp eq i32 %i.gd, 1048574
  br i1 %i.gk, label %bb.bf, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit162, !prof !57

bb.bf:                                            ; preds = %bb.be
  %i.gl = or i64 %i.ga, 1152920405095219200
  store i64 %i.gl, ptr %i.fz, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit162 unwind label %bb.bl

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit162: ; preds = %bb.be, %bb.bd, %bb.bf
  %i.gm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS4_PNS2_6theory6arrays4InfoEESaISB_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS1_6theory6arrays4InfoESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEEixEOS3_.exit unwind label %bb.bm

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS1_6theory6arrays4InfoESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEEixEOS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit162
  store ptr %i.fr, ptr %i.gm, align 8, !tbaa !122
  %i.gn = load ptr, ptr %6, align 8, !tbaa !118   ; 3 uses
  %i.go = load i64, ptr %i.gn, align 8            ; 3 uses
  %i.gp = and i64 %i.go, 1152920405095219200
  %.not.i.i164 = icmp eq i64 %i.gp, 1152920405095219200
  br i1 %.not.i.i164, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit165, label %bb.bg, !prof !57

bb.bg:                                            ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS1_6theory6arrays4InfoESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEEixEOS3_.exit
  %i.gq = add i64 %i.go, 1152920405095219200
  %i.gr = and i64 %i.gq, 1152920405095219200      ; 2 uses
  %i.gs = and i64 %i.go, -1152920405095219201
  %i.gt = or disjoint i64 %i.gr, %i.gs
  store i64 %i.gt, ptr %i.gn, align 8
  %i.gu = icmp eq i64 %i.gr, 0
  br i1 %i.gu, label %bb.bh, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit165, !prof !57

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gn)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit165 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gv = landingpad { ptr, i32 }
          catch ptr null
  %i.gw = extractvalue { ptr, i32 } %i.gv, 0
  call void @__clang_call_terminate(ptr %i.gw) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit165: ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS1_6theory6arrays4InfoESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEEixEOS3_.exit, %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bo

bb.bj:                                            ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ax
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bk:                                            ; preds = %bb.ay
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef 408) #28
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bf
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit162
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #23
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.pn65 = phi { ptr, i32 } [ %i.ha, %bb.bm ], [ %i.gz, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bp

bb.bo:                                            ; preds = %bb.aw, %bb.at, %bb.av, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit165, %.critedge81
  call void @_ZN4cvc58internal9CodeTimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.bp:                                            ; preds = %bb.af, %bb.bj, %bb.bk, %bb.bn, %bb.am, %bb.an, %bb.ai, %bb.ac
  %.pn76.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.ac ], [ %i.ed, %bb.am ], [ %i.ee, %bb.an ], [ %.pn, %bb.af ], [ %.pn65, %bb.bn ], [ %.pn63, %bb.ai ], [ %i.gy, %bb.bk ], [ %i.gx, %bb.bj ]
  call void @_ZN4cvc58internal9CodeTimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn76.pn.pn
}

declare void @_ZN4cvc58internal9CodeTimerC1ERNS0_9TimerStatEb(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal7IntStatppEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZN4cvc58internal7IntStat9maxAssignEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal11AverageStatlsEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN4cvc58internal9CodeTimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9)) unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_PNS1_6theory6arrays4InfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_PNS1_6theory6arrays4InfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEEPNS4_6theory6arrays4InfoEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEEPNS4_6theory6arrays4InfoEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !100 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !118  ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = and i64 %i.f, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.g, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEEPNS4_6theory6arrays4InfoEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i, label %bb.b, !prof !57

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = add i64 %i.f, 1152920405095219200
  %i.i = and i64 %i.h, 1152920405095219200        ; 2 uses
  %i.j = and i64 %i.f, -1152920405095219201
  %i.k = or disjoint i64 %i.i, %i.j
  store i64 %i.k, ptr %i.e, align 8
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %bb.c, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEEPNS4_6theory6arrays4InfoEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i, !prof !57

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEEPNS4_6theory6arrays4InfoEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEEPNS4_6theory6arrays4InfoEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 32) #28
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_PNS1_6theory6arrays4InfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !205

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_PNS1_6theory6arrays4InfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEEPNS4_6theory6arrays4InfoEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i, %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !79
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !80
  %i.r = shl i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %i.r, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %0, align 8, !tbaa !79     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_PNS1_6theory6arrays4InfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_PNS1_6theory6arrays4InfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  %i.v = load i64, ptr %i.p, align 8, !tbaa !80
  %i.w = shl i64 %i.v, 3
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #28
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_PNS1_6theory6arrays4InfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_PNS1_6theory6arrays4InfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.e, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_PNS1_6theory6arrays4InfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129
  tail call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #28
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !206

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

declare void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #14

declare void @_ZN4cvc57context10ContextObjC2EPNS0_7ContextE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4cvc57context3CDOIbE4saveEPNS0_20ContextMemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4cvc57context20ContextMemoryManager7newDataEm(ptr noundef nonnull align 8 dereferenceable(200) %1, i64 noundef 48) ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc57context10ContextObjE, i64 16), ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc57context3CDOIbEE, i64 16), ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i8, ptr %i.e, align 8, !tbaa !24, !range !125, !noundef !126
  store i8 %i.f, ptr %i.d, align 8, !tbaa !24
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc57context3CDOIbE7restoreEPNS0_10ContextObjE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !24, !range !125, !noundef !126
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.b, ptr %i.c, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc57context3CDOIbED0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc57context3CDOIbEE, i64 16), ptr %0, align 8, !tbaa !15
  invoke void @_ZN4cvc57context10ContextObj7destroyEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
          to label %_ZN4cvc57context3CDOIbED2Ev.exit unwind label %bb.b, !inline_history !59

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #26, !inline_history !59
  unreachable

_ZN4cvc57context3CDOIbED2Ev.exit:                 ; preds = %bb.a
  tail call void @_ZN4cvc57context10ContextObjdlEPv(ptr noundef nonnull %0) #23
  ret void
}

declare void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

declare noundef ptr @_ZN4cvc57context20ContextMemoryManager7newDataEm(ptr noundef nonnull align 8 dereferenceable(200), i64 noundef) local_unnamed_addr #6

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc57context10ContextObjD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc57context10ContextObjD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #26
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #15
end_hunk_0
