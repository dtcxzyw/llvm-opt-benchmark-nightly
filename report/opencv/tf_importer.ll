Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tf_importer?download=true
inline.NumInlined: 8193
inline.NumDeleted: 1946
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter16parseConvolutionERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE:bb.a
  store ptr %i.azk, ptr %i.azn, align 8, !tbaa !141
  %i.azo = getelementptr inbounds nuw i8, ptr %82, i64 40 ; 2 uses
  store i64 0, ptr %i.azo, align 8, !tbaa !142
  %i.azp = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.azq = load ptr, ptr %i.azp, align 8, !tbaa !139 ; 2 uses
  %.not.i.i702 = icmp eq ptr %i.azq, null
  br i1 %.not.i.i702, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit710, label %bb.ks

bb.ks:                                            ; preds = %.loopexit1023
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %82, ptr %6, align 8, !tbaa !275
  %i.azr = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %82, ptr noundef nonnull %i.azq, ptr noundef nonnull %i.azk, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc.i.i703 unwind label %bb.lf ; 3 uses

.noexc.i.i703:                                    ; preds = %bb.ks, %.noexc.i.i703
  %.0.i.i.i.i.i.i704 = phi ptr [ %i.azt, %.noexc.i.i703 ], [ %i.azr, %bb.ks ] ; 2 uses
  %i.azs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i704, i64 16
  %i.azt = load ptr, ptr %i.azs, align 8, !tbaa !221 ; 2 uses
  %.not.i.i.i.i.i.i705 = icmp eq ptr %i.azt, null
  br i1 %.not.i.i.i.i.i.i705, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i706, label %.noexc.i.i703, !llvm.loop !5

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i706: ; preds = %.noexc.i.i703
  store ptr %.0.i.i.i.i.i.i704, ptr %i.azm, align 8, !tbaa !109
  br label %bb.kt

bb.kt:                                            ; preds = %bb.kt, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i706
  %.0.i.i7.i.i.i.i707 = phi ptr [ %i.azr, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i706 ], [ %i.azv, %bb.kt ] ; 2 uses
  %i.azu = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i707, i64 24
  %i.azv = load ptr, ptr %i.azu, align 8, !tbaa !222 ; 2 uses
  %.not.i.i8.i.i.i.i708 = icmp eq ptr %i.azv, null
  br i1 %.not.i.i8.i.i.i.i708, label %bb.ku, label %bb.kt, !llvm.loop !6

bb.ku:                                            ; preds = %bb.kt
  store ptr %.0.i.i7.i.i.i.i707, ptr %i.azn, align 8, !tbaa !109
  %i.azw = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.azx = load i64, ptr %i.azw, align 8, !tbaa !142
  store i64 %i.azx, ptr %i.azo, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  store ptr %i.azr, ptr %i.azl, align 8, !tbaa !109
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit710

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit710: ; preds = %bb.ku, %.loopexit1023
  %i.azy = invoke fastcc noundef nonnull align 8 dereferenceable(224) ptr @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter12getConstBlobERKN17opencv_tensorflow7NodeDefESt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessISE_ESaISt4pairIKSE_iEEEiPi(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr noundef nonnull align 8 dereferenceable(192) %36, ptr noundef align 8 %82, i32 noundef -1, ptr noundef nonnull %i.n)
          to label %bb.kv unwind label %bb.lg     ; 2 uses

bb.kv:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit710
  %i.azz = load ptr, ptr %i.azl, align 8, !tbaa !139
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %82, ptr noundef %i.azz)
          to label %bb.kx unwind label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.baa = landingpad { ptr, i32 }
          catch ptr null
  %i.bab = extractvalue { ptr, i32 } %i.baa, 0
  call void @__clang_call_terminate(ptr %i.bab) #28
  unreachable

