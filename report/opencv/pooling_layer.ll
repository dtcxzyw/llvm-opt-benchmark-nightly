Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pooling_layer?download=true
inline.NumInlined: 1291
inline.NumDeleted: 445
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2cv3dnn16PoolingLayerImplC2ERKNS0_14dnn5_v2026060511LayerParamsE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit737

_ZNK2cv3dnn14dnn5_v202606054Dict3getIfEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit: ; preds = %bb.ay
  %i.sn = fptrunc double %i.sl to float
  %.pre860 = load ptr, ptr %24, align 8, !tbaa !58 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 356
  store float %i.sn, ptr %i.so, align 4, !tbaa !80
  %i.sp = icmp eq ptr %.pre860, %i.rp
  br i1 %i.sp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit737, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i735

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i735: ; preds = %_ZNK2cv3dnn14dnn5_v202606054Dict3getIfEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit
  %i.sq = load i64, ptr %i.rp, align 8, !tbaa !27
  %i.sr = add i64 %i.sq, 1
  call void @_ZdlPvm(ptr noundef %.pre860, i64 noundef %i.sr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit737

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit737: ; preds = %_ZNK2cv3dnn14dnn5_v202606054Dict3getIfEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit, %_ZNK2cv3dnn14dnn5_v202606054Dict3getIfEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i735
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  %i.ss = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.ss, ptr %25, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 20, ptr %i.a, align 8, !tbaa !57
  %i.st = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc740 unwind label %bb.bf ; 2 uses

.noexc740:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit737
  store ptr %i.st, ptr %25, align 8, !tbaa !58
  %i.su = load i64, ptr %i.a, align 8, !tbaa !57  ; 3 uses
  store i64 %i.su, ptr %i.ss, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.st, ptr noundef nonnull align 1 dereferenceable(20) @.str.19, i64 20, i1 false)
  %i.sv = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  store i64 %i.su, ptr %i.sv, align 8, !tbaa !24
  %i.sw = load ptr, ptr %25, align 8, !tbaa !58
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 %i.su
  store i8 0, ptr %i.sx, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.sy = load ptr, ptr %i.ah, align 8, !tbaa !59 ; 2 uses
  %.not10.i.i.i.i742 = icmp eq ptr %i.sy, null
  %.pre862 = load ptr, ptr %25, align 8           ; 5 uses
  br i1 %.not10.i.i.i.i742, label %_ZNK2cv3dnn14dnn5_v202606054Dict3getIbEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit773, label %.lr.ph.i.i.i.i743

.lr.ph.i.i.i.i743:                                ; preds = %.noexc740
  %i.sz = load i64, ptr %i.sv, align 8, !tbaa !24 ; 4 uses
  br label %bb.az

