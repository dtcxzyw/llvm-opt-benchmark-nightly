Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/theory_model_builder?download=true
inline.NumInlined: 3055
inline.NumDeleted: 1063
begin_hunk_0_@_ZN4cvc58internal6theory24TheoryEngineModelBuilder9normalizeEPNS1_11TheoryModelENS0_12NodeTemplateILb0EEEb:bb.a
  %6 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %8 = alloca %"class.std::vector.289", align 8   ; 16 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 17 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate.295", align 8 ; 2 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate.295", align 8 ; 5 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate.295", align 8 ; 2 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate.295", align 8 ; 2 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %17 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %18 = alloca %"class.cvc5::internal::NodeTemplate.295", align 8 ; 2 uses
  %19 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !60     ; 7 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = lshr i64 %i.b, 40
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 1048575                    ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !45

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j                        ; 2 uses
  store i64 %i.k, ptr %i.a, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !46

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %.pre.pre = load i64, ptr %i.a, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.pre = phi i64 [ %i.k, %bb.b ], [ %i.b, %bb.c ], [ %.pre.pre, %bb.d ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 12 uses
  %.not10.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.q = and i64 %.pre, 1099511627775             ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57
  %i.t = load i64, ptr %i.s, align 8
  %i.u = and i64 %i.t, 1099511627775
  %i.v = icmp samesign ult i64 %i.u, %i.q         ; 2 uses
  %.19.i.i.i = select i1 %i.v, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.v, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !102 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %bb.e, !llvm.loop !1

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %bb.e
  %i.w = icmp eq ptr %.19.i.i.i, %i.p
  br i1 %i.w, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !57
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = and i64 %i.z, 1099511627775
  %i.ab = icmp samesign ult i64 %i.q, %i.aa
  %spec.select.i.i = select i1 %i.ab, ptr %i.p, ptr %.19.i.i.i
  br label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit: ; preds = %bb.f, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %.sroa.0.0.i.i = phi ptr [ %i.p, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit ], [ %i.p, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i ], [ %spec.select.i.i, %bb.f ] ; 2 uses
  %i.ac = and i64 %.pre, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ac, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.g, !prof !46

bb.g:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit
  %i.ad = add i64 %.pre, 1152920405095219200
  %i.ae = and i64 %i.ad, 1152920405095219200      ; 2 uses
  %i.af = and i64 %.pre, -1152920405095219201
  %i.ag = or disjoint i64 %i.ae, %i.af
  store i64 %i.ag, ptr %i.a, align 8
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %bb.h, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !46

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit, %bb.g, %bb.h
  %.not275 = icmp eq ptr %.sroa.0.0.i.i, %i.p
  %.pre288 = load ptr, ptr %3, align 8, !tbaa !60 ; 2 uses
  br i1 %.not275, label %bb.p, label %bb.j

bb.j:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57 ; 2 uses
  %.not.i = icmp eq ptr %.pre288, %i.al
  br i1 %.not.i, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit, label %bb.k, !prof !46

bb.k:                                             ; preds = %bb.j
  store ptr %i.al, ptr %3, align 8, !tbaa !60
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit

_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit: ; preds = %bb.j, %bb.k
  %i.am = tail call noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb0EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.pre287 = load ptr, ptr %3, align 8, !tbaa !60 ; 6 uses
  br i1 %i.am, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit
  store ptr %.pre287, ptr %0, align 8, !tbaa !57
  %i.an = load i64, ptr %.pre287, align 8         ; 3 uses
  %i.ao = lshr i64 %i.an, 40
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = and i32 %i.ap, 1048575                  ; 3 uses
  %i.ar = icmp samesign ult i32 %i.aq, 1048574
  br i1 %i.ar, label %bb.m, label %bb.n, !prof !45

bb.m:                                             ; preds = %bb.l
  %i.as = add nuw nsw i32 %i.aq, 1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 40
  %i.av = and i64 %i.an, -1152920405095219201
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %.pre287, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit50

bb.n:                                             ; preds = %bb.l
  %i.ax = icmp eq i32 %i.aq, 1048574
  br i1 %i.ax, label %bb.o, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit50, !prof !46

bb.o:                                             ; preds = %bb.n
  %i.ay = or i64 %i.an, 1152920405095219200
  store i64 %i.ay, ptr %.pre287, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre287)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit50

bb.p:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.az = phi ptr [ %.pre287, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit ], [ %.pre288, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %i.az, ptr %7, align 8, !tbaa !57
  %i.bb = load i64, ptr %i.az, align 8            ; 3 uses
  %i.bc = lshr i64 %i.bb, 40
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = and i32 %i.bd, 1048575                  ; 3 uses
  %i.bf = icmp samesign ult i32 %i.be, 1048574
  br i1 %i.bf, label %bb.q, label %bb.r, !prof !45

bb.q:                                             ; preds = %bb.p
  %i.bg = add nuw nsw i32 %i.be, 1
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 40
  %i.bj = and i64 %i.bb, -1152920405095219201
  %i.bk = or i64 %i.bi, %i.bj
  store i64 %i.bk, ptr %i.az, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit51

bb.r:                                             ; preds = %bb.p
  %i.bl = icmp eq i32 %i.be, 1048574
  br i1 %i.bl, label %bb.s, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit51, !prof !46

bb.s:                                             ; preds = %bb.r
  %i.bm = or i64 %i.bb, 1152920405095219200
  store i64 %i.bm, ptr %i.az, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.az)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit51

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit51: ; preds = %bb.q, %bb.r, %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !103
  %.not.not.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.not.i.i, label %bb.t, label %bb.w

bb.t:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit51
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bq = load ptr, ptr %7, align 8               ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.sroa.06.0.in.i.i = phi ptr [ %i.bp, %bb.t ], [ %.sroa.06.0.i.i, %bb.v ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !104 ; 4 uses
  %.not.i.i52 = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i52, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEE4findERS9_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !57
  %i.bt = icmp eq ptr %i.bq, %i.bs
  br i1 %i.bt, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEE4findERS9_.exit, label %bb.u, !llvm.loop !378

bb.w:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit51
  %i.bu = invoke noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc unwind label %bb.ah    ; 3 uses

.noexc:                                           ; preds = %bb.w
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !31 ; 2 uses
  %i.bx = urem i64 %i.bu, %i.bw                   ; 2 uses
  %i.by = load ptr, ptr %i.ba, align 8, !tbaa !30
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ca, null
  %.pre289 = load ptr, ptr %7, align 8            ; 7 uses
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEE4findERS9_.exit, label %bb.x

bb.x:                                             ; preds = %.noexc
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !104 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !107
  %i.cf = icmp eq i64 %i.bu, %i.ce
  %i.cg = load ptr, ptr %i.cc, align 8
  %i.ch = icmp eq ptr %.pre289, %i.cg
  %i.ci = select i1 %i.cf, i1 %i.ch, i1 false
  br i1 %i.ci, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEE4findERS9_.exit, label %.lr.ph.i.i.i.i

bb.y:                                             ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.ck = icmp eq i64 %i.bu, %i.cq
  %i.cl = load ptr, ptr %i.cj, align 8
  %i.cm = icmp eq ptr %.pre289, %i.cl
  %i.cn = select i1 %i.ck, i1 %i.cm, i1 false
  br i1 %i.cn, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEE4findERS9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i:                                   ; preds = %bb.x, %bb.y
  %.020.i.i.i.i = phi ptr [ %i.co, %bb.y ], [ %i.cb, %bb.x ]
  %i.co = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !104 ; 5 uses
  %.not18.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEE4findERS9_.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !107 ; 2 uses
  %i.cr = urem i64 %i.cq, %i.bw
  %.not19.i.i.i.i = icmp eq i64 %i.cr, %i.bx
  br i1 %.not19.i.i.i.i, label %bb.y, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !2

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.z
  br label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEE4findERS9_.exit, !llvm.loop !2

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEE4findERS9_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.y, %bb.v, %bb.u, %..loopexit_crit_edge21.i.i.i.i, %bb.x, %.noexc
  %i.cs = phi ptr [ %.pre289, %..loopexit_crit_edge21.i.i.i.i ], [ %i.bq, %bb.v ], [ %.pre289, %bb.x ], [ %.pre289, %.noexc ], [ %i.bq, %bb.u ], [ %.pre289, %bb.y ], [ %.pre289, %.lr.ph.i.i.i.i ] ; 3 uses
  %.sroa.06.1.i.i = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i ], [ %.sroa.06.0.i.i, %bb.v ], [ %i.cb, %bb.x ], [ null, %.noexc ], [ null, %bb.u ], [ null, %.lr.ph.i.i.i.i ], [ %i.co, %bb.y ] ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8            ; 3 uses
  %i.cu = and i64 %i.ct, 1152920405095219200
  %.not.i.i53 = icmp eq i64 %i.cu, 1152920405095219200
  br i1 %.not.i.i53, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit54, label %bb.aa, !prof !46

bb.aa:                                            ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEE4findERS9_.exit
  %i.cv = add i64 %i.ct, 1152920405095219200
  %i.cw = and i64 %i.cv, 1152920405095219200      ; 2 uses
  %i.cx = and i64 %i.ct, -1152920405095219201
  %i.cy = or disjoint i64 %i.cw, %i.cx
  store i64 %i.cy, ptr %i.cs, align 8
  %i.cz = icmp eq i64 %i.cw, 0
  br i1 %i.cz, label %bb.ab, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit54, !prof !46

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit54 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit54: ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEE4findERS9_.exit, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %.not276 = icmp eq ptr %.sroa.06.1.i.i, null
  br i1 %.not276, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit54
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !57 ; 5 uses
  store ptr %i.dd, ptr %0, align 8, !tbaa !57
  %i.de = load i64, ptr %i.dd, align 8            ; 3 uses
  %i.df = lshr i64 %i.de, 40
  %i.dg = trunc nuw nsw i64 %i.df to i32
  %i.dh = and i32 %i.dg, 1048575                  ; 3 uses
  %i.di = icmp samesign ult i32 %i.dh, 1048574
  br i1 %i.di, label %bb.ae, label %bb.af, !prof !45

bb.ae:                                            ; preds = %bb.ad
  %i.dj = add nuw nsw i32 %i.dh, 1
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = shl nuw nsw i64 %i.dk, 40
  %i.dm = and i64 %i.de, -1152920405095219201
  %i.dn = or i64 %i.dl, %i.dm
  store i64 %i.dn, ptr %i.dd, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit50

bb.af:                                            ; preds = %bb.ad
  %i.do = icmp eq i32 %i.dh, 1048574
  br i1 %i.do, label %bb.ag, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit50, !prof !46

bb.ag:                                            ; preds = %bb.af
  %i.dp = or i64 %i.de, 1152920405095219200
  store i64 %i.dp, ptr %i.dd, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dd)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit50

bb.ah:                                            ; preds = %bb.w
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.fh

bb.ai:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit54
  %i.dr = load ptr, ptr %3, align 8, !tbaa !60    ; 11 uses
  store ptr %i.dr, ptr %0, align 8, !tbaa !57
  %i.ds = load i64, ptr %i.dr, align 8            ; 3 uses
  %i.dt = lshr i64 %i.ds, 40
  %i.du = trunc nuw nsw i64 %i.dt to i32
  %i.dv = and i32 %i.du, 1048575                  ; 3 uses
  %i.dw = icmp samesign ult i32 %i.dv, 1048574
  br i1 %i.dw, label %bb.aj, label %bb.ak, !prof !45

bb.aj:                                            ; preds = %bb.ai
  %i.dx = add nuw nsw i32 %i.dv, 1
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = shl nuw nsw i64 %i.dy, 40
  %i.ea = and i64 %i.ds, -1152920405095219201
  %i.eb = or i64 %i.dz, %i.ea
  store i64 %i.eb, ptr %i.dr, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit57

bb.ak:                                            ; preds = %bb.ai
  %i.ec = icmp eq i32 %i.dv, 1048574
  br i1 %i.ec, label %bb.al, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit57, !prof !46

bb.al:                                            ; preds = %bb.ak
  %i.ed = or i64 %i.ds, 1152920405095219200
  store i64 %i.ed, ptr %i.dr, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dr)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit57

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit57: ; preds = %bb.aj, %bb.ak, %bb.al
  %i.ee = load ptr, ptr %3, align 8, !tbaa !60
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = and i32 %i.eh, 1023                     ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 1023
  %i.ek = select i1 %i.ej, i32 -1, i32 %i.ei
  %i.el = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ek)
          to label %bb.am unwind label %bb.ay

bb.am:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit57
  %i.em = icmp eq i32 %i.el, 2
  %i.en = load i64, ptr %i.ef, align 8
  %i.eo = lshr i64 %i.en, 32
  %i.ep = and i64 %i.eo, 67108863
  %i.eq = sext i1 %i.em to i64
  %i.er = add nsw i64 %i.ep, %i.eq
  %i.es = and i64 %i.er, 4294967295
  %.not = icmp eq i64 %i.es, 0
  br i1 %.not, label %bb.eq, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.et = load ptr, ptr %3, align 8, !tbaa !60
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = trunc i64 %i.ev to i32
  %i.ex = and i32 %i.ew, 1023
  %i.ey = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ex)
          to label %_ZNK4cvc58internal12NodeTemplateILb0EE11getMetaKindEv.exit unwind label %bb.az

_ZNK4cvc58internal12NodeTemplateILb0EE11getMetaKindEv.exit: ; preds = %bb.an
  %i.ez = icmp eq i32 %i.ey, 2
  br i1 %i.ez, label %bb.ao, label %bb.bd

bb.ao:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb0EE11getMetaKindEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNK4cvc58internal12NodeTemplateILb0EE11getOperatorEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ap unwind label %bb.ba

bb.ap:                                            ; preds = %bb.ao
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !109 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !110
  %.not.i.i60 = icmp eq ptr %i.fb, %i.fd
  br i1 %.not.i.i60, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fe = load ptr, ptr %9, align 8, !tbaa !57    ; 5 uses
  store ptr %i.fe, ptr %i.fb, align 8, !tbaa !57
  %i.ff = load i64, ptr %i.fe, align 8            ; 3 uses
  %i.fg = lshr i64 %i.ff, 40
  %i.fh = trunc nuw nsw i64 %i.fg to i32
  %i.fi = and i32 %i.fh, 1048575                  ; 3 uses
  %i.fj = icmp samesign ult i32 %i.fi, 1048574
  br i1 %i.fj, label %bb.ar, label %bb.as, !prof !45

bb.ar:                                            ; preds = %bb.aq
  %i.fk = add nuw nsw i32 %i.fi, 1
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = shl nuw nsw i64 %i.fl, 40
  %i.fn = and i64 %i.ff, -1152920405095219201
  %i.fo = or i64 %i.fm, %i.fn
  store i64 %i.fo, ptr %i.fe, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i

bb.as:                                            ; preds = %bb.aq
  %i.fp = icmp eq i32 %i.fi, 1048574
  br i1 %i.fp, label %bb.at, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, !prof !46

bb.at:                                            ; preds = %bb.as
  %i.fq = or i64 %i.ff, 1152920405095219200
  store i64 %i.fq, ptr %i.fe, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fe)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i unwind label %bb.bb

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i: ; preds = %bb.at, %bb.as, %bb.ar
  %i.fr = load ptr, ptr %i.fa, align 8, !tbaa !109
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store ptr %i.fs, ptr %i.fa, align 8, !tbaa !109
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit

bb.au:                                            ; preds = %bb.ap
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.fb, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit unwind label %bb.bb

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, %bb.au
  %i.ft = load ptr, ptr %9, align 8, !tbaa !57    ; 3 uses
  %i.fu = load i64, ptr %i.ft, align 8            ; 3 uses
  %i.fv = and i64 %i.fu, 1152920405095219200
  %.not.i.i63 = icmp eq i64 %i.fv, 1152920405095219200
  br i1 %.not.i.i63, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit64, label %bb.av, !prof !46

bb.av:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit
  %i.fw = add i64 %i.fu, 1152920405095219200
  %i.fx = and i64 %i.fw, 1152920405095219200      ; 2 uses
  %i.fy = and i64 %i.fu, -1152920405095219201
  %i.fz = or disjoint i64 %i.fx, %i.fy
  store i64 %i.fz, ptr %i.ft, align 8
  %i.ga = icmp eq i64 %i.fx, 0
  br i1 %i.ga, label %bb.aw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit64, !prof !46
end_hunk_0
begin_hunk_1_@_ZNK4cvc58internal12NodeTemplateILb0EE7getTypeEb:bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !60
  call void @_ZN4cvc58internal11NodeManager7getTypeENS0_12NodeTemplateILb0EEEbPSo(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull align 8 %3, i1 noundef zeroext %2, ptr noundef null)
  %i.b = load ptr, ptr %0, align 8, !tbaa !44
  %i.c = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.f, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %bb.c
  store i64 1152920405095219200, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store ptr %i.f, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !55
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  br label %.body

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.i = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !55
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.k = load ptr, ptr %1, align 8, !tbaa !60
  store ptr %i.k, ptr %6, align 8, !tbaa !60
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  invoke void @_ZN4cvc58internal11NodeManager7getTypeENS0_12NodeTemplateILb0EEEbPSo(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %5, ptr noundef nonnull align 8 %6, i1 noundef zeroext %2, ptr noundef nonnull %i.l)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal8TypeNodeaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.j unwind label %bb.o       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.n = call ptr @__cxa_allocate_exception(i64 48) #23 ; 3 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !60
  store ptr %i.o, ptr %7, align 8, !tbaa !60
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.k unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4cvc58internal28TypeCheckingExceptionPrivateC1ENS0_12NodeTemplateILb0EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 %8)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN4cvc58internal28TypeCheckingExceptionPrivateE, ptr nonnull @_ZN4cvc58internal28TypeCheckingExceptionPrivateD1Ev) #26
          to label %bb.v unwind label %bb.q

