inline.NumInlined: 1878
inline.NumDeleted: 548
begin_hunk_0_@_Z22defineLoopSuiteRunInfoRKSt6vectorI13LoopVariantIDSaIS0_EEPbdd:bb.a
  store ptr %i.amz, ptr %i.la, align 16, !tbaa !74
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.bq:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.lc, ptr %i.amk, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit1369

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.bq
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.013531429, i32 %.01354) ; 2 uses
  %i.ana = load i32, ptr %i.ii, align 16, !tbaa !96
  %.not1438.a = icmp eq i32 %i.ana, 0
  br i1 %.not1438.a, label %.preheader, label %.lr.ph1425

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
  %i.aof = phi ptr [ %i.asz, %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit ], [ %i.ang, %.preheader ]
  %i.aog = phi i64 [ %i.asx, %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit ], [ 0, %.preheader ]
  %.01426 = phi i32 [ %i.asw, %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit ], [ 0, %.preheader ]
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
          to label %.noexc1096.a unwind label %.loopexit.split-lp

.noexc1096.a:                                     ; preds = %bb.bz
  unreachable

_ZNKSt6vectorI8LoopStatSaIS0_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.by
  %i.apq = sdiv exact i64 %i.apo, 280             ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.apq, i64 1)
  %i.apr = add nsw i64 %.sroa.speculated.i.i, %i.apq ; 2 uses
  %i.aps = icmp ult i64 %i.apr, %i.apq
  %i.apt = call i64 @llvm.umin.i64(i64 %i.apr, i64 32940614417338485)
  %i.apu = select i1 %i.aps, i64 32940614417338485, i64 %i.apt ; 3 uses
  %.not.i.i1095 = icmp ne i64 %i.apu, 0
  call void @llvm.assume(i1 %.not.i.i1095)
  %i.apv = mul nuw nsw i64 %i.apu, 280
  %i.apw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.apv) #22
          to label %.noexc1097 unwind label %.loopexit ; 6 uses

.noexc1097:                                       ; preds = %_ZNKSt6vectorI8LoopStatSaIS0_EE12_M_check_lenEmPKc.exit.i
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 %i.apo
  invoke void @_ZN8LoopStatC2ERKS_(ptr noundef nonnull align 8 dereferenceable(280) %i.apx, ptr noundef nonnull align 8 dereferenceable(280) %9)
          to label %_ZNSt16allocator_traitsISaI8LoopStatEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit.i unwind label %bb.cc

_ZNSt16allocator_traitsISaI8LoopStatEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit.i: ; preds = %.noexc1097
  %.not10.i1100 = icmp eq ptr %i.apl, %i.apg
  br i1 %.not10.i1100, label %_ZSt14__relocate_a_1IP8LoopStatS1_SaIS0_EET0_T_S4_S3_RT1_.exit, label %.lr.ph.i1101

