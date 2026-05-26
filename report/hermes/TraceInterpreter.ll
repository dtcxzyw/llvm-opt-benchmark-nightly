inline.NumInlined: 3334
inline.NumDeleted: 1604
begin_hunk_0_@_ZN8facebook6hermes7tracing16TraceInterpreterC2ERNS_3jsi7RuntimeERKNS2_14ExecuteOptionsERKNS1_10SynthTraceESt3mapISt5arrayIhLm20EESt10shared_ptrIKNS3_6BufferEESt4lessISE_ESaISt4pairIKSE_SI_EEE:bb.a
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc41.i unwind label %.loopexit.split-lp.i, !noalias !100

.noexc41.i:                                       ; preds = %.noexc.i.i.i40.i
  unreachable

.noexc7.i.i.i.i:                                  ; preds = %bb.ab
  invoke void @_ZSt17__throw_bad_allocv() #38
          to label %.noexc42.i unwind label %.loopexit.split-lp.i, !noalias !100

.noexc42.i:                                       ; preds = %.noexc7.i.i.i.i
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i: ; preds = %bb.aa
  %i.ev = shl nuw nsw i64 %i.er, 3                ; 2 uses
  %i.ew = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ev) #37
          to label %.noexc43.i unwind label %.loopexit73.i, !noalias !100 ; 2 uses

.noexc43.i:                                       ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ew, i8 0, i64 %i.ev, i1 false), !noalias !100
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %.noexc43.i, %bb.z
  %.0.i.i.i = phi ptr [ %i.bi, %bb.z ], [ %i.ew, %.noexc43.i ] ; 4 uses
  %i.ex = load ptr, ptr %i.bk, align 8, !tbaa !127, !noalias !100 ; 2 uses
  store ptr null, ptr %i.bk, align 8, !tbaa !127, !noalias !100
  %.not29.i.i = icmp eq ptr %i.ex, null
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i, %bb.af
  %.031.i.i = phi ptr [ %i.ey, %bb.af ], [ %i.ex, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i ] ; 8 uses
  %.02530.i.i = phi i64 [ %.1.i.i, %bb.af ], [ 0, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i ] ; 2 uses
  %i.ey = load ptr, ptr %.031.i.i, align 8, !tbaa !119, !noalias !100 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !107, !noalias !100
  %i.fb = urem i64 %i.fa, %i.er                   ; 3 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %i.fb ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !121, !noalias !100 ; 2 uses
  %.not27.i.i = icmp eq ptr %i.fd, null
  br i1 %.not27.i.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.fe = load ptr, ptr %i.bk, align 8, !tbaa !127, !noalias !100
  store ptr %i.fe, ptr %.031.i.i, align 8, !tbaa !119, !noalias !100
  store ptr %.031.i.i, ptr %i.bk, align 8, !tbaa !127, !noalias !100
  store ptr %i.bk, ptr %i.fc, align 8, !tbaa !121, !noalias !100
  %i.ff = load ptr, ptr %.031.i.i, align 8, !tbaa !119, !noalias !100
  %.not28.i.i = icmp eq ptr %i.ff, null
  br i1 %.not28.i.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %.02530.i.i
  store ptr %.031.i.i, ptr %i.fg, align 8, !tbaa !121, !noalias !100
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i.i
  %i.fh = load ptr, ptr %i.fd, align 8, !tbaa !119, !noalias !100
  store ptr %i.fh, ptr %.031.i.i, align 8, !tbaa !119, !noalias !100
  %i.fi = load ptr, ptr %i.fc, align 8, !tbaa !121, !noalias !100
  store ptr %.031.i.i, ptr %i.fi, align 8, !tbaa !119, !noalias !100
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.1.i.i = phi i64 [ %.02530.i.i, %bb.ae ], [ %i.fb, %bb.ad ], [ %i.fb, %bb.ac ]
  %.not.i39.i = icmp eq ptr %i.ey, null
  br i1 %.not.i39.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !128

._crit_edge.i.i:                                  ; preds = %bb.af, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i
  %i.fj = load ptr, ptr %6, align 8, !tbaa !84, !noalias !100 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.bi
  br i1 %i.fk, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i.i
  %i.fl = load i64, ptr %i.bj, align 8, !tbaa !85, !noalias !100
  %i.fm = shl i64 %i.fl, 3
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #36, !noalias !100
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit.i.i

.loopexit73.i:                                    ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ah

.loopexit.split-lp.i:                             ; preds = %.noexc7.i.i.i.i, %.noexc.i.i.i40.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp.i, %.loopexit73.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit73.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.fn = extractvalue { ptr, i32 } %lpad.phi.i, 0
  %i.fo = call ptr @__cxa_begin_catch(ptr %i.fn) #35, !noalias !100 ; 0 uses
  store i64 %i.en, ptr %i.bm, align 8, !tbaa !124, !noalias !100
  invoke void @__cxa_rethrow() #38
          to label %bb.ak unwind label %bb.ai, !noalias !100

bb.ai:                                            ; preds = %bb.ah
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit29.i.body.i unwind label %bb.aj, !noalias !100

bb.aj:                                            ; preds = %bb.ai
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #34, !noalias !100
  unreachable

bb.ak:                                            ; preds = %bb.ah
  unreachable

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit.i.i: ; preds = %bb.ag, %._crit_edge.i.i
  store i64 %i.er, ptr %i.bj, align 8, !tbaa !85, !noalias !100
  store ptr %.0.i.i.i, ptr %6, align 8, !tbaa !84, !noalias !100
  %i.fs = urem i64 %i.cy, %i.er
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit.i.i, %.noexc37._crit_edge.i
  %i.ft = phi ptr [ %.0.i.i.i, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit.i.i ], [ %.pre.i, %.noexc37._crit_edge.i ] ; 2 uses
  %.0.i.i = phi i64 [ %i.fs, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit.i.i ], [ %i.em, %.noexc37._crit_edge.i ]
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.0.i.i ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !121, !noalias !100 ; 2 uses
  %.not.i.i36.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i36.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !119, !noalias !100
  store ptr %i.fw, ptr %i.dq, align 8, !tbaa !119, !noalias !100
  %i.fx = load ptr, ptr %i.fu, align 8, !tbaa !121, !noalias !100
  store ptr %i.dq, ptr %i.fx, align 8, !tbaa !119, !noalias !100
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i

bb.an:                                            ; preds = %bb.al
  %i.fy = load ptr, ptr %i.bk, align 8, !tbaa !127, !noalias !100 ; 3 uses
  store ptr %i.fy, ptr %i.dq, align 8, !tbaa !119, !noalias !100
  store ptr %i.dq, ptr %i.bk, align 8, !tbaa !127, !noalias !100
  %.not11.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not11.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load i64, ptr %i.bj, align 8, !tbaa !85, !noalias !100
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !107, !noalias !100
  %i.gc = urem i64 %i.gb, %i.ga
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.gc
  store ptr %i.dq, ptr %i.gd, align 8, !tbaa !121, !noalias !100
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  store ptr %i.bk, ptr %i.fu, align 8, !tbaa !121, !noalias !100
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i: ; preds = %bb.ap, %bb.am
  %i.ge = load i64, ptr %i.bw, align 8, !tbaa !118, !noalias !100
  %i.gf = add i64 %i.ge, 1
  store i64 %i.gf, ptr %i.bw, align 8, !tbaa !118, !noalias !100
  br label %bb.aq

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit29.i.i: ; preds = %.critedge27.i.i
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit29.i.body.i

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit29.i.body.i: ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit29.i.i, %bb.ai
  %eh.lpad-body38.i = phi { ptr, i32 } [ %i.gg, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit29.i.i ], [ %i.fp, %bb.ai ]
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef 24) #36, !noalias !100
  br label %.body34.i

_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit.i.i: ; preds = %bb.w, %bb.t, %bb.v
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef 24) #36, !noalias !100
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit.i.i, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i
  %i.gh = load i64, ptr %.sroa.051.0138.i, align 8, !tbaa !107, !noalias !100 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %.sroa.11.1140.i, %.sroa.18.1139.i
  br i1 %.not.i.i18.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i64 %storemerge148.i, ptr %.sroa.11.1140.i, align 8, !noalias !100
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1140.i, i64 8
  store i64 %i.gh, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !100
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.11.1140.i, i64 16
  br label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.gj = ptrtoint ptr %.sroa.11.1140.i to i64
  %i.gk = ptrtoint ptr %.sroa.056.1141.i to i64
  %i.gl = sub i64 %i.gj, %i.gk                    ; 4 uses
  %i.gm = icmp eq i64 %i.gl, 9223372036854775792
  br i1 %i.gm, label %bb.at, label %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
          to label %.noexc.i unwind label %.loopexit.split-lp75.i, !noalias !100

.noexc.i:                                         ; preds = %bb.at
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.as
  %i.gn = ashr exact i64 %i.gl, 4                 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gn, i64 1)
  %i.go = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.gn ; 2 uses
  %i.gp = call i64 @llvm.umin.i64(i64 %i.go, i64 576460752303423487) ; 2 uses
  %.not.i.i.i.i19.i = icmp ne i64 %i.go, 0
  call void @llvm.assume(i1 %.not.i.i.i.i19.i)
  %i.gq = shl nuw nsw i64 %i.gp, 4
  %i.gr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gq) #37
          to label %.noexc20.i unwind label %.loopexit74.i, !noalias !100 ; 5 uses

.noexc20.i:                                       ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gl ; 2 uses
  store i64 %storemerge148.i, ptr %i.gs, align 8, !noalias !100
  %.sroa.6.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i64 %i.gh, ptr %.sroa.6.0..sroa_idx45.i, align 8, !noalias !100
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.056.1141.i, %.sroa.11.1140.i
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc20.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.gu, %.lr.ph.i.i.i.i.i.i.i ], [ %i.gr, %.noexc20.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.056.1141.i, %.noexc20.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !129, !noalias !100
  %i.gt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gt, %.sroa.11.1140.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !133

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc20.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.gr, %.noexc20.i ], [ %i.gu, %.lr.ph.i.i.i.i.i.i.i ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i.i = icmp eq ptr %.sroa.056.1141.i, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.056.1141.i, i64 noundef %i.gl) #36, !noalias !100
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.au, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %i.gp
  br label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit.i

bb.av:                                            ; preds = %.loopexit70.i
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %.body34.i

.loopexit74.i:                                    ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit76.i = landingpad { ptr, i32 }
          cleanup
  br label %.body34.i

.loopexit.split-lp75.i:                           ; preds = %bb.at
  %lpad.loopexit.split-lp77.i = landingpad { ptr, i32 }
          cleanup
  br label %.body34.i

_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit.i: ; preds = %bb.r, %bb.o, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, %bb.ar, %bb.q
  %.sroa.18.2.i = phi ptr [ %.sroa.18.1139.i, %bb.ar ], [ %.sroa.18.1139.i, %bb.o ], [ %.sroa.18.1139.i, %bb.q ], [ %i.gw, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %.sroa.18.1139.i, %bb.r ] ; 2 uses
  %.sroa.11.2.i = phi ptr [ %i.gi, %bb.ar ], [ %.sroa.11.1140.i, %bb.o ], [ %.sroa.11.1140.i, %bb.q ], [ %i.gv, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %.sroa.11.1140.i, %bb.r ] ; 2 uses
  %.sroa.056.2.i = phi ptr [ %.sroa.056.1141.i, %bb.ar ], [ %.sroa.056.1141.i, %bb.o ], [ %.sroa.056.1141.i, %bb.q ], [ %i.gr, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %.sroa.056.1141.i, %bb.r ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.051.0138.i, i64 8 ; 2 uses
  %.not.i23 = icmp eq ptr %i.gy, %i.cp
  br i1 %.not.i23, label %._crit_edge.loopexit.i, label %.lr.ph.i

.body34.i:                                        ; preds = %.loopexit.split-lp75.i, %.loopexit74.i, %bb.av, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit29.i.body.i
  %.sroa.18.1139175.i = phi ptr [ %.sroa.18.1139.i, %bb.av ], [ %.sroa.18.1139.i, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit29.i.body.i ], [ %.sroa.11.1140.i, %.loopexit74.i ], [ %.sroa.11.1140.i, %.loopexit.split-lp75.i ]
  %.pn.i = phi { ptr, i32 } [ %i.gx, %bb.av ], [ %eh.lpad-body38.i, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit29.i.body.i ], [ %lpad.loopexit76.i, %.loopexit74.i ], [ %lpad.loopexit.split-lp77.i, %.loopexit.split-lp75.i ]
  %i.gz = load ptr, ptr %7, align 8, !tbaa !114, !noalias !100 ; 3 uses
  %.not.i.i.i21.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i21.i, label %_ZNSt6vectorImSaImEED2Ev.exit22.i, label %bb.aw

bb.aw:                                            ; preds = %.body34.i
  %i.ha = load ptr, ptr %i.bx, align 8, !tbaa !116, !noalias !100
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = ptrtoint ptr %i.gz to i64
  %i.hd = sub i64 %i.hb, %i.hc
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef %i.hd) #36, !noalias !100
  br label %_ZNSt6vectorImSaImEED2Ev.exit22.i

