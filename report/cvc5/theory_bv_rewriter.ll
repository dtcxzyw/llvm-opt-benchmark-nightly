Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/theory_bv_rewriter?download=true
inline.NumInlined: 19905
inline.NumDeleted: 836
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE134EE5applyENS0_12NodeTemplateILb0EEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.dq

bb.t:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !2091)
  %i.bp = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 99)
          to label %bb.u unwind label %bb.ag

bb.u:                                             ; preds = %bb.t
  %i.bq = icmp eq i32 %i.bp, 2
  %i.br = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bs = zext i1 %i.bq to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !43, !noalias !2091 ; 2 uses
  store ptr %i.bu, ptr %13, align 8, !tbaa !40, !alias.scope !2091
  %i.bv = load i64, ptr %i.k, align 8, !tbaa !96
  %.not.not.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not.not.i.i.i, label %.preheader163, label %bb.w

.preheader163:                                    ; preds = %bb.u, %bb.v
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.v ], [ %i.f, %bb.u ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !97 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i78, label %bb.v

bb.v:                                             ; preds = %.preheader163
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !40
  %i.by = icmp eq ptr %i.bu, %i.bx
  br i1 %i.by, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory2bv5CountESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE4findERSC_.exit.i, label %.preheader163, !llvm.loop !3

bb.w:                                             ; preds = %bb.u
  %i.bz = invoke noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb0EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc unwind label %bb.ag    ; 3 uses

.noexc:                                           ; preds = %bb.w
  %i.ca = load i64, ptr %i.e, align 8, !tbaa !94  ; 2 uses
  %i.cb = urem i64 %i.bz, %i.ca                   ; 2 uses
  %i.cc = load ptr, ptr %8, align 8, !tbaa !93
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !98 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i78, label %bb.x

bb.x:                                             ; preds = %.noexc
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !97 ; 3 uses
  %i.cg = load ptr, ptr %13, align 8              ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !100
  %i.ck = icmp eq i64 %i.bz, %i.cj
  %i.cl = load ptr, ptr %i.ch, align 8
  %i.cm = icmp eq ptr %i.cg, %i.cl
  %i.cn = select i1 %i.ck, i1 %i.cm, i1 false
  br i1 %i.cn, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory2bv5CountESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE4findERSC_.exit.i, label %.lr.ph.i.i.i.i.i

bb.y:                                             ; preds = %bb.z
  %i.co = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cp = icmp eq i64 %i.bz, %i.cv
  %i.cq = load ptr, ptr %i.co, align 8
  %i.cr = icmp eq ptr %i.cg, %i.cq
  %i.cs = select i1 %i.cp, i1 %i.cr, i1 false
  br i1 %i.cs, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory2bv5CountESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE4findERSC_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.x, %bb.y
  %.020.i.i.i.i.i = phi ptr [ %i.ct, %bb.y ], [ %i.cf, %bb.x ]
  %i.ct = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !97 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i78, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !100 ; 2 uses
  %i.cw = urem i64 %i.cv, %i.ca
  %.not19.i.i.i.i.i = icmp eq i64 %i.cw, %i.cb
  br i1 %.not19.i.i.i.i.i, label %bb.y, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !4

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.z
  br label %.loopexit.i78, !llvm.loop !4

.loopexit.i78:                                    ; preds = %.lr.ph.i.i.i.i.i, %.preheader163, %..loopexit_crit_edge21.i.i.i.i.i, %.noexc
  %i.cx = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS4_NS2_6theory2bv5CountEESaISA_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS6_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc79 unwind label %bb.ag

.noexc79:                                         ; preds = %.loopexit.i78
  store i64 4294967296, ptr %i.cx, align 4, !tbaa !57
  br label %_ZN4cvc58internal6theory2bvL6insertERSt13unordered_mapINS0_12NodeTemplateILb0EEENS2_5CountESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEES5_b.exit

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory2bv5CountESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE4findERSC_.exit.i: ; preds = %bb.y, %bb.v, %bb.x
  %i.cy = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS4_NS2_6theory2bv5CountEESaISA_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS6_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc80 unwind label %bb.ag

.noexc80:                                         ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory2bv5CountESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE4findERSC_.exit.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !102
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !102
  br label %_ZN4cvc58internal6theory2bvL6insertERSt13unordered_mapINS0_12NodeTemplateILb0EEENS2_5CountESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEES5_b.exit

bb.aa:                                            ; preds = %bb.h
  store ptr %i.av, ptr %14, align 8, !tbaa !40
  %i.dc = load i64, ptr %i.k, align 8, !tbaa !96
  %.not.not.i.i.i81 = icmp eq i64 %i.dc, 0
  br i1 %.not.not.i.i.i81, label %.preheader, label %bb.ac

.preheader:                                       ; preds = %bb.aa, %bb.ab
  %.sroa.06.0.in.i.i.i90 = phi ptr [ %.sroa.06.0.i.i.i91, %bb.ab ], [ %i.f, %bb.aa ]
  %.sroa.06.0.i.i.i91 = load ptr, ptr %.sroa.06.0.in.i.i.i90, align 8, !tbaa !97 ; 3 uses
  %.not.i.i.i92 = icmp eq ptr %.sroa.06.0.i.i.i91, null
  br i1 %.not.i.i.i92, label %.loopexit.i88, label %bb.ab

bb.ab:                                            ; preds = %.preheader
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i91, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !40
  %i.df = icmp eq ptr %i.av, %i.de
  br i1 %i.df, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory2bv5CountESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE4findERSC_.exit.i89, label %.preheader, !llvm.loop !3

bb.ac:                                            ; preds = %bb.aa
  %i.dg = invoke noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb0EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %.noexc93 unwind label %bb.ag  ; 3 uses

.noexc93:                                         ; preds = %bb.ac
  %i.dh = load i64, ptr %i.e, align 8, !tbaa !94  ; 2 uses
  %i.di = urem i64 %i.dg, %i.dh                   ; 2 uses
  %i.dj = load ptr, ptr %8, align 8, !tbaa !93
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.di
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !98 ; 2 uses
  %.not.i.i.i.i.i82 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i.i82, label %.loopexit.i88, label %bb.ad

bb.ad:                                            ; preds = %.noexc93
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !97 ; 3 uses
  %i.dn = load ptr, ptr %14, align 8              ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !100
  %i.dr = icmp eq i64 %i.dg, %i.dq
  %i.ds = load ptr, ptr %i.do, align 8
  %i.dt = icmp eq ptr %i.dn, %i.ds
  %i.du = select i1 %i.dr, i1 %i.dt, i1 false
  br i1 %i.du, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory2bv5CountESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE4findERSC_.exit.i89, label %.lr.ph.i.i.i.i.i83

bb.ae:                                            ; preds = %bb.af
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.dw = icmp eq i64 %i.dg, %i.ec
  %i.dx = load ptr, ptr %i.dv, align 8
  %i.dy = icmp eq ptr %i.dn, %i.dx
  %i.dz = select i1 %i.dw, i1 %i.dy, i1 false
  br i1 %i.dz, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory2bv5CountESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE4findERSC_.exit.i89, label %.lr.ph.i.i.i.i.i83, !llvm.loop !4

.lr.ph.i.i.i.i.i83:                               ; preds = %bb.ad, %bb.ae
  %.020.i.i.i.i.i84 = phi ptr [ %i.ea, %bb.ae ], [ %i.dm, %bb.ad ]
  %i.ea = load ptr, ptr %.020.i.i.i.i.i84, align 8, !tbaa !97 ; 4 uses
  %.not18.i.i.i.i.i85 = icmp eq ptr %i.ea, null
  br i1 %.not18.i.i.i.i.i85, label %.loopexit.i88, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i83
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !100 ; 2 uses
  %i.ed = urem i64 %i.ec, %i.dh
  %.not19.i.i.i.i.i86 = icmp eq i64 %i.ed, %i.di
  br i1 %.not19.i.i.i.i.i86, label %bb.ae, label %..loopexit_crit_edge21.i.i.i.i.i87, !llvm.loop !4

..loopexit_crit_edge21.i.i.i.i.i87:               ; preds = %bb.af
  br label %.loopexit.i88, !llvm.loop !4

.loopexit.i88:                                    ; preds = %.lr.ph.i.i.i.i.i83, %.preheader, %..loopexit_crit_edge21.i.i.i.i.i87, %.noexc93
  %i.ee = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS4_NS2_6theory2bv5CountEESaISA_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS6_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %.noexc94 unwind label %bb.ag

.noexc94:                                         ; preds = %.loopexit.i88
  store i64 1, ptr %i.ee, align 4, !tbaa !57
  br label %_ZN4cvc58internal6theory2bvL6insertERSt13unordered_mapINS0_12NodeTemplateILb0EEENS2_5CountESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEES5_b.exit

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory2bv5CountESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE4findERSC_.exit.i89: ; preds = %bb.ae, %bb.ab, %bb.ad
  %i.ef = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS4_NS2_6theory2bv5CountEESaISA_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS6_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %.noexc95 unwind label %bb.ag  ; 2 uses

.noexc95:                                         ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory2bv5CountESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE4findERSC_.exit.i89
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !103
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !103
  br label %_ZN4cvc58internal6theory2bvL6insertERSt13unordered_mapINS0_12NodeTemplateILb0EEENS2_5CountESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEES5_b.exit

bb.ag:                                            ; preds = %bb.w, %.loopexit.i78, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory2bv5CountESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE4findERSC_.exit.i, %bb.t, %bb.g, %bb.c, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory2bv5CountESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE4findERSC_.exit.i89, %.loopexit.i88, %bb.ac
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

_ZN4cvc58internal6theory2bvL6insertERSt13unordered_mapINS0_12NodeTemplateILb0EEENS2_5CountESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEES5_b.exit: ; preds = %.noexc94, %.noexc95, %.noexc79, %.noexc80, %_ZN4cvc58internal9BitVectorD2Ev.exit74
  %.2 = phi i8 [ 1, %_ZN4cvc58internal9BitVectorD2Ev.exit74 ], [ %.022, %.noexc79 ], [ %.022, %.noexc80 ], [ %.022, %.noexc95 ], [ %.022, %.noexc94 ]
  %i.ej = add i32 %.021, 1
  br label %bb.c, !llvm.loop !2085

bb.ah:                                            ; preds = %.lr.ph, %bb.bo
  %.020184 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.bo ] ; 4 uses
  %.sroa.0148.0183 = phi ptr [ %i.ae, %.lr.ph ], [ %i.hp, %bb.bo ] ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0148.0183, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0148.0183, i64 16
  %i.em = load <2 x i32>, ptr %i.el, align 8, !tbaa !57
  %.fr254 = freeze <2 x i32> %i.em
  %i.en = and <2 x i32> %.fr254, splat (i32 1)
  %i.eo = icmp eq <2 x i32> %i.en, zeroinitializer ; 3 uses
  %i.ep = extractelement <2 x i1> %i.eo, i64 1
  %24 = bitcast <2 x i1> %i.eo to i2
  %or.cond.not = icmp eq i2 %24, 0
  br i1 %or.cond.not, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eq = add i32 %.020184, 1
  br label %bb.bo