bb.kx:                                            ; preds = %bb.kv
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #26
  %i.bac = load i32, ptr %i.n, align 4, !tbaa !40
  %i.bad = load ptr, ptr %i.be, align 8, !tbaa !70
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bad, i64 8
  %i.baf = sext i32 %i.bac to i64
  %i.bag = getelementptr inbounds [8 x i8], ptr %i.bae, i64 %i.baf
  %i.bah = load ptr, ptr %i.bag, align 8, !tbaa !62 ; 2 uses
  %i.bai = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 7 uses
  store ptr %i.bai, ptr %83, align 8, !tbaa !64
  %i.baj = load ptr, ptr %i.bah, align 8, !tbaa !46 ; 2 uses
  %i.bak = getelementptr inbounds nuw i8, ptr %i.bah, i64 8
  %i.bal = load i64, ptr %i.bak, align 8, !tbaa !65 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.bal, ptr %i.b, align 8, !tbaa !63
  %i.bam = icmp ugt i64 %i.bal, 15
  br i1 %i.bam, label %.noexc.i713, label %._crit_edge.i.i712

.noexc.i713:                                      ; preds = %bb.kx
  %i.ban = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %83, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc714 unwind label %bb.lh ; 2 uses

.noexc714:                                        ; preds = %.noexc.i713
  store ptr %i.ban, ptr %83, align 8, !tbaa !46
  %i.bao = load i64, ptr %i.b, align 8, !tbaa !63
  store i64 %i.bao, ptr %i.bai, align 8, !tbaa !56
  br label %._crit_edge.i.i712

._crit_edge.i.i712:                               ; preds = %.noexc714, %bb.kx
  %i.bap = phi ptr [ %i.ban, %.noexc714 ], [ %i.bai, %bb.kx ] ; 2 uses
  switch i64 %i.bal, label %bb.kz [
    i64 1, label %bb.ky
    i64 0, label %bb.la
  ]

bb.ky:                                            ; preds = %._crit_edge.i.i712
  %i.baq = load i8, ptr %i.baj, align 1, !tbaa !56
  store i8 %i.baq, ptr %i.bap, align 1, !tbaa !56
  br label %bb.la

bb.kz:                                            ; preds = %._crit_edge.i.i712
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bap, ptr align 1 %i.baj, i64 %i.bal, i1 false)
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ky, %._crit_edge.i.i712
  %i.bar = load i64, ptr %i.b, align 8, !tbaa !63 ; 2 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %83, i64 8 ; 2 uses
  store i64 %i.bar, ptr %i.bas, align 8, !tbaa !65
  %i.bat = load ptr, ptr %83, align 8, !tbaa !46
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bat, i64 %i.bar
  store i8 0, ptr %i.bau, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.bav = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.baw = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.bax = load ptr, ptr %i.baw, align 8, !tbaa !139 ; 2 uses
  %i.bay = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.bax, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %.lr.ph.i.i.i716

.lr.ph.i.i.i716:                                  ; preds = %bb.la
  %i.baz = load i64, ptr %i.bas, align 8, !tbaa !65 ; 4 uses
  %i.bba = load ptr, ptr %83, align 8             ; 2 uses
  br label %bb.lb

