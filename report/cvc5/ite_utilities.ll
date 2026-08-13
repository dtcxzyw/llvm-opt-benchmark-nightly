inline.NumInlined: 5340
inline.NumDeleted: 1807
begin_hunk_0_@_ZN4cvc58internal13preprocessing4util22ContainsTermITEVisitorD2Ev:bb.a
; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal13preprocessing4util22ContainsTermITEVisitor15containsTermITEENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef align 8 captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %3 = alloca %"class.cvc5::internal::NodeTemplate.375", align 8 ; 3 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.375", align 8 ; 3 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.375", align 8 ; 2 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !43     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 1023
  %i.e = icmp eq i64 %i.d, 20
  br i1 %i.e, label %bb.b, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 20), !noalias !350
  %i.g = icmp eq i32 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = zext i1 %i.g to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93, !noalias !350 ; 3 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !43    ; 2 uses
  %.not.i = icmp eq ptr %.pre, %i.k
  br i1 %.not.i, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit, label %bb.c, !prof !353

bb.c:                                             ; preds = %bb.b
  store ptr %i.k, ptr %1, align 8, !tbaa !43
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.l = phi ptr [ %.pre, %bb.b ], [ %i.k, %bb.c ], [ %i.a, %bb.a ]
  store ptr %i.l, ptr %3, align 8, !tbaa !43
  %i.m = call noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb0EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br i1 %i.m, label %_ZNSt6vectorIN4cvc58internal13preprocessing4util3ite16CTIVStackElementESaIS5_EED2Ev.exit, label %_ZN4cvc58internal13preprocessing4util3iteL27triviallyContainsNoTermITEsENS0_12NodeTemplateILb0EEE.exit

_ZN4cvc58internal13preprocessing4util3iteL27triviallyContainsNoTermITEsENS0_12NodeTemplateILb0EEE.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit
  %i.n = load ptr, ptr %3, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 1023
  %i.s = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.r)
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZNSt6vectorIN4cvc58internal13preprocessing4util3ite16CTIVStackElementESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4cvc58internal13preprocessing4util3iteL27triviallyContainsNoTermITEsENS0_12NodeTemplateILb0EEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.u = load ptr, ptr %1, align 8, !tbaa !43     ; 5 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !75
  %i.v = load i64, ptr %i.u, align 8              ; 3 uses
  %i.w = lshr i64 %i.v, 40
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = and i32 %i.x, 1048575                    ; 3 uses
  %i.z = icmp samesign ult i32 %i.y, 1048574
  br i1 %i.z, label %bb.e, label %bb.f, !prof !76

bb.e:                                             ; preds = %bb.d
  %i.aa = add nuw nsw i32 %i.y, 1
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 40
  %i.ad = and i64 %i.v, -1152920405095219201
  %i.ae = or i64 %i.ac, %i.ad
  store i64 %i.ae, ptr %i.u, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.f:                                             ; preds = %bb.d
  %i.af = icmp eq i32 %i.y, 1048574
  br i1 %i.af, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !77

bb.g:                                             ; preds = %bb.f
  %i.ag = or i64 %i.v, 1152920405095219200
  store i64 %i.ag, ptr %i.u, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !354
  %.not.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.not.i.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %4, align 8               ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.sroa.06.0.in.i.i = phi ptr [ %i.aj, %bb.h ], [ %.sroa.06.0.i.i, %bb.j ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !81 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEE4findERS9_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !75
  %i.an = icmp eq ptr %i.ak, %i.am
  br i1 %i.an, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEE4findERS9_.exit, label %bb.i, !llvm.loop !355

bb.k:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.ao = invoke noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc44 unwind label %bb.s   ; 3 uses

.noexc44:                                         ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !20 ; 2 uses
  %i.ar = urem i64 %i.ao, %i.aq                   ; 2 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !10
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !85 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  %.pre325 = load ptr, ptr %4, align 8            ; 7 uses
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEE4findERS9_.exit, label %bb.l

bb.l:                                             ; preds = %.noexc44
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !81 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !86
  %i.az = icmp eq i64 %i.ao, %i.ay
  %i.ba = load ptr, ptr %i.aw, align 8
  %i.bb = icmp eq ptr %.pre325, %i.ba
  %i.bc = select i1 %i.az, i1 %i.bb, i1 false
  br i1 %i.bc, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEE4findERS9_.exit, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.be = icmp eq i64 %i.ao, %i.bk
  %i.bf = load ptr, ptr %i.bd, align 8
  %i.bg = icmp eq ptr %.pre325, %i.bf
  %i.bh = select i1 %i.be, i1 %i.bg, i1 false
  br i1 %i.bh, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEE4findERS9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !356

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %.020.i.i.i.i = phi ptr [ %i.bi, %bb.m ], [ %i.av, %bb.l ]
  %i.bi = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !81 ; 5 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEE4findERS9_.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !86 ; 2 uses
  %i.bl = urem i64 %i.bk, %i.aq
  %.not19.i.i.i.i = icmp eq i64 %i.bl, %i.ar
  br i1 %.not19.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !356

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.n
  br label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEE4findERS9_.exit, !llvm.loop !356

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEE4findERS9_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.m, %bb.j, %bb.i, %..loopexit_crit_edge21.i.i.i.i, %bb.l, %.noexc44
  %i.bm = phi ptr [ %.pre325, %..loopexit_crit_edge21.i.i.i.i ], [ %i.ak, %bb.j ], [ %.pre325, %bb.l ], [ %.pre325, %.noexc44 ], [ %i.ak, %bb.i ], [ %.pre325, %bb.m ], [ %.pre325, %.lr.ph.i.i.i.i ] ; 3 uses
  %.sroa.06.1.i.i = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i ], [ %.sroa.06.0.i.i, %bb.j ], [ %i.av, %bb.l ], [ null, %.noexc44 ], [ null, %bb.i ], [ null, %.lr.ph.i.i.i.i ], [ %i.bi, %bb.m ] ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8            ; 3 uses
  %i.bo = and i64 %i.bn, 1152920405095219200
  %.not.i.i45 = icmp eq i64 %i.bo, 1152920405095219200
  br i1 %.not.i.i45, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.o, !prof !77