_ZNSt6vectorImSaImEED2Ev.exit22.i:                ; preds = %bb.aw, %.body34.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35, !noalias !100
  br label %.body.i

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i: ; preds = %.lr.ph.i.i.i, %._crit_edge151.i, %bb.j
  %.sroa.056.0.lcssa232.i = phi ptr [ null, %bb.j ], [ %.sroa.056.1.lcssa.i, %._crit_edge151.i ], [ %.sroa.056.1.lcssa.i, %.lr.ph.i.i.i ] ; 7 uses
  %.sroa.11.0.lcssa231.i = phi ptr [ null, %bb.j ], [ %.sroa.11.1.lcssa.i, %._crit_edge151.i ], [ %.sroa.11.1.lcssa.i, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.18.0.lcssa230.i = phi ptr [ null, %bb.j ], [ %.sroa.18.1.lcssa.i, %._crit_edge151.i ], [ %.sroa.18.1.lcssa.i, %.lr.ph.i.i.i ] ; 3 uses
  store ptr null, ptr %10, align 8, !tbaa !84, !alias.scope !100
  %i.he = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.hf = load i64, ptr %i.bj, align 8, !tbaa !85, !noalias !100
  store i64 %i.hf, ptr %i.he, align 8, !tbaa !85, !alias.scope !100
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr null, ptr %i.hg, align 8, !tbaa !119, !alias.scope !100
  %i.hh = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !118, !noalias !100
  store i64 %i.hj, ptr %i.hh, align 8, !tbaa !118, !alias.scope !100
  %i.hk = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hk, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !tbaa.struct !134
  %i.hl = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 6 uses
  store ptr null, ptr %i.hl, align 8, !tbaa !126, !alias.scope !100
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35, !noalias !100
  store ptr %10, ptr %5, align 8, !tbaa !136, !noalias !100
  invoke void @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_assignIRKSF_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc26.i unwind label %bb.bb

.noexc26.i:                                       ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35, !noalias !100
  %i.hm = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 6 uses
  %i.hn = ptrtoint ptr %.sroa.11.0.lcssa231.i to i64
  %i.ho = ptrtoint ptr %.sroa.056.0.lcssa232.i to i64 ; 2 uses
  %i.hp = sub i64 %i.hn, %i.ho                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i8 0, i64 24, i1 false), !alias.scope !100
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.11.0.lcssa231.i, %.sroa.056.0.lcssa232.i
  br i1 %.not.i.i.i.i.i.i, label %.noexc4.i.thread.i, label %bb.ax

.noexc4.i.thread.i:                               ; preds = %.noexc26.i
  %i.hq = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.hr = getelementptr inbounds nuw i8, ptr null, i64 %i.hp
  %i.hs = getelementptr inbounds nuw i8, ptr %10, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, i8 0, i64 16, i1 false), !alias.scope !100
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !138, !alias.scope !100
  br label %.loopexit.i

bb.ax:                                            ; preds = %.noexc26.i
  %i.ht = icmp ugt i64 %i.hp, 9223372036854775792
  br i1 %i.ht, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorISt4pairImmEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !125

.noexc.i.i.i.i:                                   ; preds = %bb.ax
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc.i.i unwind label %bb.ay

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairImmEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.ax
  %i.hu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hp) #37
          to label %.noexc4.i.i unwind label %bb.ay ; 4 uses

.noexc4.i.i:                                      ; preds = %_ZNSt15__new_allocatorISt4pairImmEE8allocateEmPKv.exit.i.i.i.i.i.i
  store ptr %i.hu, ptr %i.hm, align 8, !tbaa !139, !alias.scope !100
  %i.hv = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  store ptr %i.hu, ptr %i.hv, align 8, !tbaa !140, !alias.scope !100
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hp
  %i.hx = getelementptr inbounds nuw i8, ptr %10, i64 72
  store ptr %i.hw, ptr %i.hx, align 8, !tbaa !138, !alias.scope !100
  br label %.lr.ph.i.i.i.i.i.i23.i

.lr.ph.i.i.i.i.i.i23.i:                           ; preds = %.lr.ph.i.i.i.i.i.i23.i, %.noexc4.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.hz, %.lr.ph.i.i.i.i.i.i23.i ], [ %i.hu, %.noexc4.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.hy, %.lr.ph.i.i.i.i.i.i23.i ], [ %.sroa.056.0.lcssa232.i, %.noexc4.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i, i64 16, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i24.i = icmp eq ptr %i.hy, %.sroa.11.0.lcssa231.i
  br i1 %.not.i.i.i.i.i.i24.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i23.i, !llvm.loop !141

bb.ay:                                            ; preds = %_ZNSt15__new_allocatorISt4pairImmEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(80) %10) #35
  br label %.body.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i23.i, %.noexc4.i.thread.i
  %i.ib = phi ptr [ %i.hq, %.noexc4.i.thread.i ], [ %i.hv, %.lr.ph.i.i.i.i.i.i23.i ]
  %.0.lcssa.i.i.i.i.i.i25.i = phi ptr [ null, %.noexc4.i.thread.i ], [ %i.hz, %.lr.ph.i.i.i.i.i.i23.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i25.i, ptr %i.ib, align 8, !tbaa !140, !alias.scope !100
  %.not.i.i.i27.i = icmp eq ptr %.sroa.056.0.lcssa232.i, null
  br i1 %.not.i.i.i27.i, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit.i, label %bb.az

bb.az:                                            ; preds = %.loopexit.i
  %i.ic = ptrtoint ptr %.sroa.18.0.lcssa230.i to i64
  %i.id = sub i64 %i.ic, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.056.0.lcssa232.i, i64 noundef %i.id) #36
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit.i:      ; preds = %bb.az, %.loopexit.i
  %i.ie = load ptr, ptr %i.bk, align 8, !tbaa !127, !noalias !100 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ie, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i28.i

.lr.ph.i.i.i.i28.i:                               ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit.i, %.lr.ph.i.i.i.i28.i
  %.06.i.i.i.i.i = phi ptr [ %i.if, %.lr.ph.i.i.i.i28.i ], [ %i.ie, %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit.i ] ; 2 uses
  %i.if = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !119 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #36
  %.not.i.i.i.i29.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i.i29.i, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i28.i, !llvm.loop !142

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i28.i, %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit.i
  %i.ig = load ptr, ptr %6, align 8, !tbaa !84, !noalias !100
  %i.ih = load i64, ptr %i.bj, align 8, !tbaa !85, !noalias !100
  %i.ii = shl i64 %i.ih, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ig, i8 0, i64 %i.ii, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false), !noalias !100
  %i.ij = load ptr, ptr %6, align 8, !tbaa !84, !noalias !100 ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.bi
  br i1 %i.ik, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.il = load i64, ptr %i.bj, align 8, !tbaa !85, !noalias !100
  %i.im = shl i64 %i.il, 3
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #36
  br label %bb.be

bb.bb:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bb, %bb.ay, %_ZNSt6vectorImSaImEED2Ev.exit22.i, %bb.n
  %.sroa.18.4.i = phi ptr [ %.sroa.18.0145.i, %bb.n ], [ %.sroa.18.1139175.i, %_ZNSt6vectorImSaImEED2Ev.exit22.i ], [ %.sroa.18.0.lcssa230.i, %bb.ay ], [ %.sroa.18.0.lcssa230.i, %bb.bb ]
  %.sroa.056.4.i = phi ptr [ %.sroa.056.0147.i, %bb.n ], [ %.sroa.056.1141.i, %_ZNSt6vectorImSaImEED2Ev.exit22.i ], [ %.sroa.056.0.lcssa232.i, %bb.ay ], [ %.sroa.056.0.lcssa232.i, %bb.bb ] ; 3 uses
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.cw, %bb.n ], [ %.pn.i, %_ZNSt6vectorImSaImEED2Ev.exit22.i ], [ %i.ia, %bb.ay ], [ %i.in, %bb.bb ]
  %.not.i.i.i30.i = icmp eq ptr %.sroa.056.4.i, null
  br i1 %.not.i.i.i30.i, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit31.i, label %bb.bc

bb.bc:                                            ; preds = %.body.i
  %i.io = ptrtoint ptr %.sroa.18.4.i to i64
  %i.ip = ptrtoint ptr %.sroa.056.4.i to i64
  %i.iq = sub i64 %i.io, %i.ip
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.056.4.i, i64 noundef %i.iq) #36
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit31.i

_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit31.i:    ; preds = %bb.bc, %.body.i
  %i.ir = load ptr, ptr %i.bk, align 8, !tbaa !127 ; 2 uses
  %.not5.i.i.i.i36 = icmp eq ptr %i.ir, null
  br i1 %.not5.i.i.i.i36, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i37

.lr.ph.i.i.i.i37:                                 ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit31.i, %.lr.ph.i.i.i.i37
  %.06.i.i.i.i38 = phi ptr [ %i.is, %.lr.ph.i.i.i.i37 ], [ %i.ir, %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit31.i ] ; 2 uses
  %i.is = load ptr, ptr %.06.i.i.i.i38, align 8, !tbaa !119 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i38, i64 noundef 24) #36
  %.not.i.i.i.i39 = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i.i39, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i37, !llvm.loop !142

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i37, %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit31.i
  %i.it = load ptr, ptr %6, align 8, !tbaa !84
  %i.iu = load i64, ptr %i.bj, align 8, !tbaa !85
  %i.iv = shl i64 %i.iu, 3
end_hunk_0
begin_hunk_1_@_ZN8facebook6hermes7tracing16TraceInterpreter15execWithRuntimeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS8_SaIS8_EERKNS2_14ExecuteOptionsERKSt8functionIFSt10shared_ptrINS_3jsi7RuntimeEERKN6hermes2vm13RuntimeConfigEEE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @__cxa_allocate_exception(i64 32) #35 ; 3 uses
  %i.g = load i8, ptr %i.c, align 8
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i = load i32, ptr %5, align 8, !tbaa !3
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.31.0.copyload.i = load ptr, ptr %.sroa.31.0..sroa_idx.i, align 8, !tbaa !158
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #39
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.31.0.i = phi ptr [ %.sroa.31.0.copyload.i, %bb.c ], [ %i.i, %bb.d ]
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.copyload.i, %bb.c ], [ 0, %bb.d ]
  invoke void @_ZNSt12system_errorC2ESt10error_code(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 %.sroa.0.0.i, ptr %.sroa.31.0.i)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #38
          to label %bb.an unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.h:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.f) #35
  br label %bb.al

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.l = load i64, ptr %5, align 8, !tbaa !160
  store i64 %i.l, ptr %7, align 8, !tbaa !160
  store ptr null, ptr %5, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.m = load ptr, ptr %2, align 8, !tbaa !162    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !162  ; 2 uses
  %.not49 = icmp eq ptr %i.m, %i.o
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 17
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.31.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter20execFromMemoryBufferB5cxx11EOSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEOSt6vectorIS8_SaIS8_EERKNS2_14ExecuteOptionsERKSt8functionIFSt10shared_ptrINS_3jsi7RuntimeEERKN6hermes2vm13RuntimeConfigEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.94") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(316) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.z unwind label %bb.aj

