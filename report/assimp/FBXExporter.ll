inline.NumInlined: 9031
inline.NumDeleted: 2243
begin_hunk_0_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
bb.ahj:                                           ; preds = %bb.ahi
  %i.ghg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body4943 unwind label %bb.ahk

bb.ahk:                                           ; preds = %bb.ahj
  %i.ghh = landingpad { ptr, i32 }
          catch ptr null
  %i.ghi = extractvalue { ptr, i32 } %i.ghh, 0
  call void @__clang_call_terminate(ptr %i.ghi) #33
  unreachable

bb.ahl:                                           ; preds = %bb.ahi
  unreachable

.noexc4942:                                       ; preds = %bb.ahh, %bb.ahg, %._crit_edge.i.i.i.i.i18025
  %i.ghj = load i64, ptr %i.a, align 8            ; 2 uses
  %i.ghk = getelementptr inbounds nuw i8, ptr %i.ggt, i64 40 ; 2 uses
  store i64 %i.ghj, ptr %i.ghk, align 8
  %i.ghl = load ptr, ptr %i.ggu, align 8
  %i.ghm = getelementptr inbounds nuw i8, ptr %i.ghl, i64 %i.ghj
  store i8 0, ptr %i.ghm, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.ghn = getelementptr inbounds nuw i8, ptr %i.ggt, i64 64
  store ptr null, ptr %i.ghn, align 8
  store ptr %i.ggt, ptr %i.fsu, align 8
  %i.gho = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P6aiNodeESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %166, ptr %.08.lcssa.i.i.i12.i3121, ptr noundef nonnull align 8 dereferenceable(32) %i.ggu)
          to label %bb.ahm unwind label %bb.ahp   ; 2 uses

bb.ahm:                                           ; preds = %.noexc4942
  %i.ghp = extractvalue { ptr, ptr } %i.gho, 0    ; 2 uses
  %i.ghq = extractvalue { ptr, ptr } %i.gho, 1    ; 5 uses
  %.not.i4924 = icmp eq ptr %i.ghq, null
  br i1 %.not.i4924, label %bb.ahq, label %bb.ahn

bb.ahn:                                           ; preds = %bb.ahm
  %.not.i.i.i4925 = icmp ne ptr %i.ghp, null
  %i.ghr = icmp eq ptr %i.ghq, %i.eyo
  %or.cond.i.i.i4926 = or i1 %.not.i.i.i4925, %i.ghr
  br i1 %or.cond.i.i.i4926, label %.thread.i4932, label %bb.aho

bb.aho:                                           ; preds = %bb.ahn
  %i.ghs = load i64, ptr %i.ghk, align 8          ; 2 uses
  %i.ght = getelementptr inbounds nuw i8, ptr %i.ghq, i64 40
  %i.ghu = load i64, ptr %i.ght, align 8          ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i4927 = call i64 @llvm.umin.i64(i64 %i.ghu, i64 %i.ghs) ; 2 uses
  %i.ghv = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i4927, 0
  br i1 %i.ghv, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i4934, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i4928

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i4928: ; preds = %bb.aho
  %i.ghw = getelementptr inbounds nuw i8, ptr %i.ghq, i64 32
  %i.ghx = load ptr, ptr %i.ghw, align 8
  %i.ghy = load ptr, ptr %i.ggu, align 8
  %i.ghz = call i32 @memcmp(ptr noundef %i.ghy, ptr noundef %i.ghx, i64 noundef %.sroa.speculated.i.i.i.i.i.i4927) #31 ; 2 uses
  %.not.i.i.i.i.i.i4929 = icmp eq i32 %i.ghz, 0
  br i1 %.not.i.i.i.i.i.i4929, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i4934, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i4930

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i4934: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i4928, %bb.aho
  %i.gia = sub i64 %i.ghs, %i.ghu
  %spec.select7.i.i.i.i.i.i.i4935 = call i64 @llvm.smax.i64(i64 %i.gia, i64 -2147483648)
  %.08.i.i.i.i.i.i.i4936 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i4935, i64 2147483647)
  %.0.i6.i.i.i.i.i.i4937 = trunc nsw i64 %.08.i.i.i.i.i.i.i4936 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i4930

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i4930: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i4934, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i4928
  %.0.i.i.i.i.i.i4931 = phi i32 [ %i.ghz, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i4928 ], [ %.0.i6.i.i.i.i.i.i4937, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i4934 ]
  %i.gib = icmp slt i32 %.0.i.i.i.i.i.i4931, 0
  br label %.thread.i4932

.thread.i4932:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i4930, %bb.ahn
  %i.gic = phi i1 [ %i.gib, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i4930 ], [ true, %bb.ahn ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gic, ptr noundef nonnull %i.ggt, ptr noundef nonnull %i.ghq, ptr noundef nonnull align 8 dereferenceable(32) %i.eyo) #31
  %i.gid = load i64, ptr %i.eys, align 8
  %i.gie = add i64 %i.gid, 1
  store i64 %i.gie, ptr %i.eys, align 8
  br label %.noexc3130

bb.ahp:                                           ; preds = %.noexc4942
  %i.gif = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P6aiNodeESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %.body4943

bb.ahq:                                           ; preds = %bb.ahm
  %i.gig = load ptr, ptr %i.ggu, align 8          ; 2 uses
  %i.gih = icmp eq ptr %i.gig, %i.ggv
  br i1 %i.gih, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P6aiNodeESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i4939, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4938

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4938: ; preds = %bb.ahq
  %i.gii = load i64, ptr %i.ggv, align 8
  %i.gij = add i64 %i.gii, 1
  call void @_ZdlPvm(ptr noundef %i.gig, i64 noundef %i.gij) #32
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P6aiNodeESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i4939

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P6aiNodeESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i4939: ; preds = %bb.ahq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4938
  call void @_ZdlPvm(ptr noundef nonnull %i.ggt, i64 noundef 72) #32
  br label %.noexc3130

.noexc3130:                                       ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P6aiNodeESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i4939, %.thread.i4932
  %.sroa.0.010.i4933 = phi ptr [ %i.ggt, %.thread.i4932 ], [ %i.ghp, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P6aiNodeESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i4939 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.ahr

bb.ahr:                                           ; preds = %.noexc3130, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i3117
  %.sroa.07.0.i3119 = phi ptr [ %.sroa.0.010.i4933, %.noexc3130 ], [ %.19.i.i.i.i3108, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i3117 ]
  %i.gik = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i3119, i64 64
  %i.gil = load ptr, ptr %i.gik, align 8
  %.not827 = icmp eq ptr %i.gil, %i.gfi           ; 2 uses
  br i1 %.not827, label %bb.ahs, label %bb.ahv

bb.ahs:                                           ; preds = %bb.ahr
  %i.gim = load ptr, ptr %i.gch, align 8
  %i.gin = getelementptr inbounds nuw [8 x i8], ptr %i.gim, i64 %.067413902
  %i.gio = load ptr, ptr %i.gin, align 8
  br label %bb.ahv

bb.aht:                                           ; preds = %.noexc.i3096
  %i.gip = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3134

bb.ahu:                                           ; preds = %.critedge.i3120
  %i.giq = landingpad { ptr, i32 }
          cleanup
  br label %.body4943

.body4943:                                        ; preds = %bb.ahu, %bb.ahj, %bb.ahp
  %eh.lpad-body4944 = phi { ptr, i32 } [ %i.gif, %bb.ahp ], [ %i.giq, %bb.ahu ], [ %i.ghg, %bb.ahj ] ; 2 uses
  %i.gir = load ptr, ptr %180, align 8            ; 2 uses
  %i.gis = icmp eq ptr %i.gir, %i.fss
  br i1 %i.gis, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3132: ; preds = %.body4943
  %i.git = load i64, ptr %i.fss, align 8
  %i.giu = add i64 %i.git, 1
  call void @_ZdlPvm(ptr noundef %i.gir, i64 noundef %i.giu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3134

bb.ahv:                                           ; preds = %bb.ahr, %bb.ahs
  %.1669 = phi ptr [ %i.gio, %bb.ahs ], [ %.066813903, %bb.ahr ] ; 3 uses
  %i.giv = load ptr, ptr %180, align 8            ; 2 uses
  %i.giw = icmp eq ptr %i.giv, %i.fss
  br i1 %i.giw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3135: ; preds = %bb.ahv
  %i.gix = load i64, ptr %i.fss, align 8
  %i.giy = add i64 %i.gix, 1
  call void @_ZdlPvm(ptr noundef %i.giv, i64 noundef %i.giy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3137: ; preds = %bb.ahv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3135
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #31
  br i1 %.not827, label %._crit_edge13906, label %bb.aha

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3134: ; preds = %.body4943, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3132, %bb.aht
  %.pn825 = phi { ptr, i32 } [ %i.gip, %bb.aht ], [ %eh.lpad-body4944, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3132 ], [ %eh.lpad-body4944, %.body4943 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #31
  br label %bb.anx

._crit_edge13906:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3137, %bb.aha
  %.not828 = icmp eq ptr %.1669, null
  br i1 %.not828, label %._crit_edge13906.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3152

._crit_edge13906.thread:                          ; preds = %.lr.ph13937, %._crit_edge13906
  %.02022.i.i.i = load ptr, ptr %i.fso, align 8   ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i3138

.lr.ph.i.i.i3138:                                 ; preds = %._crit_edge13906.thread, %.lr.ph.i.i.i3138
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i3138 ], [ %.02022.i.i.i, %._crit_edge13906.thread ] ; 4 uses
  %i.giz = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.gja = load ptr, ptr %i.giz, align 8          ; 2 uses
  %i.gjb = icmp ult ptr %i.gfi, %i.gja            ; 2 uses
  %.in.v.i.i.i = select i1 %i.gjb, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i3139 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i3139, label %._crit_edge.i.i.i3140, label %.lr.ph.i.i.i3138, !llvm.loop !263

._crit_edge.i.i.i3140:                            ; preds = %.lr.ph.i.i.i3138
  br i1 %i.gjb, label %._crit_edge.thread.i.i.i, label %bb.ahx

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i3140, %._crit_edge13906.thread
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i3140 ], [ %i.fsn, %._crit_edge13906.thread ] ; 4 uses
  %i.gjc = load ptr, ptr %i.fsp, align 8
  %i.gjd = icmp eq ptr %.019.lcssa29.i.i.i, %i.gjc
  br i1 %i.gjd, label %select.unfold.i.i, label %bb.ahw

bb.ahw:                                           ; preds = %._crit_edge.thread.i.i.i
  %i.gje = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #36
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.gje, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %bb.ahx

bb.ahx:                                           ; preds = %bb.ahw, %._crit_edge.i.i.i3140
  %i.gjf = phi ptr [ %.pre.i.i, %bb.ahw ], [ %i.gja, %._crit_edge.i.i.i3140 ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.ahw ], [ %.02024.i.i.i, %._crit_edge.i.i.i3140 ]
  %i.gjg = icmp ult ptr %i.gjf, %i.gfi
  br i1 %i.gjg, label %select.unfold.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3152

select.unfold.i.i:                                ; preds = %bb.ahx, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.ahx ] ; 3 uses
  %i.gjh = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.fsn
  br i1 %i.gjh, label %_ZNSt8_Rb_treeIPK6aiNodeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i, label %bb.ahy

bb.ahy:                                           ; preds = %select.unfold.i.i
  %i.gji = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.gjj = load ptr, ptr %i.gji, align 8
  %i.gjk = icmp ult ptr %i.gfi, %i.gjj
  br label %_ZNSt8_Rb_treeIPK6aiNodeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIPK6aiNodeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i: ; preds = %bb.ahy, %select.unfold.i.i
  %i.gjl = phi i1 [ %i.gjk, %bb.ahy ], [ true, %select.unfold.i.i ]
  %i.gjm = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc3141 unwind label %bb.ahz ; 2 uses

.noexc3141:                                       ; preds = %_ZNSt8_Rb_treeIPK6aiNodeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i
  %i.gjn = getelementptr inbounds nuw i8, ptr %i.gjm, i64 32
  store ptr %i.gfi, ptr %i.gjn, align 8
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gjl, ptr noundef nonnull %i.gjm, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.fsn) #31
  %i.gjo = load i64, ptr %i.fsr, align 8
  %i.gjp = add i64 %i.gjo, 1
  store i64 %i.gjp, ptr %i.fsr, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3152

