Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/LCALSSuite?download=true
inline.NumInlined: 1878
inline.NumDeleted: 548
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 101
begin_hunk_0_@_Z22defineLoopSuiteRunInfoRKSt6vectorI13LoopVariantIDSaIS0_EEPbdd:bb.a
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 %i.alp
  store i8 0, ptr %i.als, align 1, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.alt = load ptr, ptr %i.la, align 16, !tbaa !58
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 32
  store ptr %i.alu, ptr %i.la, align 16, !tbaa !58
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.bq:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.lc, ptr %i.alf, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit1374

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.bq
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.013581434, i32 %.01359) ; 2 uses
  %i.alv = load i32, ptr %i.ii, align 16, !tbaa !173
  %.not1443.a = icmp eq i32 %i.alv, 0
  br i1 %.not1443.a, label %.preheader, label %.lr.ph1430

.lr.ph1430:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.alw = load ptr, ptr %i.ip, align 8, !tbaa !68
  %i.alx = load double, ptr %i.l, align 16, !tbaa !171
  %i.aly = load ptr, ptr %i.ld, align 8, !tbaa !178
  %i.alz = load ptr, ptr %i.lf, align 8
  br label %bb.br

.preheader:                                       ; preds = %bb.bt, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.ama = load ptr, ptr %i.cd, align 8, !tbaa !58
  %i.amb = load ptr, ptr %4, align 8, !tbaa !59   ; 2 uses
  %.not1444 = icmp eq ptr %i.ama, %i.amb
  br i1 %.not1444, label %._crit_edge1433, label %.lr.ph1432

bb.br:                                            ; preds = %.lr.ph1430, %bb.bt
  %indvars.iv = phi i64 [ 0, %.lr.ph1430 ], [ %indvars.iv.next, %bb.bt ] ; 5 uses
  %i.amc = getelementptr inbounds nuw [4 x i8], ptr %i.alw, i64 %indvars.iv ; 2 uses
  %i.amd = load i32, ptr %i.amc, align 4, !tbaa !13
  %i.ame = sitofp i32 %i.amd to double
  %i.amf = fmul double %i.alx, %i.ame
  %i.amg = fdiv double %i.amf, %3
  %i.amh = fptosi double %i.amg to i32            ; 2 uses
  store i32 %i.amh, ptr %i.amc, align 4, !tbaa !13
  %i.ami = lshr i64 %indvars.iv, 6
  %i.amj = getelementptr inbounds nuw [8 x i8], ptr %i.aly, i64 %i.ami
  %i.amk = and i64 %indvars.iv, 63
  %i.aml = shl nuw i64 1, %i.amk
  %i.amm = load i64, ptr %i.amj, align 8, !tbaa !75
  %i.amn = and i64 %i.amm, %i.aml
  %.not1364 = icmp eq i64 %i.amn, 0
  br i1 %.not1364, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.amo = load i32, ptr %i.le, align 8, !tbaa !179
  %i.amp = mul i32 %i.amo, %i.amh
  %i.amq = zext i32 %i.amp to i64
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %.sink = phi i64 [ %i.amq, %bb.bs ], [ 0, %bb.br ]
  %i.amr = getelementptr inbounds nuw [8 x i8], ptr %i.alz, i64 %indvars.iv
  store i64 %.sink, ptr %i.amr, align 8, !tbaa !75
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ams = load i32, ptr %i.ii, align 16, !tbaa !173
  %i.amt = zext i32 %i.ams to i64
  %i.amu = icmp samesign ult i64 %indvars.iv.next, %i.amt
  br i1 %i.amu, label %bb.br, label %.preheader, !llvm.loop !142