bb.lb:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i716
  %.012.i.i.i = phi ptr [ %i.bax, %.lr.ph.i.i.i716 ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.bay, %.lr.ph.i.i.i716 ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.bbb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.bbc = load i64, ptr %i.bbb, align 8, !tbaa !65 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.baz, i64 %i.bbc) ; 2 uses
  %i.bbd = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.bbd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.lb
  %i.bbe = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bbf = load ptr, ptr %i.bbe, align 8, !tbaa !46
  %i.bbg = call i32 @memcmp(ptr noundef %i.bbf, ptr noundef %i.bba, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i.i717 = icmp eq i32 %i.bbg, 0
  br i1 %.not.i.i.i.i.i.i717, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.lb
  %i.bbh = sub i64 %i.bbc, %i.baz
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bbh, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i718 = phi i32 [ %i.bbg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.bbi = icmp slt i32 %.0.i.i.i.i.i.i718, 0     ; 2 uses
  %.19.i.i.i = select i1 %i.bbi, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.bbi, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !109 ; 2 uses
  %.not.i.i.i719 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i719, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.lb, !llvm.loop !12

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.bbj = icmp eq ptr %.19.i.i.i, %i.bay
  br i1 %i.bbj, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.lc

bb.lc:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.bbk = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.bbl = load i64, ptr %i.bbk, align 8, !tbaa !65 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bbl, i64 %i.baz) ; 2 uses
  %i.bbm = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.bbm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.lc
  %i.bbn = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bbo = load ptr, ptr %i.bbn, align 8, !tbaa !46
  %i.bbp = call i32 @memcmp(ptr noundef %i.bba, ptr noundef %i.bbo, i64 noundef %.sroa.speculated.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i720 = icmp eq i32 %i.bbp, 0
  br i1 %.not.i.i.i.i.i720, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.lc
  %i.bbq = sub i64 %i.baz, %i.bbl
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bbq, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.bbp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.bbr = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.bbr, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.mq

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.la, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.bbs = load ptr, ptr %i.asz, align 8, !tbaa !304
  invoke fastcc void @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter16kernelFromTensorERKN17opencv_tensorflow11TensorProtoERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(224) %i.azy, ptr noundef nonnull align 8 dereferenceable(208) %i.bbs)
          to label %bb.ld unwind label %bb.li

bb.ld:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  invoke void @_ZN2cv3dnn14dnn5_v2026060513releaseTensorEPN17opencv_tensorflow11TensorProtoE(ptr noundef nonnull %i.azy)
          to label %bb.le unwind label %bb.li

bb.le:                                            ; preds = %bb.ld
  %i.bbt = load ptr, ptr %i.asz, align 8, !tbaa !304 ; 5 uses
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbt, i64 84 ; 2 uses
  %i.bbv = load i32, ptr %i.bbu, align 4, !tbaa !40 ; 7 uses
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbt, i64 88 ; 2 uses
  %i.bbx = load i32, ptr %i.bbw, align 4, !tbaa !40 ; 6 uses
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbt, i64 92
  %i.bbz = load i32, ptr %i.bby, align 4, !tbaa !40 ; 3 uses
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbt, i64 96
  %i.bcb = load i32, ptr %i.bca, align 4, !tbaa !40 ; 3 uses
  %i.bcc = load i64, ptr %i.av, align 8, !tbaa !65
  %i.bcd = icmp eq i64 %i.bcc, 21
  br i1 %i.bcd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit722, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit722.thread1010

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit722: ; preds = %bb.le
  %i.bce = load ptr, ptr %38, align 8, !tbaa !46  ; 2 uses
  %i.bcf = load i128, ptr %i.bce, align 1
  %i.bcg = xor i128 %i.bcf, 104200036860658140232380028321981818180
  %i.bch = getelementptr i8, ptr %i.bce, i64 5
  %i.bci = load i128, ptr %i.bch, align 1
  %i.bcj = xor i128 %i.bci, 134866857477173663237628571038745061751
  %i.bck = or i128 %i.bcg, %i.bcj
  %i.bcl = icmp ne i128 %i.bck, 0
  %i.bcm = zext i1 %i.bcl to i32
  %i.bcn = icmp eq i32 %i.bcm, 0
  br i1 %i.bcn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit722.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit722.thread1010

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit722.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit722
  br i1 %i.asm, label %bb.lk, label %bb.lp

bb.lf:                                            ; preds = %bb.ks
  %i.bco = landingpad { ptr, i32 }
          cleanup
  br label %bb.on

bb.lg:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit710
  %i.bcp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %82) #26
  br label %bb.on

bb.lh:                                            ; preds = %.noexc.i713
  %i.bcq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950

bb.li:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, %bb.mq, %bb.ld
  %i.bcr = landingpad { ptr, i32 }
          cleanup
  br label %bb.om

bb.lj:                                            ; preds = %bb.mp, %.loopexit1020
  %i.bcs = landingpad { ptr, i32 }
          cleanup
  br label %bb.om

bb.lk:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit722.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %84, ptr noundef nonnull @.str.97, ptr noundef nonnull align 1 dereferenceable(1) %85)
          to label %bb.ll unwind label %bb.ln

bb.ll:                                            ; preds = %bb.lk
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %84, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter16parseConvolutionERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE, ptr noundef nonnull @.str.2, i32 noundef 939) #29
          to label %bb.lm unwind label %bb.lo