bb.j:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit
  %i.v = phi ptr [ null, %.lr.ph ], [ %i.by, %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit ] ; 11 uses
  %i.w = phi ptr [ null, %.lr.ph ], [ %i.bz, %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit ] ; 5 uses
  %i.x = phi ptr [ null, %.lr.ph ], [ %i.ca, %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit ] ; 3 uses
  %.sroa.046.050 = phi ptr [ %i.m, %.lr.ph ], [ %i.cb, %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  store i8 4, ptr %i.p, align 8, !tbaa !154
  store i8 1, ptr %i.q, align 1, !tbaa !157
  store ptr %.sroa.046.050, ptr %10, align 8, !tbaa !74
  invoke void @_ZN4llvh12MemoryBuffer7getFileERKNS_5TwineElbb(ptr dead_on_unwind nonnull writable sret(%"class.llvh::ErrorOr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(18) %10, i64 noundef -1, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.y = load i8, ptr %i.c, align 8               ; 3 uses
  %i.z = trunc i8 %i.y to i1
  br i1 %i.z, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = load ptr, ptr %5, align 8, !tbaa !160   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i: ; preds = %bb.l
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !94
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aa) #35, !inline_history !164
  %.pre.i.i = load i8, ptr %i.c, align 8
  br label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i

_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i, %bb.l, %bb.k
  %i.ae = phi i8 [ %i.y, %bb.k ], [ %i.y, %bb.l ], [ %.pre.i.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i ] ; 2 uses
  %i.af = load i8, ptr %i.r, align 8
  %i.ag = trunc i8 %i.af to i1
  br i1 %i.ag, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEEaSEOS6_.exit.thread, label %bb.m

_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEEaSEOS6_.exit.thread: ; preds = %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i
  %i.ah = or i8 %i.ae, 1
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %9, align 8, !tbaa !3
  %.sroa.31.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.31.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !158
  store i32 %.sroa.0.0.copyload.i.i.i.i.i, ptr %5, align 8
  store ptr %.sroa.31.0.copyload.i.i.i.i.i, ptr %i.s, align 8
  br label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit

bb.m:                                             ; preds = %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i
  %i.ai = and i8 %i.ae, -2
  %i.aj = load i64, ptr %9, align 8, !tbaa !160
  store i64 %i.aj, ptr %5, align 8, !tbaa !160
  br label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit

_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.m, %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEEaSEOS6_.exit.thread
  %.sink = phi i8 [ %i.ah, %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEEaSEOS6_.exit.thread ], [ %i.ai, %bb.m ] ; 2 uses
  store i8 %.sink, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %i.ak = trunc i8 %.sink to i1
  br i1 %i.ak, label %bb.n, label %bb.u

bb.n:                                             ; preds = %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit
  %i.al = call ptr @__cxa_allocate_exception(i64 32) #35 ; 3 uses
  %i.am = load i8, ptr %i.c, align 8
  %i.an = trunc i8 %i.am to i1
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.copyload.i23 = load i32, ptr %5, align 8, !tbaa !3
  %.sroa.31.0.copyload.i25 = load ptr, ptr %i.s, align 8, !tbaa !158
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #39
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.31.0.i19 = phi ptr [ %.sroa.31.0.copyload.i25, %bb.o ], [ %i.ao, %bb.p ]
  %.sroa.0.0.i20 = phi i32 [ %.sroa.0.0.copyload.i23, %bb.o ], [ 0, %bb.p ]
  invoke void @_ZNSt12system_errorC2ESt10error_code(ptr noundef nonnull align 8 dereferenceable(32) %i.al, i32 %.sroa.0.0.i20, ptr %.sroa.31.0.i19)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #38
          to label %bb.an unwind label %.loopexit.split-lp

bb.s:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %bb.ak

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %bb.r, %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.t:                                             ; preds = %bb.q
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.al) #35
  br label %bb.ak

bb.u:                                             ; preds = %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit
  %.not.i = icmp eq ptr %i.x, %i.w
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = load i64, ptr %5, align 8, !tbaa !160
  store i64 %i.ar, ptr %i.x, align 8, !tbaa !160
  store ptr null, ptr %5, align 8, !tbaa !160
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.as, ptr %i.t, align 8, !tbaa !165
  br label %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit

bb.w:                                             ; preds = %bb.u
  %i.at = ptrtoint ptr %i.w to i64                ; 3 uses
  %i.au = ptrtoint ptr %i.v to i64                ; 3 uses
  %i.av = sub i64 %i.at, %i.au                    ; 4 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %bb.x, label %_ZNKSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
          to label %.noexc44 unwind label %.loopexit.split-lp

.noexc44:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.w
  %i.ax = ashr exact i64 %i.av, 3                 ; 2 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i, %i.ax ; 2 uses
  %i.az = call i64 @llvm.umin.i64(i64 %i.ay, i64 1152921504606846975) ; 2 uses
  %.not.i.i42.a = icmp ne i64 %i.ay, 0
  call void @llvm.assume(i1 %.not.i.i42.a)
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #37
          to label %.noexc45 unwind label %.loopexit ; 11 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.av
  %i.bd = load i64, ptr %5, align 8, !tbaa !160
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !160
  store ptr null, ptr %5, align 8, !tbaa !160
  %.not10.i.i.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc45
  %i.be = add i64 %i.at, -8
  %i.bf = sub i64 %i.be, %i.au                    ; 2 uses
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bf, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader77, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bb, i64 8
  %i.bi = add i64 %i.at, -8
  %i.bj = sub i64 %i.bi, %i.au
  %i.bk = and i64 %i.bj, -8                       ; 2 uses
  %scevgep71.a = getelementptr i8, ptr %scevgep, i64 %i.bk
  %scevgep72.a = getelementptr i8, ptr %i.v, i64 8
  %scevgep73 = getelementptr i8, ptr %scevgep72.a, i64 %i.bk
  %bound0 = icmp ult ptr %i.bb, %scevgep73
  %bound1 = icmp ult ptr %i.v, %scevgep71.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader77, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bh, 4611686018427387900     ; 3 uses
  %i.bl = shl i64 %n.vec, 3                       ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bb, i64 %i.bl  ; 2 uses
  %i.bn = getelementptr i8, ptr %i.v, i64 %i.bl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bo ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.v, i64 %i.bo ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.bp = getelementptr i8, ptr %next.gep74, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep74, align 8, !tbaa !160, !alias.scope !173, !noalias !168
  %wide.load75 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !160, !alias.scope !173, !noalias !168
  %i.bq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !160, !alias.scope !176, !noalias !173
  store <2 x i64> %wide.load75, ptr %i.bq, align 8, !tbaa !160, !alias.scope !176, !noalias !173
  %i.br = getelementptr i8, ptr %next.gep74, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep74, align 8, !tbaa !160, !alias.scope !173, !noalias !168
  store <2 x ptr> splat (ptr null), ptr %i.br, align 8, !tbaa !160, !alias.scope !173, !noalias !168
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader77

.lr.ph.i.i.i.i.preheader77:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i.i.i.i.preheader ], [ %i.bm, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader77, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader77 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader77 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.bt = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !160, !alias.scope !171, !noalias !168
  store i64 %i.bt, ptr %.012.i.i.i.i, align 8, !tbaa !160, !alias.scope !168, !noalias !171
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !160, !alias.scope !171, !noalias !168
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i43 = icmp eq ptr %i.bu, %i.w
  br i1 %.not.i.i.i.i43, label %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !181

_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc45
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bb, %.noexc45 ], [ %i.bm, %middle.block ], [ %i.bv, %.lr.ph.i.i.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.v, null
  br i1 %.not.i23.i, label %.noexc, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.av) #36
  br label %.noexc

.noexc:                                           ; preds = %bb.y, %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.bb, ptr %8, align 8, !tbaa !182
  store ptr %i.bw, ptr %i.t, align 8, !tbaa !165
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.az ; 2 uses
  store ptr %i.bx, ptr %i.u, align 8, !tbaa !183
  br label %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %.noexc, %bb.v
  %i.by = phi ptr [ %i.bb, %.noexc ], [ %i.v, %bb.v ]
  %i.bz = phi ptr [ %i.bx, %.noexc ], [ %i.w, %bb.v ]
  %i.ca = phi ptr [ %i.bw, %.noexc ], [ %i.as, %bb.v ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.046.050, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.cb, %i.o
  br i1 %.not, label %._crit_edge, label %bb.j

bb.z:                                             ; preds = %._crit_edge
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cd, ptr %0, align 8, !tbaa !91
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !144 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 5 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !92 ; 3 uses
  %i.cj = icmp ult i64 %i.ci, 16
  call void @llvm.assume(i1 %i.cj)
  %i.ck = add nuw nsw i64 %i.ci, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cd, ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i64 %i.ck, i1 false)
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.z
  store ptr %i.ce, ptr %0, align 8, !tbaa !144
  %i.cl = load i64, ptr %i.cf, align 8, !tbaa !74
  store i64 %i.cl, ptr %i.cd, align 8, !tbaa !74
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !92
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cm = phi i64 [ %i.ci, %bb.aa ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cm, ptr %i.co, align 8, !tbaa !92
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !144
  store i64 0, ptr %i.cn, align 8, !tbaa !92
  store i8 0, ptr %i.cf, align 8, !tbaa !74
  %i.cp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !184 ; 8 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i30, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook3jsi7RuntimeEEEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 4 uses
  %i.cs = load atomic i64, ptr %i.cr acquire, align 8 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 4294967297
  %i.cu = trunc i64 %i.cs to i32                  ; 2 uses
  br i1 %i.ct, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.cr, align 8, !tbaa !187
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.cv, align 4, !tbaa !189
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !94
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #35, !inline_history !190
  %i.cz = load ptr, ptr %i.cq, align 8, !tbaa !94
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #35, !inline_history !190
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook3jsi7RuntimeEEEED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.dc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i.i.i = icmp eq i8 %i.dc, 0
  br i1 %.not.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dd = add nsw i32 %i.cu, -1
  store i32 %i.dd, ptr %i.cr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.de = atomicrmw volatile add ptr %i.cr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i = phi i32 [ %i.cu, %bb.ae ], [ %i.de, %bb.af ]
  %i.df = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.df, label %bb.ag, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook3jsi7RuntimeEEEED2Ev.exit, !prof !125

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #35
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook3jsi7RuntimeEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook3jsi7RuntimeEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  %i.dg = load ptr, ptr %8, align 8, !tbaa !182   ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !165 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.dg, %i.di
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook3jsi7RuntimeEEEED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dn, %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.dg, %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook3jsi7RuntimeEEEED2Ev.exit ] ; 2 uses
  %i.dj = load ptr, ptr %.05.i.i.i, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i.i.i31 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i.i31, label %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !94
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dj) #35, !inline_history !191
  br label %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dn, %i.di
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !192

_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i.i, %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook3jsi7RuntimeEEEED2Ev.exit
  %.not.i.i1.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !183
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dg to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.ds) #36
  br label %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %i.dt = load ptr, ptr %7, align 8, !tbaa !160   ; 3 uses
  %.not.i32 = icmp eq ptr %i.dt, null
  br i1 %.not.i32, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !94
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dt) #35, !inline_history !193
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.dx = load i8, ptr %i.c, align 8
  %i.dy = trunc i8 %i.dx to i1
  br i1 %i.dy, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit35, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.dz = load ptr, ptr %5, align 8, !tbaa !160   ; 3 uses
  %.not.i.i33 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i33, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit35, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i34

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i34: ; preds = %bb.ai
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !94
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dz) #35, !inline_history !194
  br label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit35

_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit35: ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, %bb.ai, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  ret void

bb.aj:                                            ; preds = %._crit_edge
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.s, %bb.t, %bb.aj
  %.pn15.pn = phi { ptr, i32 } [ %i.ed, %bb.aj ], [ %i.ap, %bb.s ], [ %i.aq, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %i.ee = load ptr, ptr %7, align 8, !tbaa !160   ; 3 uses
  %.not.i36 = icmp eq ptr %i.ee, null
  br i1 %.not.i36, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit38, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i37

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i37: ; preds = %bb.ak
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !94
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ee) #35, !inline_history !193
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit38

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit38: ; preds = %bb.ak, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit38, %bb.h, %bb.g
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn15.pn, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit38 ], [ %i.j, %bb.g ], [ %i.k, %bb.h ]
  %i.ei = load i8, ptr %i.c, align 8
  %i.ej = trunc i8 %i.ei to i1
  br i1 %i.ej, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit41, label %bb.am

bb.am:                                            ; preds = %bb.al
end_hunk_1
begin_hunk_2_@_ZN8facebook6hermes7tracing16TraceInterpreter20execFromMemoryBufferB5cxx11EOSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEOSt6vectorIS8_SaIS8_EERKNS2_14ExecuteOptionsERKSt8functionIFSt10shared_ptrINS_3jsi7RuntimeEERKN6hermes2vm13RuntimeConfigEEE:bb.a
_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit: ; preds = %bb.ac
  %i.dk = icmp sgt i32 %.02599, -1
  br i1 %i.dk, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.ae:                                            ; preds = %_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit
  %i.dl = zext nneg i32 %.02599 to i64
  %i.dm = load ptr, ptr %11, align 8, !tbaa !201
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.dm, i64 %i.dl
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.aj

bb.af:                                            ; preds = %bb.j
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit:                                        ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %bb.bt