._crit_edge1433:                                  ; preds = %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit, %.preheader
  call void @_ZN8LoopStatD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.amv = load ptr, ptr %8, align 8, !tbaa !60   ; 2 uses
  %i.amw = icmp eq ptr %i.amv, %i.ig
  br i1 %i.amw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1083, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1081

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1081: ; preds = %._crit_edge1433
  call void @_ZdlPv(ptr noundef %i.amv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1083

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1083: ; preds = %._crit_edge1433, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1081
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %indvars.iv.next1478 = add nuw nsw i64 %indvars.iv1477, 1 ; 2 uses
  %i.amx = load i32, ptr %i.ie, align 16, !tbaa !172
  %i.amy = zext i32 %i.amx to i64
  %i.amz = icmp samesign ult i64 %indvars.iv.next1478, %i.amy
  br i1 %i.amz, label %bb.ax, label %._crit_edge1438, !llvm.loop !143

.lr.ph1432:                                       ; preds = %.preheader, %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit
  %i.ana = phi ptr [ %i.art, %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit ], [ %i.amb, %.preheader ]
  %i.anb = phi i64 [ %i.arr, %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit ], [ 0, %.preheader ]
  %.01431 = phi i32 [ %i.arq, %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit ], [ 0, %.preheader ]
  %i.anc = load ptr, ptr %i.lg, align 16, !tbaa !180 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.anc, null
  br i1 %.not10.i.i.i.i, label %bb.bw, label %.lr.ph.i.i.i.i1084

.lr.ph.i.i.i.i1084:                               ; preds = %.lr.ph1432
  %i.and = getelementptr inbounds nuw [32 x i8], ptr %i.ana, i64 %i.anb ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 8
  %i.anf = load i64, ptr %i.ane, align 8, !tbaa !63 ; 4 uses
  %i.ang = load ptr, ptr %i.and, align 8          ; 2 uses
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i1084
  %.012.i.i.i.i = phi ptr [ %i.anc, %.lr.ph.i.i.i.i1084 ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.lh, %.lr.ph.i.i.i.i1084 ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ]
  %i.anh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.ani = load i64, ptr %i.anh, align 8, !tbaa !63 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.anf, i64 %i.ani) ; 2 uses
  %i.anj = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.anj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.bu
  %i.ank = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.anl = load ptr, ptr %i.ank, align 8, !tbaa !60
  %i.anm = call i32 @memcmp(ptr noundef %i.anl, ptr noundef %i.ang, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.anm, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.bu
  %i.ann = sub i64 %i.ani, %i.anf
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ann, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.anm, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.ano = icmp slt i32 %.0.i.i.i.i.i.i.i, 0      ; 2 uses
  %.19.i.i.i.i = select i1 %i.ano, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.ano, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i.i1085 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i1085, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %bb.bu, !llvm.loop !144

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.anp = icmp eq ptr %.19.i.i.i.i, %i.lh
  br i1 %i.anp, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.anq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.anr = load i64, ptr %i.anq, align 8, !tbaa !63 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.anr, i64 %i.anf) ; 2 uses
  %i.ans = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ans, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.bv
  %i.ant = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.anu = load ptr, ptr %i.ant, align 8, !tbaa !60
  %i.anv = call i32 @memcmp(ptr noundef %i.ang, ptr noundef %i.anu, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.anv, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.bv
  %i.anw = sub i64 %i.anf, %i.anr
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.anw, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.anv, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.anx = icmp slt i32 %.0.i.i.i.i.i.i, 0
  %spec.select.i.i.i = select i1 %i.anx, ptr %i.lh, ptr %.19.i.i.i.i
  br label %bb.bw

bb.bw:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %.lr.ph1432
  %.sroa.0.0.i.i.i = phi ptr [ %i.lh, %.lr.ph1432 ], [ %i.lh, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i ], [ %spec.select.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.any = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 64
  %i.anz = load ptr, ptr %i.any, align 8, !tbaa !102 ; 4 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anz, i64 8 ; 4 uses
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !183 ; 5 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anz, i64 16 ; 2 uses
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !184
  %.not.i1086 = icmp eq ptr %i.aob, %i.aod
  br i1 %.not.i1086, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN8LoopStatC2ERKS_(ptr noundef nonnull align 8 dereferenceable(280) %i.aob, ptr noundef nonnull align 8 dereferenceable(280) %9)
          to label %.noexc1087 unwind label %.loopexit

.noexc1087:                                       ; preds = %bb.bx
  %i.aoe = load ptr, ptr %i.aoa, align 8, !tbaa !183
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 280
  store ptr %i.aof, ptr %i.aoa, align 8, !tbaa !183
  br label %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit

bb.by:                                            ; preds = %bb.bw
  %i.aog = load ptr, ptr %i.anz, align 8, !tbaa !185 ; 5 uses
  %i.aoh = ptrtoint ptr %i.aob to i64
  %i.aoi = ptrtoint ptr %i.aog to i64
  %i.aoj = sub i64 %i.aoh, %i.aoi                 ; 3 uses
  %i.aok = icmp eq i64 %i.aoj, 9223372036854775800
  br i1 %i.aok, label %bb.bz, label %_ZNKSt6vectorI8LoopStatSaIS0_EE12_M_check_lenEmPKc.exit.i

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #24
          to label %.noexc1103.a unwind label %.loopexit.split-lp

.noexc1103.a:                                     ; preds = %bb.bz
  unreachable

_ZNKSt6vectorI8LoopStatSaIS0_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.by
  %i.aol = sdiv exact i64 %i.aoj, 280             ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.aol, i64 1)
  %43 = add nsw i64 %.sroa.speculated.i.i, %i.aol ; 2 uses
  %i.aom = icmp ult i64 %43, %i.aol
  %i.aon = call i64 @llvm.umin.i64(i64 %43, i64 32940614417338485)
  %i.aoo = select i1 %i.aom, i64 32940614417338485, i64 %i.aon ; 3 uses
  %.not.i.i1102 = icmp ne i64 %i.aoo, 0
  call void @llvm.assume(i1 %.not.i.i1102)
  %i.aop = mul nuw nsw i64 %i.aoo, 280
  %i.aoq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aop) #22
          to label %.noexc1104 unwind label %.loopexit ; 6 uses