bb.aj:                                            ; preds = %bb.ah
  %25 = extractelement <2 x i1> %i.eo, i64 0
  br i1 %25, label %bb.az, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.er = load ptr, ptr %i.ek, align 8, !tbaa !40 ; 5 uses
  store ptr %i.er, ptr %16, align 8, !tbaa !42
  %i.es = load i64, ptr %i.er, align 8            ; 3 uses
  %i.et = lshr i64 %i.es, 40
  %i.eu = trunc nuw nsw i64 %i.et to i32
  %i.ev = and i32 %i.eu, 1048575                  ; 3 uses
  %i.ew = icmp samesign ult i32 %i.ev, 1048574
  br i1 %i.ew, label %bb.al, label %bb.am, !prof !44

bb.al:                                            ; preds = %bb.ak
  %i.ex = add nuw nsw i32 %i.ev, 1
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = shl nuw nsw i64 %i.ey, 40
  %i.fa = and i64 %i.es, -1152920405095219201
  %i.fb = or i64 %i.ez, %i.fa
  store i64 %i.fb, ptr %i.er, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.am:                                            ; preds = %bb.ak
  %i.fc = icmp eq i32 %i.ev, 1048574
  br i1 %i.fc, label %bb.an, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !45

bb.an:                                            ; preds = %bb.am
  %i.fd = or i64 %i.es, 1152920405095219200
  store i64 %i.fd, ptr %i.er, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.er)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit unwind label %bb.aw

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.am, %bb.al, %bb.an
  %i.fe = load ptr, ptr %i.af, align 8, !tbaa !70 ; 3 uses
  %i.ff = load ptr, ptr %i.ag, align 8, !tbaa !71
  %.not.i.i = icmp eq ptr %i.fe, %i.ff
  br i1 %.not.i.i, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.fg = load ptr, ptr %16, align 8, !tbaa !42   ; 5 uses
  store ptr %i.fg, ptr %i.fe, align 8, !tbaa !42
  %i.fh = load i64, ptr %i.fg, align 8            ; 3 uses
  %i.fi = lshr i64 %i.fh, 40
  %i.fj = trunc nuw nsw i64 %i.fi to i32
  %i.fk = and i32 %i.fj, 1048575                  ; 3 uses
  %i.fl = icmp samesign ult i32 %i.fk, 1048574
  br i1 %i.fl, label %bb.ap, label %bb.aq, !prof !44