bb.m:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.n:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #23
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.r, %bb.o ], [ %i.q, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i1 [ false, %bb.l ], [ true, %bb.k ]  ; 2 uses
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.u = load ptr, ptr %8, align 8, !tbaa !114    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.x = load i64, ptr %i.v, align 8, !tbaa !115
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #24
  br i1 %.0, label %bb.r, label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q
  br i1 %.0, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn1523 = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.n) #23
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.r, %bb.p
  %.pn15.pn = phi { ptr, i32 } [ %.pn1523, %bb.r ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %bb.p ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #23
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.m
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn15.pn, %bb.s ], [ %i.p, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.u:                                             ; preds = %bb.f
  ret void

.body:                                            ; preds = %bb.e, %bb.t
  %.pn15.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn, %bb.t ], [ %i.h, %bb.e ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #23
  resume { ptr, i32 } %.pn15.pn.pn.pn

bb.v:                                             ; preds = %bb.l
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory24TheoryEngineModelBuilder21addAssignableSubtermsENS0_12NodeTemplateILb0EEEPNS1_11TheoryModelERSt13unordered_setINS3_ILb1EEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull align 8 dereferenceable(56) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate.295", align 8 ; 4 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.295", align 8 ; 2 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.295", align 8 ; 2 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023
  %i.f = tail call noundef zeroext i1 @_ZN4cvc58internal4kind13isClosureKindENS1_6Kind_tE(i32 noundef %i.e)
  br i1 %i.f, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.g = load ptr, ptr %1, align 8, !tbaa !60     ; 5 uses
  store ptr %i.g, ptr %6, align 8, !tbaa !57
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = lshr i64 %i.h, 40
  %i.j = trunc nuw nsw i64 %i.i to i32
  %i.k = and i32 %i.j, 1048575                    ; 3 uses
  %i.l = icmp samesign ult i32 %i.k, 1048574
  br i1 %i.l, label %bb.c, label %bb.d, !prof !45

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw nsw i32 %i.k, 1
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 40
  %i.p = and i64 %i.h, -1152920405095219201
  %i.q = or i64 %i.o, %i.p
  store i64 %i.q, ptr %i.g, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.d:                                             ; preds = %bb.b
  %i.r = icmp eq i32 %i.k, 1048574
  br i1 %i.r, label %bb.e, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !46

bb.e:                                             ; preds = %bb.d
  %i.s = or i64 %i.h, 1152920405095219200
  store i64 %i.s, ptr %i.g, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !116
  %.not.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.not.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %6, align 8                ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.06.0.in.i.i = phi ptr [ %i.v, %bb.f ], [ %.sroa.06.0.i.i, %bb.h ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !104 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !57
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit, label %bb.g, !llvm.loop !4

bb.i:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.aa = invoke noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc unwind label %bb.p     ; 3 uses

.noexc:                                           ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !117 ; 2 uses
  %i.ad = urem i64 %i.aa, %i.ac                   ; 2 uses
  %i.ae = load ptr, ptr %3, align 8, !tbaa !118
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  %.pre = load ptr, ptr %6, align 8               ; 7 uses
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit, label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !104 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !107
  %i.al = icmp eq i64 %i.aa, %i.ak
  %i.am = load ptr, ptr %i.ai, align 8
  %i.an = icmp eq ptr %.pre, %i.am
  %i.ao = select i1 %i.al, i1 %i.an, i1 false
  br i1 %i.ao, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aq = icmp eq i64 %i.aa, %i.aw
  %i.ar = load ptr, ptr %i.ap, align 8
  %i.as = icmp eq ptr %.pre, %i.ar
  %i.at = select i1 %i.aq, i1 %i.as, i1 false
  br i1 %i.at, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !5

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %bb.k
  %.020.i.i.i.i = phi ptr [ %i.au, %bb.k ], [ %i.ah, %bb.j ]
  %i.au = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !104 ; 5 uses
  %.not18.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !107 ; 2 uses
  %i.ax = urem i64 %i.aw, %i.ac
  %.not19.i.i.i.i = icmp eq i64 %i.ax, %i.ad
  br i1 %.not19.i.i.i.i, label %bb.k, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !5

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.l
  br label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit, !llvm.loop !5

_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.k, %bb.h, %bb.g, %..loopexit_crit_edge21.i.i.i.i, %bb.j, %.noexc
  %i.ay = phi ptr [ %.pre, %..loopexit_crit_edge21.i.i.i.i ], [ %i.w, %bb.h ], [ %.pre, %bb.j ], [ %.pre, %.noexc ], [ %i.w, %bb.g ], [ %.pre, %bb.k ], [ %.pre, %.lr.ph.i.i.i.i ] ; 3 uses
  %.sroa.06.1.i.i = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i ], [ %.sroa.06.0.i.i, %bb.h ], [ %i.ah, %bb.j ], [ null, %.noexc ], [ null, %bb.g ], [ null, %.lr.ph.i.i.i.i ], [ %i.au, %bb.k ]
  %.not = icmp eq ptr %.sroa.06.1.i.i, null
  %i.az = load i64, ptr %i.ay, align 8            ; 3 uses
  %i.ba = and i64 %i.az, 1152920405095219200
  %.not.i.i10 = icmp eq i64 %i.ba, 1152920405095219200
  br i1 %.not.i.i10, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.m, !prof !46

bb.m:                                             ; preds = %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit
  %i.bb = add i64 %i.az, 1152920405095219200
  %i.bc = and i64 %i.bb, 1152920405095219200      ; 2 uses
  %i.bd = and i64 %i.az, -1152920405095219201
  %i.be = or disjoint i64 %i.bc, %i.bd
  store i64 %i.be, ptr %i.ay, align 8
  %i.bf = icmp eq i64 %i.bc, 0
  br i1 %i.bf, label %bb.n, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !46

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.not, label %bb.q, label %bb.aa

bb.p:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ac

bb.q:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.bj = load ptr, ptr %1, align 8, !tbaa !60
  store ptr %i.bj, ptr %7, align 8, !tbaa !60
  %i.bk = call noundef zeroext i1 @_ZN4cvc58internal6theory24TheoryEngineModelBuilder12isAssignableENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 %7)
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !101
  %i.bn = load ptr, ptr %1, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.bn, ptr %5, align 8, !tbaa !60
  call void @_ZN4cvc58internal6theory2eq14EqualityEngine15addTermInternalENS0_12NodeTemplateILb0EEEb(ptr noundef nonnull align 8 dereferenceable(1784) %i.bm, ptr noundef nonnull align 8 %5, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bo = load ptr, ptr %1, align 8, !tbaa !60    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = trunc i64 %i.bq to i32
  %i.bs = and i32 %i.br, 1023                     ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 1023
  %i.bu = select i1 %i.bt, i32 -1, i32 %i.bs
  %i.bv = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.bu)
  %i.bw = icmp eq i32 %i.bv, 2
  %spec.select.v.i.i = select i1 %i.bw, i64 32, i64 24
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 %spec.select.v.i.i ; 2 uses
  %i.bx = load ptr, ptr %1, align 8, !tbaa !60    ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = lshr i64 %i.ca, 32
  %i.cc = and i64 %i.cb, 67108863
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cc
  %.not2225 = icmp eq ptr %spec.select.i.i, %i.cd
  br i1 %.not2225, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.s
  %.lcssa = phi ptr [ %i.bx, %bb.s ], [ %i.ct, %.lr.ph ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %.lcssa, ptr %9, align 8, !tbaa !57
  %i.ce = load i64, ptr %.lcssa, align 8          ; 3 uses
  %i.cf = lshr i64 %i.ce, 40
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = and i32 %i.cg, 1048575                  ; 3 uses
  %i.ci = icmp samesign ult i32 %i.ch, 1048574
  br i1 %i.ci, label %bb.t, label %bb.u, !prof !45

bb.t:                                             ; preds = %._crit_edge
  %i.cj = add nuw nsw i32 %i.ch, 1
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, 40
  %i.cm = and i64 %i.ce, -1152920405095219201
  %i.cn = or i64 %i.cl, %i.cm
  store i64 %i.cn, ptr %.lcssa, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit12

bb.u:                                             ; preds = %._crit_edge
  %i.co = icmp eq i32 %i.ch, 1048574
  br i1 %i.co, label %bb.v, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit12, !prof !46

bb.v:                                             ; preds = %bb.u
  %i.cp = or i64 %i.ce, 1152920405095219200
  store i64 %i.cp, ptr %.lcssa, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %.lcssa)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit12

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit12: ; preds = %bb.t, %bb.u, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %3, ptr %4, align 8, !tbaa !120
  %i.cq = invoke { ptr, i8 } @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS3_S3_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.w unwind label %bb.ab      ; 0 uses

.lr.ph:                                           ; preds = %bb.s, %.lr.ph
  %.sroa.016.026 = phi ptr [ %i.cs, %.lr.ph ], [ %spec.select.i.i, %bb.s ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.cr = load ptr, ptr %.sroa.016.026, align 8, !tbaa !55, !noalias !402
  store ptr %i.cr, ptr %8, align 8, !tbaa !60, !alias.scope !402
  call void @_ZN4cvc58internal6theory24TheoryEngineModelBuilder21addAssignableSubtermsENS0_12NodeTemplateILb0EEEPNS1_11TheoryModelERSt13unordered_setINS3_ILb1EEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 %8, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.016.026, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %1, align 8, !tbaa !60    ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = lshr i64 %i.cw, 32
  %i.cy = and i64 %i.cx, 67108863
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cy
  %.not22 = icmp eq ptr %i.cs, %i.cz
  br i1 %.not22, label %._crit_edge, label %.lr.ph, !llvm.loop !401

bb.w:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.da = load ptr, ptr %9, align 8, !tbaa !57    ; 3 uses
  %i.db = load i64, ptr %i.da, align 8            ; 3 uses
  %i.dc = and i64 %i.db, 1152920405095219200
  %.not.i.i14 = icmp eq i64 %i.dc, 1152920405095219200
  br i1 %.not.i.i14, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit15, label %bb.x, !prof !46

bb.x:                                             ; preds = %bb.w
  %i.dd = add i64 %i.db, 1152920405095219200
  %i.de = and i64 %i.dd, 1152920405095219200      ; 2 uses
  %i.df = and i64 %i.db, -1152920405095219201
  %i.dg = or disjoint i64 %i.de, %i.df
  store i64 %i.dg, ptr %i.da, align 8
  %i.dh = icmp eq i64 %i.de, 0
  br i1 %i.dh, label %bb.y, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit15, !prof !46

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.da)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit15 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit15: ; preds = %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.a, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit15
  ret void

bb.ab:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit12
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.p ], [ %i.dk, %bb.ab ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory24TheoryEngineModelBuilder17assignConstantRepEPNS1_11TheoryModelENS0_12NodeTemplateILb1EEES6_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef align 8 %2, ptr nofree noundef readonly align 8 captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::tuple.802", align 8    ; 4 uses
  %5 = alloca %"class.std::tuple.791", align 1    ; 3 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !57
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 1099511627775              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
end_hunk_1
begin_hunk_2_@_ZN4cvc58internal6theory24TheoryEngineModelBuilder10buildModelEPNS1_11TheoryModelE:bb.a
  br i1 %i.ato, label %bb.ol, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit849, !prof !46

bb.ol:                                            ; preds = %bb.ok
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ath)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit849 unwind label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.atp = landingpad { ptr, i32 }
          catch ptr null
  %i.atq = extractvalue { ptr, i32 } %i.atp, 0
  call void @__clang_call_terminate(ptr %i.atq) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit849: ; preds = %bb.oj, %bb.ok, %bb.ol
  %i.atr = load ptr, ptr %85, align 8, !tbaa !57  ; 3 uses
  %i.ats = load i64, ptr %i.atr, align 8          ; 3 uses
  %i.att = and i64 %i.ats, 1152920405095219200
  %.not.i.i850 = icmp eq i64 %i.att, 1152920405095219200
  br i1 %.not.i.i850, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit852, label %bb.on, !prof !46

bb.on:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit849
  %i.atu = add i64 %i.ats, 1152920405095219200
  %i.atv = and i64 %i.atu, 1152920405095219200    ; 2 uses
  %i.atw = and i64 %i.ats, -1152920405095219201
  %i.atx = or disjoint i64 %i.atv, %i.atw
  store i64 %i.atx, ptr %i.atr, align 8
  %i.aty = icmp eq i64 %i.atv, 0
  br i1 %i.aty, label %bb.oo, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit852, !prof !46

bb.oo:                                            ; preds = %bb.on
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.atr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit852 unwind label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.atz = landingpad { ptr, i32 }
          catch ptr null
  %i.aua = extractvalue { ptr, i32 } %i.atz, 0
  call void @__clang_call_terminate(ptr %i.aua) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit852: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit849, %bb.on, %bb.oo
  %i.aub = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.02117.02953, ptr noundef nonnull align 8 dereferenceable(32) %i.aoc) #23 ; 2 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aub, i64 32
  %i.aud = load ptr, ptr %i.auc, align 8, !tbaa !57 ; 3 uses
  %i.aue = load i64, ptr %i.aud, align 8          ; 3 uses
  %i.auf = and i64 %i.aue, 1152920405095219200
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.auf, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3setIN4cvc58internal12NodeTemplateILb1EEESt4lessIS3_ESaIS3_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS3_E.exit, label %bb.oq, !prof !46

bb.oq:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit852
  %i.aug = add i64 %i.aue, 1152920405095219200
  %i.auh = and i64 %i.aug, 1152920405095219200    ; 2 uses
  %i.aui = and i64 %i.aue, -1152920405095219201
  %i.auj = or disjoint i64 %i.auh, %i.aui
  store i64 %i.auj, ptr %i.aud, align 8
  %i.auk = icmp eq i64 %i.auh, 0
  br i1 %i.auk, label %bb.or, label %_ZNSt3setIN4cvc58internal12NodeTemplateILb1EEESt4lessIS3_ESaIS3_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS3_E.exit, !prof !46

bb.or:                                            ; preds = %bb.oq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aud)
          to label %_ZNSt3setIN4cvc58internal12NodeTemplateILb1EEESt4lessIS3_ESaIS3_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS3_E.exit unwind label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.aul = landingpad { ptr, i32 }
          catch ptr null
  %i.aum = extractvalue { ptr, i32 } %i.aul, 0
  call void @__clang_call_terminate(ptr %i.aum) #25
  unreachable

_ZNSt3setIN4cvc58internal12NodeTemplateILb1EEESt4lessIS3_ESaIS3_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS3_E.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit852, %bb.oq, %bb.or
  call void @_ZdlPvm(ptr noundef nonnull %i.aub, i64 noundef 40) #24
  %i.aun = load i64, ptr %i.amw, align 8, !tbaa !41
  %i.auo = add i64 %i.aun, -1
  store i64 %i.auo, ptr %i.amw, align 8, !tbaa !41
  br label %bb.pm

bb.ot:                                            ; preds = %.noexc1761, %_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i, %bb.of, %bb.ny
  %i.aup = landingpad { ptr, i32 }
          cleanup
  br label %.body835

bb.ou:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit839
  %i.auq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %83) #23
  br label %.body835

bb.ov:                                            ; preds = %bb.oi
  %i.aur = landingpad { ptr, i32 }
          cleanup
  br label %bb.ox

bb.ow:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit846
  %i.aus = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %86) #23
  br label %bb.ox

bb.ox:                                            ; preds = %bb.ow, %bb.ov
  %.pn299 = phi { ptr, i32 } [ %i.aus, %bb.ow ], [ %i.aur, %bb.ov ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %85) #23
  br label %.body835

bb.oy:                                            ; preds = %bb.nu
  br i1 %i.arc, label %bb.oz, label %_ZNSt3setIN4cvc58internal8TypeNodeESt4lessIS2_ESaIS2_EE6insertERKS2_.exit

bb.oz:                                            ; preds = %bb.oy
  %.02022.i.i = load ptr, ptr %i.akg, align 8, !tbaa !102 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.oz
  %i.aut = load ptr, ptr %79, align 8, !tbaa !44
  %i.auu = load i64, ptr %i.aut, align 8
  %i.auv = and i64 %i.auu, 1099511627775          ; 2 uses
  br label %bb.pa

bb.pa:                                            ; preds = %bb.pa, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.pa ] ; 4 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.aux = load ptr, ptr %i.auw, align 8, !tbaa !44
  %i.auy = load i64, ptr %i.aux, align 8
  %i.auz = and i64 %i.auy, 1099511627775          ; 2 uses
  %i.ava = icmp samesign ult i64 %i.auv, %i.auz   ; 2 uses
  %.in.v.i.i = select i1 %i.ava, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !102 ; 2 uses
  %.not.i.i1760 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i1760, label %._crit_edge.i.i, label %bb.pa, !llvm.loop !475