.noexc1104:                                       ; preds = %_ZNKSt6vectorI8LoopStatSaIS0_EE12_M_check_lenEmPKc.exit.i
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 %i.aoj
  invoke void @_ZN8LoopStatC2ERKS_(ptr noundef nonnull align 8 dereferenceable(280) %i.aor, ptr noundef nonnull align 8 dereferenceable(280) %9)
          to label %_ZNSt16allocator_traitsISaI8LoopStatEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit.i unwind label %bb.cc

_ZNSt16allocator_traitsISaI8LoopStatEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit.i: ; preds = %.noexc1104
  %.not10.i1107 = icmp eq ptr %i.aog, %i.aob
  br i1 %.not10.i1107, label %_ZSt14__relocate_a_1IP8LoopStatS1_SaIS0_EET0_T_S4_S3_RT1_.exit, label %.lr.ph.i1108

.lr.ph.i1108:                                     ; preds = %_ZNSt16allocator_traitsISaI8LoopStatEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit.i, %.lr.ph.i1108
  %.012.i1109 = phi ptr [ %i.arh, %.lr.ph.i1108 ], [ %i.aoq, %_ZNSt16allocator_traitsISaI8LoopStatEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit.i ] ; 24 uses
  %.0911.i1110 = phi ptr [ %i.arg, %.lr.ph.i1108 ], [ %i.aog, %_ZNSt16allocator_traitsISaI8LoopStatEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit.i ] ; 25 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.012.i1109, ptr noundef nonnull align 8 dereferenceable(280) %.0911.i1110, i64 16, i1 false), !alias.scope !188
  %i.aos = getelementptr inbounds nuw i8, ptr %.012.i1109, i64 16
  %i.aot = getelementptr inbounds nuw i8, ptr %.0911.i1110, i64 16 ; 2 uses
  %i.aou = load <2 x ptr>, ptr %i.aot, align 8, !tbaa !103, !alias.scope !187, !noalias !186
  store <2 x ptr> %i.aou, ptr %i.aos, align 8, !tbaa !103, !alias.scope !186, !noalias !187
  %i.aov = getelementptr inbounds nuw i8, ptr %.012.i1109, i64 32
  %i.aow = getelementptr inbounds nuw i8, ptr %.0911.i1110, i64 32
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !104, !alias.scope !187, !noalias !186
  store ptr %i.aox, ptr %i.aov, align 8, !tbaa !104, !alias.scope !186, !noalias !187
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aot, i8 0, i64 24, i1 false), !alias.scope !187, !noalias !186
  %i.aoy = getelementptr inbounds nuw i8, ptr %.012.i1109, i64 40
  %i.aoz = getelementptr inbounds nuw i8, ptr %.0911.i1110, i64 40 ; 2 uses
  %i.apa = load <2 x ptr>, ptr %i.aoz, align 8, !tbaa !105, !alias.scope !187, !noalias !186
  store <2 x ptr> %i.apa, ptr %i.aoy, align 8, !tbaa !105, !alias.scope !186, !noalias !187
  %i.apb = getelementptr inbounds nuw i8, ptr %.012.i1109, i64 56
  %i.apc = getelementptr inbounds nuw i8, ptr %.0911.i1110, i64 56
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !106, !alias.scope !187, !noalias !186
  store ptr %i.apd, ptr %i.apb, align 8, !tbaa !106, !alias.scope !186, !noalias !187
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aoz, i8 0, i64 24, i1 false), !alias.scope !187, !noalias !186
  %i.ape = getelementptr inbounds nuw i8, ptr %.012.i1109, i64 64
  %i.apf = getelementptr inbounds nuw i8, ptr %.0911.i1110, i64 64 ; 2 uses
  %i.apg = load <2 x ptr>, ptr %i.apf, align 8, !tbaa !107, !alias.scope !187, !noalias !186
  store <2 x ptr> %i.apg, ptr %i.ape, align 8, !tbaa !107, !alias.scope !186, !noalias !187
  %i.aph = getelementptr inbounds nuw i8, ptr %.012.i1109, i64 80
  %i.api = getelementptr inbounds nuw i8, ptr %.0911.i1110, i64 80
  %i.apj = load ptr, ptr %i.api, align 8, !tbaa !108, !alias.scope !187, !noalias !186
  store ptr %i.apj, ptr %i.aph, align 8, !tbaa !108, !alias.scope !186, !noalias !187
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.apf, i8 0, i64 24, i1 false), !alias.scope !187, !noalias !186
  %i.apk = getelementptr inbounds nuw i8, ptr %.012.i1109, i64 88
  %i.apl = getelementptr inbounds nuw i8, ptr %.0911.i1110, i64 88 ; 2 uses
  %i.apm = load <2 x ptr>, ptr %i.apl, align 8, !tbaa !107, !alias.scope !187, !noalias !186
  store <2 x ptr> %i.apm, ptr %i.apk, align 8, !tbaa !107, !alias.scope !186, !noalias !187
  %i.apn = getelementptr inbounds nuw i8, ptr %.012.i1109, i64 104
  %i.apo = getelementptr inbounds nuw i8, ptr %.0911.i1110, i64 104
  %i.app = load ptr, ptr %i.apo, align 8, !tbaa !108, !alias.scope !187, !noalias !186
  store ptr %i.app, ptr %i.apn, align 8, !tbaa !108, !alias.scope !186, !noalias !187
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.apl, i8 0, i64 24, i1 false), !alias.scope !187, !noalias !186
  %i.apq = getelementptr inbounds nuw i8, ptr %.012.i1109, i64 112
  %i.apr = getelementptr inbounds nuw i8, ptr %.0911.i1110, i64 112 ; 2 uses
  %i.aps = load <2 x ptr>, ptr %i.apr, align 8, !tbaa !107, !alias.scope !187, !noalias !186
  store <2 x ptr> %i.aps, ptr %i.apq, align 8, !tbaa !107, !alias.scope !186, !noalias !187
  %i.apt = getelementptr inbounds nuw i8, ptr %.012.i1109, i64 128
  %i.apu = getelementptr inbounds nuw i8, ptr %.0911.i1110, i64 128
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !108, !alias.scope !187, !noalias !186
  store ptr %i.apv, ptr %i.apt, align 8, !tbaa !108, !alias.scope !186, !noalias !187
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.apr, i8 0, i64 24, i1 false), !alias.scope !187, !noalias !186
  %i.apw = getelementptr inbounds nuw i8, ptr %.012.i1109, i64 136
  %i.apx = getelementptr inbounds nuw i8, ptr %.0911.i1110, i64 136 ; 2 uses
  %i.apy = load <2 x ptr>, ptr %i.apx, align 8, !tbaa !107, !alias.scope !187, !noalias !186
  store <2 x ptr> %i.apy, ptr %i.apw, align 8, !tbaa !107, !alias.scope !186, !noalias !187
  %i.apz = getelementptr inbounds nuw i8, ptr %.012.i1109, i64 152
  %i.aqa = getelementptr inbounds nuw i8, ptr %.0911.i1110, i64 152
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !108, !alias.scope !187, !noalias !186
  store ptr %i.aqb, ptr %i.apz, align 8, !tbaa !108, !alias.scope !186, !noalias !187
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.apx, i8 0, i64 24, i1 false), !alias.scope !187, !noalias !186
  %i.aqc = getelementptr inbounds nuw i8, ptr %.012.i1109, i64 160
  %i.aqd = getelementptr inbounds nuw i8, ptr %.0911.i1110, i64 160 ; 2 uses
  %i.aqe = load <2 x ptr>, ptr %i.aqd, align 8, !tbaa !107, !alias.scope !187, !noalias !186
  store <2 x ptr> %i.aqe, ptr %i.aqc, align 8, !tbaa !107, !alias.scope !186, !noalias !187
  %i.aqf = getelementptr inbounds nuw i8, ptr %.012.i1109, i64 176
  %i.aqg = getelementptr inbounds nuw i8, ptr %.0911.i1110, i64 176
  %i.aqh = load ptr, ptr %i.aqg, align 8, !tbaa !108, !alias.scope !187, !noalias !186
  store ptr %i.aqh, ptr %i.aqf, align 8, !tbaa !108, !alias.scope !186, !noalias !187
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqd, i8 0, i64 24, i1 false), !alias.scope !187, !noalias !186
  %i.aqi = getelementptr inbounds nuw i8, ptr %.012.i1109, i64 184
  %i.aqj = getelementptr inbounds nuw i8, ptr %.0911.i1110, i64 184 ; 2 uses
  %i.aqk = load <2 x ptr>, ptr %i.aqj, align 8, !tbaa !107, !alias.scope !187, !noalias !186
  store <2 x ptr> %i.aqk, ptr %i.aqi, align 8, !tbaa !107, !alias.scope !186, !noalias !187
  %i.aql = getelementptr inbounds nuw i8, ptr %.012.i1109, i64 200
  %i.aqm = getelementptr inbounds nuw i8, ptr %.0911.i1110, i64 200
  %i.aqn = load ptr, ptr %i.aqm, align 8, !tbaa !108, !alias.scope !187, !noalias !186
  store ptr %i.aqn, ptr %i.aql, align 8, !tbaa !108, !alias.scope !186, !noalias !187
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqj, i8 0, i64 24, i1 false), !alias.scope !187, !noalias !186
  %i.aqo = getelementptr inbounds nuw i8, ptr %.012.i1109, i64 208
  %i.aqp = getelementptr inbounds nuw i8, ptr %.0911.i1110, i64 208 ; 2 uses
  %i.aqq = load <2 x ptr>, ptr %i.aqp, align 8, !tbaa !109, !alias.scope !187, !noalias !186
  store <2 x ptr> %i.aqq, ptr %i.aqo, align 8, !tbaa !109, !alias.scope !186, !noalias !187
  %i.aqr = getelementptr inbounds nuw i8, ptr %.012.i1109, i64 224
  %i.aqs = getelementptr inbounds nuw i8, ptr %.0911.i1110, i64 224
  %i.aqt = load ptr, ptr %i.aqs, align 8, !tbaa !110, !alias.scope !187, !noalias !186
  store ptr %i.aqt, ptr %i.aqr, align 8, !tbaa !110, !alias.scope !186, !noalias !187
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqp, i8 0, i64 24, i1 false), !alias.scope !187, !noalias !186
  %i.aqu = getelementptr inbounds nuw i8, ptr %.012.i1109, i64 232
  %i.aqv = getelementptr inbounds nuw i8, ptr %.0911.i1110, i64 232 ; 2 uses
  %i.aqw = load <2 x ptr>, ptr %i.aqv, align 8, !tbaa !109, !alias.scope !187, !noalias !186
  store <2 x ptr> %i.aqw, ptr %i.aqu, align 8, !tbaa !109, !alias.scope !186, !noalias !187
  %i.aqx = getelementptr inbounds nuw i8, ptr %.012.i1109, i64 248
  %i.aqy = getelementptr inbounds nuw i8, ptr %.0911.i1110, i64 248
  %i.aqz = load ptr, ptr %i.aqy, align 8, !tbaa !110, !alias.scope !187, !noalias !186
  store ptr %i.aqz, ptr %i.aqx, align 8, !tbaa !110, !alias.scope !186, !noalias !187
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqv, i8 0, i64 24, i1 false), !alias.scope !187, !noalias !186
  %i.ara = getelementptr inbounds nuw i8, ptr %.012.i1109, i64 256
  %i.arb = getelementptr inbounds nuw i8, ptr %.0911.i1110, i64 256 ; 2 uses
  %i.arc = load <2 x ptr>, ptr %i.arb, align 8, !tbaa !107, !alias.scope !187, !noalias !186
  store <2 x ptr> %i.arc, ptr %i.ara, align 8, !tbaa !107, !alias.scope !186, !noalias !187
  %i.ard = getelementptr inbounds nuw i8, ptr %.012.i1109, i64 272
  %i.are = getelementptr inbounds nuw i8, ptr %.0911.i1110, i64 272
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !108, !alias.scope !187, !noalias !186
  store ptr %i.arf, ptr %i.ard, align 8, !tbaa !108, !alias.scope !186, !noalias !187
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.arb, i8 0, i64 24, i1 false), !alias.scope !187, !noalias !186
  call void @_ZN8LoopStatD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %.0911.i1110) #21, !noalias !186
  %i.arg = getelementptr inbounds nuw i8, ptr %.0911.i1110, i64 280 ; 2 uses
  %i.arh = getelementptr inbounds nuw i8, ptr %.012.i1109, i64 280 ; 2 uses
  %.not.i1111 = icmp eq ptr %i.arg, %i.aob
  br i1 %.not.i1111, label %_ZSt14__relocate_a_1IP8LoopStatS1_SaIS0_EET0_T_S4_S3_RT1_.exit, label %.lr.ph.i1108, !llvm.loop !148

