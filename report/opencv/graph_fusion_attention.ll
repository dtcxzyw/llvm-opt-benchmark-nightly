Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/graph_fusion_attention?download=true
inline.NumInlined: 2644
inline.NumDeleted: 802
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060520ModelFusionAttention9fuseGraphERNS_3PtrINS1_5GraphEEE:bb.a

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i1040: ; preds = %bb.jf, %select.unfold.i.i1038
  %i.ayz = phi i1 [ %i.ayy, %bb.jf ], [ true, %select.unfold.i.i1038 ]
  %i.aza = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %.noexc1046 unwind label %bb.ix ; 2 uses

.noexc1046:                                       ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i1040
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 32
  store i32 %.014671609, ptr %i.azb, align 4, !tbaa !62
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ayz, ptr noundef nonnull %i.aza, ptr noundef nonnull %.sroa.4.0.i.ph.i.i1039, ptr noundef nonnull align 8 dereferenceable(32) %i.jc) #22
  %i.azc = load i64, ptr %i.je, align 8, !tbaa !50
  %i.azd = add i64 %i.azc, 1
  store i64 %i.azd, ptr %i.je, align 8, !tbaa !50
  br label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit1047

_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit1047:  ; preds = %.noexc1046, %bb.je, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit1022
  %i.aze = icmp sgt i32 %.114661610, -1
  br i1 %i.aze, label %bb.jg, label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit1072

bb.jg:                                            ; preds = %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit1047
  %.02022.i.i.i1048 = load ptr, ptr %i.jb, align 8, !tbaa !75 ; 2 uses
  %.not23.i.i.i1049 = icmp eq ptr %.02022.i.i.i1048, null
  br i1 %.not23.i.i.i1049, label %._crit_edge.thread.i.i.i1066, label %.lr.ph.i.i.i1050

.lr.ph.i.i.i1050:                                 ; preds = %bb.jg, %.lr.ph.i.i.i1050
  %.02024.i.i.i1051 = phi ptr [ %.020.i.i.i1054, %.lr.ph.i.i.i1050 ], [ %.02022.i.i.i1048, %bb.jg ] ; 4 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %.02024.i.i.i1051, i64 32
  %i.azg = load i32, ptr %i.azf, align 4, !tbaa !62 ; 2 uses
  %i.azh = icmp slt i32 %.114661610, %i.azg       ; 2 uses
  %.in.v.i.i.i1052 = select i1 %i.azh, i64 16, i64 24
  %.in.i.i.i1053 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i1051, i64 %.in.v.i.i.i1052
  %.020.i.i.i1054 = load ptr, ptr %.in.i.i.i1053, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i1055 = icmp eq ptr %.020.i.i.i1054, null
  br i1 %.not.i.i.i1055, label %._crit_edge.i.i.i1056, label %.lr.ph.i.i.i1050, !llvm.loop !4

._crit_edge.i.i.i1056:                            ; preds = %.lr.ph.i.i.i1050
  br i1 %i.azh, label %._crit_edge.thread.i.i.i1066, label %bb.ji

._crit_edge.thread.i.i.i1066:                     ; preds = %._crit_edge.i.i.i1056, %bb.jg
  %.019.lcssa29.i.i.i1067 = phi ptr [ %.02024.i.i.i1051, %._crit_edge.i.i.i1056 ], [ %i.jc, %bb.jg ] ; 4 uses
  %i.azi = load ptr, ptr %i.jd, align 8, !tbaa !48
  %i.azj = icmp eq ptr %.019.lcssa29.i.i.i1067, %i.azi
  br i1 %i.azj, label %select.unfold.i.i1063, label %bb.jh

bb.jh:                                            ; preds = %._crit_edge.thread.i.i.i1066
  %i.azk = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i1067) #27
  %.phi.trans.insert.i.i1068 = getelementptr inbounds nuw i8, ptr %i.azk, i64 32
  %.pre.i.i1069 = load i32, ptr %.phi.trans.insert.i.i1068, align 4, !tbaa !62
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %._crit_edge.i.i.i1056
  %i.azl = phi i32 [ %.pre.i.i1069, %bb.jh ], [ %i.azg, %._crit_edge.i.i.i1056 ]
  %.019.lcssa28.i.i.i1057 = phi ptr [ %.019.lcssa29.i.i.i1067, %bb.jh ], [ %.02024.i.i.i1051, %._crit_edge.i.i.i1056 ]
  %i.azm = icmp slt i32 %i.azl, %.114661610
  br i1 %i.azm, label %select.unfold.i.i1063, label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit1072

select.unfold.i.i1063:                            ; preds = %bb.ji, %._crit_edge.thread.i.i.i1066
  %.sroa.4.0.i.ph.i.i1064 = phi ptr [ %.019.lcssa29.i.i.i1067, %._crit_edge.thread.i.i.i1066 ], [ %.019.lcssa28.i.i.i1057, %bb.ji ] ; 3 uses
  %i.azn = icmp eq ptr %.sroa.4.0.i.ph.i.i1064, %i.jc
  br i1 %i.azn, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i1065, label %bb.jj

bb.jj:                                            ; preds = %select.unfold.i.i1063
  %i.azo = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i1064, i64 32
  %i.azp = load i32, ptr %i.azo, align 4, !tbaa !62
  %i.azq = icmp slt i32 %.114661610, %i.azp
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i1065

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i1065: ; preds = %bb.jj, %select.unfold.i.i1063
  %i.azr = phi i1 [ %i.azq, %bb.jj ], [ true, %select.unfold.i.i1063 ]
  %i.azs = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %.noexc1071 unwind label %bb.ix ; 2 uses