bb.ahz:                                           ; preds = %_ZNSt8_Rb_treeIPK6aiNodeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i
  %i.gjq = landingpad { ptr, i32 }
          cleanup
  br label %bb.anx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3152: ; preds = %._crit_edge13906, %bb.ahx, %.noexc3141
  %.not82816749 = phi i1 [ true, %.noexc3141 ], [ true, %bb.ahx ], [ false, %._crit_edge13906 ]
  %.267016747 = phi ptr [ null, %.noexc3141 ], [ null, %bb.ahx ], [ %.1669, %._crit_edge13906 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn) #31
  %i.gjr = load i64, ptr %i.fcn, align 8
  %i.gjs = add nsw i64 %i.gjr, 1                  ; 2 uses
  store i64 %i.gjs, ptr %i.fcn, align 8
  store i64 %i.gjs, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %181) #31
  store ptr %i.fsv, ptr %181, align 8
  store i64 8243115031234241860, ptr %i.fsv, align 8
  store i64 8, ptr %i.fsw, align 8
  store i8 0, ptr %i.fxd, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.fsx, i8 0, i64 49, i1 false)
  %.pre15452.a = load ptr, ptr @_ZN6Assimp3FBXL9SEPARATORB5cxx11E, align 8, !noalias !264
  %.pre15453.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Assimp3FBXL9SEPARATORB5cxx11E, i64 8), align 8, !noalias !264 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %182) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  store ptr %i.fsy, ptr %182, align 8, !alias.scope !267
  store i64 0, ptr %i.fsz, align 8, !alias.scope !267
  store i8 0, ptr %i.fsy, align 8, !alias.scope !267
  %i.gjt = add i64 %.pre15453.a, 11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %182, i64 noundef %i.gjt)
          to label %bb.aia unwind label %.loopexit5909

bb.aia:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3152
  %i.gju = load i64, ptr %i.fsz, align 8, !alias.scope !267
  %i.gjv = sub i64 4611686018427387903, %i.gju
  %i.gjw = icmp ult i64 %i.gjv, %.pre15453.a
  br i1 %i.gjw, label %.invoke.i.i3159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i3156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i3156: ; preds = %bb.aia
  %i.gjx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %182, ptr noundef %.pre15452.a, i64 noundef %.pre15453.a)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i3157 unwind label %.loopexit5909 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i3157: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i3156
  %i.gjy = load i64, ptr %i.fsz, align 8, !alias.scope !267
  %i.gjz = add i64 %i.gjy, -4611686018427387893
  %i.gka = icmp ult i64 %i.gjz, 11
  br i1 %i.gka, label %.invoke.i.i3159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i3158

.invoke.i.i3159:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i3157, %bb.aia
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.405) #30
          to label %.cont.i.i3160 unwind label %.loopexit.split-lp5910

.cont.i.i3160:                                    ; preds = %.invoke.i.i3159
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i3158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i3157
  %i.gkb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %182, ptr noundef nonnull @.str.325, i64 noundef 11)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit3163 unwind label %.loopexit5909 ; 0 uses

.loopexit5909:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i3156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i3158
  %lpad.loopexit5911 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aib

.loopexit.split-lp5910:                           ; preds = %.invoke.i.i3159
  %lpad.loopexit.split-lp5912 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aib

bb.aib:                                           ; preds = %.loopexit.split-lp5910, %.loopexit5909
  %lpad.phi5913 = phi { ptr, i32 } [ %lpad.loopexit5911, %.loopexit5909 ], [ %lpad.loopexit.split-lp5912, %.loopexit.split-lp5910 ] ; 2 uses
  %i.gkc = load ptr, ptr %182, align 8, !alias.scope !267 ; 2 uses
  %i.gkd = icmp eq ptr %i.gkc, %i.fsy
  br i1 %i.gkd, label %.body3161, label %.body3161.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit3163: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i3158
  %i.gke = load ptr, ptr %i.fta, align 8          ; 5 uses
  %i.gkf = load ptr, ptr %i.ftb, align 8
  %.not.i.i3164 = icmp eq ptr %i.gke, %i.gkf
  br i1 %.not.i.i3164, label %bb.aid, label %bb.aic

bb.aic:                                           ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit3163
  %i.gkg = load i64, ptr %i.bn, align 8
  invoke void @_ZN6Assimp3FBX17FBXExportPropertyC1El(ptr noundef nonnull align 8 dereferenceable(32) %i.gke, i64 noundef %i.gkg)
          to label %.noexc3171 unwind label %.loopexit5914

.noexc3171:                                       ; preds = %bb.aic
  %i.gkh = load ptr, ptr %i.fta, align 8
  %i.gki = getelementptr inbounds nuw i8, ptr %i.gkh, i64 32 ; 2 uses
  store ptr %i.gki, ptr %i.fta, align 8
  %.pre15454.a = load ptr, ptr %i.ftb, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRKlEEERS2_DpOT_.exit.i3165

bb.aid:                                           ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit3163
  %i.gkj = load ptr, ptr %i.fsx, align 8          ; 5 uses
  %i.gkk = ptrtoint ptr %i.gke to i64
  %i.gkl = ptrtoint ptr %i.gkj to i64             ; 2 uses
  %i.gkm = sub i64 %i.gkk, %i.gkl                 ; 3 uses
  %i.gkn = icmp eq i64 %i.gkm, 9223372036854775776
  br i1 %i.gkn, label %.invoke17991, label %_ZNKSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12_M_check_lenEmPKc.exit.i4992

_ZNKSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12_M_check_lenEmPKc.exit.i4992: ; preds = %bb.aid
  %i.gko = ashr exact i64 %i.gkm, 5               ; 3 uses
  %.sroa.speculated.i.i4993 = call i64 @llvm.umax.i64(i64 %i.gko, i64 1)
  %i.gkp = add nsw i64 %.sroa.speculated.i.i4993, %i.gko ; 2 uses
  %i.gkq = icmp ult i64 %i.gkp, %i.gko
  %i.gkr = call i64 @llvm.umin.i64(i64 %i.gkp, i64 288230376151711743)
  %i.gks = select i1 %i.gkq, i64 288230376151711743, i64 %i.gkr ; 3 uses
  %.not.i.i4994 = icmp ne i64 %i.gks, 0
  call void @llvm.assume(i1 %.not.i.i4994)
  %i.gkt = shl nuw nsw i64 %i.gks, 5              ; 2 uses
  %i.gku = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gkt) #34
          to label %.noexc5012 unwind label %.loopexit5914 ; 6 uses

.noexc5012:                                       ; preds = %_ZNKSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12_M_check_lenEmPKc.exit.i4992
  %i.gkv = getelementptr inbounds nuw i8, ptr %i.gku, i64 %i.gkm
  %i.gkw = load i64, ptr %i.bn, align 8
  invoke void @_ZN6Assimp3FBX17FBXExportPropertyC1El(ptr noundef nonnull align 8 dereferenceable(32) %i.gkv, i64 noundef %i.gkw)
          to label %_ZNSt16allocator_traitsISaIN6Assimp3FBX17FBXExportPropertyEEE9constructIS2_JRKlEEEvRS3_PT_DpOT0_.exit.i4995 unwind label %bb.aig

