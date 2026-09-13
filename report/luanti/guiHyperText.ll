Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/guiHyperText?download=true
inline.NumInlined: 2315
inline.NumDeleted: 795
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN10ParsedText7Element8setStyleERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEE:._crit_edge.i.i
  %i.at = load i32, ptr %3, align 4, !tbaa !53
  store i32 %i.at, ptr %i.as, align 4, !tbaa !53
  br label %._crit_edge.i.i89

bb.h:                                             ; preds = %._crit_edge.i.i77, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit82
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.aj
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.h
  %i.ax = load i64, ptr %i.aj, align 8, !tbaa !28
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.t

._crit_edge.i.i89:                                ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.az, ptr %6, align 8, !tbaa !24
  store i64 7312272889584971622, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 8, ptr %i.ba, align 8, !tbaa !27
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 0, ptr %i.bb, align 8, !tbaa !28
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit94 unwind label %bb.j

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit94: ; preds = %._crit_edge.i.i89
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !29
  %i.be = call i64 @__isoc23_strtol(ptr noundef nonnull %i.bd, ptr noundef null, i32 noundef 10) #26, !inline_history !0
  %i.bf = trunc i64 %i.be to i32
  %i.bg = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.az
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit94
  %i.bi = load i64, ptr %i.az, align 8, !tbaa !28
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.bk, ptr %7, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bk, ptr noundef nonnull align 1 dereferenceable(9) @.str.4, i64 9, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 9, ptr %i.bl, align 8, !tbaa !27
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 25
  store i8 0, ptr %i.bm, align 1, !tbaa !28
  %i.bn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit103 unwind label %bb.k ; 2 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !27
  %i.bq = icmp eq i64 %i.bp, 4
  br i1 %i.bq, label %bb.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.i:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit103
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !29
  %i.bs = load i32, ptr %i.br, align 1
  %i.bt = icmp ne i32 %i.bs, 1869508461
  %i.bu = zext i1 %i.bt to i32
  %i.bv = icmp eq i32 %i.bu, 0
  %i.bw = zext i1 %i.bv to i8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit103, %bb.i
  %spec.select = phi i8 [ 0, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit103 ], [ %i.bw, %bb.i ] ; 3 uses
  %i.bx = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bk
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bz = load i64, ptr %i.bk, align 8, !tbaa !28
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.cb = uitofp nsz i32 %i.bf to float
  %i.cc = fmul nnan nsz float %i.cb, 6.250000e-02
  %i.cd = load ptr, ptr @g_fontengine, align 8, !tbaa !55
  %i.ce = call noundef i32 @_ZN10FontEngine11getFontSizeE8FontMode(ptr noundef nonnull align 8 dereferenceable(1327) %i.cd, i8 noundef zeroext %spec.select)
  %i.cf = uitofp nsz i32 %i.ce to float
  %i.cg = fmul nsz float %i.cc, %i.cf
  %i.ch = fadd nsz float %i.cg, 5.000000e-01
  %i.ci = fptosi float %i.ch to i32               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.cj, ptr %8, align 8, !tbaa !24
  store i32 1684828002, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 4, ptr %i.ck, align 8, !tbaa !27
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i8 0, ptr %i.cl, align 4, !tbaa !28
  %i.cm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit118 unwind label %bb.m ; 2 uses

bb.j:                                             ; preds = %._crit_edge.i.i89
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.az
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.j
  %i.cq = load i64, ptr %i.az, align 8, !tbaa !28
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.t

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bk
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.k
  %i.cv = load i64, ptr %i.bk, align 8, !tbaa !28
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.t

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.cx = load ptr, ptr %i.cm, align 8, !tbaa !29
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !27
  %i.da = invoke noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.cz, ptr %i.cx)
          to label %._crit_edge.i.i121 unwind label %bb.m

._crit_edge.i.i121:                               ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit118
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.db, ptr %9, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.db, ptr noundef nonnull align 1 dereferenceable(6) @.str.7, i64 6, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 6, ptr %i.dc, align 8, !tbaa !27
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i8 0, ptr %i.dd, align 2, !tbaa !28
  %i.de = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit126 unwind label %bb.n ; 2 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit126: ; preds = %._crit_edge.i.i121
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !29
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !27
  %i.di = invoke noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.dh, ptr %i.df)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit126
  %i.dj = load ptr, ptr %9, align 8, !tbaa !29    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.db
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.l
  %i.dl = load i64, ptr %i.db, align 8, !tbaa !28
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.dn = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.cj
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %i.dp = load i64, ptr %i.cj, align 8, !tbaa !28
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.dr = load ptr, ptr @g_fontengine, align 8, !tbaa !55
  %.sroa.7.0.insert.insert = select i1 %i.di, i64 72339069014638592, i64 72057594037927936
  %.sroa.6.0.insert.shift = select i1 %i.da, i64 1099511627776, i64 0
  %.sroa.6.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.7.0.insert.insert
  %.sroa.5.0.insert.ext = zext nneg i8 %spec.select to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.0168.0.insert.ext = zext i32 %i.ci to i64
  %.sroa.0168.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, %.sroa.0168.0.insert.ext
  %i.ds = call noundef ptr @_ZN10FontEngine7getFontE8FontSpec(ptr noundef nonnull align 8 dereferenceable(1327) %i.dr, i64 %.sroa.0168.0.insert.insert) ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !56
  %.not = icmp eq ptr %i.ds, null
  br i1 %.not, label %._crit_edge.i.i135, label %bb.s

