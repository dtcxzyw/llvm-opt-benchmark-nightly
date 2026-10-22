Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example?download=true
inline.NumInlined: 14924
inline.NumDeleted: 5588
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN4crow6Router14handle_initialERNS_7requestERNS_8responseE:_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i362: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i360, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i361
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i358, i64 noundef 80) #41
  %.not.i.i.i363 = icmp eq ptr %i.sb, null
  br i1 %.not.i.i.i363, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i364, label %.lr.ph.i.i.i357, !llvm.loop !1

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i364: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i362, %_ZNSt14_Function_baseD2Ev.exit2.i256
  %i.so = load ptr, ptr %i.ra, align 8, !tbaa !468
  %i.sp = load i64, ptr %i.rc, align 8, !tbaa !469
  %i.sq = shl i64 %i.sp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.so, i8 0, i64 %i.sq, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rd, i8 0, i64 16, i1 false)
  %i.sr = load ptr, ptr %i.ra, align 8, !tbaa !468 ; 2 uses
  %i.ss = icmp eq ptr %i.sr, %i.rb
  br i1 %i.ss, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit367, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i364
  %i.st = load i64, ptr %i.rc, align 8, !tbaa !469
  %i.su = shl i64 %i.st, 3
  call void @_ZdlPvm(ptr noundef %i.sr, i64 noundef %i.su) #41
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit367

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit367: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i364, %bb.cc
  %i.sv = load ptr, ptr %i.qx, align 8, !tbaa !113 ; 2 uses
  %i.sw = icmp eq ptr %i.sv, %i.qy
  br i1 %i.sw, label %_ZN4crow8responseD2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i257: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit367
  %i.sx = load i64, ptr %i.qy, align 8, !tbaa !114
  %i.sy = add i64 %i.sx, 1
  call void @_ZdlPvm(ptr noundef %i.sv, i64 noundef %i.sy) #41
  br label %_ZN4crow8responseD2Ev.exit260

_ZN4crow8responseD2Ev.exit260:                    ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit367, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i257
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #40
  invoke void @_ZN4crow8response3endEv(ptr noundef nonnull align 8 dereferenceable(352) %3)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.invoke
  store i8 %i.f, ptr %i.r, align 8, !tbaa !1121
  br label %bb.cd

bb.cd:                                            ; preds = %.sink.split, %_ZN4crow8responseD2Ev.exit260
  %i.sz = load ptr, ptr %10, align 8, !tbaa !113  ; 2 uses
  %i.ta = icmp eq ptr %i.sz, %i.fd
  br i1 %i.ta, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %bb.cd
  %i.tb = load i64, ptr %i.fd, align 8, !tbaa !114
  %i.tc = add i64 %i.tb, 1
  call void @_ZdlPvm(ptr noundef %i.sz, i64 noundef %i.tc) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %.critedge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %.pn124.pn.pn = phi { ptr, i32 } [ %.pn124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ], [ %.pn121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187 ], [ %.pn117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ], [ %.pn113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241 ], [ %.pn111, %bb.bw ], [ %i.ly, %bb.ax ], [ %.pn121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188 ], [ %.pn113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240 ], [ %lpad.loopexit.split-lp617, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.td = load ptr, ptr %10, align 8, !tbaa !113  ; 2 uses
  %i.te = icmp eq ptr %i.td, %i.fd
  br i1 %i.te, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  %i.tf = load i64, ptr %i.fd, align 8, !tbaa !114
  %i.tg = add i64 %i.tf, 1
  call void @_ZdlPvm(ptr noundef %i.td, i64 noundef %i.tg) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.dy

bb.ce:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #40
  %i.th = sext i8 %i.f to i64                     ; 2 uses
  %i.ti = getelementptr inbounds nuw [104 x i8], ptr %1, i64 %i.th
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 64 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  invoke void @_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"struct.crow::routing_handle_result") align 8 %22, ptr noundef nonnull align 8 dereferenceable(80) %i.tj, ptr noundef nonnull align 8 dereferenceable(32) %i.tk, ptr noundef nonnull align 8 dereferenceable(80) %i.tj, i64 noundef 0, ptr noundef null, ptr noundef null)
          to label %_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit268.a unwind label %bb.ch

_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit268.a: ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(137) %i.g, ptr noundef nonnull align 8 dereferenceable(137) %22, i64 16, i1 false)
  %i.tl = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.tm = load ptr, ptr %i.i, align 8, !tbaa !1052 ; 3 uses
  %i.tn = load ptr, ptr %i.j, align 8, !tbaa !1053
  %i.to = load <2 x ptr>, ptr %i.tl, align 8, !tbaa !1123
  store <2 x ptr> %i.to, ptr %i.i, align 8, !tbaa !1123
  %i.tp = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !1053
  store ptr %i.tq, ptr %i.j, align 8, !tbaa !1053
  %.not.i.i.i.i.i.i269 = icmp eq ptr %i.tm, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tl, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i269, label %_ZN4crow21routing_handle_resultaSEOS0_.exit270, label %bb.cf

bb.cf:                                            ; preds = %_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit268.a
  %i.tr = ptrtoint ptr %i.tn to i64
  %i.ts = ptrtoint ptr %i.tm to i64
  %i.tt = sub i64 %i.tr, %i.ts
  call void @_ZdlPvm(ptr noundef nonnull %i.tm, i64 noundef %i.tt) #41
  br label %_ZN4crow21routing_handle_resultaSEOS0_.exit270

_ZN4crow21routing_handle_resultaSEOS0_.exit270:   ; preds = %_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit268.a, %bb.cf
  %i.tu = getelementptr inbounds nuw i8, ptr %22, i64 40
  %i.tv = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4crow14routing_paramsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.k, ptr noundef nonnull align 8 dereferenceable(96) %i.tu) #40 ; 0 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %22, i64 136
  %i.tx = load i8, ptr %i.tw, align 8, !tbaa !1121
  store i8 %i.tx, ptr %i.r, align 8, !tbaa !1121
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %22) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  %i.ty = load i64, ptr %i.h, align 8, !tbaa !1119
  %.not = icmp eq i64 %i.ty, 0
  br i1 %.not, label %.preheader, label %bb.dx

.preheader:                                       ; preds = %_ZN4crow21routing_handle_resultaSEOS0_.exit270
  %i.tz = getelementptr inbounds nuw i8, ptr %23, i64 8
  br label %bb.ci

bb.cg:                                            ; preds = %_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit272
  %.0.add = add nuw nsw i64 %.0.idx404, 104       ; 2 uses
  %.not99 = icmp eq i64 %.0.add, 3576
  br i1 %.not99, label %bb.dj, label %bb.ci

bb.ch:                                            ; preds = %bb.ce
  %i.ua = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  br label %bb.dy

bb.ci:                                            ; preds = %.preheader, %bb.cg
  %.0.idx404 = phi i64 [ 40, %.preheader ], [ %.0.add, %bb.cg ] ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.0.idx404
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #40
  %i.ub = getelementptr inbounds nuw i8, ptr %.0.ptr, i64 24 ; 2 uses
  invoke void @_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"struct.crow::routing_handle_result") align 8 %23, ptr noundef nonnull align 8 dereferenceable(80) %i.ub, ptr noundef nonnull align 8 dereferenceable(32) %i.tk, ptr noundef nonnull align 8 dereferenceable(80) %i.ub, i64 noundef 0, ptr noundef null, ptr noundef null)
          to label %_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit272 unwind label %bb.cy

_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit272: ; preds = %bb.ci
  %i.uc = load i64, ptr %i.tz, align 8, !tbaa !1119
  %.not100 = icmp eq i64 %i.uc, 0
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %23) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  br i1 %.not100, label %bb.cg, label %bb.cj

bb.cj:                                            ; preds = %_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit272
  store i32 405, ptr %3, align 8, !tbaa !467
  store i8 1, ptr %i.g, align 8, !tbaa !1120
  %i.ud = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.ue = icmp slt i32 %i.ud, 1
  br i1 %i.ue, label %bb.ck, label %.critedge

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #40
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %24)
          to label %bb.cl unwind label %bb.da

bb.cl:                                            ; preds = %bb.ck
  %i.uf = getelementptr inbounds nuw i8, ptr %24, i64 376 ; 6 uses
  store i32 0, ptr %i.uf, align 8, !tbaa !227
  %i.ug = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %.not.i275 = icmp sgt i32 %i.ug, 0
  br i1 %.not.i275, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.uh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef nonnull @.str.525, i64 noundef 20)
          to label %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit unwind label %bb.db ; 0 uses

_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit:           ; preds = %bb.cm
  %.pre457.a = load i32, ptr %i.uf, align 8, !tbaa !227
  %.pre458.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.ui = icmp slt i32 %.pre457.a, %.pre458.a
  br i1 %i.ui, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.cn

bb.cn:                                            ; preds = %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit
  %i.uj = load ptr, ptr %i.tk, align 8, !tbaa !113
  %i.uk = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !115
  %i.um = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef %i.uj, i64 noundef %i.ul)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit279 unwind label %bb.db ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit279: ; preds = %bb.cn
  %.pre459.a = load i32, ptr %i.uf, align 8, !tbaa !227
  %.pre460.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.un = icmp slt i32 %.pre459.a, %.pre460.a
  br i1 %i.un, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.co

bb.co:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit279
  %i.uo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef nonnull @.str.362, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.db ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.cl, %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit279, %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  %i.up = icmp slt i8 %i.f, 34
  br i1 %i.up, label %bb.cp, label %bb.ct, !prof !501

bb.cp:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.uq = and i64 %i.th, 4294967295
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.uq
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !481, !noalias !2602 ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  store ptr %i.ut, ptr %25, align 8, !tbaa !109, !alias.scope !2602
  %29 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.us) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2602
  store i64 %29, ptr %i.a, align 8, !tbaa !111, !noalias !2602
  %30 = icmp ugt i64 %29, 15
  br i1 %30, label %.noexc.i.i283, label %._crit_edge.i.i.i282

.noexc.i.i283:                                    ; preds = %bb.cp
  %i.uu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc286 unwind label %bb.dc ; 2 uses

.noexc286:                                        ; preds = %.noexc.i.i283
  store ptr %i.uu, ptr %25, align 8, !tbaa !113, !alias.scope !2602
  %i.uv = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !2602
  store i64 %i.uv, ptr %i.ut, align 8, !tbaa !114, !alias.scope !2602
  br label %._crit_edge.i.i.i282

._crit_edge.i.i.i282:                             ; preds = %.noexc286, %bb.cp
  %i.uw = phi ptr [ %i.uu, %.noexc286 ], [ %i.ut, %bb.cp ] ; 2 uses
  switch i64 %29, label %bb.cr [
    i64 1, label %bb.cq
    i64 0, label %bb.cs
  ]

bb.cq:                                            ; preds = %._crit_edge.i.i.i282
  %i.ux = load i8, ptr %i.us, align 1, !tbaa !114
  store i8 %i.ux, ptr %i.uw, align 1, !tbaa !114
  br label %bb.cs