_ZSt14__relocate_a_1IP8LoopStatS1_SaIS0_EET0_T_S4_S3_RT1_.exit: ; preds = %.lr.ph.i1108, %_ZNSt16allocator_traitsISaI8LoopStatEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit.i
  %.0.lcssa.i1113 = phi ptr [ %i.aoq, %_ZNSt16allocator_traitsISaI8LoopStatEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit.i ], [ %i.arh, %.lr.ph.i1108 ]
  %i.ari = getelementptr inbounds nuw i8, ptr %.0.lcssa.i1113, i64 280
  %.not.i26.i = icmp eq ptr %i.aog, null
  br i1 %.not.i26.i, label %.noexc1088, label %bb.ca

bb.ca:                                            ; preds = %_ZSt14__relocate_a_1IP8LoopStatS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  call void @_ZdlPv(ptr noundef nonnull %i.aog) #23
  br label %.noexc1088

bb.cb:                                            ; preds = %bb.cc
  %i.arj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.cd

bb.cc:                                            ; preds = %.noexc1104
  %i.ark = landingpad { ptr, i32 }
          catch ptr null
  %i.arl = extractvalue { ptr, i32 } %i.ark, 0
  %i.arm = call ptr @__cxa_begin_catch(ptr %i.arl) #21 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.aoq) #23
  invoke void @__cxa_rethrow() #24
          to label %bb.ce unwind label %bb.cb

