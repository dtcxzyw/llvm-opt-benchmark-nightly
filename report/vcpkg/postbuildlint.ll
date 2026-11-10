Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/postbuildlint?download=true
inline.NumInlined: 4847
inline.NumDeleted: 1797
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5vcpkgL41perform_all_checks_and_return_error_countERKNS_17InstallPlanActionERKNS_10VcpkgPathsERKNS_12PreBuildInfoERKNS_9BuildInfoERKNS_4PathESE_RNS_11MessageSinkE:bb.a

.lr.ph.i.i.i.i1033:                               ; preds = %bb.yi, %_ZSt8_DestroyIN5vcpkg4PathEEvPT_.exit.i.i.i.i1036
  %.05.i.i.i.i1034 = phi ptr [ %i.czr, %_ZSt8_DestroyIN5vcpkg4PathEEvPT_.exit.i.i.i.i1036 ], [ %.pre40.i, %bb.yi ] ; 3 uses
  %i.czm = load ptr, ptr %.05.i.i.i.i1034, align 8, !tbaa !44 ; 2 uses
  %i.czn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1034, i64 16 ; 2 uses
  %i.czo = icmp eq ptr %i.czm, %i.czn
  br i1 %i.czo, label %_ZSt8_DestroyIN5vcpkg4PathEEvPT_.exit.i.i.i.i1036, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1035

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1035: ; preds = %.lr.ph.i.i.i.i1033
  %i.czp = load i64, ptr %i.czn, align 8, !tbaa !45
  %i.czq = add i64 %i.czp, 1
  call void @_ZdlPvm(ptr noundef %i.czm, i64 noundef %i.czq) #24
  br label %_ZSt8_DestroyIN5vcpkg4PathEEvPT_.exit.i.i.i.i1036

_ZSt8_DestroyIN5vcpkg4PathEEvPT_.exit.i.i.i.i1036: ; preds = %.lr.ph.i.i.i.i1033, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1035
  %i.czr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1034, i64 32 ; 2 uses
  %.not.i.i.i.i1037 = icmp eq ptr %i.czr, %.pre41.i
  br i1 %.not.i.i.i.i1037, label %_ZSt8_DestroyIPN5vcpkg4PathES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i1038, label %.lr.ph.i.i.i.i1033, !llvm.loop !5

_ZSt8_DestroyIPN5vcpkg4PathES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i1038: ; preds = %_ZSt8_DestroyIN5vcpkg4PathEEvPT_.exit.i.i.i.i1036
  %.pr.i.i1039 = load ptr, ptr %127, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN5vcpkg4PathES1_EvT_S3_RSaIT0_E.exit.i.i1040

_ZSt8_DestroyIPN5vcpkg4PathES1_EvT_S3_RSaIT0_E.exit.i.i1040: ; preds = %._crit_edge.i1019, %_ZSt8_DestroyIPN5vcpkg4PathES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i1038, %bb.yi
  %.0.i10314099 = phi i64 [ 1, %_ZSt8_DestroyIPN5vcpkg4PathES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i1038 ], [ 1, %bb.yi ], [ 0, %._crit_edge.i1019 ] ; 2 uses
  %i.czs = phi ptr [ %.pr.i.i1039, %_ZSt8_DestroyIPN5vcpkg4PathES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i1038 ], [ %.pre40.i, %bb.yi ], [ %.pre.i1020, %._crit_edge.i1019 ] ; 3 uses
  %.not.i.i1.i.i1041 = icmp eq ptr %i.czs, null
  br i1 %.not.i.i1.i.i1041, label %_ZNSt6vectorIN5vcpkg4PathESaIS1_EED2Ev.exit.i1042, label %bb.yj

bb.yj:                                            ; preds = %_ZSt8_DestroyIPN5vcpkg4PathES1_EvT_S3_RSaIT0_E.exit.i.i1040
  %i.czt = load ptr, ptr %i.cxw, align 8, !tbaa !110
  %i.czu = ptrtoint ptr %i.czt to i64
  %i.czv = ptrtoint ptr %i.czs to i64
  %i.czw = sub i64 %i.czu, %i.czv
  call void @_ZdlPvm(ptr noundef nonnull %i.czs, i64 noundef %i.czw) #24
  br label %_ZNSt6vectorIN5vcpkg4PathESaIS1_EED2Ev.exit.i1042