bb.cr:                                            ; preds = %._crit_edge.i.i.i282
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uw, ptr nonnull align 1 %i.us, i64 %29, i1 false)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %._crit_edge.i.i.i282
  %i.uy = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !2602 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.uy, ptr %i.uz, align 8, !tbaa !115, !alias.scope !2602
  %i.va = load ptr, ptr %25, align 8, !tbaa !113, !alias.scope !2602
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 %i.uy
  store i8 0, ptr %i.vb, align 1, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2602
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit288

bb.ct:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !2602
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.527, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc287 unwind label %bb.dc

.noexc287:                                        ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !2602
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit288

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit288: ; preds = %.noexc287, %bb.cs
  %i.vc = load i32, ptr %i.uf, align 8, !tbaa !227
  %i.vd = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %.not.i289 = icmp slt i32 %i.vc, %i.vd
  br i1 %.not.i289, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit288
  %i.ve = load ptr, ptr %25, align 8, !tbaa !113
  %i.vf = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !115
  %i.vh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef %i.ve, i64 noundef %i.vg)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit291 unwind label %bb.dd ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit291: ; preds = %bb.cu
  %.pre461 = load i32, ptr %i.uf, align 8, !tbaa !227
  %.pre462 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.vi = icmp slt i32 %.pre461, %.pre462
  br i1 %i.vi, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit, label %bb.cv

bb.cv:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit291
  %i.vj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef nonnull @.str.526, i64 noundef 2)
          to label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit unwind label %bb.dd ; 0 uses

_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit:            ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit288, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit291, %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #40
  invoke void @_ZN4crow6Router9get_errorB5cxx11ERKNS_21routing_handle_resultE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(3656) %1, ptr noundef nonnull align 8 dereferenceable(137) %i.g)
          to label %bb.cw unwind label %bb.de

bb.cw:                                            ; preds = %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit
  %i.vk = load i32, ptr %i.uf, align 8, !tbaa !227
  %i.vl = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %.not.i294 = icmp slt i32 %i.vk, %i.vl
  br i1 %.not.i294, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit296, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.vm = load ptr, ptr %26, align 8, !tbaa !113
  %i.vn = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.vo = load i64, ptr %i.vn, align 8, !tbaa !115
  %i.vp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef %i.vm, i64 noundef %i.vo)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit296 unwind label %bb.df ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit296: ; preds = %bb.cw, %bb.cx
  %i.vq = load ptr, ptr %26, align 8, !tbaa !113  ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.vs = icmp eq ptr %i.vq, %i.vr
  br i1 %i.vs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297.a: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit296
  %i.vt = load i64, ptr %i.vr, align 8, !tbaa !114
  %i.vu = add i64 %i.vt, 1
  call void @_ZdlPvm(ptr noundef %i.vq, i64 noundef %i.vu) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.a: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit296, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297.a
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #40
  %i.vv = load ptr, ptr %25, align 8, !tbaa !113  ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.vx = icmp eq ptr %i.vv, %i.vw
  br i1 %i.vx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.a
  %i.vy = load i64, ptr %i.vw, align 8, !tbaa !114
  %i.vz = add i64 %i.vy, 1
  call void @_ZdlPvm(ptr noundef %i.vv, i64 noundef %i.vz) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.a
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #40
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %24) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #40
  br label %.critedge

bb.cy:                                            ; preds = %bb.ci
  %i.wa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  br label %bb.dy

bb.cz:                                            ; preds = %_ZN4crow8responseD2Ev.exit
  %i.wb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.da:                                            ; preds = %bb.ck
  %i.wc = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.db:                                            ; preds = %bb.co, %bb.cn, %bb.cm
  %i.wd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dc:                                            ; preds = %bb.ct, %.noexc.i.i283
  %i.we = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

bb.dd:                                            ; preds = %bb.cv, %bb.cu
  %i.wf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.de:                                            ; preds = %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit
  %i.wg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

bb.df:                                            ; preds = %bb.cx
  %i.wh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wi = load ptr, ptr %26, align 8, !tbaa !113  ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.wk = icmp eq ptr %i.wi, %i.wj
  br i1 %i.wk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303: ; preds = %bb.df
  %i.wl = load i64, ptr %i.wj, align 8, !tbaa !114
  %i.wm = add i64 %i.wl, 1
  call void @_ZdlPvm(ptr noundef %i.wi, i64 noundef %i.wm) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303, %bb.de
  %.pn = phi { ptr, i32 } [ %i.wg, %bb.de ], [ %i.wh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303 ], [ %i.wh, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #40
  br label %bb.dg

bb.dg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, %bb.dd
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305 ], [ %i.wf, %bb.dd ] ; 2 uses
  %i.wn = load ptr, ptr %25, align 8, !tbaa !113  ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.wp = icmp eq ptr %i.wn, %i.wo
  br i1 %i.wp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %bb.dg
  %i.wq = load i64, ptr %i.wo, align 8, !tbaa !114
  %i.wr = add i64 %i.wq, 1
  call void @_ZdlPvm(ptr noundef %i.wn, i64 noundef %i.wr) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306, %bb.dc
  %.pn.pn.pn = phi { ptr, i32 } [ %i.we, %bb.dc ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306 ], [ %.pn.pn, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #40
  br label %bb.dh

bb.dh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, %bb.db
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308 ], [ %i.wd, %bb.db ]
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %24) #40
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.da
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.dh ], [ %i.wc, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #40
  br label %bb.dy

bb.dj:                                            ; preds = %bb.cg
  store i32 404, ptr %3, align 8, !tbaa !467
  store i8 1, ptr %i.g, align 8, !tbaa !1120
  %i.ws = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.wt = icmp slt i32 %i.ws, 1
  br i1 %i.wt, label %bb.dk, label %.critedge

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #40
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %27)
          to label %bb.dl unwind label %bb.dr

bb.dl:                                            ; preds = %bb.dk
  %i.wu = getelementptr inbounds nuw i8, ptr %27, i64 376 ; 4 uses
  store i32 0, ptr %i.wu, align 8, !tbaa !227
  %i.wv = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %.not.i311 = icmp sgt i32 %i.wv, 0
  br i1 %.not.i311, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit319, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ww = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %27, ptr noundef nonnull @.str.521, i64 noundef 19)
          to label %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit313 unwind label %bb.ds ; 0 uses

_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit313:        ; preds = %bb.dm
  %.pre463 = load i32, ptr %i.wu, align 8, !tbaa !227
  %.pre464 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.wx = icmp slt i32 %.pre463, %.pre464
  br i1 %i.wx, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit319, label %bb.dn

bb.dn:                                            ; preds = %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit313
  %i.wy = load ptr, ptr %i.tk, align 8, !tbaa !113
  %i.wz = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !115
  %i.xb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %27, ptr noundef %i.wy, i64 noundef %i.xa)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316.a unwind label %bb.ds ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316.a: ; preds = %bb.dn
  %.pre465 = load i32, ptr %i.wu, align 8, !tbaa !227
  %.pre466 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.xc = icmp slt i32 %.pre465, %.pre466
  br i1 %i.xc, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit319, label %bb.do

bb.do:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316.a
  %i.xd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %27, ptr noundef nonnull @.str.526, i64 noundef 2)
          to label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit319 unwind label %bb.ds ; 0 uses

_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit319:         ; preds = %bb.dl, %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit313, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316.a, %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #40
  invoke void @_ZN4crow6Router9get_errorB5cxx11ERKNS_21routing_handle_resultE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(3656) %1, ptr noundef nonnull align 8 dereferenceable(137) %i.g)
          to label %bb.dp unwind label %bb.dt

bb.dp:                                            ; preds = %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit319
  %i.xe = load i32, ptr %i.wu, align 8, !tbaa !227
  %i.xf = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %.not.i320 = icmp slt i32 %i.xe, %i.xf
  br i1 %.not.i320, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit322, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.xg = load ptr, ptr %28, align 8, !tbaa !113
  %i.xh = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.xi = load i64, ptr %i.xh, align 8, !tbaa !115
  %i.xj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %27, ptr noundef %i.xg, i64 noundef %i.xi)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit322 unwind label %bb.du ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit322: ; preds = %bb.dp, %bb.dq
  %i.xk = load ptr, ptr %28, align 8, !tbaa !113  ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.xm = icmp eq ptr %i.xk, %i.xl
  br i1 %i.xm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit322
  %i.xn = load i64, ptr %i.xl, align 8, !tbaa !114
  %i.xo = add i64 %i.xn, 1
  call void @_ZdlPvm(ptr noundef %i.xk, i64 noundef %i.xo) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit322, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #40
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %27) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #40
  br label %.critedge

bb.dr:                                            ; preds = %bb.dk
  %i.xp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.ds:                                            ; preds = %bb.do, %bb.dn, %bb.dm
  %i.xq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.dt:                                            ; preds = %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit319
  %i.xr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

bb.du:                                            ; preds = %bb.dq
  %i.xs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xt = load ptr, ptr %28, align 8, !tbaa !113  ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.xv = icmp eq ptr %i.xt, %i.xu
  br i1 %i.xv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %bb.du
  %i.xw = load i64, ptr %i.xu, align 8, !tbaa !114
  %i.xx = add i64 %i.xw, 1
  call void @_ZdlPvm(ptr noundef %i.xt, i64 noundef %i.xx) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326, %bb.dt
  %.pn107 = phi { ptr, i32 } [ %i.xr, %bb.dt ], [ %i.xs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326 ], [ %i.xs, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #40
  br label %bb.dv

bb.dv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, %bb.ds
  %.pn107.pn = phi { ptr, i32 } [ %.pn107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328 ], [ %i.xq, %bb.ds ]
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %27) #40
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.dr
  %.pn107.pn.pn = phi { ptr, i32 } [ %.pn107.pn, %bb.dv ], [ %i.xp, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #40
  br label %bb.dy

bb.dx:                                            ; preds = %_ZN4crow21routing_handle_resultaSEOS0_.exit270
  store i8 %i.f, ptr %i.r, align 8, !tbaa !1121
  br label %.critedge

.critedge:                                        ; preds = %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.a, %bb.ac, %_ZNSt6vectorImSaImEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, %bb.dx, %_ZN4crow8responseD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, %bb.dj
  ret void

bb.dy:                                            ; preds = %bb.cy, %bb.cz, %bb.di, %bb.dw, %bb.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, %bb.v, %bb.s, %bb.r
  %.pn133 = phi { ptr, i32 } [ %i.wa, %bb.cy ], [ %i.wb, %bb.cz ], [ %.pn131, %bb.v ], [ %i.cx, %bb.s ], [ %i.cw, %bb.r ], [ %.pn124.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266 ], [ %.pn107.pn.pn, %bb.dw ], [ %i.ua, %bb.ch ], [ %.pn.pn.pn.pn.pn, %bb.di ]
  call void @_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #40
  br label %bb.dz

bb.dz:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit142, %bb.dy
end_hunk_0
begin_hunk_1_@_ZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS3_EE6handleEv:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40, !noalias !2739
  br label %.body

bb.ad:                                            ; preds = %bb.ab
  %i.gw = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !2739 ; 2 uses
  store ptr %i.gw, ptr %5, align 8, !tbaa !229, !noalias !2739
  %i.gx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8, !noalias !2739
  %i.gy = getelementptr i8, ptr %i.gw, i64 -24
  %i.gz = load i64, ptr %i.gy, align 8
  %i.ha = getelementptr inbounds i8, ptr %5, i64 %i.gz
  store ptr %i.gx, ptr %i.ha, align 8, !tbaa !229, !noalias !2739
  %i.hb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8, !noalias !2739
  store ptr %i.hb, ptr %i.go, align 8, !tbaa !229, !noalias !2739
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.hc, align 8, !tbaa !229, !noalias !2739
  %i.hd = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !113, !noalias !2739 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.ad
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !114, !noalias !2739
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.hc, align 8, !tbaa !229, !noalias !2739
  %i.hj = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hj) #40
  %i.hk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !2739 ; 2 uses
  store ptr %i.hk, ptr %5, align 8, !tbaa !229, !noalias !2739
  %i.hl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !2739
  %i.hm = getelementptr i8, ptr %i.hk, i64 -24
  %i.hn = load i64, ptr %i.hm, align 8
  %i.ho = getelementptr inbounds i8, ptr %5, i64 %i.hn
  store ptr %i.hl, ptr %i.ho, align 8, !tbaa !229, !noalias !2739
  %i.hp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.hp, align 8, !tbaa !584, !noalias !2739
  %i.hq = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.hq) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40, !noalias !2739
  %i.hr = load i32, ptr %i.gj, align 8, !tbaa !227
  %i.hs = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %.not.i64 = icmp slt i32 %i.hr, %i.hs
  br i1 %.not.i64, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.ht = load ptr, ptr %14, align 8, !tbaa !113
  %i.hu = load i64, ptr %i.gn, align 8, !tbaa !115
  %i.hv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %13, ptr noundef %i.ht, i64 noundef %i.hu)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.bc ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.ae
  %.pre = load i32, ptr %i.gj, align 8, !tbaa !227
  %.pre178.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.hw = icmp slt i32 %.pre, %.pre178.a
  br i1 %i.hw, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.af