bb.lm:                                            ; preds = %bb.ll
  unreachable

bb.ln:                                            ; preds = %bb.lk
  %i.bct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725

bb.lo:                                            ; preds = %bb.ll
  %i.bcu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bcv = load ptr, ptr %84, align 8, !tbaa !46  ; 2 uses
  %i.bcw = getelementptr inbounds nuw i8, ptr %84, i64 16 ; 2 uses
  %i.bcx = icmp eq ptr %i.bcv, %i.bcw
  br i1 %i.bcx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723: ; preds = %bb.lo
  %i.bcy = load i64, ptr %i.bcw, align 8, !tbaa !56
  %i.bcz = add i64 %i.bcy, 1
  call void @_ZdlPvm(ptr noundef %i.bcv, i64 noundef %i.bcz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725: ; preds = %bb.lo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723, %bb.ln
  %.pn296 = phi { ptr, i32 } [ %i.bct, %bb.ln ], [ %i.bcu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723 ], [ %i.bcu, %bb.lo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #26
  br label %bb.om

bb.lp:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit722.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #26
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %86, ptr noundef nonnull align 8 dereferenceable(208) %i.bbt)
          to label %bb.lq unwind label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  %i.bda = getelementptr inbounds nuw i8, ptr %86, i64 24
  %i.bdb = load ptr, ptr %i.bda, align 8, !tbaa !291 ; 2 uses
  %i.bdc = ptrtoaddr ptr %i.bdb to i64
  %i.bdd = load ptr, ptr %i.asz, align 8, !tbaa !304 ; 3 uses
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 24
  %i.bdf = load ptr, ptr %i.bde, align 8, !tbaa !291 ; 2 uses
  %i.bdg = ptrtoaddr ptr %i.bdf to i64
  %i.bdh = icmp sgt i32 %i.bbv, 0
  br i1 %i.bdh, label %.preheader1021.lr.ph, label %._crit_edge1035.split

.preheader1021.lr.ph:                             ; preds = %bb.lq
  %i.bdi = icmp slt i32 %i.bbx, 1
  %i.bdj = mul i32 %i.bcb, %i.bbz                 ; 5 uses
  %i.bdk = icmp slt i32 %i.bdj, 1
  %brmerge = select i1 %i.bdi, i1 true, i1 %i.bdk
  br i1 %brmerge, label %._crit_edge1035.split, label %.preheader1021.preheader

.preheader1021.preheader:                         ; preds = %.preheader1021.lr.ph
  %i.bdl = zext nneg i32 %i.bbv to i64
  %i.bdm = zext nneg i32 %i.bbx to i64
  %wide.trip.count1056 = zext nneg i32 %i.bbv to i64
  %wide.trip.count1051 = zext nneg i32 %i.bbx to i64
  %wide.trip.count = zext nneg i32 %i.bdj to i64  ; 7 uses
  %i.bdn = mul i32 %i.bcb, %i.bbz                 ; 2 uses
  %i.bdo = mul i32 %i.bdn, %i.bbv
  %i.bdp = zext i32 %i.bdo to i64
  %i.bdq = mul i32 %i.bdn, %i.bbx
  %i.bdr = zext i32 %i.bdq to i64
  %min.iters.check1391 = icmp ult i32 %i.bdj, 8
  %n.vec1393 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n1400 = icmp eq i64 %n.vec1393, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader1021

.preheader1021:                                   ; preds = %.preheader1021.preheader, %._crit_edge1032
  %indvars.iv1053 = phi i64 [ 0, %.preheader1021.preheader ], [ %indvars.iv.next1054, %._crit_edge1032 ] ; 5 uses
  %i.bds = mul i64 %indvars.iv1053, %wide.trip.count
  %i.bdt = mul i64 %indvars.iv1053, %i.bdr
  %i.bdu = mul nuw nsw i64 %indvars.iv1053, %i.bdm
  br label %.preheader

._crit_edge1035.split:                            ; preds = %._crit_edge1032, %.preheader1021.lr.ph, %bb.lq
  %i.bdv = mul nsw i32 %i.bbx, %i.bbv
  store i32 %i.bdv, ptr %i.bbu, align 4, !tbaa !40
  store i32 1, ptr %i.bbw, align 4, !tbaa !40
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdd, i64 128
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdd, i64 136
  %i.bdy = load i64, ptr %i.bdx, align 8, !tbaa !63
  store i64 %i.bdy, ptr %i.bdw, align 8, !tbaa !63
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %86) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #26
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit722.thread1010