bb.ah:                                            ; preds = %bb.z
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ai:                                            ; preds = %_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEEC2ERKSE_.exit
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %15) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.aj:                                            ; preds = %bb.ae
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = load ptr, ptr %14, align 8, !tbaa !144  ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.bf
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aj
  %i.du = load i64, ptr %i.bf, align 8, !tbaa !74
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.ae, %_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit
  %i.dw = load ptr, ptr %14, align 8, !tbaa !144  ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.bf
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.dy = load i64, ptr %i.bf, align 8, !tbaa !74
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  %i.ea = add nsw i32 %.02599, 1                  ; 2 uses
  %i.eb = load i32, ptr %i.o, align 8, !tbaa !200
  %i.ec = icmp slt i32 %i.ea, %i.eb
  br i1 %i.ec, label %bb.j, label %._crit_edge, !llvm.loop !224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ai, %bb.ah
  %.pn38 = phi { ptr, i32 } [ %i.dp, %bb.ah ], [ %i.dq, %bb.ai ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dr, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  br label %bb.bt

_ZNK6hermes2vm13RuntimeConfig11getGCConfigEv.exit: ; preds = %._crit_edge
  %i.ed = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !225, !range !67, !noundef !68
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.ak, label %._crit_edge.i.i

bb.ak:                                            ; preds = %_ZNK6hermes2vm13RuntimeConfig11getGCConfigEv.exit
  %.val = load ptr, ptr %11, align 8, !tbaa !162  ; 2 uses
  %.val46 = load ptr, ptr %i.ap, align 8, !tbaa !162 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.eg = icmp eq ptr %.val, %.val46
  br i1 %i.eg, label %bb.al, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ak
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 28
  br label %._crit_edge.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.ek = call ptr @__cxa_allocate_exception(i64 16) #35, !noalias !226 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull @.str.27)
          to label %bb.am unwind label %bb.an, !noalias !226

bb.am:                                            ; preds = %bb.al
  invoke void @__cxa_throw(ptr nonnull %i.ek, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #38
          to label %.noexc68 unwind label %bb.br

.noexc68:                                         ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ek) #35, !noalias !226
  br label %.body

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.em = ptrtoint ptr %.sroa.12.1.i to i64
  %i.en = ptrtoint ptr %.sroa.09.1.i to i64       ; 3 uses
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = ashr exact i64 %i.eo, 4                 ; 2 uses
  %i.eq = add nsw i64 %i.ep, 8589934591
  %i.er = lshr i64 %i.eq, 1
  %i.es = and i64 %i.er, 4294967295
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %.sroa.09.1.i, i64 %i.es ; 3 uses
  %i.eu = icmp eq ptr %.sroa.09.1.i, %.sroa.12.1.i
  %i.ev = icmp eq ptr %i.et, %.sroa.12.1.i
  %or.cond.i.i = select i1 %i.eu, i1 true, i1 %i.ev
  br i1 %or.cond.i.i, label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEvT_SH_SH_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ew = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ep, i1 true)
  %i.ex = shl nuw nsw i64 %i.ew, 1
  %i.ey = xor i64 %i.ex, 126
  invoke void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEElNS0_5__ops15_Iter_less_iterEEvT_SJ_SJ_T0_T1_(ptr %.sroa.09.1.i, ptr %i.et, ptr nonnull %.sroa.12.1.i, i64 noundef %i.ey)
          to label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEvT_SH_SH_.exit.i unwind label %bb.bc, !noalias !226

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.preheader.i
  %.sroa.09.050.i = phi ptr [ null, %.preheader.i ], [ %.sroa.09.1.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 7 uses
  %.sroa.12.049.i = phi ptr [ null, %.preheader.i ], [ %.sroa.12.1.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 9 uses
  %.sroa.17.048.i = phi ptr [ null, %.preheader.i ], [ %.sroa.17.1.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 4 uses
  %.sroa.06.047.i = phi ptr [ %.val, %.preheader.i ], [ %i.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35, !noalias !226
  store ptr %i.eh, ptr %5, align 8, !tbaa !91, !noalias !226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.eh, ptr noundef nonnull align 1 dereferenceable(12) @.str.28, i64 12, i1 false), !noalias !226
  store i64 12, ptr %i.ei, align 8, !tbaa !92, !noalias !226
  store i8 0, ptr %i.ej, align 4, !tbaa !74, !noalias !226
  %i.ez = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.047.i, ptr noundef nonnull %i.eh, i64 noundef 0, i64 noundef 12) #35, !noalias !226 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, -1
  br i1 %i.fa, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %._crit_edge.i.i.i
  %i.fb = call ptr @__cxa_allocate_exception(i64 16) #35, !noalias !226 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull @.str.29)
          to label %bb.ar unwind label %bb.as, !noalias !226

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.fb, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #38
          to label %bb.bf unwind label %bb.at, !noalias !226

bb.as:                                            ; preds = %bb.aq
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fb) #35, !noalias !226
  br label %bb.az

bb.at:                                            ; preds = %bb.ar
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.au:                                            ; preds = %._crit_edge.i.i.i
  %i.fe = load i64, ptr %i.ei, align 8, !tbaa !92, !noalias !226
  %i.ff = load ptr, ptr %.sroa.06.047.i, align 8, !tbaa !144, !noalias !226
  %i.fg = getelementptr i8, ptr %i.ff, i64 %i.ez
  %i.fh = getelementptr i8, ptr %i.fg, i64 %i.fe
  %i.fi = call double @strtod(ptr noundef nonnull captures(none) %i.fh, ptr noundef null) #35, !noalias !226, !inline_history !229 ; 2 uses
  %.not.i.i64 = icmp eq ptr %.sroa.12.049.i, %.sroa.17.048.i
  br i1 %.not.i.i64, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store double %i.fi, ptr %.sroa.12.049.i, align 8, !tbaa !230, !noalias !226
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.12.049.i, i64 8
  store ptr %.sroa.06.047.i, ptr %i.fj, align 8, !tbaa !232, !noalias !226
  br label %_ZNSt6vectorISt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE12emplace_backIJRdS8_EEERS9_DpOT_.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.fk = ptrtoint ptr %.sroa.12.049.i to i64
  %i.fl = ptrtoint ptr %.sroa.09.050.i to i64
  %i.fm = sub i64 %i.fk, %i.fl                    ; 4 uses
  %i.fn = icmp eq i64 %i.fm, 9223372036854775792
  br i1 %i.fn, label %bb.ax, label %_ZNKSt6vectorISt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
          to label %.noexc28.i unwind label %.loopexit.split-lp.i, !noalias !226

.noexc28.i:                                       ; preds = %bb.ax
  unreachable

_ZNKSt6vectorISt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aw
  %i.fo = ashr exact i64 %i.fm, 4                 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fo, i64 1)
  %i.fp = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fo ; 2 uses
  %i.fq = call i64 @llvm.umin.i64(i64 %i.fp, i64 576460752303423487) ; 2 uses
  %.not.i.i.i.i66 = icmp ne i64 %i.fp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i66)
  %i.fr = shl nuw nsw i64 %i.fq, 4
  %i.fs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #37
          to label %.noexc29.i unwind label %.loopexit.i, !noalias !226 ; 5 uses

.noexc29.i:                                       ; preds = %_ZNKSt6vectorISt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fm ; 2 uses
  store double %i.fi, ptr %i.ft, align 8, !tbaa !230, !noalias !226
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr %.sroa.06.047.i, ptr %i.fu, align 8, !tbaa !232, !noalias !226
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.09.050.i, %.sroa.12.049.i
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit33.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc29.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i.i ], [ %i.fs, %.noexc29.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.09.050.i, %.noexc29.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !233, !noalias !226
  %i.fv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i67 = icmp eq ptr %i.fv, %.sroa.12.049.i
  br i1 %.not.i.i.i.i.i.i67, label %_ZNSt6vectorISt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit33.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !237

_ZNSt6vectorISt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit33.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc29.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.fs, %.noexc29.i ], [ %i.fw, %.lr.ph.i.i.i.i.i.i ]
  %.not.i34.i.i.i = icmp eq ptr %.sroa.09.050.i, null
  br i1 %.not.i34.i.i.i, label %_ZNSt6vectorISt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE17_M_realloc_insertIJRdS8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorISt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit33.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.09.050.i, i64 noundef %i.fm) #36, !noalias !226
  br label %_ZNSt6vectorISt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE17_M_realloc_insertIJRdS8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE17_M_realloc_insertIJRdS8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i: ; preds = %bb.ay, %_ZNSt6vectorISt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit33.i.i.i
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %i.fq
  br label %_ZNSt6vectorISt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE12emplace_backIJRdS8_EEERS9_DpOT_.exit.i

_ZNSt6vectorISt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE12emplace_backIJRdS8_EEERS9_DpOT_.exit.i: ; preds = %_ZNSt6vectorISt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE17_M_realloc_insertIJRdS8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i, %bb.av
  %.sroa.17.1.i = phi ptr [ %i.fx, %_ZNSt6vectorISt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE17_M_realloc_insertIJRdS8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ], [ %.sroa.17.048.i, %bb.av ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.pn.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE17_M_realloc_insertIJRdS8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ], [ %.sroa.12.049.i, %bb.av ]
  %.sroa.09.1.i = phi ptr [ %i.fs, %_ZNSt6vectorISt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE17_M_realloc_insertIJRdS8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i ], [ %.sroa.09.050.i, %bb.av ] ; 8 uses
  %.sroa.12.1.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn.i, i64 16 ; 5 uses
  %i.fy = load ptr, ptr %5, align 8, !tbaa !144, !noalias !226 ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.eh
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE12emplace_backIJRdS8_EEERS9_DpOT_.exit.i
  %i.ga = load i64, ptr %i.eh, align 8, !tbaa !74, !noalias !226
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #36, !noalias !226
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE12emplace_backIJRdS8_EEERS9_DpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35, !noalias !226
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.06.047.i, i64 32 ; 2 uses
  %.not.i65 = icmp eq ptr %i.gc, %.val46
  br i1 %.not.i65, label %bb.ao, label %._crit_edge.i.i.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorISt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp.i:                             ; preds = %bb.ax
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.at, %bb.as
  %.sroa.17.04854.i = phi ptr [ %.sroa.17.048.i, %bb.at ], [ %.sroa.17.048.i, %bb.as ], [ %.sroa.12.049.i, %.loopexit.i ], [ %.sroa.12.049.i, %.loopexit.split-lp.i ]
  %.pn21.i = phi { ptr, i32 } [ %i.fd, %bb.at ], [ %i.fc, %bb.as ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.gd = load ptr, ptr %5, align 8, !tbaa !144, !noalias !226 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.eh
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i: ; preds = %bb.az
  %i.gf = load i64, ptr %i.eh, align 8, !tbaa !74, !noalias !226
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #36, !noalias !226
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35, !noalias !226
  br label %bb.bd

_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEvT_SH_SH_.exit.i: ; preds = %bb.ap, %bb.ao
  %i.gh = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !232, !noalias !226 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.gj, ptr %16, align 8, !tbaa !91, !alias.scope !226
  %i.gk = load ptr, ptr %i.gi, align 8, !tbaa !144 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !92 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35, !noalias !226
  store i64 %i.gm, ptr %i.a, align 8, !tbaa !107, !noalias !226
  %i.gn = icmp ugt i64 %i.gm, 15
  br i1 %i.gn, label %.noexc.i34.i, label %._crit_edge.i.i33.i

.noexc.i34.i:                                     ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEvT_SH_SH_.exit.i
  %i.go = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc35.i unwind label %.thread.i ; 2 uses

.noexc35.i:                                       ; preds = %.noexc.i34.i
  store ptr %i.go, ptr %16, align 8, !tbaa !144, !alias.scope !226
  %i.gp = load i64, ptr %i.a, align 8, !tbaa !107, !noalias !226
  store i64 %i.gp, ptr %i.gj, align 8, !tbaa !74, !alias.scope !226
  br label %._crit_edge.i.i33.i

._crit_edge.i.i33.i:                              ; preds = %.noexc35.i, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEvT_SH_SH_.exit.i
  %i.gq = phi ptr [ %i.go, %.noexc35.i ], [ %i.gj, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEvT_SH_SH_.exit.i ] ; 2 uses
  switch i64 %i.gm, label %bb.bb [
    i64 1, label %bb.ba
    i64 0, label %_ZN8facebook6hermes7tracing12_GLOBAL__N_112mergeGCStatsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE.exit
  ]

bb.ba:                                            ; preds = %._crit_edge.i.i33.i
  %i.gr = load i8, ptr %i.gk, align 1, !tbaa !74
  store i8 %i.gr, ptr %i.gq, align 1, !tbaa !74
  br label %_ZN8facebook6hermes7tracing12_GLOBAL__N_112mergeGCStatsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE.exit

bb.bb:                                            ; preds = %._crit_edge.i.i33.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gq, ptr align 1 %i.gk, i64 %i.gm, i1 false)
  br label %_ZN8facebook6hermes7tracing12_GLOBAL__N_112mergeGCStatsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE.exit

bb.bc:                                            ; preds = %bb.ap
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.thread.i:                                        ; preds = %.noexc.i34.i
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i
  %.sroa.17.038.i = phi ptr [ %.sroa.17.04854.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i ], [ %.sroa.17.1.i, %bb.bc ]
  %.sroa.09.027.i = phi ptr [ %.sroa.09.050.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i ], [ %.sroa.09.1.i, %bb.bc ] ; 3 uses
  %.pn21.pn.pn.i = phi { ptr, i32 } [ %.pn21.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i ], [ %i.gs, %bb.bc ] ; 2 uses
  %.not.i.i.i37.i = icmp eq ptr %.sroa.09.027.i, null
  br i1 %.not.i.i.i37.i, label %.body, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.bd
  %.pre.i = ptrtoint ptr %.sroa.09.027.i to i64
  br label %bb.be

bb.be:                                            ; preds = %._crit_edge.i, %.thread.i
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.en, %.thread.i ]
  %.sroa.17.037.i = phi ptr [ %.sroa.17.038.i, %._crit_edge.i ], [ %.sroa.17.1.i, %.thread.i ]
  %.sroa.09.030.i = phi ptr [ %.sroa.09.027.i, %._crit_edge.i ], [ %.sroa.09.1.i, %.thread.i ]
  %.pn21.pn.pn22.i = phi { ptr, i32 } [ %.pn21.pn.pn.i, %._crit_edge.i ], [ %i.gt, %.thread.i ]
  %i.gu = ptrtoint ptr %.sroa.17.037.i to i64
  %i.gv = sub i64 %i.gu, %.pre-phi.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.09.030.i, i64 noundef %i.gv) #36
  br label %.body

bb.bf:                                            ; preds = %bb.ar
  unreachable

_ZN8facebook6hermes7tracing12_GLOBAL__N_112mergeGCStatsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE.exit: ; preds = %._crit_edge.i.i33.i, %bb.ba, %bb.bb
  %i.gw = load i64, ptr %i.a, align 8, !tbaa !107, !noalias !226 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.gw, ptr %i.gx, align 8, !tbaa !92, !alias.scope !226
  %i.gy = load ptr, ptr %16, align 8, !tbaa !144, !alias.scope !226
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gw
  store i8 0, ptr %i.gz, align 1, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35, !noalias !226
  %i.ha = ptrtoint ptr %.sroa.17.1.i to i64
  %i.hb = sub i64 %i.ha, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.09.1.i, i64 noundef %i.hb) #36
  %.pre = load ptr, ptr %12, align 16, !tbaa !216, !noalias !238
  %.pre111 = load ptr, ptr %16, align 8, !tbaa !144, !noalias !238
  br label %bb.bg

._crit_edge.i.i:                                  ; preds = %_ZNK6hermes2vm13RuntimeConfig11getGCConfigEv.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.hc, ptr %16, align 8, !tbaa !91
  %i.hd = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.hd, align 8, !tbaa !92
  store i8 0, ptr %i.hc, align 8, !tbaa !74
  br label %bb.bg