bb.az:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i749, %.lr.ph.i.i.i.i743
  %.012.i.i.i.i744 = phi ptr [ %i.sy, %.lr.ph.i.i.i.i743 ], [ %.1.i.i.i.i754, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i749 ] ; 4 uses
  %.0811.i.i.i.i745 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i743 ], [ %.19.i.i.i.i751, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i749 ]
  %i.ta = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i744, i64 40
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !24 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i746 = call i64 @llvm.umin.i64(i64 %i.sz, i64 %i.tb) ; 2 uses
  %i.tc = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i746, 0
  br i1 %i.tc, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i768, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i747

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i747: ; preds = %bb.az
  %i.td = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i744, i64 32
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !58
  %i.tf = call i32 @memcmp(ptr noundef %i.te, ptr noundef %.pre862, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i746) #23 ; 2 uses
  %.not.i.i.i.i.i.i.i748 = icmp eq i32 %i.tf, 0
  br i1 %.not.i.i.i.i.i.i.i748, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i768, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i749

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i768: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i747, %bb.az
  %i.tg = sub i64 %i.tb, %i.sz
  %spec.select7.i.i.i.i.i.i.i.i769 = call i64 @llvm.smax.i64(i64 %i.tg, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i770 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i769, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i771 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i770 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i749

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i749: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i768, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i747
  %.0.i.i.i.i.i.i.i750 = phi i32 [ %i.tf, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i747 ], [ %.0.i6.i.i.i.i.i.i.i771, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i768 ]
  %i.th = icmp slt i32 %.0.i.i.i.i.i.i.i750, 0    ; 2 uses
  %.19.i.i.i.i751 = select i1 %i.th, ptr %.0811.i.i.i.i745, ptr %.012.i.i.i.i744 ; 5 uses
  %.1.in.v.i.i.i.i752 = select i1 %i.th, i64 24, i64 16
  %.1.in.i.i.i.i753 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i744, i64 %.1.in.v.i.i.i.i752
  %.1.i.i.i.i754 = load ptr, ptr %.1.in.i.i.i.i753, align 8, !tbaa !64 ; 2 uses
  %.not.i.i.i.i755 = icmp eq ptr %.1.i.i.i.i754, null
  br i1 %.not.i.i.i.i755, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i756, label %bb.az, !llvm.loop !65

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i756: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i749
  %i.ti = icmp eq ptr %.19.i.i.i.i751, %i.aj
  br i1 %i.ti, label %_ZNK2cv3dnn14dnn5_v202606054Dict3getIbEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit773, label %bb.ba

bb.ba:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i756
  %i.tj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i751, i64 40
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !24 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i757 = call i64 @llvm.umin.i64(i64 %i.tk, i64 %i.sz) ; 2 uses
  %i.tl = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i757, 0
  br i1 %i.tl, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i764, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i758

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i758: ; preds = %bb.ba
  %i.tm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i751, i64 32
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !58
  %i.to = call i32 @memcmp(ptr noundef %.pre862, ptr noundef %i.tn, i64 noundef %.sroa.speculated.i.i.i.i.i.i757) #23 ; 2 uses
  %.not.i.i.i.i.i.i759 = icmp eq i32 %i.to, 0
  br i1 %.not.i.i.i.i.i.i759, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i764, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i760

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i764: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i758, %bb.ba
  %i.tp = sub i64 %i.sz, %i.tk
  %spec.select7.i.i.i.i.i.i.i765 = call i64 @llvm.smax.i64(i64 %i.tp, i64 -2147483648)
  %.08.i.i.i.i.i.i.i766 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i765, i64 2147483647)
  %.0.i6.i.i.i.i.i.i767 = trunc nsw i64 %.08.i.i.i.i.i.i.i766 to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i760

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i760: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i764, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i758
  %.0.i.i.i.i.i.i761 = phi i32 [ %i.to, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i758 ], [ %.0.i6.i.i.i.i.i.i767, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i764 ]
  %i.tq = icmp slt i32 %.0.i.i.i.i.i.i761, 0
  br i1 %i.tq, label %_ZNK2cv3dnn14dnn5_v202606054Dict3getIbEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit773, label %bb.bb

bb.bb:                                            ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i760
  %i.tr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i751, i64 64
  %i.ts = invoke noundef i64 @_ZNK2cv3dnn14dnn5_v202606059DictValue3getIlEET_i(ptr noundef nonnull align 8 dereferenceable(16) %i.tr, i32 noundef -1)
          to label %.noexc772 unwind label %bb.bg

.noexc772:                                        ; preds = %bb.bb
  %i.tt = icmp ne i64 %i.ts, 0
  %i.tu = zext i1 %i.tt to i8
  %.pre861 = load ptr, ptr %25, align 8, !tbaa !58
  br label %_ZNK2cv3dnn14dnn5_v202606054Dict3getIbEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit773