_ZNSt6vectorIN5vcpkg4PathESaIS1_EED2Ev.exit.i1042: ; preds = %bb.yj, %_ZSt8_DestroyIPN5vcpkg4PathES1_EvT_S3_RSaIT0_E.exit.i.i1040, %bb.xv
  %.06265.i = phi i64 [ %.0.i10314099, %bb.yj ], [ %.0.i10314099, %_ZSt8_DestroyIPN5vcpkg4PathES1_EvT_S3_RSaIT0_E.exit.i.i1040 ], [ 0, %bb.xv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #23
  br label %_ZN5vcpkgL29check_appcontainer_bit_if_uwpENS_10StringViewERKNS_4PathES3_RKSt6vectorINS_21PostBuildCheckDllDataESaIS5_EERNS_11MessageSinkE.exit

.loopexit.split-lp.i1022:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i1029.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN5vcpkg15LocalizedStringD2Ev.exit29.i
  %.pn22.i = phi { ptr, i32 } [ %.pn.i1021, %_ZN5vcpkg15LocalizedStringD2Ev.exit29.i ], [ %lpad.loopexit.split-lp4878, %.loopexit.split-lp.loopexit.split-lp.i1029.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN5vcpkg4PathESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %127) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #23
  br label %.body937

_ZN5vcpkgL29check_appcontainer_bit_if_uwpENS_10StringViewERKNS_4PathES3_RKSt6vectorINS_21PostBuildCheckDllDataESaIS5_EERNS_11MessageSinkE.exit: ; preds = %_ZNSt6vectorIN5vcpkg4PathESaIS1_EED2Ev.exit.i1042, %_ZNK5vcpkg13BuildPolicies10is_enabledENS_11BuildPolicyE.exit1012.thread
  %.1.i1043 = phi i64 [ %.06265.i, %_ZNSt6vectorIN5vcpkg4PathESaIS1_EED2Ev.exit.i1042 ], [ 0, %_ZNK5vcpkg13BuildPolicies10is_enabledENS_11BuildPolicyE.exit1012.thread ]
  %i.czx = add i64 %.1.i1043, %.13
  %.pre2800 = load i64, ptr %i.ag, align 8, !tbaa !74
  br label %bb.yk

bb.yk:                                            ; preds = %_ZN5vcpkgL29check_appcontainer_bit_if_uwpENS_10StringViewERKNS_4PathES3_RKSt6vectorINS_21PostBuildCheckDllDataESaIS5_EERNS_11MessageSinkE.exit, %_ZNK5vcpkg13BuildPolicies10is_enabledENS_11BuildPolicyE.exit1012
  %i.czy = phi i64 [ %i.cwq, %_ZNK5vcpkg13BuildPolicies10is_enabledENS_11BuildPolicyE.exit1012 ], [ %.pre2800, %_ZN5vcpkgL29check_appcontainer_bit_if_uwpENS_10StringViewERKNS_4PathES3_RKSt6vectorINS_21PostBuildCheckDllDataESaIS5_EERNS_11MessageSinkE.exit ] ; 2 uses
  %.14 = phi i64 [ %.13, %_ZNK5vcpkg13BuildPolicies10is_enabledENS_11BuildPolicyE.exit1012 ], [ %i.czx, %_ZN5vcpkgL29check_appcontainer_bit_if_uwpENS_10StringViewERKNS_4PathES3_RKSt6vectorINS_21PostBuildCheckDllDataESaIS5_EERNS_11MessageSinkE.exit ] ; 2 uses
  %.not.not.i.i.i.i1050 = icmp eq i64 %i.czy, 0
  br i1 %.not.not.i.i.i.i1050, label %bb.yl, label %bb.yo

bb.yl:                                            ; preds = %bb.yk
  %i.czz = getelementptr inbounds nuw i8, ptr %3, i64 72
  br label %bb.ym

bb.ym:                                            ; preds = %bb.yn, %bb.yl
  %.sroa.06.0.in.i.i.i.i1060 = phi ptr [ %i.czz, %bb.yl ], [ %.sroa.06.0.i.i.i.i1061, %bb.yn ]
  %.sroa.06.0.i.i.i.i1061 = load ptr, ptr %.sroa.06.0.in.i.i.i.i1060, align 8, !tbaa !75 ; 4 uses
  %.not.i.i.i.i1062 = icmp eq ptr %.sroa.06.0.i.i.i.i1061, null
  br i1 %.not.i.i.i.i1062, label %_ZNK5vcpkg13BuildPolicies10is_enabledENS_11BuildPolicyE.exit1063.thread, label %bb.yn

bb.yn:                                            ; preds = %bb.ym
  %i.daa = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i1061, i64 8
  %i.dab = load i32, ptr %i.daa, align 4, !tbaa !77
  %i.dac = icmp eq i32 %i.dab, 7
  br i1 %i.dac, label %_ZNK5vcpkg13BuildPolicies10is_enabledENS_11BuildPolicyE.exit1063, label %bb.ym, !llvm.loop !0

bb.yo:                                            ; preds = %bb.yk
  %i.dad = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.dae = load i64, ptr %i.dad, align 8, !tbaa !79 ; 2 uses
  %i.daf = urem i64 7, %i.dae                     ; 2 uses
  %i.dag = load ptr, ptr %i.af, align 8, !tbaa !80
  %i.dah = getelementptr inbounds nuw [8 x i8], ptr %i.dag, i64 %i.daf
  %i.dai = load ptr, ptr %i.dah, align 8, !tbaa !81 ; 2 uses
  %.not.i.i.i.i.i.i1051 = icmp eq ptr %i.dai, null
  br i1 %.not.i.i.i.i.i.i1051, label %_ZNK5vcpkg13BuildPolicies10is_enabledENS_11BuildPolicyE.exit1063.thread, label %bb.yp

bb.yp:                                            ; preds = %bb.yo
  %i.daj = load ptr, ptr %i.dai, align 8, !tbaa !75 ; 3 uses
  %i.dak = getelementptr inbounds nuw i8, ptr %i.daj, i64 8
  %i.dal = load i32, ptr %i.dak, align 4, !tbaa !77
  %i.dam = icmp eq i32 %i.dal, 7
  br i1 %i.dam, label %_ZNK5vcpkg13BuildPolicies10is_enabledENS_11BuildPolicyE.exit1063, label %.lr.ph.i.i.i.i.i.i1052

bb.yq:                                            ; preds = %bb.yr
  %i.dan = icmp eq i32 %i.daq, 7
  br i1 %i.dan, label %_ZNK5vcpkg13BuildPolicies10is_enabledENS_11BuildPolicyE.exit1063, label %.lr.ph.i.i.i.i.i.i1052, !llvm.loop !1

.lr.ph.i.i.i.i.i.i1052:                           ; preds = %bb.yp, %bb.yq
  %.020.i.i.i.i.i.i1053 = phi ptr [ %i.dao, %bb.yq ], [ %i.daj, %bb.yp ]
  %i.dao = load ptr, ptr %.020.i.i.i.i.i.i1053, align 8, !tbaa !75 ; 4 uses
  %.not18.i.i.i.i.i.i1054 = icmp eq ptr %i.dao, null
  br i1 %.not18.i.i.i.i.i.i1054, label %_ZNK5vcpkg13BuildPolicies10is_enabledENS_11BuildPolicyE.exit1063.thread, label %bb.yr

bb.yr:                                            ; preds = %.lr.ph.i.i.i.i.i.i1052
  %i.dap = getelementptr inbounds nuw i8, ptr %i.dao, i64 8
  %i.daq = load i32, ptr %i.dap, align 4, !tbaa !77 ; 2 uses
  %i.dar = sext i32 %i.daq to i64
  %i.das = urem i64 %i.dar, %i.dae
  %.not19.i.i.i.i.i.i1055 = icmp eq i64 %i.das, %i.daf
  br i1 %.not19.i.i.i.i.i.i1055, label %bb.yq, label %..loopexit_crit_edge21.i.i.i.i.i.i1056, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i.i1056:           ; preds = %bb.yr
  br label %_ZNK5vcpkg13BuildPolicies10is_enabledENS_11BuildPolicyE.exit1063.thread, !llvm.loop !1

_ZNK5vcpkg13BuildPolicies10is_enabledENS_11BuildPolicyE.exit1063: ; preds = %bb.yq, %bb.yn, %bb.yp
  %.sroa.06.1.i.i.i.i1059 = phi ptr [ %.sroa.06.0.i.i.i.i1061, %bb.yn ], [ %i.daj, %bb.yp ], [ %i.dao, %bb.yq ]
  %i.dat = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i1059, i64 12
  %i.dau = load i8, ptr %i.dat, align 4, !tbaa !83, !range !84, !noundef !85
  %i.dav = trunc nuw i8 %i.dau to i1
  br i1 %i.dav, label %bb.aac, label %_ZNK5vcpkg13BuildPolicies10is_enabledENS_11BuildPolicyE.exit1063.thread

_ZNK5vcpkg13BuildPolicies10is_enabledENS_11BuildPolicyE.exit1063.thread: ; preds = %.lr.ph.i.i.i.i.i.i1052, %bb.ym, %bb.yo, %..loopexit_crit_edge21.i.i.i.i.i.i1056, %_ZNK5vcpkg13BuildPolicies10is_enabledENS_11BuildPolicyE.exit1063
  %.val257 = load ptr, ptr %252, align 8          ; 2 uses
  %i.daw = getelementptr inbounds nuw i8, ptr %252, i64 8
  %.val258 = load ptr, ptr %i.daw, align 8        ; 2 uses
  %i.dax = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.day = load i8, ptr %i.dax, align 8, !tbaa !458, !range !84, !noundef !85
  %i.daz = trunc nuw i8 %i.day to i1
  %i.dba = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.dbb = load i64, ptr %i.dba, align 8
  %i.dbc = icmp eq i64 %i.dbb, 4
  %or.cond.i.i = select i1 %i.daz, i1 %i.dbc, i1 false
  br i1 %or.cond.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread3.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i: ; preds = %_ZNK5vcpkg13BuildPolicies10is_enabledENS_11BuildPolicyE.exit1063.thread
  %i.dbd = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.dbe = load ptr, ptr %i.dbd, align 8, !tbaa !44
  %i.dbf = load i32, ptr %i.dbe, align 1
  %i.dbg = icmp ne i32 %i.dbf, 808595830
  %i.dbh = zext i1 %i.dbg to i32
  %i.dbi = icmp eq i32 %i.dbh, 0
  br i1 %i.dbi, label %_ZN5vcpkgL25get_outdated_dynamic_crtsERKNS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread3.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread3.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, %_ZNK5vcpkg13BuildPolicies10is_enabledENS_11BuildPolicyE.exit1063.thread
  br label %_ZN5vcpkgL25get_outdated_dynamic_crtsERKNS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.i

_ZN5vcpkgL25get_outdated_dynamic_crtsERKNS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread3.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i
  %.sroa.3.0.i.i = phi i64 [ 320, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread3.i.i ], [ 224, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i ]
  %.sroa.0.0.i.i = phi ptr [ @_ZZN5vcpkgL25get_outdated_dynamic_crtsERKNS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE11V_NO_MSVCRT, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread3.i.i ], [ @_ZZN5vcpkgL25get_outdated_dynamic_crtsERKNS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8V_NO_120, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %123) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %123, i8 0, i64 24, i1 false)
  %.not919.i = icmp eq ptr %.val257, %.val258
  br i1 %.not919.i, label %bb.aab, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN5vcpkgL25get_outdated_dynamic_crtsERKNS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.i
  %i.dbj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %.sroa.3.0.i.i
  %i.dbk = getelementptr inbounds nuw i8, ptr %122, i64 8
  %i.dbl = getelementptr inbounds nuw i8, ptr %124, i64 16 ; 17 uses
  %i.dbm = getelementptr inbounds nuw i8, ptr %124, i64 8 ; 7 uses
  %i.dbn = getelementptr inbounds nuw i8, ptr %124, i64 32 ; 3 uses
  %i.dbo = getelementptr inbounds nuw i8, ptr %123, i64 8 ; 2 uses
  %i.dbp = getelementptr inbounds nuw i8, ptr %123, i64 16 ; 4 uses
  br label %.lr.ph.i1064