_ZNSt16allocator_traitsISaIN6Assimp3FBX17FBXExportPropertyEEE9constructIS2_JRKlEEEvRS3_PT_DpOT0_.exit.i4995: ; preds = %.noexc5012
  %.not10.i.i.i.i4996 = icmp eq ptr %i.gkj, %i.gke
  br i1 %.not10.i.i.i.i4996, label %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i5008, label %.lr.ph.i.i.i.i4997

.lr.ph.i.i.i.i4997:                               ; preds = %_ZNSt16allocator_traitsISaIN6Assimp3FBX17FBXExportPropertyEEE9constructIS2_JRKlEEEvRS3_PT_DpOT0_.exit.i4995, %.lr.ph.i.i.i.i4997
  %.012.i.i.i.i4998 = phi ptr [ %i.glf, %.lr.ph.i.i.i.i4997 ], [ %i.gku, %_ZNSt16allocator_traitsISaIN6Assimp3FBX17FBXExportPropertyEEE9constructIS2_JRKlEEEvRS3_PT_DpOT0_.exit.i4995 ] ; 4 uses
  %.0911.i.i.i.i4999 = phi ptr [ %i.gle, %.lr.ph.i.i.i.i4997 ], [ %i.gkj, %_ZNSt16allocator_traitsISaIN6Assimp3FBX17FBXExportPropertyEEE9constructIS2_JRKlEEEvRS3_PT_DpOT0_.exit.i4995 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.gkx = load i8, ptr %.0911.i.i.i.i4999, align 8, !alias.scope !273, !noalias !270
  store i8 %i.gkx, ptr %.012.i.i.i.i4998, align 8, !alias.scope !270, !noalias !273
  %i.gky = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4998, i64 8
  %i.gkz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i4999, i64 8 ; 2 uses
  %i.gla = load <2 x ptr>, ptr %i.gkz, align 8, !alias.scope !273, !noalias !270
  store <2 x ptr> %i.gla, ptr %i.gky, align 8, !alias.scope !270, !noalias !273
  %i.glb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4998, i64 24
  %i.glc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i4999, i64 24
  %i.gld = load ptr, ptr %i.glc, align 8, !alias.scope !273, !noalias !270
  store ptr %i.gld, ptr %i.glb, align 8, !alias.scope !270, !noalias !273
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gkz, i8 0, i64 24, i1 false), !alias.scope !273, !noalias !270
  %i.gle = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i4999, i64 32 ; 2 uses
  %i.glf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4998, i64 32 ; 2 uses
  %.not.i.i.i.i5000 = icmp eq ptr %i.gle, %i.gke
  br i1 %.not.i.i.i.i5000, label %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i5008, label %.lr.ph.i.i.i.i4997, !llvm.loop !146

_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i5008: ; preds = %.lr.ph.i.i.i.i4997, %_ZNSt16allocator_traitsISaIN6Assimp3FBX17FBXExportPropertyEEE9constructIS2_JRKlEEEvRS3_PT_DpOT0_.exit.i4995
  %.0.lcssa.i.i.i.i5002 = phi ptr [ %i.gku, %_ZNSt16allocator_traitsISaIN6Assimp3FBX17FBXExportPropertyEEE9constructIS2_JRKlEEEvRS3_PT_DpOT0_.exit.i4995 ], [ %i.glf, %.lr.ph.i.i.i.i4997 ]
  %i.glg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i5002, i64 32 ; 2 uses
  %.not.i33.i5010 = icmp eq ptr %i.gkj, null
  br i1 %.not.i33.i5010, label %.noexc3172, label %bb.aie

bb.aie:                                           ; preds = %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i5008
  %i.glh = load ptr, ptr %i.ftb, align 8
  %i.gli = ptrtoint ptr %i.glh to i64
  %i.glj = sub i64 %i.gli, %i.gkl
  call void @_ZdlPvm(ptr noundef nonnull %i.gkj, i64 noundef %i.glj) #32
  br label %.noexc3172

bb.aif:                                           ; preds = %bb.aig
  %i.glk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body4966 unwind label %bb.aih

bb.aig:                                           ; preds = %.noexc5012
  %i.gll = landingpad { ptr, i32 }
          catch ptr null
  %i.glm = extractvalue { ptr, i32 } %i.gll, 0
  %i.gln = call ptr @__cxa_begin_catch(ptr %i.glm) #31 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.gku, i64 noundef %i.gkt) #32
  invoke void @__cxa_rethrow() #30
          to label %bb.aii unwind label %bb.aif

bb.aih:                                           ; preds = %bb.aif
  %i.glo = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
begin_hunk_1_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
  %i.gqg = load i64, ptr %i.ftq, align 8
  %i.gqh = add i64 %i.gqg, 1
  call void @_ZdlPvm(ptr noundef %i.gqe, i64 noundef %i.gqh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3205: ; preds = %bb.ajg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3203
  call void @llvm.lifetime.end.p0(ptr nonnull %184) #31
  br i1 %.not82816749, label %bb.alb, label %bb.ajh

bb.ajh:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3205
  call void @llvm.lifetime.start.p0(ptr nonnull %185) #31
  store i32 0, ptr %i.fts, align 8
  store ptr null, ptr %i.ftt, align 8
  store ptr %i.fts, ptr %i.ftu, align 8
  store ptr %i.fts, ptr %i.ftv, align 8
  store i64 0, ptr %i.ftw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %186) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %186, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %187) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %187, i8 0, i64 24, i1 false)
  %i.gqi = getelementptr inbounds nuw i8, ptr %.267016747, i64 1028 ; 2 uses
  %i.gqj = load i32, ptr %i.gqi, align 4
  %.not14029 = icmp eq i32 %i.gqj, 0
  br i1 %.not14029, label %_ZN6Assimp3FBX4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i3278, label %.lr.ph13912

.lr.ph13912:                                      ; preds = %bb.ajh
  %i.gqk = getelementptr inbounds nuw i8, ptr %.267016747, i64 1048 ; 2 uses
  br label %bb.ajj

.loopexit5914:                                    ; preds = %bb.aic, %bb.aij, %bb.aiq, %_ZNKSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12_M_check_lenEmPKc.exit.i4946, %_ZNKSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12_M_check_lenEmPKc.exit.i4968, %_ZNKSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12_M_check_lenEmPKc.exit.i4992
  %lpad.loopexit5916 = landingpad { ptr, i32 }
          cleanup
  br label %.body4966

.loopexit.split-lp5915:                           ; preds = %.invoke17991
  %lpad.loopexit.split-lp5917 = landingpad { ptr, i32 }
          cleanup
  br label %.body4966

.body4966:                                        ; preds = %.loopexit5914, %.loopexit.split-lp5915, %bb.aim, %bb.aif, %bb.ait
  %eh.lpad-body4967 = phi { ptr, i32 } [ %i.gog, %bb.ait ], [ %i.gmv, %bb.aim ], [ %i.glk, %bb.aif ], [ %lpad.loopexit5916, %.loopexit5914 ], [ %lpad.loopexit.split-lp5917, %.loopexit.split-lp5915 ] ; 2 uses
  %i.gql = load ptr, ptr %182, align 8            ; 2 uses
  %i.gqm = icmp eq ptr %i.gql, %i.fsy
  br i1 %i.gqm, label %.body3161, label %.body3161.sink.split

.body3161.sink.split:                             ; preds = %.body4966, %bb.aib
  %.sink24221 = phi ptr [ %i.gkc, %bb.aib ], [ %i.gql, %.body4966 ]
  %.pn831.ph = phi { ptr, i32 } [ %lpad.phi5913, %bb.aib ], [ %eh.lpad-body4967, %.body4966 ]
  %i.gqn = load i64, ptr %i.fsy, align 8
  %i.gqo = add i64 %i.gqn, 1
  call void @_ZdlPvm(ptr noundef %.sink24221, i64 noundef %i.gqo) #32
  br label %.body3161

.body3161:                                        ; preds = %.body3161.sink.split, %.body4966, %bb.aib
  %.pn831 = phi { ptr, i32 } [ %lpad.phi5913, %bb.aib ], [ %eh.lpad-body4967, %.body4966 ], [ %.pn831.ph, %.body3161.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %182) #31
  br label %bb.ane