bb.o:                                             ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEE4findERS9_.exit
  %i.bp = add i64 %i.bn, 1152920405095219200
  %i.bq = and i64 %i.bp, 1152920405095219200      ; 2 uses
  %i.br = and i64 %i.bn, -1152920405095219201
  %i.bs = or disjoint i64 %i.bq, %i.br
  store i64 %i.bs, ptr %i.bm, align 8
  %i.bt = icmp eq i64 %i.bq, 0
  br i1 %i.bt, label %bb.p, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !77

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #29
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEE4findERS9_.exit, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.not177 = icmp eq ptr %.sroa.06.1.i.i, null
  br i1 %.not177, label %_ZNKSt6vectorIN4cvc58internal13preprocessing4util3ite16CTIVStackElementESaIS5_EE12_M_check_lenEmPKc.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !357, !range !89, !noundef !41
  %i.by = trunc nuw i8 %i.bx to i1
  br label %_ZNSt6vectorIN4cvc58internal13preprocessing4util3ite16CTIVStackElementESaIS5_EED2Ev.exit

bb.s:                                             ; preds = %bb.k
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZNSt6vectorIN4cvc58internal13preprocessing4util3ite16CTIVStackElementESaIS5_EED2Ev.exit92

_ZNKSt6vectorIN4cvc58internal13preprocessing4util3ite16CTIVStackElementESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.ca = load ptr, ptr %1, align 8, !tbaa !43
  %i.cb = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26 ; 4 uses
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 0, ptr %i.cc, align 8, !tbaa !359
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.outer.outer

.outer.outer:                                     ; preds = %.outer.outer.backedge, %_ZNKSt6vectorIN4cvc58internal13preprocessing4util3ite16CTIVStackElementESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.sroa.0141.0262.ph.ph = phi ptr [ %i.cb, %_ZNKSt6vectorIN4cvc58internal13preprocessing4util3ite16CTIVStackElementESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.0141.8, %.outer.outer.backedge ] ; 15 uses
  %.sroa.12.0261.ph.ph = phi ptr [ %i.cd, %_ZNKSt6vectorIN4cvc58internal13preprocessing4util3ite16CTIVStackElementESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.12.5, %.outer.outer.backedge ]
  %.sroa.28.0260.ph.ph = phi ptr [ %i.cd, %_ZNKSt6vectorIN4cvc58internal13preprocessing4util3ite16CTIVStackElementESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.28.8, %.outer.outer.backedge ] ; 10 uses
  br label %.outer

.outer.loopexit:                                  ; preds = %_ZN4cvc58internal13preprocessing4util3iteL27triviallyContainsNoTermITEsENS0_12NodeTemplateILb0EEE.exit62, %.noexc60
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %.outer.loopexit
  %.sroa.12.0261.ph = phi ptr [ %.sroa.12.0261.ph351, %.outer.loopexit ], [ %.sroa.12.0261.ph.ph, %.outer.outer ]
  br label %.outer350

.critedge42.preheader:                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit.i, %.split
  %.sroa.0141.4346 = phi ptr [ %.sroa.0141.0262.ph.ph, %.split ], [ %.sroa.0141.8, %_ZN4cvc58internal8TypeNodeD2Ev.exit.i ] ; 5 uses
  %.sroa.12.2345 = phi ptr [ %.sroa.12.0261.ph351, %.split ], [ %.sroa.12.5, %_ZN4cvc58internal8TypeNodeD2Ev.exit.i ] ; 2 uses
  %.sroa.28.4344 = phi ptr [ %.sroa.28.0260.ph.ph, %.split ], [ %.sroa.28.8, %_ZN4cvc58internal8TypeNodeD2Ev.exit.i ] ; 3 uses
  %i.cg = icmp eq ptr %.sroa.0141.4346, %.sroa.12.2345
  br i1 %i.cg, label %.critedge, label %.lr.ph

10:                                               ; preds = %.outer350, %.split
  br i1 %.not341.not.not.not, label %bb.t, label %.critedge

bb.t:                                             ; preds = %10
  %i.ch = load ptr, ptr %11, align 8, !tbaa !43   ; 7 uses
  %i.ci = load i32, ptr %12, align 8, !tbaa !359
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = and i32 %i.cl, 1023                     ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 1023
  %i.co = select i1 %i.cn, i32 -1, i32 %i.cm
  %i.cp = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.co)
          to label %bb.u unwind label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.cq = icmp eq i32 %i.cp, 2
  %i.cr = load i64, ptr %i.cj, align 8            ; 2 uses
  %i.cs = lshr i64 %i.cr, 32
  %i.ct = and i64 %i.cs, 67108863
  %i.cu = sext i1 %i.cq to i64
  %i.cv = add nsw i64 %i.ct, %i.cu
  %i.cw = and i64 %i.cv, 4294967295
  %i.cx = zext i32 %i.ci to i64
  %.not = icmp samesign ugt i64 %i.cw, %i.cx
  br i1 %.not, label %bb.ag, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cy = getelementptr inbounds i8, ptr %.sroa.12.0261.ph351, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %i.ch, ptr %5, align 8, !tbaa !75
  %i.cz = load i64, ptr %i.ch, align 8            ; 3 uses
  %i.da = lshr i64 %i.cz, 40
  %i.db = trunc nuw nsw i64 %i.da to i32
  %i.dc = and i32 %i.db, 1048575                  ; 3 uses
  %i.dd = icmp samesign ult i32 %i.dc, 1048574
  br i1 %i.dd, label %bb.w, label %bb.x, !prof !76