.lr.ph.i1101:                                     ; preds = %_ZNSt16allocator_traitsISaI8LoopStatEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit.i, %.lr.ph.i1101
  %.012.i1102 = phi ptr [ %i.asn, %.lr.ph.i1101 ], [ %i.apw, %_ZNSt16allocator_traitsISaI8LoopStatEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit.i ] ; 24 uses
  %.0911.i1103 = phi ptr [ %i.asm, %.lr.ph.i1101 ], [ %i.apl, %_ZNSt16allocator_traitsISaI8LoopStatEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit.i ] ; 25 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.012.i1102, ptr noundef nonnull align 8 dereferenceable(280) %.0911.i1103, i64 16, i1 false), !alias.scope !151
  %i.apy = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 16
  %i.apz = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 16 ; 2 uses
  %i.aqa = load <2 x ptr>, ptr %i.apz, align 8, !tbaa !152, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.aqa, ptr %i.apy, align 8, !tbaa !152, !alias.scope !146, !noalias !149
  %i.aqb = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 32
  %i.aqc = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 32
  %i.aqd = load ptr, ptr %i.aqc, align 8, !tbaa !153, !alias.scope !149, !noalias !146
  store ptr %i.aqd, ptr %i.aqb, align 8, !tbaa !153, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.apz, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  %i.aqe = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 40
  %i.aqf = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 40 ; 2 uses
  %i.aqg = load <2 x ptr>, ptr %i.aqf, align 8, !tbaa !154, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.aqg, ptr %i.aqe, align 8, !tbaa !154, !alias.scope !146, !noalias !149
  %i.aqh = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 56
  %i.aqi = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 56
  %i.aqj = load ptr, ptr %i.aqi, align 8, !tbaa !155, !alias.scope !149, !noalias !146
  store ptr %i.aqj, ptr %i.aqh, align 8, !tbaa !155, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqf, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  %i.aqk = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 64
  %i.aql = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 64 ; 2 uses
  %i.aqm = load <2 x ptr>, ptr %i.aql, align 8, !tbaa !156, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.aqm, ptr %i.aqk, align 8, !tbaa !156, !alias.scope !146, !noalias !149
  %i.aqn = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 80
  %i.aqo = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 80
  %i.aqp = load ptr, ptr %i.aqo, align 8, !tbaa !157, !alias.scope !149, !noalias !146
  store ptr %i.aqp, ptr %i.aqn, align 8, !tbaa !157, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aql, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  %i.aqq = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 88
  %i.aqr = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 88 ; 2 uses
  %i.aqs = load <2 x ptr>, ptr %i.aqr, align 8, !tbaa !156, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.aqs, ptr %i.aqq, align 8, !tbaa !156, !alias.scope !146, !noalias !149
  %i.aqt = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 104
  %i.aqu = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 104
  %i.aqv = load ptr, ptr %i.aqu, align 8, !tbaa !157, !alias.scope !149, !noalias !146
  store ptr %i.aqv, ptr %i.aqt, align 8, !tbaa !157, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqr, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  %i.aqw = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 112
  %i.aqx = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 112 ; 2 uses
  %i.aqy = load <2 x ptr>, ptr %i.aqx, align 8, !tbaa !156, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.aqy, ptr %i.aqw, align 8, !tbaa !156, !alias.scope !146, !noalias !149
  %i.aqz = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 128
  %i.ara = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 128
  %i.arb = load ptr, ptr %i.ara, align 8, !tbaa !157, !alias.scope !149, !noalias !146
  store ptr %i.arb, ptr %i.aqz, align 8, !tbaa !157, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqx, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  %i.arc = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 136
  %i.ard = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 136 ; 2 uses
  %i.are = load <2 x ptr>, ptr %i.ard, align 8, !tbaa !156, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.are, ptr %i.arc, align 8, !tbaa !156, !alias.scope !146, !noalias !149
  %i.arf = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 152
  %i.arg = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 152
  %i.arh = load ptr, ptr %i.arg, align 8, !tbaa !157, !alias.scope !149, !noalias !146
  store ptr %i.arh, ptr %i.arf, align 8, !tbaa !157, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ard, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  %i.ari = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 160
  %i.arj = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 160 ; 2 uses
  %i.ark = load <2 x ptr>, ptr %i.arj, align 8, !tbaa !156, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.ark, ptr %i.ari, align 8, !tbaa !156, !alias.scope !146, !noalias !149
  %i.arl = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 176
  %i.arm = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 176
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !157, !alias.scope !149, !noalias !146
  store ptr %i.arn, ptr %i.arl, align 8, !tbaa !157, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.arj, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  %i.aro = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 184
  %i.arp = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 184 ; 2 uses
  %i.arq = load <2 x ptr>, ptr %i.arp, align 8, !tbaa !156, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.arq, ptr %i.aro, align 8, !tbaa !156, !alias.scope !146, !noalias !149
  %i.arr = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 200
  %i.ars = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 200
  %i.art = load ptr, ptr %i.ars, align 8, !tbaa !157, !alias.scope !149, !noalias !146
  store ptr %i.art, ptr %i.arr, align 8, !tbaa !157, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.arp, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  %i.aru = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 208
  %i.arv = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 208 ; 2 uses
  %i.arw = load <2 x ptr>, ptr %i.arv, align 8, !tbaa !158, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.arw, ptr %i.aru, align 8, !tbaa !158, !alias.scope !146, !noalias !149
  %i.arx = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 224
  %i.ary = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 224
  %i.arz = load ptr, ptr %i.ary, align 8, !tbaa !159, !alias.scope !149, !noalias !146
  store ptr %i.arz, ptr %i.arx, align 8, !tbaa !159, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.arv, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  %i.asa = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 232
  %i.asb = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 232 ; 2 uses
  %i.asc = load <2 x ptr>, ptr %i.asb, align 8, !tbaa !158, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.asc, ptr %i.asa, align 8, !tbaa !158, !alias.scope !146, !noalias !149
  %i.asd = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 248
  %i.ase = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 248
  %i.asf = load ptr, ptr %i.ase, align 8, !tbaa !159, !alias.scope !149, !noalias !146
  store ptr %i.asf, ptr %i.asd, align 8, !tbaa !159, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.asb, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  %i.asg = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 256
  %i.ash = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 256 ; 2 uses
  %i.asi = load <2 x ptr>, ptr %i.ash, align 8, !tbaa !156, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.asi, ptr %i.asg, align 8, !tbaa !156, !alias.scope !146, !noalias !149
  %i.asj = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 272
  %i.ask = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 272
  %i.asl = load ptr, ptr %i.ask, align 8, !tbaa !157, !alias.scope !149, !noalias !146
  store ptr %i.asl, ptr %i.asj, align 8, !tbaa !157, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ash, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  call void @_ZN8LoopStatD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %.0911.i1103) #21, !noalias !146
  %i.asm = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 280 ; 2 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 280 ; 2 uses
  %.not.i1104 = icmp eq ptr %i.asm, %i.apg
  br i1 %.not.i1104, label %_ZSt14__relocate_a_1IP8LoopStatS1_SaIS0_EET0_T_S4_S3_RT1_.exit, label %.lr.ph.i1101, !llvm.loop !160