.body3193:                                        ; preds = %bb.aje, %bb.aix
  %eh.lpad-body5038 = phi { ptr, i32 } [ %i.gpz, %bb.aje ], [ %i.gov, %bb.aix ]
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  %.pre15456.a = load ptr, ptr %183, align 8      ; 2 uses
  %i.gqp = icmp eq ptr %.pre15456.a, %i.ftc
  br i1 %i.gqp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3216: ; preds = %.body3193
  %i.gqq = load i64, ptr %i.ftc, align 8
  %i.gqr = add i64 %i.gqq, 1
  call void @_ZdlPvm(ptr noundef %.pre15456.a, i64 noundef %i.gqr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3218: ; preds = %.body3193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3216
  call void @llvm.lifetime.end.p0(ptr nonnull %183) #31
  br label %bb.ane

bb.aji:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3198
  %i.gqs = landingpad { ptr, i32 }
          cleanup
  %i.gqt = load ptr, ptr %184, align 8            ; 2 uses
  %i.gqu = icmp eq ptr %i.gqt, %i.ftq
  br i1 %i.gqu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3219: ; preds = %bb.aji
  %i.gqv = load i64, ptr %i.ftq, align 8
  %i.gqw = add i64 %i.gqv, 1
  call void @_ZdlPvm(ptr noundef %i.gqt, i64 noundef %i.gqw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3221: ; preds = %bb.aji, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3219
  call void @llvm.lifetime.end.p0(ptr nonnull %184) #31
  br label %bb.ane

bb.ajj:                                           ; preds = %.lr.ph13912, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit3276
  %.067513910 = phi i32 [ -1, %.lr.ph13912 ], [ %.2677, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit3276 ] ; 5 uses
  %.067813909 = phi i64 [ 0, %.lr.ph13912 ], [ %i.gul, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit3276 ] ; 3 uses
  %i.gqx = load ptr, ptr %i.gqk, align 8
  %i.gqy = getelementptr inbounds nuw [8 x i8], ptr %i.gqx, i64 %.067813909
  %i.gqz = load i32, ptr %i.gqy, align 4
  %i.gra = zext i32 %i.gqz to i64                 ; 2 uses
  %i.grb = load ptr, ptr %46, align 8
  %i.grc = getelementptr inbounds nuw [24 x i8], ptr %i.grb, i64 %.066613939 ; 2 uses
  %i.grd = getelementptr inbounds nuw i8, ptr %i.grc, i64 8
  %i.gre = load ptr, ptr %i.grd, align 8
  %i.grf = load ptr, ptr %i.grc, align 8          ; 2 uses
  %i.grg = ptrtoint ptr %i.gre to i64
  %i.grh = ptrtoint ptr %i.grf to i64
  %i.gri = sub i64 %i.grg, %i.grh
  %i.grj = ashr exact i64 %i.gri, 2
  %.not849 = icmp ugt i64 %i.grj, %i.gra
  br i1 %.not849, label %bb.ajn, label %bb.ajk

bb.ajk:                                           ; preds = %bb.ajj
  %i.grk = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ajl unwind label %bb.ajm

bb.ajl:                                           ; preds = %bb.ajk
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.grk, ptr noundef nonnull @.str.336)
          to label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit3276 unwind label %bb.ajm

bb.ajm:                                           ; preds = %bb.ajl, %bb.ajk
  %i.grl = landingpad { ptr, i32 }
          cleanup
  br label %bb.aky

bb.ajn:                                           ; preds = %bb.ajj
  %i.grm = getelementptr inbounds nuw [4 x i8], ptr %i.grf, i64 %i.gra
  %i.grn = load i32, ptr %i.grm, align 4
  %i.gro = load ptr, ptr %47, align 8
  %i.grp = getelementptr inbounds nuw [4 x i8], ptr %i.gro, i64 %.066613939
  %i.grq = load i32, ptr %i.grp, align 4
  %i.grr = add i32 %i.grq, %i.grn                 ; 12 uses
  %i.grs = load ptr, ptr %i.ftt, align 8          ; 3 uses
  %.not10.i.i.i3222 = icmp eq ptr %i.grs, null
  br i1 %.not10.i.i.i3222, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread, label %.lr.ph.i.i.i3223

.lr.ph.i.i.i3223:                                 ; preds = %bb.ajn, %.lr.ph.i.i.i3223
  %.012.i.i.i3224 = phi ptr [ %.1.i.i.i3229, %.lr.ph.i.i.i3223 ], [ %i.grs, %bb.ajn ] ; 4 uses
  %.0811.i.i.i3225 = phi ptr [ %.19.i.i.i3226, %.lr.ph.i.i.i3223 ], [ %i.fts, %bb.ajn ] ; 2 uses
  %i.grt = getelementptr inbounds nuw i8, ptr %.012.i.i.i3224, i64 32
  %i.gru = load i32, ptr %i.grt, align 4
  %i.grv = icmp slt i32 %i.gru, %i.grr            ; 3 uses
  %.19.i.i.i3226 = select i1 %i.grv, ptr %.0811.i.i.i3225, ptr %.012.i.i.i3224 ; 2 uses
  %.1.in.v.i.i.i3227 = select i1 %i.grv, i64 24, i64 16
  %.1.in.i.i.i3228 = getelementptr inbounds nuw i8, ptr %.012.i.i.i3224, i64 %.1.in.v.i.i.i3227
  %.1.i.i.i3229 = load ptr, ptr %.1.in.i.i.i3228, align 8 ; 2 uses
  %.not.i.i.i3230 = icmp eq ptr %.1.i.i.i3229, null
  br i1 %.not.i.i.i3230, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i, label %.lr.ph.i.i.i3223, !llvm.loop !285

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i: ; preds = %.lr.ph.i.i.i3223
  %i.grw = icmp eq ptr %.19.i.i.i3226, %i.fts
  br i1 %i.grw, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit, label %bb.ajo

bb.ajo:                                           ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i
  %.19.i.i.i3226.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.grv, ptr %.0811.i.i.i3225, ptr %.012.i.i.i3224
  %.19.i.i.i3226.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i3226.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.grx = load i32, ptr %.19.i.i.i3226.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.gry = icmp sge i32 %i.grr, %i.grx
  br label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit

_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit:        ; preds = %bb.ajo, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i
  %.sroa.0.0.i.i3232 = phi i1 [ %i.gry, %bb.ajo ], [ false, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i ]
  %i.grz = icmp eq i32 %i.grr, %.067513910
  %or.cond = or i1 %i.grz, %.sroa.0.0.i.i3232
  br i1 %or.cond, label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit3276, label %.lr.ph.i.i.i3236

_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread: ; preds = %bb.ajn
  %i.gsa = icmp eq i32 %i.grr, %.067513910
  br i1 %i.gsa, label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit3276, label %._crit_edge.thread.i.i.i3252

.lr.ph.i.i.i3236:                                 ; preds = %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit, %.lr.ph.i.i.i3236
  %.02024.i.i.i3237 = phi ptr [ %.020.i.i.i3240, %.lr.ph.i.i.i3236 ], [ %i.grs, %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit ] ; 4 uses
  %i.gsb = getelementptr inbounds nuw i8, ptr %.02024.i.i.i3237, i64 32
  %i.gsc = load i32, ptr %i.gsb, align 4          ; 2 uses
  %i.gsd = icmp slt i32 %i.grr, %i.gsc            ; 2 uses
  %.in.v.i.i.i3238 = select i1 %i.gsd, i64 16, i64 24
  %.in.i.i.i3239 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i3237, i64 %.in.v.i.i.i3238
  %.020.i.i.i3240 = load ptr, ptr %.in.i.i.i3239, align 8 ; 2 uses
  %.not.i.i.i3241 = icmp eq ptr %.020.i.i.i3240, null
  br i1 %.not.i.i.i3241, label %._crit_edge.i.i.i3242, label %.lr.ph.i.i.i3236, !llvm.loop !286

._crit_edge.i.i.i3242:                            ; preds = %.lr.ph.i.i.i3236
  br i1 %i.gsd, label %._crit_edge.thread.i.i.i3252, label %bb.ajq

._crit_edge.thread.i.i.i3252:                     ; preds = %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread, %._crit_edge.i.i.i3242
  %.019.lcssa29.i.i.i3253 = phi ptr [ %.02024.i.i.i3237, %._crit_edge.i.i.i3242 ], [ %i.fts, %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread ] ; 4 uses
  %i.gse = load ptr, ptr %i.ftu, align 8
  %i.gsf = icmp eq ptr %.019.lcssa29.i.i.i3253, %i.gse
  br i1 %i.gsf, label %select.unfold.i.i3250, label %bb.ajp

bb.ajp:                                           ; preds = %._crit_edge.thread.i.i.i3252
  %i.gsg = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i3253) #36
  %.phi.trans.insert.i.i3254 = getelementptr inbounds nuw i8, ptr %i.gsg, i64 32
  %.pre.i.i3255 = load i32, ptr %.phi.trans.insert.i.i3254, align 4
  br label %bb.ajq

bb.ajq:                                           ; preds = %bb.ajp, %._crit_edge.i.i.i3242
  %i.gsh = phi i32 [ %.pre.i.i3255, %bb.ajp ], [ %i.gsc, %._crit_edge.i.i.i3242 ]
  %.019.lcssa28.i.i.i3243 = phi ptr [ %.019.lcssa29.i.i.i3253, %bb.ajp ], [ %.02024.i.i.i3237, %._crit_edge.i.i.i3242 ]
  %i.gsi = icmp slt i32 %i.gsh, %i.grr
  br i1 %i.gsi, label %select.unfold.i.i3250, label %bb.ajs

select.unfold.i.i3250:                            ; preds = %bb.ajq, %._crit_edge.thread.i.i.i3252
  %.sroa.4.0.i.ph.i.i3251 = phi ptr [ %.019.lcssa29.i.i.i3253, %._crit_edge.thread.i.i.i3252 ], [ %.019.lcssa28.i.i.i3243, %bb.ajq ] ; 3 uses
  %i.gsj = icmp eq ptr %.sroa.4.0.i.ph.i.i3251, %i.fts
  br i1 %i.gsj, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.ajr

bb.ajr:                                           ; preds = %select.unfold.i.i3250
  %i.gsk = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i3251, i64 32
  %i.gsl = load i32, ptr %i.gsk, align 4
  %i.gsm = icmp slt i32 %i.grr, %i.gsl
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.ajr, %select.unfold.i.i3250
  %i.gsn = phi i1 [ %i.gsm, %bb.ajr ], [ true, %select.unfold.i.i3250 ]
  %i.gso = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc3256 unwind label %.loopexit5899 ; 2 uses

.noexc3256:                                       ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.gsp = getelementptr inbounds nuw i8, ptr %i.gso, i64 32
  store i32 %i.grr, ptr %i.gsp, align 4
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gsn, ptr noundef nonnull %i.gso, ptr noundef nonnull %.sroa.4.0.i.ph.i.i3251, ptr noundef nonnull align 8 dereferenceable(32) %i.fts) #31
  %i.gsq = load i64, ptr %i.ftw, align 8
  %i.gsr = add i64 %i.gsq, 1
  store i64 %i.gsr, ptr %i.ftw, align 8
  br label %bb.ajs

bb.ajs:                                           ; preds = %.noexc3256, %bb.ajq
  %i.gss = load ptr, ptr %i.ftx, align 8          ; 3 uses
  %i.gst = load ptr, ptr %i.fty, align 8
  %.not.i3257 = icmp eq ptr %i.gss, %i.gst
  br i1 %.not.i3257, label %bb.aju, label %bb.ajt