._crit_edge.i1071:                                ; preds = %..loopexit_crit_edge.i
  %i.dbq = icmp eq ptr %.pre27.i, %i.dfd
  br i1 %i.dbq, label %_ZSt8_DestroyIPN5vcpkg25OutdatedDynamicCrtAndFileES1_EvT_S3_RSaIT0_E.exit.i.i, label %bb.zg

.lr.ph.i1064:                                     ; preds = %..loopexit_crit_edge.i, %.lr.ph.preheader.i
  %i.dbr = phi ptr [ %.pre27.i, %..loopexit_crit_edge.i ], [ null, %.lr.ph.preheader.i ] ; 8 uses
  %i.dbs = phi ptr [ %i.dfd, %..loopexit_crit_edge.i ], [ null, %.lr.ph.preheader.i ] ; 12 uses
  %.sroa.03.020.i = phi ptr [ %i.dfe, %..loopexit_crit_edge.i ], [ %.val257, %.lr.ph.preheader.i ] ; 5 uses
  %i.dbt = getelementptr inbounds nuw i8, ptr %.sroa.03.020.i, i64 40 ; 2 uses
  %i.dbu = getelementptr inbounds nuw i8, ptr %.sroa.03.020.i, i64 48 ; 2 uses
  %i.dbv = load ptr, ptr %i.dbt, align 8, !tbaa !106
  %i.dbw = load ptr, ptr %i.dbu, align 8, !tbaa !106
  %i.dbx = icmp eq ptr %i.dbv, %i.dbw
  br i1 %i.dbx, label %..loopexit_crit_edge.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i1064, %.critedge.i1069
  %.02918.i = phi ptr [ %i.dfc, %.critedge.i1069 ], [ %.sroa.0.0.i.i, %.lr.ph.i1064 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %121)
  call void @llvm.lifetime.start.p0(ptr nonnull %122)
  %i.dby = load ptr, ptr %i.dbt, align 8, !tbaa !106 ; 2 uses
  %i.dbz = load ptr, ptr %i.dbu, align 8, !tbaa !106 ; 2 uses
  %.not13.not.i.i = icmp eq ptr %i.dby, %i.dbz
  br i1 %.not13.not.i.i, label %.critedge.i1069, label %.lr.ph.i.i1065