bb.af:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.hx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %13, ptr noundef nonnull @.str.362, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.bc ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.af
  %.pre179.a = load i32, ptr %i.gj, align 8, !tbaa !227
  %.pre180.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.hy = icmp slt i32 %.pre179.a, %.pre180.a
  br i1 %i.hy, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ag

bb.ag:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.hz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(380) %13, ptr noundef nonnull %0)
          to label %_ZN4crow6loggerlsIPNS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS5_EEEEERS0_RKT_.exit unwind label %bb.bc ; 0 uses

_ZN4crow6loggerlsIPNS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS5_EEEEERS0_RKT_.exit: ; preds = %bb.ag
  %.pre181.a = load i32, ptr %i.gj, align 8, !tbaa !227
  %.pre182.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.ia = icmp slt i32 %.pre181.a, %.pre182.a
  br i1 %i.ia, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ah

bb.ah:                                            ; preds = %_ZN4crow6loggerlsIPNS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS5_EEEEERS0_RKT_.exit
  %i.ib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %13, ptr noundef nonnull @.str.599, i64 noundef 6)
          to label %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit unwind label %bb.bc ; 0 uses

_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit:            ; preds = %bb.ah
  %.pre183.a = load i32, ptr %i.gj, align 8, !tbaa !227
  %.pre184.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.ic = icmp slt i32 %.pre183.a, %.pre184.a
  %i.id = load ptr, ptr %i.h, align 8, !tbaa !1104, !nonnull !199, !align !339
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 248
  %i.if = load i8, ptr %i.ie, align 8, !tbaa !1157
  %i.ig = add i8 %i.if, 48                        ; 2 uses
  br i1 %i.ic, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ai

bb.ai:                                            ; preds = %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.ig, ptr %i.d, align 1, !tbaa !114
  %i.ih = load ptr, ptr %13, align 8, !tbaa !229
  %i.ii = getelementptr i8, ptr %i.ih, i64 -24
  %i.ij = load i64, ptr %i.ii, align 8
  %i.ik = getelementptr inbounds i8, ptr %13, i64 %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load i64, ptr %i.il, align 8, !tbaa !616
  %.not.i.i73 = icmp eq i64 %i.im, 0
  br i1 %.not.i.i73, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.in = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %13, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit unwind label %bb.bc ; 0 uses

bb.ak:                                            ; preds = %bb.ai
  %i.io = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %13, i8 noundef signext %i.ig)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit unwind label %bb.bc ; 0 uses

_ZN4crow6loggerlsIcEERS0_RKT_.exit:               ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre185.a = load i32, ptr %i.gj, align 8, !tbaa !227
  %.pre186.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.ip = icmp slt i32 %.pre185.a, %.pre186.a
  br i1 %i.ip, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.al

bb.al:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit
  %i.iq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %13, ptr noundef nonnull @.str.386, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78 unwind label %bb.bc ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78:          ; preds = %bb.al
  %.pre187.a = load i32, ptr %i.gj, align 8, !tbaa !227
  %.pre188.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.ir = icmp slt i32 %.pre187.a, %.pre188.a
  %i.is = load ptr, ptr %i.h, align 8, !tbaa !1104, !nonnull !199, !align !339
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 249
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !1158
  %i.iv = add i8 %i.iu, 48                        ; 2 uses
  br i1 %i.ir, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.am

bb.am:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.iv, ptr %i.c, align 1, !tbaa !114
  %i.iw = load ptr, ptr %13, align 8, !tbaa !229
  %i.ix = getelementptr i8, ptr %i.iw, i64 -24
  %i.iy = load i64, ptr %i.ix, align 8
  %i.iz = getelementptr inbounds i8, ptr %13, i64 %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !616
  %.not.i.i80 = icmp eq i64 %i.jb, 0
  br i1 %.not.i.i80, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %13, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit84 unwind label %bb.bc ; 0 uses

bb.ao:                                            ; preds = %bb.am
  %i.jd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %13, i8 noundef signext %i.iv)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit84 unwind label %bb.bc ; 0 uses

_ZN4crow6loggerlsIcEERS0_RKT_.exit84:             ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.pre189.a = load i32, ptr %i.gj, align 8, !tbaa !227
  %.pre190.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.je = icmp slt i32 %.pre189.a, %.pre190.a
  br i1 %i.je, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ap

bb.ap:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !114
  %i.jf = load ptr, ptr %13, align 8, !tbaa !229
  %i.jg = getelementptr i8, ptr %i.jf, i64 -24
  %i.jh = load i64, ptr %i.jg, align 8
  %i.ji = getelementptr inbounds i8, ptr %13, i64 %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !616
  %.not.i.i86 = icmp eq i64 %i.jk, 0
  br i1 %.not.i.i86, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %13, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87 unwind label %bb.bc ; 0 uses

bb.ar:                                            ; preds = %bb.ap
  %i.jm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %13, i8 noundef signext 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87 unwind label %bb.bc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87: ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90

_ZN4crow6loggerlsIcEERS0_RKT_.exit90:             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, %_ZN4crow6loggerlsIPNS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS5_EEEEERS0_RKT_.exit, %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit, %_ZN4crow6loggerlsIcEERS0_RKT_.exit, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87, %_ZN4crow6loggerlsIcEERS0_RKT_.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  %i.jn = load ptr, ptr %i.h, align 8, !tbaa !1104, !nonnull !199, !align !339
  %i.jo = load i8, ptr %i.jn, align 8, !tbaa !1037 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2740)
  %i.jp = icmp slt i8 %i.jo, 34
  br i1 %i.jp, label %bb.as, label %bb.aw, !prof !501

bb.as:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit90
  %i.jq = sext i8 %i.jo to i64
  %i.jr = and i64 %i.jq, 4294967295
  %i.js = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.jr
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !481, !noalias !2740 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.ju, ptr %16, align 8, !tbaa !109, !alias.scope !2740
  %22 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jt) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2740
  store i64 %22, ptr %i.a, align 8, !tbaa !111, !noalias !2740
  %23 = icmp ugt i64 %22, 15
  br i1 %23, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.as
  %i.jv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc93 unwind label %bb.bd  ; 2 uses

.noexc93:                                         ; preds = %.noexc.i.i
  store ptr %i.jv, ptr %16, align 8, !tbaa !113, !alias.scope !2740
  %i.jw = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !2740
  store i64 %i.jw, ptr %i.ju, align 8, !tbaa !114, !alias.scope !2740
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc93, %bb.as
  %i.jx = phi ptr [ %i.jv, %.noexc93 ], [ %i.ju, %bb.as ] ; 2 uses
  switch i64 %22, label %bb.au [
    i64 1, label %bb.at
    i64 0, label %bb.av
  ]

bb.at:                                            ; preds = %._crit_edge.i.i.i
  %i.jy = load i8, ptr %i.jt, align 1, !tbaa !114
  store i8 %i.jy, ptr %i.jx, align 1, !tbaa !114
  br label %bb.av

bb.au:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jx, ptr nonnull align 1 %i.jt, i64 %22, i1 false)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %._crit_edge.i.i.i
  %i.jz = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !2740 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.jz, ptr %i.ka, align 8, !tbaa !115, !alias.scope !2740
  %i.kb = load ptr, ptr %16, align 8, !tbaa !113, !alias.scope !2740
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.jz
  store i8 0, ptr %i.kc, align 1, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2740
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

bb.aw:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit90
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !2740
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.527, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc94 unwind label %bb.bd

.noexc94:                                         ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !2740
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit: ; preds = %.noexc94, %bb.av
  %i.kd = load i32, ptr %i.gj, align 8, !tbaa !227
  %i.ke = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %.not.i95 = icmp slt i32 %i.kd, %i.ke
  br i1 %.not.i95, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103, label %bb.ax

bb.ax:                                            ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit
  %i.kf = load ptr, ptr %16, align 8, !tbaa !113
  %i.kg = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !115
  %i.ki = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %13, ptr noundef %i.kf, i64 noundef %i.kh)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit97 unwind label %bb.be ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit97: ; preds = %bb.ax
  %.pre191.a = load i32, ptr %i.gj, align 8, !tbaa !227
  %.pre192.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.kj = icmp slt i32 %.pre191.a, %.pre192.a
  br i1 %i.kj, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103, label %bb.ay

bb.ay:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit97
  %i.kk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %13, ptr noundef nonnull @.str.362, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit100 unwind label %bb.be ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit100:         ; preds = %bb.ay
  %.pre193.a = load i32, ptr %i.gj, align 8, !tbaa !227
  %.pre194.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.kl = icmp slt i32 %.pre193.a, %.pre194.a
  br i1 %i.kl, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103, label %bb.az

bb.az:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit100
  %i.km = load ptr, ptr %i.h, align 8, !tbaa !1104, !nonnull !199, !align !339 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 40
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !113
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 48
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !115
  %i.kr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %13, ptr noundef %i.ko, i64 noundef %i.kq)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103 unwind label %bb.be ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit97, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit100, %bb.az
  %i.ks = load ptr, ptr %16, align 8, !tbaa !113  ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ku = icmp eq ptr %i.ks, %i.kt
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103
  %i.kv = load i64, ptr %i.kt, align 8, !tbaa !114
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.kw) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  %i.kx = load ptr, ptr %14, align 8, !tbaa !113  ; 2 uses
  %i.ky = icmp eq ptr %i.kx, %i.gm
  br i1 %i.ky, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.kz = load i64, ptr %i.gm, align 8, !tbaa !114
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %i.kx, i64 noundef %i.la) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br label %bb.bh

