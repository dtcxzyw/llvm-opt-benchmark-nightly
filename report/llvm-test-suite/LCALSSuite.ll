inline.NumInlined: 1878
inline.NumDeleted: 548
begin_hunk_0_@_Z22defineLoopSuiteRunInfoRKSt6vectorI13LoopVariantIDSaIS0_EEPbdd:bb.a
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 %i.amu
  store i8 0, ptr %i.amx, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.amy = load ptr, ptr %i.la, align 16, !tbaa !74
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 32
  store ptr %i.amz, ptr %i.la, align 16, !tbaa !74
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.bq:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.lc, ptr %i.amk, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit1369

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.bq
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.013531429, i32 %.01354) ; 2 uses
  %i.ana = load i32, ptr %i.ii, align 16, !tbaa !96
  %.not1438 = icmp eq i32 %i.ana, 0
  br i1 %.not1438, label %.preheader, label %.lr.ph1425

.lr.ph1425:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.anb = load ptr, ptr %i.ip, align 8, !tbaa !85
  %i.anc = load double, ptr %i.l, align 16, !tbaa !11
  %i.and = load ptr, ptr %i.ld, align 8, !tbaa !131
  %i.ane = load ptr, ptr %i.lf, align 8
  br label %bb.br

.preheader:                                       ; preds = %bb.bt, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.anf = load ptr, ptr %i.cd, align 8, !tbaa !74
  %i.ang = load ptr, ptr %4, align 8, !tbaa !75   ; 2 uses
  %.not1439 = icmp eq ptr %i.anf, %i.ang
  br i1 %.not1439, label %._crit_edge1428, label %.lr.ph1427

bb.br:                                            ; preds = %.lr.ph1425, %bb.bt
  %indvars.iv = phi i64 [ 0, %.lr.ph1425 ], [ %indvars.iv.next, %bb.bt ] ; 5 uses
  %i.anh = getelementptr inbounds nuw [4 x i8], ptr %i.anb, i64 %indvars.iv ; 2 uses
  %i.ani = load i32, ptr %i.anh, align 4, !tbaa !4
  %i.anj = sitofp i32 %i.ani to double
  %i.ank = fmul double %i.anc, %i.anj
  %i.anl = fdiv double %i.ank, %3
  %i.anm = fptosi double %i.anl to i32            ; 2 uses
  store i32 %i.anm, ptr %i.anh, align 4, !tbaa !4
  %i.ann = lshr i64 %indvars.iv, 6
  %i.ano = getelementptr inbounds nuw [8 x i8], ptr %i.and, i64 %i.ann
  %i.anp = and i64 %indvars.iv, 63
  %i.anq = shl nuw i64 1, %i.anp
  %i.anr = load i64, ptr %i.ano, align 8, !tbaa !100
  %i.ans = and i64 %i.anr, %i.anq
  %.not1359 = icmp eq i64 %i.ans, 0
  br i1 %.not1359, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ant = load i32, ptr %i.le, align 8, !tbaa !132
  %i.anu = mul i32 %i.ant, %i.anm
  %i.anv = zext i32 %i.anu to i64
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %.sink = phi i64 [ %i.anv, %bb.bs ], [ 0, %bb.br ]
  %i.anw = getelementptr inbounds nuw [8 x i8], ptr %i.ane, i64 %indvars.iv
  store i64 %.sink, ptr %i.anw, align 8, !tbaa !100
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.anx = load i32, ptr %i.ii, align 16, !tbaa !96
  %i.any = zext i32 %i.anx to i64
  %i.anz = icmp samesign ult i64 %indvars.iv.next, %i.any
  br i1 %i.anz, label %bb.br, label %.preheader, !llvm.loop !133

._crit_edge1428:                                  ; preds = %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit, %.preheader
  call void @_ZN8LoopStatD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.aoa = load ptr, ptr %8, align 8, !tbaa !76   ; 2 uses
  %i.aob = icmp eq ptr %i.aoa, %i.ig
  br i1 %i.aob, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1076, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1074

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1074: ; preds = %._crit_edge1428
  call void @_ZdlPv(ptr noundef %i.aoa) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1076

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1076: ; preds = %._crit_edge1428, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1074
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %indvars.iv.next1473 = add nuw nsw i64 %indvars.iv1472, 1 ; 2 uses
  %i.aoc = load i32, ptr %i.ie, align 16, !tbaa !95
  %i.aod = zext i32 %i.aoc to i64
  %i.aoe = icmp samesign ult i64 %indvars.iv.next1473, %i.aod
  br i1 %i.aoe, label %bb.ax, label %._crit_edge1433, !llvm.loop !134

.lr.ph1427:                                       ; preds = %.preheader, %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit
  %i.aof = phi ptr [ %i.asx, %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit ], [ %i.ang, %.preheader ]
  %i.aog = phi i64 [ %i.asv, %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit ], [ 0, %.preheader ]
  %.01426 = phi i32 [ %i.asu, %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit ], [ 0, %.preheader ]
  %i.aoh = load ptr, ptr %i.lg, align 16, !tbaa !135 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aoh, null
  br i1 %.not10.i.i.i.i, label %bb.bw, label %.lr.ph.i.i.i.i1077