bb.w:                                             ; preds = %bb.v
  %i.de = add nuw nsw i32 %i.dc, 1
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = shl nuw nsw i64 %i.df, 40
  %i.dh = and i64 %i.cz, -1152920405095219201
  %i.di = or i64 %i.dg, %i.dh
  store i64 %i.di, ptr %i.ch, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit50

bb.x:                                             ; preds = %bb.v
  %i.dj = icmp eq i32 %i.dc, 1048574
  br i1 %i.dj, label %bb.y, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit50, !prof !77

bb.y:                                             ; preds = %bb.x
  %i.dk = or i64 %i.cz, 1152920405095219200
  store i64 %i.dk, ptr %i.ch, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit50 unwind label %bb.ad

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit50: ; preds = %bb.x, %bb.w, %bb.y
  %i.dl = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8__detail9_Map_baseIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS4_bESaIS7_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS4_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEEixEOS3_.exit unwind label %bb.ae

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEEixEOS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit50
  store i8 0, ptr %i.dl, align 1, !tbaa !361
  %i.dm = load ptr, ptr %5, align 8, !tbaa !75    ; 3 uses
  %i.dn = load i64, ptr %i.dm, align 8            ; 3 uses
  %i.do = and i64 %i.dn, 1152920405095219200
  %.not.i.i52 = icmp eq i64 %i.do, 1152920405095219200
  br i1 %.not.i.i52, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit53, label %bb.z, !prof !77

bb.z:                                             ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEEixEOS3_.exit
  %i.dp = add i64 %i.dn, 1152920405095219200
  %i.dq = and i64 %i.dp, 1152920405095219200      ; 2 uses
  %i.dr = and i64 %i.dn, -1152920405095219201
  %i.ds = or disjoint i64 %i.dq, %i.dr
  store i64 %i.ds, ptr %i.dm, align 8
  %i.dt = icmp eq i64 %i.dq, 0
  br i1 %i.dt, label %bb.aa, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit53, !prof !77

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dm)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit53 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #29
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit53: ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEEixEOS3_.exit, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %.outer350, !llvm.loop !362

.outer350:                                        ; preds = %.outer, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit53
  %.sroa.12.0261.ph351 = phi ptr [ %.sroa.12.0261.ph, %.outer ], [ %i.cy, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit53 ] ; 14 uses
  %.not341.not.not.not = icmp ne ptr %.sroa.0141.0262.ph.ph, %.sroa.12.0261.ph351 ; 2 uses
  %11 = getelementptr inbounds i8, ptr %.sroa.12.0261.ph351, i64 -16
  %12 = getelementptr inbounds i8, ptr %.sroa.12.0261.ph351, i64 -8 ; 4 uses
  br label %10

bb.ac:                                            ; preds = %bb.t
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %bb.y
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit50
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #27
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn34 = phi { ptr, i32 } [ %i.dy, %bb.ae ], [ %i.dx, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %.body

bb.ag:                                            ; preds = %bb.u
  %i.dz = load i32, ptr %12, align 8, !tbaa !359
  %i.ea = trunc i64 %i.cr to i32
  %i.eb = and i32 %i.ea, 1023                     ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 1023
  %i.ed = select i1 %i.ec, i32 -1, i32 %i.eb
  %i.ee = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ed)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.ef = icmp eq i32 %i.ee, 2
  %i.eg = zext i1 %i.ef to i32
  %spec.select.i.i = add nsw i32 %i.dz, %i.eg
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.ei = sext i32 %spec.select.i.i to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !93, !noalias !363 ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i64, ptr %i.el, align 8
  %i.en = and i64 %i.em, 1023
  %i.eo = icmp eq i64 %i.en, 20
  br i1 %i.eo, label %bb.ai, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit59

bb.ai:                                            ; preds = %bb.ah
  %i.ep = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 20)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.eq = icmp eq i32 %i.ep, 2
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.es = zext i1 %i.eq to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !93, !noalias !366 ; 2 uses
  %.not.i58 = icmp eq ptr %i.ek, %i.eu
  %spec.select = select i1 %.not.i58, ptr %i.ek, ptr %i.eu, !prof !353
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit59

_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit59: ; preds = %bb.aj, %bb.ah
  %.sroa.0124.0 = phi ptr [ %spec.select, %bb.aj ], [ %i.ek, %bb.ah ] ; 10 uses
  %i.ev = load i32, ptr %12, align 8, !tbaa !359
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr %12, align 8, !tbaa !359
  store ptr %.sroa.0124.0, ptr %6, align 8, !tbaa !43
  %i.ex = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb0EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc60 unwind label %bb.an

.noexc60:                                         ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit59
  br i1 %i.ex, label %.outer.loopexit, label %bb.ak, !llvm.loop !362

bb.ak:                                            ; preds = %.noexc60
  %i.ey = load ptr, ptr %6, align 8, !tbaa !43
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load i64, ptr %i.ez, align 8
  %i.fb = trunc i64 %i.fa to i32
  %i.fc = and i32 %i.fb, 1023
  %i.fd = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.fc)
          to label %_ZN4cvc58internal13preprocessing4util3iteL27triviallyContainsNoTermITEsENS0_12NodeTemplateILb0EEE.exit62 unwind label %bb.an