bb.bg:                                            ; preds = %._crit_edge.i.i, %_ZN8facebook6hermes7tracing12_GLOBAL__N_112mergeGCStatsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE.exit
  %i.he = phi ptr [ %i.hc, %._crit_edge.i.i ], [ %.pre111, %_ZN8facebook6hermes7tracing12_GLOBAL__N_112mergeGCStatsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE.exit ] ; 2 uses
  %i.hf = phi ptr [ %i.bg, %._crit_edge.i.i ], [ %.pre, %_ZN8facebook6hermes7tracing12_GLOBAL__N_112mergeGCStatsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  store ptr %i.hf, ptr %0, align 8, !tbaa !216, !alias.scope !238
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !184, !noalias !238
  store ptr %i.hi, ptr %i.hg, align 8, !tbaa !184, !alias.scope !238
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.hk, ptr %i.hj, align 8, !tbaa !91, !alias.scope !238
  %i.hl = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  %i.hm = icmp eq ptr %i.he, %i.hl
  br i1 %i.hm, label %bb.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.hn = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !92, !noalias !238 ; 3 uses
  %i.hp = icmp ult i64 %i.ho, 16
  call void @llvm.assume(i1 %i.hp)
  %i.hq = add nuw nsw i64 %i.ho, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hk, ptr noundef nonnull align 8 dereferenceable(1) %i.hl, i64 %i.hq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bg
  store ptr %i.he, ptr %i.hj, align 8, !tbaa !144, !alias.scope !238
  %i.hr = load i64, ptr %i.hl, align 8, !tbaa !74, !noalias !238
  store i64 %i.hr, ptr %i.hk, align 8, !tbaa !74, !alias.scope !238
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.pre.i70 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !92, !noalias !238
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.hs = phi i64 [ %i.ho, %bb.bh ], [ %.pre.i70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ht = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.hs, ptr %i.hu, align 8, !tbaa !92, !alias.scope !238
  store ptr %i.hl, ptr %16, align 8, !tbaa !144, !noalias !238
  store i64 0, ptr %i.ht, align 8, !tbaa !92, !noalias !238
  store i8 0, ptr %i.hl, align 8, !tbaa !74, !noalias !238
  %i.hv = getelementptr inbounds nuw i8, ptr %17, i64 184
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !151 ; 2 uses
  %.not.i.i74 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i74, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.hx = getelementptr inbounds nuw i8, ptr %17, i64 168 ; 2 uses
  %i.hy = invoke noundef zeroext i1 %i.hw(ptr noundef nonnull align 8 dereferenceable(32) %i.hx, ptr noundef nonnull align 8 dereferenceable(32) %i.hx, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.bj ; 0 uses

bb.bj:                                            ; preds = %bb.bi
  %i.hz = landingpad { ptr, i32 }
          catch ptr null
end_hunk_2
begin_hunk_3_@_ZN8facebook6hermes7tracing16TraceInterpreter20execFromMemoryBufferB5cxx11EOSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEOSt6vectorIS8_SaIS8_EERKNS2_14ExecuteOptionsERKSt8functionIFSt10shared_ptrINS_3jsi7RuntimeEERKN6hermes2vm13RuntimeConfigEEE:bb.a
  %.pn = phi { ptr, i32 } [ %.pn21.pn.pn22.i, %bb.be ], [ %i.jj, %bb.br ], [ %i.el, %bb.an ], [ %.pn21.pn.pn.i, %bb.bd ]
  call void @_ZN6hermes2vm8GCConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %17) #35
  br label %bb.bs

bb.bs:                                            ; preds = %.body, %bb.bq
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ji, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  br label %bb.bt

bb.bt:                                            ; preds = %bb.af, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bs
  %.pn38.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bs ], [ %.pn38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %lpad.phi, %bb.ag ], [ %i.do, %bb.af ]
  call void @_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #35
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.i
  %.pn38.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn, %bb.bt ], [ %i.bo, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  call void @_ZN6hermes2vm13RuntimeConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(269) dereferenceable(269) %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.h
  %.pn38.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn, %bb.bu ], [ %i.bn, %bb.h ]
  call void @_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #35
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.g
  %.pn38.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn.pn, %bb.bv ], [ %i.bm, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  call void @_ZNSt11_Tuple_implILm0EJN8facebook6hermes7tracing10SynthTraceEN6hermes2vm13RuntimeConfig7BuilderENS5_8GCConfig7BuilderEEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %7) #35
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit51

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit51: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i50, %bb.f, %bb.bw
  %.pn38.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn.pn.pn, %bb.bw ], [ %i.bh, %bb.f ], [ %i.bh, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i50 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  resume { ptr, i32 } %.pn38.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !182    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !165  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #35, !inline_history !242
  br label %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !192

_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !182
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #36
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing16TraceInterpreter24getSourceHashToBundleMapEOSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS6_EESaIS9_EERKNS1_10SynthTraceERKNS2_14ExecuteOptionsEPbSJ_(ptr dead_on_unwind noalias writable sret(%"class.std::map") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(316) %3, ptr noundef writeonly captures(address_is_null) %4, ptr noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::allocator", align 1    ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector.100", align 8  ; 14 uses
  %.sroa.0 = alloca [20 x i8], align 1            ; 7 uses
  %11 = alloca %"struct.std::array", align 1      ; 5 uses
  %12 = alloca %"struct.std::array", align 1      ; 5 uses
  %13 = alloca %"struct.std::pair.117", align 8   ; 8 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %.loopexit116, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %4, align 1, !tbaa !199
  %i.a = load ptr, ptr %1, align 8, !tbaa !243    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !243  ; 2 uses
  %.not112134 = icmp eq ptr %i.a, %i.c
  br i1 %.not112134, label %.loopexit116, label %.critedge

bb.c:                                             ; preds = %.critedge
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135, i64 8 ; 2 uses
  %.not112 = icmp eq ptr %i.d, %i.c
  br i1 %.not112, label %.loopexit116, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  %.sroa.0105.0135 = phi ptr [ %i.d, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.0105.0135, align 8, !tbaa !160 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  %.not51 = icmp eq i32 %i.i, 1
  br i1 %.not51, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.critedge
  store i8 0, ptr %4, align 1, !tbaa !199
  br label %.loopexit116

.loopexit116:                                     ; preds = %bb.c, %bb.b, %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.j = load ptr, ptr %1, align 8, !tbaa !243    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !243  ; 2 uses
  %.not113141 = icmp eq ptr %i.j, %i.l
  br i1 %.not113141, label %bb.e, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit116
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  store ptr %i.be, ptr %i.m, align 8
  store ptr %i.bc, ptr %i.n, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %.loopexit116
  %i.o = phi ptr [ %i.be, %._crit_edge ], [ null, %.loopexit116 ] ; 4 uses
  %i.p = phi ptr [ %i.bd, %._crit_edge ], [ null, %.loopexit116 ] ; 5 uses
  store ptr %i.p, ptr %10, align 8
  %i.q = invoke noundef ptr @_ZN8facebook6hermes17makeHermesRootAPIEv()
          to label %bb.m unwind label %bb.q       ; 3 uses

bb.f:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.r = phi ptr [ null, %.lr.ph ], [ %i.bc, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit ] ; 8 uses
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.be, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit ] ; 6 uses
  %.sroa.0101.0142 = phi ptr [ %i.j, %.lr.ph ], [ %i.bf, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.t = phi ptr [ null, %.lr.ph ], [ %i.bd, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit ] ; 14 uses
  %i.u = load i64, ptr %.sroa.0101.0142, align 8, !tbaa !160 ; 3 uses
  store ptr null, ptr %.sroa.0101.0142, align 8, !tbaa !160
  %i.v = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #37
          to label %bb.g unwind label %bb.l       ; 6 uses

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVZN8facebook6hermes7tracing12_GLOBAL__N_110bufConvertESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEE17OwnedMemoryBuffer, i64 16), ptr %i.v, align 8, !tbaa !94, !noalias !244
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.u, ptr %i.w, align 8, !tbaa !160, !noalias !244
  %.not.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = ptrtoint ptr %i.v to i64
  store i64 %i.x, ptr %i.s, align 8, !tbaa !249
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.y = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.z = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  store ptr %i.s, ptr %i.m, align 8
  store ptr %i.r, ptr %i.n, align 8
  store ptr %i.t, ptr %10, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
          to label %.noexc85 unwind label %.thread.loopexit.split-lp

.noexc85:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.ac = ashr exact i64 %i.aa, 3                 ; 2 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i, %i.ac ; 2 uses
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975) ; 2 uses
  %.not.i.i80 = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %.not.i.i80)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #37
          to label %.noexc86 unwind label %.thread.loopexit ; 10 uses

.noexc86:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aa
  %i.ai = ptrtoint ptr %i.v to i64
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !249
  %.not10.i.i.i.i81 = icmp eq ptr %i.t, %i.r
  br i1 %.not10.i.i.i.i81, label %_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i82.preheader

.lr.ph.i.i.i.i82.preheader:                       ; preds = %.noexc86
  %i.aj = add i64 %i.y, -8
  %i.ak = sub i64 %i.aj, %i.z                     ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i82.preheader322, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i82.preheader
  %scevgep = getelementptr i8, ptr %i.ag, i64 8
  %i.an = add i64 %i.y, -8
  %i.ao = sub i64 %i.an, %i.z
  %i.ap = and i64 %i.ao, -8                       ; 2 uses
  %scevgep306 = getelementptr i8, ptr %scevgep, i64 %i.ap
  %scevgep307 = getelementptr i8, ptr %i.t, i64 8
  %scevgep308 = getelementptr i8, ptr %scevgep307, i64 %i.ap
  %bound0 = icmp ult ptr %i.ag, %scevgep308
  %bound1 = icmp ult ptr %i.t, %scevgep306
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i82.preheader322, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.am, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ag, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.t, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.at ; 2 uses
  %next.gep309 = getelementptr i8, ptr %i.t, i64 %i.at ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.au = getelementptr i8, ptr %next.gep309, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep309, align 8, !tbaa !249, !alias.scope !256, !noalias !251
  %wide.load310 = load <2 x i64>, ptr %i.au, align 8, !tbaa !249, !alias.scope !256, !noalias !251
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !249, !alias.scope !259, !noalias !256
  store <2 x i64> %wide.load310, ptr %i.av, align 8, !tbaa !249, !alias.scope !259, !noalias !256
  %i.aw = getelementptr i8, ptr %next.gep309, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep309, align 8, !tbaa !249, !alias.scope !256, !noalias !251
  store <2 x ptr> splat (ptr null), ptr %i.aw, align 8, !tbaa !249, !alias.scope !256, !noalias !251
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !261

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i82.preheader322

.lr.ph.i.i.i.i82.preheader322:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i82.preheader, %middle.block
  %.012.i.i.i.i83.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i82.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i82.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i82

.lr.ph.i.i.i.i82:                                 ; preds = %.lr.ph.i.i.i.i82.preheader322, %.lr.ph.i.i.i.i82
  %.012.i.i.i.i83 = phi ptr [ %i.ba, %.lr.ph.i.i.i.i82 ], [ %.012.i.i.i.i83.ph, %.lr.ph.i.i.i.i82.preheader322 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i82 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i82.preheader322 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.ay = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !249, !alias.scope !254, !noalias !251
  store i64 %i.ay, ptr %.012.i.i.i.i83, align 8, !tbaa !249, !alias.scope !251, !noalias !254
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !249, !alias.scope !254, !noalias !251
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i83, i64 8 ; 2 uses
  %.not.i.i.i.i84 = icmp eq ptr %i.az, %i.r
  br i1 %.not.i.i.i.i84, label %_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i82, !llvm.loop !262

_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i82, %middle.block, %.noexc86
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ag, %.noexc86 ], [ %i.ar, %middle.block ], [ %i.ba, %.lr.ph.i.i.i.i82 ]
  %.not.i23.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i, label %.noexc, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.aa) #36
  br label %.noexc

.noexc:                                           ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc, %bb.h
  %i.bc = phi ptr [ %i.bb, %.noexc ], [ %i.r, %bb.h ] ; 2 uses
  %.0.lcssa.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i, %.noexc ], [ %i.s, %bb.h ]
  %i.bd = phi ptr [ %i.ag, %.noexc ], [ %i.t, %bb.h ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.pn, i64 8 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0101.0142, i64 8 ; 2 uses
  %.not113 = icmp eq ptr %i.bf, %i.l
  br i1 %.not113, label %._crit_edge, label %bb.f

.thread.loopexit:                                 ; preds = %_ZNKSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.s, ptr %i.m, align 8
  store ptr %i.r, ptr %i.n, align 8
  store ptr %i.t, ptr %10, align 8
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !94
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit.split-lp, %.thread.loopexit
  %i.bg = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVZN8facebook6hermes7tracing12_GLOBAL__N_110bufConvertESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEE17OwnedMemoryBuffer, i64 16), %.thread.loopexit ], [ %.pre, %.thread.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #35, !inline_history !263
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit70

bb.l:                                             ; preds = %bb.f
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.s, ptr %i.m, align 8
  store ptr %i.r, ptr %i.n, align 8
  store ptr %i.t, ptr %10, align 8
  %.not.i68 = icmp eq i64 %i.u, 0
  br i1 %.not.i68, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit70, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i69

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i69: ; preds = %bb.l
  %i.bk = inttoptr i64 %i.u to ptr                ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !94
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bk) #35, !inline_history !193
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit70

bb.m:                                             ; preds = %bb.e
  %.not.i71 = icmp eq ptr %i.q, null
  br i1 %.not.i71, label %_ZN8facebook3jsi13castInterfaceINS_6hermes14IHermesRootAPIENS0_5ICastEEEPT_PT0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = load ptr, ptr %i.q, align 8, !tbaa !94
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = invoke noundef ptr %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(16) @_ZN8facebook6hermes14IHermesRootAPI4uuidE)
          to label %_ZN8facebook3jsi13castInterfaceINS_6hermes14IHermesRootAPIENS0_5ICastEEEPT_PT0_.exit unwind label %bb.q, !inline_history !264