.noexc1071:                                       ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i1065
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azs, i64 32
  store i32 %.114661610, ptr %i.azt, align 4, !tbaa !62
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.azr, ptr noundef nonnull %i.azs, ptr noundef nonnull %.sroa.4.0.i.ph.i.i1064, ptr noundef nonnull align 8 dereferenceable(32) %i.jc) #22
  %i.azu = load i64, ptr %i.je, align 8, !tbaa !50
  %i.azv = add i64 %i.azu, 1
  store i64 %i.azv, ptr %i.je, align 8, !tbaa !50
  br label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit1072

_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit1072:  ; preds = %.noexc1071, %bb.ji, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit1047
  %i.azw = load ptr, ptr %i.fy, align 8, !tbaa !48 ; 2 uses
  %.not16392679 = icmp eq ptr %i.azw, %i.fw
  br i1 %.not16392679, label %._crit_edge2682, label %.lr.ph2681

._crit_edge2682:                                  ; preds = %bb.jn, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit1072
  %i.azx = load ptr, ptr %i.ge, align 8, !tbaa !48 ; 2 uses
  %.not16402691 = icmp eq ptr %i.azx, %i.gc
  br i1 %.not16402691, label %._crit_edge2695.a, label %.lr.ph2694.a

.lr.ph2681:                                       ; preds = %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit1072, %bb.jn
  %.sroa.01360.02680 = phi ptr [ %i.bar, %bb.jn ], [ %i.azw, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit1072 ] ; 2 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %.sroa.01360.02680, i64 32
  %i.azz = load i32, ptr %i.azy, align 4, !tbaa !62 ; 4 uses
  %.02022.i.i.i1073 = load ptr, ptr %i.jb, align 8, !tbaa !75 ; 2 uses
  %.not23.i.i.i1074 = icmp eq ptr %.02022.i.i.i1073, null
  br i1 %.not23.i.i.i1074, label %._crit_edge.thread.i.i.i1091, label %.lr.ph.i.i.i1075

.lr.ph.i.i.i1075:                                 ; preds = %.lr.ph2681, %.lr.ph.i.i.i1075
  %.02024.i.i.i1076 = phi ptr [ %.020.i.i.i1079, %.lr.ph.i.i.i1075 ], [ %.02022.i.i.i1073, %.lr.ph2681 ] ; 4 uses
  %i.baa = getelementptr inbounds nuw i8, ptr %.02024.i.i.i1076, i64 32
  %i.bab = load i32, ptr %i.baa, align 4, !tbaa !62 ; 2 uses
  %i.bac = icmp slt i32 %i.azz, %i.bab            ; 2 uses
  %.in.v.i.i.i1077 = select i1 %i.bac, i64 16, i64 24
  %.in.i.i.i1078 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i1076, i64 %.in.v.i.i.i1077
  %.020.i.i.i1079 = load ptr, ptr %.in.i.i.i1078, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i1080 = icmp eq ptr %.020.i.i.i1079, null
  br i1 %.not.i.i.i1080, label %._crit_edge.i.i.i1081, label %.lr.ph.i.i.i1075, !llvm.loop !4

._crit_edge.i.i.i1081:                            ; preds = %.lr.ph.i.i.i1075
  br i1 %i.bac, label %._crit_edge.thread.i.i.i1091, label %bb.jl

._crit_edge.thread.i.i.i1091:                     ; preds = %._crit_edge.i.i.i1081, %.lr.ph2681
  %.019.lcssa29.i.i.i1092 = phi ptr [ %.02024.i.i.i1076, %._crit_edge.i.i.i1081 ], [ %i.jc, %.lr.ph2681 ] ; 4 uses
  %i.bad = load ptr, ptr %i.jd, align 8, !tbaa !48
  %i.bae = icmp eq ptr %.019.lcssa29.i.i.i1092, %i.bad
  br i1 %i.bae, label %select.unfold.i.i1088, label %bb.jk

bb.jk:                                            ; preds = %._crit_edge.thread.i.i.i1091
  %i.baf = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i1092) #27
  %.phi.trans.insert.i.i1093 = getelementptr inbounds nuw i8, ptr %i.baf, i64 32
  %.pre.i.i1094 = load i32, ptr %.phi.trans.insert.i.i1093, align 4, !tbaa !62
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %._crit_edge.i.i.i1081
  %i.bag = phi i32 [ %.pre.i.i1094, %bb.jk ], [ %i.bab, %._crit_edge.i.i.i1081 ]
  %.019.lcssa28.i.i.i1082 = phi ptr [ %.019.lcssa29.i.i.i1092, %bb.jk ], [ %.02024.i.i.i1076, %._crit_edge.i.i.i1081 ]
  %i.bah = icmp slt i32 %i.bag, %i.azz
  br i1 %i.bah, label %select.unfold.i.i1088, label %bb.jn

select.unfold.i.i1088:                            ; preds = %bb.jl, %._crit_edge.thread.i.i.i1091
  %.sroa.4.0.i.ph.i.i1089 = phi ptr [ %.019.lcssa29.i.i.i1092, %._crit_edge.thread.i.i.i1091 ], [ %.019.lcssa28.i.i.i1082, %bb.jl ] ; 3 uses
  %i.bai = icmp eq ptr %.sroa.4.0.i.ph.i.i1089, %i.jc
  br i1 %i.bai, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i1090, label %bb.jm

bb.jm:                                            ; preds = %select.unfold.i.i1088
  %i.baj = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i1089, i64 32
  %i.bak = load i32, ptr %i.baj, align 4, !tbaa !62
  %i.bal = icmp slt i32 %i.azz, %i.bak
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i1090

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i1090: ; preds = %bb.jm, %select.unfold.i.i1088
  %i.bam = phi i1 [ %i.bal, %bb.jm ], [ true, %select.unfold.i.i1088 ]
  %i.ban = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %.noexc1096 unwind label %bb.jo ; 2 uses