_ZSt14__relocate_a_1IP8LoopStatS1_SaIS0_EET0_T_S4_S3_RT1_.exit: ; preds = %.lr.ph.i1101, %_ZNSt16allocator_traitsISaI8LoopStatEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit.i
  %.0.lcssa.i1106 = phi ptr [ %i.apw, %_ZNSt16allocator_traitsISaI8LoopStatEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit.i ], [ %i.asn, %.lr.ph.i1101 ]
  %i.aso = getelementptr inbounds nuw i8, ptr %.0.lcssa.i1106, i64 280
  %.not.i26.i = icmp eq ptr %i.apl, null
  br i1 %.not.i26.i, label %.noexc1081, label %bb.ca

bb.ca:                                            ; preds = %_ZSt14__relocate_a_1IP8LoopStatS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  call void @_ZdlPv(ptr noundef nonnull %i.apl) #23
  br label %.noexc1081

bb.cb:                                            ; preds = %bb.cc
  %i.asp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.cd

bb.cc:                                            ; preds = %.noexc1097
  %i.asq = landingpad { ptr, i32 }
          catch ptr null
  %i.asr = extractvalue { ptr, i32 } %i.asq, 0
  %i.ass = call ptr @__cxa_begin_catch(ptr %i.asr) #21 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.apw) #23
  invoke void @__cxa_rethrow() #24
          to label %bb.ce unwind label %bb.cb

bb.cd:                                            ; preds = %bb.cb
  %i.ast = landingpad { ptr, i32 }
          catch ptr null
  %i.asu = extractvalue { ptr, i32 } %i.ast, 0
  call void @__clang_call_terminate(ptr %i.asu) #25
  unreachable

bb.ce:                                            ; preds = %bb.cc
  unreachable