.lr.ph.i.i1065:                                   ; preds = %.lr.ph.split.i
  %.sroa.2.0..sroa_idx.i.i1066 = getelementptr inbounds nuw i8, ptr %.02918.i, i64 8
  br label %bb.yt

bb.ys:                                            ; preds = %bb.yt
  %i.dca = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i.i, i64 32 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.dca, %i.dbz
  br i1 %.not.not.i.i, label %.critedge.i1069, label %bb.yt

bb.yt:                                            ; preds = %bb.ys, %.lr.ph.i.i1065
  %.sroa.09.014.i.i = phi ptr [ %i.dby, %.lr.ph.i.i1065 ], [ %i.dca, %bb.ys ] ; 2 uses
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %122, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.014.i.i) #23
  %.sroa.0.0.copyload.i.i1067 = load ptr, ptr %.02918.i, align 8, !tbaa !65
  %.sroa.2.0.copyload.i.i1068 = load i64, ptr %.sroa.2.0..sroa_idx.i.i1066, align 8, !tbaa !37
  %i.dcb = load ptr, ptr %122, align 8
  %i.dcc = load i64, ptr %i.dbk, align 8
  %i.dcd = call noundef zeroext i1 @_ZNK5vcpkg7Strings34case_insensitive_ascii_equals_implclENS_10StringViewES2_(ptr noundef nonnull align 1 dereferenceable(1) %121, ptr %i.dcb, i64 %i.dcc, ptr %.sroa.0.0.copyload.i.i1067, i64 %.sroa.2.0.copyload.i.i1068) #23
  br i1 %i.dcd, label %bb.yu, label %bb.ys