bb.ba:                                            ; preds = %bb.aa
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bb:                                            ; preds = %_ZN4crow17UnixSocketAdaptor15remote_endpointEv.exit, %_ZN4crow6loggerlsIA10_cEERS0_RKT_.exit
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bc:                                            ; preds = %bb.an, %bb.ao, %bb.ae, %bb.af, %bb.ah, %bb.ag, %bb.al, %bb.ak, %bb.aj, %bb.ar, %bb.aq
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bd:                                            ; preds = %bb.aw, %.noexc.i.i
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

bb.be:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %i.lf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lg = load ptr, ptr %16, align 8, !tbaa !113  ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.li = icmp eq ptr %i.lg, %i.lh
  br i1 %i.li, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.be
  %i.lj = load i64, ptr %i.lh, align 8, !tbaa !114
  %i.lk = add i64 %i.lj, 1
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lk) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.bd
  %.pn22 = phi { ptr, i32 } [ %i.le, %bb.bd ], [ %i.lf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %i.lf, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %bb.bc
  %.pn22.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ld, %bb.bc ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ] ; 2 uses
  %i.ll = load ptr, ptr %14, align 8, !tbaa !113  ; 2 uses
  %i.lm = icmp eq ptr %i.ll, %i.gm
  br i1 %i.lm, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.bf
  %i.ln = load i64, ptr %i.gm, align 8, !tbaa !114
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lo) #41
  br label %.body

.body:                                            ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn22.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.lc, %bb.bb ], [ %.pn22.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ], [ %.pn22.pn.pn.pn.pn.pn, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  br label %bb.bg

bb.bg:                                            ; preds = %.body, %bb.ba
  %.pn22.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn.pn.pn.pn.pn, %.body ], [ %i.lb, %bb.ba ]
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br label %common.resume

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %bb.y
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 5121 ; 2 uses
  store i8 0, ptr %i.lp, align 1, !tbaa !1100
  br i1 %.017, label %bb.cs, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 4624 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 4728 ; 4 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 4744 ; 5 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !197 ; 2 uses
  %.not.i116 = icmp eq ptr %i.lt, null
  br i1 %.not.i116, label %_ZNSt8functionIFvvEEaSEDn.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lu = invoke noundef zeroext i1 %i.lt(ptr noundef nonnull align 8 dereferenceable(32) %i.lr, ptr noundef nonnull align 8 dereferenceable(32) %i.lr, i32 noundef 3)
          to label %bb.bk unwind label %bb.bl     ; 0 uses

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ls, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEaSEDn.exit

bb.bl:                                            ; preds = %bb.bj
  %i.lv = landingpad { ptr, i32 }
          catch ptr null
  %i.lw = extractvalue { ptr, i32 } %i.lv, 0
  call void @__clang_call_terminate(ptr %i.lw) #42
  unreachable

_ZNSt8functionIFvvEEaSEDn.exit:                   ; preds = %bb.bi, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !2741)
  %i.lx = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !1006, !noalias !2741 ; 3 uses
  store ptr %i.lz, ptr %i.lx, align 8, !tbaa !234, !alias.scope !2741
  %i.ma = icmp eq ptr %i.lz, null
  br i1 %i.ma, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt8functionIFvvEEaSEDn.exit
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 8 ; 2 uses
  %i.mc = load atomic i32, ptr %i.mb monotonic, align 8, !noalias !2741
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bo, %bb.bm
  %.06.i.i.i.i.i = phi i32 [ %i.mc, %bb.bm ], [ %i.mg, %bb.bo ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.md = add nsw i32 %.06.i.i.i.i.i, 1
  %i.me = cmpxchg weak ptr %i.mb, i32 %.06.i.i.i.i.i, i32 %i.md acq_rel monotonic, align 8, !noalias !2741 ; 2 uses
  %i.mf = extractvalue { i32, i1 } %i.me, 1
  %i.mg = extractvalue { i32, i1 } %i.me, 0
  br i1 %i.mf, label %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE16shared_from_thisEv.exit, label %bb.bn, !llvm.loop !77

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.bn, %_ZNSt8functionIFvvEEaSEDn.exit
  %i.mh = call ptr @__cxa_allocate_exception(i64 8) #40, !noalias !2741 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.mh, align 8, !tbaa !229, !noalias !2741
  call void @__cxa_throw(ptr nonnull %i.mh, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #39, !noalias !2741
  unreachable

_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE16shared_from_thisEv.exit: ; preds = %bb.bo
  %i.mi = load ptr, ptr %0, align 8, !tbaa !1008, !noalias !2741 ; 2 uses
  store ptr %i.mi, ptr %17, align 16, !tbaa !861, !alias.scope !2741
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #40
  store ptr %i.mi, ptr %18, align 16, !tbaa !861
  %i.mj = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.mk = load ptr, ptr %i.lx, align 8, !tbaa !234 ; 3 uses
  store ptr %i.mk, ptr %i.mj, align 8, !tbaa !234
  %.not.i.i.i117 = icmp eq ptr %i.mk, null
  br i1 %.not.i.i.i117, label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJ17ExampleMiddlewareEEEJS4_EEEEC2ERKS7_.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE16shared_from_thisEv.exit
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8 ; 3 uses
  %i.mm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i118 = icmp eq i8 %i.mm, 0
  br i1 %.not.i.i.i.i118, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mn = load i32, ptr %i.ml, align 4, !tbaa !200
  %i.mo = add nsw i32 %i.mn, 1
  store i32 %i.mo, ptr %i.ml, align 4, !tbaa !200
  br label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJ17ExampleMiddlewareEEEJS4_EEEEC2ERKS7_.exit

bb.br:                                            ; preds = %bb.bp
  %i.mp = atomicrmw volatile add ptr %i.ml, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJ17ExampleMiddlewareEEEJS4_EEEEC2ERKS7_.exit

_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJ17ExampleMiddlewareEEEJS4_EEEEC2ERKS7_.exit: ; preds = %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE16shared_from_thisEv.exit, %bb.bq, %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.mq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.mq, align 8
  %i.mr = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #43
          to label %.noexc121 unwind label %bb.ch ; 2 uses

.noexc121:                                        ; preds = %_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJ17ExampleMiddlewareEEEJS4_EEEEC2ERKS7_.exit
  %i.ms = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 4760 ; 2 uses
  %i.mu = load <2 x ptr>, ptr %18, align 16, !tbaa !119
  store ptr null, ptr %i.mj, align 8, !tbaa !234
  store <2 x ptr> %i.mu, ptr %i.mr, align 8, !tbaa !119
  store ptr %i.mr, ptr %3, align 16, !tbaa !119
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.mt, i64 16, i1 false), !tbaa.struct !118
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.mt, align 8, !tbaa !114
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 4776 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 4784
  %i.mx = load <2 x ptr>, ptr %i.mv, align 8, !tbaa !119
  %i.my = load ptr, ptr %i.mv, align 8, !tbaa !119 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbvEZN4crow10ConnectionINS1_17UnixSocketAdaptorENS1_4CrowIJ17ExampleMiddlewareEEEJS5_EE6handleEvEUlvE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.mv, align 8, !tbaa !119
  store <2 x ptr> %i.mx, ptr %i.ms, align 16, !tbaa !119
  store ptr @_ZNSt17_Function_handlerIFbvEZN4crow10ConnectionINS1_17UnixSocketAdaptorENS1_4CrowIJ17ExampleMiddlewareEEEJS5_EE6handleEvEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.mw, align 8, !tbaa !119
  %.not.i.i119 = icmp eq ptr %i.my, null
  br i1 %.not.i.i119, label %_ZZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS3_EE6handleEvENUlvE_D2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %.noexc121
  %i.mz = invoke noundef zeroext i1 %i.my(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS3_EE6handleEvENUlvE_D2Ev.exit unwind label %bb.bt ; 0 uses

bb.bt:                                            ; preds = %bb.bs
  %i.na = landingpad { ptr, i32 }
          catch ptr null
  %i.nb = extractvalue { ptr, i32 } %i.na, 0
  call void @__clang_call_terminate(ptr %i.nb) #42
  unreachable

_ZZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS3_EE6handleEvENUlvE_D2Ev.exit: ; preds = %bb.bs, %.noexc121
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %.pre195.a = load ptr, ptr %i.k, align 8, !tbaa !1042 ; 2 uses
  %.pre196.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #40
  %i.nc = icmp slt i32 %.pre196.a, 1
  br i1 %i.nc, label %bb.bu, label %bb.by

bb.bu:                                            ; preds = %_ZZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS3_EE6handleEvENUlvE_D2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %2)
          to label %.noexc129 unwind label %bb.cj

.noexc129:                                        ; preds = %bb.bu
  %i.nd = getelementptr inbounds nuw i8, ptr %2, i64 376 ; 2 uses
  store i32 0, ptr %i.nd, align 8, !tbaa !227
  %i.ne = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %.not.i.i.i.i124 = icmp sgt i32 %i.ne, 0
  br i1 %.not.i.i.i.i124, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit.i.i.i128, label %bb.bv

bb.bv:                                            ; preds = %.noexc129
  %i.nf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %2, ptr noundef nonnull @.str.602, i64 noundef 12)
          to label %_ZN4crow6loggerlsIA13_cEERS0_RKT_.exit.i.i.i125 unwind label %bb.bx ; 0 uses

_ZN4crow6loggerlsIA13_cEERS0_RKT_.exit.i.i.i125:  ; preds = %bb.bv
  %.pre.i.i.i126 = load i32, ptr %i.nd, align 8, !tbaa !227
  %.pre4.i.i.i127 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
end_hunk_1
begin_hunk_2_@_ZN4crow4CrowIJ17ExampleMiddlewareEE6handleERNS_7requestERNS_8responseERSt10unique_ptrINS_21routing_handle_resultESt14default_deleteIS8_EE:bb.a
  %.not.i.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i.i, label %.thread6, label %bb.b

.thread6:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = getelementptr inbounds i8, ptr null, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr %i.l, ptr %i.m, align 8, !tbaa !1053
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.j, 9223372036854775800
  br i1 %i.n, label %.noexc.i.i.i, label %bb.c, !prof !117

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #39
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #43 ; 5 uses
  store ptr %i.o, ptr %i.c, align 8, !tbaa !1052
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !1125
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !1053
  %i.s = icmp samesign ugt i64 %i.j, 8
  br i1 %i.s, label %bb.d, label %bb.e, !prof !734

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.t = icmp eq i64 %i.j, 8
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.g, align 8, !tbaa !111
  store i64 %i.u, ptr %i.o, align 8, !tbaa !111
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