.noexc1081:                                       ; preds = %bb.ca, %_ZSt14__relocate_a_1IP8LoopStatS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  store ptr %i.apw, ptr %i.ape, align 8, !tbaa !145
  store ptr %i.aso, ptr %i.apf, align 8, !tbaa !141
  %i.asv = getelementptr inbounds nuw [280 x i8], ptr %i.apw, i64 %i.apu
  store ptr %i.asv, ptr %i.aph, align 8, !tbaa !144
  br label %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit: ; preds = %.noexc1081, %.noexc1080
  %i.asw = add i32 %.01426, 1                     ; 2 uses
  %i.asx = zext i32 %i.asw to i64                 ; 2 uses
  %i.asy = load ptr, ptr %i.cd, align 8, !tbaa !74
  %i.asz = load ptr, ptr %4, align 8, !tbaa !75   ; 2 uses
  %i.ata = ptrtoint ptr %i.asy to i64
  %i.atb = ptrtoint ptr %i.asz to i64
  %i.atc = sub i64 %i.ata, %i.atb
  %i.atd = ashr exact i64 %i.atc, 5
  %i.ate = icmp ugt i64 %i.atd, %i.asx
  br i1 %i.ate, label %.lr.ph1427, label %._crit_edge1428, !llvm.loop !161

.loopexit:                                        ; preds = %bb.bx, %_ZNKSt6vectorI8LoopStatSaIS0_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.bz
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit1369, %.loopexit.split-lp1370, %bb.cb, %bb.bg
  %.pn266 = phi { ptr, i32 } [ %i.asp, %bb.cb ], [ %i.ob, %bb.bg ], [ %lpad.loopexit.split-lp1372, %.loopexit.split-lp1370 ], [ %lpad.loopexit1371, %.loopexit1369 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN8LoopStatD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %9) #21
  br label %bb.cf

bb.cf:                                            ; preds = %.body, %bb.ba
  %.pn266.pn = phi { ptr, i32 } [ %.pn266, %.body ], [ %i.mu, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.atf = load ptr, ptr %8, align 8, !tbaa !76   ; 2 uses
  %i.atg = icmp eq ptr %i.atf, %i.ig
  br i1 %i.atg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1082

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi:bb.a

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !4
  store i32 %i.s, ptr %i.d, align 4, !tbaa !4
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !91
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !891

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !4
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check127, label %.lr.ph.i.i.i.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %bb.k
  %n.vec130 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec130, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert131 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat132 = shufflevector <4 x i32> %broadcast.splatinsert131, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph128
  %index134 = phi i64 [ 0, %vector.ph128 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.aj = shl i64 %index134, 2
  %next.gep135 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep135, i64 16
  store <4 x i32> %broadcast.splat132, ptr %next.gep135, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat132, ptr %i.ak, align 4, !tbaa !4
  %index.next136 = add nuw i64 %index134, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.al, label %middle.block137, label %vector.body133, !llvm.loop !892

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.ag, %n.vec130
  br i1 %cmp.n138, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block137
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block137 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !4
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !893

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !894

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !895

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !91
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !891

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !91
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4, !tbaa !4
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !4
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !91
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader154, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec116 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec116, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert117 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat118 = shufflevector <4 x i32> %broadcast.splatinsert117, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph114
  %index120 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body119 ] ; 2 uses
  %i.bm = shl i64 %index120, 2
  %next.gep121 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep121, i64 16
  store <4 x i32> %broadcast.splat118, ptr %next.gep121, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat118, ptr %i.bn, align 4, !tbaa !4
  %index.next122 = add nuw i64 %index120, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next122, %n.vec116
  br i1 %i.bo, label %middle.block123, label %vector.body119, !llvm.loop !896

middle.block123:                                  ; preds = %vector.body119
  %cmp.n124 = icmp eq i64 %i.bj, %n.vec116
  br i1 %cmp.n124, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader154

.lr.ph.i.i.i71.preheader154:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block123
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block123 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader154, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader154 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !4
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !897

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8, !tbaa !85    ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #24
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %4 = add nsw i64 %.sroa.speculated.i, %i.bt     ; 2 uses
  %5 = icmp ult i64 %4, %i.bt
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 2305843009213693951)
  %7 = select i1 %5, i64 2305843009213693951, i64 %6 ; 3 uses
  %8 = ptrtoint ptr %1 to i64                     ; 2 uses
  %9 = sub i64 %8, %i.br                          ; 4 uses
  %.not.i = icmp eq i64 %7, 0
  br i1 %.not.i, label %bb.s, label %10

10:                                               ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %11 = shl nuw nsw i64 %7, 2
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #22
  br label %bb.s