.noexc1096:                                       ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i1090
  %i.bao = getelementptr inbounds nuw i8, ptr %i.ban, i64 32
  store i32 %i.azz, ptr %i.bao, align 4, !tbaa !62
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bam, ptr noundef nonnull %i.ban, ptr noundef nonnull %.sroa.4.0.i.ph.i.i1089, ptr noundef nonnull align 8 dereferenceable(32) %i.jc) #22
  %i.bap = load i64, ptr %i.je, align 8, !tbaa !50
  %i.baq = add i64 %i.bap, 1
  store i64 %i.baq, ptr %i.je, align 8, !tbaa !50
  br label %bb.jn

bb.jn:                                            ; preds = %.noexc1096, %bb.jl
  %i.bar = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01360.02680) #27 ; 2 uses
  %.not1639 = icmp eq ptr %i.bar, %i.fw
  br i1 %.not1639, label %._crit_edge2682, label %.lr.ph2681

bb.jo:                                            ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i1090
  %i.bas = landingpad { ptr, i32 }
          cleanup
  br label %bb.ky

._crit_edge2695.a:                                ; preds = %.thread1577, %._crit_edge2682
  %i.bat = load ptr, ptr %i.jd, align 8, !tbaa !48 ; 3 uses
  %.not16412696 = icmp eq ptr %i.bat, %i.jc
  br i1 %.not16412696, label %._crit_edge2700, label %.lr.ph2699

.lr.ph2694.a:                                     ; preds = %._crit_edge2682, %.thread1577
  %.sroa.01352.02692 = phi ptr [ %i.bdl, %.thread1577 ], [ %i.azx, %._crit_edge2682 ] ; 2 uses
  %i.bau = getelementptr inbounds nuw i8, ptr %.sroa.01352.02692, i64 32
  %i.bav = load i32, ptr %i.bau, align 4, !tbaa !62 ; 7 uses
  %i.baw = icmp slt i32 %i.bav, 0
  br i1 %i.baw, label %.thread1577, label %bb.jp

bb.jp:                                            ; preds = %.lr.ph2694.a
  %i.bax = load ptr, ptr %i.t, align 8, !tbaa !68
  %i.bay = load ptr, ptr %i.s, align 8, !tbaa !69 ; 2 uses
  %i.baz = ptrtoint ptr %i.bax to i64
  %i.bba = ptrtoint ptr %i.bay to i64
  %i.bbb = sub i64 %i.baz, %i.bba
  %i.bbc = lshr exact i64 %i.bbb, 4
  %i.bbd = trunc i64 %i.bbc to i32
  %.not597 = icmp slt i32 %i.bav, %i.bbd
  br i1 %.not597, label %bb.jq, label %.thread1577

bb.jq:                                            ; preds = %bb.jp
  %i.bbe = zext nneg i32 %i.bav to i64
  %i.bbf = getelementptr inbounds nuw [16 x i8], ptr %i.bay, i64 %i.bbe
  %i.bbg = load ptr, ptr %i.bbf, align 8, !tbaa !72 ; 3 uses
  %.not1642 = icmp eq ptr %i.bbg, null
  br i1 %.not1642, label %.thread1577, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbg, i64 56
  %i.bbi = load ptr, ptr %i.bbh, align 8, !tbaa !74 ; 2 uses
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbg, i64 64
  %45 = load ptr, ptr %i.bbj, align 8, !tbaa !74  ; 2 uses
  %i.bbk = load ptr, ptr %i.jb, align 8           ; 4 uses
  %.not10.i.i.i1109.a = icmp eq ptr %i.bbk, null  ; 3 uses
  %i.bbl = load ptr, ptr %i.gd, align 8
  %.fr = freeze ptr %i.bbl                        ; 2 uses
  %.not10.i.i.i1121 = icmp eq ptr %.fr, null
  %.not16433764 = icmp eq ptr %i.bbi, %45
  br i1 %.not16433764, label %._crit_edge3768, label %.lr.ph3767.preheader

.lr.ph3767.preheader:                             ; preds = %bb.jr
  %i.bbm = load ptr, ptr %i.ak, align 8, !tbaa !47 ; 2 uses
  %.not10.i.i.i1098.a = icmp eq ptr %i.bbm, null
  br label %.lr.ph3767

.lr.ph3767:                                       ; preds = %.lr.ph3767.preheader, %_ZNSt3mapIiSt6vectorIiSaIiEESt4lessIiESaISt4pairIKiS2_EEE4findERS6_.exit.thread
  %.sroa.01342.03765 = phi ptr [ %i.bcs, %_ZNSt3mapIiSt6vectorIiSaIiEESt4lessIiESaISt4pairIKiS2_EEE4findERS6_.exit.thread ], [ %i.bbi, %.lr.ph3767.preheader ] ; 2 uses
  %i.bbn = load i32, ptr %.sroa.01342.03765, align 4, !tbaa !62 ; 2 uses
  br i1 %.not10.i.i.i1098.a, label %_ZNSt3mapIiSt6vectorIiSaIiEESt4lessIiESaISt4pairIKiS2_EEE4findERS6_.exit.thread, label %.lr.ph.i.i.i1099