bb.cd:                                            ; preds = %bb.cb
  %i.arn = landingpad { ptr, i32 }
          catch ptr null
  %i.aro = extractvalue { ptr, i32 } %i.arn, 0
  call void @__clang_call_terminate(ptr %i.aro) #25
  unreachable

bb.ce:                                            ; preds = %bb.cc
  unreachable

.noexc1088:                                       ; preds = %bb.ca, %_ZSt14__relocate_a_1IP8LoopStatS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  store ptr %i.aoq, ptr %i.anz, align 8, !tbaa !185
  store ptr %i.ari, ptr %i.aoa, align 8, !tbaa !183
  %i.arp = getelementptr inbounds nuw [280 x i8], ptr %i.aoq, i64 %i.aoo
  store ptr %i.arp, ptr %i.aoc, align 8, !tbaa !184
  br label %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit: ; preds = %.noexc1088, %.noexc1087
  %i.arq = add i32 %.01431, 1                     ; 2 uses
  %i.arr = zext i32 %i.arq to i64                 ; 2 uses
  %i.ars = load ptr, ptr %i.cd, align 8, !tbaa !58
  %i.art = load ptr, ptr %4, align 8, !tbaa !59   ; 2 uses
  %i.aru = ptrtoint ptr %i.ars to i64
  %i.arv = ptrtoint ptr %i.art to i64
  %i.arw = sub i64 %i.aru, %i.arv
  %i.arx = ashr exact i64 %i.arw, 5
  %i.ary = icmp ugt i64 %i.arx, %i.arr
  br i1 %i.ary, label %.lr.ph1432, label %._crit_edge1433, !llvm.loop !149