bb.s:                                             ; preds = %10, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %13 = phi ptr [ %12, %10 ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bw = getelementptr inbounds i8, ptr %13, i64 %9 ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx.i.i.i.i.i75
  %i.by = load i32, ptr %3, align 4, !tbaa !4     ; 2 uses
  %i.bz = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.ca = lshr exact i64 %i.bz, 2
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.bz, 28
  br i1 %min.iters.check141, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %bb.s
  %n.vec144 = and i64 %i.cb, 9223372036854775800  ; 3 uses
  %i.cc = shl i64 %n.vec144, 2
  %i.cd = getelementptr i8, ptr %i.bw, i64 %i.cc
  %broadcast.splatinsert145 = insertelement <4 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat146 = shufflevector <4 x i32> %broadcast.splatinsert145, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph142
  %index148 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body147 ] ; 2 uses
  %i.ce = shl i64 %index148, 2
  %next.gep149 = getelementptr i8, ptr %i.bw, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep149, i64 16
  store <4 x i32> %broadcast.splat146, ptr %next.gep149, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat146, ptr %i.cf, align 4, !tbaa !4
  %index.next150 = add nuw i64 %index148, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.cg, label %middle.block151, label %vector.body147, !llvm.loop !898

middle.block151:                                  ; preds = %vector.body147
  %cmp.n152 = icmp eq i64 %i.cb, %n.vec144
  br i1 %cmp.n152, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.s, %middle.block151
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.bw, %bb.s ], [ %i.cd, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.by, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !4
  %i.ch = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.ch, %i.bx
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !899

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block151
  %i.ci = icmp sgt i64 %9, 4
  br i1 %i.ci, label %bb.t, label %bb.u, !prof !891

bb.t:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %13, ptr align 4 %i.bq, i64 %9, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cj = icmp eq i64 %9, 4
  br i1 %i.cj, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %bb.u
  %i.ck = load i32, ptr %i.bq, align 4, !tbaa !4
  store i32 %i.ck, ptr %13, align 4, !tbaa !4
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.v, %bb.u, %bb.t
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %2 ; 3 uses
  %i.cm = sub i64 %i.f, %8                        ; 4 uses
  %i.cn = icmp sgt i64 %i.cm, 4
  br i1 %i.cn, label %bb.w, label %bb.x, !prof !891

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr align 4 %1, i64 %i.cm, i1 false)
  br label %bb.z

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.co = icmp eq i64 %i.cm, 4
  br i1 %i.co, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cp = load i32, ptr %1, align 4, !tbaa !4
  store i32 %i.cp, ptr %i.cl, align 4, !tbaa !4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.cq = getelementptr inbounds i8, ptr %i.cl, i64 %i.cm
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZdlPv(ptr noundef nonnull %i.bq) #23
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.z, %bb.aa
  store ptr %13, ptr %0, align 8, !tbaa !85
  store ptr %i.cq, ptr %i.c, align 8, !tbaa !91
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %7
  store ptr %i.cr, ptr %i.a, align 8, !tbaa !159
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block123, %middle.block137, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIeSaIeEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPeS1_EEmRKe(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 16 dereferenceable(16) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPeeEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93   ; 13 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load x86_fp80, ptr %3, align 16, !tbaa !92 ; 11 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.k = sub i64 %i.f, %i.j                       ; 5 uses
  %i.l = ashr exact i64 %i.k, 4                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !891

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 16 %i.d, ptr nonnull align 16 %i.o, i64 %.idx.neg, i1 false)
  %.pre98 = load ptr, ptr %i.c, align 8, !tbaa !93
  br label %_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load x86_fp80, ptr %i.o, align 16, !tbaa !92
  store x86_fp80 %i.s, ptr %i.d, align 16, !tbaa !92
  br label %_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre98, %bb.e ]
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !93
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !891

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.z, ptr align 16 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 16
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.ac = load x86_fp80, ptr %1, align 16, !tbaa !92
  store x86_fp80 %i.ac, ptr %i.ab, align 16, !tbaa !92
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 4                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -16                  ; 2 uses
  %i.af = lshr exact i64 %i.ae, 4
  %i.ag = add nuw nsw i64 %i.af, 1
  %xtraiter = and i64 %i.ag, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %bb.k, %.lr.ph.i.i.i.prol
  %.07.i.i.i.prol = phi ptr [ %i.ah, %.lr.ph.i.i.i.prol ], [ %1, %bb.k ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %bb.k ]
  store x86_fp80 %i.i, ptr %.07.i.i.i.prol, align 16, !tbaa !92
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !900

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %bb.k
  %.07.i.i.i.unr = phi ptr [ %1, %bb.k ], [ %i.ah, %.lr.ph.i.i.i.prol ]
  %i.ai = icmp ult i64 %i.ae, 112
  br i1 %i.ai, label %_ZSt4fillIPeeEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  store x86_fp80 %i.i, ptr %.07.i.i.i, align 16, !tbaa !92
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 16
  store x86_fp80 %i.i, ptr %i.aj, align 16, !tbaa !92
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 32
  store x86_fp80 %i.i, ptr %i.ak, align 16, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 48
  store x86_fp80 %i.i, ptr %i.al, align 16, !tbaa !92
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 64
  store x86_fp80 %i.i, ptr %i.am, align 16, !tbaa !92
  %i.an = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 80
  store x86_fp80 %i.i, ptr %i.an, align 16, !tbaa !92
  %i.ao = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 96
  store x86_fp80 %i.i, ptr %i.ao, align 16, !tbaa !92
  %i.ap = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 112
  store x86_fp80 %i.i, ptr %i.ap, align 16, !tbaa !92
  %i.aq = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.7 = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i.i.i.7, label %_ZSt4fillIPeeEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !175