.lr.ph.i.i.i1099:                                 ; preds = %.lr.ph3767, %.lr.ph.i.i.i1099
  %.012.i.i.i1100 = phi ptr [ %.1.i.i.i1105, %.lr.ph.i.i.i1099 ], [ %i.bbm, %.lr.ph3767 ] ; 3 uses
  %.0811.i.i.i1101 = phi ptr [ %.19.i.i.i1102, %.lr.ph.i.i.i1099 ], [ %i.ao, %.lr.ph3767 ]
  %i.bbo = getelementptr inbounds nuw i8, ptr %.012.i.i.i1100, i64 32
  %i.bbp = load i32, ptr %i.bbo, align 4, !tbaa !62
  %i.bbq = icmp slt i32 %i.bbp, %i.bbn            ; 2 uses
  %.19.i.i.i1102 = select i1 %i.bbq, ptr %.0811.i.i.i1101, ptr %.012.i.i.i1100 ; 5 uses
  %.1.in.v.i.i.i1103 = select i1 %i.bbq, i64 24, i64 16
  %.1.in.i.i.i1104 = getelementptr inbounds nuw i8, ptr %.012.i.i.i1100, i64 %.1.in.v.i.i.i1103
  %.1.i.i.i1105 = load ptr, ptr %.1.in.i.i.i1104, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i1106 = icmp eq ptr %.1.i.i.i1105, null
  br i1 %.not.i.i.i1106, label %_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIiSaIiEEESt10_Select1stIS5_ESt4lessIiESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i1099, !llvm.loop !1

_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIiSaIiEEESt10_Select1stIS5_ESt4lessIiESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i1099
  %i.bbr = icmp eq ptr %.19.i.i.i1102, %i.ao
  br i1 %i.bbr, label %_ZNSt3mapIiSt6vectorIiSaIiEESt4lessIiESaISt4pairIKiS2_EEE4findERS6_.exit.thread, label %_ZNSt3mapIiSt6vectorIiSaIiEESt4lessIiESaISt4pairIKiS2_EEE4findERS6_.exit

_ZNSt3mapIiSt6vectorIiSaIiEESt4lessIiESaISt4pairIKiS2_EEE4findERS6_.exit: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIiSaIiEEESt10_Select1stIS5_ESt4lessIiESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.bbs = getelementptr inbounds nuw i8, ptr %.19.i.i.i1102, i64 32
  %i.bbt = load i32, ptr %i.bbs, align 4, !tbaa !62
  %i.bbu = icmp slt i32 %i.bbn, %i.bbt
  br i1 %i.bbu, label %_ZNSt3mapIiSt6vectorIiSaIiEESt4lessIiESaISt4pairIKiS2_EEE4findERS6_.exit.thread, label %bb.js

bb.js:                                            ; preds = %_ZNSt3mapIiSt6vectorIiSaIiEESt4lessIiESaISt4pairIKiS2_EEE4findERS6_.exit
  %i.bbv = getelementptr inbounds nuw i8, ptr %.19.i.i.i1102, i64 40
  %i.bbw = load ptr, ptr %i.bbv, align 8, !tbaa !118 ; 3 uses
  %i.bbx = getelementptr inbounds nuw i8, ptr %.19.i.i.i1102, i64 48
  %i.bby = load ptr, ptr %i.bbx, align 8, !tbaa !118 ; 3 uses
  %.not16442683 = icmp eq ptr %i.bbw, %i.bby
  br i1 %.not16442683, label %_ZNSt3mapIiSt6vectorIiSaIiEESt4lessIiESaISt4pairIKiS2_EEE4findERS6_.exit.thread, label %.lr.ph2687

.lr.ph2687:                                       ; preds = %bb.js
  br i1 %.not10.i.i.i1121, label %.lr.ph2687.split.us, label %.lr.ph2687.split

.lr.ph2687.split.us:                              ; preds = %.lr.ph2687
  br i1 %.not10.i.i.i1109.a, label %.thread1577, label %.lr.ph.i.i.i1110.preheader.us

.lr.ph.i.i.i1110.preheader.us:                    ; preds = %.lr.ph2687.split.us, %.thread1561.us
  %.sroa.01334.02684.us = phi ptr [ %i.bcf, %.thread1561.us ], [ %i.bbw, %.lr.ph2687.split.us ] ; 2 uses
  %i.bbz = load i32, ptr %.sroa.01334.02684.us, align 4, !tbaa !62 ; 2 uses
  br label %.lr.ph.i.i.i1110.us

.lr.ph.i.i.i1110.us:                              ; preds = %.lr.ph.i.i.i1110.preheader.us, %.lr.ph.i.i.i1110.us
  %.012.i.i.i1111.us = phi ptr [ %.1.i.i.i1116.us, %.lr.ph.i.i.i1110.us ], [ %i.bbk, %.lr.ph.i.i.i1110.preheader.us ] ; 4 uses
  %.0811.i.i.i1112.us = phi ptr [ %.19.i.i.i1113.us, %.lr.ph.i.i.i1110.us ], [ %i.jc, %.lr.ph.i.i.i1110.preheader.us ] ; 2 uses
  %i.bca = getelementptr inbounds nuw i8, ptr %.012.i.i.i1111.us, i64 32
  %i.bcb = load i32, ptr %i.bca, align 4, !tbaa !62
  %i.bcc = icmp slt i32 %i.bcb, %i.bbz            ; 3 uses
  %.19.i.i.i1113.us = select i1 %i.bcc, ptr %.0811.i.i.i1112.us, ptr %.012.i.i.i1111.us ; 2 uses
  %.1.in.v.i.i.i1114.us = select i1 %i.bcc, i64 24, i64 16
  %.1.in.i.i.i1115.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i1111.us, i64 %.1.in.v.i.i.i1114.us
  %.1.i.i.i1116.us = load ptr, ptr %.1.in.i.i.i1115.us, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i1117.us = icmp eq ptr %.1.i.i.i1116.us, null
  br i1 %.not.i.i.i1117.us, label %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i1118.us, label %.lr.ph.i.i.i1110.us, !llvm.loop !2