bb.yu:                                            ; preds = %bb.yt
  call void @llvm.lifetime.end.p0(ptr nonnull %121)
  call void @llvm.lifetime.end.p0(ptr nonnull %122)
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #23
  store ptr %i.dbl, ptr %124, align 8, !tbaa !97
  %i.dce = load ptr, ptr %.sroa.03.020.i, align 8, !tbaa !44 ; 2 uses
  %i.dcf = getelementptr inbounds nuw i8, ptr %.sroa.03.020.i, i64 8
  %i.dcg = load i64, ptr %i.dcf, align 8, !tbaa !98 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #23
  store i64 %i.dcg, ptr %i.p, align 8, !tbaa !37
  %i.dch = icmp ugt i64 %i.dcg, 15
  br i1 %i.dch, label %.noexc.i.i.i1129, label %._crit_edge.i.i.i.i

.noexc.i.i.i1129:                                 ; preds = %bb.yu
  %i.dci = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %124, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0)
          to label %.noexc.i1130 unwind label %bb.zf ; 2 uses

.noexc.i1130:                                     ; preds = %.noexc.i.i.i1129
  store ptr %i.dci, ptr %124, align 8, !tbaa !44
  %i.dcj = load i64, ptr %i.p, align 8, !tbaa !37
  store i64 %i.dcj, ptr %i.dbl, align 8, !tbaa !45
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i1130, %bb.yu
  %i.dck = phi ptr [ %i.dci, %.noexc.i1130 ], [ %i.dbl, %bb.yu ] ; 2 uses
  switch i64 %i.dcg, label %bb.yw [
    i64 1, label %bb.yv
    i64 0, label %bb.yx
  ]

bb.yv:                                            ; preds = %._crit_edge.i.i.i.i
  %i.dcl = load i8, ptr %i.dce, align 1, !tbaa !45
  store i8 %i.dcl, ptr %i.dck, align 1, !tbaa !45
  br label %bb.yx

bb.yw:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dck, ptr align 1 %i.dce, i64 %i.dcg, i1 false)
  br label %bb.yx

bb.yx:                                            ; preds = %bb.yw, %bb.yv, %._crit_edge.i.i.i.i
  %i.dcm = load i64, ptr %i.p, align 8, !tbaa !37 ; 2 uses
  store i64 %i.dcm, ptr %i.dbm, align 8, !tbaa !98
  %i.dcn = load ptr, ptr %124, align 8, !tbaa !44
  %i.dco = getelementptr inbounds nuw i8, ptr %i.dcn, i64 %i.dcm
  store i8 0, ptr %i.dco, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dbn, ptr noundef nonnull align 8 dereferenceable(16) %.02918.i, i64 16, i1 false)
  %i.dcp = load ptr, ptr %i.dbp, align 8, !tbaa !132
  %.not.i.i.i1110 = icmp eq ptr %i.dbs, %i.dcp
  br i1 %.not.i.i.i1110, label %bb.za, label %bb.yy

bb.yy:                                            ; preds = %bb.yx
  %i.dcq = getelementptr inbounds nuw i8, ptr %i.dbs, i64 16 ; 3 uses
  store ptr %i.dcq, ptr %i.dbs, align 8, !tbaa !97
  %i.dcr = load ptr, ptr %124, align 8, !tbaa !44 ; 2 uses
  %i.dcs = icmp eq ptr %i.dcr, %i.dbl
  br i1 %i.dcs, label %bb.yz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1111

bb.yz:                                            ; preds = %bb.yy
  %i.dct = load i64, ptr %i.dbm, align 8, !tbaa !98 ; 3 uses
  %i.dcu = icmp ult i64 %i.dct, 16
  call void @llvm.assume(i1 %i.dcu)
  %i.dcv = add nuw nsw i64 %i.dct, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dcq, ptr noundef nonnull align 8 dereferenceable(1) %i.dbl, i64 %i.dcv, i1 false)
  br label %_ZNSt6vectorIN5vcpkg25OutdatedDynamicCrtAndFileESaIS1_EE9push_backEOS1_.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1111: ; preds = %bb.yy
  store ptr %i.dcr, ptr %i.dbs, align 8, !tbaa !44
  %i.dcw = load i64, ptr %i.dbl, align 8, !tbaa !45
  store i64 %i.dcw, ptr %i.dcq, align 8, !tbaa !45
  %.pre.i1112 = load i64, ptr %i.dbm, align 8, !tbaa !98
  br label %_ZNSt6vectorIN5vcpkg25OutdatedDynamicCrtAndFileESaIS1_EE9push_backEOS1_.exit.thread.i

_ZNSt6vectorIN5vcpkg25OutdatedDynamicCrtAndFileESaIS1_EE9push_backEOS1_.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1111, %bb.yz
  %i.dcx = phi i64 [ %.pre.i1112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1111 ], [ %i.dct, %bb.yz ]
  %i.dcy = getelementptr inbounds nuw i8, ptr %i.dbs, i64 8
  store i64 %i.dcx, ptr %i.dcy, align 8, !tbaa !98
  store ptr %i.dbl, ptr %124, align 8, !tbaa !44
  store i64 0, ptr %i.dbm, align 8, !tbaa !98
  store i8 0, ptr %i.dbl, align 8, !tbaa !45
  %i.dcz = getelementptr inbounds nuw i8, ptr %i.dbs, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dcz, ptr noundef nonnull align 8 dereferenceable(16) %i.dbn, i64 16, i1 false)
  %i.dda = getelementptr inbounds nuw i8, ptr %i.dbs, i64 48 ; 2 uses
  store ptr %i.dda, ptr %i.dbo, align 8, !tbaa !133
  br label %_ZN5vcpkg25OutdatedDynamicCrtAndFileD2Ev.exit.i