.lr.ph.i.i.i.i1077:                               ; preds = %.lr.ph1427
  %i.aoi = getelementptr inbounds nuw [32 x i8], ptr %i.aof, i64 %i.aog ; 2 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 8
  %i.aok = load i64, ptr %i.aoj, align 8, !tbaa !80 ; 4 uses
  %i.aol = load ptr, ptr %i.aoi, align 8          ; 2 uses
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i1077
  %.012.i.i.i.i = phi ptr [ %i.aoh, %.lr.ph.i.i.i.i1077 ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.lh, %.lr.ph.i.i.i.i1077 ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ]
  %i.aom = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.aon = load i64, ptr %i.aom, align 8, !tbaa !80 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.aok, i64 %i.aon) ; 2 uses
  %i.aoo = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.aoo, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.bu
  %i.aop = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.aoq = load ptr, ptr %i.aop, align 8, !tbaa !76
  %i.aor = call i32 @memcmp(ptr noundef %i.aoq, ptr noundef %i.aol, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.aor, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.bu
  %i.aos = sub i64 %i.aon, %i.aok
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.aos, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aor, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.aot = icmp slt i32 %.0.i.i.i.i.i.i.i, 0      ; 2 uses
  %.19.i.i.i.i = select i1 %i.aot, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.aot, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i.i1078 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i1078, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %bb.bu, !llvm.loop !137

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.aou = icmp eq ptr %.19.i.i.i.i, %i.lh
  br i1 %i.aou, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.aov = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aow = load i64, ptr %i.aov, align 8, !tbaa !80 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.aow, i64 %i.aok) ; 2 uses
  %i.aox = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.aox, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.bv
  %i.aoy = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !76
  %i.apa = call i32 @memcmp(ptr noundef %i.aol, ptr noundef %i.aoz, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.apa, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.bv
  %i.apb = sub i64 %i.aok, %i.aow
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.apb, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.apa, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.apc = icmp slt i32 %.0.i.i.i.i.i.i, 0
  %spec.select.i.i.i = select i1 %i.apc, ptr %i.lh, ptr %.19.i.i.i.i
  br label %bb.bw

bb.bw:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %.lr.ph1427
  %.sroa.0.0.i.i.i = phi ptr [ %i.lh, %.lr.ph1427 ], [ %i.lh, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i ], [ %spec.select.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.apd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 64
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !138 ; 4 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 8 ; 4 uses
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !141 ; 5 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %i.ape, i64 16 ; 2 uses
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !144
  %.not.i1079 = icmp eq ptr %i.apg, %i.api
  br i1 %.not.i1079, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN8LoopStatC2ERKS_(ptr noundef nonnull align 8 dereferenceable(280) %i.apg, ptr noundef nonnull align 8 dereferenceable(280) %9)
          to label %.noexc1080 unwind label %.loopexit

.noexc1080:                                       ; preds = %bb.bx
  %i.apj = load ptr, ptr %i.apf, align 8, !tbaa !141
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 280
  store ptr %i.apk, ptr %i.apf, align 8, !tbaa !141
  br label %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit

bb.by:                                            ; preds = %bb.bw
  %i.apl = load ptr, ptr %i.ape, align 8, !tbaa !145 ; 5 uses
  %i.apm = ptrtoint ptr %i.apg to i64
  %i.apn = ptrtoint ptr %i.apl to i64
  %i.apo = sub i64 %i.apm, %i.apn                 ; 3 uses
  %i.app = icmp eq i64 %i.apo, 9223372036854775800
  br i1 %i.app, label %bb.bz, label %_ZNKSt6vectorI8LoopStatSaIS0_EE12_M_check_lenEmPKc.exit.i

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #24
          to label %.noexc1096 unwind label %.loopexit.split-lp

.noexc1096:                                       ; preds = %bb.bz
  unreachable

_ZNKSt6vectorI8LoopStatSaIS0_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.by
  %i.apq = sdiv exact i64 %i.apo, 280             ; 2 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.apq, i64 1)
  %i.apr = add nsw i64 %.sroa.speculated.i.i, %i.apq ; 2 uses
  %i.aps = call i64 @llvm.umin.i64(i64 %i.apr, i64 32940614417338485) ; 2 uses
  %.not.i.i1095 = icmp ne i64 %i.apr, 0
  call void @llvm.assume(i1 %.not.i.i1095)
  %i.apt = mul nuw nsw i64 %i.aps, 280
  %i.apu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.apt) #22
          to label %.noexc1097 unwind label %.loopexit ; 6 uses