_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i1118.us: ; preds = %.lr.ph.i.i.i1110.us
  %i.bcd = icmp eq ptr %.19.i.i.i1113.us, %i.jc
  br i1 %i.bcd, label %.thread1577, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit1120.us

_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit1120.us: ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i1118.us
  %.19.i.i.i1113.sroa.sel.us.v.sroa.sel.v.sroa.sel.v = select i1 %i.bcc, ptr %.0811.i.i.i1112.us, ptr %.012.i.i.i1111.us
  %.19.i.i.i1113.sroa.sel.us.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i1113.sroa.sel.us.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bce = load i32, ptr %.19.i.i.i1113.sroa.sel.us.v.sroa.sel.v.sroa.sel, align 4, !tbaa !62
  %.not1645.us = icmp slt i32 %i.bbz, %i.bce
  br i1 %.not1645.us, label %.thread1577, label %.thread1561.us

.thread1561.us:                                   ; preds = %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit1120.us
  %i.bcf = getelementptr inbounds nuw i8, ptr %.sroa.01334.02684.us, i64 4 ; 2 uses
  %.not1644.us = icmp eq ptr %i.bcf, %i.bby
  br i1 %.not1644.us, label %_ZNSt3mapIiSt6vectorIiSaIiEESt4lessIiESaISt4pairIKiS2_EEE4findERS6_.exit.thread, label %.lr.ph.i.i.i1110.preheader.us

.lr.ph2687.split:                                 ; preds = %.lr.ph2687, %.thread1561
  %.sroa.01334.02684 = phi ptr [ %i.bcr, %.thread1561 ], [ %i.bbw, %.lr.ph2687 ] ; 2 uses
  %i.bcg = load i32, ptr %.sroa.01334.02684, align 4, !tbaa !62 ; 4 uses
  br i1 %.not10.i.i.i1109.a, label %.lr.ph.i.i.i1122.preheader, label %.lr.ph.i.i.i1110

.lr.ph.i.i.i1110:                                 ; preds = %.lr.ph2687.split, %.lr.ph.i.i.i1110
  %.012.i.i.i1111 = phi ptr [ %.1.i.i.i1116, %.lr.ph.i.i.i1110 ], [ %i.bbk, %.lr.ph2687.split ] ; 4 uses
  %.0811.i.i.i1112 = phi ptr [ %.19.i.i.i1113, %.lr.ph.i.i.i1110 ], [ %i.jc, %.lr.ph2687.split ] ; 2 uses
  %i.bch = getelementptr inbounds nuw i8, ptr %.012.i.i.i1111, i64 32
  %i.bci = load i32, ptr %i.bch, align 4, !tbaa !62
  %i.bcj = icmp slt i32 %i.bci, %i.bcg            ; 3 uses
  %.19.i.i.i1113 = select i1 %i.bcj, ptr %.0811.i.i.i1112, ptr %.012.i.i.i1111 ; 2 uses
  %.1.in.v.i.i.i1114 = select i1 %i.bcj, i64 24, i64 16
  %.1.in.i.i.i1115 = getelementptr inbounds nuw i8, ptr %.012.i.i.i1111, i64 %.1.in.v.i.i.i1114
  %.1.i.i.i1116 = load ptr, ptr %.1.in.i.i.i1115, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i1117 = icmp eq ptr %.1.i.i.i1116, null
  br i1 %.not.i.i.i1117, label %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i1118, label %.lr.ph.i.i.i1110, !llvm.loop !2

_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i1118: ; preds = %.lr.ph.i.i.i1110
  %i.bck = icmp eq ptr %.19.i.i.i1113, %i.jc
  br i1 %i.bck, label %.lr.ph.i.i.i1122.preheader, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit1120

_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit1120:  ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i1118
  %.19.i.i.i1113.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bcj, ptr %.0811.i.i.i1112, ptr %.012.i.i.i1111
  %.19.i.i.i1113.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i1113.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bcl = load i32, ptr %.19.i.i.i1113.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !62
  %.not1645 = icmp slt i32 %i.bcg, %i.bcl
  br i1 %.not1645, label %.lr.ph.i.i.i1122.preheader, label %.thread1561

.lr.ph.i.i.i1122.preheader:                       ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i1118, %.lr.ph2687.split, %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit1120
  br label %.lr.ph.i.i.i1122

.lr.ph.i.i.i1122:                                 ; preds = %.lr.ph.i.i.i1122.preheader, %.lr.ph.i.i.i1122
  %.012.i.i.i1123 = phi ptr [ %.1.i.i.i1128, %.lr.ph.i.i.i1122 ], [ %.fr, %.lr.ph.i.i.i1122.preheader ] ; 4 uses
  %.0811.i.i.i1124 = phi ptr [ %.19.i.i.i1125, %.lr.ph.i.i.i1122 ], [ %i.gc, %.lr.ph.i.i.i1122.preheader ] ; 2 uses
  %i.bcm = getelementptr inbounds nuw i8, ptr %.012.i.i.i1123, i64 32
  %i.bcn = load i32, ptr %i.bcm, align 4, !tbaa !62
  %i.bco = icmp slt i32 %i.bcn, %i.bcg            ; 3 uses
  %.19.i.i.i1125 = select i1 %i.bco, ptr %.0811.i.i.i1124, ptr %.012.i.i.i1123 ; 2 uses
  %.1.in.v.i.i.i1126 = select i1 %i.bco, i64 24, i64 16
  %.1.in.i.i.i1127 = getelementptr inbounds nuw i8, ptr %.012.i.i.i1123, i64 %.1.in.v.i.i.i1126
  %.1.i.i.i1128 = load ptr, ptr %.1.in.i.i.i1127, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i1129 = icmp eq ptr %.1.i.i.i1128, null
  br i1 %.not.i.i.i1129, label %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i1130, label %.lr.ph.i.i.i1122, !llvm.loop !2