bb.ajt:                                           ; preds = %bb.ajs
  store i32 %i.grr, ptr %i.gss, align 4
  %i.gsu = load ptr, ptr %i.ftx, align 8
  %i.gsv = getelementptr inbounds nuw i8, ptr %i.gsu, i64 4
  store ptr %i.gsv, ptr %i.ftx, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit3266

bb.aju:                                           ; preds = %bb.ajs
  %i.gsw = load ptr, ptr %186, align 8            ; 4 uses
  %i.gsx = ptrtoint ptr %i.gss to i64
  %i.gsy = ptrtoint ptr %i.gsw to i64
  %i.gsz = sub i64 %i.gsx, %i.gsy                 ; 6 uses
  %i.gta = icmp eq i64 %i.gsz, 9223372036854775804
  br i1 %i.gta, label %bb.ajv, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i3258

bb.ajv:                                           ; preds = %bb.aju
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.noexc3264.a unwind label %.loopexit.split-lp5900

.noexc3264.a:                                     ; preds = %bb.ajv
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i3258: ; preds = %bb.aju
  %i.gtb = ashr exact i64 %i.gsz, 2               ; 3 uses
  %.sroa.speculated.i.i.i3259 = call i64 @llvm.umax.i64(i64 %i.gtb, i64 1)
  %i.gtc = add nsw i64 %.sroa.speculated.i.i.i3259, %i.gtb ; 2 uses
  %i.gtd = icmp ult i64 %i.gtc, %i.gtb
  %i.gte = call i64 @llvm.umin.i64(i64 %i.gtc, i64 2305843009213693951)
  %i.gtf = select i1 %i.gtd, i64 2305843009213693951, i64 %i.gte ; 3 uses
  %.not.i.i.i3260 = icmp ne i64 %i.gtf, 0
  call void @llvm.assume(i1 %.not.i.i.i3260)
  %i.gtg = shl nuw nsw i64 %i.gtf, 2
  %i.gth = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gtg) #34
          to label %.noexc3265 unwind label %.loopexit5899 ; 4 uses

.noexc3265:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i3258
  %i.gti = getelementptr inbounds i8, ptr %i.gth, i64 %i.gsz ; 2 uses
  store i32 %i.grr, ptr %i.gti, align 4
  %i.gtj = icmp sgt i64 %i.gsz, 0
  br i1 %i.gtj, label %bb.ajw, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i3261

bb.ajw:                                           ; preds = %.noexc3265
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gth, ptr align 4 %i.gsw, i64 %i.gsz, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i3261

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i3261: ; preds = %bb.ajw, %.noexc3265
  %i.gtk = getelementptr inbounds nuw i8, ptr %i.gti, i64 4
  %.not.i17.i.i3262 = icmp eq ptr %i.gsw, null
  br i1 %.not.i17.i.i3262, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i3263, label %bb.ajx

bb.ajx:                                           ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i3261
  call void @_ZdlPvm(ptr noundef nonnull %i.gsw, i64 noundef %i.gsz) #32
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i3263

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i3263: ; preds = %bb.ajx, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i3261
  store ptr %i.gth, ptr %186, align 8
  store ptr %i.gtk, ptr %i.ftx, align 8
  %i.gtl = getelementptr inbounds nuw [4 x i8], ptr %i.gth, i64 %i.gtf
  store ptr %i.gtl, ptr %i.fty, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit3266

_ZNSt6vectorIiSaIiEE9push_backERKi.exit3266:      ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i3263, %bb.ajt
  %i.gtm = load ptr, ptr %i.gqk, align 8
  %i.gtn = getelementptr inbounds nuw [8 x i8], ptr %i.gtm, i64 %.067813909
  %i.gto = getelementptr inbounds nuw i8, ptr %i.gtn, i64 4
  %i.gtp = load float, ptr %i.gto, align 4
  %i.gtq = fpext float %i.gtp to double           ; 2 uses
  %i.gtr = load ptr, ptr %i.ftz, align 8          ; 3 uses
  %i.gts = load ptr, ptr %i.fua, align 8
  %.not.i.i3267 = icmp eq ptr %i.gtr, %i.gts
  br i1 %.not.i.i3267, label %bb.ajz, label %bb.ajy

bb.ajy:                                           ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit3266
  store double %i.gtq, ptr %i.gtr, align 8
  %i.gtt = load ptr, ptr %i.ftz, align 8
  %i.gtu = getelementptr inbounds nuw i8, ptr %i.gtt, i64 8
  store ptr %i.gtu, ptr %i.ftz, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit3276

bb.ajz:                                           ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit3266
  %i.gtv = load ptr, ptr %187, align 8            ; 4 uses
  %i.gtw = ptrtoint ptr %i.gtr to i64
  %i.gtx = ptrtoint ptr %i.gtv to i64
  %i.gty = sub i64 %i.gtw, %i.gtx                 ; 6 uses
  %i.gtz = icmp eq i64 %i.gty, 9223372036854775800
  br i1 %i.gtz, label %bb.aka, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i3268

bb.aka:                                           ; preds = %bb.ajz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.noexc3274.a unwind label %.loopexit.split-lp5905

.noexc3274.a:                                     ; preds = %bb.aka
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i3268: ; preds = %bb.ajz
  %i.gua = ashr exact i64 %i.gty, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i3269 = call i64 @llvm.umax.i64(i64 %i.gua, i64 1)
  %i.gub = add nsw i64 %.sroa.speculated.i.i.i.i3269, %i.gua ; 2 uses
  %i.guc = icmp ult i64 %i.gub, %i.gua
  %i.gud = call i64 @llvm.umin.i64(i64 %i.gub, i64 1152921504606846975)
  %i.gue = select i1 %i.guc, i64 1152921504606846975, i64 %i.gud ; 3 uses
  %.not.i.i.i.i3270 = icmp ne i64 %i.gue, 0
  call void @llvm.assume(i1 %.not.i.i.i.i3270)
  %i.guf = shl nuw nsw i64 %i.gue, 3
  %i.gug = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.guf) #34
          to label %.noexc3275 unwind label %.loopexit5904 ; 4 uses

.noexc3275:                                       ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i3268
  %i.guh = getelementptr inbounds i8, ptr %i.gug, i64 %i.gty ; 2 uses
  store double %i.gtq, ptr %i.guh, align 8
  %i.gui = icmp sgt i64 %i.gty, 0
  br i1 %i.gui, label %bb.akb, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i3271

bb.akb:                                           ; preds = %.noexc3275
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gug, ptr align 8 %i.gtv, i64 %i.gty, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i3271

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i3271: ; preds = %bb.akb, %.noexc3275
  %i.guj = getelementptr inbounds nuw i8, ptr %i.guh, i64 8
  %.not.i17.i.i.i3272 = icmp eq ptr %i.gtv, null
  br i1 %.not.i17.i.i.i3272, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i3273, label %bb.akc

bb.akc:                                           ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i3271
  call void @_ZdlPvm(ptr noundef nonnull %i.gtv, i64 noundef %i.gty) #32
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i3273

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i3273: ; preds = %bb.akc, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i3271
  store ptr %i.gug, ptr %187, align 8
  store ptr %i.guj, ptr %i.ftz, align 8
  %i.guk = getelementptr inbounds nuw [8 x i8], ptr %i.gug, i64 %i.gue
  store ptr %i.guk, ptr %i.fua, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit3276

_ZNSt6vectorIdSaIdEE9push_backEOd.exit3276:       ; preds = %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit, %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i3273, %bb.ajy, %bb.ajl
  %.2677 = phi i32 [ %.067513910, %bb.ajl ], [ %.067513910, %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread ], [ %.067513910, %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit ], [ %i.grr, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i3273 ], [ %i.grr, %bb.ajy ]
  %i.gul = add nuw nsw i64 %.067813909, 1         ; 2 uses
  %i.gum = load i32, ptr %i.gqi, align 4
  %i.gun = zext i32 %i.gum to i64
  %i.guo = icmp samesign ult i64 %i.gul, %i.gun
  br i1 %i.guo, label %bb.ajj, label %_ZN6Assimp3FBX4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i3278, !llvm.loop !287

.loopexit5899:                                    ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i3258
  %lpad.loopexit5901 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aky

.loopexit.split-lp5900:                           ; preds = %bb.ajv
  %lpad.loopexit.split-lp5902 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aky

.loopexit5904:                                    ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i3268
  %lpad.loopexit5906 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aky

.loopexit.split-lp5905:                           ; preds = %bb.aka
  %lpad.loopexit.split-lp5907 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aky

_ZN6Assimp3FBX4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i3278: ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit3276, %bb.ajh
  call void @llvm.lifetime.start.p0(ptr nonnull %188) #31
  store ptr %i.fub, ptr %188, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.fub, ptr noundef nonnull align 1 dereferenceable(7) @.str.322, i64 7, i1 false)
  store i64 7, ptr %i.fuc, align 8
  store i8 0, ptr %i.fxh, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
end_hunk_1
begin_hunk_2_@_ZN6Assimp3FBX4Node8AddChildIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKS8_DpOT_:bb.a
  %i.af = load ptr, ptr %i.o, align 8
  store ptr %i.af, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ah = load ptr, ptr %i.p, align 8
  store ptr %i.ah, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.aj = load ptr, ptr %i.q, align 8
  store ptr %i.aj, ptr %i.ai, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  store ptr %i.am, ptr %i.ak, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8
  store ptr %i.ap, ptr %i.an, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.as = load ptr, ptr %i.ar, align 8
  store ptr %i.as, ptr %i.aq, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false)
  %i.av = load ptr, ptr %i.r, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  store ptr %i.aw, ptr %i.r, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backEOS2_.exit