bb.ap:                                            ; preds = %bb.ao
  %i.fm = add nuw nsw i32 %i.fk, 1
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = shl nuw nsw i64 %i.fn, 40
  %i.fp = and i64 %i.fh, -1152920405095219201
  %i.fq = or i64 %i.fo, %i.fp
  store i64 %i.fq, ptr %i.fg, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.fr = icmp eq i32 %i.fk, 1048574
  br i1 %i.fr, label %bb.ar, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, !prof !45

bb.ar:                                            ; preds = %bb.aq
  %i.fs = or i64 %i.fh, 1152920405095219200
  store i64 %i.fs, ptr %i.fg, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i unwind label %bb.ax

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i: ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.ft = load ptr, ptr %i.af, align 8, !tbaa !70
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr %i.fu, ptr %i.af, align 8, !tbaa !70
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit

bb.as:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr %i.fe, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit unwind label %bb.ax

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, %bb.as
  %i.fv = load ptr, ptr %16, align 8, !tbaa !42   ; 3 uses
  %i.fw = load i64, ptr %i.fv, align 8            ; 3 uses
  %i.fx = and i64 %i.fw, 1152920405095219200
  %.not.i.i100 = icmp eq i64 %i.fx, 1152920405095219200
  br i1 %.not.i.i100, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.at, !prof !45