_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i1130: ; preds = %.lr.ph.i.i.i1122
  %i.bcp = icmp eq ptr %.19.i.i.i1125, %i.gc
  br i1 %i.bcp, label %.thread1577, label %bb.jt

bb.jt:                                            ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i1130
  %.19.i.i.i1125.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bco, ptr %.0811.i.i.i1124, ptr %.012.i.i.i1123
  %.19.i.i.i1125.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i1125.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bcq = load i32, ptr %.19.i.i.i1125.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !62
  %.not1646.not.not = icmp slt i32 %i.bcg, %i.bcq
  br i1 %.not1646.not.not, label %.thread1577, label %.thread1561

.thread1561:                                      ; preds = %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit1120, %bb.jt
  %i.bcr = getelementptr inbounds nuw i8, ptr %.sroa.01334.02684, i64 4 ; 2 uses
  %.not1644 = icmp eq ptr %i.bcr, %i.bby
  br i1 %.not1644, label %_ZNSt3mapIiSt6vectorIiSaIiEESt4lessIiESaISt4pairIKiS2_EEE4findERS6_.exit.thread, label %.lr.ph2687.split

_ZNSt3mapIiSt6vectorIiSaIiEESt4lessIiESaISt4pairIKiS2_EEE4findERS6_.exit.thread: ; preds = %.thread1561, %.thread1561.us, %bb.js, %_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIiSaIiEEESt10_Select1stIS5_ESt4lessIiESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %.lr.ph3767, %_ZNSt3mapIiSt6vectorIiSaIiEESt4lessIiESaISt4pairIKiS2_EEE4findERS6_.exit
  %i.bcs = getelementptr inbounds nuw i8, ptr %.sroa.01342.03765, i64 4 ; 2 uses
  %.not1643 = icmp eq ptr %i.bcs, %45
  br i1 %.not1643, label %._crit_edge3768, label %.lr.ph3767

._crit_edge3768:                                  ; preds = %_ZNSt3mapIiSt6vectorIiSaIiEESt4lessIiESaISt4pairIKiS2_EEE4findERS6_.exit.thread, %bb.jr
  br i1 %.not10.i.i.i1109.a, label %._crit_edge.thread.i.i.i1151, label %.lr.ph.i.i.i1135

.lr.ph.i.i.i1135:                                 ; preds = %._crit_edge3768, %.lr.ph.i.i.i1135
  %.02024.i.i.i1136 = phi ptr [ %.020.i.i.i1139, %.lr.ph.i.i.i1135 ], [ %i.bbk, %._crit_edge3768 ] ; 4 uses
  %i.bct = getelementptr inbounds nuw i8, ptr %.02024.i.i.i1136, i64 32
  %i.bcu = load i32, ptr %i.bct, align 4, !tbaa !62 ; 2 uses
  %i.bcv = icmp slt i32 %i.bav, %i.bcu            ; 2 uses
  %.in.v.i.i.i1137 = select i1 %i.bcv, i64 16, i64 24
  %.in.i.i.i1138 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i1136, i64 %.in.v.i.i.i1137
  %.020.i.i.i1139 = load ptr, ptr %.in.i.i.i1138, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i1140 = icmp eq ptr %.020.i.i.i1139, null
  br i1 %.not.i.i.i1140, label %._crit_edge.i.i.i1141, label %.lr.ph.i.i.i1135, !llvm.loop !4

._crit_edge.i.i.i1141:                            ; preds = %.lr.ph.i.i.i1135
  br i1 %i.bcv, label %._crit_edge.thread.i.i.i1151, label %bb.jv

._crit_edge.thread.i.i.i1151:                     ; preds = %._crit_edge.i.i.i1141, %._crit_edge3768
  %.019.lcssa29.i.i.i1152 = phi ptr [ %.02024.i.i.i1136, %._crit_edge.i.i.i1141 ], [ %i.jc, %._crit_edge3768 ] ; 4 uses
  %i.bcw = load ptr, ptr %i.jd, align 8, !tbaa !48
  %i.bcx = icmp eq ptr %.019.lcssa29.i.i.i1152, %i.bcw
  br i1 %i.bcx, label %select.unfold.i.i1148, label %bb.ju

bb.ju:                                            ; preds = %._crit_edge.thread.i.i.i1151
  %i.bcy = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i1152) #27
  %.phi.trans.insert.i.i1153 = getelementptr inbounds nuw i8, ptr %i.bcy, i64 32
  %.pre.i.i1154 = load i32, ptr %.phi.trans.insert.i.i1153, align 4, !tbaa !62
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %._crit_edge.i.i.i1141
  %i.bcz = phi i32 [ %.pre.i.i1154, %bb.ju ], [ %i.bcu, %._crit_edge.i.i.i1141 ]
  %.019.lcssa28.i.i.i1142 = phi ptr [ %.019.lcssa29.i.i.i1152, %bb.ju ], [ %.02024.i.i.i1136, %._crit_edge.i.i.i1141 ]
  %i.bda = icmp slt i32 %i.bcz, %i.bav
  br i1 %i.bda, label %select.unfold.i.i1148, label %.thread1577

select.unfold.i.i1148:                            ; preds = %bb.jv, %._crit_edge.thread.i.i.i1151
  %.sroa.4.0.i.ph.i.i1149 = phi ptr [ %.019.lcssa29.i.i.i1152, %._crit_edge.thread.i.i.i1151 ], [ %.019.lcssa28.i.i.i1142, %bb.jv ] ; 3 uses
  %i.bdb = icmp eq ptr %.sroa.4.0.i.ph.i.i1149, %i.jc
  br i1 %i.bdb, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i1150, label %bb.jw