._crit_edge.i.i:                                  ; preds = %bb.pa
  br i1 %i.ava, label %._crit_edge.thread.i.i, label %bb.pc

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.oz
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.akf, %bb.oz ] ; 4 uses
  %i.avb = load ptr, ptr %i.akh, align 8, !tbaa !39
  %i.avc = icmp eq ptr %.019.lcssa29.i.i, %i.avb
  br i1 %i.avc, label %select.unfold.i, label %bb.pb

bb.pb:                                            ; preds = %._crit_edge.thread.i.i
  %i.avd = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #27
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.avd, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !44
  %.pre18.i = load i64, ptr %.pre.i, align 8
  %.pre19.i = load ptr, ptr %79, align 8, !tbaa !44
  %.pre20.i = load i64, ptr %.pre19.i, align 8
  %.pre21.i = and i64 %.pre18.i, 1099511627775
  %.pre22.i = and i64 %.pre20.i, 1099511627775
  br label %bb.pc

bb.pc:                                            ; preds = %bb.pb, %._crit_edge.i.i
  %.pre-phi23.i = phi i64 [ %.pre22.i, %bb.pb ], [ %i.auv, %._crit_edge.i.i ]
  %.pre-phi.i = phi i64 [ %.pre21.i, %bb.pb ], [ %i.auz, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.pb ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.ave = icmp samesign ult i64 %.pre-phi.i, %.pre-phi23.i
  br i1 %i.ave, label %select.unfold.i, label %_ZNSt3setIN4cvc58internal8TypeNodeESt4lessIS2_ESaIS2_EE6insertERKS2_.exit

select.unfold.i:                                  ; preds = %bb.pc, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %.019.lcssa28.i.i, %bb.pc ] ; 3 uses
  %i.avf = icmp eq ptr %.sroa.4.0.i.ph.i, %i.akf
  br i1 %i.avf, label %_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i, label %bb.pd

bb.pd:                                            ; preds = %select.unfold.i
  %i.avg = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.avh = load ptr, ptr %79, align 8, !tbaa !44
  %i.avi = load i64, ptr %i.avh, align 8
  %i.avj = and i64 %i.avi, 1099511627775
  %i.avk = load ptr, ptr %i.avg, align 8, !tbaa !44
  %i.avl = load i64, ptr %i.avk, align 8
  %i.avm = and i64 %i.avl, 1099511627775
  %i.avn = icmp samesign ult i64 %i.avj, %i.avm
  br label %_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i

_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i: ; preds = %bb.pd, %select.unfold.i
  %i.avo = phi i1 [ %i.avn, %bb.pd ], [ true, %select.unfold.i ]
  %i.avp = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22
          to label %.noexc1761 unwind label %bb.ot ; 2 uses

.noexc1761:                                       ; preds = %_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %78, ptr noundef nonnull %i.avp, ptr noundef nonnull align 8 dereferenceable(8) %79)
          to label %.noexc1762 unwind label %bb.ot

.noexc1762:                                       ; preds = %.noexc1761
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.avo, ptr noundef nonnull %i.avp, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.akf) #23
  %i.avq = load i64, ptr %i.akj, align 8, !tbaa !41
  %i.avr = add i64 %i.avq, 1
  store i64 %i.avr, ptr %i.akj, align 8, !tbaa !41
  br label %_ZNSt3setIN4cvc58internal8TypeNodeESt4lessIS2_ESaIS2_EE6insertERKS2_.exit

_ZNSt3setIN4cvc58internal8TypeNodeESt4lessIS2_ESaIS2_EE6insertERKS2_.exit: ; preds = %bb.pc, %.noexc1762, %bb.oy
  %i.avs = load i64, ptr %i.akp, align 8, !tbaa !116
  %.not.not.i.i903 = icmp eq i64 %i.avs, 0
  br i1 %.not.not.i.i903, label %bb.pe, label %bb.ph

bb.pe:                                            ; preds = %_ZNSt3setIN4cvc58internal8TypeNodeESt4lessIS2_ESaIS2_EE6insertERKS2_.exit
  %i.avt = load ptr, ptr %i.aol, align 8
  br label %bb.pf

bb.pf:                                            ; preds = %bb.pg, %bb.pe
  %.sroa.06.0.in.i.i911 = phi ptr [ %i.bw, %bb.pe ], [ %.sroa.06.0.i.i912, %bb.pg ]
  %.sroa.06.0.i.i912 = load ptr, ptr %.sroa.06.0.in.i.i911, align 8, !tbaa !104 ; 4 uses
  %.not.i.i913 = icmp eq ptr %.sroa.06.0.i.i912, null
  br i1 %.not.i.i913, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit915, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.avu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i912, i64 8
  %i.avv = load ptr, ptr %i.avu, align 8, !tbaa !57
  %i.avw = icmp eq ptr %i.avt, %i.avv
  br i1 %i.avw, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit915, label %bb.pf, !llvm.loop !4

bb.ph:                                            ; preds = %_ZNSt3setIN4cvc58internal8TypeNodeESt4lessIS2_ESaIS2_EE6insertERKS2_.exit
  %i.avx = invoke noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %30, ptr noundef nonnull align 8 dereferenceable(8) %i.aol)
          to label %.noexc914 unwind label %bb.pl ; 3 uses

.noexc914:                                        ; preds = %bb.ph
  %i.avy = load i64, ptr %i.bv, align 8, !tbaa !117 ; 2 uses
  %i.avz = urem i64 %i.avx, %i.avy                ; 2 uses
  %i.awa = load ptr, ptr %30, align 8, !tbaa !118
  %i.awb = getelementptr inbounds nuw [8 x i8], ptr %i.awa, i64 %i.avz
  %i.awc = load ptr, ptr %i.awb, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i.i904 = icmp eq ptr %i.awc, null
  br i1 %.not.i.i.i.i904, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit915, label %bb.pi

bb.pi:                                            ; preds = %.noexc914
  %i.awd = load ptr, ptr %i.awc, align 8, !tbaa !104 ; 4 uses
  %i.awe = load ptr, ptr %i.aol, align 8          ; 2 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awd, i64 8
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awd, i64 16
  %i.awh = load i64, ptr %i.awg, align 8, !tbaa !107
  %i.awi = icmp eq i64 %i.avx, %i.awh
  %i.awj = load ptr, ptr %i.awf, align 8
  %i.awk = icmp eq ptr %i.awe, %i.awj
  %i.awl = select i1 %i.awi, i1 %i.awk, i1 false
  br i1 %i.awl, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit915, label %.lr.ph.i.i.i.i905

bb.pj:                                            ; preds = %bb.pk
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awr, i64 8
  %i.awn = icmp eq i64 %i.avx, %i.awt
  %i.awo = load ptr, ptr %i.awm, align 8
  %i.awp = icmp eq ptr %i.awe, %i.awo
  %i.awq = select i1 %i.awn, i1 %i.awp, i1 false
  br i1 %i.awq, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit915, label %.lr.ph.i.i.i.i905, !llvm.loop !5

.lr.ph.i.i.i.i905:                                ; preds = %bb.pi, %bb.pj
  %.020.i.i.i.i906 = phi ptr [ %i.awr, %bb.pj ], [ %i.awd, %bb.pi ]
  %i.awr = load ptr, ptr %.020.i.i.i.i906, align 8, !tbaa !104 ; 5 uses
  %.not18.i.i.i.i907 = icmp eq ptr %i.awr, null
  br i1 %.not18.i.i.i.i907, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit915, label %bb.pk

bb.pk:                                            ; preds = %.lr.ph.i.i.i.i905
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awr, i64 16
  %i.awt = load i64, ptr %i.aws, align 8, !tbaa !107 ; 2 uses
  %i.awu = urem i64 %i.awt, %i.avy
  %.not19.i.i.i.i908 = icmp eq i64 %i.awu, %i.avz
  br i1 %.not19.i.i.i.i908, label %bb.pj, label %..loopexit_crit_edge21.i.i.i.i909, !llvm.loop !5

..loopexit_crit_edge21.i.i.i.i909:                ; preds = %bb.pk
  br label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit915, !llvm.loop !5

_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit915: ; preds = %.lr.ph.i.i.i.i905, %bb.pj, %bb.pg, %bb.pf, %..loopexit_crit_edge21.i.i.i.i909, %bb.pi, %.noexc914
  %.sroa.06.1.i.i910 = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i909 ], [ null, %bb.pf ], [ %i.awd, %bb.pi ], [ null, %.noexc914 ], [ %.sroa.06.0.i.i912, %bb.pg ], [ %i.awr, %bb.pj ], [ null, %.lr.ph.i.i.i.i905 ]
  %.not2263 = icmp ne ptr %.sroa.06.1.i.i910, null
  %spec.select362 = select i1 %.not2263, i1 true, i1 %.12352955
  br label %bb.pm

bb.pl:                                            ; preds = %bb.ph
  %i.awv = landingpad { ptr, i32 }
          cleanup
  br label %.body835

bb.pm:                                            ; preds = %_ZNSt3setIN4cvc58internal12NodeTemplateILb1EEESt4lessIS3_ESaIS3_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS3_E.exit, %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit915
  %.2240 = phi i1 [ true, %_ZNSt3setIN4cvc58internal12NodeTemplateILb1EEESt4lessIS3_ESaIS3_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS3_E.exit ], [ %.12392954, %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit915 ] ; 2 uses
  %.2236 = phi i1 [ %.12352955, %_ZNSt3setIN4cvc58internal12NodeTemplateILb1EEESt4lessIS3_ESaIS3_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS3_E.exit ], [ %spec.select362, %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit915 ] ; 2 uses
  %i.aww = load i64, ptr %.sroa.02083.2, align 8  ; 3 uses
  %i.awx = and i64 %i.aww, 1152920405095219200
  %.not.i.i916 = icmp eq i64 %i.awx, 1152920405095219200
  br i1 %.not.i.i916, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit918, label %bb.pn, !prof !46

bb.pn:                                            ; preds = %bb.pm
  %i.awy = add i64 %i.aww, 1152920405095219200
  %i.awz = and i64 %i.awy, 1152920405095219200    ; 2 uses
  %i.axa = and i64 %i.aww, -1152920405095219201
  %i.axb = or disjoint i64 %i.awz, %i.axa
  store i64 %i.axb, ptr %.sroa.02083.2, align 8
  %i.axc = icmp eq i64 %i.awz, 0
  br i1 %i.axc, label %bb.po, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit918, !prof !46

bb.po:                                            ; preds = %bb.pn
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.02083.2)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit918 unwind label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %i.axd = landingpad { ptr, i32 }
          catch ptr null
  %i.axe = extractvalue { ptr, i32 } %i.axd, 0
  call void @__clang_call_terminate(ptr %i.axe) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit918: ; preds = %bb.pm, %bb.pn, %bb.po
  %.not2262 = icmp eq ptr %i.aod, %i.aoc
  br i1 %.not2262, label %.loopexit2277, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit807, !llvm.loop !476

.body835:                                         ; preds = %bb.ot, %bb.nt, %bb.pl, %bb.ox, %bb.ou, %bb.np, %bb.nm
  %.sroa.02083.3 = phi ptr [ %.sroa.02083.2, %bb.pl ], [ %i.aok, %bb.nm ], [ %.sroa.02083.2, %bb.ot ], [ %.sroa.02083.2, %bb.ox ], [ %.sroa.02083.2, %bb.ou ], [ %.sroa.02083.1, %bb.np ], [ %.sroa.02083.2, %bb.nt ] ; 3 uses
  %.pn301 = phi { ptr, i32 } [ %i.awv, %bb.pl ], [ %i.aqz, %bb.nm ], [ %i.aup, %bb.ot ], [ %.pn299, %bb.ox ], [ %i.auq, %bb.ou ], [ %.pn297, %bb.np ], [ %i.ari, %bb.nt ] ; 3 uses
  %i.axf = load i64, ptr %.sroa.02083.3, align 8  ; 3 uses
  %i.axg = and i64 %i.axf, 1152920405095219200
  %.not.i.i919 = icmp eq i64 %i.axg, 1152920405095219200
  br i1 %.not.i.i919, label %.body775, label %bb.pq, !prof !46

bb.pq:                                            ; preds = %.body835
  %i.axh = add i64 %i.axf, 1152920405095219200
  %i.axi = and i64 %i.axh, 1152920405095219200    ; 2 uses
  %i.axj = and i64 %i.axf, -1152920405095219201
  %i.axk = or disjoint i64 %i.axi, %i.axj
  store i64 %i.axk, ptr %.sroa.02083.3, align 8
  %i.axl = icmp eq i64 %i.axi, 0
  br i1 %i.axl, label %bb.pr, label %.body775, !prof !46

bb.pr:                                            ; preds = %bb.pq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.02083.3)
          to label %.body775 unwind label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  %i.axm = landingpad { ptr, i32 }
          catch ptr null
  %i.axn = extractvalue { ptr, i32 } %i.axm, 0
  call void @__clang_call_terminate(ptr %i.axn) #25
  unreachable

.loopexit2277:                                    ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit918, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEE5clearEv.exit, %bb.mf, %_ZN4cvc58internal8TypeNodeD2Ev.exit752
  %.3241 = phi i1 [ %.02382964, %bb.mf ], [ %.02382964, %_ZN4cvc58internal8TypeNodeD2Ev.exit752 ], [ %.02382964, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEE5clearEv.exit ], [ %.2240, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit918 ] ; 4 uses
  %.3237 = phi i1 [ %.02342965, %bb.mf ], [ %.02342965, %_ZN4cvc58internal8TypeNodeD2Ev.exit752 ], [ %.02342965, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEE5clearEv.exit ], [ %.2236, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit918 ] ; 2 uses
  store ptr %i.ala, ptr %87, align 8, !tbaa !44
  %i.axo = load i64, ptr %i.ala, align 8          ; 3 uses
  %i.axp = lshr i64 %i.axo, 40
  %i.axq = trunc nuw nsw i64 %i.axp to i32
  %i.axr = and i32 %i.axq, 1048575                ; 3 uses
  %i.axs = icmp samesign ult i32 %i.axr, 1048574
  br i1 %i.axs, label %bb.pt, label %bb.pu, !prof !45

bb.pt:                                            ; preds = %.loopexit2277
  %i.axt = add nuw nsw i32 %i.axr, 1
  %i.axu = zext nneg i32 %i.axt to i64
  %i.axv = shl nuw nsw i64 %i.axu, 40
  %i.axw = and i64 %i.axo, -1152920405095219201
  %i.axx = or i64 %i.axv, %i.axw
  store i64 %i.axx, ptr %i.ala, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit923

bb.pu:                                            ; preds = %.loopexit2277
  %i.axy = icmp eq i32 %i.axr, 1048574
  br i1 %i.axy, label %bb.pv, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit923, !prof !46

bb.pv:                                            ; preds = %bb.pu
  %i.axz = or i64 %i.axo, 1152920405095219200
  store i64 %i.axz, ptr %i.ala, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ala)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit923 unwind label %bb.si

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit923:       ; preds = %bb.pu, %bb.pt, %bb.pv
  %i.aya = invoke noundef ptr @_ZNK4cvc58internal6theory7TypeSet6getSetENS0_8TypeNodeE(ptr noundef nonnull align 8 dereferenceable(120) %26, ptr noundef nonnull align 8 %87)
          to label %bb.pw unwind label %bb.sj     ; 4 uses

bb.pw:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit923
  %i.ayb = load ptr, ptr %87, align 8, !tbaa !44  ; 3 uses
  %i.ayc = load i64, ptr %i.ayb, align 8          ; 3 uses
  %i.ayd = and i64 %i.ayc, 1152920405095219200
  %.not.i.i924 = icmp eq i64 %i.ayd, 1152920405095219200
  br i1 %.not.i.i924, label %_ZN4cvc58internal8TypeNodeD2Ev.exit926, label %bb.px, !prof !46

bb.px:                                            ; preds = %bb.pw
  %i.aye = add i64 %i.ayc, 1152920405095219200
  %i.ayf = and i64 %i.aye, 1152920405095219200    ; 2 uses
  %i.ayg = and i64 %i.ayc, -1152920405095219201
  %i.ayh = or disjoint i64 %i.ayf, %i.ayg
  store i64 %i.ayh, ptr %i.ayb, align 8
  %i.ayi = icmp eq i64 %i.ayf, 0
  br i1 %i.ayi, label %bb.py, label %_ZN4cvc58internal8TypeNodeD2Ev.exit926, !prof !46

bb.py:                                            ; preds = %bb.px
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ayb)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit926 unwind label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.ayj = landingpad { ptr, i32 }
          catch ptr null
  %i.ayk = extractvalue { ptr, i32 } %i.ayj, 0
  call void @__clang_call_terminate(ptr %i.ayk) #25
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit926:           ; preds = %bb.pw, %bb.px, %bb.py
  %.not305 = icmp eq ptr %i.aya, null
  br i1 %.not305, label %.loopexit2276, label %bb.qa

bb.qa:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit926
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.aya, i64 40 ; 3 uses
  %i.aym = load i64, ptr %i.ayl, align 8, !tbaa !41
  %i.ayn = icmp eq i64 %i.aym, 0
  br i1 %i.ayn, label %.loopexit2276, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit955

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit955: ; preds = %bb.qa
  %i.ayo = load ptr, ptr %i.akm, align 8, !tbaa !324 ; 2 uses
  %.not5.i.i.i956 = icmp eq ptr %i.ayo, null
  br i1 %.not5.i.i.i956, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEE5clearEv.exit961, label %.lr.ph.i.i.i957