bb.at:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit
  %i.fy = add i64 %i.fw, 1152920405095219200
  %i.fz = and i64 %i.fy, 1152920405095219200      ; 2 uses
  %i.ga = and i64 %i.fw, -1152920405095219201
  %i.gb = or disjoint i64 %i.fz, %i.ga
  store i64 %i.gb, ptr %i.fv, align 8
  %i.gc = icmp eq i64 %i.fz, 0
  br i1 %i.gc, label %bb.au, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !45

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gd = landingpad { ptr, i32 }
          catch ptr null
  %i.ge = extractvalue { ptr, i32 } %i.gd, 0
  call void @__clang_call_terminate(ptr %i.ge) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.bo

bb.aw:                                            ; preds = %bb.an
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.as, %bb.ar
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #24
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn60 = phi { ptr, i32 } [ %i.gg, %bb.ax ], [ %i.gf, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.dp

bb.az:                                            ; preds = %bb.aj
  br i1 %i.ep, label %bb.bo, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.gh = load ptr, ptr %i.ek, align 8, !tbaa !40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !2092
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !47, !noalias !2092
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef %i.gj, i32 noundef 99)
          to label %.noexc101 unwind label %bb.bm

.noexc101:                                        ; preds = %bb.ba
  store ptr %i.gh, ptr %6, align 8, !tbaa !40, !noalias !2092
  %i.gk = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull align 8 %6)
          to label %bb.bb unwind label %bb.bc, !noalias !2092 ; 0 uses

bb.bb:                                            ; preds = %.noexc101
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %17, ptr noundef nonnull align 8 dereferenceable(124) %5)
          to label %bb.bd unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.noexc101
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !2092
  br label %.body

bb.bd:                                            ; preds = %bb.bb
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !2092
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.gm = load ptr, ptr %i.af, align 8, !tbaa !70 ; 3 uses
  %i.gn = load ptr, ptr %i.ag, align 8, !tbaa !71
  %.not.i.i102 = icmp eq ptr %i.gm, %i.gn
  br i1 %.not.i.i102, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.go = load ptr, ptr %17, align 8, !tbaa !42   ; 5 uses
  store ptr %i.go, ptr %i.gm, align 8, !tbaa !42
  %i.gp = load i64, ptr %i.go, align 8            ; 3 uses
  %i.gq = lshr i64 %i.gp, 40
  %i.gr = trunc nuw nsw i64 %i.gq to i32
  %i.gs = and i32 %i.gr, 1048575                  ; 3 uses
  %i.gt = icmp samesign ult i32 %i.gs, 1048574
  br i1 %i.gt, label %bb.bf, label %bb.bg, !prof !44

bb.bf:                                            ; preds = %bb.be
  %i.gu = add nuw nsw i32 %i.gs, 1
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = shl nuw nsw i64 %i.gv, 40
  %i.gx = and i64 %i.gp, -1152920405095219201
  %i.gy = or i64 %i.gw, %i.gx
  store i64 %i.gy, ptr %i.go, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i103

bb.bg:                                            ; preds = %bb.be
  %i.gz = icmp eq i32 %i.gs, 1048574
  br i1 %i.gz, label %bb.bh, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i103, !prof !45