bb.jw:                                            ; preds = %select.unfold.i.i1148
  %i.bdc = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i1149, i64 32
  %i.bdd = load i32, ptr %i.bdc, align 4, !tbaa !62
  %i.bde = icmp slt i32 %i.bav, %i.bdd
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i1150

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i1150: ; preds = %bb.jw, %select.unfold.i.i1148
  %i.bdf = phi i1 [ %i.bde, %bb.jw ], [ true, %select.unfold.i.i1148 ]
  %i.bdg = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %.noexc1156 unwind label %bb.jx ; 2 uses

.noexc1156:                                       ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i1150
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bdg, i64 32
  store i32 %i.bav, ptr %i.bdh, align 4, !tbaa !62
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bdf, ptr noundef nonnull %i.bdg, ptr noundef nonnull %.sroa.4.0.i.ph.i.i1149, ptr noundef nonnull align 8 dereferenceable(32) %i.jc) #22
  %i.bdi = load i64, ptr %i.je, align 8, !tbaa !50
  %i.bdj = add i64 %i.bdi, 1
  store i64 %i.bdj, ptr %i.je, align 8, !tbaa !50
  br label %.thread1577

bb.jx:                                            ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i1150
  %i.bdk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ky

.thread1577:                                      ; preds = %.lr.ph2687.split.us, %bb.jt, %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i1130, %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i1118.us, %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit1120.us, %.noexc1156, %bb.jv, %.lr.ph2694.a, %bb.jp, %bb.jq
  %i.bdl = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.01352.02692) #27 ; 2 uses
  %.not1640 = icmp eq ptr %i.bdl, %i.gc
  br i1 %.not1640, label %._crit_edge2695.a, label %.lr.ph2694.a

._crit_edge2700.loopexit:                         ; preds = %bb.kb
  %.pre2991 = load ptr, ptr %i.jd, align 8, !tbaa !48
  br label %._crit_edge2700

._crit_edge2700:                                  ; preds = %._crit_edge2700.loopexit, %._crit_edge2695.a
  %i.bdm = phi ptr [ %.pre2991, %._crit_edge2700.loopexit ], [ %i.bat, %._crit_edge2695.a ] ; 6 uses
  %i.bdn = icmp eq ptr %i.bdm, %i.jc
  br i1 %i.bdn, label %_ZSt11min_elementISt23_Rb_tree_const_iteratorIiEET_S2_S2_.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge2700
  %i.bdo = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.bdm) #27 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bdo, %i.jc
  br i1 %.not9.i.i, label %_ZSt11min_elementISt23_Rb_tree_const_iteratorIiEET_S2_S2_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %.phi.trans.insert.i.i1158 = getelementptr inbounds nuw i8, ptr %i.bdm, i64 32
  %.pre.i.i1159 = load i32, ptr %.phi.trans.insert.i.i1158, align 4, !tbaa !62
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.bdp = phi i32 [ %i.bdv, %.lr.ph.i.i ], [ %.pre.i.i1159, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.bdq = phi ptr [ %i.bdu, %.lr.ph.i.i ], [ %i.bdo, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.02.010.i.i = phi ptr [ %spec.select.i.i1160, %.lr.ph.i.i ], [ %i.bdm, %.lr.ph.preheader.i.i ]
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdq, i64 32
  %i.bds = load i32, ptr %i.bdr, align 4, !tbaa !62 ; 2 uses
  %i.bdt = icmp slt i32 %i.bds, %i.bdp
  %spec.select.i.i1160 = select i1 %i.bdt, ptr %i.bdq, ptr %.sroa.02.010.i.i ; 2 uses
  %i.bdu = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.bdq) #27 ; 2 uses
  %.not.i.i1161 = icmp eq ptr %i.bdu, %i.jc
  %i.bdv = call i32 @llvm.smin.i32(i32 %i.bds, i32 %i.bdp)
  br i1 %.not.i.i1161, label %_ZSt11min_elementISt23_Rb_tree_const_iteratorIiEET_S2_S2_.exit, label %.lr.ph.i.i, !llvm.loop !5

.lr.ph2699:                                       ; preds = %._crit_edge2695.a, %bb.kb
  %.sroa.01328.02697 = phi ptr [ %i.bep, %bb.kb ], [ %i.bat, %._crit_edge2695.a ] ; 2 uses
  %i.bdw = getelementptr inbounds nuw i8, ptr %.sroa.01328.02697, i64 32
  %i.bdx = load i32, ptr %i.bdw, align 4, !tbaa !62 ; 4 uses
  %.02022.i.i.i1162 = load ptr, ptr %i.be, align 8, !tbaa !75 ; 2 uses
  %.not23.i.i.i1163 = icmp eq ptr %.02022.i.i.i1162, null
  br i1 %.not23.i.i.i1163, label %._crit_edge.thread.i.i.i1180, label %.lr.ph.i.i.i1164

.lr.ph.i.i.i1164:                                 ; preds = %.lr.ph2699, %.lr.ph.i.i.i1164
  %.02024.i.i.i1165 = phi ptr [ %.020.i.i.i1168, %.lr.ph.i.i.i1164 ], [ %.02022.i.i.i1162, %.lr.ph2699 ] ; 4 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %.02024.i.i.i1165, i64 32
  %i.bdz = load i32, ptr %i.bdy, align 4, !tbaa !62 ; 2 uses
  %i.bea = icmp slt i32 %i.bdx, %i.bdz            ; 2 uses
  %.in.v.i.i.i1166 = select i1 %i.bea, i64 16, i64 24
  %.in.i.i.i1167 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i1165, i64 %.in.v.i.i.i1166
  %.020.i.i.i1168 = load ptr, ptr %.in.i.i.i1167, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i1169 = icmp eq ptr %.020.i.i.i1168, null
  br i1 %.not.i.i.i1169, label %._crit_edge.i.i.i1170, label %.lr.ph.i.i.i1164, !llvm.loop !4

._crit_edge.i.i.i1170:                            ; preds = %.lr.ph.i.i.i1164
  br i1 %i.bea, label %._crit_edge.thread.i.i.i1180, label %bb.jz

._crit_edge.thread.i.i.i1180:                     ; preds = %._crit_edge.i.i.i1170, %.lr.ph2699
  %.019.lcssa29.i.i.i1181 = phi ptr [ %.02024.i.i.i1165, %._crit_edge.i.i.i1170 ], [ %i.bd, %.lr.ph2699 ] ; 4 uses
  %i.beb = load ptr, ptr %i.bf, align 8, !tbaa !48
  %i.bec = icmp eq ptr %.019.lcssa29.i.i.i1181, %i.beb
  br i1 %i.bec, label %select.unfold.i.i1177, label %bb.jy

bb.jy:                                            ; preds = %._crit_edge.thread.i.i.i1180
  %i.bed = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i1181) #27
  %.phi.trans.insert.i.i1182 = getelementptr inbounds nuw i8, ptr %i.bed, i64 32
  %.pre.i.i1183 = load i32, ptr %.phi.trans.insert.i.i1182, align 4, !tbaa !62
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jy, %._crit_edge.i.i.i1170
  %i.bee = phi i32 [ %.pre.i.i1183, %bb.jy ], [ %i.bdz, %._crit_edge.i.i.i1170 ]
  %.019.lcssa28.i.i.i1171 = phi ptr [ %.019.lcssa29.i.i.i1181, %bb.jy ], [ %.02024.i.i.i1165, %._crit_edge.i.i.i1170 ]
  %i.bef = icmp slt i32 %i.bee, %i.bdx
  br i1 %i.bef, label %select.unfold.i.i1177, label %bb.kb