_ZNK2cv3dnn14dnn5_v202606054Dict3getIbEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit773: ; preds = %.noexc772, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i760, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i756, %.noexc740
  %i.tv = phi ptr [ %.pre861, %.noexc772 ], [ %.pre862, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i760 ], [ %.pre862, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i756 ], [ %.pre862, %.noexc740 ] ; 2 uses
  %.0.i762 = phi i8 [ %i.tu, %.noexc772 ], [ 1, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i760 ], [ 1, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i756 ], [ 1, %.noexc740 ]
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 345
  store i8 %.0.i762, ptr %i.tw, align 1, !tbaa !81
  %i.tx = icmp eq ptr %i.tv, %i.ss
  br i1 %i.tx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit776, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i774

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i774: ; preds = %_ZNK2cv3dnn14dnn5_v202606054Dict3getIbEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit773
  %i.ty = load i64, ptr %i.ss, align 8, !tbaa !27
  %i.tz = add i64 %i.ty, 1
  call void @_ZdlPvm(ptr noundef %i.tv, i64 noundef %i.tz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit776

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit776: ; preds = %_ZNK2cv3dnn14dnn5_v202606054Dict3getIbEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit773, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i774
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  ret void

bb.bc:                                            ; preds = %bb.au
  %i.ua = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bd:                                            ; preds = %bb.aw
  %i.ub = landingpad { ptr, i32 }
          cleanup
  %i.uc = load ptr, ptr %23, align 8, !tbaa !58   ; 2 uses
  %i.ud = icmp eq ptr %i.uc, %i.ql
  br i1 %i.ud, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit779, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i777

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i777: ; preds = %bb.bd
  %i.ue = load i64, ptr %i.ql, align 8, !tbaa !27
  %i.uf = add i64 %i.ue, 1
  call void @_ZdlPvm(ptr noundef %i.uc, i64 noundef %i.uf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit779

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit779: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i777
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %.body

bb.be:                                            ; preds = %bb.ay
  %i.ug = landingpad { ptr, i32 }
          cleanup
  %i.uh = load ptr, ptr %24, align 8, !tbaa !58   ; 2 uses
  %i.ui = icmp eq ptr %i.uh, %i.rp
  br i1 %i.ui, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit782, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i780

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i780: ; preds = %bb.be
  %i.uj = load i64, ptr %i.rp, align 8, !tbaa !27
  %i.uk = add i64 %i.uj, 1
  call void @_ZdlPvm(ptr noundef %i.uh, i64 noundef %i.uk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit782

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit782: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i780
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %.body

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit737
  %i.ul = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit785

bb.bg:                                            ; preds = %bb.bb
  %i.um = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.un = load ptr, ptr %25, align 8, !tbaa !58   ; 2 uses
  %i.uo = icmp eq ptr %i.un, %i.ss
  br i1 %i.uo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit785, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i783

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i783: ; preds = %bb.bg
  %i.up = load i64, ptr %i.ss, align 8, !tbaa !27
  %i.uq = add i64 %i.up, 1
  call void @_ZdlPvm(ptr noundef %i.un, i64 noundef %i.uq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit785

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit785: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i783, %bb.bf
  %.pn156 = phi { ptr, i32 } [ %i.ul, %bb.bf ], [ %i.um, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i783 ], [ %i.um, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit785, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit782, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit779, %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %.pn156.pn = phi { ptr, i32 } [ %.pn156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit785 ], [ %i.ug, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit782 ], [ %i.ub, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit779 ], [ %i.ua, %bb.bc ], [ %.pn147.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389 ], [ %i.na, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ], [ %i.mv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549 ], [ %i.pz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657 ], [ %i.pu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654 ], [ %.pn130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660 ], [ %i.r, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346 ]
  call void @_ZN2cv3dnn14dnn5_v2026060512PoolingLayerD2Ev(ptr noundef nonnull align 8 dead_on_return(364) dereferenceable(364) %0) #23
  resume { ptr, i32 } %.pn156.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !21
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.25) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.d, ptr %i.a, align 8, !tbaa !57
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !58
  %i.g = load i64, ptr %i.a, align 8, !tbaa !57
  store i64 %i.g, ptr %i.b, align 8, !tbaa !27
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !27
  store i8 %i.i, ptr %i.h, align 1, !tbaa !27
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !24
  %i.l = load ptr, ptr %0, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn14dnn5_v202606054Dict3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS9_RKSA_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24   ; 4 uses
  %i.g = load ptr, ptr %2, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.i) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.m = tail call i32 @memcmp(ptr noundef %i.l, ptr noundef %i.g, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.n = sub i64 %i.i, %i.f
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.n, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.m, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.o = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.o, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.o, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !65

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.p, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !24   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.f) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !58
  %i.v = tail call i32 @memcmp(ptr noundef %i.g, ptr noundef %i.u, i64 noundef %.sroa.speculated.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.w = sub i64 %i.f, %i.r
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.w, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.v, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.x = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.x, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  tail call void @_ZNK2cv3dnn14dnn5_v202606059DictValue3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_i(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i32 noundef -1)
  br label %bb.g

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.a, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !21
  %i.aa = load ptr, ptr %3, align 8, !tbaa !58    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !57
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !58
  %i.af = load i64, ptr %i.a, align 8, !tbaa !57
  store i64 %i.af, ptr %i.z, align 8, !tbaa !27
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread
  %i.ag = phi ptr [ %i.ae, %.noexc.i ], [ %i.z, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread ] ; 2 uses
  switch i64 %i.ac, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !27
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !24
  %i.ak = load ptr, ptr %0, align 8, !tbaa !58
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.d
  ret void
end_hunk_0