_ZNSt6vectorImSaImEEC2ERKS1_.exit.i:              ; preds = %.thread6, %bb.f, %bb.e, %bb.d
  %i.v = phi ptr [ %i.r, %bb.f ], [ %i.r, %bb.e ], [ %i.r, %bb.d ], [ %i.m, %.thread6 ]
  %i.w = phi ptr [ %i.q, %bb.f ], [ %i.q, %bb.e ], [ %i.q, %bb.d ], [ %i.l, %.thread6 ]
  %i.x = phi ptr [ %i.p, %bb.f ], [ %i.p, %bb.e ], [ %i.p, %bb.d ], [ %i.k, %.thread6 ]
  store ptr %i.w, ptr %i.x, align 8, !tbaa !1125
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  invoke void @_ZN4crow14routing_paramsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.y, ptr noundef nonnull align 8 dereferenceable(96) %i.z)
          to label %_ZN4crow21routing_handle_resultC2ERKS0_.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !1052 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !1053
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.af) #41
  br label %common.resume

common.resume:                                    ; preds = %bb.g, %bb.h, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %i.aa, %bb.h ], [ %i.aa, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_ZN4crow21routing_handle_resultC2ERKS0_.exit:     ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !1121
  store i8 %i.ai, ptr %i.ag, align 8, !tbaa !1121
  invoke void @_ZN4crow6Router6handleINS_4CrowIJ17ExampleMiddlewareEEEEEvRNS_7requestERNS_8responseENS_21routing_handle_resultE(ptr noundef nonnull align 8 dereferenceable(3656) %i.a, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(352) %2, ptr nofreeobj noundef nonnull align 8 dereferenceable(144) %4)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN4crow21routing_handle_resultC2ERKS0_.exit
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %4) #40
  ret void

bb.j:                                             ; preds = %_ZN4crow21routing_handle_resultC2ERKS0_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %4) #40
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow6Router14handle_upgradeIRNS_17UnixSocketAdaptorEEEvRKNS_7requestERNS_8responseEOT_(ptr noundef nonnull align 8 dereferenceable(3656) %0, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef nonnull align 8 dereferenceable(88) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"struct.crow::routing_handle_result", align 8 ; 5 uses
  %6 = alloca %"struct.crow::routing_handle_result", align 8 ; 5 uses
  %7 = alloca %"class.crow::logger", align 8      ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %9 = alloca %"struct.crow::response", align 8   ; 20 uses
  %10 = alloca %"class.crow::logger", align 8     ; 9 uses
  %11 = alloca %"struct.crow::response", align 8  ; 20 uses
  %12 = alloca %"class.crow::logger", align 8     ; 9 uses
  %13 = alloca %"struct.crow::response", align 8  ; 20 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.crow::logger", align 8     ; 13 uses
  %i.b = load i8, ptr %1, align 8, !tbaa !1037    ; 2 uses
  %i.c = icmp sgt i8 %i.b, 33
  br i1 %i.c, label %bb.br, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.ptr175 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = sext i8 %i.b to i64
  %i.e = getelementptr inbounds nuw [104 x i8], ptr %.ptr175, i64 %i.d ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  call void @_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"struct.crow::routing_handle_result") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 noundef 0, ptr noundef null, ptr noundef null)
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1119 ; 6 uses
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %.preheader, label %bb.ai

.preheader:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %.critedge

bb.c:                                             ; preds = %.critedge
  %.056.add = add nuw nsw i64 %.056.idx176, 104   ; 2 uses
  %.not59 = icmp eq i64 %.056.add, 3576
  br i1 %.not59, label %.critedge73, label %.critedge

.critedge:                                        ; preds = %.preheader, %bb.c
  %.056.idx176 = phi i64 [ 40, %.preheader ], [ %.056.add, %bb.c ] ; 2 uses
  %.056.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.056.idx176
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.k = getelementptr inbounds nuw i8, ptr %.056.ptr, i64 24 ; 2 uses
  call void @_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"struct.crow::routing_handle_result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.k, i64 noundef 0, ptr noundef null, ptr noundef null)
  %i.l = load i64, ptr %i.j, align 8, !tbaa !1119
  %.not60 = icmp eq i64 %i.l, 0
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br i1 %.not60, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.m = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %7)
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 376 ; 4 uses
  store i32 0, ptr %i.o, align 8, !tbaa !227
  %i.p = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %.not.i = icmp sgt i32 %i.p, 0
  br i1 %.not.i, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef nonnull @.str.525, i64 noundef 20)
          to label %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit:           ; preds = %bb.f
  %.pre189.a = load i32, ptr %i.o, align 8, !tbaa !227
  %.pre190.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.r = icmp slt i32 %.pre189.a, %.pre190.a
  br i1 %i.r, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !113
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !115
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef %i.s, i64 noundef %i.u)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.g
  %.pre191.a = load i32, ptr %i.o, align 8, !tbaa !227
  %.pre192.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.w = icmp slt i32 %.pre191.a, %.pre192.a
  br i1 %i.w, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef nonnull @.str.362, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.e, %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  %i.y = load i8, ptr %1, align 8, !tbaa !1037    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2749)
  %i.z = icmp slt i8 %i.y, 34
  br i1 %i.z, label %bb.i, label %bb.m, !prof !501

bb.i:                                             ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.aa = sext i8 %i.y to i64
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !481, !noalias !2749 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ae, ptr %8, align 8, !tbaa !109, !alias.scope !2749
  %17 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2749
  store i64 %17, ptr %i.a, align 8, !tbaa !111, !noalias !2749
  %18 = icmp ugt i64 %17, 15
  br i1 %18, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.i
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc79.a unwind label %bb.p ; 2 uses

.noexc79.a:                                       ; preds = %.noexc.i.i
  store ptr %i.af, ptr %8, align 8, !tbaa !113, !alias.scope !2749
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !2749
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !114, !alias.scope !2749
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc79.a, %bb.i
  %i.ah = phi ptr [ %i.af, %.noexc79.a ], [ %i.ae, %bb.i ] ; 2 uses
  switch i64 %17, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ai = load i8, ptr %i.ad, align 1, !tbaa !114
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !114
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %i.ad, i64 %17, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !2749 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !115, !alias.scope !2749
  %i.al = load ptr, ptr %8, align 8, !tbaa !113, !alias.scope !2749
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2749
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

bb.m:                                             ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !2749
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.527, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc80 unwind label %bb.p

.noexc80:                                         ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !2749
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit: ; preds = %.noexc80, %bb.l
  %i.an = load i32, ptr %i.o, align 8, !tbaa !227
  %i.ao = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %.not.i81 = icmp slt i32 %i.an, %i.ao
  br i1 %.not.i81, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83, label %bb.n

bb.n:                                             ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit
  %i.ap = load ptr, ptr %8, align 8, !tbaa !113
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !115
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83 unwind label %bb.q ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit, %bb.n
  %i.at = load ptr, ptr %8, align 8, !tbaa !113   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !114
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %bb.s

bb.o:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.p:                                             ; preds = %bb.m, %.noexc.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.q:                                             ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %8, align 8, !tbaa !113   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.q
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !114
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.p
  %.pn = phi { ptr, i32 } [ %i.az, %bb.p ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %i.ba, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ %i.ay, %bb.o ]
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  store i32 405, ptr %9, align 8, !tbaa !467
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !109
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.bi, align 8, !tbaa !115
  store i8 0, ptr %i.bh, align 8, !tbaa !114
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !468
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  store i64 1, ptr %i.bl, align 8, !tbaa !469
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bn, align 8, !tbaa !438
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 168 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.bo, i8 0, i64 19, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bp, i8 0, i64 64, i1 false)
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !109
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 176
  store i64 0, ptr %i.bs, align 8, !tbaa !115
  store i8 0, ptr %i.br, align 8, !tbaa !114
  %i.bt = call noundef nonnull align 8 dereferenceable(352) ptr @_ZN4crow8responseaSEOS0_(ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef nonnull align 8 dereferenceable(352) %9) #40 ; 0 uses
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !113 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.br
  br i1 %i.bv, label %_ZN4crow8response16static_file_infoD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.s
  %i.bw = load i64, ptr %i.br, align 8, !tbaa !114
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #41
  br label %_ZN4crow8response16static_file_infoD2Ev.exit.i

_ZN4crow8response16static_file_infoD2Ev.exit.i:   ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !197 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN4crow8response16static_file_infoD2Ev.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 136 ; 2 uses
  %i.cb = invoke noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.t, %_ZN4crow8response16static_file_infoD2Ev.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !197 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.cf, null
  br i1 %.not.i1.i, label %_ZNSt14_Function_baseD2Ev.exit2.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.cg = invoke noundef zeroext i1 %i.cf(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i:                ; preds = %bb.v, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.cj = load ptr, ptr %i.bm, align 8, !tbaa !470 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.ck, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.cj, %_ZNSt14_Function_baseD2Ev.exit2.i ] ; 6 uses
  %i.ck = load ptr, ptr %.06.i.i.i, align 8, !tbaa !246 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !113 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !114
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !113 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !114
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #41
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #41
  %.not.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.cx = load ptr, ptr %i.bj, align 8, !tbaa !468
  %i.cy = load i64, ptr %i.bl, align 8, !tbaa !469
  %i.cz = shl i64 %i.cy, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cx, i8 0, i64 %i.cz, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.da = load ptr, ptr %i.bj, align 8, !tbaa !468 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.bk
  br i1 %i.db, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i
  %i.dc = load i64, ptr %i.bl, align 8, !tbaa !469
  %i.dd = shl i64 %i.dc, 3
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #41
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, %bb.x
  %i.de = load ptr, ptr %i.bg, align 8, !tbaa !113 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.bh
  br i1 %i.df, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit
  %i.dg = load i64, ptr %i.bh, align 8, !tbaa !114
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @_ZN4crow8response3endEv(ptr noundef nonnull align 8 dereferenceable(352) %2)
  br label %bb.br

.critedge73:                                      ; preds = %bb.c
  %i.di = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.dj = icmp slt i32 %i.di, 2
  br i1 %i.dj, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %.critedge73
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %10)
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 376 ; 2 uses
  store i32 1, ptr %i.dk, align 8, !tbaa !227
  %i.dl = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %.not.i87 = icmp sgt i32 %i.dl, 1
  br i1 %.not.i87, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit91, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %10, ptr noundef nonnull @.str.521, i64 noundef 19)
          to label %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit unwind label %bb.ab ; 0 uses

_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit:           ; preds = %bb.z
  %.pre193 = load i32, ptr %i.dk, align 8, !tbaa !227
  %.pre194 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.dn = icmp slt i32 %.pre193, %.pre194
  br i1 %i.dn, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit91, label %bb.aa

bb.aa:                                            ; preds = %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit
  %i.do = load ptr, ptr %i.g, align 8, !tbaa !113
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 48
end_hunk_2
begin_hunk_3_@_ZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS3_EE6handleEv:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40, !noalias !2947
  br label %.body