._crit_edge.i.i135:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %i.du = zext nneg i8 %spec.select to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.dv, ptr %10, align 8, !tbaa !24
  store i32 1684828002, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 4, ptr %i.dw, align 8, !tbaa !27
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i8 0, ptr %i.dx, align 4, !tbaa !28
  %i.dy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit140 unwind label %bb.p

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit140: ; preds = %._crit_edge.i.i135
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.ea, ptr %11, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ea, ptr noundef nonnull align 1 dereferenceable(6) @.str.7, i64 6, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 6, ptr %i.eb, align 8, !tbaa !27
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i8 0, ptr %i.ec, align 2, !tbaa !28
  %i.ed = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit146 unwind label %bb.q

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit146: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit140
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !29
  %i.ef = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.ci, i32 noundef %i.du, ptr noundef %i.dz, ptr noundef %i.ee) ; 0 uses
  %i.eg = load ptr, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.ea
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit146
  %i.ei = load i64, ptr %i.ea, align 8, !tbaa !28
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.ek = load ptr, ptr %10, align 8, !tbaa !29   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dv
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.em = load i64, ptr %i.dv, align 8, !tbaa !28
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.s

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit118
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i121, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit126
  %i.ep = landingpad { ptr, i32 }
          cleanup
  %i.eq = load ptr, ptr %9, align 8, !tbaa !29    ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.db
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %bb.n
  %i.es = load i64, ptr %i.db, align 8, !tbaa !28
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %bb.m
  %.pn48.pn = phi { ptr, i32 } [ %i.ep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ], [ %i.eo, %bb.m ]
  %i.eu = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.cj
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %bb.o
  %i.ew = load i64, ptr %i.cj, align 8, !tbaa !28
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.t

bb.p:                                             ; preds = %._crit_edge.i.i135
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit140
  %i.ez = landingpad { ptr, i32 }
          cleanup
  %i.fa = load ptr, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ea
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %bb.q
  %i.fc = load i64, ptr %i.ea, align 8, !tbaa !28
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %bb.p
  %.pn52.pn = phi { ptr, i32 } [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ], [ %i.ey, %bb.p ]
  %i.fe = load ptr, ptr %10, align 8, !tbaa !29   ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.dv
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %bb.r
  %i.fg = load i64, ptr %i.dv, align 8, !tbaa !28
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.t

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %.pn52.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ], [ %.pn52.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ], [ %.pn48.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %.pn52.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn.pn.pn.pn.pn, %bb.t ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ]
  resume { ptr, i32 } %.pn52.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %.not21.i = icmp eq i64 %0, 0
  br i1 %.not21.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.01318.i = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.01318.i
  %i.b = load i8, ptr %i.a, align 1, !tbaa !28
  %i.c = sext i8 %i.b to i32
  %i.d = tail call i32 @isspace(i32 noundef %i.c) #28
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = add nuw i64 %.01318.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.e, %0
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !260

.critedge.i:                                      ; preds = %bb.b, %.lr.ph.i, %bb.a
  %.013.lcssa.i = phi i64 [ 0, %bb.a ], [ %.01318.i, %.lr.ph.i ], [ %0, %bb.b ] ; 8 uses
  %umin.i = tail call i64 @llvm.umin.i64(i64 %.013.lcssa.i, i64 %0) ; 2 uses
  %i.f = icmp ugt i64 %0, %.013.lcssa.i
  br i1 %i.f, label %.lr.ph, label %.critedge2.i

bb.c:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.h, %.013.lcssa.i
  br i1 %i.g, label %.lr.ph, label %.critedge2.i, !llvm.loop !261

.lr.ph:                                           ; preds = %.critedge.i, %bb.c
  %.0.i25 = phi i64 [ %i.h, %bb.c ], [ %0, %.critedge.i ] ; 2 uses
  %i.h = add i64 %.0.i25, -1                      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !28
  %i.k = sext i8 %i.j to i32
  %i.l = tail call i32 @isspace(i32 noundef %i.k) #28
  %.not17.i = icmp eq i32 %i.l, 0
  br i1 %.not17.i, label %..critedge2.i_crit_edge, label %bb.c, !llvm.loop !261

..critedge2.i_crit_edge:                          ; preds = %.lr.ph
  br label %.critedge2.i, !llvm.loop !261

.critedge2.i:                                     ; preds = %bb.c, %..critedge2.i_crit_edge, %.critedge.i
  %.0.lcssa.i = phi i64 [ %umin.i, %.critedge.i ], [ %.0.i25, %..critedge2.i_crit_edge ], [ %umin.i, %bb.c ]
  %i.m = icmp ugt i64 %.013.lcssa.i, %0
end_hunk_0