_ZN8facebook3jsi13castInterfaceINS_6hermes14IHermesRootAPIENS0_5ICastEEEPT_PT0_.exit: ; preds = %bb.m, %bb.n
  %.0.i = phi ptr [ null, %bb.m ], [ %i.bq, %bb.n ] ; 4 uses
  %.not52 = icmp eq ptr %5, null
  br i1 %.not52, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %_ZN8facebook3jsi13castInterfaceINS_6hermes14IHermesRootAPIENS0_5ICastEEEPT_PT0_.exit
  store i8 1, ptr %5, align 1, !tbaa !199
  %.not114153 = icmp eq ptr %i.p, %i.o
  br i1 %.not114153, label %.loopexit, label %.lr.ph156.a

bb.p:                                             ; preds = %.critedge61
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.092.0154, i64 8 ; 2 uses
  %.not114 = icmp eq ptr %i.br, %i.o
  br i1 %.not114, label %.loopexit, label %.lr.ph156.a

bb.q:                                             ; preds = %bb.n, %bb.e
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit70

.lr.ph156.a:                                      ; preds = %bb.o, %bb.p
  %.sroa.092.0154 = phi ptr [ %i.br, %bb.p ], [ %i.p, %bb.o ] ; 3 uses
  %i.bt = load ptr, ptr %.sroa.092.0154, align 8, !tbaa !249 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !94
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = invoke noundef ptr %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.bt)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %.lr.ph156.a
  %i.by = load ptr, ptr %.sroa.092.0154, align 8, !tbaa !249 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !94
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = invoke noundef i64 %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cd = load ptr, ptr %.0.i, align 8, !tbaa !94
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = invoke noundef zeroext i1 %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef %i.bx, i64 noundef %i.cc)
          to label %.critedge61 unwind label %bb.u

.critedge61:                                      ; preds = %bb.s
  br i1 %i.cg, label %bb.p, label %bb.t

bb.t:                                             ; preds = %.critedge61
  store i8 0, ptr %5, align 1, !tbaa !199
  br label %.loopexit

bb.u:                                             ; preds = %bb.s, %bb.r, %.lr.ph156.a
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit70

.loopexit:                                        ; preds = %bb.p, %bb.o, %bb.t, %_ZN8facebook3jsi13castInterfaceINS_6hermes14IHermesRootAPIENS0_5ICastEEEPT_PT0_.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store i32 0, ptr %i.ci, align 8, !tbaa !77
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.cj, align 8, !tbaa !76
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.ci, ptr %i.ck, align 8, !tbaa !81
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ci, ptr %i.cl, align 8, !tbaa !82
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.cm, align 8, !tbaa !80
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.not115157 = icmp eq ptr %i.p, %i.o
  br i1 %.not115157, label %._crit_edge161, label %.lr.ph160

.lr.ph160:                                        ; preds = %.loopexit
  %i.co = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %13, i64 32
  br label %bb.v

._crit_edge161:                                   ; preds = %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev.exit, %.loopexit
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 229
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !265, !range !67, !noundef !68
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %_ZN8facebook6hermes7tracing12_GLOBAL__N_118verifyBundlesExistERKSt3mapISt5arrayIhLm20EESt10shared_ptrIKNS_3jsi6BufferEESt4lessIS5_ESaISt4pairIKS5_SA_EEERKNS1_10SynthTraceE.exit, label %bb.av

bb.v:                                             ; preds = %.lr.ph160, %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev.exit
  %.sroa.088.0158 = phi ptr [ %i.p, %.lr.ph160 ], [ %i.ev, %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.0, i8 0, i64 20, i1 false)
  %i.ct = load ptr, ptr %.sroa.088.0158, align 8, !tbaa !249 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !94
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = invoke noundef ptr %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.ct)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.cy = load ptr, ptr %.sroa.088.0158, align 8, !tbaa !249 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !94
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = invoke noundef i64 %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cy)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.dd = load ptr, ptr %.0.i, align 8, !tbaa !94
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = invoke noundef zeroext i1 %i.df(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef %i.cx, i64 noundef %i.dc)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  br i1 %i.dg, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %i.dh = load ptr, ptr %.sroa.088.0158, align 8, !tbaa !249 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !94
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = invoke noundef ptr %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.dh)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.dm = load ptr, ptr %.sroa.088.0158, align 8, !tbaa !249 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !94
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = invoke noundef i64 %i.dp(ptr noundef nonnull align 8 dereferenceable(8) %i.dm)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN6hermes3hbc20BCProviderFromBuffer25getSourceHashFromBytecodeEN4llvh8ArrayRefIhEE(ptr dead_on_unwind nonnull writable sret(%"struct.std::array") align 1 %11, ptr %i.dl, i64 %i.dq)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(20) %11, i64 20, i1 false), !tbaa.struct !266
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %bb.ak

bb.ad:                                            ; preds = %bb.x, %bb.w, %bb.v
  %i.dr = landingpad { ptr, i32 }
          cleanup
end_hunk_3
begin_hunk_4_@_ZN8facebook6hermes7tracing16TraceInterpreter24getSourceHashToBundleMapEOSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS6_EESaIS9_EERKNS1_10SynthTraceERKNS2_14ExecuteOptionsEPbSJ_:bb.a
bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4llvh4SHA14hashENS_8ArrayRefIhEE(ptr dead_on_unwind nonnull writable sret(%"struct.std::array") align 1 %12, ptr %i.dx, i64 %i.ec)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(20) %12, i64 20, i1 false), !tbaa.struct !266
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br label %bb.au

bb.ak:                                            ; preds = %bb.ai, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %13, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.0, i64 20, i1 false), !tbaa.struct !266
  invoke void @_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS3_St14default_deleteIS3_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.088.0158)
          to label %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEEC2IRS1_St10unique_ptrIS7_St14default_deleteIS7_EETnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit unwind label %bb.ar

_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEEC2IRS1_St10unique_ptrIS7_St14default_deleteIS7_EETnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit: ; preds = %bb.ak
  %i.ee = invoke { ptr, i8 } @_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE16_M_insert_uniqueISA_EES2_ISt17_Rb_tree_iteratorISA_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %13)
          to label %_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE6insertEOSC_.exit unwind label %bb.as ; 0 uses

_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE6insertEOSC_.exit: ; preds = %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEEC2IRS1_St10unique_ptrIS7_St14default_deleteIS7_EETnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit
  %i.ef = load ptr, ptr %i.cp, align 8, !tbaa !184 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i, label %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE6insertEOSC_.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 4 uses
  %i.eh = load atomic i64, ptr %i.eg acquire, align 8 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 4294967297
  %i.ej = trunc i64 %i.eh to i32                  ; 2 uses
  br i1 %i.ei, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.eg, align 8, !tbaa !187
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 0, ptr %i.ek, align 4, !tbaa !189
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !94
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #35, !inline_history !267
  %i.eo = load ptr, ptr %i.ef, align 8, !tbaa !94
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #35, !inline_history !267
  br label %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev.exit

bb.an:                                            ; preds = %bb.al
  %i.er = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i.i = icmp eq i8 %i.er, 0
  br i1 %.not.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.es = add nsw i32 %i.ej, -1
  store i32 %i.es, ptr %i.eg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.et = atomicrmw volatile add ptr %i.eg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i = phi i32 [ %i.ej, %bb.ao ], [ %i.et, %bb.ap ]
  %i.eu = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.eu, label %bb.aq, label %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev.exit, !prof !125

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #35
  br label %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev.exit

_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev.exit: ; preds = %_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE6insertEOSC_.exit, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.088.0158, i64 8 ; 2 uses
  %.not115 = icmp eq ptr %i.ev, %i.o
  br i1 %.not115, label %._crit_edge161, label %bb.v

bb.ar:                                            ; preds = %bb.ak
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEEC2IRS1_St10unique_ptrIS7_St14default_deleteIS7_EETnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %13) #35
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.ex, %bb.as ], [ %i.ew, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.aj, %bb.ae, %bb.ad
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.at ], [ %i.ds, %bb.ae ], [ %i.ed, %bb.aj ], [ %i.dr, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %.body

bb.av:                                            ; preds = %._crit_edge161
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load ptr, ptr %i.ey, align 8, !tbaa !268 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val62 = load ptr, ptr %i.ez, align 8, !tbaa !268 ; 2 uses
  %.not53.i = icmp eq ptr %.val, %.val62
  br i1 %.not53.i, label %_ZN8facebook6hermes7tracing12_GLOBAL__N_118verifyBundlesExistERKSt3mapISt5arrayIhLm20EESt10shared_ptrIKNS_3jsi6BufferEESt4lessIS5_ESaISt4pairIKS5_SA_EEERKNS1_10SynthTraceE.exit, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i
  %i.fa = icmp eq ptr %.sroa.013.2.i, %.sroa.1018.2.i
  br i1 %i.fa, label %bb.by, label %bb.bf

.lr.ph.i:                                         ; preds = %bb.av, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i
  %.sroa.013.057.i = phi ptr [ %.sroa.013.2.i, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i ], [ null, %bb.av ] ; 11 uses
  %.sroa.1018.056.i = phi ptr [ %.sroa.1018.2.i, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i ], [ null, %bb.av ] ; 9 uses
  %.sroa.1622.055.i = phi ptr [ %.sroa.1622.2.i, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i ], [ null, %bb.av ] ; 6 uses
  %.sroa.010.054.i = phi ptr [ %i.gp, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i ], [ %.val, %bb.av ] ; 3 uses
  %i.fb = load ptr, ptr %.sroa.010.054.i, align 8, !tbaa !110 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !94
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = invoke noundef i32 %i.fe(ptr noundef nonnull align 8 dereferenceable(16) %i.fb)
          to label %bb.aw unwind label %bb.be

bb.aw:                                            ; preds = %.lr.ph.i
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.ax, label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i

bb.ax:                                            ; preds = %bb.aw
  %i.fh = load ptr, ptr %.sroa.010.054.i, align 8, !tbaa !110 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 48 ; 5 uses
  %i.fj = load ptr, ptr %i.cj, align 8, !tbaa !76 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not10.i.i.i.i, label %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ax, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.fj, %bb.ax ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ci, %bb.ax ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.fl = call noundef i32 @memcmp(ptr noundef nonnull align 1 dereferenceable(20) %i.fk, ptr noundef nonnull align 1 dereferenceable(20) %i.fi, i64 noundef 20) #35
  %i.fm = icmp slt i32 %i.fl, 0                   ; 2 uses
  %.19.i.i.i.i = select i1 %i.fm, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.fm, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i.i78 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i78, label %_ZNKSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !269

_ZNKSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.fn = icmp eq ptr %.19.i.i.i.i, %i.ci
  br i1 %i.fn, label %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i, label %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.i

_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.i: ; preds = %_ZNKSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.fp = call noundef i32 @memcmp(ptr noundef nonnull align 1 dereferenceable(20) %i.fi, ptr noundef nonnull align 1 dereferenceable(20) %i.fo, i64 noundef 20) #35
  %i.fq = icmp slt i32 %i.fp, 0
  br i1 %i.fq, label %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i, label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i

_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i: ; preds = %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.i, %_ZNKSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, %bb.ax
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  %i.fr = load <16 x i8>, ptr %i.fi, align 1
  %.fr = freeze <16 x i8> %i.fr
  %i.fs = icmp eq <16 x i8> %.fr, zeroinitializer ; 2 uses
  %i.ft = load <4 x i8>, ptr %.sroa.17.0..sroa_idx.i, align 1
  %.fr312 = freeze <4 x i8> %i.ft
  %i.fu = icmp eq <4 x i8> %.fr312, zeroinitializer
  %i.fv = shufflevector <16 x i1> %i.fs, <16 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.fv, %i.fu
  %i.fw = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fx = shufflevector <16 x i1> %i.fw, <16 x i1> %i.fs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fy = bitcast <16 x i1> %i.fx to i16
  %i.fz = icmp eq i16 %i.fy, -1
  br i1 %i.fz, label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i
  %.not.i.i = icmp eq ptr %.sroa.1018.056.i, %.sroa.1622.055.i
  br i1 %.not.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.1018.056.i, ptr noundef nonnull align 1 dereferenceable(20) %i.fi, i64 20, i1 false), !tbaa.struct !266
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.1018.056.i, i64 20
  br label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.gb = ptrtoint ptr %.sroa.1018.056.i to i64
  %i.gc = ptrtoint ptr %.sroa.013.057.i to i64
  %i.gd = sub i64 %i.gb, %i.gc                    ; 6 uses
  %i.ge = icmp eq i64 %i.gd, 9223372036854775800
  br i1 %i.ge, label %bb.bb, label %_ZNKSt6vectorISt5arrayIhLm20EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
          to label %.noexc.i unwind label %.loopexit.split-lp35.i

.noexc.i:                                         ; preds = %bb.bb
  unreachable

_ZNKSt6vectorISt5arrayIhLm20EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ba
  %i.gf = sdiv exact i64 %i.gd, 20                ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gf, i64 1)
  %i.gg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gf ; 2 uses
  %i.gh = call i64 @llvm.umin.i64(i64 %i.gg, i64 461168601842738790) ; 2 uses
  %.not.i.i.i40.i = icmp ne i64 %i.gg, 0
  call void @llvm.assume(i1 %.not.i.i.i40.i)
  %i.gi = mul nuw nsw i64 %i.gh, 20
  %i.gj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gi) #37
          to label %.noexc41.i unwind label %.loopexit34.i ; 4 uses