bb.al:                                            ; preds = %bb.aj
  %i.ic = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !2947 ; 2 uses
  store ptr %i.ic, ptr %5, align 8, !tbaa !229, !noalias !2947
  %i.id = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8, !noalias !2947
  %i.ie = getelementptr i8, ptr %i.ic, i64 -24
  %i.if = load i64, ptr %i.ie, align 8
  %i.ig = getelementptr inbounds i8, ptr %5, i64 %i.if
  store ptr %i.id, ptr %i.ig, align 8, !tbaa !229, !noalias !2947
  %i.ih = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8, !noalias !2947
  store ptr %i.ih, ptr %i.hu, align 8, !tbaa !229, !noalias !2947
  %i.ii = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ii, align 8, !tbaa !229, !noalias !2947
  %i.ij = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !113, !noalias !2947 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.im = icmp eq ptr %i.ik, %i.il
  br i1 %i.im, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.al
  %i.in = load i64, ptr %i.il, align 8, !tbaa !114, !noalias !2947
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.io) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ii, align 8, !tbaa !229, !noalias !2947
  %i.ip = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ip) #40
  %i.iq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !2947 ; 2 uses
  store ptr %i.iq, ptr %5, align 8, !tbaa !229, !noalias !2947
  %i.ir = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !2947
  %i.is = getelementptr i8, ptr %i.iq, i64 -24
  %i.it = load i64, ptr %i.is, align 8
  %i.iu = getelementptr inbounds i8, ptr %5, i64 %i.it
  store ptr %i.ir, ptr %i.iu, align 8, !tbaa !229, !noalias !2947
  %i.iv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.iv, align 8, !tbaa !584, !noalias !2947
  %i.iw = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.iw) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40, !noalias !2947
  %i.ix = load i32, ptr %i.hp, align 8, !tbaa !227
  %i.iy = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %.not.i64 = icmp slt i32 %i.ix, %i.iy
  br i1 %.not.i64, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.am

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.iz = load ptr, ptr %16, align 8, !tbaa !113
  %i.ja = load i64, ptr %i.ht, align 8, !tbaa !115
  %i.jb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %15, ptr noundef %i.iz, i64 noundef %i.ja)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.bk ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.am
  %.pre = load i32, ptr %i.hp, align 8, !tbaa !227
  %.pre178.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.jc = icmp slt i32 %.pre, %.pre178.a
  br i1 %i.jc, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.an

bb.an:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.jd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %15, ptr noundef nonnull @.str.362, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.bk ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.an
  %.pre179.a = load i32, ptr %i.hp, align 8, !tbaa !227
  %.pre180.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.je = icmp slt i32 %.pre179.a, %.pre180.a
  br i1 %i.je, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ao

bb.ao:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.jf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(380) %15, ptr noundef nonnull %0)
          to label %_ZN4crow6loggerlsIPNS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS5_EEEEERS0_RKT_.exit unwind label %bb.bk ; 0 uses

_ZN4crow6loggerlsIPNS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS5_EEEEERS0_RKT_.exit: ; preds = %bb.ao
  %.pre181.a = load i32, ptr %i.hp, align 8, !tbaa !227
  %.pre182.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.jg = icmp slt i32 %.pre181.a, %.pre182.a
  br i1 %i.jg, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ap

bb.ap:                                            ; preds = %_ZN4crow6loggerlsIPNS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS5_EEEEERS0_RKT_.exit
  %i.jh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %15, ptr noundef nonnull @.str.599, i64 noundef 6)
          to label %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit unwind label %bb.bk ; 0 uses

_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit:            ; preds = %bb.ap
  %.pre183.a = load i32, ptr %i.hp, align 8, !tbaa !227
  %.pre184.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.ji = icmp slt i32 %.pre183.a, %.pre184.a
  %i.jj = load ptr, ptr %i.h, align 8, !tbaa !1270, !nonnull !199, !align !339
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 248
  %i.jl = load i8, ptr %i.jk, align 8, !tbaa !1157
  %i.jm = add i8 %i.jl, 48                        ; 2 uses
  br i1 %i.ji, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.aq

bb.aq:                                            ; preds = %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.jm, ptr %i.d, align 1, !tbaa !114
  %i.jn = load ptr, ptr %15, align 8, !tbaa !229
  %i.jo = getelementptr i8, ptr %i.jn, i64 -24
  %i.jp = load i64, ptr %i.jo, align 8
  %i.jq = getelementptr inbounds i8, ptr %15, i64 %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !616
  %.not.i.i73 = icmp eq i64 %i.js, 0
  br i1 %.not.i.i73, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %15, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit unwind label %bb.bk ; 0 uses

bb.as:                                            ; preds = %bb.aq
  %i.ju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %15, i8 noundef signext %i.jm)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit unwind label %bb.bk ; 0 uses

_ZN4crow6loggerlsIcEERS0_RKT_.exit:               ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre185.a = load i32, ptr %i.hp, align 8, !tbaa !227
  %.pre186.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.jv = icmp slt i32 %.pre185.a, %.pre186.a
  br i1 %i.jv, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.at

bb.at:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit
  %i.jw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %15, ptr noundef nonnull @.str.386, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78 unwind label %bb.bk ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78:          ; preds = %bb.at
  %.pre187.a = load i32, ptr %i.hp, align 8, !tbaa !227
  %.pre188.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.jx = icmp slt i32 %.pre187.a, %.pre188.a
  %i.jy = load ptr, ptr %i.h, align 8, !tbaa !1270, !nonnull !199, !align !339
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 249
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !1158
  %i.kb = add i8 %i.ka, 48                        ; 2 uses
  br i1 %i.jx, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.au

bb.au:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.kb, ptr %i.c, align 1, !tbaa !114
  %i.kc = load ptr, ptr %15, align 8, !tbaa !229
  %i.kd = getelementptr i8, ptr %i.kc, i64 -24
  %i.ke = load i64, ptr %i.kd, align 8
  %i.kf = getelementptr inbounds i8, ptr %15, i64 %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !616
  %.not.i.i80 = icmp eq i64 %i.kh, 0
  br i1 %.not.i.i80, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ki = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %15, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit84 unwind label %bb.bk ; 0 uses

bb.aw:                                            ; preds = %bb.au
  %i.kj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %15, i8 noundef signext %i.kb)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit84 unwind label %bb.bk ; 0 uses

_ZN4crow6loggerlsIcEERS0_RKT_.exit84:             ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.pre189.a = load i32, ptr %i.hp, align 8, !tbaa !227
  %.pre190.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.kk = icmp slt i32 %.pre189.a, %.pre190.a
  br i1 %i.kk, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ax

bb.ax:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !114
  %i.kl = load ptr, ptr %15, align 8, !tbaa !229
  %i.km = getelementptr i8, ptr %i.kl, i64 -24
  %i.kn = load i64, ptr %i.km, align 8
  %i.ko = getelementptr inbounds i8, ptr %15, i64 %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !616
  %.not.i.i86 = icmp eq i64 %i.kq, 0
  br i1 %.not.i.i86, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %15, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87 unwind label %bb.bk ; 0 uses

bb.az:                                            ; preds = %bb.ax
  %i.ks = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %15, i8 noundef signext 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87 unwind label %bb.bk ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87: ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90

_ZN4crow6loggerlsIcEERS0_RKT_.exit90:             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, %_ZN4crow6loggerlsIPNS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS5_EEEEERS0_RKT_.exit, %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit, %_ZN4crow6loggerlsIcEERS0_RKT_.exit, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87, %_ZN4crow6loggerlsIcEERS0_RKT_.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #40
  %i.kt = load ptr, ptr %i.h, align 8, !tbaa !1270, !nonnull !199, !align !339
  %i.ku = load i8, ptr %i.kt, align 8, !tbaa !1037 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2948)
  %i.kv = icmp slt i8 %i.ku, 34
  br i1 %i.kv, label %bb.ba, label %bb.be, !prof !501

bb.ba:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit90
  %i.kw = sext i8 %i.ku to i64
  %i.kx = and i64 %i.kw, 4294967295
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.kx
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !481, !noalias !2948 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.la, ptr %18, align 8, !tbaa !109, !alias.scope !2948
  %24 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kz) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2948
  store i64 %24, ptr %i.a, align 8, !tbaa !111, !noalias !2948
  %25 = icmp ugt i64 %24, 15
  br i1 %25, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.ba
  %i.lb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc93 unwind label %bb.bl  ; 2 uses

.noexc93:                                         ; preds = %.noexc.i.i
  store ptr %i.lb, ptr %18, align 8, !tbaa !113, !alias.scope !2948
  %i.lc = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !2948
  store i64 %i.lc, ptr %i.la, align 8, !tbaa !114, !alias.scope !2948
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc93, %bb.ba
  %i.ld = phi ptr [ %i.lb, %.noexc93 ], [ %i.la, %bb.ba ] ; 2 uses
  switch i64 %24, label %bb.bc [
    i64 1, label %bb.bb
    i64 0, label %bb.bd
  ]

bb.bb:                                            ; preds = %._crit_edge.i.i.i
  %i.le = load i8, ptr %i.kz, align 1, !tbaa !114
  store i8 %i.le, ptr %i.ld, align 1, !tbaa !114
  br label %bb.bd

bb.bc:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ld, ptr nonnull align 1 %i.kz, i64 %24, i1 false)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %._crit_edge.i.i.i
  %i.lf = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !2948 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.lf, ptr %i.lg, align 8, !tbaa !115, !alias.scope !2948
  %i.lh = load ptr, ptr %18, align 8, !tbaa !113, !alias.scope !2948
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lf
  store i8 0, ptr %i.li, align 1, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2948
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

bb.be:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit90
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !2948
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.527, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc94 unwind label %bb.bl

.noexc94:                                         ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !2948
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit: ; preds = %.noexc94, %bb.bd
  %i.lj = load i32, ptr %i.hp, align 8, !tbaa !227
  %i.lk = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %.not.i95 = icmp slt i32 %i.lj, %i.lk
  br i1 %.not.i95, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103, label %bb.bf

bb.bf:                                            ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit
  %i.ll = load ptr, ptr %18, align 8, !tbaa !113
  %i.lm = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !115
  %i.lo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %15, ptr noundef %i.ll, i64 noundef %i.ln)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit97 unwind label %bb.bm ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit97: ; preds = %bb.bf
  %.pre191.a = load i32, ptr %i.hp, align 8, !tbaa !227
  %.pre192.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.lp = icmp slt i32 %.pre191.a, %.pre192.a
  br i1 %i.lp, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103, label %bb.bg

bb.bg:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit97
  %i.lq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %15, ptr noundef nonnull @.str.362, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit100 unwind label %bb.bm ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit100:         ; preds = %bb.bg
  %.pre193.a = load i32, ptr %i.hp, align 8, !tbaa !227
  %.pre194.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.lr = icmp slt i32 %.pre193.a, %.pre194.a
  br i1 %i.lr, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103, label %bb.bh