bb.f:                                             ; preds = %_ZN6Assimp3FBX4Node13AddPropertiesIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvOT_DpOT0_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr %i.s, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backEOS2_.exit unwind label %bb.g

_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZN6Assimp3FBX4NodeC2EOS1_.exit.i.i, %bb.f
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void

bb.g:                                             ; preds = %bb.f, %_ZN6Assimp3FBX4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp3FBX4Node6AddP70IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKS8_SB_SB_SB_DpOT_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Assimp::FBX::Node", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.a, ptr %6, align 8
  store i8 80, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.d, i8 0, i64 49, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  invoke void @_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i unwind label %bb.f

_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.pre.i = load ptr, ptr %i.e, align 8           ; 3 uses
  %.pre = load ptr, ptr %i.f, align 8
  %.not.i.i.i = icmp eq ptr %.pre.i, %.pre
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i
  invoke void @_ZN6Assimp3FBX17FBXExportPropertyC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32) %.pre.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
          to label %.noexc15 unwind label %bb.f

.noexc15:                                         ; preds = %bb.b
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.h, ptr %i.e, align 8
  br label %_ZN6Assimp3FBX4Node13AddPropertiesIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSA_SA_RS8_EEEvOT_DpOT0_.exit.i

bb.c:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i
  invoke void @_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %.pre.i, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN6Assimp3FBX4Node13AddPropertiesIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSA_SA_RS8_EEEvOT_DpOT0_.exit.i unwind label %bb.f

_ZN6Assimp3FBX4Node13AddPropertiesIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSA_SA_RS8_EEEvOT_DpOT0_.exit.i: ; preds = %bb.c, %.noexc15
  invoke void @_ZN6Assimp3FBX4Node13AddPropertiesIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSA_RS8_EEEvOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZN6Assimp3FBX4Node13AddPropertiesIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSA_SA_SA_RS8_EEEvOT_DpOT0_.exit unwind label %bb.f

_ZN6Assimp3FBX4Node13AddPropertiesIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSA_SA_SA_RS8_EEEvOT_DpOT0_.exit: ; preds = %_ZN6Assimp3FBX4Node13AddPropertiesIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSA_SA_RS8_EEEvOT_DpOT0_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8
  %.not.i.i18 = icmp eq ptr %i.j, %i.l
  br i1 %.not.i.i18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp3FBX4Node13AddPropertiesIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSA_SA_SA_RS8_EEEvOT_DpOT0_.exit
  invoke void @_ZN6Assimp3FBX4NodeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %i.j, ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %.noexc19 unwind label %bb.f

.noexc19:                                         ; preds = %bb.d
  %i.m = load ptr, ptr %i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  store ptr %i.n, ptr %i.i, align 8
  br label %_ZN6Assimp3FBX4Node8AddChildERKS1_.exit

bb.e:                                             ; preds = %_ZN6Assimp3FBX4Node13AddPropertiesIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSA_SA_SA_RS8_EEEvOT_DpOT0_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr %i.j, ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %_ZN6Assimp3FBX4Node8AddChildERKS1_.exit unwind label %bb.f

_ZN6Assimp3FBX4Node8AddChildERKS1_.exit:          ; preds = %.noexc19, %bb.e
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  ret void

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.c, %_ZN6Assimp3FBX4Node13AddPropertiesIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSA_SA_RS8_EEEvOT_DpOT0_.exit.i, %bb.d, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3mapI13aiTextureTypeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS0_ESaISt4pairIKS0_S6_EEEC2ESt16initializer_listISB_ERKS8_RKSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8
  %.idx = mul nuw nsw i64 %2, 40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not7.i = icmp eq i64 %2, 0
  br i1 %.not7.i, label %_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE22_M_insert_range_uniqueIPKS9_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESK_SK_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE17_M_insert_unique_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EOT_RT0_.exit.i
  %.pr21 = phi i64 [ %.pr, %_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE17_M_insert_unique_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EOT_RT0_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.08.i = phi ptr [ %i.ae, %_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE17_M_insert_unique_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EOT_RT0_.exit.i ], [ %1, %bb.a ] ; 6 uses
  %.not.i8 = icmp eq i64 %.pr21, 0
  br i1 %.not.i8, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 4
  %i.j = load i32, ptr %.08.i, align 4
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.02022.i.i = load ptr, ptr %i.b, align 8       ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.l = load i32, ptr %.08.i, align 4            ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.d ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i.i = select i1 %i.o, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8     ; 2 uses
  %.not.i.i9 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i9, label %._crit_edge.i.i, label %bb.d, !llvm.loop !353

._crit_edge.i.i:                                  ; preds = %bb.d
  br i1 %i.o, label %._crit_edge.thread.i.i, label %bb.f

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.c
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.a, %bb.c ] ; 4 uses
  %i.p = load ptr, ptr %i.c, align 8
  %i.q = icmp eq ptr %.019.lcssa29.i.i, %i.p
  br i1 %i.q, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #36
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.pre81.i = load i32, ptr %.phi.trans.insert80.i, align 4
  %.pre82.i = load i32, ptr %.08.i, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.s = phi i32 [ %.pre82.i, %bb.e ], [ %i.l, %._crit_edge.i.i ]
  %i.t = phi i32 [ %.pre81.i, %bb.e ], [ %i.n, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.e ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.u = icmp slt i32 %i.t, %i.s
  br i1 %i.u, label %select.unfold, label %_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE17_M_insert_unique_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EOT_RT0_.exit.i

select.unfold:                                    ; preds = %bb.f, %._crit_edge.thread.i.i, %bb.b
  %.sroa.12.2.i.ph = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %i.g, %bb.b ], [ %.019.lcssa28.i.i, %bb.f ] ; 3 uses
  %i.v = icmp eq ptr %.sroa.12.2.i.ph, %i.a
  br i1 %i.v, label %_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE10_M_insert_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSN_OT_RT0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %select.unfold
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i.ph, i64 32
  %i.x = load i32, ptr %.08.i, align 4
  %i.y = load i32, ptr %i.w, align 4
  %i.z = icmp slt i32 %i.x, %i.y
  br label %_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE10_M_insert_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSN_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE10_M_insert_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSN_OT_RT0_.exit.i.i: ; preds = %bb.g, %select.unfold
  %i.aa = phi i1 [ %i.z, %bb.g ], [ true, %select.unfold ]
  %i.ab = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #34
          to label %.noexc6 unwind label %bb.h    ; 2 uses

.noexc6:                                          ; preds = %_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE10_M_insert_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSN_OT_RT0_.exit.i.i
  invoke void @_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE17_M_construct_nodeIJRKS9_EEEvPSt13_Rb_tree_nodeIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %.08.i)
          to label %.noexc7 unwind label %bb.h

.noexc7:                                          ; preds = %.noexc6
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %.sroa.12.2.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #31
  %i.ac = load i64, ptr %i.e, align 8
  %i.ad = add i64 %i.ac, 1                        ; 2 uses
  store i64 %i.ad, ptr %i.e, align 8
  br label %_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE17_M_insert_unique_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EOT_RT0_.exit.i

_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE17_M_insert_unique_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EOT_RT0_.exit.i: ; preds = %bb.f, %.noexc7
  %.pr = phi i64 [ %.pr21, %bb.f ], [ %i.ad, %.noexc7 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, %i.f
  br i1 %.not.i, label %_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE22_M_insert_range_uniqueIPKS9_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESK_SK_.exit, label %.lr.ph.i, !llvm.loop !354

_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE22_M_insert_range_uniqueIPKS9_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESK_SK_.exit: ; preds = %_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE17_M_insert_unique_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EOT_RT0_.exit.i, %bb.a
  ret void

bb.h:                                             ; preds = %.noexc6, %_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EE10_M_insert_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSN_OT_RT0_.exit.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8_Rb_treeI13aiTextureTypeSt4pairIKS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS9_ESt4lessIS0_ESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #31
  resume { ptr, i32 } %i.af
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2INSt7__cxx1112basic_stringIcS3_S4_EEEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3) #31
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2INSt7__cxx1112basic_stringIcS3_S4_EEEERKT_.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.f, ptr %2, align 8, !alias.scope !367
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.g, align 8, !alias.scope !367
  store i8 0, ptr %i.f, align 8, !alias.scope !367
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !noalias !367 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noalias !367 ; 2 uses
  %i.l = icmp ugt ptr %i.i, %i.k
  %.08.i.i.i.i.i = select i1 %i.l, ptr %i.i, ptr %i.k ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2INSt7__cxx1112basic_stringIcS3_S4_EEEERKT_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !noalias !367 ; 2 uses
  %i.o = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.n, i64 noundef %i.q)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !alias.scope !367 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.f
  br i1 %i.u, label %.body, label %.body.sink.split

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2INSt7__cxx1112basic_stringIcS3_S4_EEEERKT_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.d

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %bb.c
  %i.w = load ptr, ptr %2, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.w)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.x = load ptr, ptr %2, align 8                ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.f
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.z = load i64, ptr %i.f, align 8
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %3, align 8
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = load i64, ptr %i.aj, align 8
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #31
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ao) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

bb.g:                                             ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %2, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.f
  br i1 %i.ar, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.t, %bb.d ], [ %i.aq, %bb.g ]
  %.pn.ph = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.ap, %bb.g ]
  %i.as = load i64, ptr %i.f, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.at) #32
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.ap, %bb.g ], [ %.pn.ph, %.body.sink.split ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %common.resume
}