_ZN4cvc58internal13preprocessing4util3iteL27triviallyContainsNoTermITEsENS0_12NodeTemplateILb0EEE.exit62: ; preds = %bb.ak
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %.outer.loopexit, label %bb.ao, !llvm.loop !362

bb.al:                                            ; preds = %bb.ag
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %bb.ai
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.an:                                            ; preds = %bb.ak, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit59
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ao:                                            ; preds = %_ZN4cvc58internal13preprocessing4util3iteL27triviallyContainsNoTermITEsENS0_12NodeTemplateILb0EEE.exit62
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store ptr %.sroa.0124.0, ptr %7, align 8, !tbaa !75
  %i.fi = load i64, ptr %.sroa.0124.0, align 8    ; 3 uses
  %i.fj = lshr i64 %i.fi, 40
  %i.fk = trunc nuw nsw i64 %i.fj to i32
  %i.fl = and i32 %i.fk, 1048575                  ; 3 uses
  %i.fm = icmp samesign ult i32 %i.fl, 1048574
  br i1 %i.fm, label %bb.ap, label %bb.aq, !prof !76

bb.ap:                                            ; preds = %bb.ao
  %i.fn = add nuw nsw i32 %i.fl, 1
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = shl nuw nsw i64 %i.fo, 40
  %i.fq = and i64 %i.fi, -1152920405095219201
  %i.fr = or i64 %i.fp, %i.fq
  store i64 %i.fr, ptr %.sroa.0124.0, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit64

bb.aq:                                            ; preds = %bb.ao
  %i.fs = icmp eq i32 %i.fl, 1048574
  br i1 %i.fs, label %bb.ar, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit64, !prof !77

bb.ar:                                            ; preds = %bb.aq
  %i.ft = or i64 %i.fi, 1152920405095219200
  store i64 %i.ft, ptr %.sroa.0124.0, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0124.0)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit64 unwind label %bb.bc

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit64: ; preds = %bb.aq, %bb.ap, %bb.ar
  %i.fu = load i64, ptr %i.ah, align 8, !tbaa !354
  %.not.not.i.i65 = icmp eq i64 %i.fu, 0
  br i1 %.not.not.i.i65, label %bb.as, label %bb.av

bb.as:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit64
  %i.fv = load ptr, ptr %7, align 8               ; 3 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.au, %bb.as
  %.sroa.06.0.in.i.i73 = phi ptr [ %i.cf, %bb.as ], [ %.sroa.06.0.i.i74, %bb.au ]
  %.sroa.06.0.i.i74 = load ptr, ptr %.sroa.06.0.in.i.i73, align 8, !tbaa !81 ; 4 uses
  %.not.i.i75 = icmp eq ptr %.sroa.06.0.i.i74, null
  br i1 %.not.i.i75, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEE4findERS9_.exit77, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i74, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !75
  %i.fy = icmp eq ptr %i.fv, %i.fx
  br i1 %i.fy, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEE4findERS9_.exit77, label %bb.at, !llvm.loop !355

bb.av:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit64
  %i.fz = invoke noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc76 unwind label %bb.bd  ; 3 uses

.noexc76:                                         ; preds = %bb.av
  %i.ga = load i64, ptr %i.ce, align 8, !tbaa !20 ; 2 uses
  %i.gb = urem i64 %i.fz, %i.ga                   ; 2 uses
  %i.gc = load ptr, ptr %0, align 8, !tbaa !10
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.gb
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !85 ; 2 uses
  %.not.i.i.i.i66 = icmp eq ptr %i.ge, null
  %.pre326 = load ptr, ptr %7, align 8            ; 7 uses
  br i1 %.not.i.i.i.i66, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEE4findERS9_.exit77, label %bb.aw

bb.aw:                                            ; preds = %.noexc76
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !81 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !86
  %i.gj = icmp eq i64 %i.fz, %i.gi
  %i.gk = load ptr, ptr %i.gg, align 8
  %i.gl = icmp eq ptr %.pre326, %i.gk
  %i.gm = select i1 %i.gj, i1 %i.gl, i1 false
  br i1 %i.gm, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEE4findERS9_.exit77, label %.lr.ph.i.i.i.i67

bb.ax:                                            ; preds = %bb.ay
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.go = icmp eq i64 %i.fz, %i.gu
  %i.gp = load ptr, ptr %i.gn, align 8
  %i.gq = icmp eq ptr %.pre326, %i.gp
  %i.gr = select i1 %i.go, i1 %i.gq, i1 false
  br i1 %i.gr, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEE4findERS9_.exit77, label %.lr.ph.i.i.i.i67, !llvm.loop !356

.lr.ph.i.i.i.i67:                                 ; preds = %bb.aw, %bb.ax
  %.020.i.i.i.i68 = phi ptr [ %i.gs, %bb.ax ], [ %i.gf, %bb.aw ]
  %i.gs = load ptr, ptr %.020.i.i.i.i68, align 8, !tbaa !81 ; 5 uses
  %.not18.i.i.i.i69 = icmp eq ptr %i.gs, null
  br i1 %.not18.i.i.i.i69, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEE4findERS9_.exit77, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i67
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !86 ; 2 uses
  %i.gv = urem i64 %i.gu, %i.ga
  %.not19.i.i.i.i70 = icmp eq i64 %i.gv, %i.gb
  br i1 %.not19.i.i.i.i70, label %bb.ax, label %..loopexit_crit_edge21.i.i.i.i71, !llvm.loop !356