.loopexit:                                        ; preds = %bb.bx, %_ZNKSt6vectorI8LoopStatSaIS0_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.bz
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit1374, %.loopexit.split-lp1375, %bb.cb, %bb.bg
  %.pn266 = phi { ptr, i32 } [ %i.arj, %bb.cb ], [ %i.ob, %bb.bg ], [ %lpad.loopexit.split-lp1377, %.loopexit.split-lp1375 ], [ %lpad.loopexit1376, %.loopexit1374 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN8LoopStatD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %9) #21
  br label %bb.cf

bb.cf:                                            ; preds = %.body, %bb.ba
  %.pn266.pn = phi { ptr, i32 } [ %.pn266, %.body ], [ %i.mu, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.arz = load ptr, ptr %8, align 8, !tbaa !60   ; 2 uses
  %i.asa = icmp eq ptr %i.arz, %i.ig
  br i1 %i.asa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1091, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1089

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIeSaIeEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPeS1_EEmRKe:bb.a
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.as, 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.m
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i ], [ %i.d, %bb.m ] ; 2 uses
  store x86_fp80 %i.i, ptr %.07.i.i.i.i.i.i.i, align 16, !tbaa !73
  %i.au = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.au, %i.at
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !74
  %i.av = icmp sgt i64 %i.k, 16
  br i1 %i.av, label %bb.n, label %bb.o, !prof !139

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 16 %.0.i.i.i.i.i, ptr align 16 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !74
  br label %_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit
  %i.aw = icmp eq i64 %i.k, 16
  br i1 %i.aw, label %bb.p, label %_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.ax = load x86_fp80, ptr %1, align 16, !tbaa !73
  store x86_fp80 %i.ax, ptr %.0.i.i.i.i.i, align 16, !tbaa !73
  br label %_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.ay = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.k
  store ptr %i.az, ptr %i.c, align 8, !tbaa !74
  %.not6.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not6.i.i.i70, label %_ZSt4fillIPeeEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit69, %.lr.ph.i.i.i71
  %.07.i.i.i72 = phi ptr [ %i.ba, %.lr.ph.i.i.i71 ], [ %1, %_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit69 ] ; 2 uses
  store x86_fp80 %i.i, ptr %.07.i.i.i72, align 16, !tbaa !73
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i.i72, i64 16 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.ba, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPeeEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !3