.lr.ph.i.i.i957:                                  ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit955, %.noexc.i.i959
  %.06.i.i.i958 = phi ptr [ %i.ayp, %.noexc.i.i959 ], [ %i.ayo, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit955 ] ; 4 uses
  %i.ayp = load ptr, ptr %.06.i.i.i958, align 8, !tbaa !104 ; 2 uses
  %i.ayq = getelementptr inbounds nuw i8, ptr %.06.i.i.i958, i64 8
  %i.ayr = getelementptr inbounds nuw i8, ptr %.06.i.i.i958, i64 16
  %i.ays = load ptr, ptr %i.ayr, align 8, !tbaa !57 ; 3 uses
  %i.ayt = load i64, ptr %i.ays, align 8          ; 3 uses
  %i.ayu = and i64 %i.ayt, 1152920405095219200
  %.not.i.i.i.i1774 = icmp eq i64 %i.ayu, 1152920405095219200
  br i1 %.not.i.i.i.i1774, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i1775, label %bb.qb, !prof !46

bb.qb:                                            ; preds = %.lr.ph.i.i.i957
  %i.ayv = add i64 %i.ayt, 1152920405095219200
  %i.ayw = and i64 %i.ayv, 1152920405095219200    ; 2 uses
  %i.ayx = and i64 %i.ayt, -1152920405095219201
  %i.ayy = or disjoint i64 %i.ayw, %i.ayx
  store i64 %i.ayy, ptr %i.ays, align 8
  %i.ayz = icmp eq i64 %i.ayw, 0
  br i1 %i.ayz, label %bb.qc, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i1775, !prof !46

bb.qc:                                            ; preds = %bb.qb
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ays)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i1775 unwind label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  %i.aza = landingpad { ptr, i32 }
          catch ptr null
  %i.azb = extractvalue { ptr, i32 } %i.aza, 0
  call void @__clang_call_terminate(ptr %i.azb) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i1775: ; preds = %bb.qc, %bb.qb, %.lr.ph.i.i.i957
  %i.azc = load ptr, ptr %i.ayq, align 8, !tbaa !57 ; 3 uses
  %i.azd = load i64, ptr %i.azc, align 8          ; 3 uses
  %i.aze = and i64 %i.azd, 1152920405095219200
  %.not.i.i1.i.i1776 = icmp eq i64 %i.aze, 1152920405095219200
  br i1 %.not.i.i1.i.i1776, label %.noexc.i.i959, label %bb.qe, !prof !46

bb.qe:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i1775
  %i.azf = add i64 %i.azd, 1152920405095219200
  %i.azg = and i64 %i.azf, 1152920405095219200    ; 2 uses
  %i.azh = and i64 %i.azd, -1152920405095219201
  %i.azi = or disjoint i64 %i.azg, %i.azh
  store i64 %i.azi, ptr %i.azc, align 8
  %i.azj = icmp eq i64 %i.azg, 0
  br i1 %i.azj, label %bb.qf, label %.noexc.i.i959, !prof !46

bb.qf:                                            ; preds = %bb.qe
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.azc)
          to label %.noexc.i.i959 unwind label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.azk = landingpad { ptr, i32 }
          catch ptr null
  %i.azl = extractvalue { ptr, i32 } %i.azk, 0
end_hunk_2
begin_hunk_3_@_ZN4cvc58internal6theory24TheoryEngineModelBuilder10buildModelEPNS1_11TheoryModelE:bb.a
bb.ts:                                            ; preds = %bb.tr
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bbv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1106 unwind label %bb.tt

bb.tt:                                            ; preds = %bb.ts
  %i.blu = landingpad { ptr, i32 }
          catch ptr null
  %i.blv = extractvalue { ptr, i32 } %i.blu, 0
  call void @__clang_call_terminate(ptr %i.blv) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1106: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1103, %bb.tr, %bb.ts
  %.not2264 = icmp eq ptr %.sroa.02117.2, %i.azr
  br i1 %.not2264, label %.loopexit2276, label %.lr.ph2960, !llvm.loop !480

.body1816:                                        ; preds = %bb.sm, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i1808, %bb.sr, %bb.so, %bb.sn
  %.pn310 = phi { ptr, i32 } [ %i.bjj, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i1808 ], [ %.pn308, %bb.sr ], [ %i.bia, %bb.so ], [ %i.bhz, %bb.sn ], [ %i.bhy, %bb.sm ] ; 3 uses
  %i.blw = load ptr, ptr %88, align 8, !tbaa !57  ; 3 uses
  %i.blx = load i64, ptr %i.blw, align 8          ; 3 uses
  %i.bly = and i64 %i.blx, 1152920405095219200
  %.not.i.i1107 = icmp eq i64 %i.bly, 1152920405095219200
  br i1 %.not.i.i1107, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1109, label %bb.tu, !prof !46

bb.tu:                                            ; preds = %.body1816
  %i.blz = add i64 %i.blx, 1152920405095219200
  %i.bma = and i64 %i.blz, 1152920405095219200    ; 2 uses
  %i.bmb = and i64 %i.blx, -1152920405095219201
  %i.bmc = or disjoint i64 %i.bma, %i.bmb
  store i64 %i.bmc, ptr %i.blw, align 8
  %i.bmd = icmp eq i64 %i.bma, 0
  br i1 %i.bmd, label %bb.tv, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1109, !prof !46

bb.tv:                                            ; preds = %bb.tu
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.blw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1109 unwind label %bb.tw

bb.tw:                                            ; preds = %bb.tv
  %i.bme = landingpad { ptr, i32 }
          catch ptr null
  %i.bmf = extractvalue { ptr, i32 } %i.bme, 0
  call void @__clang_call_terminate(ptr %i.bmf) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1109: ; preds = %bb.tv, %bb.tu, %.body1816, %bb.sl
  %.pn310.pn = phi { ptr, i32 } [ %i.bhx, %bb.sl ], [ %.pn310, %.body1816 ], [ %.pn310, %bb.tu ], [ %.pn310, %bb.tv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #23
  %i.bmg = load i64, ptr %i.bbv, align 8          ; 3 uses
  %i.bmh = and i64 %i.bmg, 1152920405095219200
  %.not.i.i1110 = icmp eq i64 %i.bmh, 1152920405095219200
  br i1 %.not.i.i1110, label %.body775, label %bb.tx, !prof !46

bb.tx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1109
  %i.bmi = add i64 %i.bmg, 1152920405095219200
  %i.bmj = and i64 %i.bmi, 1152920405095219200    ; 2 uses
  %i.bmk = and i64 %i.bmg, -1152920405095219201
  %i.bml = or disjoint i64 %i.bmj, %i.bmk
  store i64 %i.bml, ptr %i.bbv, align 8
  %i.bmm = icmp eq i64 %i.bmj, 0
  br i1 %i.bmm, label %bb.ty, label %.body775, !prof !46

bb.ty:                                            ; preds = %bb.tx
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bbv)
          to label %.body775 unwind label %bb.tz

bb.tz:                                            ; preds = %bb.ty
  %i.bmn = landingpad { ptr, i32 }
          catch ptr null
  %i.bmo = extractvalue { ptr, i32 } %i.bmn, 0
  call void @__clang_call_terminate(ptr %i.bmo) #25
  unreachable

.loopexit2276:                                    ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1106, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEE5clearEv.exit961, %bb.qa, %_ZN4cvc58internal8TypeNodeD2Ev.exit926
  %.7245 = phi i1 [ %.3241, %bb.qa ], [ %.3241, %_ZN4cvc58internal8TypeNodeD2Ev.exit926 ], [ %.3241, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEE5clearEv.exit961 ], [ %.6244, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1106 ] ; 2 uses
  %i.bmp = load ptr, ptr %79, align 8, !tbaa !44  ; 3 uses
  %i.bmq = load i64, ptr %i.bmp, align 8          ; 3 uses
  %i.bmr = and i64 %i.bmq, 1152920405095219200
  %.not.i.i1113 = icmp eq i64 %i.bmr, 1152920405095219200
  br i1 %.not.i.i1113, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1115, label %bb.ua, !prof !46

bb.ua:                                            ; preds = %.loopexit2276
  %i.bms = add i64 %i.bmq, 1152920405095219200
  %i.bmt = and i64 %i.bms, 1152920405095219200    ; 2 uses
  %i.bmu = and i64 %i.bmq, -1152920405095219201
  %i.bmv = or disjoint i64 %i.bmt, %i.bmu
  store i64 %i.bmv, ptr %i.bmp, align 8
  %i.bmw = icmp eq i64 %i.bmt, 0
  br i1 %i.bmw, label %bb.ub, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1115, !prof !46

bb.ub:                                            ; preds = %bb.ua
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bmp)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit1115 unwind label %bb.uc

bb.uc:                                            ; preds = %bb.ub
  %i.bmx = landingpad { ptr, i32 }
          catch ptr null
  %i.bmy = extractvalue { ptr, i32 } %i.bmx, 0
  call void @__clang_call_terminate(ptr %i.bmy) #25
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit1115:          ; preds = %.loopexit2276, %bb.ua, %bb.ub
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #23
  %i.bmz = load i64, ptr %i.ala, align 8          ; 3 uses
  %i.bna = and i64 %i.bmz, 1152920405095219200
  %.not.i.i1116 = icmp eq i64 %i.bna, 1152920405095219200
  br i1 %.not.i.i1116, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1118, label %bb.ud, !prof !46

bb.ud:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit1115
  %i.bnb = add i64 %i.bmz, 1152920405095219200
  %i.bnc = and i64 %i.bnb, 1152920405095219200    ; 2 uses
  %i.bnd = and i64 %i.bmz, -1152920405095219201
  %i.bne = or disjoint i64 %i.bnc, %i.bnd
  store i64 %i.bne, ptr %i.ala, align 8
  %i.bnf = icmp eq i64 %i.bnc, 0
  br i1 %i.bnf, label %bb.ue, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1118, !prof !46

bb.ue:                                            ; preds = %bb.ud
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ala)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit1118 unwind label %bb.uf

bb.uf:                                            ; preds = %bb.ue
  %i.bng = landingpad { ptr, i32 }
          catch ptr null
  %i.bnh = extractvalue { ptr, i32 } %i.bng, 0
  call void @__clang_call_terminate(ptr %i.bnh) #25
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit1118:          ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit1115, %bb.ud, %bb.ue
  %i.bni = getelementptr inbounds nuw i8, ptr %.sroa.02130.02963, i64 8 ; 3 uses
  %i.bnj = load ptr, ptr %i.akk, align 8, !tbaa !126
  %.not2252 = icmp eq ptr %i.bni, %i.bnj
  br i1 %.not2252, label %._crit_edge2967, label %.lr.ph2966, !llvm.loop !481

.body775:                                         ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i, %bb.sk, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1109, %bb.tx, %bb.ty, %bb.mp, %.body835, %bb.pq, %bb.pr, %bb.si, %bb.sj, %bb.nl, %bb.nk
  %.pn310.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn310.pn, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1109 ], [ %i.aqx, %bb.nk ], [ %i.bhu, %bb.si ], [ %i.aqy, %bb.nl ], [ %.pn310.pn, %bb.ty ], [ %i.bay, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i ], [ %.pn301, %bb.pr ], [ %i.bhv, %bb.sj ], [ %.pn310.pn, %bb.tx ], [ %i.aoj, %bb.mp ], [ %i.bhw, %bb.sk ], [ %.pn301, %.body835 ], [ %.pn301, %bb.pq ] ; 3 uses
  %i.bnk = load ptr, ptr %79, align 8, !tbaa !44  ; 3 uses
  %i.bnl = load i64, ptr %i.bnk, align 8          ; 3 uses
  %i.bnm = and i64 %i.bnl, 1152920405095219200
  %.not.i.i1119 = icmp eq i64 %i.bnm, 1152920405095219200
  br i1 %.not.i.i1119, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1121, label %bb.ug, !prof !46

bb.ug:                                            ; preds = %.body775
  %i.bnn = add i64 %i.bnl, 1152920405095219200
  %i.bno = and i64 %i.bnn, 1152920405095219200    ; 2 uses
  %i.bnp = and i64 %i.bnl, -1152920405095219201
  %i.bnq = or disjoint i64 %i.bno, %i.bnp
  store i64 %i.bnq, ptr %i.bnk, align 8
  %i.bnr = icmp eq i64 %i.bno, 0
  br i1 %i.bnr, label %bb.uh, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1121, !prof !46

bb.uh:                                            ; preds = %bb.ug
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bnk)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit1121 unwind label %bb.ui

bb.ui:                                            ; preds = %bb.uh
  %i.bns = landingpad { ptr, i32 }
          catch ptr null
  %i.bnt = extractvalue { ptr, i32 } %i.bns, 0
  call void @__clang_call_terminate(ptr %i.bnt) #25
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit1121:          ; preds = %bb.uh, %bb.ug, %.body775, %bb.nj
  %.pn310.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aqw, %bb.nj ], [ %.pn310.pn.pn.pn.pn, %.body775 ], [ %.pn310.pn.pn.pn.pn, %bb.ug ], [ %.pn310.pn.pn.pn.pn, %bb.uh ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #23
  %i.bnu = load i64, ptr %i.ala, align 8          ; 3 uses
  %i.bnv = and i64 %i.bnu, 1152920405095219200
  %.not.i.i1122 = icmp eq i64 %i.bnv, 1152920405095219200
  br i1 %.not.i.i1122, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1124, label %bb.uj, !prof !46

bb.uj:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit1121
  %i.bnw = add i64 %i.bnu, 1152920405095219200
  %i.bnx = and i64 %i.bnw, 1152920405095219200    ; 2 uses
  %i.bny = and i64 %i.bnu, -1152920405095219201
  %i.bnz = or disjoint i64 %i.bnx, %i.bny
  store i64 %i.bnz, ptr %i.ala, align 8
  %i.boa = icmp eq i64 %i.bnx, 0
  br i1 %i.boa, label %bb.uk, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1124, !prof !46

bb.uk:                                            ; preds = %bb.uj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ala)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit1124 unwind label %bb.ul

bb.ul:                                            ; preds = %bb.uk
  %i.bob = landingpad { ptr, i32 }
          catch ptr null
  %i.boc = extractvalue { ptr, i32 } %i.bob, 0
  call void @__clang_call_terminate(ptr %i.boc) #25
  unreachable

._crit_edge2967:                                  ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit1118
  br i1 %.7245, label %bb.lq, label %bb.um, !llvm.loop !482

bb.um:                                            ; preds = %._crit_edge2967
  br i1 %.3237, label %bb.un, label %.thread

bb.un:                                            ; preds = %bb.um
  %i.bod = load ptr, ptr %28, align 8, !tbaa !126 ; 2 uses
  %.not22572983 = icmp eq ptr %i.bod, %i.bni
  br i1 %.not22572983, label %._crit_edge2989.thread, label %.lr.ph2988

.lr.ph2988:                                       ; preds = %bb.un, %_ZN4cvc58internal8TypeNodeD2Ev.exit1551
  %.12252986 = phi i8 [ %.8232, %_ZN4cvc58internal8TypeNodeD2Ev.exit1551 ], [ %.0224, %bb.un ] ; 5 uses
  %.82462985 = phi i1 [ %.14252, %_ZN4cvc58internal8TypeNodeD2Ev.exit1551 ], [ false, %bb.un ] ; 6 uses
  %.sroa.02130.12984 = phi ptr [ %i.cmq, %_ZN4cvc58internal8TypeNodeD2Ev.exit1551 ], [ %i.bod, %bb.un ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #23
  %i.boe = load ptr, ptr %.sroa.02130.12984, align 8, !tbaa !44 ; 5 uses
  store ptr %i.boe, ptr %95, align 8, !tbaa !44
  %i.bof = load i64, ptr %i.boe, align 8          ; 3 uses
  %i.bog = lshr i64 %i.bof, 40
  %i.boh = trunc nuw nsw i64 %i.bog to i32
  %i.boi = and i32 %i.boh, 1048575                ; 3 uses
  %i.boj = icmp samesign ult i32 %i.boi, 1048574
  br i1 %i.boj, label %bb.uo, label %bb.up, !prof !45

bb.uo:                                            ; preds = %.lr.ph2988
  %i.bok = add nuw nsw i32 %i.boi, 1
  %i.bol = zext nneg i32 %i.bok to i64
  %i.bom = shl nuw nsw i64 %i.bol, 40
  %i.bon = and i64 %i.bof, -1152920405095219201
  %i.boo = or i64 %i.bom, %i.bon
  store i64 %i.boo, ptr %i.boe, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1126

bb.up:                                            ; preds = %.lr.ph2988
  %i.bop = icmp eq i32 %i.boi, 1048574
  br i1 %i.bop, label %bb.uq, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1126, !prof !46

bb.uq:                                            ; preds = %bb.up
  %i.boq = or i64 %i.bof, 1152920405095219200
  store i64 %i.boq, ptr %i.boe, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.boe)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1126 unwind label %bb.uy

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1126:      ; preds = %bb.up, %bb.uo, %bb.uq
  %i.bor = load ptr, ptr %95, align 8, !tbaa !44  ; 5 uses
  store ptr %i.bor, ptr %96, align 8, !tbaa !44
  %i.bos = load i64, ptr %i.bor, align 8          ; 3 uses
  %i.bot = lshr i64 %i.bos, 40
  %i.bou = trunc nuw nsw i64 %i.bot to i32
  %i.bov = and i32 %i.bou, 1048575                ; 3 uses
  %i.bow = icmp samesign ult i32 %i.bov, 1048574
  br i1 %i.bow, label %bb.ur, label %bb.us, !prof !45