bb.bh:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit100
  %i.ls = load ptr, ptr %i.h, align 8, !tbaa !1270, !nonnull !199, !align !339 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 40
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !113
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 48
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !115
  %i.lx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %15, ptr noundef %i.lu, i64 noundef %i.lw)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103 unwind label %bb.bm ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit97, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit100, %bb.bh
  %i.ly = load ptr, ptr %18, align 8, !tbaa !113  ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ma = icmp eq ptr %i.ly, %i.lz
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103
  %i.mb = load i64, ptr %i.lz, align 8, !tbaa !114
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mc) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #40
  %i.md = load ptr, ptr %16, align 8, !tbaa !113  ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.hs
  br i1 %i.me, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.mf = load i64, ptr %i.hs, align 8, !tbaa !114
  %i.mg = add i64 %i.mf, 1
  call void @_ZdlPvm(ptr noundef %i.md, i64 noundef %i.mg) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %15) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %bb.bp

bb.bi:                                            ; preds = %bb.ai
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bj:                                            ; preds = %_ZNK4crow13SocketAdaptor15remote_endpointEv.exit, %_ZN4crow6loggerlsIA10_cEERS0_RKT_.exit
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bk:                                            ; preds = %bb.av, %bb.aw, %bb.am, %bb.an, %bb.ap, %bb.ao, %bb.at, %bb.as, %bb.ar, %bb.az, %bb.ay
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bl:                                            ; preds = %bb.be, %.noexc.i.i
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

bb.bm:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %i.ml = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mm = load ptr, ptr %18, align 8, !tbaa !113  ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.mo = icmp eq ptr %i.mm, %i.mn
  br i1 %i.mo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.bm
  %i.mp = load i64, ptr %i.mn, align 8, !tbaa !114
  %i.mq = add i64 %i.mp, 1
  call void @_ZdlPvm(ptr noundef %i.mm, i64 noundef %i.mq) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.bl
  %.pn22 = phi { ptr, i32 } [ %i.mk, %bb.bl ], [ %i.ml, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %i.ml, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #40
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %bb.bk
  %.pn22.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mj, %bb.bk ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ] ; 2 uses
  %i.mr = load ptr, ptr %16, align 8, !tbaa !113  ; 2 uses
  %i.ms = icmp eq ptr %i.mr, %i.hs
  br i1 %i.ms, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.bn
  %i.mt = load i64, ptr %i.hs, align 8, !tbaa !114
  %i.mu = add i64 %i.mt, 1
  call void @_ZdlPvm(ptr noundef %i.mr, i64 noundef %i.mu) #41
  br label %.body

.body:                                            ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113, %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn22.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.mi, %bb.bj ], [ %.pn22.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ], [ %.pn22.pn.pn.pn.pn.pn, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  br label %bb.bo

bb.bo:                                            ; preds = %.body, %bb.bi
  %.pn22.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn.pn.pn.pn.pn, %.body ], [ %i.mh, %bb.bi ]
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %15) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %common.resume

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %bb.ag
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 5121 ; 2 uses
  store i8 0, ptr %i.mv, align 1, !tbaa !1268
  br i1 %.017, label %bb.da, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 4624 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 4728 ; 4 uses
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 4744 ; 5 uses
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !197 ; 2 uses
  %.not.i116 = icmp eq ptr %i.mz, null
  br i1 %.not.i116, label %_ZNSt8functionIFvvEEaSEDn.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.na = invoke noundef zeroext i1 %i.mz(ptr noundef nonnull align 8 dereferenceable(32) %i.mx, ptr noundef nonnull align 8 dereferenceable(32) %i.mx, i32 noundef 3)
          to label %bb.bs unwind label %bb.bt     ; 0 uses

bb.bs:                                            ; preds = %bb.br
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.my, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEaSEDn.exit

bb.bt:                                            ; preds = %bb.br
  %i.nb = landingpad { ptr, i32 }
          catch ptr null
  %i.nc = extractvalue { ptr, i32 } %i.nb, 0
  call void @__clang_call_terminate(ptr %i.nc) #42
  unreachable

_ZNSt8functionIFvvEEaSEDn.exit:                   ; preds = %bb.bq, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !2949)
  %i.nd = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !1006, !noalias !2949 ; 3 uses
  store ptr %i.nf, ptr %i.nd, align 8, !tbaa !234, !alias.scope !2949
  %i.ng = icmp eq ptr %i.nf, null
  br i1 %i.ng, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt8functionIFvvEEaSEDn.exit
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 8 ; 2 uses
  %i.ni = load atomic i32, ptr %i.nh monotonic, align 8, !noalias !2949
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bw, %bb.bu
  %.06.i.i.i.i.i = phi i32 [ %i.ni, %bb.bu ], [ %i.nm, %bb.bw ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nj = add nsw i32 %.06.i.i.i.i.i, 1
  %i.nk = cmpxchg weak ptr %i.nh, i32 %.06.i.i.i.i.i, i32 %i.nj acq_rel monotonic, align 8, !noalias !2949 ; 2 uses
  %i.nl = extractvalue { i32, i1 } %i.nk, 1
  %i.nm = extractvalue { i32, i1 } %i.nk, 0
  br i1 %i.nl, label %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE16shared_from_thisEv.exit, label %bb.bv, !llvm.loop !77

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.bv, %_ZNSt8functionIFvvEEaSEDn.exit
  %i.nn = call ptr @__cxa_allocate_exception(i64 8) #40, !noalias !2949 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.nn, align 8, !tbaa !229, !noalias !2949
  call void @__cxa_throw(ptr nonnull %i.nn, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #39, !noalias !2949
  unreachable

_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE16shared_from_thisEv.exit: ; preds = %bb.bw
  %i.no = load ptr, ptr %0, align 8, !tbaa !1226, !noalias !2949 ; 2 uses
  store ptr %i.no, ptr %19, align 16, !tbaa !1182, !alias.scope !2949
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #40
  store ptr %i.no, ptr %20, align 16, !tbaa !1182
  %i.np = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.nq = load ptr, ptr %i.nd, align 8, !tbaa !234 ; 3 uses
  store ptr %i.nq, ptr %i.np, align 8, !tbaa !234
  %.not.i.i.i117 = icmp eq ptr %i.nq, null
  br i1 %.not.i.i.i117, label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJ17ExampleMiddlewareEEEJS4_EEEEC2ERKS7_.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE16shared_from_thisEv.exit
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8 ; 3 uses
  %i.ns = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i118 = icmp eq i8 %i.ns, 0
  br i1 %.not.i.i.i.i118, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.nt = load i32, ptr %i.nr, align 4, !tbaa !200
  %i.nu = add nsw i32 %i.nt, 1
  store i32 %i.nu, ptr %i.nr, align 4, !tbaa !200
  br label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJ17ExampleMiddlewareEEEJS4_EEEEC2ERKS7_.exit

bb.bz:                                            ; preds = %bb.bx
  %i.nv = atomicrmw volatile add ptr %i.nr, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJ17ExampleMiddlewareEEEJS4_EEEEC2ERKS7_.exit

_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJ17ExampleMiddlewareEEEJS4_EEEEC2ERKS7_.exit: ; preds = %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE16shared_from_thisEv.exit, %bb.by, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.nw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.nw, align 8
  %i.nx = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #43
          to label %.noexc121 unwind label %bb.cp ; 2 uses

.noexc121:                                        ; preds = %_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJ17ExampleMiddlewareEEEJS4_EEEEC2ERKS7_.exit
  %i.ny = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 4760 ; 2 uses
  %i.oa = load <2 x ptr>, ptr %20, align 16, !tbaa !119
  store ptr null, ptr %i.np, align 8, !tbaa !234
  store <2 x ptr> %i.oa, ptr %i.nx, align 8, !tbaa !119
  store ptr %i.nx, ptr %3, align 16, !tbaa !119
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.nz, i64 16, i1 false), !tbaa.struct !118
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.nz, align 8, !tbaa !114
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 4776 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 4784
  %i.od = load <2 x ptr>, ptr %i.ob, align 8, !tbaa !119
  %i.oe = load ptr, ptr %i.ob, align 8, !tbaa !119 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbvEZN4crow10ConnectionINS1_13SocketAdaptorENS1_4CrowIJ17ExampleMiddlewareEEEJS5_EE6handleEvEUlvE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.ob, align 8, !tbaa !119
  store <2 x ptr> %i.od, ptr %i.ny, align 16, !tbaa !119
  store ptr @_ZNSt17_Function_handlerIFbvEZN4crow10ConnectionINS1_13SocketAdaptorENS1_4CrowIJ17ExampleMiddlewareEEEJS5_EE6handleEvEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.oc, align 8, !tbaa !119
  %.not.i.i119 = icmp eq ptr %i.oe, null
  br i1 %.not.i.i119, label %_ZZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS3_EE6handleEvENUlvE_D2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %.noexc121
  %i.of = invoke noundef zeroext i1 %i.oe(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS3_EE6handleEvENUlvE_D2Ev.exit unwind label %bb.cb ; 0 uses

bb.cb:                                            ; preds = %bb.ca
  %i.og = landingpad { ptr, i32 }
          catch ptr null
  %i.oh = extractvalue { ptr, i32 } %i.og, 0
  call void @__clang_call_terminate(ptr %i.oh) #42
  unreachable

_ZZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS3_EE6handleEvENUlvE_D2Ev.exit: ; preds = %bb.ca, %.noexc121
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %.pre195.a = load ptr, ptr %i.k, align 8, !tbaa !1237 ; 2 uses
  %.pre196.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #40
  %i.oi = icmp slt i32 %.pre196.a, 1
  br i1 %i.oi, label %bb.cc, label %bb.cg

bb.cc:                                            ; preds = %_ZZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS3_EE6handleEvENUlvE_D2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %2)
          to label %.noexc129 unwind label %bb.cr

.noexc129:                                        ; preds = %bb.cc
  %i.oj = getelementptr inbounds nuw i8, ptr %2, i64 376 ; 2 uses
  store i32 0, ptr %i.oj, align 8, !tbaa !227
  %i.ok = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %.not.i.i.i.i124 = icmp sgt i32 %i.ok, 0
  br i1 %.not.i.i.i.i124, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit.i.i.i128, label %bb.cd

bb.cd:                                            ; preds = %.noexc129
  %i.ol = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %2, ptr noundef nonnull @.str.602, i64 noundef 12)
          to label %_ZN4crow6loggerlsIA13_cEERS0_RKT_.exit.i.i.i125 unwind label %bb.cf ; 0 uses

_ZN4crow6loggerlsIA13_cEERS0_RKT_.exit.i.i.i125:  ; preds = %bb.cd
  %.pre.i.i.i126 = load i32, ptr %i.oj, align 8, !tbaa !227
  %.pre4.i.i.i127 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
end_hunk_3
begin_hunk_4_@_ZNK4asio6detail23reactive_socket_serviceINS_2ip3tcpEE15remote_endpointERKNS4_19implementation_typeERSt10error_code:bb.a
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.41.0..sroa_idx.i.i.i, align 8, !tbaa !202
  call void @_ZN4asio6detail14do_throw_errorERKSt10error_code(ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %_ZN4asio2ip14basic_endpointINS0_3tcpEE6resizeEm.exit

_ZN4asio2ip14basic_endpointINS0_3tcpEE6resizeEm.exit: ; preds = %bb.c, %_ZN4asio6detail11throw_errorERKSt10error_code.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) %5, i64 28, i1 false), !tbaa.struct !230
  br label %bb.g