bb.lr:                                            ; preds = %bb.lp
  %i.bdz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #26
  br label %bb.om

.preheader:                                       ; preds = %.preheader1021, %._crit_edge
  %indvars.iv1048 = phi i64 [ 0, %.preheader1021 ], [ %indvars.iv.next1049, %._crit_edge ] ; 5 uses
  %i.bea = add nuw nsw i64 %indvars.iv1048, %i.bdu
  %i.beb = trunc nsw i64 %i.bea to i32
  %i.bec = mul i32 %i.bdj, %i.beb
  %i.bed = mul nuw nsw i64 %indvars.iv1048, %i.bdl
  %i.bee = add nuw nsw i64 %i.bed, %indvars.iv1053
  %i.bef = trunc nsw i64 %i.bee to i32
  %i.beg = mul i32 %i.bdj, %i.bef
  %i.beh = sext i32 %i.bec to i64
  %i.bei = sext i32 %i.beg to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.bdb, i64 %i.beh ; 6 uses
  %invariant.gep1344 = getelementptr [4 x i8], ptr %i.bdf, i64 %i.bei ; 6 uses
  br i1 %min.iters.check1391, label %scalar.ph1390.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.bej = mul i64 %indvars.iv1048, %wide.trip.count
  %i.bek = add i64 %i.bdt, %i.bej
  %sext1417 = shl i64 %i.bek, 32
  %i.bel = ashr exact i64 %sext1417, 30
  %i.bem = mul i64 %indvars.iv1048, %i.bdp
  %i.ben = add i64 %i.bds, %i.bem
  %sext1416 = shl i64 %i.ben, 32
  %i.beo = ashr exact i64 %sext1416, 30
  %i.bep = add i64 %i.beo, %i.bdg
  %i.beq = add i64 %i.bel, %i.bdc
  %i.ber = sub i64 %i.beq, %i.bep
  %diff.check = icmp ugt i64 %i.ber, -32
  br i1 %diff.check, label %scalar.ph1390.preheader, label %vector.body1394