..loopexit_crit_edge21.i.i.i.i71:                 ; preds = %bb.ay
  br label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEE4findERS9_.exit77, !llvm.loop !356

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEE4findERS9_.exit77: ; preds = %.lr.ph.i.i.i.i67, %bb.ax, %bb.au, %bb.at, %..loopexit_crit_edge21.i.i.i.i71, %bb.aw, %.noexc76
  %i.gw = phi ptr [ %.pre326, %..loopexit_crit_edge21.i.i.i.i71 ], [ %i.fv, %bb.au ], [ %.pre326, %bb.aw ], [ %.pre326, %.noexc76 ], [ %i.fv, %bb.at ], [ %.pre326, %bb.ax ], [ %.pre326, %.lr.ph.i.i.i.i67 ] ; 3 uses
  %.sroa.06.1.i.i72 = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i71 ], [ %.sroa.06.0.i.i74, %bb.au ], [ %i.gf, %bb.aw ], [ null, %.noexc76 ], [ null, %bb.at ], [ null, %.lr.ph.i.i.i.i67 ], [ %i.gs, %bb.ax ] ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8            ; 3 uses
  %i.gy = and i64 %i.gx, 1152920405095219200
  %.not.i.i78 = icmp eq i64 %i.gy, 1152920405095219200
  br i1 %.not.i.i78, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit79, label %bb.az, !prof !77

bb.az:                                            ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEE4findERS9_.exit77
  %i.gz = add i64 %i.gx, 1152920405095219200
  %i.ha = and i64 %i.gz, 1152920405095219200      ; 2 uses
  %i.hb = and i64 %i.gx, -1152920405095219201
  %i.hc = or disjoint i64 %i.ha, %i.hb
  store i64 %i.hc, ptr %i.gw, align 8
  %i.hd = icmp eq i64 %i.ha, 0
  br i1 %i.hd, label %bb.ba, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit79, !prof !77

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit79 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.he = landingpad { ptr, i32 }
          catch ptr null
  %i.hf = extractvalue { ptr, i32 } %i.he, 0
  call void @__clang_call_terminate(ptr %i.hf) #29
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit79: ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEE4findERS9_.exit77, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %.not178 = icmp eq ptr %.sroa.06.1.i.i72, null
  br i1 %.not178, label %bb.bf, label %.split

.split:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit79
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i72, i64 16
  %i.hh = load i8, ptr %i.hg, align 8, !tbaa !357, !range !89, !noundef !41
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %.critedge42.preheader, label %10, !llvm.loop !362

bb.bc:                                            ; preds = %bb.ar
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.av
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #27
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn27 = phi { ptr, i32 } [ %i.hk, %bb.bd ], [ %i.hj, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %.body

bb.bf:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit79
  %.not.i.i80 = icmp eq ptr %.sroa.12.0261.ph351, %.sroa.28.0260.ph.ph
  br i1 %.not.i.i80, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store ptr %.sroa.0124.0, ptr %.sroa.12.0261.ph351, align 8, !tbaa !43
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.12.0261.ph351, i64 8
  store i32 0, ptr %i.hl, align 8, !tbaa !359
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.12.0261.ph351, i64 16
  br label %_ZNSt6vectorIN4cvc58internal13preprocessing4util3ite16CTIVStackElementESaIS5_EE9push_backEOS5_.exit82

bb.bh:                                            ; preds = %bb.bf
  %i.hn = ptrtoint ptr %.sroa.12.0261.ph351 to i64
  %i.ho = ptrtoint ptr %.sroa.0141.0262.ph.ph to i64
  %i.hp = sub i64 %i.hn, %i.ho                    ; 5 uses
  %i.hq = icmp eq i64 %i.hp, 9223372036854775792
  br i1 %i.hq, label %bb.bi, label %_ZNKSt6vectorIN4cvc58internal13preprocessing4util3ite16CTIVStackElementESaIS5_EE12_M_check_lenEmPKc.exit.i96

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #30
          to label %.noexc114 unwind label %.loopexit.split-lp

.noexc114:                                        ; preds = %bb.bi
  unreachable

_ZNKSt6vectorIN4cvc58internal13preprocessing4util3ite16CTIVStackElementESaIS5_EE12_M_check_lenEmPKc.exit.i96: ; preds = %bb.bh
  %i.hr = ashr exact i64 %i.hp, 4
  %i.hs = ashr exact i64 %i.hp, 3                 ; 2 uses
  %i.ht = icmp ult i64 %i.hs, %i.hr
  %i.hu = call i64 @llvm.umin.i64(i64 %i.hs, i64 576460752303423487)
  %i.hv = select i1 %i.ht, i64 576460752303423487, i64 %i.hu ; 2 uses
  %i.hw = shl nuw nsw i64 %i.hv, 4
  %i.hx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hw) #26
          to label %.noexc115 unwind label %.loopexit ; 4 uses

.noexc115:                                        ; preds = %_ZNKSt6vectorIN4cvc58internal13preprocessing4util3ite16CTIVStackElementESaIS5_EE12_M_check_lenEmPKc.exit.i96
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hp ; 2 uses
  store ptr %.sroa.0124.0, ptr %i.hy, align 8, !tbaa !43
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store i32 0, ptr %i.hz, align 8, !tbaa !359
  br label %.lr.ph.i.i.i.i.i.i100