.noexc1097:                                       ; preds = %_ZNKSt6vectorI8LoopStatSaIS0_EE12_M_check_lenEmPKc.exit.i
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 %i.apo
  invoke void @_ZN8LoopStatC2ERKS_(ptr noundef nonnull align 8 dereferenceable(280) %i.apv, ptr noundef nonnull align 8 dereferenceable(280) %9)
          to label %_ZNSt16allocator_traitsISaI8LoopStatEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit.i unwind label %bb.cc

_ZNSt16allocator_traitsISaI8LoopStatEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit.i: ; preds = %.noexc1097
  %.not10.i1100 = icmp eq ptr %i.apl, %i.apg
  br i1 %.not10.i1100, label %_ZSt14__relocate_a_1IP8LoopStatS1_SaIS0_EET0_T_S4_S3_RT1_.exit, label %.lr.ph.i1101

.lr.ph.i1101:                                     ; preds = %_ZNSt16allocator_traitsISaI8LoopStatEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit.i, %.lr.ph.i1101
  %.012.i1102 = phi ptr [ %i.asl, %.lr.ph.i1101 ], [ %i.apu, %_ZNSt16allocator_traitsISaI8LoopStatEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit.i ] ; 24 uses
  %.0911.i1103 = phi ptr [ %i.ask, %.lr.ph.i1101 ], [ %i.apl, %_ZNSt16allocator_traitsISaI8LoopStatEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit.i ] ; 25 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.012.i1102, ptr noundef nonnull align 8 dereferenceable(280) %.0911.i1103, i64 16, i1 false), !alias.scope !151
  %i.apw = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 16
  %i.apx = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 16 ; 2 uses
  %i.apy = load <2 x ptr>, ptr %i.apx, align 8, !tbaa !152, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.apy, ptr %i.apw, align 8, !tbaa !152, !alias.scope !146, !noalias !149
  %i.apz = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 32
  %i.aqa = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 32
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !153, !alias.scope !149, !noalias !146
  store ptr %i.aqb, ptr %i.apz, align 8, !tbaa !153, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.apx, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  %i.aqc = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 40
  %i.aqd = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 40 ; 2 uses
  %i.aqe = load <2 x ptr>, ptr %i.aqd, align 8, !tbaa !154, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.aqe, ptr %i.aqc, align 8, !tbaa !154, !alias.scope !146, !noalias !149
  %i.aqf = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 56
  %i.aqg = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 56
  %i.aqh = load ptr, ptr %i.aqg, align 8, !tbaa !155, !alias.scope !149, !noalias !146
  store ptr %i.aqh, ptr %i.aqf, align 8, !tbaa !155, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqd, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  %i.aqi = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 64
  %i.aqj = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 64 ; 2 uses
  %i.aqk = load <2 x ptr>, ptr %i.aqj, align 8, !tbaa !156, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.aqk, ptr %i.aqi, align 8, !tbaa !156, !alias.scope !146, !noalias !149
  %i.aql = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 80
  %i.aqm = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 80
  %i.aqn = load ptr, ptr %i.aqm, align 8, !tbaa !157, !alias.scope !149, !noalias !146
  store ptr %i.aqn, ptr %i.aql, align 8, !tbaa !157, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqj, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  %i.aqo = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 88
  %i.aqp = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 88 ; 2 uses
  %i.aqq = load <2 x ptr>, ptr %i.aqp, align 8, !tbaa !156, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.aqq, ptr %i.aqo, align 8, !tbaa !156, !alias.scope !146, !noalias !149
  %i.aqr = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 104
  %i.aqs = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 104
  %i.aqt = load ptr, ptr %i.aqs, align 8, !tbaa !157, !alias.scope !149, !noalias !146
  store ptr %i.aqt, ptr %i.aqr, align 8, !tbaa !157, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqp, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  %i.aqu = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 112
  %i.aqv = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 112 ; 2 uses
  %i.aqw = load <2 x ptr>, ptr %i.aqv, align 8, !tbaa !156, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.aqw, ptr %i.aqu, align 8, !tbaa !156, !alias.scope !146, !noalias !149
  %i.aqx = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 128
  %i.aqy = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 128
  %i.aqz = load ptr, ptr %i.aqy, align 8, !tbaa !157, !alias.scope !149, !noalias !146
  store ptr %i.aqz, ptr %i.aqx, align 8, !tbaa !157, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqv, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  %i.ara = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 136
  %i.arb = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 136 ; 2 uses
  %i.arc = load <2 x ptr>, ptr %i.arb, align 8, !tbaa !156, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.arc, ptr %i.ara, align 8, !tbaa !156, !alias.scope !146, !noalias !149
  %i.ard = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 152
  %i.are = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 152
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !157, !alias.scope !149, !noalias !146
  store ptr %i.arf, ptr %i.ard, align 8, !tbaa !157, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.arb, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  %i.arg = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 160
  %i.arh = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 160 ; 2 uses
  %i.ari = load <2 x ptr>, ptr %i.arh, align 8, !tbaa !156, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.ari, ptr %i.arg, align 8, !tbaa !156, !alias.scope !146, !noalias !149
  %i.arj = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 176
  %i.ark = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 176
  %i.arl = load ptr, ptr %i.ark, align 8, !tbaa !157, !alias.scope !149, !noalias !146
  store ptr %i.arl, ptr %i.arj, align 8, !tbaa !157, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.arh, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  %i.arm = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 184
  %i.arn = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 184 ; 2 uses
  %i.aro = load <2 x ptr>, ptr %i.arn, align 8, !tbaa !156, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.aro, ptr %i.arm, align 8, !tbaa !156, !alias.scope !146, !noalias !149
  %i.arp = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 200
  %i.arq = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 200
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !157, !alias.scope !149, !noalias !146
  store ptr %i.arr, ptr %i.arp, align 8, !tbaa !157, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.arn, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  %i.ars = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 208
  %i.art = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 208 ; 2 uses
  %i.aru = load <2 x ptr>, ptr %i.art, align 8, !tbaa !158, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.aru, ptr %i.ars, align 8, !tbaa !158, !alias.scope !146, !noalias !149
  %i.arv = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 224
  %i.arw = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 224
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !159, !alias.scope !149, !noalias !146
  store ptr %i.arx, ptr %i.arv, align 8, !tbaa !159, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.art, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  %i.ary = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 232
  %i.arz = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 232 ; 2 uses
  %i.asa = load <2 x ptr>, ptr %i.arz, align 8, !tbaa !158, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.asa, ptr %i.ary, align 8, !tbaa !158, !alias.scope !146, !noalias !149
  %i.asb = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 248
  %i.asc = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 248
  %i.asd = load ptr, ptr %i.asc, align 8, !tbaa !159, !alias.scope !149, !noalias !146
  store ptr %i.asd, ptr %i.asb, align 8, !tbaa !159, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.arz, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  %i.ase = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 256
  %i.asf = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 256 ; 2 uses
  %i.asg = load <2 x ptr>, ptr %i.asf, align 8, !tbaa !156, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.asg, ptr %i.ase, align 8, !tbaa !156, !alias.scope !146, !noalias !149
  %i.ash = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 272
  %i.asi = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 272
  %i.asj = load ptr, ptr %i.asi, align 8, !tbaa !157, !alias.scope !149, !noalias !146
  store ptr %i.asj, ptr %i.ash, align 8, !tbaa !157, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.asf, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  call void @_ZN8LoopStatD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %.0911.i1103) #21, !noalias !146
  %i.ask = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 280 ; 2 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 280 ; 2 uses
  %.not.i1104 = icmp eq ptr %i.ask, %i.apg
  br i1 %.not.i1104, label %_ZSt14__relocate_a_1IP8LoopStatS1_SaIS0_EET0_T_S4_S3_RT1_.exit, label %.lr.ph.i1101, !llvm.loop !160