.noexc41.i:                                       ; preds = %_ZNKSt6vectorISt5arrayIhLm20EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 %i.gd ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.gk, ptr noundef nonnull align 1 dereferenceable(20) %i.fi, i64 20, i1 false), !tbaa.struct !266
  %i.gl = icmp sgt i64 %i.gd, 0
  br i1 %i.gl, label %bb.bc, label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.bc:                                            ; preds = %.noexc41.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gj, ptr align 1 %.sroa.013.057.i, i64 %i.gd, i1 false)
  br label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.bc, %.noexc41.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 20
  %.not.i17.i.i.i = icmp eq ptr %.sroa.013.057.i, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.013.057.i, i64 noundef %i.gd) #36
  br label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.bd, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.gn = getelementptr inbounds nuw [20 x i8], ptr %i.gj, i64 %i.gh
  br label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i

bb.be:                                            ; preds = %.lr.ph.i
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit34.i:                                    ; preds = %_ZNKSt6vectorISt5arrayIhLm20EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit36.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit.split-lp35.i:                           ; preds = %bb.bb
  %lpad.loopexit.split-lp37.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i: ; preds = %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.az, %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i, %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.i, %bb.aw
  %.sroa.1622.2.i = phi ptr [ %.sroa.1622.055.i, %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i ], [ %.sroa.1622.055.i, %bb.aw ], [ %.sroa.1622.055.i, %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.i ], [ %i.gn, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.1622.055.i, %bb.az ] ; 3 uses
  %.sroa.1018.2.i = phi ptr [ %.sroa.1018.056.i, %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i ], [ %.sroa.1018.056.i, %bb.aw ], [ %.sroa.1018.056.i, %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.i ], [ %i.gm, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ga, %bb.az ] ; 6 uses
  %.sroa.013.2.i = phi ptr [ %.sroa.013.057.i, %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i ], [ %.sroa.013.057.i, %bb.aw ], [ %.sroa.013.057.i, %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.i ], [ %i.gj, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.013.057.i, %bb.az ] ; 6 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.010.054.i, i64 8 ; 2 uses
  %.not.i77 = icmp eq ptr %i.gp, %.val62
  br i1 %.not.i77, label %._crit_edge.i, label %.lr.ph.i

bb.bf:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel.i unwind label %bb.bh

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel.i: ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  invoke void @_ZN6hermes12hashAsStringB5cxx11ERKSt5arrayIhLm20EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.013.2.i)
          to label %bb.bg unwind label %.loopexit.split-lp82.i

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel.i
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !92 ; 2 uses
  %i.gu = load i64, ptr %i.gq, align 8, !tbaa !92
  %i.gv = sub i64 4611686018427387903, %i.gu
  %i.gw = icmp ult i64 %i.gv, %i.gt
  br i1 %i.gw, label %.loopexit85.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel.i: ; preds = %bb.bg
  %i.gx = load ptr, ptr %8, align 8, !tbaa !144
  %i.gy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.gx, i64 noundef %i.gt)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel.i unwind label %.loopexit29.loopexit.split-lp.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel.i
  %i.gz = load ptr, ptr %8, align 8, !tbaa !144   ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.gs
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel.i
  %i.hb = load i64, ptr %i.gs, align 8, !tbaa !74
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.013.2.i, i64 20 ; 2 uses
  %.not26.peel.i = icmp eq ptr %i.hd, %.sroa.1018.2.i
  br i1 %.not26.peel.i, label %._crit_edge65.i, label %.peel.next.i

._crit_edge65.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.i
  %i.he = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.24)
          to label %bb.bj unwind label %bb.bl     ; 0 uses

bb.bh:                                            ; preds = %bb.bf
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i

.peel.next.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.sroa.05.061.i = phi ptr [ %i.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.hd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.i ] ; 2 uses
  %i.hg = load i64, ptr %i.gq, align 8, !tbaa !92
  %i.hh = and i64 %i.hg, -2
  %i.hi = icmp eq i64 %i.hh, 4611686018427387902
  br i1 %i.hi, label %.loopexit78.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

.loopexit78.i:                                    ; preds = %.peel.next.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #38
          to label %.noexc42.i unwind label %.loopexit.split-lp.i

.noexc42.i:                                       ; preds = %.loopexit78.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %.peel.next.i
  %i.hj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i unwind label %.loopexit28.i ; 0 uses

.loopexit28.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %lpad.loopexit79.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit.split-lp.i:                             ; preds = %.loopexit78.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  invoke void @_ZN6hermes12hashAsStringB5cxx11ERKSt5arrayIhLm20EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.05.061.i)
          to label %bb.bi unwind label %.loopexit81.i

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  %i.hk = load i64, ptr %i.gr, align 8, !tbaa !92 ; 2 uses
  %i.hl = load i64, ptr %i.gq, align 8, !tbaa !92
  %i.hm = sub i64 4611686018427387903, %i.hl
  %i.hn = icmp ult i64 %i.hm, %i.hk
  br i1 %i.hn, label %.loopexit85.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

.loopexit85.i:                                    ; preds = %bb.bi, %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #38
          to label %.noexc44.i unwind label %.loopexit.split-lp30.i

.noexc44.i:                                       ; preds = %.loopexit85.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i: ; preds = %bb.bi
  %i.ho = load ptr, ptr %8, align 8, !tbaa !144
  %i.hp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.ho, i64 noundef %i.hk)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i unwind label %.loopexit29.loopexit.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %i.hq = load ptr, ptr %8, align 8, !tbaa !144   ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.gs
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.hs = load i64, ptr %i.gs, align 8, !tbaa !74
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.05.061.i, i64 20 ; 2 uses
  %.not26.i = icmp eq ptr %i.hu, %.sroa.1018.2.i
  br i1 %.not26.i, label %._crit_edge65.i, label %.peel.next.i, !llvm.loop !270

.loopexit81.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i

.loopexit.split-lp82.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel.i
  %lpad.loopexit.split-lp83.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i

.loopexit29.loopexit.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %lpad.loopexit86.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit29.i

.loopexit29.loopexit.split-lp.i:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel.i
  %lpad.loopexit.split-lp87.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit29.i

.loopexit.split-lp30.i:                           ; preds = %.loopexit85.i
  %lpad.loopexit.split-lp32.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit29.i

.loopexit29.i:                                    ; preds = %.loopexit.split-lp30.i, %.loopexit29.loopexit.split-lp.i, %.loopexit29.loopexit.i
  %lpad.phi33.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp32.i, %.loopexit.split-lp30.i ], [ %lpad.loopexit86.i, %.loopexit29.loopexit.i ], [ %lpad.loopexit.split-lp87.i, %.loopexit29.loopexit.split-lp.i ] ; 2 uses
  %i.hv = load ptr, ptr %8, align 8, !tbaa !144   ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.gs
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i: ; preds = %.loopexit29.i
  %i.hx = load i64, ptr %i.gs, align 8, !tbaa !74
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i: ; preds = %.loopexit29.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i, %.loopexit.split-lp82.i, %.loopexit81.i
  %.pn32.i = phi { ptr, i32 } [ %lpad.phi33.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i ], [ %lpad.loopexit.split-lp83.i, %.loopexit.split-lp82.i ], [ %lpad.loopexit.i, %.loopexit81.i ], [ %lpad.phi33.i, %.loopexit29.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %bb.bx

bb.bj:                                            ; preds = %._crit_edge65.i
  %i.hz = load i64, ptr %i.cm, align 8, !tbaa !80
  %i.ia = icmp eq i64 %i.hz, 0
  br i1 %i.ia, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.ib = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.25)
          to label %.loopexit.i unwind label %bb.bl ; 0 uses

bb.bl:                                            ; preds = %bb.bv, %bb.bk, %._crit_edge65.i
end_hunk_4
begin_hunk_5_@_ZZN8facebook6hermes7tracing16TraceInterpreter16createHostObjectEmEN14FakeHostObject3setERNS_3jsi7RuntimeERKNS4_10PropNameIDERKNS4_5ValueE:bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.ao = load ptr, ptr %5, align 8, !tbaa !96    ; 3 uses
  %.not.i22 = icmp eq ptr %i.ao, null
  br i1 %.not.i22, label %_ZN8facebook3jsi7PointerD2Ev.exit23, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !94
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.ao) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit23

_ZN8facebook3jsi7PointerD2Ev.exit23:              ; preds = %bb.l, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.am, %bb.j ], [ %i.an, %bb.k ], [ %i.an, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %bb.p

bb.m:                                             ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.o

bb.n:                                             ; preds = %bb.g, %bb.f
  %i.as = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #35
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn17 = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.ar, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN8facebook3jsi7PointerD2Ev.exit23, %bb.i
  %.pn19 = phi { ptr, i32 } [ %i.al, %bb.i ], [ %.pn17, %bb.o ], [ %.pn, %_ZN8facebook3jsi7PointerD2Ev.exit23 ] ; 3 uses
  %.214 = extractvalue { ptr, i32 } %.pn19, 1
  %i.at = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #35
  %i.au = icmp eq i32 %.214, %i.at
  br i1 %i.au, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %.2 = extractvalue { ptr, i32 } %.pn19, 0
  %i.av = call ptr @__cxa_begin_catch(ptr %.2) #35
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !1121, !nonnull !68, !align !453
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter16crashOnExceptionERKSt9exceptionN6hermes8OptValueImEE(ptr noundef nonnull align 8 dereferenceable(648) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.av, i64 0, i8 0) #38
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.u unwind label %bb.v

bb.t:                                             ; preds = %bb.h, %bb.a
  ret void

bb.u:                                             ; preds = %bb.s, %bb.p
  %.merged = phi { ptr, i32 } [ %.pn19, %bb.p ], [ %i.ax, %bb.s ]
  resume { ptr, i32 } %.merged

bb.v:                                             ; preds = %bb.s
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #34
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZZN8facebook6hermes7tracing16TraceInterpreter16createHostObjectEmEN14FakeHostObject16getPropertyNamesERNS_3jsi7RuntimeE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.301") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nonnull readnone align 8 captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1121, !nonnull !68, !align !453
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv(ptr noundef nonnull align 8 dereferenceable(648) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !1121, !nonnull !68, !align !453 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !482, !nonnull !68, !align !453
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  %i.h = load i64, ptr %i.g, align 8, !tbaa !73
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !106
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %i.h
  %i.k = getelementptr i8, ptr %i.j, i64 -8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !110  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !879  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !879  ; 2 uses
  %.not33 = icmp eq ptr %i.n, %i.p
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  br label %bb.o

bb.d:                                             ; preds = %.lr.ph, %_ZN8facebook3jsi7PointerD2Ev.exit
  %i.t = phi ptr [ null, %.lr.ph ], [ %i.cg, %_ZN8facebook3jsi7PointerD2Ev.exit ] ; 11 uses
  %i.u = phi ptr [ null, %.lr.ph ], [ %i.ch, %_ZN8facebook3jsi7PointerD2Ev.exit ] ; 5 uses
  %i.v = phi ptr [ null, %.lr.ph ], [ %i.ci, %_ZN8facebook3jsi7PointerD2Ev.exit ] ; 3 uses
  %.sroa.026.034 = phi ptr [ %i.n, %.lr.ph ], [ %i.cj, %_ZN8facebook3jsi7PointerD2Ev.exit ] ; 2 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !1121, !nonnull !68, !align !453 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.026.034, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !74   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 560
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !628, !noalias !1141
  %.not.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.not.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 552
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.ab, %bb.e ], [ %.sroa.06.0.i.i.i, %bb.f ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !119, !noalias !1141, !nonnull !68, !noundef !68 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !107, !noalias !1141
  %i.ae = icmp eq i64 %i.y, %i.ad
  br i1 %i.ae, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i, label %bb.f, !llvm.loop !629

bb.g:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 536
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 544
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !90, !noalias !1141 ; 2 uses
  %i.ai = urem i64 %i.y, %i.ah                    ; 2 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !89, !noalias !1141
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !121, !noalias !1141, !nonnull !68, !noundef !68
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !119, !noalias !1141 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !107, !noalias !1141
  %i.ap = icmp eq i64 %i.y, %i.ao
  br i1 %i.ap, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %i.am, %bb.g ]
  %i.aq = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !119, !noalias !1141, !nonnull !68, !noundef !68 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !107, !noalias !1141 ; 2 uses
  %i.at = urem i64 %i.as, %i.ah
  %.not19.i.i.i.i.i = icmp eq i64 %i.at, %i.ai
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.au = icmp eq i64 %i.y, %i.as
  br i1 %i.au, label %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !630

_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.f, %bb.g
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.f ], [ %i.am, %bb.g ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  %i.av = load ptr, ptr %i.w, align 8, !tbaa !452, !noalias !1141, !nonnull !68, !align !453 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !96, !noalias !1141
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !94, !noalias !1141
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !1141
  %i.bb = invoke noundef ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef %i.ax)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter19getPropNameIDForUseEm.exit unwind label %bb.l, !inline_history !631 ; 5 uses

_ZN8facebook6hermes7tracing16TraceInterpreter19getPropNameIDForUseEm.exit: ; preds = %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i
  %.not.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter19getPropNameIDForUseEm.exit
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !96
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.bc, ptr %i.q, align 8, !tbaa !1144
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