.lr.ph.i.i.i.i.i.i100:                            ; preds = %.noexc115, %.lr.ph.i.i.i.i.i.i100
  %.015.i.i.i.i.i.i101 = phi ptr [ %i.if, %.lr.ph.i.i.i.i.i.i100 ], [ %i.hx, %.noexc115 ] ; 4 uses
  %.01214.i.i.i.i.i.i102 = phi ptr [ %i.ie, %.lr.ph.i.i.i.i.i.i100 ], [ %.sroa.0141.0262.ph.ph, %.noexc115 ] ; 3 uses
  %i.ia = load ptr, ptr %.01214.i.i.i.i.i.i102, align 8, !tbaa !43
  store ptr %i.ia, ptr %.015.i.i.i.i.i.i101, align 8, !tbaa !43
  %i.ib = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i101, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i102, i64 8
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !359
  store i32 %i.id, ptr %i.ib, align 8, !tbaa !359
  %i.ie = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i102, i64 16 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i101, i64 16
  %.not.i.i.i.i.i.i103 = icmp eq ptr %i.ie, %.sroa.12.0261.ph351
  br i1 %.not.i.i.i.i.i.i103, label %.noexc81, label %.lr.ph.i.i.i.i.i.i100, !llvm.loop !369

.noexc81:                                         ; preds = %.lr.ph.i.i.i.i.i.i100
  %i.ig = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i101, i64 32
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0141.0262.ph.ph, i64 noundef %i.hp) #28
  %i.ih = getelementptr inbounds nuw [16 x i8], ptr %i.hx, i64 %i.hv
  br label %_ZNSt6vectorIN4cvc58internal13preprocessing4util3ite16CTIVStackElementESaIS5_EE9push_backEOS5_.exit82

_ZNSt6vectorIN4cvc58internal13preprocessing4util3ite16CTIVStackElementESaIS5_EE9push_backEOS5_.exit82: ; preds = %.noexc81, %bb.bg
  %.sroa.28.8 = phi ptr [ %i.ih, %.noexc81 ], [ %.sroa.28.0260.ph.ph, %bb.bg ] ; 4 uses
  %.sroa.12.5 = phi ptr [ %i.ig, %.noexc81 ], [ %i.hm, %bb.bg ] ; 2 uses
  %.sroa.0141.8 = phi ptr [ %i.hx, %.noexc81 ], [ %.sroa.0141.0262.ph.ph, %bb.bg ] ; 4 uses
  store ptr %.sroa.0124.0, ptr %8, align 8, !tbaa !43
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0124.0, i64 8
  %i.ij = load i64, ptr %i.ii, align 8
  %i.ik = and i64 %i.ij, 1023
  %i.il = icmp eq i64 %i.ik, 25
  br i1 %i.il, label %bb.bj, label %.outer.outer.backedge

bb.bj:                                            ; preds = %_ZNSt6vectorIN4cvc58internal13preprocessing4util3ite16CTIVStackElementESaIS5_EE9push_backEOS5_.exit82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNK4cvc58internal12NodeTemplateILb0EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %8, i1 noundef zeroext false)
          to label %.noexc83 unwind label %bb.bp

.noexc83:                                         ; preds = %bb.bj
  %i.im = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode9isBooleanEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %.noexc83
  %i.in = load ptr, ptr %2, align 8, !tbaa !108   ; 3 uses
  %i.io = load i64, ptr %i.in, align 8            ; 3 uses
  %i.ip = and i64 %i.io, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.ip, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZN4cvc58internal8TypeNodeD2Ev.exit.i, label %bb.bl, !prof !77

bb.bl:                                            ; preds = %bb.bk
  %i.iq = add i64 %i.io, 1152920405095219200
  %i.ir = and i64 %i.iq, 1152920405095219200      ; 2 uses
  %i.is = and i64 %i.io, -1152920405095219201
  %i.it = or disjoint i64 %i.ir, %i.is
  store i64 %i.it, ptr %i.in, align 8
  %i.iu = icmp eq i64 %i.ir, 0
  br i1 %i.iu, label %bb.bm, label %_ZN4cvc58internal8TypeNodeD2Ev.exit.i, !prof !77

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.in)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit.i unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iv = landingpad { ptr, i32 }
          catch ptr null
  %i.iw = extractvalue { ptr, i32 } %i.iv, 0
  call void @__clang_call_terminate(ptr %i.iw) #29
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit.i:            ; preds = %bb.bm, %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %i.im, label %.outer.outer.backedge, label %.critedge42.preheader

.outer.outer.backedge:                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit.i, %_ZNSt6vectorIN4cvc58internal13preprocessing4util3ite16CTIVStackElementESaIS5_EE9push_backEOS5_.exit82
  br label %.outer.outer, !llvm.loop !362

bb.bo:                                            ; preds = %.noexc83
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.body

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4cvc58internal13preprocessing4util3ite16CTIVStackElementESaIS5_EE12_M_check_lenEmPKc.exit.i96
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.bi
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bp:                                            ; preds = %bb.bj
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %.critedge42.preheader, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit89
  %.sroa.12.3263 = phi ptr [ %i.iz, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit89 ], [ %.sroa.12.2345, %.critedge42.preheader ]
  %i.iz = getelementptr inbounds i8, ptr %.sroa.12.3263, i64 -16 ; 3 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !43 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr %i.ja, ptr %9, align 8, !tbaa !75
  %i.jb = load i64, ptr %i.ja, align 8            ; 3 uses
  %i.jc = lshr i64 %i.jb, 40
  %i.jd = trunc nuw nsw i64 %i.jc to i32
  %i.je = and i32 %i.jd, 1048575                  ; 3 uses
  %i.jf = icmp samesign ult i32 %i.je, 1048574
  br i1 %i.jf, label %bb.bq, label %bb.br, !prof !76