bb.za:                                            ; preds = %bb.yx
  %i.ddb = ptrtoint ptr %i.dbs to i64
  %i.ddc = ptrtoint ptr %i.dbr to i64             ; 2 uses
  %i.ddd = sub i64 %i.ddb, %i.ddc                 ; 3 uses
  %i.dde = icmp eq i64 %i.ddd, 9223372036854775776
  br i1 %i.dde, label %bb.zb, label %_ZNKSt6vectorIN5vcpkg25OutdatedDynamicCrtAndFileESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.zb:                                            ; preds = %bb.za
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.226) #26
          to label %.noexc59.i unwind label %.loopexit.split-lp.i1115.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59.i:                                       ; preds = %bb.zb
  unreachable

_ZNKSt6vectorIN5vcpkg25OutdatedDynamicCrtAndFileESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.za
  %i.ddf = sdiv exact i64 %i.ddd, 48              ; 3 uses
  %.sroa.speculated.i.i.i1114 = call i64 @llvm.umax.i64(i64 %i.ddf, i64 1)
  %i.ddg = add nsw i64 %.sroa.speculated.i.i.i1114, %i.ddf ; 2 uses
  %i.ddh = icmp ult i64 %i.ddg, %i.ddf
  %i.ddi = call i64 @llvm.umin.i64(i64 %i.ddg, i64 192153584101141162)
  %i.ddj = select i1 %i.ddh, i64 192153584101141162, i64 %i.ddi ; 3 uses
  %.not.i.i55.i = icmp ne i64 %i.ddj, 0
  call void @llvm.assume(i1 %.not.i.i55.i)
  %i.ddk = mul nuw nsw i64 %i.ddj, 48
  %i.ddl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ddk) #27
          to label %.noexc60.i1118 unwind label %.loopexit.split-lp.i1115.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

.noexc60.i1118:                                   ; preds = %_ZNKSt6vectorIN5vcpkg25OutdatedDynamicCrtAndFileESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ddm = getelementptr inbounds nuw i8, ptr %i.ddl, i64 %i.ddd ; 5 uses
  %i.ddn = getelementptr inbounds nuw i8, ptr %i.ddm, i64 16 ; 3 uses
  store ptr %i.ddn, ptr %i.ddm, align 8, !tbaa !97
  %i.ddo = load ptr, ptr %124, align 8, !tbaa !44 ; 2 uses
  %i.ddp = icmp eq ptr %i.ddo, %i.dbl
  br i1 %i.ddp, label %bb.zc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i56.i

bb.zc:                                            ; preds = %.noexc60.i1118
  %i.ddq = load i64, ptr %i.dbm, align 8, !tbaa !98 ; 3 uses
  %i.ddr = icmp ult i64 %i.ddq, 16
  call void @llvm.assume(i1 %i.ddr)
  %i.dds = add nuw nsw i64 %i.ddq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ddn, ptr noundef nonnull align 8 dereferenceable(1) %i.dbl, i64 %i.dds, i1 false)
  br label %_ZN5vcpkg25OutdatedDynamicCrtAndFileC2EOS0_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i56.i: ; preds = %.noexc60.i1118
  store ptr %i.ddo, ptr %i.ddm, align 8, !tbaa !44
  %i.ddt = load i64, ptr %i.dbl, align 8, !tbaa !45
  store i64 %i.ddt, ptr %i.ddn, align 8, !tbaa !45
  %.pre.i57.i = load i64, ptr %i.dbm, align 8, !tbaa !98
  br label %_ZN5vcpkg25OutdatedDynamicCrtAndFileC2EOS0_.exit.i.i

_ZN5vcpkg25OutdatedDynamicCrtAndFileC2EOS0_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i56.i, %bb.zc
  %i.ddu = phi i64 [ %i.ddq, %bb.zc ], [ %.pre.i57.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i56.i ]
  %i.ddv = getelementptr inbounds nuw i8, ptr %i.ddm, i64 8
  store i64 %i.ddu, ptr %i.ddv, align 8, !tbaa !98
  store ptr %i.dbl, ptr %124, align 8, !tbaa !44
  store i64 0, ptr %i.dbm, align 8, !tbaa !98
  store i8 0, ptr %i.dbl, align 8, !tbaa !45
  %i.ddw = getelementptr inbounds nuw i8, ptr %i.ddm, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ddw, ptr noundef nonnull align 8 dereferenceable(16) %i.dbn, i64 16, i1 false)
  %.not10.i.i.i.i.i1119 = icmp eq ptr %i.dbr, %i.dbs
  br i1 %.not10.i.i.i.i.i1119, label %_ZNSt6vectorIN5vcpkg25OutdatedDynamicCrtAndFileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i, label %.lr.ph.i.i.i.i.i1120