_ZSt14__relocate_a_1IP8LoopStatS1_SaIS0_EET0_T_S4_S3_RT1_.exit: ; preds = %.lr.ph.i1101, %_ZNSt16allocator_traitsISaI8LoopStatEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit.i
  %.0.lcssa.i1106 = phi ptr [ %i.apu, %_ZNSt16allocator_traitsISaI8LoopStatEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit.i ], [ %i.asl, %.lr.ph.i1101 ]
  %i.asm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i1106, i64 280
  %.not.i26.i = icmp eq ptr %i.apl, null
  br i1 %.not.i26.i, label %.noexc1081, label %bb.ca

bb.ca:                                            ; preds = %_ZSt14__relocate_a_1IP8LoopStatS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  call void @_ZdlPv(ptr noundef nonnull %i.apl) #23
  br label %.noexc1081

bb.cb:                                            ; preds = %bb.cc
  %i.asn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.cd

bb.cc:                                            ; preds = %.noexc1097
  %i.aso = landingpad { ptr, i32 }
          catch ptr null
  %i.asp = extractvalue { ptr, i32 } %i.aso, 0
  %i.asq = call ptr @__cxa_begin_catch(ptr %i.asp) #21 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.apu) #23
  invoke void @__cxa_rethrow() #24
          to label %bb.ce unwind label %bb.cb

bb.cd:                                            ; preds = %bb.cb
  %i.asr = landingpad { ptr, i32 }
          catch ptr null
  %i.ass = extractvalue { ptr, i32 } %i.asr, 0
  call void @__clang_call_terminate(ptr %i.ass) #25
  unreachable

bb.ce:                                            ; preds = %bb.cc
  unreachable