bb.q:                                             ; preds = %bb.b
  %i.bb = load ptr, ptr %0, align 8, !tbaa !71    ; 5 uses
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
  %i.bs = load x86_fp80, ptr %3, align 16, !tbaa !73 ; 9 uses
  %i.bt = add nsw i64 %.idx.i.i.i.i.i75, -16      ; 2 uses
  %i.bu = lshr exact i64 %i.bt, 4
  %i.bv = add nuw nsw i64 %i.bu, 1
  %xtraiter115 = and i64 %i.bv, 7                 ; 2 uses
  %lcmp.mod116.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod116.not, label %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i76.prol

.lr.ph.i.i.i.i.i.i.i76.prol:                      ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i.i76.prol
  %.07.i.i.i.i.i.i.i77.prol = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i76.prol ], [ %i.bq, %bb.t ] ; 2 uses
  %prol.iter117 = phi i64 [ %prol.iter117.next, %.lr.ph.i.i.i.i.i.i.i76.prol ], [ 0, %bb.t ]
  store x86_fp80 %i.bs, ptr %.07.i.i.i.i.i.i.i77.prol, align 16, !tbaa !73
  %i.bw = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77.prol, i64 16 ; 2 uses
  %prol.iter117.next = add i64 %prol.iter117, 1   ; 2 uses
  %prol.iter117.cmp.not = icmp eq i64 %prol.iter117.next, %xtraiter115
  br i1 %prol.iter117.cmp.not, label %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i76.prol, !llvm.loop !897

.lr.ph.i.i.i.i.i.i.i76.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i76.prol, %bb.t
  %.07.i.i.i.i.i.i.i77.unr = phi ptr [ %i.bq, %bb.t ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i76.prol ]
  %i.bx = icmp ult i64 %i.bt, 112
  br i1 %i.bx, label %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i76
  %.07.i.i.i.i.i.i.i77 = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.07.i.i.i.i.i.i.i77.unr, %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit ] ; 9 uses
  store x86_fp80 %i.bs, ptr %.07.i.i.i.i.i.i.i77, align 16, !tbaa !73
  %i.by = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 16
  store x86_fp80 %i.bs, ptr %i.by, align 16, !tbaa !73
  %i.bz = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 32
  store x86_fp80 %i.bs, ptr %i.bz, align 16, !tbaa !73
  %i.ca = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 48
  store x86_fp80 %i.bs, ptr %i.ca, align 16, !tbaa !73
  %i.cb = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 64
  store x86_fp80 %i.bs, ptr %i.cb, align 16, !tbaa !73
  %i.cc = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 80
  store x86_fp80 %i.bs, ptr %i.cc, align 16, !tbaa !73
  %i.cd = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 96
  store x86_fp80 %i.bs, ptr %i.cd, align 16, !tbaa !73
  %i.ce = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 112
  store x86_fp80 %i.bs, ptr %i.ce, align 16, !tbaa !73
  %i.cf = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i78.7 = icmp eq ptr %i.cf, %i.br
  br i1 %.not.i.i.i.i.i.i.i78.7, label %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !3