bb.l:                                             ; preds = %bb.c
  %i.ar = icmp eq i64 %2, %i.l
  br i1 %i.ar, label %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.as, 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.m
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i ], [ %i.d, %bb.m ] ; 2 uses
  store x86_fp80 %i.i, ptr %.07.i.i.i.i.i.i.i, align 16, !tbaa !92
  %i.au = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.au, %i.at
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
  %4 = add nsw i64 %.sroa.speculated.i, %i.be     ; 2 uses
  %5 = icmp ult i64 %4, %i.be
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 576460752303423487)
  %7 = select i1 %5, i64 576460752303423487, i64 %6 ; 3 uses
  %8 = ptrtoint ptr %1 to i64                     ; 2 uses
  %9 = sub i64 %8, %i.bc                          ; 4 uses
  %.not.i = icmp eq i64 %7, 0
  br i1 %.not.i, label %bb.s, label %10

10:                                               ; preds = %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit
  %11 = shl nuw nsw i64 %7, 4
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #22
  br label %bb.s

bb.s:                                             ; preds = %10, %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit
  %13 = phi ptr [ %12, %10 ], [ null, %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bh = getelementptr inbounds i8, ptr %13, i64 %9 ; 4 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 4       ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx.i.i.i.i.i75
  %i.bj = load x86_fp80, ptr %3, align 16, !tbaa !92 ; 9 uses
  %i.bk = add nsw i64 %.idx.i.i.i.i.i75, -16      ; 2 uses
  %i.bl = lshr exact i64 %i.bk, 4
  %i.bm = add nuw nsw i64 %i.bl, 1
  %xtraiter115 = and i64 %i.bm, 7                 ; 2 uses
  %lcmp.mod116.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod116.not, label %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i76.prol

.lr.ph.i.i.i.i.i.i.i76.prol:                      ; preds = %bb.s, %.lr.ph.i.i.i.i.i.i.i76.prol
  %.07.i.i.i.i.i.i.i77.prol = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i76.prol ], [ %i.bh, %bb.s ] ; 2 uses
  %prol.iter117 = phi i64 [ %prol.iter117.next, %.lr.ph.i.i.i.i.i.i.i76.prol ], [ 0, %bb.s ]
  store x86_fp80 %i.bj, ptr %.07.i.i.i.i.i.i.i77.prol, align 16, !tbaa !92
  %i.bn = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77.prol, i64 16 ; 2 uses
  %prol.iter117.next = add i64 %prol.iter117, 1   ; 2 uses
  %prol.iter117.cmp.not = icmp eq i64 %prol.iter117.next, %xtraiter115
  br i1 %prol.iter117.cmp.not, label %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i76.prol, !llvm.loop !901