bb.ur:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1126
  %i.box = add nuw nsw i32 %i.bov, 1
  %i.boy = zext nneg i32 %i.box to i64
  %i.boz = shl nuw nsw i64 %i.boy, 40
  %i.bpa = and i64 %i.bos, -1152920405095219201
  %i.bpb = or i64 %i.boz, %i.bpa
  store i64 %i.bpb, ptr %i.bor, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1128

bb.us:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1126
  %i.bpc = icmp eq i32 %i.bov, 1048574
  br i1 %i.bpc, label %bb.ut, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1128, !prof !46

bb.ut:                                            ; preds = %bb.us
  %i.bpd = or i64 %i.bos, 1152920405095219200
  store i64 %i.bpd, ptr %i.bor, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bor)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1128 unwind label %bb.uz

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1128:      ; preds = %bb.us, %bb.ur, %bb.ut
  %i.bpe = invoke noundef ptr @_ZNK4cvc58internal6theory7TypeSet6getSetENS0_8TypeNodeE(ptr noundef nonnull align 8 dereferenceable(120) %27, ptr noundef nonnull align 8 %96)
          to label %bb.uu unwind label %bb.va     ; 4 uses

bb.uu:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1128
  %i.bpf = load ptr, ptr %96, align 8, !tbaa !44  ; 3 uses
  %i.bpg = load i64, ptr %i.bpf, align 8          ; 3 uses
  %i.bph = and i64 %i.bpg, 1152920405095219200
  %.not.i.i1129 = icmp eq i64 %i.bph, 1152920405095219200
  br i1 %.not.i.i1129, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1131, label %bb.uv, !prof !46

bb.uv:                                            ; preds = %bb.uu
  %i.bpi = add i64 %i.bpg, 1152920405095219200
  %i.bpj = and i64 %i.bpi, 1152920405095219200    ; 2 uses
  %i.bpk = and i64 %i.bpg, -1152920405095219201
  %i.bpl = or disjoint i64 %i.bpj, %i.bpk
  store i64 %i.bpl, ptr %i.bpf, align 8
  %i.bpm = icmp eq i64 %i.bpj, 0
  br i1 %i.bpm, label %bb.uw, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1131, !prof !46

bb.uw:                                            ; preds = %bb.uv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bpf)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit1131 unwind label %bb.ux

bb.ux:                                            ; preds = %bb.uw
  %i.bpn = landingpad { ptr, i32 }
          catch ptr null
  %i.bpo = extractvalue { ptr, i32 } %i.bpn, 0
  call void @__clang_call_terminate(ptr %i.bpo) #25
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit1131:          ; preds = %bb.uu, %bb.uv, %bb.uw
  %i.bpp = icmp eq ptr %i.bpe, null
  br i1 %i.bpp, label %bb.aco, label %bb.vb

bb.uy:                                            ; preds = %bb.uq
  %i.bpq = landingpad { ptr, i32 }
          cleanup
  br label %bb.acv

bb.uz:                                            ; preds = %bb.ut
  %i.bpr = landingpad { ptr, i32 }
          cleanup
  br label %bb.acu

bb.va:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1128
  %i.bps = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %96) #23
  br label %bb.acu

bb.vb:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit1131
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bpe, i64 40 ; 3 uses
  %i.bpu = load i64, ptr %i.bpt, align 8, !tbaa !41
  %i.bpv = icmp eq i64 %i.bpu, 0
  br i1 %i.bpv, label %bb.aco, label %bb.vc

bb.vc:                                            ; preds = %bb.vb
  %i.bpw = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode10isDatatypeEv(ptr noundef nonnull align 8 dereferenceable(8) %95)
          to label %bb.vd unwind label %bb.vx

bb.vd:                                            ; preds = %bb.vc
  br i1 %i.bpw, label %bb.ve, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1138

bb.ve:                                            ; preds = %bb.vd
  %i.bpx = invoke noundef nonnull align 8 dereferenceable(448) ptr @_ZNK4cvc58internal8TypeNode8getDTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %95)
          to label %bb.vf unwind label %bb.vy     ; 2 uses

bb.vf:                                            ; preds = %bb.ve
  %i.bpy = invoke noundef zeroext i1 @_ZNK4cvc58internal5DType12isCodatatypeEv(ptr noundef nonnull align 8 dereferenceable(448) %i.bpx)
          to label %bb.vg unwind label %bb.vy

bb.vg:                                            ; preds = %bb.vf
  br i1 %i.bpy, label %bb.vh, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1138

bb.vh:                                            ; preds = %bb.vg
  %i.bpz = load ptr, ptr %i.akq, align 8, !tbaa !558, !nonnull !113, !align !319
  %i.bqa = load ptr, ptr %95, align 8, !tbaa !44  ; 5 uses
  store ptr %i.bqa, ptr %97, align 8, !tbaa !44
  %i.bqb = load i64, ptr %i.bqa, align 8          ; 3 uses
  %i.bqc = lshr i64 %i.bqb, 40
  %i.bqd = trunc nuw nsw i64 %i.bqc to i32
  %i.bqe = and i32 %i.bqd, 1048575                ; 3 uses
  %i.bqf = icmp samesign ult i32 %i.bqe, 1048574
  br i1 %i.bqf, label %bb.vi, label %bb.vj, !prof !45

bb.vi:                                            ; preds = %bb.vh
  %i.bqg = add nuw nsw i32 %i.bqe, 1
  %i.bqh = zext nneg i32 %i.bqg to i64
  %i.bqi = shl nuw nsw i64 %i.bqh, 40
  %i.bqj = and i64 %i.bqb, -1152920405095219201
  %i.bqk = or i64 %i.bqi, %i.bqj
  store i64 %i.bqk, ptr %i.bqa, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1133

bb.vj:                                            ; preds = %bb.vh
  %i.bql = icmp eq i32 %i.bqe, 1048574
  br i1 %i.bql, label %bb.vk, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1133, !prof !46

bb.vk:                                            ; preds = %bb.vj
  %i.bqm = or i64 %i.bqb, 1152920405095219200
  store i64 %i.bqm, ptr %i.bqa, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bqa)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1133 unwind label %bb.vy

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1133:      ; preds = %bb.vj, %bb.vi, %bb.vk
  %i.bqn = invoke noundef zeroext i1 @_ZNK4cvc58internal3Env12isFiniteTypeENS0_8TypeNodeE(ptr noundef nonnull align 8 dereferenceable(696) %i.bpz, ptr noundef nonnull align 8 %97)
          to label %bb.vl unwind label %bb.vz

bb.vl:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1133
  br i1 %i.bqn, label %bb.vm, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1138.thread2206

bb.vm:                                            ; preds = %bb.vl
  %i.bqo = load ptr, ptr %95, align 8, !tbaa !44  ; 5 uses
  store ptr %i.bqo, ptr %98, align 8, !tbaa !44
  %i.bqp = load i64, ptr %i.bqo, align 8          ; 3 uses
  %i.bqq = lshr i64 %i.bqp, 40
  %i.bqr = trunc nuw nsw i64 %i.bqq to i32
  %i.bqs = and i32 %i.bqr, 1048575                ; 3 uses
  %i.bqt = icmp samesign ult i32 %i.bqs, 1048574
  br i1 %i.bqt, label %bb.vn, label %bb.vo, !prof !45

bb.vn:                                            ; preds = %bb.vm
  %i.bqu = add nuw nsw i32 %i.bqs, 1
  %i.bqv = zext nneg i32 %i.bqu to i64
  %i.bqw = shl nuw nsw i64 %i.bqv, 40
  %i.bqx = and i64 %i.bqp, -1152920405095219201
  %i.bqy = or i64 %i.bqw, %i.bqx
  store i64 %i.bqy, ptr %i.bqo, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1135

bb.vo:                                            ; preds = %bb.vm
  %i.bqz = icmp eq i32 %i.bqs, 1048574
  br i1 %i.bqz, label %bb.vp, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1135, !prof !46

bb.vp:                                            ; preds = %bb.vo
  %i.bra = or i64 %i.bqp, 1152920405095219200
  store i64 %i.bra, ptr %i.bqo, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bqo)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1135 unwind label %bb.vz

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1135:      ; preds = %bb.vo, %bb.vn, %bb.vp
  %i.brb = invoke noundef zeroext i1 @_ZNK4cvc58internal5DType20isRecursiveSingletonENS0_8TypeNodeE(ptr noundef nonnull align 8 dereferenceable(448) %i.bpx, ptr noundef nonnull align 8 %98)
          to label %bb.vq unwind label %bb.wa     ; 3 uses

bb.vq:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1135
  %i.brc = load ptr, ptr %98, align 8, !tbaa !44  ; 3 uses
  %i.brd = load i64, ptr %i.brc, align 8          ; 3 uses
  %i.bre = and i64 %i.brd, 1152920405095219200
  %.not.i.i1136 = icmp eq i64 %i.bre, 1152920405095219200
  br i1 %.not.i.i1136, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1138.thread2206, label %bb.vr, !prof !46

bb.vr:                                            ; preds = %bb.vq
  %i.brf = add i64 %i.brd, 1152920405095219200
  %i.brg = and i64 %i.brf, 1152920405095219200    ; 2 uses
  %i.brh = and i64 %i.brd, -1152920405095219201
  %i.bri = or disjoint i64 %i.brg, %i.brh
  store i64 %i.bri, ptr %i.brc, align 8
  %i.brj = icmp eq i64 %i.brg, 0
  br i1 %i.brj, label %bb.vs, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1138.thread2206, !prof !46

bb.vs:                                            ; preds = %bb.vr
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.brc)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit1138.thread2206 unwind label %bb.vt

bb.vt:                                            ; preds = %bb.vs
  %i.brk = landingpad { ptr, i32 }
          catch ptr null
  %i.brl = extractvalue { ptr, i32 } %i.brk, 0
  call void @__clang_call_terminate(ptr %i.brl) #25
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit1138.thread2206: ; preds = %bb.vq, %bb.vr, %bb.vs, %bb.vl
  %i.brm = phi i1 [ true, %bb.vl ], [ %i.brb, %bb.vs ], [ %i.brb, %bb.vr ], [ %i.brb, %bb.vq ] ; 3 uses
  %i.brn = load ptr, ptr %97, align 8, !tbaa !44  ; 3 uses
  %i.bro = load i64, ptr %i.brn, align 8          ; 3 uses
  %i.brp = and i64 %i.bro, 1152920405095219200
  %.not.i.i1139 = icmp eq i64 %i.brp, 1152920405095219200
  br i1 %.not.i.i1139, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1138, label %bb.vu, !prof !46

bb.vu:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit1138.thread2206
  %i.brq = add i64 %i.bro, 1152920405095219200
  %i.brr = and i64 %i.brq, 1152920405095219200    ; 2 uses
  %i.brs = and i64 %i.bro, -1152920405095219201
  %i.brt = or disjoint i64 %i.brr, %i.brs
  store i64 %i.brt, ptr %i.brn, align 8
  %i.bru = icmp eq i64 %i.brr, 0
  br i1 %i.bru, label %bb.vv, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1138, !prof !46

bb.vv:                                            ; preds = %bb.vu
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.brn)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit1138 unwind label %bb.vw

bb.vw:                                            ; preds = %bb.vv
  %i.brv = landingpad { ptr, i32 }
          catch ptr null
  %i.brw = extractvalue { ptr, i32 } %i.brv, 0
  call void @__clang_call_terminate(ptr %i.brw) #25
  unreachable

bb.vx:                                            ; preds = %bb.vc
  %i.brx = landingpad { ptr, i32 }
          cleanup
  br label %bb.acu

bb.vy:                                            ; preds = %bb.vk, %bb.vf, %bb.ve
  %i.bry = landingpad { ptr, i32 }
          cleanup
  br label %bb.acu

bb.vz:                                            ; preds = %bb.vp, %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1133
  %i.brz = landingpad { ptr, i32 }
          cleanup
  br label %bb.wb

bb.wa:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1135
  %i.bsa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %98) #23
  br label %bb.wb

bb.wb:                                            ; preds = %bb.vz, %bb.wa
  %.pn265 = phi { ptr, i32 } [ %i.bsa, %bb.wa ], [ %i.brz, %bb.vz ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %97) #23
  br label %bb.acu

_ZN4cvc58internal8TypeNodeD2Ev.exit1138:          ; preds = %bb.vv, %bb.vu, %_ZN4cvc58internal8TypeNodeD2Ev.exit1138.thread2206, %bb.vg, %bb.vd
  %.0208 = phi i1 [ false, %bb.vd ], [ false, %bb.vg ], [ %i.brm, %_ZN4cvc58internal8TypeNodeD2Ev.exit1138.thread2206 ], [ %i.brm, %bb.vu ], [ %i.brm, %bb.vv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #23
  %i.bsb = load ptr, ptr %95, align 8, !tbaa !44  ; 5 uses
  store ptr %i.bsb, ptr %99, align 8, !tbaa !44
  %i.bsc = load i64, ptr %i.bsb, align 8          ; 3 uses
  %i.bsd = lshr i64 %i.bsc, 40
  %i.bse = trunc nuw nsw i64 %i.bsd to i32
  %i.bsf = and i32 %i.bse, 1048575                ; 3 uses
  %i.bsg = icmp samesign ult i32 %i.bsf, 1048574
  br i1 %i.bsg, label %bb.wc, label %bb.wd, !prof !45

bb.wc:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit1138
  %i.bsh = add nuw nsw i32 %i.bsf, 1
  %i.bsi = zext nneg i32 %i.bsh to i64
  %i.bsj = shl nuw nsw i64 %i.bsi, 40
  %i.bsk = and i64 %i.bsc, -1152920405095219201
  %i.bsl = or i64 %i.bsj, %i.bsk
  store i64 %i.bsl, ptr %i.bsb, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1143

bb.wd:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit1138
  %i.bsm = icmp eq i32 %i.bsf, 1048574
  br i1 %i.bsm, label %bb.we, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1143, !prof !46

bb.we:                                            ; preds = %bb.wd
  %i.bsn = or i64 %i.bsc, 1152920405095219200
  store i64 %i.bsn, ptr %i.bsb, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bsb)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1143 unwind label %bb.wo

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1143:      ; preds = %bb.wd, %bb.wc, %bb.we
  %i.bso = trunc nuw i8 %.12252986 to i1
  br i1 %i.bso, label %_ZNSt3setIN4cvc58internal8TypeNodeESt4lessIS2_ESaIS2_EE4findERKS2_.exit.thread, label %bb.wf

bb.wf:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1143
  %i.bsp = load ptr, ptr %99, align 8, !tbaa !44  ; 5 uses
  store ptr %i.bsp, ptr %100, align 8, !tbaa !44
  %i.bsq = load i64, ptr %i.bsp, align 8          ; 3 uses
  %i.bsr = lshr i64 %i.bsq, 40
  %i.bss = trunc nuw nsw i64 %i.bsr to i32
  %i.bst = and i32 %i.bss, 1048575                ; 3 uses
  %i.bsu = icmp samesign ult i32 %i.bst, 1048574
  br i1 %i.bsu, label %bb.wg, label %bb.wh, !prof !45

bb.wg:                                            ; preds = %bb.wf
  %i.bsv = add nuw nsw i32 %i.bst, 1
  %i.bsw = zext nneg i32 %i.bsv to i64
  %i.bsx = shl nuw nsw i64 %i.bsw, 40
  %i.bsy = and i64 %i.bsq, -1152920405095219201
  %i.bsz = or i64 %i.bsx, %i.bsy
  store i64 %i.bsz, ptr %i.bsp, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1145

bb.wh:                                            ; preds = %bb.wf
  %i.bta = icmp eq i32 %i.bst, 1048574
  br i1 %i.bta, label %bb.wi, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1145, !prof !46

bb.wi:                                            ; preds = %bb.wh
  %i.btb = or i64 %i.bsq, 1152920405095219200
  store i64 %i.btb, ptr %i.bsp, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bsp)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1145 unwind label %bb.wp

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1145:      ; preds = %bb.wh, %bb.wg, %bb.wi
  %i.btc = invoke noundef ptr @_ZNK4cvc58internal6theory7TypeSet6getSetENS0_8TypeNodeE(ptr noundef nonnull align 8 dereferenceable(120) %26, ptr noundef nonnull align 8 %100)
          to label %bb.wj unwind label %bb.wq     ; 2 uses

bb.wj:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1145
  %i.btd = load ptr, ptr %100, align 8, !tbaa !44 ; 3 uses
  %i.bte = load i64, ptr %i.btd, align 8          ; 3 uses
  %i.btf = and i64 %i.bte, 1152920405095219200
  %.not.i.i1146 = icmp eq i64 %i.btf, 1152920405095219200
  br i1 %.not.i.i1146, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1148, label %bb.wk, !prof !46