bb.bq:                                            ; preds = %.lr.ph
  %i.jg = add nuw nsw i32 %i.je, 1
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = shl nuw nsw i64 %i.jh, 40
  %i.jj = and i64 %i.jb, -1152920405095219201
  %i.jk = or i64 %i.ji, %i.jj
  store i64 %i.jk, ptr %i.ja, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit85

bb.br:                                            ; preds = %.lr.ph
  %i.jl = icmp eq i32 %i.je, 1048574
  br i1 %i.jl, label %bb.bs, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit85, !prof !77

bb.bs:                                            ; preds = %bb.br
  %i.jm = or i64 %i.jb, 1152920405095219200
  store i64 %i.jm, ptr %i.ja, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ja)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit85 unwind label %bb.bw

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit85: ; preds = %bb.br, %bb.bq, %bb.bs
  %i.jn = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8__detail9_Map_baseIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS4_bESaIS7_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS4_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEEixEOS3_.exit87 unwind label %bb.bx

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEEixEOS3_.exit87: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit85
  store i8 1, ptr %i.jn, align 1, !tbaa !361
  %i.jo = load ptr, ptr %9, align 8, !tbaa !75    ; 3 uses
  %i.jp = load i64, ptr %i.jo, align 8            ; 3 uses
  %i.jq = and i64 %i.jp, 1152920405095219200
  %.not.i.i88 = icmp eq i64 %i.jq, 1152920405095219200
  br i1 %.not.i.i88, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit89, label %bb.bt, !prof !77

bb.bt:                                            ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEEixEOS3_.exit87
  %i.jr = add i64 %i.jp, 1152920405095219200
  %i.js = and i64 %i.jr, 1152920405095219200      ; 2 uses
  %i.jt = and i64 %i.jp, -1152920405095219201
  %i.ju = or disjoint i64 %i.js, %i.jt
  store i64 %i.ju, ptr %i.jo, align 8
  %i.jv = icmp eq i64 %i.js, 0
  br i1 %i.jv, label %bb.bu, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit89, !prof !77

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jo)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit89 unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jw = landingpad { ptr, i32 }
          catch ptr null
  %i.jx = extractvalue { ptr, i32 } %i.jw, 0
  call void @__clang_call_terminate(ptr %i.jx) #29
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit89: ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEEixEOS3_.exit87, %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.jy = icmp eq ptr %.sroa.0141.4346, %i.iz
  br i1 %i.jy, label %.critedge, label %.lr.ph, !llvm.loop !370

bb.bw:                                            ; preds = %bb.bs
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit85
  %i.ka = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #27
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pn37 = phi { ptr, i32 } [ %i.ka, %bb.bx ], [ %i.jz, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %.body

.critedge:                                        ; preds = %10, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit89, %.critedge42.preheader
  %.sroa.28.0255 = phi ptr [ %.sroa.28.4344, %.critedge42.preheader ], [ %.sroa.28.4344, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit89 ], [ %.sroa.28.0260.ph.ph, %10 ]
  %.sroa.0141.0219 = phi ptr [ %.sroa.0141.4346, %.critedge42.preheader ], [ %.sroa.0141.4346, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit89 ], [ %.sroa.0141.0262.ph.ph, %10 ] ; 2 uses
  %i.kb = ptrtoint ptr %.sroa.28.0255 to i64
  %i.kc = ptrtoint ptr %.sroa.0141.0219 to i64
  %i.kd = sub i64 %i.kb, %i.kc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0141.0219, i64 noundef %i.kd) #28
  br label %_ZNSt6vectorIN4cvc58internal13preprocessing4util3ite16CTIVStackElementESaIS5_EED2Ev.exit

.body:                                            ; preds = %bb.by, %bb.al, %bb.bp, %bb.bo, %bb.be, %bb.an, %bb.am, %bb.af, %bb.ac, %.loopexit.split-lp, %.loopexit
  %.sroa.28.6 = phi ptr [ %.sroa.28.8, %bb.bo ], [ %.sroa.28.4344, %bb.by ], [ %.sroa.28.8, %bb.bp ], [ %.sroa.28.0260.ph.ph, %bb.ac ], [ %.sroa.28.0260.ph.ph, %bb.af ], [ %.sroa.28.0260.ph.ph, %bb.al ], [ %.sroa.28.0260.ph.ph, %bb.am ], [ %.sroa.28.0260.ph.ph, %bb.an ], [ %.sroa.28.0260.ph.ph, %bb.be ], [ %.sroa.12.0261.ph351, %.loopexit ], [ %.sroa.12.0261.ph351, %.loopexit.split-lp ]
  %.sroa.0141.6 = phi ptr [ %.sroa.0141.8, %bb.bo ], [ %.sroa.0141.4346, %bb.by ], [ %.sroa.0141.8, %bb.bp ], [ %.sroa.0141.0262.ph.ph, %bb.ac ], [ %.sroa.0141.0262.ph.ph, %bb.af ], [ %.sroa.0141.0262.ph.ph, %bb.al ], [ %.sroa.0141.0262.ph.ph, %bb.am ], [ %.sroa.0141.0262.ph.ph, %bb.an ], [ %.sroa.0141.0262.ph.ph, %bb.be ], [ %.sroa.0141.0262.ph.ph, %.loopexit ], [ %.sroa.0141.0262.ph.ph, %.loopexit.split-lp ] ; 2 uses
  %.pn37.pn = phi { ptr, i32 } [ %i.ix, %bb.bo ], [ %.pn37, %bb.by ], [ %i.iy, %bb.bp ], [ %i.dw, %bb.ac ], [ %.pn34, %bb.af ], [ %i.ff, %bb.al ], [ %i.fg, %bb.am ], [ %i.fh, %bb.an ], [ %.pn27, %bb.be ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ke = ptrtoint ptr %.sroa.28.6 to i64
  %i.kf = ptrtoint ptr %.sroa.0141.6 to i64
  %i.kg = sub i64 %i.ke, %i.kf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0141.6, i64 noundef %i.kg) #28
  br label %_ZNSt6vectorIN4cvc58internal13preprocessing4util3ite16CTIVStackElementESaIS5_EED2Ev.exit92