bb.i:                                             ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter19getPropNameIDForUseEm.exit
  %i.bd = ptrtoint ptr %i.u to i64                ; 3 uses
  %i.be = ptrtoint ptr %i.t to i64                ; 3 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 4 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775800
  br i1 %i.bg, label %bb.j, label %_ZNKSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
          to label %.noexc19 unwind label %.loopexit.split-lp

.noexc19:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.bh = ashr exact i64 %i.bf, 3                 ; 2 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bi = add nsw i64 %.sroa.speculated.i.i, %i.bh ; 2 uses
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 1152921504606846975) ; 2 uses
  %.not.i.i = icmp ne i64 %i.bi, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #37
          to label %.noexc20 unwind label %.loopexit ; 11 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bf
  store ptr %i.bb, ptr %i.bm, align 8, !tbaa !96
  %.not10.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc20
  %i.bn = add i64 %i.bd, -8
  %i.bo = sub i64 %i.bn, %i.be                    ; 2 uses
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bo, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader65, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bl, i64 8
  %i.br = add i64 %i.bd, -8
  %i.bs = sub i64 %i.br, %i.be
  %i.bt = and i64 %i.bs, -8                       ; 2 uses
  %scevgep59 = getelementptr i8, ptr %scevgep, i64 %i.bt
  %scevgep60 = getelementptr i8, ptr %i.t, i64 8
  %scevgep61 = getelementptr i8, ptr %scevgep60, i64 %i.bt
  %bound0 = icmp ult ptr %i.bl, %scevgep61
  %bound1 = icmp ult ptr %i.t, %scevgep59
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader65, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bq, 4611686018427387900     ; 3 uses
  %i.bu = shl i64 %n.vec, 3                       ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bl, i64 %i.bu  ; 2 uses
  %i.bw = getelementptr i8, ptr %i.t, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bl, i64 %i.bx ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.t, i64 %i.bx ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  %i.by = getelementptr i8, ptr %next.gep62, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep62, align 8, !tbaa !96, !alias.scope !1152, !noalias !1147
  %wide.load63 = load <2 x ptr>, ptr %i.by, align 8, !tbaa !96, !alias.scope !1152, !noalias !1147
  %i.bz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !96, !alias.scope !1155, !noalias !1152
  store <2 x ptr> %wide.load63, ptr %i.bz, align 8, !tbaa !96, !alias.scope !1155, !noalias !1152
  store <2 x ptr> splat (ptr null), ptr %next.gep62, align 8, !tbaa !96, !alias.scope !1152, !noalias !1147
  store <2 x ptr> splat (ptr null), ptr %i.by, align 8, !tbaa !96, !alias.scope !1152, !noalias !1147
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !1157

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, label %.lr.ph.i.i.i.i.preheader65

.lr.ph.i.i.i.i.preheader65:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bl, %vector.memcheck ], [ %i.bl, %.lr.ph.i.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader65, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader65 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader65 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  %i.cb = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !96, !alias.scope !1150, !noalias !1147
  store ptr %i.cb, ptr %.012.i.i.i.i, align 8, !tbaa !96, !alias.scope !1147, !noalias !1150
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !96, !alias.scope !1150, !noalias !1147
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cc, %i.u
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1158

_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc20
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bl, %.noexc20 ], [ %i.bv, %middle.block ], [ %i.cd, %.lr.ph.i.i.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i, label %.noexc, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.bf) #36
  br label %.noexc

.noexc:                                           ; preds = %bb.k, %_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i
  store ptr %i.bl, ptr %0, align 8, !tbaa !1159
  store ptr %i.ce, ptr %i.q, align 8, !tbaa !1144
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj ; 2 uses
  store ptr %i.cf, ptr %i.r, align 8, !tbaa !1160
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %bb.h, %.noexc
  %i.cg = phi ptr [ %i.t, %bb.h ], [ %i.bl, %.noexc ]
  %i.ch = phi ptr [ %i.u, %bb.h ], [ %i.cf, %.noexc ]
  %i.ci = phi ptr [ %i.bc, %bb.h ], [ %i.ce, %.noexc ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.026.034, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.cj, %i.p
  br i1 %.not, label %._crit_edge, label %bb.d

bb.l:                                             ; preds = %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit18

.loopexit:                                        ; preds = %_ZNKSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i17 = icmp eq ptr %i.bb, null
  br i1 %.not.i17, label %_ZN8facebook3jsi7PointerD2Ev.exit18, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cl = load ptr, ptr %i.bb, align 8, !tbaa !94
  %i.cm = load ptr, ptr %i.cl, align 8
  tail call void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.bb) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit18

_ZN8facebook3jsi7PointerD2Ev.exit18:              ; preds = %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ck, %bb.l ], [ %lpad.phi, %bb.m ], [ %lpad.phi, %bb.n ]
  tail call void @_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #35
  br label %bb.o

bb.o:                                             ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit18, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN8facebook3jsi7PointerD2Ev.exit18 ], [ %i.s, %bb.c ] ; 3 uses
  %.112 = extractvalue { ptr, i32 } %.pn.pn, 1
  %i.cn = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #35
  %i.co = icmp eq i32 %.112, %i.cn
  br i1 %i.co, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.cp = tail call ptr @__cxa_begin_catch(ptr %.1) #35
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !1121, !nonnull !68, !align !453
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter16crashOnExceptionERKSt9exceptionN6hermes8OptValueImEE(ptr noundef nonnull align 8 dereferenceable(648) %i.cq, ptr noundef nonnull align 8 dereferenceable(8) %i.cp, i64 0, i8 0) #38
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.o
  %.merged = phi { ptr, i32 } [ %.pn.pn, %bb.o ], [ %i.cr, %bb.r ]
  resume { ptr, i32 } %.merged

bb.t:                                             ; preds = %bb.r
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  tail call void @__clang_call_terminate(ptr %i.ct) #34
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN8facebook3jsi10PropNameIDESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1159   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1144 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN8facebook3jsi10PropNameIDEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN8facebook3jsi10PropNameIDEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !96 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN8facebook3jsi10PropNameIDEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #35, !inline_history !1161
  br label %_ZSt8_DestroyIN8facebook3jsi10PropNameIDEEvPT_.exit.i.i

_ZSt8_DestroyIN8facebook3jsi10PropNameIDEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1162

_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN8facebook3jsi10PropNameIDEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1159
  br label %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.h = phi ptr [ %.pr, %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN8facebook3jsi10PropNameIDESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1160
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #36
  br label %_ZNSt12_Vector_baseIN8facebook3jsi10PropNameIDESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN8facebook3jsi10PropNameIDESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN8facebook3jsi10PropNameIDES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !895  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !880    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN8facebook3jsi5ValueESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
  unreachable

_ZNKSt6vectorIN8facebook3jsi5ValueESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = shl nuw nsw i64 %i.j, 4
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #37 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  tail call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %2) #35
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN8facebook3jsi5ValueESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.n, %_ZNKSt6vectorIN8facebook3jsi5ValueESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN8facebook3jsi5ValueESaIS2_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i) #35
  tail call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.0911.i.i.i) #35
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !1163

_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN8facebook3jsi5ValueESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZNKSt6vectorIN8facebook3jsi5ValueESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.q, %.lr.ph.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.t, %.lr.ph.i.i.i17 ], [ %i.r, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.s, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 3 uses
  tail call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i19) #35
  tail call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.0911.i.i.i19) #35
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.s, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !1163

_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.r, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.t, %.lr.ph.i.i.i17 ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN8facebook3jsi5ValueESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !896
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.x) #36
  br label %_ZNSt12_Vector_baseIN8facebook3jsi5ValueESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN8facebook3jsi5ValueESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, %bb.c
  store ptr %i.n, ptr %0, align 8, !tbaa !880
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !895
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !896
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZNK8facebook3jsi6String13getStringDataIZNS_6hermes7tracing16TraceInterpreter14executeRecordsEvE3$_1EEvRNS0_7RuntimeERT_ENUlPvbPKvmE_8__invokeESB_bSD_m"(ptr noundef readonly captures(none) %0, i1 noundef zeroext %1, ptr noundef %2, i64 noundef %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 8 uses
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.b = load ptr, ptr %.val, align 8, !tbaa !573
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !574
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.d ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE19_M_replace_dispatchIPKcEERS4_N9__gnu_cxx17__normal_iteratorIPKDsS4_EESD_T_SE_St12__false_type(ptr noundef nonnull align 8 dereferenceable(32) %.val, ptr %i.e, ptr %i.e, ptr noundef %2, ptr noundef %i.a) ; 0 uses
  br label %"_ZZNK8facebook3jsi6String13getStringDataIZNS_6hermes7tracing16TraceInterpreter14executeRecordsEvE3$_1EEvRNS0_7RuntimeERT_ENKUlPvbPKvmE_clESB_bSD_m.exit"

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !574  ; 5 uses
  %i.i = sub i64 2305843009213693951, %i.h
  %i.j = icmp ult i64 %i.i, %3
  br i1 %i.j, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #38
  unreachable

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.c
  %i.k = add i64 %i.h, %3                         ; 3 uses
  %i.l = load ptr, ptr %.val, align 8, !tbaa !573 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m                   ; 2 uses
  br i1 %i.n, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.o = icmp ult i64 %i.h, 8
  tail call void @llvm.assume(i1 %i.o)
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.p = load i64, ptr %i.m, align 8
  %i.q = select i1 %i.n, i64 7, i64 %i.p
  %.not.i.i.i.i = icmp ugt i64 %i.k, %i.q
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDsm.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.h ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %3, 1
  br i1 %cond.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = load i16, ptr %2, align 2, !tbaa !583
  store i16 %i.s, ptr %i.r, align 2, !tbaa !583
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDsm.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.t = shl i64 %3, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.r, ptr align 2 %2, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDsm.exit.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %.val, i64 noundef %i.h, i64 noundef 0, ptr noundef %2, i64 noundef %3)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDsm.exit.i.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDsm.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  store i64 %i.k, ptr %i.g, align 8, !tbaa !574
  %i.u = load ptr, ptr %.val, align 8, !tbaa !573
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.k
  store i16 0, ptr %i.v, align 2, !tbaa !583
  br label %"_ZZNK8facebook3jsi6String13getStringDataIZNS_6hermes7tracing16TraceInterpreter14executeRecordsEvE3$_1EEvRNS0_7RuntimeERT_ENKUlPvbPKvmE_clESB_bSD_m.exit"

"_ZZNK8facebook3jsi6String13getStringDataIZNS_6hermes7tracing16TraceInterpreter14executeRecordsEvE3$_1EEvRNS0_7RuntimeERT_ENKUlPvbPKvmE_clESB_bSD_m.exit": ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDsm.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE19_M_replace_dispatchIPKcEERS4_N9__gnu_cxx17__normal_iteratorIPKDsS4_EESD_T_SE_St12__false_type(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string.181", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !987
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !574
  %i.c = ptrtoint ptr %4 to i64
  %i.d = ptrtoint ptr %3 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 14 uses
  %i.f = icmp ugt i64 %i.e, 7
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %.noexc.i, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #38
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i: ; preds = %bb.b
  %i.h = shl nuw nsw i64 %i.e, 1
  %i.i = add nuw nsw i64 %i.h, 2
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #37 ; 2 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !573
  store i64 %i.e, ptr %i.a, align 8, !tbaa !74
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i, %bb.a
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 7 uses
  %.not7.i.i.i = icmp eq ptr %3, %4
  br i1 %.not7.i.i.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i.i
  %min.iters.check = icmp ult i64 %i.e, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check20 = icmp ult i64 %i.e, 16
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.e, 12
  %n.vec = and i64 %i.e, -16                      ; 5 uses
  %i.l = shl i64 %n.vec, 1
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l
  %i.n = getelementptr i8, ptr %3, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.o ; 2 uses
  %next.gep21 = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep21, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep21, align 1, !tbaa !74
  %wide.load22 = load <8 x i8>, ptr %i.p, align 1, !tbaa !74
  %i.q = sext <8 x i8> %wide.load to <8 x i16>
  %i.r = sext <8 x i8> %wide.load22 to <8 x i16>
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.q, ptr %next.gep, align 2, !tbaa !583
  store <8 x i16> %i.r, ptr %i.s, align 2, !tbaa !583
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !1164

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !1165

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec25 = and i64 %i.e, -4                     ; 4 uses
  %i.u = shl i64 %n.vec25, 1
  %i.v = getelementptr i8, ptr %i.k, i64 %i.u
  %i.w = getelementptr i8, ptr %3, i64 %n.vec25
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index26 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 3 uses
  %i.x = shl i64 %index26, 1
  %next.gep27 = getelementptr i8, ptr %i.k, i64 %i.x
  %next.gep28 = getelementptr i8, ptr %3, i64 %index26
  %wide.load29 = load <4 x i8>, ptr %next.gep28, align 1, !tbaa !74
  %i.y = sext <4 x i8> %wide.load29 to <4 x i16>
  store <4 x i16> %i.y, ptr %next.gep27, align 2, !tbaa !583
  %index.next30 = add nuw i64 %index26, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next30, %n.vec25
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1166

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n31 = icmp eq i64 %i.e, %n.vec25
  br i1 %cmp.n31, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.ph = phi ptr [ %i.k, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ]
  %.068.i.i.i.ph = phi ptr [ %3, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.aa = load i8, ptr %.068.i.i.i, align 1, !tbaa !74
  %i.ab = sext i8 %i.aa to i16
  store i16 %i.ab, ptr %.09.i.i.i, align 2, !tbaa !583
  %i.ac = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 2
  %.not.i.i.i = icmp eq ptr %i.ac, %4
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !1167

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
end_hunk_5