.lr.ph.i.i.i.i.i.i.i76.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i76.prol, %bb.s
  %.07.i.i.i.i.i.i.i77.unr = phi ptr [ %i.bh, %bb.s ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i76.prol ]
  %i.bo = icmp ult i64 %i.bk, 112
  br i1 %i.bo, label %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i76
  %.07.i.i.i.i.i.i.i77 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.07.i.i.i.i.i.i.i77.unr, %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit ] ; 9 uses
  store x86_fp80 %i.bj, ptr %.07.i.i.i.i.i.i.i77, align 16, !tbaa !92
  %i.bp = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 16
  store x86_fp80 %i.bj, ptr %i.bp, align 16, !tbaa !92
  %i.bq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 32
  store x86_fp80 %i.bj, ptr %i.bq, align 16, !tbaa !92
  %i.br = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 48
  store x86_fp80 %i.bj, ptr %i.br, align 16, !tbaa !92
  %i.bs = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 64
  store x86_fp80 %i.bj, ptr %i.bs, align 16, !tbaa !92
  %i.bt = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 80
  store x86_fp80 %i.bj, ptr %i.bt, align 16, !tbaa !92
  %i.bu = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 96
  store x86_fp80 %i.bj, ptr %i.bu, align 16, !tbaa !92
  %i.bv = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 112
  store x86_fp80 %i.bj, ptr %i.bv, align 16, !tbaa !92
  %i.bw = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i78.7 = icmp eq ptr %i.bw, %i.bi
  br i1 %.not.i.i.i.i.i.i.i78.7, label %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !175

_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit
  %i.bx = icmp sgt i64 %9, 16
  br i1 %i.bx, label %bb.t, label %bb.u, !prof !891

bb.t:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 16 %13, ptr align 16 %i.bb, i64 %9, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.by = icmp eq i64 %9, 16
  br i1 %i.by, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %bb.u
  %i.bz = load x86_fp80, ptr %i.bb, align 16, !tbaa !92
  store x86_fp80 %i.bz, ptr %13, align 16, !tbaa !92
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit: ; preds = %bb.v, %bb.u, %bb.t
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %2 ; 3 uses
  %i.cb = sub i64 %i.f, %8                        ; 4 uses
  %i.cc = icmp sgt i64 %i.cb, 16
  br i1 %i.cc, label %bb.w, label %bb.x, !prof !891

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.ca, ptr align 16 %1, i64 %i.cb, i1 false)
  br label %bb.z

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit
  %i.cd = icmp eq i64 %i.cb, 16
  br i1 %i.cd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ce = load x86_fp80, ptr %1, align 16, !tbaa !92
  store x86_fp80 %i.ce, ptr %i.ca, align 16, !tbaa !92
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.cf = getelementptr inbounds i8, ptr %i.ca, i64 %i.cb
  %.not.i82 = icmp eq ptr %i.bb, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIeSaIeEE13_M_deallocateEPem.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZdlPv(ptr noundef nonnull %i.bb) #23
  br label %_ZNSt12_Vector_baseIeSaIeEE13_M_deallocateEPem.exit

_ZNSt12_Vector_baseIeSaIeEE13_M_deallocateEPem.exit: ; preds = %bb.z, %bb.aa
  store ptr %13, ptr %0, align 8, !tbaa !89
  store ptr %i.cf, ptr %i.c, align 8, !tbaa !93
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %13, i64 %7
  store ptr %i.cg, ptr %i.a, align 8, !tbaa !157
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
  %3 = ashr exact i64 %i.g, 5                     ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
  %5 = icmp ult i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 288230376151711743)
  %7 = select i1 %5, i64 288230376151711743, i64 %6 ; 3 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.f
  %.not.i = icmp eq i64 %7, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %10