_ZNSt6vectorIN4cvc58internal13preprocessing4util3ite16CTIVStackElementESaIS5_EED2Ev.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit, %bb.r, %.critedge, %_ZN4cvc58internal13preprocessing4util3iteL27triviallyContainsNoTermITEsENS0_12NodeTemplateILb0EEE.exit
  %.1 = phi i1 [ %.not341.not.not.not, %.critedge ], [ false, %_ZN4cvc58internal13preprocessing4util3iteL27triviallyContainsNoTermITEsENS0_12NodeTemplateILb0EEE.exit ], [ %i.by, %bb.r ], [ false, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit ]
  ret i1 %.1

_ZNSt6vectorIN4cvc58internal13preprocessing4util3ite16CTIVStackElementESaIS5_EED2Ev.exit92: ; preds = %bb.s, %.body
  %.pn37.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn, %.body ], [ %i.bz, %bb.s ]
  resume { ptr, i32 } %.pn37.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !75     ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, label %bb.b, !prof !77

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, !prof !77

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit unwind label %bb.d

_ZN4cvc58internal4expr9NodeValue3decEv.exit:      ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #29
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4cvc58internal13preprocessing4util3iteL9isTermITEENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 %0) unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 1023
  %i.e = icmp eq i64 %i.d, 25
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @_ZNK4cvc58internal12NodeTemplateILb0EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext false)
  %i.f = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode9isBooleanEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = xor i1 %i.f, true
  %i.h = load ptr, ptr %1, align 8, !tbaa !108    ; 3 uses
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = and i64 %i.i, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.j, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.d, !prof !77

bb.d:                                             ; preds = %bb.c
  %i.k = add i64 %i.i, 1152920405095219200
  %i.l = and i64 %i.k, 1152920405095219200        ; 2 uses
  %i.m = and i64 %i.i, -1152920405095219201
  %i.n = or disjoint i64 %i.l, %i.m
  store i64 %i.n, ptr %i.h, align 8
  %i.o = icmp eq i64 %i.l, 0
  br i1 %i.o, label %bb.e, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !77

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #29
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.r = phi i1 [ %i.g, %_ZN4cvc58internal8TypeNodeD2Ev.exit ], [ false, %bb.a ]
  ret i1 %i.r

bb.g:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4cvc58internal13preprocessing4util18IncomingArcCounterC2Ebb(ptr noundef nonnull align 8 dereferenceable(58) initializes((32, 40)) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #6 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = zext i1 %2 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.d, ptr %0, align 8, !tbaa !333
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.e, align 8, !tbaa !334
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.a, ptr %i.i, align 8, !tbaa !371
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %i.b, ptr %i.j, align 1, !tbaa !372
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4cvc58internal13preprocessing4util18IncomingArcCounterD2Ev(ptr noundef nonnull align 8 dead_on_return(58) dereferenceable(58) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_jESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal13preprocessing4util18IncomingArcCounter19computeReachabilityERKSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %3 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !97     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97   ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #30
  unreachable

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit58, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EEC2IN9__gnu_cxx17__normal_iteratorIPKNS2_ILb1EEES_IS9_SaIS9_EEEEvEET_SF_RKS4_.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EEC2IN9__gnu_cxx17__normal_iteratorIPKNS2_ILb1EEES_IS9_SaIS9_EEEEvEET_SF_RKS4_.exit: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f ; 2 uses
  %i.j = and i64 %i.f, 9223372036854775800        ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr align 8 %i.a, i64 %i.j, i1 false), !tbaa !93
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %._crit_edge.thread220, label %.lr.ph150

.lr.ph150:                                        ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EEC2IN9__gnu_cxx17__normal_iteratorIPKNS2_ILb1EEES_IS9_SaIS9_EEEEvEET_SF_RKS4_.exit
  %scevgep.i.i = getelementptr i8, ptr %i.h, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph150, %.loopexit
  %.sroa.074.0149 = phi ptr [ %i.h, %.lr.ph150 ], [ %.sroa.074.3, %.loopexit ] ; 9 uses
  %.sroa.11.0148 = phi ptr [ %scevgep.i.i, %.lr.ph150 ], [ %.sroa.11.2, %.loopexit ]
  %.sroa.19.0147 = phi ptr [ %i.i, %.lr.ph150 ], [ %.sroa.19.3, %.loopexit ] ; 9 uses
  %i.q = getelementptr inbounds i8, ptr %.sroa.11.0148, i64 -8 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43   ; 23 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.u, 1023
  %i.w = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.v)
          to label %_ZNK4cvc58internal12NodeTemplateILb0EE11getMetaKindEv.exit unwind label %bb.c

_ZNK4cvc58internal12NodeTemplateILb0EE11getMetaKindEv.exit: ; preds = %bb.b
  switch i32 %i.w, label %.thread [
    i32 3, label %bb.e
    i32 0, label %bb.d
  ]
end_hunk_0