.noexc1081:                                       ; preds = %bb.ca, %_ZSt14__relocate_a_1IP8LoopStatS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  store ptr %i.apu, ptr %i.ape, align 8, !tbaa !145
  store ptr %i.asm, ptr %i.apf, align 8, !tbaa !141
  %i.ast = getelementptr inbounds nuw [280 x i8], ptr %i.apu, i64 %i.aps
  store ptr %i.ast, ptr %i.aph, align 8, !tbaa !144
  br label %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit: ; preds = %.noexc1081, %.noexc1080
  %i.asu = add i32 %.01426, 1                     ; 2 uses
  %i.asv = zext i32 %i.asu to i64                 ; 2 uses
  %i.asw = load ptr, ptr %i.cd, align 8, !tbaa !74
  %i.asx = load ptr, ptr %4, align 8, !tbaa !75   ; 2 uses
  %i.asy = ptrtoint ptr %i.asw to i64
  %i.asz = ptrtoint ptr %i.asx to i64
  %i.ata = sub i64 %i.asy, %i.asz
  %i.atb = ashr exact i64 %i.ata, 5
  %i.atc = icmp ugt i64 %i.atb, %i.asv
  br i1 %i.atc, label %.lr.ph1427, label %._crit_edge1428, !llvm.loop !161

.loopexit:                                        ; preds = %bb.bx, %_ZNKSt6vectorI8LoopStatSaIS0_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.bz
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit1369, %.loopexit.split-lp1370, %bb.cb, %bb.bg
  %.pn266 = phi { ptr, i32 } [ %i.asn, %bb.cb ], [ %i.ob, %bb.bg ], [ %lpad.loopexit.split-lp1372, %.loopexit.split-lp1370 ], [ %lpad.loopexit1371, %.loopexit1369 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN8LoopStatD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %9) #21
  br label %bb.cf

bb.cf:                                            ; preds = %.body, %bb.ba
  %.pn266.pn = phi { ptr, i32 } [ %.pn266, %.body ], [ %i.mu, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.atd = load ptr, ptr %8, align 8, !tbaa !76   ; 2 uses
  %i.ate = icmp eq ptr %i.atd, %i.ig
  br i1 %i.ate, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1082

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1082: ; preds = %bb.cf
  call void @_ZdlPv(ptr noundef %i.atd) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1082
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit1088

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge1433
  %i.atf = getelementptr inbounds nuw i8, ptr %i.k, i64 360
  %i.atg = load ptr, ptr %i.atf, align 8, !tbaa !85
  %i.ath = load i32, ptr %i.atg, align 4, !tbaa !4
  %.sroa.speculated1312 = call i32 @llvm.smax.i32(i32 %.01353.lcssa, i32 %i.ath)
  %i.ati = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8
  store i32 %.sroa.speculated1312, ptr %i.ati, align 8, !tbaa !162
  call void @_ZdlPv(ptr noundef nonnull %i.fh) #23
  %i.atj = load ptr, ptr %4, align 8, !tbaa !75   ; 3 uses
  %i.atk = load ptr, ptr %i.cd, align 8, !tbaa !74 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.atj, %i.atk
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ato, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.atj, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.atl = load ptr, ptr %.05.i.i.i, align 8, !tbaa !76 ; 2 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.atn = icmp eq ptr %i.atl, %i.atm
  br i1 %i.atn, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.atl) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ato = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1086 = icmp eq ptr %i.ato, %i.atk
  br i1 %.not.i.i.i1086, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !75
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.atp = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.atj, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.atp, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.atp) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.ch:                                            ; preds = %._crit_edge1433
  %i.atq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit1088

_ZNSt6vectorIiSaIiEED2Ev.exit1088:                ; preds = %bb.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084
  %.pn266.pn.pn = phi { ptr, i32 } [ %.pn266.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084 ], [ %i.atq, %bb.ch ]
  call void @_ZdlPv(ptr noundef nonnull %i.fh) #23
  br label %bb.ci