bb.wk:                                            ; preds = %bb.wj
  %i.btg = add i64 %i.bte, 1152920405095219200
  %i.bth = and i64 %i.btg, 1152920405095219200    ; 2 uses
  %i.bti = and i64 %i.bte, -1152920405095219201
  %i.btj = or disjoint i64 %i.bth, %i.bti
  store i64 %i.btj, ptr %i.btd, align 8
  %i.btk = icmp eq i64 %i.bth, 0
  br i1 %i.btk, label %bb.wl, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1148, !prof !46

bb.wl:                                            ; preds = %bb.wk
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.btd)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit1148 unwind label %bb.wm

bb.wm:                                            ; preds = %bb.wl
  %i.btl = landingpad { ptr, i32 }
          catch ptr null
  %i.btm = extractvalue { ptr, i32 } %i.btl, 0
  call void @__clang_call_terminate(ptr %i.btm) #25
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit1148:          ; preds = %bb.wj, %bb.wk, %bb.wl
  %.not = icmp eq ptr %i.btc, null
  br i1 %.not, label %bb.wr, label %bb.wn

bb.wn:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit1148
  %i.btn = getelementptr inbounds nuw i8, ptr %i.btc, i64 40
  %i.bto = load i64, ptr %i.btn, align 8, !tbaa !41
  %i.btp = icmp eq i64 %i.bto, 0
  br i1 %i.btp, label %bb.wr, label %.critedge364

bb.wo:                                            ; preds = %bb.we
  %i.btq = landingpad { ptr, i32 }
          cleanup
  br label %bb.act

bb.wp:                                            ; preds = %bb.wi
  %i.btr = landingpad { ptr, i32 }
          cleanup
  br label %bb.acs

bb.wq:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1145
  %i.bts = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %100) #23
  br label %bb.acs

bb.wr:                                            ; preds = %bb.wn, %_ZN4cvc58internal8TypeNodeD2Ev.exit1148
  %i.btt = load ptr, ptr %i.akg, align 8, !tbaa !38 ; 2 uses
  %.not10.i.i.i1149 = icmp eq ptr %i.btt, null
  br i1 %.not10.i.i.i1149, label %_ZNSt3setIN4cvc58internal8TypeNodeESt4lessIS2_ESaIS2_EE4findERKS2_.exit.thread, label %.lr.ph.i.i.i1150

.lr.ph.i.i.i1150:                                 ; preds = %bb.wr
  %i.btu = load ptr, ptr %99, align 8, !tbaa !44
  %i.btv = load i64, ptr %i.btu, align 8
  %i.btw = and i64 %i.btv, 1099511627775          ; 2 uses
  br label %bb.ws

bb.ws:                                            ; preds = %bb.ws, %.lr.ph.i.i.i1150
  %.012.i.i.i1151 = phi ptr [ %i.btt, %.lr.ph.i.i.i1150 ], [ %.1.i.i.i1156, %bb.ws ] ; 4 uses
  %.0811.i.i.i1152 = phi ptr [ %i.akf, %.lr.ph.i.i.i1150 ], [ %.19.i.i.i1153, %bb.ws ] ; 2 uses
  %i.btx = getelementptr inbounds nuw i8, ptr %.012.i.i.i1151, i64 32
  %i.bty = load ptr, ptr %i.btx, align 8, !tbaa !44
  %i.btz = load i64, ptr %i.bty, align 8
  %i.bua = and i64 %i.btz, 1099511627775
  %i.bub = icmp samesign ult i64 %i.bua, %i.btw   ; 3 uses
  %.19.i.i.i1153 = select i1 %i.bub, ptr %.0811.i.i.i1152, ptr %.012.i.i.i1151 ; 2 uses
  %.1.in.v.i.i.i1154 = select i1 %i.bub, i64 24, i64 16
  %.1.in.i.i.i1155 = getelementptr inbounds nuw i8, ptr %.012.i.i.i1151, i64 %.1.in.v.i.i.i1154
  %.1.i.i.i1156 = load ptr, ptr %.1.in.i.i.i1155, align 8, !tbaa !102 ; 2 uses
  %.not.i.i.i1157 = icmp eq ptr %.1.i.i.i1156, null
  br i1 %.not.i.i.i1157, label %_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i.i, label %bb.ws, !llvm.loop !483

_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i.i: ; preds = %bb.ws
  %i.buc = icmp eq ptr %.19.i.i.i1153, %i.akf
  br i1 %i.buc, label %_ZNSt3setIN4cvc58internal8TypeNodeESt4lessIS2_ESaIS2_EE4findERKS2_.exit.thread, label %_ZNSt3setIN4cvc58internal8TypeNodeESt4lessIS2_ESaIS2_EE4findERKS2_.exit

_ZNSt3setIN4cvc58internal8TypeNodeESt4lessIS2_ESaIS2_EE4findERKS2_.exit: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i.i
  %.19.i.i.i1153.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bub, ptr %.0811.i.i.i1152, ptr %.012.i.i.i1151
  %.19.i.i.i1153.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i1153.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bud = load ptr, ptr %.19.i.i.i1153.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !44
  %i.bue = load i64, ptr %i.bud, align 8
  %i.buf = and i64 %i.bue, 1099511627775
  %i.bug = icmp samesign ult i64 %i.btw, %i.buf
  br i1 %i.bug, label %_ZNSt3setIN4cvc58internal8TypeNodeESt4lessIS2_ESaIS2_EE4findERKS2_.exit.thread, label %.critedge364

_ZNSt3setIN4cvc58internal8TypeNodeESt4lessIS2_ESaIS2_EE4findERKS2_.exit.thread: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i.i, %bb.wr, %_ZNSt3setIN4cvc58internal8TypeNodeESt4lessIS2_ESaIS2_EE4findERKS2_.exit, %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1143
  %i.buh = load ptr, ptr %95, align 8, !tbaa !44  ; 5 uses
  store ptr %i.buh, ptr %101, align 8, !tbaa !44
  %i.bui = load i64, ptr %i.buh, align 8          ; 3 uses
  %i.buj = lshr i64 %i.bui, 40
  %i.buk = trunc nuw nsw i64 %i.buj to i32
  %i.bul = and i32 %i.buk, 1048575                ; 3 uses
  %i.bum = icmp samesign ult i32 %i.bul, 1048574
  br i1 %i.bum, label %bb.wt, label %bb.wu, !prof !45

bb.wt:                                            ; preds = %_ZNSt3setIN4cvc58internal8TypeNodeESt4lessIS2_ESaIS2_EE4findERKS2_.exit.thread
  %i.bun = add nuw nsw i32 %i.bul, 1
  %i.buo = zext nneg i32 %i.bun to i64
  %i.bup = shl nuw nsw i64 %i.buo, 40
  %i.buq = and i64 %i.bui, -1152920405095219201
  %i.bur = or i64 %i.bup, %i.buq
  store i64 %i.bur, ptr %i.buh, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1164

bb.wu:                                            ; preds = %_ZNSt3setIN4cvc58internal8TypeNodeESt4lessIS2_ESaIS2_EE4findERKS2_.exit.thread
  %i.bus = icmp eq i32 %i.bul, 1048574
  br i1 %i.bus, label %bb.wv, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1164, !prof !46

bb.wv:                                            ; preds = %bb.wu
  %i.but = or i64 %i.bui, 1152920405095219200
  store i64 %i.but, ptr %i.buh, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.buh)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1164 unwind label %.loopexit.split-lp2279

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1164:      ; preds = %bb.wu, %bb.wt, %bb.wv
  %i.buu = invoke noundef ptr @_ZNK4cvc58internal6theory7TypeSet6getSetENS0_8TypeNodeE(ptr noundef nonnull align 8 dereferenceable(120) %26, ptr noundef nonnull align 8 %101)
          to label %bb.ww unwind label %bb.xi     ; 3 uses

bb.ww:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1164
  %i.buv = load ptr, ptr %101, align 8, !tbaa !44 ; 3 uses
  %i.buw = load i64, ptr %i.buv, align 8          ; 3 uses
  %i.bux = and i64 %i.buw, 1152920405095219200
  %.not.i.i1165 = icmp eq i64 %i.bux, 1152920405095219200
  br i1 %.not.i.i1165, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1167, label %bb.wx, !prof !46

bb.wx:                                            ; preds = %bb.ww
  %i.buy = add i64 %i.buw, 1152920405095219200
  %i.buz = and i64 %i.buy, 1152920405095219200    ; 2 uses
  %i.bva = and i64 %i.buw, -1152920405095219201
  %i.bvb = or disjoint i64 %i.buz, %i.bva
  store i64 %i.bvb, ptr %i.buv, align 8
  %i.bvc = icmp eq i64 %i.buz, 0
  br i1 %i.bvc, label %bb.wy, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1167, !prof !46

bb.wy:                                            ; preds = %bb.wx
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.buv)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit1167 unwind label %bb.wz

bb.wz:                                            ; preds = %bb.wy
  %i.bvd = landingpad { ptr, i32 }
          catch ptr null
  %i.bve = extractvalue { ptr, i32 } %i.bvd, 0
  call void @__clang_call_terminate(ptr %i.bve) #25
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit1167:          ; preds = %bb.ww, %bb.wx, %bb.wy
  %i.bvf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 24
  %i.bvg = load ptr, ptr %i.bvf, align 8, !tbaa !39 ; 2 uses
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.bpe, i64 8 ; 4 uses
  %.not225929702977 = icmp eq ptr %i.bvg, %i.bvh
  br i1 %.not225929702977, label %.critedge364, label %.lr.ph2972.lr.ph

.lr.ph2972.lr.ph:                                 ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit1167
  %i.bvi = icmp ne ptr %i.buu, null
  %or.cond3 = and i1 %.0208, %i.bvi
  %i.bvj = getelementptr inbounds nuw i8, ptr %i.buu, i64 40
  br label %.lr.ph2972.a

.lr.ph2972.a:                                     ; preds = %.lr.ph2972.lr.ph, %.outer
  %.2226.ph2980 = phi i8 [ %.12252986, %.lr.ph2972.lr.ph ], [ %.4228, %.outer ] ; 7 uses
  %.9247.ph2979 = phi i1 [ %.82462985, %.lr.ph2972.lr.ph ], [ %.10248, %.outer ] ; 6 uses
  %.sroa.02117.3.ph2978 = phi ptr [ %i.bvg, %.lr.ph2972.lr.ph ], [ %i.bvk, %.outer ]
  br label %bb.xa

bb.xa:                                            ; preds = %.lr.ph2972.a, %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit1180
  %.sroa.02117.32971 = phi ptr [ %.sroa.02117.3.ph2978, %.lr.ph2972.a ], [ %i.bvk, %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit1180 ] ; 3 uses
  %i.bvk = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02117.32971) #27 ; 4 uses
  %i.bvl = getelementptr inbounds nuw i8, ptr %.sroa.02117.32971, i64 32 ; 10 uses
  %i.bvm = load i64, ptr %i.ako, align 8, !tbaa !116
  %.not.not.i.i1168 = icmp eq i64 %i.bvm, 0
  br i1 %.not.not.i.i1168, label %bb.xb, label %bb.xe

bb.xb:                                            ; preds = %bb.xa
  %i.bvn = load ptr, ptr %i.bvl, align 8
  br label %bb.xc

bb.xc:                                            ; preds = %bb.xd, %bb.xb
  %.sroa.06.0.in.i.i1176 = phi ptr [ %i.cb, %bb.xb ], [ %.sroa.06.0.i.i1177, %bb.xd ]
  %.sroa.06.0.i.i1177 = load ptr, ptr %.sroa.06.0.in.i.i1176, align 8, !tbaa !104 ; 3 uses
  %.not.i.i1178 = icmp eq ptr %.sroa.06.0.i.i1177, null
  br i1 %.not.i.i1178, label %.loopexit2273, label %bb.xd

bb.xd:                                            ; preds = %bb.xc
  %i.bvo = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i1177, i64 8
  %i.bvp = load ptr, ptr %i.bvo, align 8, !tbaa !57
  %i.bvq = icmp eq ptr %i.bvn, %i.bvp
  br i1 %i.bvq, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit1180, label %bb.xc, !llvm.loop !4

bb.xe:                                            ; preds = %bb.xa
  %i.bvr = invoke noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.bvl)
          to label %.noexc1179 unwind label %bb.xj ; 3 uses

.noexc1179:                                       ; preds = %bb.xe
  %i.bvs = load i64, ptr %i.ca, align 8, !tbaa !117 ; 2 uses
  %i.bvt = urem i64 %i.bvr, %i.bvs                ; 2 uses
  %i.bvu = load ptr, ptr %31, align 8, !tbaa !118
  %i.bvv = getelementptr inbounds nuw [8 x i8], ptr %i.bvu, i64 %i.bvt
  %i.bvw = load ptr, ptr %i.bvv, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i.i1169 = icmp eq ptr %i.bvw, null
  br i1 %.not.i.i.i.i1169, label %.loopexit2273, label %bb.xf

bb.xf:                                            ; preds = %.noexc1179
  %i.bvx = load ptr, ptr %i.bvw, align 8, !tbaa !104 ; 3 uses
  %i.bvy = load ptr, ptr %i.bvl, align 8          ; 2 uses
  %i.bvz = getelementptr inbounds nuw i8, ptr %i.bvx, i64 8
  %i.bwa = getelementptr inbounds nuw i8, ptr %i.bvx, i64 16
  %i.bwb = load i64, ptr %i.bwa, align 8, !tbaa !107
  %i.bwc = icmp eq i64 %i.bvr, %i.bwb
  %i.bwd = load ptr, ptr %i.bvz, align 8
  %i.bwe = icmp eq ptr %i.bvy, %i.bwd
  %i.bwf = select i1 %i.bwc, i1 %i.bwe, i1 false
  br i1 %i.bwf, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit1180, label %.lr.ph.i.i.i.i1170

bb.xg:                                            ; preds = %bb.xh
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.bwl, i64 8
  %i.bwh = icmp eq i64 %i.bvr, %i.bwn
  %i.bwi = load ptr, ptr %i.bwg, align 8
  %i.bwj = icmp eq ptr %i.bvy, %i.bwi
  %i.bwk = select i1 %i.bwh, i1 %i.bwj, i1 false
  br i1 %i.bwk, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit1180, label %.lr.ph.i.i.i.i1170, !llvm.loop !5

.lr.ph.i.i.i.i1170:                               ; preds = %bb.xf, %bb.xg
  %.020.i.i.i.i1171 = phi ptr [ %i.bwl, %bb.xg ], [ %i.bvx, %bb.xf ]
  %i.bwl = load ptr, ptr %.020.i.i.i.i1171, align 8, !tbaa !104 ; 4 uses
  %.not18.i.i.i.i1172 = icmp eq ptr %i.bwl, null
  br i1 %.not18.i.i.i.i1172, label %.loopexit2273, label %bb.xh

bb.xh:                                            ; preds = %.lr.ph.i.i.i.i1170
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bwl, i64 16
  %i.bwn = load i64, ptr %i.bwm, align 8, !tbaa !107 ; 2 uses
  %i.bwo = urem i64 %i.bwn, %i.bvs
  %.not19.i.i.i.i1173 = icmp eq i64 %i.bwo, %i.bvt
  br i1 %.not19.i.i.i.i1173, label %bb.xg, label %..loopexit_crit_edge21.i.i.i.i1174, !llvm.loop !5

..loopexit_crit_edge21.i.i.i.i1174:               ; preds = %bb.xh
  br label %.loopexit2273, !llvm.loop !5

_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit1180: ; preds = %bb.xg, %bb.xd, %bb.xf
  %.not2259 = icmp eq ptr %i.bvk, %i.bvh
  br i1 %.not2259, label %.critedge364, label %bb.xa, !llvm.loop !484

.loopexit2278:                                    ; preds = %bb.xq
  %lpad.loopexit2280 = landingpad { ptr, i32 }
          cleanup
  br label %bb.acs

.loopexit.split-lp2279:                           ; preds = %bb.wv
  %lpad.loopexit.split-lp2281 = landingpad { ptr, i32 }
          cleanup
  br label %bb.acs

bb.xi:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1164
  %i.bwp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %101) #23
  br label %bb.acs

bb.xj:                                            ; preds = %bb.xe
  %i.bwq = landingpad { ptr, i32 }
          cleanup
  br label %bb.acs

.loopexit2273:                                    ; preds = %.noexc1179, %.lr.ph.i.i.i.i1170, %bb.xc, %..loopexit_crit_edge21.i.i.i.i1174
  %i.bwr = load ptr, ptr %i.ck, align 8, !tbaa !38 ; 2 uses
  %.not10.i.i.i1207 = icmp eq ptr %i.bwr, null
  br i1 %.not10.i.i.i1207, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit1219.thread, label %.lr.ph.i.i.i1208

.lr.ph.i.i.i1208:                                 ; preds = %.loopexit2273
  %i.bws = load ptr, ptr %i.bvl, align 8, !tbaa !57
  %i.bwt = load i64, ptr %i.bws, align 8
  %i.bwu = and i64 %i.bwt, 1099511627775          ; 2 uses
  br label %bb.xk