.lr.ph.i.i.i.i.i1120:                             ; preds = %_ZN5vcpkg25OutdatedDynamicCrtAndFileC2EOS0_.exit.i.i, %_ZSt19__relocate_object_aIN5vcpkg25OutdatedDynamicCrtAndFileES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i
  %.012.i.i.i.i.i1121 = phi ptr [ %i.dem, %_ZSt19__relocate_object_aIN5vcpkg25OutdatedDynamicCrtAndFileES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i ], [ %i.ddl, %_ZN5vcpkg25OutdatedDynamicCrtAndFileC2EOS0_.exit.i.i ] ; 6 uses
  %.0911.i.i.i.i.i1122 = phi ptr [ %i.del, %_ZSt19__relocate_object_aIN5vcpkg25OutdatedDynamicCrtAndFileES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i ], [ %i.dbr, %_ZN5vcpkg25OutdatedDynamicCrtAndFileC2EOS0_.exit.i.i ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !459)
  call void @llvm.experimental.noalias.scope.decl(metadata !460)
  %i.ddx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i1121, i64 16 ; 3 uses
  store ptr %i.ddx, ptr %.012.i.i.i.i.i1121, align 8, !tbaa !97, !alias.scope !459
  %i.ddy = load ptr, ptr %.0911.i.i.i.i.i1122, align 8, !tbaa !44, !alias.scope !460 ; 2 uses
  %i.ddz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i1122, i64 16 ; 5 uses
  %i.dea = icmp eq ptr %i.ddy, %i.ddz
  br i1 %i.dea, label %bb.zd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i58.i

bb.zd:                                            ; preds = %.lr.ph.i.i.i.i.i1120
  %i.deb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i1122, i64 8
  %i.dec = load i64, ptr %i.deb, align 8, !tbaa !98, !alias.scope !460 ; 3 uses
  %i.ded = icmp ult i64 %i.dec, 16
  call void @llvm.assume(i1 %i.ded)
  %i.dee = add nuw nsw i64 %i.dec, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ddx, ptr noundef nonnull align 8 dereferenceable(1) %i.ddz, i64 %i.dee, i1 false), !alias.scope !461
  br label %_ZSt19__relocate_object_aIN5vcpkg25OutdatedDynamicCrtAndFileES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i58.i: ; preds = %.lr.ph.i.i.i.i.i1120
  store ptr %i.ddy, ptr %.012.i.i.i.i.i1121, align 8, !tbaa !44, !alias.scope !459
  %i.def = load i64, ptr %i.ddz, align 8, !tbaa !45, !alias.scope !460
  store i64 %i.def, ptr %i.ddx, align 8, !tbaa !45, !alias.scope !459
  %.phi.trans.insert.i.i.i.i.i.i1123 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i1122, i64 8
  %.pre.i.i.i.i.i.i1124 = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i1123, align 8, !tbaa !98, !alias.scope !460
  br label %_ZSt19__relocate_object_aIN5vcpkg25OutdatedDynamicCrtAndFileES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i

_ZSt19__relocate_object_aIN5vcpkg25OutdatedDynamicCrtAndFileES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i58.i, %bb.zd
  %i.deg = phi i64 [ %i.dec, %bb.zd ], [ %.pre.i.i.i.i.i.i1124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i58.i ]
  %i.deh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i1122, i64 8
  %i.dei = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i1121, i64 8
  store i64 %i.deg, ptr %i.dei, align 8, !tbaa !98, !alias.scope !459
  store ptr %i.ddz, ptr %.0911.i.i.i.i.i1122, align 8, !tbaa !44, !alias.scope !460
  store i64 0, ptr %i.deh, align 8, !tbaa !98, !alias.scope !460
  store i8 0, ptr %i.ddz, align 8, !tbaa !45, !alias.scope !460
  %i.dej = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i1121, i64 32
  %i.dek = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i1122, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dej, ptr noundef nonnull align 8 dereferenceable(16) %i.dek, i64 16, i1 false), !alias.scope !461
  %i.del = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i1122, i64 48 ; 2 uses
  %i.dem = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i1121, i64 48 ; 2 uses
  %.not.i.i.i.i.i1125 = icmp eq ptr %i.del, %i.dbs
  br i1 %.not.i.i.i.i.i1125, label %_ZNSt6vectorIN5vcpkg25OutdatedDynamicCrtAndFileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i, label %.lr.ph.i.i.i.i.i1120, !llvm.loop !336

_ZNSt6vectorIN5vcpkg25OutdatedDynamicCrtAndFileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i: ; preds = %_ZSt19__relocate_object_aIN5vcpkg25OutdatedDynamicCrtAndFileES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i, %_ZN5vcpkg25OutdatedDynamicCrtAndFileC2EOS0_.exit.i.i
  %.0.lcssa.i.i.i.i.i1126 = phi ptr [ %i.ddl, %_ZN5vcpkg25OutdatedDynamicCrtAndFileC2EOS0_.exit.i.i ], [ %i.dem, %_ZSt19__relocate_object_aIN5vcpkg25OutdatedDynamicCrtAndFileES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i ]
  %i.den = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i1126, i64 48 ; 3 uses
  %.not.i27.i.i1127 = icmp eq ptr %i.dbr, null
  br i1 %.not.i27.i.i1127, label %_ZNSt6vectorIN5vcpkg25OutdatedDynamicCrtAndFileESaIS1_EE9push_backEOS1_.exit.i, label %bb.ze