bb.bh:                                            ; preds = %bb.bg
  %i.ha = or i64 %i.gp, 1152920405095219200
  store i64 %i.ha, ptr %i.go, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.go)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i103 unwind label %bb.bn

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i103: ; preds = %bb.bh, %bb.bg, %bb.bf
  %i.hb = load ptr, ptr %i.af, align 8, !tbaa !70
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store ptr %i.hc, ptr %i.af, align 8, !tbaa !70
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit106

bb.bi:                                            ; preds = %bb.bd
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr %i.gm, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit106 unwind label %bb.bn

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit106: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i103, %bb.bi
  %i.hd = load ptr, ptr %17, align 8, !tbaa !42   ; 3 uses
  %i.he = load i64, ptr %i.hd, align 8            ; 3 uses
  %i.hf = and i64 %i.he, 1152920405095219200
  %.not.i.i107 = icmp eq i64 %i.hf, 1152920405095219200
  br i1 %.not.i.i107, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit108, label %bb.bj, !prof !45

bb.bj:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit106
  %i.hg = add i64 %i.he, 1152920405095219200
  %i.hh = and i64 %i.hg, 1152920405095219200      ; 2 uses
  %i.hi = and i64 %i.he, -1152920405095219201
  %i.hj = or disjoint i64 %i.hh, %i.hi
  store i64 %i.hj, ptr %i.hd, align 8
  %i.hk = icmp eq i64 %i.hh, 0
  br i1 %i.hk, label %bb.bk, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit108, !prof !45

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hd)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit108 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hl = landingpad { ptr, i32 }
          catch ptr null
  %i.hm = extractvalue { ptr, i32 } %i.hl, 0
  call void @__clang_call_terminate(ptr %i.hm) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit108: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit106, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.bo

bb.bm:                                            ; preds = %bb.ba
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bn:                                            ; preds = %bb.bi, %bb.bh
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #24
  br label %.body

.body:                                            ; preds = %bb.bm, %bb.bc, %bb.bn
  %.pn58 = phi { ptr, i32 } [ %i.ho, %bb.bn ], [ %i.hn, %bb.bm ], [ %i.gl, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.dp

bb.bo:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit108, %bb.az, %bb.ai
  %.1 = phi i32 [ %i.eq, %bb.ai ], [ %.020184, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ %.020184, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit108 ], [ %.020184, %bb.az ] ; 2 uses
  %i.hp = load ptr, ptr %.sroa.0148.0183, align 8, !tbaa !97 ; 2 uses
  %.not160 = icmp eq ptr %i.hp, null
  br i1 %.not160, label %._crit_edge, label %bb.ah, !llvm.loop !2088

._crit_edge:                                      ; preds = %bb.bo, %bb.e
  %.020.lcssa = phi i32 [ 0, %bb.e ], [ %.1, %bb.bo ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  invoke void @_ZN4cvc58internal9BitVector6mkOnesEj(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::BitVector") align 8 %19, i32 noundef %i.i)
          to label %bb.bp unwind label %bb.by

bb.bp:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  store i32 %i.i, ptr %20, align 8, !tbaa !56
  %i.hq = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 8 uses
  call void @__gmpz_init(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNK4cvc58internal7Integer9modByPow2Ej(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::Integer") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.hq, i32 noundef %i.i)
          to label %bb.bq unwind label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.hq, i64 16, i1 false), !tbaa.struct !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hq, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.bu unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  call void @__clang_call_terminate(ptr %i.hs) #25
  unreachable

bb.bs:                                            ; preds = %bb.bp
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.hq)
          to label %.body109 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  %i.hv = extractvalue { ptr, i32 } %i.hu, 0
  call void @__clang_call_terminate(ptr %i.hv) #25
  unreachable

bb.bu:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.not = icmp eq i32 %.020.lcssa, 0
  br i1 %.not, label %_ZNSt6vectorIN4cvc58internal9BitVectorESaIS2_EE9push_backERKS2_.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hw = and i32 %.020.lcssa, 1
  %.not46 = icmp eq i32 %i.hw, 0                  ; 2 uses
  %. = select i1 %.not46, ptr %20, ptr %19        ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !110 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !111
  %.not.i111 = icmp eq ptr %i.hy, %i.ia
  br i1 %.not.i111, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ib = load i32, ptr %., align 8, !tbaa !56
  store i32 %i.ib, ptr %i.hy, align 8, !tbaa !56
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %.sroa.gep144 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %..sroa.sel = select i1 %.not46, ptr %i.hq, ptr %.sroa.gep144
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(16) %i.ic, ptr noundef nonnull align 8 dereferenceable(16) %..sroa.sel)
          to label %.noexc112 unwind label %bb.bz

end_hunk_0