select.unfold.i.i1177:                            ; preds = %bb.jz, %._crit_edge.thread.i.i.i1180
  %.sroa.4.0.i.ph.i.i1178 = phi ptr [ %.019.lcssa29.i.i.i1181, %._crit_edge.thread.i.i.i1180 ], [ %.019.lcssa28.i.i.i1171, %bb.jz ] ; 3 uses
  %i.beg = icmp eq ptr %.sroa.4.0.i.ph.i.i1178, %i.bd
  br i1 %i.beg, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i1179, label %bb.ka

bb.ka:                                            ; preds = %select.unfold.i.i1177
  %i.beh = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i1178, i64 32
  %i.bei = load i32, ptr %i.beh, align 4, !tbaa !62
  %i.bej = icmp slt i32 %i.bdx, %i.bei
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i1179

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i1179: ; preds = %bb.ka, %select.unfold.i.i1177
  %i.bek = phi i1 [ %i.bej, %bb.ka ], [ true, %select.unfold.i.i1177 ]
  %i.bel = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %.noexc1185 unwind label %bb.kc ; 2 uses

.noexc1185:                                       ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i1179
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bel, i64 32
  store i32 %i.bdx, ptr %i.bem, align 4, !tbaa !62
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bek, ptr noundef nonnull %i.bel, ptr noundef nonnull %.sroa.4.0.i.ph.i.i1178, ptr noundef nonnull align 8 dereferenceable(32) %i.bd) #22
  %i.ben = load i64, ptr %i.bh, align 8, !tbaa !50
  %i.beo = add i64 %i.ben, 1
  store i64 %i.beo, ptr %i.bh, align 8, !tbaa !50
  br label %bb.kb

bb.kb:                                            ; preds = %.noexc1185, %bb.jz
  %i.bep = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01328.02697) #27 ; 2 uses
  %.not1641 = icmp eq ptr %i.bep, %i.jc
  br i1 %.not1641, label %._crit_edge2700.loopexit, label %.lr.ph2699

bb.kc:                                            ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i1179
  %i.beq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ky

_ZSt11min_elementISt23_Rb_tree_const_iteratorIiEET_S2_S2_.exit: ; preds = %.lr.ph.i.i, %.preheader.i.i, %._crit_edge2700
  %.sroa.02.2.i.i = phi ptr [ %i.bdm, %._crit_edge2700 ], [ %i.bdm, %.preheader.i.i ], [ %spec.select.i.i1160, %.lr.ph.i.i ]
  %i.ber = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i, i64 32
  %i.bes = load i32, ptr %i.ber, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22
  store i32 %i.bes, ptr %43, align 8, !tbaa !163
  %i.bet = load ptr, ptr %i.ji, align 8, !tbaa !55 ; 2 uses
  %i.beu = load <2 x ptr>, ptr %35, align 16, !tbaa !164
  store <2 x ptr> %i.beu, ptr %i.jg, align 8, !tbaa !164
  %.not.i.i.i.i.i = icmp eq ptr %i.bet, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt4pairIiN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEC2IRiRS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit, label %bb.kd

bb.kd:                                            ; preds = %_ZSt11min_elementISt23_Rb_tree_const_iteratorIiEET_S2_S2_.exit
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bet, i64 8 ; 3 uses
  %i.bew = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bew, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.bex = load i32, ptr %i.bev, align 4, !tbaa !62
  %i.bey = add nsw i32 %i.bex, 1
  store i32 %i.bey, ptr %i.bev, align 4, !tbaa !62
  br label %_ZNSt4pairIiN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEC2IRiRS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit

bb.kf:                                            ; preds = %bb.kd
  %i.bez = atomicrmw volatile add ptr %i.bev, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt4pairIiN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEC2IRiRS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit

end_hunk_0