declare i32 @aiGetMaterialFloatArray(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp3FBX4Node8AddChildIJddEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.Assimp::FBX::Node", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.b, ptr %4, align 8
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.e, ptr %i.a, align 8
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
end_hunk_2
begin_hunk_3_@_ZN6Assimp11FBXExporter14WriteModelNodeERNS_12StreamWriterILb0ELb0EEEbPK6aiNodelRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISt4pairISC_10aiVector3tIfEESaISJ_EENS_3FBX20TransformInheritanceE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.jc = fpext float %i.in to double
  store double %i.jc, ptr %i.l, align 8
  invoke void @_ZN6Assimp3FBX4Node6AddP70IJdddEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_SA_DpOT_(ptr noundef nonnull align 8 dereferenceable(112) %12, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %_ZNK10aiVector3tIfEneERKS0_.exit263.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  %i.jd = load ptr, ptr %30, align 8              ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.ix
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %bb.z
  %i.jf = load i64, ptr %i.ix, align 8
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #31
  %i.jh = load ptr, ptr %29, align 8              ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.iv
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282
  %i.jj = load i64, ptr %i.iv, align 8
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31
  %i.jl = load ptr, ptr %28, align 8              ; 2 uses
  %i.jm = icmp eq ptr %i.jl, %i.is
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285
  %i.jn = load i64, ptr %i.is, align 8
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jo) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #31
  %i.jp = load ptr, ptr %27, align 8              ; 2 uses
  %i.jq = icmp eq ptr %i.jp, %i.ip
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288
  %i.jr = load i64, ptr %i.ip, align 8
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.js) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNK10aiVector3tIfEneERKS0_.exit263.thread
  %i.jt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  %i.ju = load ptr, ptr %30, align 8              ; 2 uses
  %i.jv = icmp eq ptr %i.ju, %i.ix
  br i1 %i.jv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292: ; preds = %bb.aa
  %i.jw = load i64, ptr %i.ix, align 8
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #31
  %i.jy = load ptr, ptr %29, align 8              ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.iv
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294
  %i.ka = load i64, ptr %i.iv, align 8
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31
  %i.kc = load ptr, ptr %28, align 8              ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.is
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297
  %i.ke = load i64, ptr %i.is, align 8
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #31
  %i.kg = load ptr, ptr %27, align 8              ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.ip
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300
  %i.ki = load i64, ptr %i.ip, align 8
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %.loopexit

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %bb.t
  %.pn97.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303 ], [ %i.hs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262 ], [ %i.fn, %bb.t ], [ %i.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %bb.bk

bb.ad:                                            ; preds = %.preheader, %bb.as
  %.sroa.0371.0420 = phi ptr [ %i.cm, %.preheader ], [ %i.nk, %bb.as ] ; 10 uses
  %i.kk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15transform_typesB5cxx11, i64 16), align 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.kk, null
  br i1 %.not10.i.i.i, label %select.unfold, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ad
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0371.0420, i64 8
  %i.km = load i64, ptr %i.kl, align 8            ; 4 uses
  %i.kn = load ptr, ptr %.sroa.0371.0420, align 8 ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.kk, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZL15transform_typesB5cxx11, i64 8), %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.kp = load i64, ptr %i.ko, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.km, i64 %i.kp) ; 2 uses
  %i.kq = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.kq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.ae
  %i.kr = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ks = load ptr, ptr %i.kr, align 8
  %i.kt = call i32 @memcmp(ptr noundef %i.ks, ptr noundef %i.kn, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.kt, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.ae
  %i.ku = sub i64 %i.kp, %i.km
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ku, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.kt, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.kv = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.kv, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.kv, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IS5_cEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.ae, !llvm.loop !404

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IS5_cEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.kw = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZL15transform_typesB5cxx11, i64 8)
  br i1 %i.kw, label %select.unfold, label %bb.af

bb.af:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IS5_cEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.kx = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ky = load i64, ptr %i.kx, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ky, i64 %i.km) ; 2 uses
  %i.kz = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.kz, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.af
  %i.la = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.lb = load ptr, ptr %i.la, align 8
  %i.lc = call i32 @memcmp(ptr noundef %i.kn, ptr noundef %i.lb, i64 noundef %.sroa.speculated.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.lc, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.af
  %i.ld = sub i64 %i.km, %i.ky
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ld, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.lc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.le = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.le, label %select.unfold, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_cESt4lessIS5_ESaIS6_IKS5_S7_EEE4findERSA_.exit

select.unfold:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %bb.ad, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IS5_cEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #31
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %31)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %select.unfold
  %i.lf = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.lg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lf, ptr noundef nonnull @.str.373, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ag
  %i.lh = load ptr, ptr %.sroa.0371.0420, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.0371.0420, i64 8
  %i.lj = load i64, ptr %i.li, align 8
  %i.lk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lf, ptr noundef %i.lh, i64 noundef %i.lj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ak ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ll = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #31
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull align 8 dereferenceable(128) %31)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308.thread

bb.ah:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN17DeadlyExportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ll, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.ll, ptr nonnull @_ZTI17DeadlyExportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.bm unwind label %bb.al

bb.aj:                                            ; preds = %select.unfold
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ak:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.ag
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308.thread: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.lo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  br label %bb.am

bb.al:                                            ; preds = %bb.ai, %bb.ah
  %.063 = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.lp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.lq = load ptr, ptr %32, align 8              ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.ls = icmp eq ptr %i.lq, %i.lr
  br i1 %i.ls, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %bb.al
  %i.lt = load i64, ptr %i.lr, align 8
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lu) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  br i1 %.063, label %bb.am, label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  br i1 %.063, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308
  %.pn82400 = phi { ptr, i32 } [ %i.lo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308.thread ], [ %i.lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308 ], [ %i.lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306 ]
  call void @__cxa_free_exception(ptr %i.ll) #31
  br label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, %bb.am, %bb.ak
  %.pn82.pn = phi { ptr, i32 } [ %.pn82400, %bb.am ], [ %i.lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308 ], [ %i.ln, %bb.ak ], [ %i.lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %31) #31
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.aj
  %.pn82.pn.pn = phi { ptr, i32 } [ %.pn82.pn, %bb.an ], [ %i.lm, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #31
  br label %bb.bk

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_cESt4lessIS5_ESaIS6_IKS5_S7_EEE4findERSA_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.lv = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64 ; 4 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.0371.0420, i64 32 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 72
  %i.ly = load i64, ptr %i.lx, align 8            ; 3 uses
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_cESt4lessIS5_ESaIS6_IKS5_S7_EEE4findERSA_.exit
  %spec.select.i.i309 = call noundef i64 @llvm.umin.i64(i64 %i.ly, i64 4)
  %i.ma = load ptr, ptr %i.lv, align 8
  %bcmp = call i32 @bcmp(ptr %i.ma, ptr nonnull @.str.374, i64 %spec.select.i.i309)
  %.not.i = icmp eq i32 %bcmp, 0
  %i.mb = icmp ugt i64 %i.ly, 3
  %or.cond413 = and i1 %i.mb, %.not.i
  br i1 %or.cond413, label %._crit_edge.i.i310, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread

._crit_edge.i.i310:                               ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #31
  store ptr %i.cq, ptr %33, align 8
  store i64 0, ptr %i.cr, align 8
  store i8 0, ptr %i.cq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #31
  store ptr %i.cs, ptr %34, align 8
  store i8 65, ptr %i.cs, align 8
  store i64 1, ptr %i.ct, align 8
  store i8 0, ptr %i.cu, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #31
  %i.mc = load float, ptr %i.lw, align 8
  %i.md = fpext float %i.mc to double
  store double %i.md, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #31
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.0371.0420, i64 36
  %i.mf = load float, ptr %i.me, align 4
  %i.mg = fpext float %i.mf to double
  store double %i.mg, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #31
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.0371.0420, i64 40
  %i.mi = load float, ptr %i.mh, align 8
  %i.mj = fpext float %i.mi to double
  store double %i.mj, ptr %i.o, align 8
  invoke void @_ZN6Assimp3FBX4Node6AddP70IJdddEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_SA_DpOT_(ptr noundef nonnull align 8 dereferenceable(112) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.lv, ptr noundef nonnull align 8 dereferenceable(32) %i.lv, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %._crit_edge.i.i310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #31
  %i.mk = load ptr, ptr %34, align 8              ; 2 uses
  %i.ml = icmp eq ptr %i.mk, %i.cs
  br i1 %i.ml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318: ; preds = %bb.ap
  %i.mm = load i64, ptr %i.cs, align 8
  %i.mn = add i64 %i.mm, 1
  call void @_ZdlPvm(ptr noundef %i.mk, i64 noundef %i.mn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #31
  %i.mo = load ptr, ptr %33, align 8              ; 2 uses
  %i.mp = icmp eq ptr %i.mo, %i.cq
  br i1 %i.mp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320
  %i.mq = load i64, ptr %i.cq, align 8
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.mr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  br label %bb.as

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ar:                                            ; preds = %._crit_edge.i.i310
  %i.mt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #31
  %i.mu = load ptr, ptr %34, align 8              ; 2 uses
  %i.mv = icmp eq ptr %i.mu, %i.cs
  br i1 %i.mv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324: ; preds = %bb.ar
  %i.mw = load i64, ptr %i.cs, align 8
  %i.mx = add i64 %i.mw, 1
  call void @_ZdlPvm(ptr noundef %i.mu, i64 noundef %i.mx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #31
  %i.my = load ptr, ptr %33, align 8              ; 2 uses
  %i.mz = icmp eq ptr %i.my, %i.cq
  br i1 %i.mz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326
  %i.na = load i64, ptr %i.cq, align 8
  %i.nb = add i64 %i.na, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  br label %bb.bk

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_cESt4lessIS5_ESaIS6_IKS5_S7_EEE4findERSA_.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %i.nc = load float, ptr %i.lw, align 8
  %i.nd = fpext float %i.nc to double
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0371.0420, i64 36
  %i.nf = load float, ptr %i.ne, align 4
end_hunk_3
begin_hunk_4_@_ZN6Assimp11FBXExporter15WriteModelNodesERNS_12StreamWriterILb0ELb0EEEPK6aiNodelRKSt13unordered_setIS6_St4hashIS6_ESt8equal_toIS6_ESaIS6_EERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEESaISQ_EE:bb.a
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %19 = alloca %"class.Assimp::FBX::Node", align 8 ; 13 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.Assimp::FBX::FBXExportProperty", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::allocator", align 1   ; 4 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.std::allocator", align 1   ; 4 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::allocator", align 1   ; 4 uses
  %i.j = alloca i64, align 8                      ; 8 uses
  %30 = alloca %struct.aiNode, align 8            ; 10 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::vector.191", align 8  ; 6 uses
  store ptr %2, ptr %i.f, align 8
  store i64 %3, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.l, ptr %7, align 8
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store i64 %i.m, ptr %i.e, align 8
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %7, align 8
  %i.p = load i64, ptr %i.e, align 8
  store i64 %i.p, ptr %i.l, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.q = phi ptr [ %i.o, %.noexc.i ], [ %i.l, %bb.a ] ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.k, align 1
  store i8 %i.r, ptr %i.q, align 1
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull align 1 %i.k, i64 %i.m, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.s = load i64, ptr %i.e, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 %i.s, ptr %i.t, align 8
  %i.u = load ptr, ptr %7, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  %i.w = load ptr, ptr @_ZN6Assimp3FBXL14MAGIC_NODE_TAGB5cxx11E, align 8
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Assimp3FBXL14MAGIC_NODE_TAGB5cxx11E, i64 8), align 8
  %i.y = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.w, i64 noundef 0, i64 noundef %i.x) #31
  %.not = icmp eq i64 %i.y, -1
  br i1 %.not, label %bb.ba, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr @_ZN6Assimp3FBXL14MAGIC_NODE_TAGB5cxx11E, align 8
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Assimp3FBXL14MAGIC_NODE_TAGB5cxx11E, i64 8), align 8
  %i.ab = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.z, i64 noundef 0, i64 noundef %i.aa) #31
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Assimp3FBXL14MAGIC_NODE_TAGB5cxx11E, i64 8), align 8
  %i.ad = add i64 %i.ab, 1
  %i.ae = add i64 %i.ad, %i.ac                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.af = load i64, ptr %i.t, align 8, !noalias !405 ; 3 uses
  %i.ag = icmp ugt i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.400, ptr noundef nonnull @.str.437, i64 noundef %i.ae, i64 noundef %i.af) #30
          to label %.noexc126 unwind label %bb.o