bb.xk:                                            ; preds = %bb.xk, %.lr.ph.i.i.i1208
  %.012.i.i.i1209 = phi ptr [ %i.bwr, %.lr.ph.i.i.i1208 ], [ %.1.i.i.i1214, %bb.xk ] ; 4 uses
  %.0811.i.i.i1210 = phi ptr [ %i.cj, %.lr.ph.i.i.i1208 ], [ %.19.i.i.i1211, %bb.xk ] ; 2 uses
  %i.bwv = getelementptr inbounds nuw i8, ptr %.012.i.i.i1209, i64 32
  %i.bww = load ptr, ptr %i.bwv, align 8, !tbaa !57
  %i.bwx = load i64, ptr %i.bww, align 8
  %i.bwy = and i64 %i.bwx, 1099511627775
  %i.bwz = icmp samesign ult i64 %i.bwy, %i.bwu   ; 3 uses
  %.19.i.i.i1211 = select i1 %i.bwz, ptr %.0811.i.i.i1210, ptr %.012.i.i.i1209 ; 3 uses
  %.1.in.v.i.i.i1212 = select i1 %i.bwz, i64 24, i64 16
  %.1.in.i.i.i1213 = getelementptr inbounds nuw i8, ptr %.012.i.i.i1209, i64 %.1.in.v.i.i.i1212
  %.1.i.i.i1214 = load ptr, ptr %.1.in.i.i.i1213, align 8, !tbaa !102 ; 2 uses
  %.not.i.i.i1215 = icmp eq ptr %.1.i.i.i1214, null
  br i1 %.not.i.i.i1215, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i1216, label %bb.xk, !llvm.loop !1

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i1216: ; preds = %bb.xk
  %i.bxa = icmp eq ptr %.19.i.i.i1211, %i.cj
  br i1 %i.bxa, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit1219.thread, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit1219

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit1219: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i1216
  %.19.i.i.i1211.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bwz, ptr %.0811.i.i.i1210, ptr %.012.i.i.i1209
  %.19.i.i.i1211.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i1211.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bxb = load ptr, ptr %.19.i.i.i1211.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !57
  %i.bxc = load i64, ptr %i.bxb, align 8
  %i.bxd = and i64 %i.bxc, 1099511627775
  %i.bxe = icmp samesign ult i64 %i.bwu, %i.bxd
  br i1 %i.bxe, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit1219.thread, label %bb.xl

bb.xl:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit1219
  %i.bxf = load ptr, ptr %i.cf, align 8, !tbaa !38 ; 2 uses
  %.not10.i.i.i1220 = icmp eq ptr %i.bxf, null
  br i1 %.not10.i.i.i1220, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory24TheoryEngineModelBuilder8AssignerESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread, label %.lr.ph.i.i.i1221

.lr.ph.i.i.i1221:                                 ; preds = %bb.xl
  %i.bxg = getelementptr inbounds nuw i8, ptr %.19.i.i.i1211, i64 40
  %i.bxh = load ptr, ptr %i.bxg, align 8, !tbaa !57
  %i.bxi = load i64, ptr %i.bxh, align 8
  %i.bxj = and i64 %i.bxi, 1099511627775          ; 2 uses
  br label %bb.xm

bb.xm:                                            ; preds = %bb.xm, %.lr.ph.i.i.i1221
  %.012.i.i.i1222 = phi ptr [ %i.bxf, %.lr.ph.i.i.i1221 ], [ %.1.i.i.i1227, %bb.xm ] ; 4 uses
  %.0811.i.i.i1223 = phi ptr [ %i.ce, %.lr.ph.i.i.i1221 ], [ %.19.i.i.i1224, %bb.xm ] ; 2 uses
  %i.bxk = getelementptr inbounds nuw i8, ptr %.012.i.i.i1222, i64 32
  %i.bxl = load ptr, ptr %i.bxk, align 8, !tbaa !57
  %i.bxm = load i64, ptr %i.bxl, align 8
  %i.bxn = and i64 %i.bxm, 1099511627775
  %i.bxo = icmp samesign ult i64 %i.bxn, %i.bxj   ; 3 uses
  %.19.i.i.i1224 = select i1 %i.bxo, ptr %.0811.i.i.i1223, ptr %.012.i.i.i1222 ; 3 uses
  %.1.in.v.i.i.i1225 = select i1 %i.bxo, i64 24, i64 16
  %.1.in.i.i.i1226 = getelementptr inbounds nuw i8, ptr %.012.i.i.i1222, i64 %.1.in.v.i.i.i1225
  %.1.i.i.i1227 = load ptr, ptr %.1.in.i.i.i1226, align 8, !tbaa !102 ; 2 uses
  %.not.i.i.i1228 = icmp eq ptr %.1.i.i.i1227, null
  br i1 %.not.i.i.i1228, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory24TheoryEngineModelBuilder8AssignerEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %bb.xm, !llvm.loop !471

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory24TheoryEngineModelBuilder8AssignerEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %bb.xm
  %i.bxp = icmp eq ptr %.19.i.i.i1224, %i.ce
  br i1 %i.bxp, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory24TheoryEngineModelBuilder8AssignerESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread, label %bb.xn

bb.xn:                                            ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory24TheoryEngineModelBuilder8AssignerEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %.19.i.i.i1224.sroa.sel.v.sroa.sel.v = select i1 %i.bxo, ptr %.0811.i.i.i1223, ptr %.012.i.i.i1222
  br label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory24TheoryEngineModelBuilder8AssignerESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit1219.thread: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i1216, %.loopexit2273, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit1219
  %i.bxq = load ptr, ptr %i.cf, align 8, !tbaa !38 ; 2 uses
  %.not10.i.i.i1231 = icmp eq ptr %i.bxq, null
  br i1 %.not10.i.i.i1231, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory24TheoryEngineModelBuilder8AssignerESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread, label %.lr.ph.i.i.i1232

.lr.ph.i.i.i1232:                                 ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit1219.thread
  %i.bxr = load ptr, ptr %i.bvl, align 8, !tbaa !57
  %i.bxs = load i64, ptr %i.bxr, align 8
  %i.bxt = and i64 %i.bxs, 1099511627775          ; 2 uses
  br label %bb.xo

bb.xo:                                            ; preds = %bb.xo, %.lr.ph.i.i.i1232
  %.012.i.i.i1233 = phi ptr [ %i.bxq, %.lr.ph.i.i.i1232 ], [ %.1.i.i.i1238, %bb.xo ] ; 4 uses
  %.0811.i.i.i1234 = phi ptr [ %i.ce, %.lr.ph.i.i.i1232 ], [ %.19.i.i.i1235, %bb.xo ] ; 2 uses
  %i.bxu = getelementptr inbounds nuw i8, ptr %.012.i.i.i1233, i64 32
  %i.bxv = load ptr, ptr %i.bxu, align 8, !tbaa !57
  %i.bxw = load i64, ptr %i.bxv, align 8
  %i.bxx = and i64 %i.bxw, 1099511627775
  %i.bxy = icmp samesign ult i64 %i.bxx, %i.bxt   ; 3 uses
  %.19.i.i.i1235 = select i1 %i.bxy, ptr %.0811.i.i.i1234, ptr %.012.i.i.i1233 ; 3 uses
  %.1.in.v.i.i.i1236 = select i1 %i.bxy, i64 24, i64 16
  %.1.in.i.i.i1237 = getelementptr inbounds nuw i8, ptr %.012.i.i.i1233, i64 %.1.in.v.i.i.i1236
  %.1.i.i.i1238 = load ptr, ptr %.1.in.i.i.i1237, align 8, !tbaa !102 ; 2 uses
  %.not.i.i.i1239 = icmp eq ptr %.1.i.i.i1238, null
end_hunk_3
begin_hunk_4_@_ZN4cvc58internal6theory24TheoryEngineModelBuilder10buildModelEPNS1_11TheoryModelE:bb.a
  %i.cir = getelementptr inbounds nuw i8, ptr %i.ciq, i64 8
  %i.cis = load ptr, ptr %i.cir, align 8
  call void %i.cis(ptr noundef nonnull align 8 dereferenceable(16) %i.cio) #23, !inline_history !488
  br label %_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit

_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1514, %bb.abh
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #23
  br label %.critedge366

bb.abi:                                           ; preds = %bb.aat
  %i.cit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit1515

bb.abj:                                           ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1474
  %i.ciu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %110) #23
  br label %_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit1515

bb.abk:                                           ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit1477
  %i.civ = landingpad { ptr, i32 }
          cleanup
  br label %bb.abm

bb.abl:                                           ; preds = %bb.abd, %bb.aba
  %i.ciw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %111) #23
  br label %bb.abm

bb.abm:                                           ; preds = %bb.abl, %bb.abk
  %.pn270 = phi { ptr, i32 } [ %i.ciw, %bb.abl ], [ %i.civ, %bb.abk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #23
  %i.cix = load ptr, ptr %109, align 8, !tbaa !51 ; 3 uses
  %i.ciy = icmp eq ptr %i.cix, null
  br i1 %i.ciy, label %_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit1515, label %bb.abn

bb.abn:                                           ; preds = %bb.abm
  %i.ciz = load ptr, ptr %i.cix, align 8, !tbaa !20
  %i.cja = getelementptr inbounds nuw i8, ptr %i.ciz, i64 8
  %i.cjb = load ptr, ptr %i.cja, align 8
  call void %i.cjb(ptr noundef nonnull align 8 dereferenceable(16) %i.cix) #23, !inline_history !488
  br label %_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit1515

_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit1515: ; preds = %bb.abn, %bb.abm, %bb.abj, %bb.abi
  %.pn272.pn = phi { ptr, i32 } [ %i.cit, %bb.abi ], [ %i.ciu, %bb.abj ], [ %.pn270, %bb.abm ], [ %.pn270, %bb.abn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #23
  br label %.body1350

.critedge366:                                     ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1395, %bb.zq, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1405, %_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1321
  %i.cjc = load ptr, ptr %i.bvl, align 8, !tbaa !57 ; 5 uses
  store ptr %i.cjc, ptr %112, align 8, !tbaa !57
  %i.cjd = load i64, ptr %i.cjc, align 8          ; 3 uses
  %i.cje = lshr i64 %i.cjd, 40
  %i.cjf = trunc nuw nsw i64 %i.cje to i32
  %i.cjg = and i32 %i.cjf, 1048575                ; 3 uses
  %i.cjh = icmp samesign ult i32 %i.cjg, 1048574
  br i1 %i.cjh, label %bb.abo, label %bb.abp, !prof !45

bb.abo:                                           ; preds = %.critedge366
  %i.cji = add nuw nsw i32 %i.cjg, 1
  %i.cjj = zext nneg i32 %i.cji to i64
  %i.cjk = shl nuw nsw i64 %i.cjj, 40
  %i.cjl = and i64 %i.cjd, -1152920405095219201
  %i.cjm = or i64 %i.cjk, %i.cjl
  store i64 %i.cjm, ptr %i.cjc, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1532

bb.abp:                                           ; preds = %.critedge366
  %i.cjn = icmp eq i32 %i.cjg, 1048574
  br i1 %i.cjn, label %bb.abq, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1532, !prof !46

bb.abq:                                           ; preds = %bb.abp
  %i.cjo = or i64 %i.cjd, 1152920405095219200
  store i64 %i.cjo, ptr %i.cjc, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cjc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1532 unwind label %bb.aaf

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1532: ; preds = %bb.abp, %bb.abo, %bb.abq
  %i.cjp = load ptr, ptr %102, align 8, !tbaa !57 ; 5 uses
  store ptr %i.cjp, ptr %113, align 8, !tbaa !57
  %i.cjq = load i64, ptr %i.cjp, align 8          ; 3 uses
  %i.cjr = lshr i64 %i.cjq, 40
  %i.cjs = trunc nuw nsw i64 %i.cjr to i32
  %i.cjt = and i32 %i.cjs, 1048575                ; 3 uses
  %i.cju = icmp samesign ult i32 %i.cjt, 1048574
  br i1 %i.cju, label %bb.abr, label %bb.abs, !prof !45

bb.abr:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1532
  %i.cjv = add nuw nsw i32 %i.cjt, 1
  %i.cjw = zext nneg i32 %i.cjv to i64
  %i.cjx = shl nuw nsw i64 %i.cjw, 40
  %i.cjy = and i64 %i.cjq, -1152920405095219201
  %i.cjz = or i64 %i.cjx, %i.cjy
  store i64 %i.cjz, ptr %i.cjp, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1534

bb.abs:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1532
  %i.cka = icmp eq i32 %i.cjt, 1048574
  br i1 %i.cka, label %bb.abt, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1534, !prof !46

bb.abt:                                           ; preds = %bb.abs
  %i.ckb = or i64 %i.cjq, 1152920405095219200
  store i64 %i.ckb, ptr %i.cjp, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cjp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1534 unwind label %bb.aci

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1534: ; preds = %bb.abs, %bb.abr, %bb.abt
  invoke void @_ZN4cvc58internal6theory24TheoryEngineModelBuilder17assignConstantRepEPNS1_11TheoryModelENS0_12NodeTemplateILb1EEES6_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 %112, ptr noundef nonnull align 8 %113)
          to label %bb.abu unwind label %bb.acj

bb.abu:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1534
  %i.ckc = load ptr, ptr %113, align 8, !tbaa !57 ; 3 uses
  %i.ckd = load i64, ptr %i.ckc, align 8          ; 3 uses
  %i.cke = and i64 %i.ckd, 1152920405095219200
  %.not.i.i1535 = icmp eq i64 %i.cke, 1152920405095219200
  br i1 %.not.i.i1535, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1537, label %bb.abv, !prof !46

bb.abv:                                           ; preds = %bb.abu
  %i.ckf = add i64 %i.ckd, 1152920405095219200
  %i.ckg = and i64 %i.ckf, 1152920405095219200    ; 2 uses
  %i.ckh = and i64 %i.ckd, -1152920405095219201
  %i.cki = or disjoint i64 %i.ckg, %i.ckh
  store i64 %i.cki, ptr %i.ckc, align 8
  %i.ckj = icmp eq i64 %i.ckg, 0
  br i1 %i.ckj, label %bb.abw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1537, !prof !46

bb.abw:                                           ; preds = %bb.abv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ckc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1537 unwind label %bb.abx

bb.abx:                                           ; preds = %bb.abw
  %i.ckk = landingpad { ptr, i32 }
          catch ptr null
  %i.ckl = extractvalue { ptr, i32 } %i.ckk, 0
  call void @__clang_call_terminate(ptr %i.ckl) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1537: ; preds = %bb.abu, %bb.abv, %bb.abw
  %i.ckm = load ptr, ptr %112, align 8, !tbaa !57 ; 3 uses
  %i.ckn = load i64, ptr %i.ckm, align 8          ; 3 uses
  %i.cko = and i64 %i.ckn, 1152920405095219200
  %.not.i.i1538 = icmp eq i64 %i.cko, 1152920405095219200
  br i1 %.not.i.i1538, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1540, label %bb.aby, !prof !46

bb.aby:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1537
  %i.ckp = add i64 %i.ckn, 1152920405095219200
  %i.ckq = and i64 %i.ckp, 1152920405095219200    ; 2 uses
  %i.ckr = and i64 %i.ckn, -1152920405095219201
  %i.cks = or disjoint i64 %i.ckq, %i.ckr
  store i64 %i.cks, ptr %i.ckm, align 8
  %i.ckt = icmp eq i64 %i.ckq, 0
  br i1 %i.ckt, label %bb.abz, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1540, !prof !46

bb.abz:                                           ; preds = %bb.aby
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ckm)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1540 unwind label %bb.aca

bb.aca:                                           ; preds = %bb.abz
  %i.cku = landingpad { ptr, i32 }
          catch ptr null
  %i.ckv = extractvalue { ptr, i32 } %i.cku, 0
  call void @__clang_call_terminate(ptr %i.ckv) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1540: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1537, %bb.aby, %bb.abz
  %i.ckw = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.02117.32971, ptr noundef nonnull align 8 dereferenceable(32) %i.bvh) #23 ; 2 uses
  %i.ckx = getelementptr inbounds nuw i8, ptr %i.ckw, i64 32
  %i.cky = load ptr, ptr %i.ckx, align 8, !tbaa !57 ; 3 uses
  %i.ckz = load i64, ptr %i.cky, align 8          ; 3 uses
  %i.cla = and i64 %i.ckz, 1152920405095219200
  %.not.i.i.i.i.i.i.i1541 = icmp eq i64 %i.cla, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i1541, label %bb.ace, label %bb.acb, !prof !46

bb.acb:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1540
  %i.clb = add i64 %i.ckz, 1152920405095219200
  %i.clc = and i64 %i.clb, 1152920405095219200    ; 2 uses
  %i.cld = and i64 %i.ckz, -1152920405095219201
  %i.cle = or disjoint i64 %i.clc, %i.cld
  store i64 %i.cle, ptr %i.cky, align 8
  %i.clf = icmp eq i64 %i.clc, 0
  br i1 %i.clf, label %bb.acc, label %bb.ace, !prof !46

bb.acc:                                           ; preds = %bb.acb
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cky)
          to label %bb.ace unwind label %bb.acd

bb.acd:                                           ; preds = %bb.acc
  %i.clg = landingpad { ptr, i32 }
          catch ptr null
  %i.clh = extractvalue { ptr, i32 } %i.clg, 0
  call void @__clang_call_terminate(ptr %i.clh) #25
  unreachable