bb.g:                                             ; preds = %_ZN4asio2ip14basic_endpointINS0_3tcpEE6resizeEm.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4asio6detail10socket_ops11getpeernameEiPvPmbRSt10error_code(i32 noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = icmp eq i32 %0, -1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, !prof !116

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #40
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #40 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #40
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit: ; preds = %bb.b, %bb.c, %bb.d
  store i32 9, ptr %4, align 8, !tbaa !200
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.49.0..sroa_idx, align 8, !tbaa !202
  br label %_ZN4asio6detail10socket_ops14get_last_errorERSt10error_codeb.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.g = load i64, ptr %2, align 8, !tbaa !111
  %i.h = trunc i64 %i.g to i32
  store i32 %i.h, ptr %i.a, align 4, !tbaa !200
  %i.i = call noundef i32 @getpeername(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %i.a) #40 ; 2 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !200
  %i.k = zext i32 %i.j to i64
  store i64 %i.k, ptr %2, align 8, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %4, align 8, !tbaa !209
  br label %_ZN4asio6detail10socket_ops14get_last_errorERSt10error_codeb.exit

bb.g:                                             ; preds = %bb.e
  %i.l = tail call ptr @__errno_location() #44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !200
  %i.n = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.h, label %_ZN4asio5error19get_system_categoryEv.exit.i, !prof !116

bb.h:                                             ; preds = %bb.g
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #40
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %_ZN4asio5error19get_system_categoryEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #40 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #40
  br label %_ZN4asio5error19get_system_categoryEv.exit.i

_ZN4asio5error19get_system_categoryEv.exit.i:     ; preds = %bb.i, %bb.h, %bb.g
  store i32 %i.m, ptr %4, align 8, !tbaa !200
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !202
  br label %_ZN4asio6detail10socket_ops14get_last_errorERSt10error_codeb.exit

_ZN4asio6detail10socket_ops14get_last_errorERSt10error_codeb.exit: ; preds = %_ZN4asio5error19get_system_categoryEv.exit.i, %bb.f, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit
  %.0 = phi i32 [ -1, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit ], [ 0, %bb.f ], [ %i.i, %_ZN4asio5error19get_system_categoryEv.exit.i ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @getpeername(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow6Router14handle_upgradeIRNS_13SocketAdaptorEEEvRKNS_7requestERNS_8responseEOT_(ptr noundef nonnull align 8 dereferenceable(3656) %0, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef nonnull align 8 dereferenceable(88) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"struct.crow::routing_handle_result", align 8 ; 5 uses
  %6 = alloca %"struct.crow::routing_handle_result", align 8 ; 5 uses
  %7 = alloca %"class.crow::logger", align 8      ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %9 = alloca %"struct.crow::response", align 8   ; 20 uses
  %10 = alloca %"class.crow::logger", align 8     ; 9 uses
  %11 = alloca %"struct.crow::response", align 8  ; 20 uses
  %12 = alloca %"class.crow::logger", align 8     ; 9 uses
  %13 = alloca %"struct.crow::response", align 8  ; 20 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.crow::logger", align 8     ; 13 uses
  %i.b = load i8, ptr %1, align 8, !tbaa !1037    ; 2 uses
  %i.c = icmp sgt i8 %i.b, 33
  br i1 %i.c, label %bb.br, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.ptr175 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = sext i8 %i.b to i64
  %i.e = getelementptr inbounds nuw [104 x i8], ptr %.ptr175, i64 %i.d ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  call void @_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"struct.crow::routing_handle_result") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 noundef 0, ptr noundef null, ptr noundef null)
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1119 ; 6 uses
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %.preheader, label %bb.ai

.preheader:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %.critedge

bb.c:                                             ; preds = %.critedge
  %.056.add = add nuw nsw i64 %.056.idx176, 104   ; 2 uses
  %.not59 = icmp eq i64 %.056.add, 3576
  br i1 %.not59, label %.critedge73, label %.critedge

.critedge:                                        ; preds = %.preheader, %bb.c
  %.056.idx176 = phi i64 [ 40, %.preheader ], [ %.056.add, %bb.c ] ; 2 uses
  %.056.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.056.idx176
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.k = getelementptr inbounds nuw i8, ptr %.056.ptr, i64 24 ; 2 uses
  call void @_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"struct.crow::routing_handle_result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.k, i64 noundef 0, ptr noundef null, ptr noundef null)
  %i.l = load i64, ptr %i.j, align 8, !tbaa !1119
  %.not60 = icmp eq i64 %i.l, 0
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br i1 %.not60, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.m = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %7)
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 376 ; 4 uses
  store i32 0, ptr %i.o, align 8, !tbaa !227
  %i.p = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %.not.i = icmp sgt i32 %i.p, 0
  br i1 %.not.i, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef nonnull @.str.525, i64 noundef 20)
          to label %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit:           ; preds = %bb.f
  %.pre189.a = load i32, ptr %i.o, align 8, !tbaa !227
  %.pre190.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.r = icmp slt i32 %.pre189.a, %.pre190.a
  br i1 %i.r, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !113
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !115
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef %i.s, i64 noundef %i.u)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.g
  %.pre191.a = load i32, ptr %i.o, align 8, !tbaa !227
  %.pre192.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.w = icmp slt i32 %.pre191.a, %.pre192.a
  br i1 %i.w, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef nonnull @.str.362, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.e, %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  %i.y = load i8, ptr %1, align 8, !tbaa !1037    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2957)
  %i.z = icmp slt i8 %i.y, 34
  br i1 %i.z, label %bb.i, label %bb.m, !prof !501

bb.i:                                             ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.aa = sext i8 %i.y to i64
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !481, !noalias !2957 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ae, ptr %8, align 8, !tbaa !109, !alias.scope !2957
  %17 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2957
  store i64 %17, ptr %i.a, align 8, !tbaa !111, !noalias !2957
  %18 = icmp ugt i64 %17, 15
  br i1 %18, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.i
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc79.a unwind label %bb.p ; 2 uses

.noexc79.a:                                       ; preds = %.noexc.i.i
  store ptr %i.af, ptr %8, align 8, !tbaa !113, !alias.scope !2957
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !2957
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !114, !alias.scope !2957
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc79.a, %bb.i
  %i.ah = phi ptr [ %i.af, %.noexc79.a ], [ %i.ae, %bb.i ] ; 2 uses
  switch i64 %17, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ai = load i8, ptr %i.ad, align 1, !tbaa !114
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !114
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %i.ad, i64 %17, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !2957 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !115, !alias.scope !2957
  %i.al = load ptr, ptr %8, align 8, !tbaa !113, !alias.scope !2957
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2957
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

bb.m:                                             ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !2957
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.527, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc80 unwind label %bb.p

.noexc80:                                         ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !2957
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit: ; preds = %.noexc80, %bb.l
  %i.an = load i32, ptr %i.o, align 8, !tbaa !227
  %i.ao = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %.not.i81 = icmp slt i32 %i.an, %i.ao
  br i1 %.not.i81, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83, label %bb.n

bb.n:                                             ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit
  %i.ap = load ptr, ptr %8, align 8, !tbaa !113
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !115
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83 unwind label %bb.q ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit, %bb.n
  %i.at = load ptr, ptr %8, align 8, !tbaa !113   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !114
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %bb.s

bb.o:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.p:                                             ; preds = %bb.m, %.noexc.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.q:                                             ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %8, align 8, !tbaa !113   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.q
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !114
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.p
  %.pn = phi { ptr, i32 } [ %i.az, %bb.p ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %i.ba, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ %i.ay, %bb.o ]
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  store i32 405, ptr %9, align 8, !tbaa !467
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !109
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.bi, align 8, !tbaa !115
  store i8 0, ptr %i.bh, align 8, !tbaa !114
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !468
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  store i64 1, ptr %i.bl, align 8, !tbaa !469
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bn, align 8, !tbaa !438
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 168 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.bo, i8 0, i64 19, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bp, i8 0, i64 64, i1 false)
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !109
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 176
  store i64 0, ptr %i.bs, align 8, !tbaa !115
  store i8 0, ptr %i.br, align 8, !tbaa !114
  %i.bt = call noundef nonnull align 8 dereferenceable(352) ptr @_ZN4crow8responseaSEOS0_(ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef nonnull align 8 dereferenceable(352) %9) #40 ; 0 uses
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !113 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.br
  br i1 %i.bv, label %_ZN4crow8response16static_file_infoD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.s
  %i.bw = load i64, ptr %i.br, align 8, !tbaa !114
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #41
  br label %_ZN4crow8response16static_file_infoD2Ev.exit.i

_ZN4crow8response16static_file_infoD2Ev.exit.i:   ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !197 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN4crow8response16static_file_infoD2Ev.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 136 ; 2 uses
  %i.cb = invoke noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.t, %_ZN4crow8response16static_file_infoD2Ev.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !197 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.cf, null
  br i1 %.not.i1.i, label %_ZNSt14_Function_baseD2Ev.exit2.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.cg = invoke noundef zeroext i1 %i.cf(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i:                ; preds = %bb.v, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.cj = load ptr, ptr %i.bm, align 8, !tbaa !470 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.ck, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.cj, %_ZNSt14_Function_baseD2Ev.exit2.i ] ; 6 uses
  %i.ck = load ptr, ptr %.06.i.i.i, align 8, !tbaa !246 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !113 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !114
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !113 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !114
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #41
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #41
  %.not.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.cx = load ptr, ptr %i.bj, align 8, !tbaa !468
  %i.cy = load i64, ptr %i.bl, align 8, !tbaa !469
  %i.cz = shl i64 %i.cy, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cx, i8 0, i64 %i.cz, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.da = load ptr, ptr %i.bj, align 8, !tbaa !468 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.bk
  br i1 %i.db, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i
  %i.dc = load i64, ptr %i.bl, align 8, !tbaa !469
  %i.dd = shl i64 %i.dc, 3
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #41
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, %bb.x
  %i.de = load ptr, ptr %i.bg, align 8, !tbaa !113 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.bh
  br i1 %i.df, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit
  %i.dg = load i64, ptr %i.bh, align 8, !tbaa !114
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @_ZN4crow8response3endEv(ptr noundef nonnull align 8 dereferenceable(352) %2)
  br label %bb.br

.critedge73:                                      ; preds = %bb.c
  %i.di = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.dj = icmp slt i32 %i.di, 2
  br i1 %i.dj, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %.critedge73
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %10)
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 376 ; 2 uses
  store i32 1, ptr %i.dk, align 8, !tbaa !227
  %i.dl = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %.not.i87 = icmp sgt i32 %i.dl, 1
  br i1 %.not.i87, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit91, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %10, ptr noundef nonnull @.str.521, i64 noundef 19)
          to label %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit unwind label %bb.ab ; 0 uses

_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit:           ; preds = %bb.z
  %.pre193 = load i32, ptr %i.dk, align 8, !tbaa !227
  %.pre194 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.dn = icmp slt i32 %.pre193, %.pre194
  br i1 %i.dn, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit91, label %bb.aa

bb.aa:                                            ; preds = %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit
  %i.do = load ptr, ptr %i.g, align 8, !tbaa !113
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 48
end_hunk_4