10:                                               ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %11 = shl nuw nsw i64 %7, 5
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #22
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %10
  %13 = phi ptr [ %12, %10 ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 %9 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !79
  %i.k = load ptr, ptr %2, align 8, !tbaa !76     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !80   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.m, ptr %i.a, align 8, !tbaa !100
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.o, ptr %i.i, align 8, !tbaa !76
  %i.p = load i64, ptr %i.a, align 8, !tbaa !100
  store i64 %i.p, ptr %i.j, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.q = phi ptr [ %i.o, %.noexc ], [ %i.j, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !81
  store i8 %i.r, ptr %i.q, align 1, !tbaa !81
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !80
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not10.i.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %13, %bb.e ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
  call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.w, ptr %.012.i.i.i.i, align 8, !tbaa !79, !alias.scope !902, !noalias !905
  %i.x = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !76, !alias.scope !905, !noalias !902 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !80, !alias.scope !905, !noalias !902 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !907
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.x, ptr %.012.i.i.i.i, align 8, !tbaa !76, !alias.scope !902, !noalias !905
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !81, !alias.scope !905, !noalias !902
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !81, !alias.scope !902, !noalias !905
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !80, !alias.scope !905, !noalias !902
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.af = phi i64 [ %i.ab, %bb.f ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !80, !alias.scope !902, !noalias !905
  store ptr %i.y, ptr %.0911.i.i.i.i, align 8, !tbaa !76, !alias.scope !905, !noalias !902
  store i64 0, ptr %i.ag, align 8, !tbaa !80, !alias.scope !905, !noalias !902
  store i8 0, ptr %i.y, align 8, !tbaa !81, !alias.scope !905, !noalias !902
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !877

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i = phi ptr [ %13, %bb.e ], [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33
  %.012.i.i.i.i28 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33 ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i.i29 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !908)
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i.i28, align 8, !tbaa !79, !alias.scope !908, !noalias !911
  %i.am = load ptr, ptr %.0911.i.i.i.i29, align 8, !tbaa !76, !alias.scope !911, !noalias !908 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i.i27
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !80, !alias.scope !911, !noalias !908 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !913
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i.i27
  store ptr %i.am, ptr %.012.i.i.i.i28, align 8, !tbaa !76, !alias.scope !908, !noalias !911
  %i.at = load i64, ptr %i.an, align 8, !tbaa !81, !alias.scope !911, !noalias !908
  store i64 %i.at, ptr %i.al, align 8, !tbaa !81, !alias.scope !908, !noalias !911
  %.phi.trans.insert.i.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %.pre.i.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i.i31, align 8, !tbaa !80, !alias.scope !911, !noalias !908
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.g
  %i.au = phi i64 [ %i.aq, %bb.g ], [ %.pre.i.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !80, !alias.scope !908, !noalias !911
  store ptr %i.an, ptr %.0911.i.i.i.i29, align 8, !tbaa !76, !alias.scope !911, !noalias !908
  store i64 0, ptr %i.av, align 8, !tbaa !80, !alias.scope !911, !noalias !908
  store i8 0, ptr %i.an, align 8, !tbaa !81, !alias.scope !911, !noalias !908
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.ax, %i.c
  br i1 %.not.i.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i.i27, !llvm.loop !877

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i.i35 = phi ptr [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33 ]
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  call void @_ZdlPv(ptr noundef nonnull %i.d) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %13, ptr %0, align 8, !tbaa !75
  store ptr %.0.lcssa.i.i.i.i35, ptr %i.b, align 8, !tbaa !74
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %13, i64 %7
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !130
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  %i.be = call ptr @__cxa_begin_catch(ptr %i.bd) #21 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %13) #23
  invoke void @__cxa_rethrow() #24
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bb

bb.l:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #25
  unreachable

bb.m:                                             ; preds = %bb.j
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

bb.n:                                             ; preds = %bb.m
  %i.bm = load x86_fp80, ptr %i.bf, align 16, !tbaa !92
  store x86_fp80 %i.bm, ptr %i.bb, align 16, !tbaa !92
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.bn = getelementptr inbounds i8, ptr %i.bb, i64 %i.bj
  store ptr %i.bn, ptr %i.bc, align 8, !tbaa !93
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !93 ; 2 uses
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !89 ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64
end_hunk_1