.noexc126:                                        ; preds = %bb.f
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.ah, ptr %8, align 8, !alias.scope !405
  %i.ai = load ptr, ptr %7, align 8, !noalias !405
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ae ; 2 uses
  %i.ak = sub nuw i64 %i.af, %i.ae                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31, !noalias !405
  store i64 %i.ak, ptr %i.d, align 8, !noalias !405
  %i.al = icmp ugt i64 %i.ak, 15
  br i1 %i.al, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.am = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc127 unwind label %bb.o  ; 2 uses

.noexc127:                                        ; preds = %.noexc10.i.i
  store ptr %i.am, ptr %8, align 8, !alias.scope !405
  %i.an = load i64, ptr %i.d, align 8, !noalias !405
  store i64 %i.an, ptr %i.ah, align 8, !alias.scope !405
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ao = phi ptr [ %i.am, %.noexc127 ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.ak, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ap = load i8, ptr %i.aj, align 1
  store i8 %i.ap, ptr %i.ao, align 1
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.aj, i64 %i.ak, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i
  %i.aq = load i64, ptr %i.d, align 8, !noalias !405 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 %i.aq, ptr %i.ar, align 8, !alias.scope !405
  %i.as = load ptr, ptr %8, align 8, !alias.scope !405
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31, !noalias !405
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15transform_typesB5cxx11, i64 16), align 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not10.i.i.i, label %select.unfold, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.av = load i64, ptr %i.ar, align 8            ; 4 uses
  %i.aw = load ptr, ptr %8, align 8               ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZL15transform_typesB5cxx11, i64 8), %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ay = load i64, ptr %i.ax, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.av, i64 %i.ay) ; 2 uses
  %i.az = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.az, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call i32 @memcmp(ptr noundef %i.bb, ptr noundef %i.aw, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.j
  %i.bd = sub i64 %i.ay, %i.av
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bd, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.bc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.be = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.be, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.be, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IS5_cEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.j, !llvm.loop !404

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IS5_cEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.bf = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZL15transform_typesB5cxx11, i64 8)
  br i1 %i.bf, label %select.unfold, label %bb.k

bb.k:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IS5_cEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40 ; 4 uses
  %i.bh = load i64, ptr %i.bg, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.av) ; 2 uses
  %i.bi = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.bi, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call i32 @memcmp(ptr noundef %i.aw, ptr noundef %i.bk, i64 noundef %.sroa.speculated.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.k
  %i.bm = sub i64 %i.av, %i.bh
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bm, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.bl, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.bn = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.bn, label %select.unfold, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_cESt4lessIS5_ESaIS6_IKS5_S7_EEE4findERSA_.exit

select.unfold:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %bb.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IS5_cEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %select.unfold
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.378, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.l
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.379, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.br = load ptr, ptr %8, align 8
  %i.bs = load i64, ptr %i.ar, align 8
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef %i.br, i64 noundef %i.bs)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.q ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull @.str.380, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bv = load ptr, ptr %7, align 8
  %i.bw = load i64, ptr %i.t, align 8
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef %i.bv, i64 noundef %i.bw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135 unwind label %bb.q ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133
  %i.by = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.m:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135
  invoke void @_ZN17DeadlyExportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.by, ptr nonnull @_ZTI17DeadlyExportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ef unwind label %bb.r

bb.o:                                             ; preds = %.noexc10.i.i, %bb.f
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

bb.p:                                             ; preds = %select.unfold
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.l
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.s

bb.r:                                             ; preds = %bb.n, %bb.m
  %.075 = phi i1 [ false, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ce = load ptr, ptr %10, align 8              ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.ch = load i64, ptr %i.cf, align 8
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br i1 %.075, label %bb.s, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br i1 %.075, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn118297 = phi { ptr, i32 } [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.by) #31
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s, %bb.q
  %.pn118.pn = phi { ptr, i32 } [ %.pn118297, %bb.s ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cb, %bb.q ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #31
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p
  %.pn118.pn.pn = phi { ptr, i32 } [ %.pn118.pn, %bb.t ], [ %i.ca, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.az

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_cESt4lessIS5_ESaIS6_IKS5_S7_EEE4findERSA_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  store <2 x float> zeroinitializer, ptr %11, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store float 0.000000e+00, ptr %i.cj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  store <2 x float> zeroinitializer, ptr %12, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.ck, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  store <2 x float> zeroinitializer, ptr %13, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 8
  store float 0.000000e+00, ptr %i.cl, align 8
  %i.cm = load ptr, ptr %i.f, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1028
  invoke void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfES3_S3_(ptr noundef nonnull align 4 dereferenceable(64) %i.cn, ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) %12, ptr noundef nonnull align 4 dereferenceable(12) %11)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_cESt4lessIS5_ESaIS6_IKS5_S7_EEE4findERSA_.exit
  %i.co = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 96 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 8
  switch i8 %i.cq, label %bb.al [
    i8 105, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEESaIS9_EE12emplace_backIJRKS6_RS8_EEERS9_DpOT_.exit
    i8 116, label %bb.x
    i8 114, label %bb.ab
    i8 115, label %bb.ah
  ]

bb.w:                                             ; preds = %.invoke, %.noexc.i.i.i147, %.noexc.i.i.i, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_cESt4lessIS5_ESaIS6_IKS5_S7_EEE4findERSA_.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.x:                                             ; preds = %bb.v
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8            ; 9 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  %.not.i = icmp eq ptr %i.ct, %i.cv
  br i1 %.not.i, label %.invoke, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 3 uses
  store ptr %i.cw, ptr %i.ct, align 8
  %i.cx = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cy = load i64, ptr %i.bg, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i64 %i.cy, ptr %i.c, align 8
  %i.cz = icmp ugt i64 %i.cy, 15
  br i1 %i.cz, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.y
  %i.da = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(44) %i.ct, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc136 unwind label %bb.w  ; 2 uses

.noexc136:                                        ; preds = %.noexc.i.i.i
  store ptr %i.da, ptr %i.ct, align 8
  %i.db = load i64, ptr %i.c, align 8
  store i64 %i.db, ptr %i.cw, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc136, %bb.y
  %i.dc = phi ptr [ %i.da, %.noexc136 ], [ %i.cw, %bb.y ] ; 2 uses
  switch i64 %i.cy, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEEC2IRKS5_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit.i
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dd = load i8, ptr %i.cx, align 1
  store i8 %i.dd, ptr %i.dc, align 1
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEEC2IRKS5_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit.i

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dc, ptr align 1 %i.cx, i64 %i.cy, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEEC2IRKS5_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEEC2IRKS5_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit.i: ; preds = %bb.aa, %bb.z, %._crit_edge.i.i.i.i
  %i.de = load i64, ptr %i.c, align 8             ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i64 %i.de, ptr %i.df, align 8
  %i.dg = load ptr, ptr %i.ct, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de
  store i8 0, ptr %i.dh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %i.di = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.di, ptr noundef nonnull align 8 dereferenceable(12) %11, i64 12, i1 false)
  %i.dj = load ptr, ptr %i.cs, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  store ptr %i.dk, ptr %i.cs, align 8
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEESaIS9_EE12emplace_backIJRKS6_RS8_EEERS9_DpOT_.exit

bb.ab:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  %i.dl = load <2 x float>, ptr %12, align 8
  %i.dm = fmul <2 x float> %i.dl, splat (float f0x42652EE1)
  %i.dn = load float, ptr %i.ck, align 8
end_hunk_4