vector.body1394:                                  ; preds = %vector.memcheck, %vector.body1394
  %index1395 = phi i64 [ %index.next1398, %vector.body1394 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bes = getelementptr [4 x i8], ptr %invariant.gep, i64 %index1395 ; 2 uses
  %i.bet = getelementptr i8, ptr %i.bes, i64 16
  %wide.load1396 = load <4 x float>, ptr %i.bes, align 4, !tbaa !298
  %wide.load1397 = load <4 x float>, ptr %i.bet, align 4, !tbaa !298
  %i.beu = getelementptr [4 x i8], ptr %invariant.gep1344, i64 %index1395 ; 2 uses
  %i.bev = getelementptr i8, ptr %i.beu, i64 16
  store <4 x float> %wide.load1396, ptr %i.beu, align 4, !tbaa !298
  store <4 x float> %wide.load1397, ptr %i.bev, align 4, !tbaa !298
  %index.next1398 = add nuw i64 %index1395, 8     ; 2 uses
  %i.bew = icmp eq i64 %index.next1398, %n.vec1393
  br i1 %i.bew, label %middle.block1399, label %vector.body1394, !llvm.loop !585

middle.block1399:                                 ; preds = %vector.body1394
  br i1 %cmp.n1400, label %._crit_edge, label %scalar.ph1390.preheader

scalar.ph1390.preheader:                          ; preds = %vector.memcheck, %.preheader, %middle.block1399
  %indvars.iv1045.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec1393, %middle.block1399 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph1390.prol.loopexit, label %scalar.ph1390.prol

scalar.ph1390.prol:                               ; preds = %scalar.ph1390.preheader, %scalar.ph1390.prol
  %indvars.iv1045.prol = phi i64 [ %indvars.iv.next1046.prol, %scalar.ph1390.prol ], [ %indvars.iv1045.ph, %scalar.ph1390.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph1390.prol ], [ 0, %scalar.ph1390.preheader ]
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv1045.prol
  %i.bex = load float, ptr %gep.prol, align 4, !tbaa !298
  %gep1345.prol = getelementptr [4 x i8], ptr %invariant.gep1344, i64 %indvars.iv1045.prol
  store float %i.bex, ptr %gep1345.prol, align 4, !tbaa !298
  %indvars.iv.next1046.prol = add nuw nsw i64 %indvars.iv1045.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph1390.prol.loopexit, label %scalar.ph1390.prol, !llvm.loop !586

scalar.ph1390.prol.loopexit:                      ; preds = %scalar.ph1390.prol, %scalar.ph1390.preheader
  %indvars.iv1045.unr = phi i64 [ %indvars.iv1045.ph, %scalar.ph1390.preheader ], [ %indvars.iv.next1046.prol, %scalar.ph1390.prol ]
  %i.bey = sub nsw i64 %indvars.iv1045.ph, %wide.trip.count
  %i.bez = icmp ugt i64 %i.bey, -4
  br i1 %i.bez, label %._crit_edge, label %scalar.ph1390

._crit_edge1032:                                  ; preds = %._crit_edge
  %indvars.iv.next1054 = add nuw nsw i64 %indvars.iv1053, 1 ; 2 uses
  %exitcond1057.not = icmp eq i64 %indvars.iv.next1054, %wide.trip.count1056
  br i1 %exitcond1057.not, label %._crit_edge1035.split, label %.preheader1021, !llvm.loop !587

._crit_edge:                                      ; preds = %scalar.ph1390.prol.loopexit, %scalar.ph1390, %middle.block1399
  %indvars.iv.next1049 = add nuw nsw i64 %indvars.iv1048, 1 ; 2 uses
  %exitcond1052.not = icmp eq i64 %indvars.iv.next1049, %wide.trip.count1051
  br i1 %exitcond1052.not, label %._crit_edge1032, label %.preheader, !llvm.loop !588

scalar.ph1390:                                    ; preds = %scalar.ph1390.prol.loopexit, %scalar.ph1390
  %indvars.iv1045 = phi i64 [ %indvars.iv.next1046.3, %scalar.ph1390 ], [ %indvars.iv1045.unr, %scalar.ph1390.prol.loopexit ] ; 6 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv1045
  %i.bfa = load float, ptr %gep, align 4, !tbaa !298
  %gep1345 = getelementptr [4 x i8], ptr %invariant.gep1344, i64 %indvars.iv1045
  store float %i.bfa, ptr %gep1345, align 4, !tbaa !298
  %indvars.iv.next1046 = add nuw nsw i64 %indvars.iv1045, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next1046
  %i.bfb = load float, ptr %gep.1, align 4, !tbaa !298
  %gep1345.1 = getelementptr [4 x i8], ptr %invariant.gep1344, i64 %indvars.iv.next1046
  store float %i.bfb, ptr %gep1345.1, align 4, !tbaa !298
  %indvars.iv.next1046.1 = add nuw nsw i64 %indvars.iv1045, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next1046.1
  %i.bfc = load float, ptr %gep.2, align 4, !tbaa !298
  %gep1345.2 = getelementptr [4 x i8], ptr %invariant.gep1344, i64 %indvars.iv.next1046.1
  store float %i.bfc, ptr %gep1345.2, align 4, !tbaa !298
  %indvars.iv.next1046.2 = add nuw nsw i64 %indvars.iv1045, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next1046.2
  %i.bfd = load float, ptr %gep.3, align 4, !tbaa !298
  %gep1345.3 = getelementptr [4 x i8], ptr %invariant.gep1344, i64 %indvars.iv.next1046.2
  store float %i.bfd, ptr %gep1345.3, align 4, !tbaa !298
  %indvars.iv.next1046.3 = add nuw nsw i64 %indvars.iv1045, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next1046.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph1390, !llvm.loop !589

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit722.thread1010: ; preds = %bb.le, %._crit_edge1035.split, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit722
  br i1 %i.asm, label %bb.ls, label %.loopexit1020

bb.ls:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit722.thread1010
  %i.bfe = mul nsw i32 %i.bcb, %i.bbz
  %i.bff = mul nsw i32 %i.bfe, %i.bbx             ; 2 uses
  %i.bfg = icmp sgt i32 %i.bbv, 0
  br i1 %i.bfg, label %.lr.ph1039, label %.loopexit1020

.lr.ph1039:                                       ; preds = %bb.ls
  %i.bfh = getelementptr inbounds nuw i8, ptr %90, i64 8
  %i.bfi = getelementptr inbounds nuw i8, ptr %90, i64 16 ; 5 uses
  %i.bfj = getelementptr inbounds nuw i8, ptr %90, i64 24
  %i.bfk = getelementptr inbounds nuw i8, ptr %90, i64 32
  %i.bfl = getelementptr inbounds nuw i8, ptr %89, i64 16 ; 4 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %91, i64 8
  %i.bfn = getelementptr inbounds nuw i8, ptr %91, i64 16 ; 4 uses
  %i.bfo = getelementptr inbounds nuw i8, ptr %91, i64 32
  %i.bfp = getelementptr inbounds nuw i8, ptr %89, i64 32
  %i.bfq = getelementptr inbounds nuw i8, ptr %89, i64 8
  br label %bb.lt

bb.lt:                                            ; preds = %.lr.ph1039, %.loopexit1019
  %indvars.iv1058 = phi i64 [ 0, %.lr.ph1039 ], [ %indvars.iv.next1059, %.loopexit1019 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #26
  %i.bfr = load ptr, ptr %i.asz, align 8, !tbaa !304 ; 2 uses
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfr, i64 24
  %i.bft = load ptr, ptr %i.bfs, align 8, !tbaa !291
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bfr, i64 128
  %i.bfv = load i64, ptr %i.bfu, align 8, !tbaa !63
  %i.bfw = mul i64 %i.bfv, %indvars.iv1058
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bfw
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %87, i32 noundef 1, i32 noundef %i.bff, i32 noundef 5, ptr noundef %i.bfx, i64 noundef 0)
          to label %bb.lu unwind label %bb.mi

bb.lu:                                            ; preds = %bb.lt
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #26
  %i.bfy = load ptr, ptr %i.asz, align 8, !tbaa !304 ; 2 uses
  %i.bfz = or disjoint i64 %indvars.iv1058, 1
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfy, i64 24
  %i.bgb = load ptr, ptr %i.bga, align 8, !tbaa !291
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bfy, i64 128
  %i.bgd = load i64, ptr %i.bgc, align 8, !tbaa !63
  %i.bge = mul i64 %i.bgd, %i.bfz
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bgb, i64 %i.bge
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %88, i32 noundef 1, i32 noundef %i.bff, i32 noundef 5, ptr noundef %i.bgf, i64 noundef 0)
          to label %bb.lv unwind label %bb.mj

bb.lv:                                            ; preds = %bb.lu
  %i.bgg = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %87)
          to label %.noexc726 unwind label %bb.mk

.noexc726:                                        ; preds = %bb.lv
  br i1 %i.bgg, label %bb.lw, label %bb.lx

bb.lw:                                            ; preds = %.noexc726
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %89, i8 0, i64 40, i1 false), !alias.scope !607
  br label %_ZN2cv3Mat5beginIfEENS_12MatIterator_IT_EEv.exit

bb.lx:                                            ; preds = %.noexc726
  invoke void @_ZN2cv16MatConstIteratorC2EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(40) %89, ptr noundef nonnull align 8 dereferenceable(208) %87)
          to label %_ZN2cv3Mat5beginIfEENS_12MatIterator_IT_EEv.exit unwind label %bb.mk

end_hunk_0