bb.ace:                                           ; preds = %bb.acc, %bb.acb, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1540
  call void @_ZdlPvm(ptr noundef nonnull %i.ckw, i64 noundef 40) #24
  %i.cli = load i64, ptr %i.bpt, align 8, !tbaa !41
  %i.clj = add i64 %i.cli, -1
  store i64 %i.clj, ptr %i.bpt, align 8, !tbaa !41
  %117 = trunc nuw i8 %.2226.ph2980 to i1
  %i.clk = load ptr, ptr %102, align 8, !tbaa !57 ; 3 uses
  %i.cll = load i64, ptr %i.clk, align 8          ; 3 uses
  %i.clm = and i64 %i.cll, 1152920405095219200
  %.not.i.i1543 = icmp eq i64 %i.clm, 1152920405095219200
  br i1 %.not.i.i1543, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1545, label %bb.acf, !prof !46

bb.acf:                                           ; preds = %bb.ace
  %i.cln = add i64 %i.cll, 1152920405095219200
  %i.clo = and i64 %i.cln, 1152920405095219200    ; 2 uses
  %i.clp = and i64 %i.cll, -1152920405095219201
  %i.clq = or disjoint i64 %i.clo, %i.clp
  store i64 %i.clq, ptr %i.clk, align 8
  %i.clr = icmp eq i64 %i.clo, 0
  br i1 %i.clr, label %bb.acg, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1545, !prof !46

bb.acg:                                           ; preds = %bb.acf
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.clk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1545 unwind label %bb.ach

bb.ach:                                           ; preds = %bb.acg
  %i.cls = landingpad { ptr, i32 }
          catch ptr null
  %i.clt = extractvalue { ptr, i32 } %i.cls, 0
  call void @__clang_call_terminate(ptr %i.clt) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1545: ; preds = %bb.ace, %bb.acf, %bb.acg
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #23
  br i1 %117, label %.critedge364, label %.outer

bb.aci:                                           ; preds = %bb.abt
  %i.clu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ack

bb.acj:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1534
  %i.clv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %113) #23
  br label %bb.ack

bb.ack:                                           ; preds = %bb.acj, %bb.aci
  %.pn284 = phi { ptr, i32 } [ %i.clv, %bb.acj ], [ %i.clu, %bb.aci ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %112) #23
  br label %.body1350

.body1350:                                        ; preds = %bb.aal, %bb.aam, %bb.aap, %bb.ack, %_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit1515, %bb.aag, %bb.aaf, %bb.yr
  %.pn286 = phi { ptr, i32 } [ %i.cfz, %bb.aaf ], [ %.pn284, %bb.ack ], [ %.pn278, %bb.aap ], [ %.pn282, %bb.yr ], [ %.pn275.pn, %bb.aal ], [ %i.cga, %bb.aag ], [ %.pn272.pn, %_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit1515 ], [ %i.cge, %bb.aam ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %102) #23
  br label %.body1307

.body1307:                                        ; preds = %bb.yc, %.body1350
  %.pn286.pn = phi { ptr, i32 } [ %.pn286, %.body1350 ], [ %i.bzp, %bb.yc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #23
  br label %bb.acs

.outer:                                           ; preds = %.lr.ph.i.i.i.i1246, %bb.xs, %.noexc1255, %..loopexit_crit_edge21.i.i.i.i1250, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1545, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1305
  %.10248 = phi i1 [ true, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1545 ], [ %.9247.ph2979, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1305 ], [ %.9247.ph2979, %..loopexit_crit_edge21.i.i.i.i1250 ], [ %.9247.ph2979, %bb.xs ], [ %.9247.ph2979, %.noexc1255 ], [ %.9247.ph2979, %.lr.ph.i.i.i.i1246 ] ; 2 uses
  %.4228 = phi i8 [ 0, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1545 ], [ %.2226.ph2980, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1305 ], [ %.2226.ph2980, %..loopexit_crit_edge21.i.i.i.i1250 ], [ %.2226.ph2980, %bb.xs ], [ %.2226.ph2980, %.noexc1255 ], [ %.2226.ph2980, %.lr.ph.i.i.i.i1246 ] ; 2 uses
  %.not22592970 = icmp eq ptr %i.bvk, %i.bvh
  br i1 %.not22592970, label %.critedge364, label %.lr.ph2972.a, !llvm.loop !484

.critedge364:                                     ; preds = %.outer, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1545, %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit1180, %_ZN4cvc58internal8TypeNodeD2Ev.exit1167, %bb.wn, %_ZNSt3setIN4cvc58internal8TypeNodeESt4lessIS2_ESaIS2_EE4findERKS2_.exit
  %.12250 = phi i1 [ %.82462985, %bb.wn ], [ %.82462985, %_ZNSt3setIN4cvc58internal8TypeNodeESt4lessIS2_ESaIS2_EE4findERKS2_.exit ], [ %.82462985, %_ZN4cvc58internal8TypeNodeD2Ev.exit1167 ], [ %.9247.ph2979, %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit1180 ], [ %.10248, %.outer ], [ true, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1545 ]
  %.6230 = phi i8 [ 0, %bb.wn ], [ 0, %_ZNSt3setIN4cvc58internal8TypeNodeESt4lessIS2_ESaIS2_EE4findERKS2_.exit ], [ %.12252986, %_ZN4cvc58internal8TypeNodeD2Ev.exit1167 ], [ %.2226.ph2980, %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit1180 ], [ %.4228, %.outer ], [ 0, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1545 ]
  %i.clw = load ptr, ptr %99, align 8, !tbaa !44  ; 3 uses
  %i.clx = load i64, ptr %i.clw, align 8          ; 3 uses
  %i.cly = and i64 %i.clx, 1152920405095219200
  %.not.i.i1546 = icmp eq i64 %i.cly, 1152920405095219200
  br i1 %.not.i.i1546, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1548, label %bb.acl, !prof !46

bb.acl:                                           ; preds = %.critedge364
  %i.clz = add i64 %i.clx, 1152920405095219200
  %i.cma = and i64 %i.clz, 1152920405095219200    ; 2 uses
  %i.cmb = and i64 %i.clx, -1152920405095219201
  %i.cmc = or disjoint i64 %i.cma, %i.cmb
  store i64 %i.cmc, ptr %i.clw, align 8
  %i.cmd = icmp eq i64 %i.cma, 0
  br i1 %i.cmd, label %bb.acm, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1548, !prof !46

bb.acm:                                           ; preds = %bb.acl
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.clw)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit1548 unwind label %bb.acn

bb.acn:                                           ; preds = %bb.acm
  %i.cme = landingpad { ptr, i32 }
          catch ptr null
  %i.cmf = extractvalue { ptr, i32 } %i.cme, 0
  call void @__clang_call_terminate(ptr %i.cmf) #25
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit1548:          ; preds = %.critedge364, %bb.acl, %bb.acm
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #23
  br label %bb.aco

bb.aco:                                           ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit1548, %bb.vb, %_ZN4cvc58internal8TypeNodeD2Ev.exit1131
  %.14252 = phi i1 [ %.82462985, %_ZN4cvc58internal8TypeNodeD2Ev.exit1131 ], [ %.12250, %_ZN4cvc58internal8TypeNodeD2Ev.exit1548 ], [ %.82462985, %bb.vb ] ; 2 uses
  %.8232 = phi i8 [ %.12252986, %_ZN4cvc58internal8TypeNodeD2Ev.exit1131 ], [ %.6230, %_ZN4cvc58internal8TypeNodeD2Ev.exit1548 ], [ %.12252986, %bb.vb ] ; 3 uses
  %i.cmg = load ptr, ptr %95, align 8, !tbaa !44  ; 3 uses
  %i.cmh = load i64, ptr %i.cmg, align 8          ; 3 uses
  %i.cmi = and i64 %i.cmh, 1152920405095219200
  %.not.i.i1549 = icmp eq i64 %i.cmi, 1152920405095219200
  br i1 %.not.i.i1549, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1551, label %bb.acp, !prof !46

bb.acp:                                           ; preds = %bb.aco
  %i.cmj = add i64 %i.cmh, 1152920405095219200
  %i.cmk = and i64 %i.cmj, 1152920405095219200    ; 2 uses
  %i.cml = and i64 %i.cmh, -1152920405095219201
  %i.cmm = or disjoint i64 %i.cmk, %i.cml
  store i64 %i.cmm, ptr %i.cmg, align 8
  %i.cmn = icmp eq i64 %i.cmk, 0
  br i1 %i.cmn, label %bb.acq, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1551, !prof !46

bb.acq:                                           ; preds = %bb.acp
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cmg)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit1551 unwind label %bb.acr

bb.acr:                                           ; preds = %bb.acq
  %i.cmo = landingpad { ptr, i32 }
          catch ptr null
  %i.cmp = extractvalue { ptr, i32 } %i.cmo, 0
  call void @__clang_call_terminate(ptr %i.cmp) #25
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit1551:          ; preds = %bb.aco, %bb.acp, %bb.acq
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #23
  %i.cmq = getelementptr inbounds nuw i8, ptr %.sroa.02130.12984, i64 8 ; 2 uses
  %i.cmr = load ptr, ptr %i.akk, align 8, !tbaa !126
  %.not2257 = icmp eq ptr %i.cmq, %i.cmr
  br i1 %.not2257, label %._crit_edge2989, label %.lr.ph2988, !llvm.loop !489

bb.acs:                                           ; preds = %.loopexit2278, %.loopexit.split-lp2279, %bb.xi, %bb.xj, %bb.xy, %.body1307, %bb.wp, %bb.wq
  %.pn289.pn = phi { ptr, i32 } [ %i.bts, %bb.wq ], [ %i.btr, %bb.wp ], [ %i.bwp, %bb.xi ], [ %i.bwq, %bb.xj ], [ %.pn286.pn, %.body1307 ], [ %i.bzi, %bb.xy ], [ %lpad.loopexit2280, %.loopexit2278 ], [ %lpad.loopexit.split-lp2281, %.loopexit.split-lp2279 ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %99) #23
  br label %bb.act

bb.act:                                           ; preds = %bb.acs, %bb.wo
  %.pn289.pn.pn = phi { ptr, i32 } [ %.pn289.pn, %bb.acs ], [ %i.btq, %bb.wo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #23
  br label %bb.acu

bb.acu:                                           ; preds = %bb.vx, %bb.act, %bb.wb, %bb.vy, %bb.va, %bb.uz
  %.pn289.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bpr, %bb.uz ], [ %i.bps, %bb.va ], [ %.pn289.pn.pn, %bb.act ], [ %i.brx, %bb.vx ], [ %.pn265, %bb.wb ], [ %i.bry, %bb.vy ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %95) #23
  br label %bb.acv

bb.acv:                                           ; preds = %bb.acu, %bb.uy
  %.pn289.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn289.pn.pn.pn.pn, %bb.acu ], [ %i.bpq, %bb.uy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #23
  br label %_ZN4cvc58internal8TypeNodeD2Ev.exit1124

._crit_edge2989:                                  ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit1551
  br i1 %.14252, label %.backedge, label %._crit_edge2989.thread

._crit_edge2989.thread:                           ; preds = %bb.un, %._crit_edge2989
  %.1225.lcssa3588 = phi i8 [ %.8232, %._crit_edge2989 ], [ %.0224, %bb.un ]
  %i.cms = trunc nuw i8 %.1225.lcssa3588 to i1
  br i1 %i.cms, label %.loopexit2285, label %.backedge

.backedge:                                        ; preds = %._crit_edge2989.thread, %._crit_edge2989
  %.0224.be = phi i8 [ %.8232, %._crit_edge2989 ], [ 1, %._crit_edge2989.thread ]
  br label %bb.lp, !llvm.loop !490

.thread:                                          ; preds = %bb.um, %_ZNSt3setIN4cvc58internal8TypeNodeESt4lessIS2_ESaIS2_EE5clearEv.exit
  %i.cmt = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.cmu = load ptr, ptr %i.db, align 8, !tbaa !38
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cmt, ptr noundef %i.cmu)
          to label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE5clearEv.exit1561 unwind label %bb.acw

bb.acw:                                           ; preds = %.thread
  %i.cmv = landingpad { ptr, i32 }
          catch ptr null
  %i.cmw = extractvalue { ptr, i32 } %i.cmv, 0
  call void @__clang_call_terminate(ptr %i.cmw) #25
  unreachable

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE5clearEv.exit1561: ; preds = %.thread
  store ptr null, ptr %i.db, align 8, !tbaa !38
  %i.cmx = getelementptr inbounds nuw i8, ptr %1, i64 240
  store ptr %i.dc, ptr %i.cmx, align 8, !tbaa !39
  %i.cmy = getelementptr inbounds nuw i8, ptr %1, i64 248
  store ptr %i.dc, ptr %i.cmy, align 8, !tbaa !40
  %i.cmz = getelementptr inbounds nuw i8, ptr %1, i64 256
  store i64 0, ptr %i.cmz, align 8, !tbaa !41
  %i.cna = load ptr, ptr %i.aa, align 8, !tbaa !39 ; 2 uses
  %.not22532992 = icmp eq ptr %i.cna, %i.z
  br i1 %.not22532992, label %._crit_edge2995, label %.lr.ph2994

.lr.ph2994:                                       ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE5clearEv.exit1561, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1575
  %.sroa.02029.02993 = phi ptr [ %i.cpm, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1575 ], [ %i.cna, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE5clearEv.exit1561 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #23
  %i.cnb = getelementptr inbounds nuw i8, ptr %.sroa.02029.02993, i64 32
  %i.cnc = getelementptr inbounds nuw i8, ptr %.sroa.02029.02993, i64 40
  %i.cnd = load ptr, ptr %i.cnc, align 8, !tbaa !57 ; 5 uses
  store ptr %i.cnd, ptr %114, align 8, !tbaa !57
  %i.cne = load i64, ptr %i.cnd, align 8          ; 3 uses
  %i.cnf = lshr i64 %i.cne, 40
  %i.cng = trunc nuw nsw i64 %i.cnf to i32
  %i.cnh = and i32 %i.cng, 1048575                ; 3 uses
  %i.cni = icmp samesign ult i32 %i.cnh, 1048574
  br i1 %i.cni, label %bb.acx, label %bb.acy, !prof !45

bb.acx:                                           ; preds = %.lr.ph2994
  %i.cnj = add nuw nsw i32 %i.cnh, 1
  %i.cnk = zext nneg i32 %i.cnj to i64
  %i.cnl = shl nuw nsw i64 %i.cnk, 40
  %i.cnm = and i64 %i.cne, -1152920405095219201
  %i.cnn = or i64 %i.cnl, %i.cnm
  store i64 %i.cnn, ptr %i.cnd, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1563

bb.acy:                                           ; preds = %.lr.ph2994
  %i.cno = icmp eq i32 %i.cnh, 1048574
  br i1 %i.cno, label %bb.acz, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1563, !prof !46

bb.acz:                                           ; preds = %bb.acy
  %i.cnp = or i64 %i.cne, 1152920405095219200
  store i64 %i.cnp, ptr %i.cnd, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cnd)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1563 unwind label %bb.adm

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1563: ; preds = %bb.acy, %bb.acx, %bb.acz
  %i.cnq = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %114)
          to label %bb.ada unwind label %bb.adn

bb.ada:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1563
  br i1 %i.cnq, label %bb.adr, label %bb.adb

bb.adb:                                           ; preds = %bb.ada
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #23
  %i.cnr = load ptr, ptr %114, align 8, !tbaa !57
  store ptr %i.cnr, ptr %116, align 8, !tbaa !60
  invoke void @_ZN4cvc58internal6theory24TheoryEngineModelBuilder9normalizeEPNS1_11TheoryModelENS0_12NodeTemplateILb0EEEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %115, ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 %116, i1 noundef zeroext true)
          to label %bb.adc unwind label %bb.ado

bb.adc:                                           ; preds = %bb.adb
  %i.cns = load ptr, ptr %114, align 8, !tbaa !57 ; 4 uses
  %i.cnt = load ptr, ptr %115, align 8, !tbaa !57
  %.not.i1564 = icmp eq ptr %i.cns, %i.cnt
  br i1 %.not.i1564, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit1569, label %bb.add, !prof !46

bb.add:                                           ; preds = %bb.adc
  %i.cnu = load i64, ptr %i.cns, align 8          ; 3 uses
  %i.cnv = and i64 %i.cnu, 1152920405095219200
  %.not.i.i1565 = icmp eq i64 %i.cnv, 1152920405095219200
  br i1 %.not.i.i1565, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i1566, label %bb.ade, !prof !46

bb.ade:                                           ; preds = %bb.add
  %i.cnw = add i64 %i.cnu, 1152920405095219200
  %i.cnx = and i64 %i.cnw, 1152920405095219200    ; 2 uses
  %i.cny = and i64 %i.cnu, -1152920405095219201
  %i.cnz = or disjoint i64 %i.cnx, %i.cny
  store i64 %i.cnz, ptr %i.cns, align 8
  %i.coa = icmp eq i64 %i.cnx, 0
  br i1 %i.coa, label %bb.adf, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i1566, !prof !46

bb.adf:                                           ; preds = %bb.ade
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cns)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i1566 unwind label %bb.adp

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i1566: ; preds = %bb.adf, %bb.ade, %bb.add
  %i.cob = load ptr, ptr %115, align 8, !tbaa !57 ; 5 uses
  store ptr %i.cob, ptr %114, align 8, !tbaa !57
  %i.coc = load i64, ptr %i.cob, align 8          ; 3 uses
  %i.cod = lshr i64 %i.coc, 40
end_hunk_4