bb.ze:                                            ; preds = %_ZNSt6vectorIN5vcpkg25OutdatedDynamicCrtAndFileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i
  %i.deo = load ptr, ptr %i.dbp, align 8, !tbaa !132
  %i.dep = ptrtoint ptr %i.deo to i64
  %i.deq = sub i64 %i.dep, %i.ddc
  call void @_ZdlPvm(ptr noundef nonnull %i.dbr, i64 noundef %i.deq) #24
  br label %_ZNSt6vectorIN5vcpkg25OutdatedDynamicCrtAndFileESaIS1_EE9push_backEOS1_.exit.i

_ZNSt6vectorIN5vcpkg25OutdatedDynamicCrtAndFileESaIS1_EE9push_backEOS1_.exit.i: ; preds = %bb.ze, %_ZNSt6vectorIN5vcpkg25OutdatedDynamicCrtAndFileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i
  store ptr %i.ddl, ptr %123, align 8, !tbaa !134
  store ptr %i.den, ptr %i.dbo, align 8, !tbaa !133
  %i.der = getelementptr inbounds nuw [48 x i8], ptr %i.ddl, i64 %i.ddj
  store ptr %i.der, ptr %i.dbp, align 8, !tbaa !132
  %.pre26.i = load ptr, ptr %124, align 8, !tbaa !44 ; 2 uses
  %i.des = icmp eq ptr %.pre26.i, %i.dbl
  br i1 %i.des, label %_ZN5vcpkg25OutdatedDynamicCrtAndFileD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1128: ; preds = %_ZNSt6vectorIN5vcpkg25OutdatedDynamicCrtAndFileESaIS1_EE9push_backEOS1_.exit.i
  %i.det = load i64, ptr %i.dbl, align 8, !tbaa !45
  %i.deu = add i64 %i.det, 1
  call void @_ZdlPvm(ptr noundef %.pre26.i, i64 noundef %i.deu) #24
  br label %_ZN5vcpkg25OutdatedDynamicCrtAndFileD2Ev.exit.i

_ZN5vcpkg25OutdatedDynamicCrtAndFileD2Ev.exit.i:  ; preds = %_ZNSt6vectorIN5vcpkg25OutdatedDynamicCrtAndFileESaIS1_EE9push_backEOS1_.exit.thread.i, %_ZNSt6vectorIN5vcpkg25OutdatedDynamicCrtAndFileESaIS1_EE9push_backEOS1_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1128
  %i.dev = phi ptr [ %i.den, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1128 ], [ %i.dda, %_ZNSt6vectorIN5vcpkg25OutdatedDynamicCrtAndFileESaIS1_EE9push_backEOS1_.exit.thread.i ], [ %i.den, %_ZNSt6vectorIN5vcpkg25OutdatedDynamicCrtAndFileESaIS1_EE9push_backEOS1_.exit.i ]
  %i.dew = phi ptr [ %i.ddl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1128 ], [ %i.dbr, %_ZNSt6vectorIN5vcpkg25OutdatedDynamicCrtAndFileESaIS1_EE9push_backEOS1_.exit.thread.i ], [ %i.ddl, %_ZNSt6vectorIN5vcpkg25OutdatedDynamicCrtAndFileESaIS1_EE9push_backEOS1_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #23
  br label %..loopexit_crit_edge.i

bb.zf:                                            ; preds = %.noexc.i.i.i1129
  %i.dex = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg25OutdatedDynamicCrtAndFileD2Ev.exit39.i

.loopexit.split-lp.i1115.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN5vcpkg25OutdatedDynamicCrtAndFileESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.zb
  %lpad.loopexit.split-lp4866 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dey = load ptr, ptr %124, align 8, !tbaa !44 ; 2 uses
  %i.dez = icmp eq ptr %i.dey, %i.dbl
  br i1 %i.dez, label %_ZN5vcpkg25OutdatedDynamicCrtAndFileD2Ev.exit39.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i37.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i37.i: ; preds = %.loopexit.split-lp.i1115.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dfa = load i64, ptr %i.dbl, align 8, !tbaa !45
  %i.dfb = add i64 %i.dfa, 1
  call void @_ZdlPvm(ptr noundef %i.dey, i64 noundef %i.dfb) #24
  br label %_ZN5vcpkg25OutdatedDynamicCrtAndFileD2Ev.exit39.i

_ZN5vcpkg25OutdatedDynamicCrtAndFileD2Ev.exit39.i: ; preds = %.loopexit.split-lp.i1115.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i37.i, %bb.zf
  %.pn33.i1117 = phi { ptr, i32 } [ %i.dex, %bb.zf ], [ %lpad.loopexit.split-lp4866, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i37.i ], [ %lpad.loopexit.split-lp4866, %.loopexit.split-lp.i1115.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
end_hunk_0