_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit
  %i.cg = icmp sgt i64 %i.bm, 16
  br i1 %i.cg, label %bb.u, label %bb.v, !prof !139

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 16 %i.bp, ptr align 16 %i.bb, i64 %i.bm, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.ch = icmp eq i64 %i.bm, 16
  br i1 %i.ch, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ci = load x86_fp80, ptr %i.bb, align 16, !tbaa !73
  store x86_fp80 %i.ci, ptr %i.bp, align 16, !tbaa !73
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %2 ; 3 uses
  %i.ck = sub i64 %i.f, %i.bl                     ; 4 uses
  %i.cl = icmp sgt i64 %i.ck, 16
  br i1 %i.cl, label %bb.x, label %bb.y, !prof !139

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.cj, ptr align 16 %1, i64 %i.ck, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit
  %i.cm = icmp eq i64 %i.ck, 16
  br i1 %i.cm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cn = load x86_fp80, ptr %1, align 16, !tbaa !73
  store x86_fp80 %i.cn, ptr %i.cj, align 16, !tbaa !73
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.co = getelementptr inbounds i8, ptr %i.cj, i64 %i.ck
  %.not.i82 = icmp eq ptr %i.bb, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIeSaIeEE13_M_deallocateEPem.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZdlPv(ptr noundef nonnull %i.bb) #23
  br label %_ZNSt12_Vector_baseIeSaIeEE13_M_deallocateEPem.exit

_ZNSt12_Vector_baseIeSaIeEE13_M_deallocateEPem.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.bp, ptr %0, align 8, !tbaa !71
  store ptr %i.co, ptr %i.c, align 8, !tbaa !74
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.bk
  store ptr %i.cp, ptr %i.a, align 8, !tbaa !108
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !59     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #24
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.i      ; 2 uses
  %i.j = icmp ult i64 %3, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %3, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.f
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !62
  %i.s = load ptr, ptr %2, align 8, !tbaa !60     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !63   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.u, ptr %i.a, align 8, !tbaa !75
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.w, ptr %i.q, align 8, !tbaa !60
  %i.x = load i64, ptr %i.a, align 8, !tbaa !75
  store i64 %i.x, ptr %i.r, align 8, !tbaa !64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.u, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !64
  store i8 %i.z, ptr %i.y, align 1, !tbaa !64
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !75  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !63
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !60
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not10.i.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.p, %bb.e ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !904)
  call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i.i, align 8, !tbaa !62, !alias.scope !904, !noalias !905
  %i.af = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !60, !alias.scope !905, !noalias !904 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !63, !alias.scope !905, !noalias !904 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !906
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.af, ptr %.012.i.i.i.i, align 8, !tbaa !60, !alias.scope !904, !noalias !905
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !64, !alias.scope !905, !noalias !904
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !64, !alias.scope !904, !noalias !905
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !63, !alias.scope !905, !noalias !904
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.an = phi i64 [ %i.aj, %bb.f ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !63, !alias.scope !904, !noalias !905
  store ptr %i.ag, ptr %.0911.i.i.i.i, align 8, !tbaa !60, !alias.scope !905, !noalias !904
  store i64 0, ptr %i.ao, align 8, !tbaa !63, !alias.scope !905, !noalias !904
  store i8 0, ptr %i.ag, align 8, !tbaa !64, !alias.scope !905, !noalias !904
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33
  %.012.i.i.i.i28 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i.i29 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !907)
  call void @llvm.experimental.noalias.scope.decl(metadata !908)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i.i28, align 8, !tbaa !62, !alias.scope !907, !noalias !908
  %i.au = load ptr, ptr %.0911.i.i.i.i29, align 8, !tbaa !60, !alias.scope !908, !noalias !907 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i.i27
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !63, !alias.scope !908, !noalias !907 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !909
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i.i27
  store ptr %i.au, ptr %.012.i.i.i.i28, align 8, !tbaa !60, !alias.scope !907, !noalias !908
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !64, !alias.scope !908, !noalias !907
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !64, !alias.scope !907, !noalias !908
  %.phi.trans.insert.i.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %.pre.i.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i.i31, align 8, !tbaa !63, !alias.scope !908, !noalias !907
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.g
  %i.bc = phi i64 [ %i.ay, %bb.g ], [ %.pre.i.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !63, !alias.scope !907, !noalias !908
  store ptr %i.av, ptr %.0911.i.i.i.i29, align 8, !tbaa !60, !alias.scope !908, !noalias !907
  store i64 0, ptr %i.bd, align 8, !tbaa !63, !alias.scope !908, !noalias !907
  store i8 0, ptr %i.av, align 8, !tbaa !64, !alias.scope !908, !noalias !907
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.bf, %i.c
  br i1 %.not.i.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i.i27, !llvm.loop !5

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i.i35 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33 ]
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  call void @_ZdlPv(ptr noundef nonnull %i.d) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !59
  store ptr %.0.lcssa.i.i.i.i35, ptr %i.b, align 8, !tbaa !58
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !98
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  %i.bm = call ptr @__cxa_begin_catch(ptr %i.bl) #21 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.p) #23
  invoke void @__cxa_rethrow() #24
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bj

bb.l:                                             ; preds = %bb.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #25
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !70   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
end_hunk_1