bb.ci:                                            ; preds = %bb.aw, %_ZNSt6vectorIiSaIiEED2Ev.exit1088, %bb.ac, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.d
  %.pn271.pn.pn = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.mo, %bb.aw ], [ %i.hr, %bb.aq ], [ %i.fi, %bb.ac ], [ %i.hs, %bb.ar ], [ %.pn266.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit1088 ], [ %i.hv, %bb.au ], [ %i.hu, %bb.at ], [ %i.ht, %bb.as ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn271.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z15getVariantNamesB5cxx11RKSt6vectorI13LoopVariantIDSaIS0_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !165
  %i.d = load ptr, ptr %1, align 8, !tbaa !167    ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = phi ptr [ %i.d, %.lr.ph ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.j = phi i64 [ 0, %.lr.ph ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.0815 = phi i32 [ 0, %.lr.ph ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !168
  invoke void @_Z14getVariantNameB5cxx1113LoopVariantID(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i32 noundef %i.l)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !74   ; 8 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !130
  %.not.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !79
  %i.p = load ptr, ptr %2, align 8, !tbaa !76     ; 2 uses
  %i.q = load i64, ptr %i.g, align 8, !tbaa !80   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.q, ptr %i.a, align 8, !tbaa !100
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.d
  %i.s = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.s, ptr %i.m, align 8, !tbaa !76
  %i.t = load i64, ptr %i.a, align 8, !tbaa !100
  store i64 %i.t, ptr %i.o, align 8, !tbaa !81
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.d
  %i.u = phi ptr [ %i.s, %.noexc ], [ %i.o, %bb.d ] ; 2 uses
  switch i64 %i.q, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.v = load i8, ptr %i.p, align 1, !tbaa !81
  store i8 %i.v, ptr %i.u, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.p, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !80
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !76
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !74
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.g:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.m, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.g
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIeSaIeEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPeS1_EEmRKe:bb.a
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !175

_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !93
  %i.av = icmp sgt i64 %i.k, 16
  br i1 %i.av, label %bb.n, label %bb.o, !prof !891

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 16 %.0.i.i.i.i.i, ptr align 16 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !93
  br label %_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit
  %i.aw = icmp eq i64 %i.k, 16
  br i1 %i.aw, label %bb.p, label %_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.ax = load x86_fp80, ptr %1, align 16, !tbaa !92
  store x86_fp80 %i.ax, ptr %.0.i.i.i.i.i, align 16, !tbaa !92
  br label %_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.ay = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.k
  store ptr %i.az, ptr %i.c, align 8, !tbaa !93
  %.not6.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not6.i.i.i70, label %_ZSt4fillIPeeEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit69, %.lr.ph.i.i.i71
  %.07.i.i.i72 = phi ptr [ %i.ba, %.lr.ph.i.i.i71 ], [ %1, %_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit69 ] ; 2 uses
  store x86_fp80 %i.i, ptr %.07.i.i.i72, align 16, !tbaa !92
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i.i72, i64 16 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.ba, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPeeEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !175

bb.q:                                             ; preds = %bb.b
  %i.bb = load ptr, ptr %0, align 8, !tbaa !89    ; 5 uses
  %i.bc = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bd = sub i64 %i.f, %i.bc
  %i.be = ashr exact i64 %i.bd, 4                 ; 4 uses
  %i.bf = sub nsw i64 576460752303423487, %i.be
  %i.bg = icmp ult i64 %i.bf, %2
  br i1 %i.bg, label %bb.r, label %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #24
  unreachable

_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.be, i64 %2)
  %i.bh = add nsw i64 %.sroa.speculated.i, %i.be  ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.be
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 576460752303423487)
  %i.bk = select i1 %i.bi, i64 576460752303423487, i64 %i.bj ; 3 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.bc                    ; 4 uses
  %.not.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit
  %i.bn = shl nuw nsw i64 %i.bk, 4
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit
  %i.bp = phi ptr [ %i.bo, %bb.s ], [ null, %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %i.bm ; 4 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 4       ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i.i.i.i.i75
  %i.bs = load x86_fp80, ptr %3, align 16, !tbaa !92 ; 9 uses
  %i.bt = add nsw i64 %.idx.i.i.i.i.i75, -16      ; 2 uses
  %i.bu = lshr exact i64 %i.bt, 4
  %i.bv = add nuw nsw i64 %i.bu, 1
  %xtraiter115 = and i64 %i.bv, 7                 ; 2 uses
  %lcmp.mod116.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod116.not, label %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i76.prol

.lr.ph.i.i.i.i.i.i.i76.prol:                      ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i.i76.prol
  %.07.i.i.i.i.i.i.i77.prol = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i76.prol ], [ %i.bq, %bb.t ] ; 2 uses
  %prol.iter117 = phi i64 [ %prol.iter117.next, %.lr.ph.i.i.i.i.i.i.i76.prol ], [ 0, %bb.t ]
  store x86_fp80 %i.bs, ptr %.07.i.i.i.i.i.i.i77.prol, align 16, !tbaa !92
  %i.bw = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77.prol, i64 16 ; 2 uses
  %prol.iter117.next = add i64 %prol.iter117, 1   ; 2 uses
  %prol.iter117.cmp.not = icmp eq i64 %prol.iter117.next, %xtraiter115
  br i1 %prol.iter117.cmp.not, label %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i76.prol, !llvm.loop !901

.lr.ph.i.i.i.i.i.i.i76.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i76.prol, %bb.t
  %.07.i.i.i.i.i.i.i77.unr = phi ptr [ %i.bq, %bb.t ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i76.prol ]
  %i.bx = icmp ult i64 %i.bt, 112
  br i1 %i.bx, label %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i76
  %.07.i.i.i.i.i.i.i77 = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.07.i.i.i.i.i.i.i77.unr, %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit ] ; 9 uses
  store x86_fp80 %i.bs, ptr %.07.i.i.i.i.i.i.i77, align 16, !tbaa !92
  %i.by = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 16
  store x86_fp80 %i.bs, ptr %i.by, align 16, !tbaa !92
  %i.bz = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 32
  store x86_fp80 %i.bs, ptr %i.bz, align 16, !tbaa !92
  %i.ca = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 48
  store x86_fp80 %i.bs, ptr %i.ca, align 16, !tbaa !92
  %i.cb = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 64
  store x86_fp80 %i.bs, ptr %i.cb, align 16, !tbaa !92
  %i.cc = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 80
  store x86_fp80 %i.bs, ptr %i.cc, align 16, !tbaa !92
  %i.cd = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 96
  store x86_fp80 %i.bs, ptr %i.cd, align 16, !tbaa !92
  %i.ce = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 112
  store x86_fp80 %i.bs, ptr %i.ce, align 16, !tbaa !92
  %i.cf = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i78.7 = icmp eq ptr %i.cf, %i.br
  br i1 %.not.i.i.i.i.i.i.i78.7, label %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !175

_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit
  %i.cg = icmp sgt i64 %i.bm, 16
  br i1 %i.cg, label %bb.u, label %bb.v, !prof !891

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 16 %i.bp, ptr align 16 %i.bb, i64 %i.bm, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.ch = icmp eq i64 %i.bm, 16
  br i1 %i.ch, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ci = load x86_fp80, ptr %i.bb, align 16, !tbaa !92
  store x86_fp80 %i.ci, ptr %i.bp, align 16, !tbaa !92
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %2 ; 3 uses
  %i.ck = sub i64 %i.f, %i.bl                     ; 4 uses
  %i.cl = icmp sgt i64 %i.ck, 16
  br i1 %i.cl, label %bb.x, label %bb.y, !prof !891

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.cj, ptr align 16 %1, i64 %i.ck, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit
  %i.cm = icmp eq i64 %i.ck, 16
  br i1 %i.cm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cn = load x86_fp80, ptr %1, align 16, !tbaa !92
  store x86_fp80 %i.cn, ptr %i.cj, align 16, !tbaa !92
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.co = getelementptr inbounds i8, ptr %i.cj, i64 %i.ck
  %.not.i82 = icmp eq ptr %i.bb, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIeSaIeEE13_M_deallocateEPem.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZdlPv(ptr noundef nonnull %i.bb) #23
  br label %_ZNSt12_Vector_baseIeSaIeEE13_M_deallocateEPem.exit

_ZNSt12_Vector_baseIeSaIeEE13_M_deallocateEPem.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.bp, ptr %0, align 8, !tbaa !89
  store ptr %i.co, ptr %i.c, align 8, !tbaa !93
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.bk
  store ptr %i.cp, ptr %i.a, align 8, !tbaa !157
  br label %_ZSt4fillIPeeEvT_S1_RKT0_.exit

_ZSt4fillIPeeEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIeSaIeEE13_M_deallocateEPem.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #16

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !75     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #24
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743) ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.f
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.n = shl nuw nsw i64 %i.k, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.p = phi ptr [ %i.o, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !79
  %i.s = load ptr, ptr %2, align 8, !tbaa !76     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !80   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.u, ptr %i.a, align 8, !tbaa !100
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.w, ptr %i.q, align 8, !tbaa !76
  %i.x = load i64, ptr %i.a, align 8, !tbaa !100
  store i64 %i.x, ptr %i.r, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.u, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !81
  store i8 %i.z, ptr %i.y, align 1, !tbaa !81
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !100 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !80
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not10.i.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.p, %bb.f ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.d, %bb.f ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
  call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i.i, align 8, !tbaa !79, !alias.scope !902, !noalias !905
  %i.af = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !76, !alias.scope !905, !noalias !902 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !80, !alias.scope !905, !noalias !902 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !907
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.af, ptr %.012.i.i.i.i, align 8, !tbaa !76, !alias.scope !902, !noalias !905
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !81, !alias.scope !905, !noalias !902
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !81, !alias.scope !902, !noalias !905
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !80, !alias.scope !905, !noalias !902
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.g
  %i.an = phi i64 [ %i.aj, %bb.g ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !80, !alias.scope !902, !noalias !905
  store ptr %i.ag, ptr %.0911.i.i.i.i, align 8, !tbaa !76, !alias.scope !905, !noalias !902
  store i64 0, ptr %i.ao, align 8, !tbaa !80, !alias.scope !905, !noalias !902
  store i8 0, ptr %i.ag, align 8, !tbaa !81, !alias.scope !905, !noalias !902
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !877

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %bb.f
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %bb.f ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33
  %.012.i.i.i.i28 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i.i29 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !908)
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i.i28, align 8, !tbaa !79, !alias.scope !908, !noalias !911
  %i.au = load ptr, ptr %.0911.i.i.i.i29, align 8, !tbaa !76, !alias.scope !911, !noalias !908 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.h:                                             ; preds = %.lr.ph.i.i.i.i27
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !80, !alias.scope !911, !noalias !908 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !913
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i.i27
  store ptr %i.au, ptr %.012.i.i.i.i28, align 8, !tbaa !76, !alias.scope !908, !noalias !911
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !81, !alias.scope !911, !noalias !908
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !81, !alias.scope !908, !noalias !911
  %.phi.trans.insert.i.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %.pre.i.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i.i31, align 8, !tbaa !80, !alias.scope !911, !noalias !908
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.h
  %i.bc = phi i64 [ %i.ay, %bb.h ], [ %.pre.i.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !80, !alias.scope !908, !noalias !911
  store ptr %i.av, ptr %.0911.i.i.i.i29, align 8, !tbaa !76, !alias.scope !911, !noalias !908
  store i64 0, ptr %i.bd, align 8, !tbaa !80, !alias.scope !911, !noalias !908
  store i8 0, ptr %i.av, align 8, !tbaa !81, !alias.scope !911, !noalias !908
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.bf, %i.c
  br i1 %.not.i.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i.i27, !llvm.loop !877

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i.i35 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33 ]
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  call void @_ZdlPv(ptr noundef nonnull %i.d) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !75
  store ptr %.0.lcssa.i.i.i.i35, ptr %i.b, align 8, !tbaa !74
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.k
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !130
  ret void

bb.j:                                             ; preds = %bb.k
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.k:                                             ; preds = %.noexc.i
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  %i.bm = call ptr @__cxa_begin_catch(ptr %i.bl) #21 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.p) #23
  invoke void @__cxa_rethrow() #24
          to label %bb.n unwind label %bb.j

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.bj

bb.m:                                             ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #25
  unreachable

bb.n:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN8LoopStatC2ERKS_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(280) %1) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !87   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sdiv exact i64 %i.h, 24
  %i.j = icmp ugt i64 %i.i, 384307168202282325
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorIeSaIeEEE8allocateEmPKv.exit.i.i.i.i, !prof !82

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorISt6vectorIeSaIeEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #22
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIeSaIeEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.l = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt15__new_allocatorISt6vectorIeSaIeEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !87
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.n, ptr %i.o, align 8, !tbaa !153
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !152
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !152
  %i.r = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIeSaIeEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_(ptr %i.p, ptr %i.q, ptr noundef %i.l)
          to label %_ZNSt6vectorIS_IeSaIeEESaIS1_EEC2ERKS3_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #23
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZNSt6vectorImSaImEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit ], [ %i.s, %bb.e ], [ %i.s, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_IeSaIeEESaIS1_EEC2ERKS3_.exit:     ; preds = %bb.c
  store ptr %i.r, ptr %i.m, align 8, !tbaa !87
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !173  ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !172  ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %.not.i.i.i.i32 = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i.i32, label %.noexc34, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIS_IeSaIeEESaIS1_EEC2ERKS3_.exit
  %i.ac = icmp ugt i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %.noexc.i.i33, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, !prof !82

.noexc.i.i33:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.bd

.noexc:                                           ; preds = %.noexc.i.i33
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.f
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #22
          to label %.noexc34 unwind label %bb.bd

.noexc34:                                         ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIS_IeSaIeEESaIS1_EEC2ERKS3_.exit
  %i.ae = phi ptr [ null, %_ZNSt6vectorIS_IeSaIeEESaIS1_EEC2ERKS3_.exit ], [ %i.ad, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.ae, ptr %i.u, align 8, !tbaa !172
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !173
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !155
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !154 ; 3 uses
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !154
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 4 uses
  %i.an = icmp sgt i64 %i.am, 8
  br i1 %i.an, label %bb.g, label %bb.h, !prof !891

bb.g:                                             ; preds = %.noexc34
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ae, ptr align 8 %i.ai, i64 %i.am, i1 false)
  br label %bb.j

bb.h:                                             ; preds = %.noexc34
  %i.ao = icmp eq i64 %i.am, 8
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = load i64, ptr %i.ai, align 8, !tbaa !100
  store i64 %i.ap, ptr %i.ae, align 8, !tbaa !100
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.aq = getelementptr inbounds i8, ptr %i.ae, i64 %i.am
  store ptr %i.aq, ptr %i.af, align 8, !tbaa !173
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !93 ; 2 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !89 ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %.not.i.i.i.i35 = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i.i.i35, label %.noexc38, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = icmp ugt i64 %i.ay, 9223372036854775792
  br i1 %i.az, label %.noexc.i.i36, label %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i, !prof !82

.noexc.i.i36:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc37 unwind label %bb.be

.noexc37:                                         ; preds = %.noexc.i.i36
  unreachable

_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #22
          to label %.noexc38 unwind label %bb.be

.noexc38:                                         ; preds = %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i, %bb.j
  %i.bb = phi ptr [ null, %bb.j ], [ %i.ba, %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.bb, ptr %i.ar, align 8, !tbaa !89
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !93
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ay
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !157
  %i.bf = load ptr, ptr %i.as, align 8, !tbaa !156 ; 3 uses
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !156
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 4 uses
  %i.bk = icmp sgt i64 %i.bj, 16
  br i1 %i.bk, label %bb.l, label %bb.m, !prof !891

bb.l:                                             ; preds = %.noexc38
  tail call void @llvm.memmove.p0.p0.i64(ptr align 16 %i.bb, ptr align 16 %i.bf, i64 %i.bj, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc38
  %i.bl = icmp eq i64 %i.bj, 16
  br i1 %i.bl, label %bb.n, label %bb.o
end_hunk_1
