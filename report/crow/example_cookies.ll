Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example_cookies?download=true
inline.NumInlined: 11830
inline.NumDeleted: 4570
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN4crow6Router14handle_initialERNS_7requestERNS_8responseE:_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i362: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i360, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i361
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i358, i64 noundef 80) #41
  %.not.i.i.i363 = icmp eq ptr %i.sb, null
  br i1 %.not.i.i.i363, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i364, label %.lr.ph.i.i.i357, !llvm.loop !1

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i364: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i362, %_ZNSt14_Function_baseD2Ev.exit2.i256
  %i.so = load ptr, ptr %i.ra, align 8, !tbaa !437
  %i.sp = load i64, ptr %i.rc, align 8, !tbaa !438
  %i.sq = shl i64 %i.sp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.so, i8 0, i64 %i.sq, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rd, i8 0, i64 16, i1 false)
  %i.sr = load ptr, ptr %i.ra, align 8, !tbaa !437 ; 2 uses
  %i.ss = icmp eq ptr %i.sr, %i.rb
  br i1 %i.ss, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit367, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i364
  %i.st = load i64, ptr %i.rc, align 8, !tbaa !438
  %i.su = shl i64 %i.st, 3
  call void @_ZdlPvm(ptr noundef %i.sr, i64 noundef %i.su) #41
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit367

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit367: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i364, %bb.cc
  %i.sv = load ptr, ptr %i.qx, align 8, !tbaa !92 ; 2 uses
  %i.sw = icmp eq ptr %i.sv, %i.qy
  br i1 %i.sw, label %_ZN4crow8responseD2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i257: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit367
  %i.sx = load i64, ptr %i.qy, align 8, !tbaa !93
  %i.sy = add i64 %i.sx, 1
  call void @_ZdlPvm(ptr noundef %i.sv, i64 noundef %i.sy) #41
  br label %_ZN4crow8responseD2Ev.exit260

_ZN4crow8responseD2Ev.exit260:                    ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit367, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i257
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #40
  invoke void @_ZN4crow8response3endEv(ptr noundef nonnull align 8 dereferenceable(352) %3)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.invoke
  store i8 %i.f, ptr %i.r, align 8, !tbaa !1013
  br label %bb.cd

bb.cd:                                            ; preds = %.sink.split, %_ZN4crow8responseD2Ev.exit260
  %i.sz = load ptr, ptr %10, align 8, !tbaa !92   ; 2 uses
  %i.ta = icmp eq ptr %i.sz, %i.fd
  br i1 %i.ta, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %bb.cd
  %i.tb = load i64, ptr %i.fd, align 8, !tbaa !93
  %i.tc = add i64 %i.tb, 1
  call void @_ZdlPvm(ptr noundef %i.sz, i64 noundef %i.tc) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %.critedge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %.pn124.pn.pn = phi { ptr, i32 } [ %.pn124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ], [ %.pn121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187 ], [ %.pn117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ], [ %.pn113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241 ], [ %.pn111, %bb.bw ], [ %i.ly, %bb.ax ], [ %.pn121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188 ], [ %.pn113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240 ], [ %lpad.loopexit.split-lp617, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.td = load ptr, ptr %10, align 8, !tbaa !92   ; 2 uses
  %i.te = icmp eq ptr %i.td, %i.fd
  br i1 %i.te, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  %i.tf = load i64, ptr %i.fd, align 8, !tbaa !93
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
  %i.tm = load ptr, ptr %i.i, align 8, !tbaa !940 ; 3 uses
  %i.tn = load ptr, ptr %i.j, align 8, !tbaa !941
  %i.to = load <2 x ptr>, ptr %i.tl, align 8, !tbaa !1015
  store <2 x ptr> %i.to, ptr %i.i, align 8, !tbaa !1015
  %i.tp = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !941
  store ptr %i.tq, ptr %i.j, align 8, !tbaa !941
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
  %i.tx = load i8, ptr %i.tw, align 8, !tbaa !1013
  store i8 %i.tx, ptr %i.r, align 8, !tbaa !1013
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %22) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  %i.ty = load i64, ptr %i.h, align 8, !tbaa !1011
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
  %i.uc = load i64, ptr %i.tz, align 8, !tbaa !1011
  %.not100 = icmp eq i64 %i.uc, 0
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %23) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  br i1 %.not100, label %bb.cg, label %bb.cj

bb.cj:                                            ; preds = %_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit272
  store i32 405, ptr %3, align 8, !tbaa !436
  store i8 1, ptr %i.g, align 8, !tbaa !1012
  %i.ud = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.ue = icmp slt i32 %i.ud, 1
  br i1 %i.ue, label %bb.ck, label %.critedge

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #40
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %24)
          to label %bb.cl unwind label %bb.da

bb.cl:                                            ; preds = %bb.ck
  %i.uf = getelementptr inbounds nuw i8, ptr %24, i64 376 ; 6 uses
  store i32 0, ptr %i.uf, align 8, !tbaa !194
  %i.ug = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %.not.i275 = icmp sgt i32 %i.ug, 0
  br i1 %.not.i275, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.uh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef nonnull @.str.358, i64 noundef 20)
          to label %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit unwind label %bb.db ; 0 uses

_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit:           ; preds = %bb.cm
  %.pre457.a = load i32, ptr %i.uf, align 8, !tbaa !194
  %.pre458.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.ui = icmp slt i32 %.pre457.a, %.pre458.a
  br i1 %i.ui, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.cn

bb.cn:                                            ; preds = %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit
  %i.uj = load ptr, ptr %i.tk, align 8, !tbaa !92
  %i.uk = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !94
  %i.um = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef %i.uj, i64 noundef %i.ul)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit279 unwind label %bb.db ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit279: ; preds = %bb.cn
  %.pre459.a = load i32, ptr %i.uf, align 8, !tbaa !194
  %.pre460.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.un = icmp slt i32 %.pre459.a, %.pre460.a
  br i1 %i.un, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.co

bb.co:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit279
  %i.uo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef nonnull @.str.359, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.db ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.cl, %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit279, %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !2037)
  %i.up = icmp slt i8 %i.f, 34
  br i1 %i.up, label %bb.cp, label %bb.ct, !prof !491

bb.cp:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.uq = and i64 %i.th, 4294967295
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.uq
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !450, !noalias !2037 ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  store ptr %i.ut, ptr %25, align 8, !tbaa !88, !alias.scope !2037
  %29 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.us) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2037
  store i64 %29, ptr %i.a, align 8, !tbaa !90, !noalias !2037
  %30 = icmp ugt i64 %29, 15
  br i1 %30, label %.noexc.i.i283, label %._crit_edge.i.i.i282

.noexc.i.i283:                                    ; preds = %bb.cp
  %i.uu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc286 unwind label %bb.dc ; 2 uses

.noexc286:                                        ; preds = %.noexc.i.i283
  store ptr %i.uu, ptr %25, align 8, !tbaa !92, !alias.scope !2037
  %i.uv = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !2037
  store i64 %i.uv, ptr %i.ut, align 8, !tbaa !93, !alias.scope !2037
  br label %._crit_edge.i.i.i282

._crit_edge.i.i.i282:                             ; preds = %.noexc286, %bb.cp
  %i.uw = phi ptr [ %i.uu, %.noexc286 ], [ %i.ut, %bb.cp ] ; 2 uses
  switch i64 %29, label %bb.cr [
    i64 1, label %bb.cq
    i64 0, label %bb.cs
  ]

bb.cq:                                            ; preds = %._crit_edge.i.i.i282
  %i.ux = load i8, ptr %i.us, align 1, !tbaa !93
  store i8 %i.ux, ptr %i.uw, align 1, !tbaa !93
  br label %bb.cs

bb.cr:                                            ; preds = %._crit_edge.i.i.i282
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uw, ptr nonnull align 1 %i.us, i64 %29, i1 false)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %._crit_edge.i.i.i282
  %i.uy = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !2037 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.uy, ptr %i.uz, align 8, !tbaa !94, !alias.scope !2037
  %i.va = load ptr, ptr %25, align 8, !tbaa !92, !alias.scope !2037
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 %i.uy
  store i8 0, ptr %i.vb, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2037
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit288

bb.ct:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !2037
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.361, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc287 unwind label %bb.dc

.noexc287:                                        ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !2037
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit288

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit288: ; preds = %.noexc287, %bb.cs
  %i.vc = load i32, ptr %i.uf, align 8, !tbaa !194
  %i.vd = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %.not.i289 = icmp slt i32 %i.vc, %i.vd
  br i1 %.not.i289, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit288
  %i.ve = load ptr, ptr %25, align 8, !tbaa !92
  %i.vf = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !94
  %i.vh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef %i.ve, i64 noundef %i.vg)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit291 unwind label %bb.dd ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit291: ; preds = %bb.cu
  %.pre461 = load i32, ptr %i.uf, align 8, !tbaa !194
  %.pre462 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.vi = icmp slt i32 %.pre461, %.pre462
  br i1 %i.vi, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit, label %bb.cv

bb.cv:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit291
  %i.vj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef nonnull @.str.360, i64 noundef 2)
          to label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit unwind label %bb.dd ; 0 uses

_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit:            ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit288, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit291, %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #40
  invoke void @_ZN4crow6Router9get_errorB5cxx11ERKNS_21routing_handle_resultE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(3656) %1, ptr noundef nonnull align 8 dereferenceable(137) %i.g)
          to label %bb.cw unwind label %bb.de

bb.cw:                                            ; preds = %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit
  %i.vk = load i32, ptr %i.uf, align 8, !tbaa !194
  %i.vl = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %.not.i294 = icmp slt i32 %i.vk, %i.vl
  br i1 %.not.i294, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit296, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.vm = load ptr, ptr %26, align 8, !tbaa !92
  %i.vn = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.vo = load i64, ptr %i.vn, align 8, !tbaa !94
  %i.vp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef %i.vm, i64 noundef %i.vo)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit296 unwind label %bb.df ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit296: ; preds = %bb.cw, %bb.cx
  %i.vq = load ptr, ptr %26, align 8, !tbaa !92   ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.vs = icmp eq ptr %i.vq, %i.vr
  br i1 %i.vs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297.a: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit296
  %i.vt = load i64, ptr %i.vr, align 8, !tbaa !93
  %i.vu = add i64 %i.vt, 1
  call void @_ZdlPvm(ptr noundef %i.vq, i64 noundef %i.vu) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.a: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit296, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297.a
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #40
  %i.vv = load ptr, ptr %25, align 8, !tbaa !92   ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.vx = icmp eq ptr %i.vv, %i.vw
  br i1 %i.vx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.a
  %i.vy = load i64, ptr %i.vw, align 8, !tbaa !93
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
  %i.wi = load ptr, ptr %26, align 8, !tbaa !92   ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.wk = icmp eq ptr %i.wi, %i.wj
  br i1 %i.wk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303: ; preds = %bb.df
  %i.wl = load i64, ptr %i.wj, align 8, !tbaa !93
  %i.wm = add i64 %i.wl, 1
  call void @_ZdlPvm(ptr noundef %i.wi, i64 noundef %i.wm) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303, %bb.de
  %.pn = phi { ptr, i32 } [ %i.wg, %bb.de ], [ %i.wh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303 ], [ %i.wh, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #40
  br label %bb.dg

bb.dg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, %bb.dd
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305 ], [ %i.wf, %bb.dd ] ; 2 uses
  %i.wn = load ptr, ptr %25, align 8, !tbaa !92   ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.wp = icmp eq ptr %i.wn, %i.wo
  br i1 %i.wp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %bb.dg
  %i.wq = load i64, ptr %i.wo, align 8, !tbaa !93
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
  store i32 404, ptr %3, align 8, !tbaa !436
  store i8 1, ptr %i.g, align 8, !tbaa !1012
  %i.ws = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.wt = icmp slt i32 %i.ws, 1
  br i1 %i.wt, label %bb.dk, label %.critedge

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #40
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %27)
          to label %bb.dl unwind label %bb.dr

bb.dl:                                            ; preds = %bb.dk
  %i.wu = getelementptr inbounds nuw i8, ptr %27, i64 376 ; 4 uses
  store i32 0, ptr %i.wu, align 8, !tbaa !194
  %i.wv = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %.not.i311 = icmp sgt i32 %i.wv, 0
  br i1 %.not.i311, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit319, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ww = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %27, ptr noundef nonnull @.str.353, i64 noundef 19)
          to label %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit313 unwind label %bb.ds ; 0 uses

_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit313:        ; preds = %bb.dm
  %.pre463 = load i32, ptr %i.wu, align 8, !tbaa !194
  %.pre464 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.wx = icmp slt i32 %.pre463, %.pre464
  br i1 %i.wx, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit319, label %bb.dn

bb.dn:                                            ; preds = %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit313
  %i.wy = load ptr, ptr %i.tk, align 8, !tbaa !92
  %i.wz = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !94
  %i.xb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %27, ptr noundef %i.wy, i64 noundef %i.xa)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316.a unwind label %bb.ds ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316.a: ; preds = %bb.dn
  %.pre465 = load i32, ptr %i.wu, align 8, !tbaa !194
  %.pre466 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.xc = icmp slt i32 %.pre465, %.pre466
  br i1 %i.xc, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit319, label %bb.do

bb.do:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316.a
  %i.xd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %27, ptr noundef nonnull @.str.360, i64 noundef 2)
          to label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit319 unwind label %bb.ds ; 0 uses

_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit319:         ; preds = %bb.dl, %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit313, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316.a, %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #40
  invoke void @_ZN4crow6Router9get_errorB5cxx11ERKNS_21routing_handle_resultE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(3656) %1, ptr noundef nonnull align 8 dereferenceable(137) %i.g)
          to label %bb.dp unwind label %bb.dt

bb.dp:                                            ; preds = %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit319
  %i.xe = load i32, ptr %i.wu, align 8, !tbaa !194
  %i.xf = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %.not.i320 = icmp slt i32 %i.xe, %i.xf
  br i1 %.not.i320, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit322, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.xg = load ptr, ptr %28, align 8, !tbaa !92
  %i.xh = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.xi = load i64, ptr %i.xh, align 8, !tbaa !94
  %i.xj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %27, ptr noundef %i.xg, i64 noundef %i.xi)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit322 unwind label %bb.du ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit322: ; preds = %bb.dp, %bb.dq
  %i.xk = load ptr, ptr %28, align 8, !tbaa !92   ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.xm = icmp eq ptr %i.xk, %i.xl
  br i1 %i.xm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit322
  %i.xn = load i64, ptr %i.xl, align 8, !tbaa !93
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
  %i.xt = load ptr, ptr %28, align 8, !tbaa !92   ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.xv = icmp eq ptr %i.xt, %i.xu
  br i1 %i.xv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %bb.du
  %i.xw = load i64, ptr %i.xu, align 8, !tbaa !93
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
  store i8 %i.f, ptr %i.r, align 8, !tbaa !1013
  br label %.critedge

.critedge:                                        ; preds = %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.a, %bb.ac, %_ZNSt6vectorImSaImEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, %bb.dx, %_ZN4crow8responseD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, %bb.dj
  ret void

bb.dy:                                            ; preds = %bb.cy, %bb.cz, %bb.di, %bb.dw, %bb.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, %bb.v, %bb.s, %bb.r
  %.pn133 = phi { ptr, i32 } [ %i.wa, %bb.cy ], [ %i.wb, %bb.cz ], [ %.pn131, %bb.v ], [ %i.cx, %bb.s ], [ %i.cw, %bb.r ], [ %.pn124.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266 ], [ %.pn107.pn.pn, %bb.dw ], [ %i.ua, %bb.ch ], [ %.pn.pn.pn.pn.pn, %bb.di ]
  call void @_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #40
  br label %bb.dz

bb.dz:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit142, %bb.dy
end_hunk_0
begin_hunk_1_@_ZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJNS_12CookieParserEEEEJS3_EE6handleEv:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !2206
  br label %.body

bb.ae:                                            ; preds = %bb.ac
  %i.ip = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !2206 ; 2 uses
  store ptr %i.ip, ptr %4, align 8, !tbaa !196, !noalias !2206
  %i.iq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8, !noalias !2206
  %i.ir = getelementptr i8, ptr %i.ip, i64 -24
  %i.is = load i64, ptr %i.ir, align 8
  %i.it = getelementptr inbounds i8, ptr %4, i64 %i.is
  store ptr %i.iq, ptr %i.it, align 8, !tbaa !196, !noalias !2206
  %i.iu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8, !noalias !2206
  store ptr %i.iu, ptr %i.ih, align 8, !tbaa !196, !noalias !2206
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.iv, align 8, !tbaa !196, !noalias !2206
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !92, !noalias !2206 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.iz = icmp eq ptr %i.ix, %i.iy
  br i1 %i.iz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.ae
  %i.ja = load i64, ptr %i.iy, align 8, !tbaa !93, !noalias !2206
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.jb) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.iv, align 8, !tbaa !196, !noalias !2206
  %i.jc = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jc) #40
  %i.jd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !2206 ; 2 uses
  store ptr %i.jd, ptr %4, align 8, !tbaa !196, !noalias !2206
  %i.je = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !2206
  %i.jf = getelementptr i8, ptr %i.jd, i64 -24
  %i.jg = load i64, ptr %i.jf, align 8
  %i.jh = getelementptr inbounds i8, ptr %4, i64 %i.jg
  store ptr %i.je, ptr %i.jh, align 8, !tbaa !196, !noalias !2206
  %i.ji = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ji, align 8, !tbaa !1026, !noalias !2206
  %i.jj = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.jj) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !2206
  %i.jk = load i32, ptr %i.ic, align 8, !tbaa !194
  %i.jl = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %.not.i64 = icmp slt i32 %i.jk, %i.jl
  br i1 %.not.i64, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.af

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.jm = load ptr, ptr %13, align 8, !tbaa !92
  %i.jn = load i64, ptr %i.ig, align 8, !tbaa !94
  %i.jo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef %i.jm, i64 noundef %i.jn)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.bd ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.af
  %.pre = load i32, ptr %i.ic, align 8, !tbaa !194
  %.pre182.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.jp = icmp slt i32 %.pre, %.pre182.a
  br i1 %i.jp, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ag

bb.ag:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.jq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull @.str.359, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.bd ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.ag
  %.pre183.a = load i32, ptr %i.ic, align 8, !tbaa !194
  %.pre184.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.jr = icmp slt i32 %.pre183.a, %.pre184.a
  br i1 %i.jr, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ah

bb.ah:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.js = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull %0)
          to label %_ZN4crow6loggerlsIPNS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJNS_12CookieParserEEEEJS5_EEEEERS0_RKT_.exit unwind label %bb.bd ; 0 uses

_ZN4crow6loggerlsIPNS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJNS_12CookieParserEEEEJS5_EEEEERS0_RKT_.exit: ; preds = %bb.ah
  %.pre185.a = load i32, ptr %i.ic, align 8, !tbaa !194
  %.pre186.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.jt = icmp slt i32 %.pre185.a, %.pre186.a
  br i1 %i.jt, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ai

bb.ai:                                            ; preds = %_ZN4crow6loggerlsIPNS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJNS_12CookieParserEEEEJS5_EEEEERS0_RKT_.exit
  %i.ju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull @.str.480, i64 noundef 6)
          to label %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit unwind label %bb.bd ; 0 uses

_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit:            ; preds = %bb.ai
  %.pre187.a = load i32, ptr %i.ic, align 8, !tbaa !194
  %.pre188.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.jv = icmp slt i32 %.pre187.a, %.pre188.a
  %i.jw = load ptr, ptr %i.bh, align 8, !tbaa !996, !nonnull !164, !align !308
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 248
  %i.jy = load i8, ptr %i.jx, align 8, !tbaa !1054
  %i.jz = add i8 %i.jy, 48                        ; 2 uses
  br i1 %i.jv, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.aj

bb.aj:                                            ; preds = %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.jz, ptr %i.d, align 1, !tbaa !93
  %i.ka = load ptr, ptr %12, align 8, !tbaa !196
  %i.kb = getelementptr i8, ptr %i.ka, i64 -24
  %i.kc = load i64, ptr %i.kb, align 8
  %i.kd = getelementptr inbounds i8, ptr %12, i64 %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !848
  %.not.i.i73 = icmp eq i64 %i.kf, 0
  br i1 %.not.i.i73, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit unwind label %bb.bd ; 0 uses

bb.al:                                            ; preds = %bb.aj
  %i.kh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %12, i8 noundef signext %i.jz)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit unwind label %bb.bd ; 0 uses

_ZN4crow6loggerlsIcEERS0_RKT_.exit:               ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre189.a = load i32, ptr %i.ic, align 8, !tbaa !194
  %.pre190.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.ki = icmp slt i32 %.pre189.a, %.pre190.a
  br i1 %i.ki, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.am

bb.am:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit
  %i.kj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull @.str.481, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78 unwind label %bb.bd ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78:          ; preds = %bb.am
  %.pre191.a = load i32, ptr %i.ic, align 8, !tbaa !194
  %.pre192.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.kk = icmp slt i32 %.pre191.a, %.pre192.a
  %i.kl = load ptr, ptr %i.bh, align 8, !tbaa !996, !nonnull !164, !align !308
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 249
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !1055
  %i.ko = add i8 %i.kn, 48                        ; 2 uses
  br i1 %i.kk, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.an

bb.an:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.ko, ptr %i.c, align 1, !tbaa !93
  %i.kp = load ptr, ptr %12, align 8, !tbaa !196
  %i.kq = getelementptr i8, ptr %i.kp, i64 -24
  %i.kr = load i64, ptr %i.kq, align 8
  %i.ks = getelementptr inbounds i8, ptr %12, i64 %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !848
  %.not.i.i80 = icmp eq i64 %i.ku, 0
  br i1 %.not.i.i80, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit84 unwind label %bb.bd ; 0 uses

bb.ap:                                            ; preds = %bb.an
  %i.kw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %12, i8 noundef signext %i.ko)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit84 unwind label %bb.bd ; 0 uses

_ZN4crow6loggerlsIcEERS0_RKT_.exit84:             ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.pre193.a = load i32, ptr %i.ic, align 8, !tbaa !194
  %.pre194.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.kx = icmp slt i32 %.pre193.a, %.pre194.a
  br i1 %i.kx, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.aq

bb.aq:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !93
  %i.ky = load ptr, ptr %12, align 8, !tbaa !196
  %i.kz = getelementptr i8, ptr %i.ky, i64 -24
  %i.la = load i64, ptr %i.kz, align 8
  %i.lb = getelementptr inbounds i8, ptr %12, i64 %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !848
  %.not.i.i86 = icmp eq i64 %i.ld, 0
  br i1 %.not.i.i86, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.le = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87 unwind label %bb.bd ; 0 uses

bb.as:                                            ; preds = %bb.aq
  %i.lf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %12, i8 noundef signext 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87 unwind label %bb.bd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90

_ZN4crow6loggerlsIcEERS0_RKT_.exit90:             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, %_ZN4crow6loggerlsIPNS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJNS_12CookieParserEEEEJS5_EEEEERS0_RKT_.exit, %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit, %_ZN4crow6loggerlsIcEERS0_RKT_.exit, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87, %_ZN4crow6loggerlsIcEERS0_RKT_.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  %i.lg = load ptr, ptr %i.bh, align 8, !tbaa !996, !nonnull !164, !align !308
  %i.lh = load i8, ptr %i.lg, align 8, !tbaa !921 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2207)
  %i.li = icmp slt i8 %i.lh, 34
  br i1 %i.li, label %bb.at, label %bb.ax, !prof !491

bb.at:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit90
  %i.lj = sext i8 %i.lh to i64
  %i.lk = and i64 %i.lj, 4294967295
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.lk
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !450, !noalias !2207 ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.ln, ptr %15, align 8, !tbaa !88, !alias.scope !2207
  %21 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lm) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2207
  store i64 %21, ptr %i.a, align 8, !tbaa !90, !noalias !2207
  %22 = icmp ugt i64 %21, 15
  br i1 %22, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.at
  %i.lo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc93 unwind label %bb.be  ; 2 uses

.noexc93:                                         ; preds = %.noexc.i.i
  store ptr %i.lo, ptr %15, align 8, !tbaa !92, !alias.scope !2207
  %i.lp = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !2207
  store i64 %i.lp, ptr %i.ln, align 8, !tbaa !93, !alias.scope !2207
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc93, %bb.at
  %i.lq = phi ptr [ %i.lo, %.noexc93 ], [ %i.ln, %bb.at ] ; 2 uses
  switch i64 %21, label %bb.av [
    i64 1, label %bb.au
    i64 0, label %bb.aw
  ]

bb.au:                                            ; preds = %._crit_edge.i.i.i
  %i.lr = load i8, ptr %i.lm, align 1, !tbaa !93
  store i8 %i.lr, ptr %i.lq, align 1, !tbaa !93
  br label %bb.aw

bb.av:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lq, ptr nonnull align 1 %i.lm, i64 %21, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %._crit_edge.i.i.i
  %i.ls = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !2207 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.ls, ptr %i.lt, align 8, !tbaa !94, !alias.scope !2207
  %i.lu = load ptr, ptr %15, align 8, !tbaa !92, !alias.scope !2207
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.ls
  store i8 0, ptr %i.lv, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2207
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

bb.ax:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit90
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !2207
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.361, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc94 unwind label %bb.be

.noexc94:                                         ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !2207
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit: ; preds = %.noexc94, %bb.aw
  %i.lw = load i32, ptr %i.ic, align 8, !tbaa !194
  %i.lx = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %.not.i95 = icmp slt i32 %i.lw, %i.lx
  br i1 %.not.i95, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103, label %bb.ay

bb.ay:                                            ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit
  %i.ly = load ptr, ptr %15, align 8, !tbaa !92
  %i.lz = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !94
  %i.mb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef %i.ly, i64 noundef %i.ma)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit97 unwind label %bb.bf ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit97: ; preds = %bb.ay
  %.pre195.a = load i32, ptr %i.ic, align 8, !tbaa !194
  %.pre196.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.mc = icmp slt i32 %.pre195.a, %.pre196.a
  br i1 %i.mc, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103, label %bb.az

bb.az:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit97
  %i.md = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull @.str.359, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit100 unwind label %bb.bf ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit100:         ; preds = %bb.az
  %.pre197.a = load i32, ptr %i.ic, align 8, !tbaa !194
  %.pre198.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.me = icmp slt i32 %.pre197.a, %.pre198.a
  br i1 %i.me, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103, label %bb.ba

bb.ba:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit100
  %i.mf = load ptr, ptr %i.bh, align 8, !tbaa !996, !nonnull !164, !align !308 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 40
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !92
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 48
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !94
  %i.mk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef %i.mh, i64 noundef %i.mj)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103 unwind label %bb.bf ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit97, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit100, %bb.ba
  %i.ml = load ptr, ptr %15, align 8, !tbaa !92   ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.mn = icmp eq ptr %i.ml, %i.mm
  br i1 %i.mn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103
  %i.mo = load i64, ptr %i.mm, align 8, !tbaa !93
  %i.mp = add i64 %i.mo, 1
  call void @_ZdlPvm(ptr noundef %i.ml, i64 noundef %i.mp) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  %i.mq = load ptr, ptr %13, align 8, !tbaa !92   ; 2 uses
  %i.mr = icmp eq ptr %i.mq, %i.if
  br i1 %i.mr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.ms = load i64, ptr %i.if, align 8, !tbaa !93
  %i.mt = add i64 %i.ms, 1
  call void @_ZdlPvm(ptr noundef %i.mq, i64 noundef %i.mt) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.bi

bb.bb:                                            ; preds = %bb.ab
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bc:                                            ; preds = %_ZN4crow17UnixSocketAdaptor15remote_endpointEv.exit, %_ZN4crow6loggerlsIA10_cEERS0_RKT_.exit
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bd:                                            ; preds = %bb.ao, %bb.ap, %bb.af, %bb.ag, %bb.ai, %bb.ah, %bb.am, %bb.al, %bb.ak, %bb.as, %bb.ar
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.be:                                            ; preds = %bb.ax, %.noexc.i.i
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

bb.bf:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %i.my = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mz = load ptr, ptr %15, align 8, !tbaa !92   ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.nb = icmp eq ptr %i.mz, %i.na
  br i1 %i.nb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.bf
  %i.nc = load i64, ptr %i.na, align 8, !tbaa !93
  %i.nd = add i64 %i.nc, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nd) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.be
  %.pn22 = phi { ptr, i32 } [ %i.mx, %bb.be ], [ %i.my, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %i.my, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %bb.bd
  %.pn22.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mw, %bb.bd ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ] ; 2 uses
  %i.ne = load ptr, ptr %13, align 8, !tbaa !92   ; 2 uses
  %i.nf = icmp eq ptr %i.ne, %i.if
  br i1 %i.nf, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.bg
  %i.ng = load i64, ptr %i.if, align 8, !tbaa !93
  %i.nh = add i64 %i.ng, 1
  call void @_ZdlPvm(ptr noundef %i.ne, i64 noundef %i.nh) #41
  br label %.body

.body:                                            ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113, %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn22.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ik, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.mv, %bb.bc ], [ %.pn22.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ], [ %.pn22.pn.pn.pn.pn.pn, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br label %bb.bh

bb.bh:                                            ; preds = %.body, %bb.bb
  %.pn22.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn.pn.pn.pn.pn, %.body ], [ %i.mu, %bb.bb ]
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %common.resume

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %bb.z
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 5121 ; 2 uses
  store i8 0, ptr %i.ni, align 1, !tbaa !991
  br i1 %.017, label %bb.co, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 4624 ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 4728 ; 4 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 4744 ; 5 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !162 ; 2 uses
  %.not.i116 = icmp eq ptr %i.nm, null
  br i1 %.not.i116, label %_ZNSt8functionIFvvEEaSEDn.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.nn = invoke noundef zeroext i1 %i.nm(ptr noundef nonnull align 8 dereferenceable(32) %i.nk, ptr noundef nonnull align 8 dereferenceable(32) %i.nk, i32 noundef 3)
          to label %bb.bl unwind label %bb.bm     ; 0 uses

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nl, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEaSEDn.exit

bb.bm:                                            ; preds = %bb.bk
  %i.no = landingpad { ptr, i32 }
          catch ptr null
  %i.np = extractvalue { ptr, i32 } %i.no, 0
  call void @__clang_call_terminate(ptr %i.np) #42
  unreachable

_ZNSt8functionIFvvEEaSEDn.exit:                   ; preds = %bb.bj, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !2208)
  %i.nq = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !889, !noalias !2208 ; 3 uses
  store ptr %i.ns, ptr %i.nq, align 8, !tbaa !201, !alias.scope !2208
  %i.nt = icmp eq ptr %i.ns, null
  br i1 %i.nt, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt8functionIFvvEEaSEDn.exit
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 8 ; 2 uses
  %i.nv = load atomic i32, ptr %i.nu monotonic, align 8, !noalias !2208
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bp, %bb.bn
  %.06.i.i.i.i.i = phi i32 [ %i.nv, %bb.bn ], [ %i.nz, %bb.bp ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nw = add nsw i32 %.06.i.i.i.i.i, 1
  %i.nx = cmpxchg weak ptr %i.nu, i32 %.06.i.i.i.i.i, i32 %i.nw acq_rel monotonic, align 8, !noalias !2208 ; 2 uses
  %i.ny = extractvalue { i32, i1 } %i.nx, 1
  %i.nz = extractvalue { i32, i1 } %i.nx, 0
  br i1 %i.ny, label %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJNS0_12CookieParserEEEEJS4_EEEE16shared_from_thisEv.exit, label %bb.bo, !llvm.loop !56

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.bo, %_ZNSt8functionIFvvEEaSEDn.exit
  %i.oa = call ptr @__cxa_allocate_exception(i64 8) #40, !noalias !2208 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.oa, align 8, !tbaa !196, !noalias !2208
  call void @__cxa_throw(ptr nonnull %i.oa, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #39, !noalias !2208
  unreachable

_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJNS0_12CookieParserEEEEJS4_EEEE16shared_from_thisEv.exit: ; preds = %bb.bp
  %i.ob = load ptr, ptr %0, align 8, !tbaa !891, !noalias !2208 ; 2 uses
  store ptr %i.ob, ptr %16, align 16, !tbaa !743, !alias.scope !2208
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #40
  store ptr %i.ob, ptr %17, align 16, !tbaa !743
  %i.oc = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.od = load ptr, ptr %i.nq, align 8, !tbaa !201 ; 3 uses
  store ptr %i.od, ptr %i.oc, align 8, !tbaa !201
  %.not.i.i.i117 = icmp eq ptr %i.od, null
  br i1 %.not.i.i.i117, label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJNS0_12CookieParserEEEEJS4_EEEEC2ERKS7_.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJNS0_12CookieParserEEEEJS4_EEEE16shared_from_thisEv.exit
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8 ; 3 uses
  %i.of = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i118 = icmp eq i8 %i.of, 0
  br i1 %.not.i.i.i.i118, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.og = load i32, ptr %i.oe, align 4, !tbaa !165
  %i.oh = add nsw i32 %i.og, 1
  store i32 %i.oh, ptr %i.oe, align 4, !tbaa !165
  br label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJNS0_12CookieParserEEEEJS4_EEEEC2ERKS7_.exit

bb.bs:                                            ; preds = %bb.bq
  %i.oi = atomicrmw volatile add ptr %i.oe, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJNS0_12CookieParserEEEEJS4_EEEEC2ERKS7_.exit

_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJNS0_12CookieParserEEEEJS4_EEEEC2ERKS7_.exit: ; preds = %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJNS0_12CookieParserEEEEJS4_EEEE16shared_from_thisEv.exit, %bb.br, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.oj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.oj, align 8
  %i.ok = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #43
          to label %.noexc121 unwind label %bb.cd ; 2 uses

.noexc121:                                        ; preds = %_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJNS0_12CookieParserEEEEJS4_EEEEC2ERKS7_.exit
  %i.ol = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 4760 ; 2 uses
  %i.on = load <2 x ptr>, ptr %17, align 16, !tbaa !99
  store ptr null, ptr %i.oc, align 8, !tbaa !201
  store <2 x ptr> %i.on, ptr %i.ok, align 8, !tbaa !99
  store ptr %i.ok, ptr %2, align 16, !tbaa !99
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.om, i64 16, i1 false), !tbaa.struct !98
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.om, align 8, !tbaa !93
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 4776 ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 4784
  %i.oq = load <2 x ptr>, ptr %i.oo, align 8, !tbaa !99
  %i.or = load ptr, ptr %i.oo, align 8, !tbaa !99 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbvEZN4crow10ConnectionINS1_17UnixSocketAdaptorENS1_4CrowIJNS1_12CookieParserEEEEJS5_EE6handleEvEUlvE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.oo, align 8, !tbaa !99
  store <2 x ptr> %i.oq, ptr %i.ol, align 16, !tbaa !99
  store ptr @_ZNSt17_Function_handlerIFbvEZN4crow10ConnectionINS1_17UnixSocketAdaptorENS1_4CrowIJNS1_12CookieParserEEEEJS5_EE6handleEvEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.op, align 8, !tbaa !99
  %.not.i.i119 = icmp eq ptr %i.or, null
  br i1 %.not.i.i119, label %_ZZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJNS_12CookieParserEEEEJS3_EE6handleEvENUlvE_D2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %.noexc121
  %i.os = invoke noundef zeroext i1 %i.or(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJNS_12CookieParserEEEEJS3_EE6handleEvENUlvE_D2Ev.exit unwind label %bb.bu ; 0 uses

bb.bu:                                            ; preds = %bb.bt
  %i.ot = landingpad { ptr, i32 }
          catch ptr null
  %i.ou = extractvalue { ptr, i32 } %i.ot, 0
  call void @__clang_call_terminate(ptr %i.ou) #42
  unreachable

_ZZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJNS_12CookieParserEEEEJS3_EE6handleEvENUlvE_D2Ev.exit: ; preds = %bb.bt, %.noexc121
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %.pre199.a = load ptr, ptr %i.bk, align 8, !tbaa !926 ; 2 uses
  %.pre200.a = load ptr, ptr %i.bh, align 8, !tbaa !996 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #40
  invoke void @_ZN4crow12CookieParser13before_handleERNS_7requestERNS_8responseERNS0_7contextE(ptr noundef nonnull align 1 dereferenceable(1) %.pre199.a, ptr noundef nonnull align 8 dereferenceable(280) %.pre200.a, ptr noundef nonnull align 8 dereferenceable(352) %i.nj, ptr noundef nonnull align 8 dereferenceable(80) %i.m)
          to label %.noexc124 unwind label %bb.cf

.noexc124:                                        ; preds = %_ZZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJNS_12CookieParserEEEEJS3_EE6handleEvENUlvE_D2Ev.exit
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 4722 ; 2 uses
  %i.ow = load i8, ptr %i.ov, align 2, !tbaa !447, !range !163, !noundef !164
  %i.ox = trunc nuw i8 %i.ow to i1
  br i1 %i.ox, label %bb.bv, label %_ZN4crow6detail22middleware_call_helperINS0_36middleware_call_criteria_only_globalELi0ENS0_7contextIJNS_12CookieParserEEEERSt5tupleIJS4_EEEENSt9enable_ifIXltT0_sr3std10tuple_sizeINSt16remove_referenceIT2_E4typeEEE5valueEbE4typeERKT_RSB_RNS_7requestERNS_8responseERT1_.exit126.thread

bb.bv:                                            ; preds = %.noexc124
  invoke void @_ZN4crow12CookieParser12after_handleERNS_7requestERNS_8responseERNS0_7contextE(ptr noundef nonnull align 1 dereferenceable(1) %.pre199.a, ptr noundef nonnull align 8 dereferenceable(280) %.pre200.a, ptr noundef nonnull align 8 dereferenceable(352) %i.nj, ptr noundef nonnull align 8 dereferenceable(80) %i.m)
          to label %_ZN4crow6detail22middleware_call_helperINS0_36middleware_call_criteria_only_globalELi0ENS0_7contextIJNS_12CookieParserEEEERSt5tupleIJS4_EEEENSt9enable_ifIXltT0_sr3std10tuple_sizeINSt16remove_referenceIT2_E4typeEEE5valueEbE4typeERKT_RSB_RNS_7requestERNS_8responseERT1_.exit126 unwind label %bb.cf

_ZN4crow6detail22middleware_call_helperINS0_36middleware_call_criteria_only_globalELi0ENS0_7contextIJNS_12CookieParserEEEERSt5tupleIJS4_EEEENSt9enable_ifIXltT0_sr3std10tuple_sizeINSt16remove_referenceIT2_E4typeEEE5valueEbE4typeERKT_RSB_RNS_7requestERNS_8responseERT1_.exit126: ; preds = %bb.bv
  %.pre201.a = load i8, ptr %i.ov, align 2, !tbaa !2209, !range !163
  %i.oy = trunc nuw i8 %.pre201.a to i1
  br i1 %i.oy, label %bb.ch, label %_ZN4crow6detail22middleware_call_helperINS0_36middleware_call_criteria_only_globalELi0ENS0_7contextIJNS_12CookieParserEEEERSt5tupleIJS4_EEEENSt9enable_ifIXltT0_sr3std10tuple_sizeINSt16remove_referenceIT2_E4typeEEE5valueEbE4typeERKT_RSB_RNS_7requestERNS_8responseERT1_.exit126.thread

_ZN4crow6detail22middleware_call_helperINS0_36middleware_call_criteria_only_globalELi0ENS0_7contextIJNS_12CookieParserEEEERSt5tupleIJS4_EEEENSt9enable_ifIXltT0_sr3std10tuple_sizeINSt16remove_referenceIT2_E4typeEEE5valueEbE4typeERKT_RSB_RNS_7requestERNS_8responseERT1_.exit126.thread: ; preds = %.noexc124, %_ZN4crow6detail22middleware_call_helperINS0_36middleware_call_criteria_only_globalELi0ENS0_7contextIJNS_12CookieParserEEEERSt5tupleIJS4_EEEENSt9enable_ifIXltT0_sr3std10tuple_sizeINSt16remove_referenceIT2_E4typeEEE5valueEbE4typeERKT_RSB_RNS_7requestERNS_8responseERT1_.exit126
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #40
  %i.oz = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.pa = load ptr, ptr %i.nq, align 8, !tbaa !201 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS5_S5_EEES6_INSA_14_Node_iteratorIS8_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_:bb.a
  %i.bk = load ptr, ptr %.0.us.i.i, align 8, !tbaa !214 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.bk, null
  br i1 %.not18.us.i.i, label %.critedge28, label %bb.j

bb.j:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !413 ; 2 uses
  %i.bn = urem i64 %i.bm, %i.au
  %.not19.us.i.i = icmp eq i64 %i.bn, %i.av
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %.critedge28, !llvm.loop !22

.split.i.i:                                       ; preds = %bb.h, %bb.l
  %i.bo = phi i64 [ %i.by, %bb.l ], [ %.pre26.i.i, %bb.h ]
  %.0.i.i = phi ptr [ %i.bw, %bb.l ], [ %i.bb, %bb.h ] ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.bq = icmp eq i64 %i.aq, %i.bo
  br i1 %i.bq, label %bb.k, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

bb.k:                                             ; preds = %.split.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !94
  %i.bt = icmp eq i64 %.fr22.i.i, %i.bs
  br i1 %i.bt, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i: ; preds = %bb.k
  %i.bu = load ptr, ptr %i.bp, align 8, !tbaa !92
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.be, ptr %i.bu, i64 %.fr22.i.i)
  %i.bv = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bv, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.k, %.split.i.i
  %i.bw = load ptr, ptr %.0.i.i, align 8, !tbaa !214 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.bw, null
  br i1 %.not18.i.i, label %.critedge28, label %bb.l

bb.l:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !413 ; 2 uses
  %i.bz = urem i64 %i.by, %i.au
  %.not19.i.i = icmp eq i64 %i.bz, %i.av
  br i1 %.not19.i.i, label %.split.i.i, label %.critedge28, !llvm.loop !22

.critedge28:                                      ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i, %bb.l, %bb.j, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i, %bb.g, %bb.f
  %i.ca = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.av, i64 noundef %i.aq, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %.critedge28
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.cb

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, %.lr.ph.split.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.i
  %i.cc = phi ptr [ %i.l, %.lr.ph.split.us ], [ %i.be, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i ], [ %i.be, %bb.i ], [ %i.l, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit ]
  %.sroa.037.0.ph = phi ptr [ %.sroa.033.055.us, %.lr.ph.split.us ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i ], [ %.0.us.i.i, %bb.i ], [ %.sroa.033.055, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit ]
  %i.cd = load ptr, ptr %i.p, align 8, !tbaa !92  ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.q
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread
  %i.cf = load i64, ptr %i.q, align 8, !tbaa !93
  %i.cg = add i64 %i.cf, 1
  tail call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #41
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ch = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.cc, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread ] ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.c
  br i1 %i.ci, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.cj = load i64, ptr %i.c, align 8, !tbaa !93
  %i.ck = add i64 %i.cj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #41
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #41
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge28, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i
  %.sroa.4.045 = phi i8 [ 0, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i ], [ 1, %.critedge28 ]
  %.sroa.037.044 = phi ptr [ %.sroa.037.0.ph, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i ], [ %i.ca, %.critedge28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.037.044, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.045, 1
  ret { ptr, i8 } %.fca.1.insert
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
  %i.b = load i8, ptr %1, align 8, !tbaa !921     ; 2 uses
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
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1011 ; 6 uses
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
  %i.l = load i64, ptr %i.j, align 8, !tbaa !1011
  %.not60 = icmp eq i64 %i.l, 0
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br i1 %.not60, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.m = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %7)
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 376 ; 4 uses
  store i32 0, ptr %i.o, align 8, !tbaa !194
  %i.p = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %.not.i = icmp sgt i32 %i.p, 0
  br i1 %.not.i, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef nonnull @.str.358, i64 noundef 20)
          to label %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit:           ; preds = %bb.f
  %.pre189.a = load i32, ptr %i.o, align 8, !tbaa !194
  %.pre190.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.r = icmp slt i32 %.pre189.a, %.pre190.a
  br i1 %i.r, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !92
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !94
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef %i.s, i64 noundef %i.u)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.g
  %.pre191.a = load i32, ptr %i.o, align 8, !tbaa !194
  %.pre192.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.w = icmp slt i32 %.pre191.a, %.pre192.a
  br i1 %i.w, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef nonnull @.str.359, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.e, %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  %i.y = load i8, ptr %1, align 8, !tbaa !921     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2219)
  %i.z = icmp slt i8 %i.y, 34
  br i1 %i.z, label %bb.i, label %bb.m, !prof !491

bb.i:                                             ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.aa = sext i8 %i.y to i64
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !450, !noalias !2219 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ae, ptr %8, align 8, !tbaa !88, !alias.scope !2219
  %17 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2219
  store i64 %17, ptr %i.a, align 8, !tbaa !90, !noalias !2219
  %18 = icmp ugt i64 %17, 15
  br i1 %18, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.i
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc79.a unwind label %bb.p ; 2 uses

.noexc79.a:                                       ; preds = %.noexc.i.i
  store ptr %i.af, ptr %8, align 8, !tbaa !92, !alias.scope !2219
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !2219
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !93, !alias.scope !2219
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc79.a, %bb.i
  %i.ah = phi ptr [ %i.af, %.noexc79.a ], [ %i.ae, %bb.i ] ; 2 uses
  switch i64 %17, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ai = load i8, ptr %i.ad, align 1, !tbaa !93
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !93
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %i.ad, i64 %17, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !2219 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !94, !alias.scope !2219
  %i.al = load ptr, ptr %8, align 8, !tbaa !92, !alias.scope !2219
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2219
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

bb.m:                                             ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !2219
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.361, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc80 unwind label %bb.p

.noexc80:                                         ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !2219
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit: ; preds = %.noexc80, %bb.l
  %i.an = load i32, ptr %i.o, align 8, !tbaa !194
  %i.ao = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %.not.i81 = icmp slt i32 %i.an, %i.ao
  br i1 %.not.i81, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83, label %bb.n

bb.n:                                             ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit
  %i.ap = load ptr, ptr %8, align 8, !tbaa !92
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !94
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83 unwind label %bb.q ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit, %bb.n
  %i.at = load ptr, ptr %8, align 8, !tbaa !92    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !93
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
  %i.bb = load ptr, ptr %8, align 8, !tbaa !92    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.q
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !93
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
  store i32 405, ptr %9, align 8, !tbaa !436
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !88
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.bi, align 8, !tbaa !94
  store i8 0, ptr %i.bh, align 8, !tbaa !93
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !437
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  store i64 1, ptr %i.bl, align 8, !tbaa !438
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bn, align 8, !tbaa !407
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 168 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.bo, i8 0, i64 19, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bp, i8 0, i64 64, i1 false)
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !88
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 176
  store i64 0, ptr %i.bs, align 8, !tbaa !94
  store i8 0, ptr %i.br, align 8, !tbaa !93
  %i.bt = call noundef nonnull align 8 dereferenceable(352) ptr @_ZN4crow8responseaSEOS0_(ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef nonnull align 8 dereferenceable(352) %9) #40 ; 0 uses
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !92 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.br
  br i1 %i.bv, label %_ZN4crow8response16static_file_infoD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.s
  %i.bw = load i64, ptr %i.br, align 8, !tbaa !93
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #41
  br label %_ZN4crow8response16static_file_infoD2Ev.exit.i

_ZN4crow8response16static_file_infoD2Ev.exit.i:   ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !162 ; 2 uses
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
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !162 ; 2 uses
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
  %i.cj = load ptr, ptr %i.bm, align 8, !tbaa !439 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.ck, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.cj, %_ZNSt14_Function_baseD2Ev.exit2.i ] ; 6 uses
  %i.ck = load ptr, ptr %.06.i.i.i, align 8, !tbaa !214 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !92 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !93
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !92 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !93
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #41
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #41
  %.not.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.cx = load ptr, ptr %i.bj, align 8, !tbaa !437
  %i.cy = load i64, ptr %i.bl, align 8, !tbaa !438
  %i.cz = shl i64 %i.cy, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cx, i8 0, i64 %i.cz, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.da = load ptr, ptr %i.bj, align 8, !tbaa !437 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.bk
  br i1 %i.db, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i
  %i.dc = load i64, ptr %i.bl, align 8, !tbaa !438
  %i.dd = shl i64 %i.dc, 3
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #41
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, %bb.x
  %i.de = load ptr, ptr %i.bg, align 8, !tbaa !92 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.bh
  br i1 %i.df, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit
  %i.dg = load i64, ptr %i.bh, align 8, !tbaa !93
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @_ZN4crow8response3endEv(ptr noundef nonnull align 8 dereferenceable(352) %2)
  br label %bb.br

.critedge73:                                      ; preds = %bb.c
  %i.di = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.dj = icmp slt i32 %i.di, 2
  br i1 %i.dj, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %.critedge73
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %10)
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 376 ; 2 uses
  store i32 1, ptr %i.dk, align 8, !tbaa !194
  %i.dl = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %.not.i87 = icmp sgt i32 %i.dl, 1
  br i1 %.not.i87, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit91, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %10, ptr noundef nonnull @.str.353, i64 noundef 19)
          to label %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit unwind label %bb.ab ; 0 uses

_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit:           ; preds = %bb.z
  %.pre193 = load i32, ptr %i.dk, align 8, !tbaa !194
  %.pre194 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.dn = icmp slt i32 %.pre193, %.pre194
  br i1 %i.dn, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit91, label %bb.aa

bb.aa:                                            ; preds = %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit
  %i.do = load ptr, ptr %i.g, align 8, !tbaa !92
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 48
end_hunk_2
begin_hunk_3_@_ZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJNS_12CookieParserEEEEJS3_EE6handleEv:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !2421
  br label %.body

bb.am:                                            ; preds = %bb.ak
  %i.jv = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !2421 ; 2 uses
  store ptr %i.jv, ptr %4, align 8, !tbaa !196, !noalias !2421
  %i.jw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8, !noalias !2421
  %i.jx = getelementptr i8, ptr %i.jv, i64 -24
  %i.jy = load i64, ptr %i.jx, align 8
  %i.jz = getelementptr inbounds i8, ptr %4, i64 %i.jy
  store ptr %i.jw, ptr %i.jz, align 8, !tbaa !196, !noalias !2421
  %i.ka = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8, !noalias !2421
  store ptr %i.ka, ptr %i.jn, align 8, !tbaa !196, !noalias !2421
  %i.kb = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.kb, align 8, !tbaa !196, !noalias !2421
  %i.kc = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !92, !noalias !2421 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.am
  %i.kg = load i64, ptr %i.ke, align 8, !tbaa !93, !noalias !2421
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kh) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.kb, align 8, !tbaa !196, !noalias !2421
  %i.ki = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ki) #40
  %i.kj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !2421 ; 2 uses
  store ptr %i.kj, ptr %4, align 8, !tbaa !196, !noalias !2421
  %i.kk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !2421
  %i.kl = getelementptr i8, ptr %i.kj, i64 -24
  %i.km = load i64, ptr %i.kl, align 8
  %i.kn = getelementptr inbounds i8, ptr %4, i64 %i.km
  store ptr %i.kk, ptr %i.kn, align 8, !tbaa !196, !noalias !2421
  %i.ko = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ko, align 8, !tbaa !1026, !noalias !2421
  %i.kp = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.kp) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !2421
  %i.kq = load i32, ptr %i.ji, align 8, !tbaa !194
  %i.kr = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %.not.i64 = icmp slt i32 %i.kq, %i.kr
  br i1 %.not.i64, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.ks = load ptr, ptr %15, align 8, !tbaa !92
  %i.kt = load i64, ptr %i.jm, align 8, !tbaa !94
  %i.ku = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef %i.ks, i64 noundef %i.kt)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.bl ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.an
  %.pre = load i32, ptr %i.ji, align 8, !tbaa !194
  %.pre182.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.kv = icmp slt i32 %.pre, %.pre182.a
  br i1 %i.kv, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ao

bb.ao:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.kw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull @.str.359, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.bl ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.ao
  %.pre183.a = load i32, ptr %i.ji, align 8, !tbaa !194
  %.pre184.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.kx = icmp slt i32 %.pre183.a, %.pre184.a
  br i1 %i.kx, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ap

bb.ap:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.ky = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull %0)
          to label %_ZN4crow6loggerlsIPNS_10ConnectionINS_13SocketAdaptorENS_4CrowIJNS_12CookieParserEEEEJS5_EEEEERS0_RKT_.exit unwind label %bb.bl ; 0 uses

_ZN4crow6loggerlsIPNS_10ConnectionINS_13SocketAdaptorENS_4CrowIJNS_12CookieParserEEEEJS5_EEEEERS0_RKT_.exit: ; preds = %bb.ap
  %.pre185.a = load i32, ptr %i.ji, align 8, !tbaa !194
  %.pre186.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.kz = icmp slt i32 %.pre185.a, %.pre186.a
  br i1 %i.kz, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.aq

bb.aq:                                            ; preds = %_ZN4crow6loggerlsIPNS_10ConnectionINS_13SocketAdaptorENS_4CrowIJNS_12CookieParserEEEEJS5_EEEEERS0_RKT_.exit
  %i.la = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull @.str.480, i64 noundef 6)
          to label %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit unwind label %bb.bl ; 0 uses

_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit:            ; preds = %bb.aq
  %.pre187.a = load i32, ptr %i.ji, align 8, !tbaa !194
  %.pre188.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.lb = icmp slt i32 %.pre187.a, %.pre188.a
  %i.lc = load ptr, ptr %i.bh, align 8, !tbaa !1164, !nonnull !164, !align !308
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 248
  %i.le = load i8, ptr %i.ld, align 8, !tbaa !1054
  %i.lf = add i8 %i.le, 48                        ; 2 uses
  br i1 %i.lb, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ar

bb.ar:                                            ; preds = %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.lf, ptr %i.d, align 1, !tbaa !93
  %i.lg = load ptr, ptr %14, align 8, !tbaa !196
  %i.lh = getelementptr i8, ptr %i.lg, i64 -24
  %i.li = load i64, ptr %i.lh, align 8
  %i.lj = getelementptr inbounds i8, ptr %14, i64 %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !848
  %.not.i.i73 = icmp eq i64 %i.ll, 0
  br i1 %.not.i.i73, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.lm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit unwind label %bb.bl ; 0 uses

bb.at:                                            ; preds = %bb.ar
  %i.ln = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %14, i8 noundef signext %i.lf)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit unwind label %bb.bl ; 0 uses

_ZN4crow6loggerlsIcEERS0_RKT_.exit:               ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre189.a = load i32, ptr %i.ji, align 8, !tbaa !194
  %.pre190.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.lo = icmp slt i32 %.pre189.a, %.pre190.a
  br i1 %i.lo, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.au

bb.au:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit
  %i.lp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull @.str.481, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78 unwind label %bb.bl ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78:          ; preds = %bb.au
  %.pre191.a = load i32, ptr %i.ji, align 8, !tbaa !194
  %.pre192.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.lq = icmp slt i32 %.pre191.a, %.pre192.a
  %i.lr = load ptr, ptr %i.bh, align 8, !tbaa !1164, !nonnull !164, !align !308
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 249
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !1055
  %i.lu = add i8 %i.lt, 48                        ; 2 uses
  br i1 %i.lq, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.av

bb.av:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.lu, ptr %i.c, align 1, !tbaa !93
  %i.lv = load ptr, ptr %14, align 8, !tbaa !196
  %i.lw = getelementptr i8, ptr %i.lv, i64 -24
  %i.lx = load i64, ptr %i.lw, align 8
  %i.ly = getelementptr inbounds i8, ptr %14, i64 %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !848
  %.not.i.i80 = icmp eq i64 %i.ma, 0
  br i1 %.not.i.i80, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit84 unwind label %bb.bl ; 0 uses

bb.ax:                                            ; preds = %bb.av
  %i.mc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %14, i8 noundef signext %i.lu)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit84 unwind label %bb.bl ; 0 uses

_ZN4crow6loggerlsIcEERS0_RKT_.exit84:             ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.pre193.a = load i32, ptr %i.ji, align 8, !tbaa !194
  %.pre194.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.md = icmp slt i32 %.pre193.a, %.pre194.a
  br i1 %i.md, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ay

bb.ay:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !93
  %i.me = load ptr, ptr %14, align 8, !tbaa !196
  %i.mf = getelementptr i8, ptr %i.me, i64 -24
  %i.mg = load i64, ptr %i.mf, align 8
  %i.mh = getelementptr inbounds i8, ptr %14, i64 %i.mg
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !848
  %.not.i.i86 = icmp eq i64 %i.mj, 0
  br i1 %.not.i.i86, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87 unwind label %bb.bl ; 0 uses

bb.ba:                                            ; preds = %bb.ay
  %i.ml = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %14, i8 noundef signext 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87 unwind label %bb.bl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87: ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90

_ZN4crow6loggerlsIcEERS0_RKT_.exit90:             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, %_ZN4crow6loggerlsIPNS_10ConnectionINS_13SocketAdaptorENS_4CrowIJNS_12CookieParserEEEEJS5_EEEEERS0_RKT_.exit, %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit, %_ZN4crow6loggerlsIcEERS0_RKT_.exit, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87, %_ZN4crow6loggerlsIcEERS0_RKT_.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #40
  %i.mm = load ptr, ptr %i.bh, align 8, !tbaa !1164, !nonnull !164, !align !308
  %i.mn = load i8, ptr %i.mm, align 8, !tbaa !921 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2422)
  %i.mo = icmp slt i8 %i.mn, 34
  br i1 %i.mo, label %bb.bb, label %bb.bf, !prof !491

bb.bb:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit90
  %i.mp = sext i8 %i.mn to i64
  %i.mq = and i64 %i.mp, 4294967295
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.mq
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !450, !noalias !2422 ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store ptr %i.mt, ptr %17, align 8, !tbaa !88, !alias.scope !2422
  %23 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ms) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2422
  store i64 %23, ptr %i.a, align 8, !tbaa !90, !noalias !2422
  %24 = icmp ugt i64 %23, 15
  br i1 %24, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.bb
  %i.mu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc93 unwind label %bb.bm  ; 2 uses

.noexc93:                                         ; preds = %.noexc.i.i
  store ptr %i.mu, ptr %17, align 8, !tbaa !92, !alias.scope !2422
  %i.mv = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !2422
  store i64 %i.mv, ptr %i.mt, align 8, !tbaa !93, !alias.scope !2422
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc93, %bb.bb
  %i.mw = phi ptr [ %i.mu, %.noexc93 ], [ %i.mt, %bb.bb ] ; 2 uses
  switch i64 %23, label %bb.bd [
    i64 1, label %bb.bc
    i64 0, label %bb.be
  ]

bb.bc:                                            ; preds = %._crit_edge.i.i.i
  %i.mx = load i8, ptr %i.ms, align 1, !tbaa !93
  store i8 %i.mx, ptr %i.mw, align 1, !tbaa !93
  br label %bb.be

bb.bd:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mw, ptr nonnull align 1 %i.ms, i64 %23, i1 false)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %._crit_edge.i.i.i
  %i.my = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !2422 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.my, ptr %i.mz, align 8, !tbaa !94, !alias.scope !2422
  %i.na = load ptr, ptr %17, align 8, !tbaa !92, !alias.scope !2422
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.my
  store i8 0, ptr %i.nb, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2422
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

bb.bf:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit90
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !2422
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.361, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc94 unwind label %bb.bm

.noexc94:                                         ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !2422
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit: ; preds = %.noexc94, %bb.be
  %i.nc = load i32, ptr %i.ji, align 8, !tbaa !194
  %i.nd = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %.not.i95 = icmp slt i32 %i.nc, %i.nd
  br i1 %.not.i95, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103, label %bb.bg

bb.bg:                                            ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit
  %i.ne = load ptr, ptr %17, align 8, !tbaa !92
  %i.nf = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !94
  %i.nh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef %i.ne, i64 noundef %i.ng)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit97 unwind label %bb.bn ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit97: ; preds = %bb.bg
  %.pre195.a = load i32, ptr %i.ji, align 8, !tbaa !194
  %.pre196.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.ni = icmp slt i32 %.pre195.a, %.pre196.a
  br i1 %i.ni, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103, label %bb.bh

bb.bh:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit97
  %i.nj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull @.str.359, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit100 unwind label %bb.bn ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit100:         ; preds = %bb.bh
  %.pre197.a = load i32, ptr %i.ji, align 8, !tbaa !194
  %.pre198.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.nk = icmp slt i32 %.pre197.a, %.pre198.a
  br i1 %i.nk, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103, label %bb.bi

bb.bi:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit100
  %i.nl = load ptr, ptr %i.bh, align 8, !tbaa !1164, !nonnull !164, !align !308 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 40
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !92
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 48
  %i.np = load i64, ptr %i.no, align 8, !tbaa !94
  %i.nq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef %i.nn, i64 noundef %i.np)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103 unwind label %bb.bn ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit97, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit100, %bb.bi
  %i.nr = load ptr, ptr %17, align 8, !tbaa !92   ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.nt = icmp eq ptr %i.nr, %i.ns
  br i1 %i.nt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103
  %i.nu = load i64, ptr %i.ns, align 8, !tbaa !93
  %i.nv = add i64 %i.nu, 1
  call void @_ZdlPvm(ptr noundef %i.nr, i64 noundef %i.nv) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #40
  %i.nw = load ptr, ptr %15, align 8, !tbaa !92   ; 2 uses
  %i.nx = icmp eq ptr %i.nw, %i.jl
  br i1 %i.nx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.ny = load i64, ptr %i.jl, align 8, !tbaa !93
  %i.nz = add i64 %i.ny, 1
  call void @_ZdlPvm(ptr noundef %i.nw, i64 noundef %i.nz) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  br label %bb.bq

bb.bj:                                            ; preds = %bb.aj
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bk:                                            ; preds = %_ZNK4crow13SocketAdaptor15remote_endpointEv.exit, %_ZN4crow6loggerlsIA10_cEERS0_RKT_.exit
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bl:                                            ; preds = %bb.aw, %bb.ax, %bb.an, %bb.ao, %bb.aq, %bb.ap, %bb.au, %bb.at, %bb.as, %bb.ba, %bb.az
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bf, %.noexc.i.i
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

bb.bn:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %i.oe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.of = load ptr, ptr %17, align 8, !tbaa !92   ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.oh = icmp eq ptr %i.of, %i.og
  br i1 %i.oh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.bn
  %i.oi = load i64, ptr %i.og, align 8, !tbaa !93
  %i.oj = add i64 %i.oi, 1
  call void @_ZdlPvm(ptr noundef %i.of, i64 noundef %i.oj) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.bm
  %.pn22 = phi { ptr, i32 } [ %i.od, %bb.bm ], [ %i.oe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %i.oe, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #40
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %bb.bl
  %.pn22.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.oc, %bb.bl ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ] ; 2 uses
  %i.ok = load ptr, ptr %15, align 8, !tbaa !92   ; 2 uses
  %i.ol = icmp eq ptr %i.ok, %i.jl
  br i1 %i.ol, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.bo
  %i.om = load i64, ptr %i.jl, align 8, !tbaa !93
  %i.on = add i64 %i.om, 1
  call void @_ZdlPvm(ptr noundef %i.ok, i64 noundef %i.on) #41
  br label %.body

.body:                                            ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn22.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ob, %bb.bk ], [ %.pn22.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ], [ %.pn22.pn.pn.pn.pn.pn, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %bb.bp

bb.bp:                                            ; preds = %.body, %bb.bj
  %.pn22.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn.pn.pn.pn.pn, %.body ], [ %i.oa, %bb.bj ]
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  br label %common.resume

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %bb.ah
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 5121 ; 2 uses
  store i8 0, ptr %i.oo, align 1, !tbaa !1162
  br i1 %.017, label %bb.cw, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 4624 ; 4 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 4728 ; 4 uses
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 4744 ; 5 uses
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !162 ; 2 uses
  %.not.i116 = icmp eq ptr %i.os, null
  br i1 %.not.i116, label %_ZNSt8functionIFvvEEaSEDn.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ot = invoke noundef zeroext i1 %i.os(ptr noundef nonnull align 8 dereferenceable(32) %i.oq, ptr noundef nonnull align 8 dereferenceable(32) %i.oq, i32 noundef 3)
          to label %bb.bt unwind label %bb.bu     ; 0 uses

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.or, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEaSEDn.exit

bb.bu:                                            ; preds = %bb.bs
  %i.ou = landingpad { ptr, i32 }
          catch ptr null
  %i.ov = extractvalue { ptr, i32 } %i.ou, 0
  call void @__clang_call_terminate(ptr %i.ov) #42
  unreachable

_ZNSt8functionIFvvEEaSEDn.exit:                   ; preds = %bb.br, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !2423)
  %i.ow = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !889, !noalias !2423 ; 3 uses
  store ptr %i.oy, ptr %i.ow, align 8, !tbaa !201, !alias.scope !2423
  %i.oz = icmp eq ptr %i.oy, null
  br i1 %i.oz, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt8functionIFvvEEaSEDn.exit
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 8 ; 2 uses
  %i.pb = load atomic i32, ptr %i.pa monotonic, align 8, !noalias !2423
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bx, %bb.bv
  %.06.i.i.i.i.i = phi i32 [ %i.pb, %bb.bv ], [ %i.pf, %bb.bx ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.pc = add nsw i32 %.06.i.i.i.i.i, 1
  %i.pd = cmpxchg weak ptr %i.pa, i32 %.06.i.i.i.i.i, i32 %i.pc acq_rel monotonic, align 8, !noalias !2423 ; 2 uses
  %i.pe = extractvalue { i32, i1 } %i.pd, 1
  %i.pf = extractvalue { i32, i1 } %i.pd, 0
  br i1 %i.pe, label %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJNS0_12CookieParserEEEEJS4_EEEE16shared_from_thisEv.exit, label %bb.bw, !llvm.loop !56

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.bw, %_ZNSt8functionIFvvEEaSEDn.exit
  %i.pg = call ptr @__cxa_allocate_exception(i64 8) #40, !noalias !2423 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.pg, align 8, !tbaa !196, !noalias !2423
  call void @__cxa_throw(ptr nonnull %i.pg, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #39, !noalias !2423
  unreachable

_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJNS0_12CookieParserEEEEJS4_EEEE16shared_from_thisEv.exit: ; preds = %bb.bx
  %i.ph = load ptr, ptr %0, align 8, !tbaa !1120, !noalias !2423 ; 2 uses
  store ptr %i.ph, ptr %18, align 16, !tbaa !1076, !alias.scope !2423
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #40
  store ptr %i.ph, ptr %19, align 16, !tbaa !1076
  %i.pi = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.pj = load ptr, ptr %i.ow, align 8, !tbaa !201 ; 3 uses
  store ptr %i.pj, ptr %i.pi, align 8, !tbaa !201
  %.not.i.i.i117 = icmp eq ptr %i.pj, null
  br i1 %.not.i.i.i117, label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJNS0_12CookieParserEEEEJS4_EEEEC2ERKS7_.exit, label %bb.by

bb.by:                                            ; preds = %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJNS0_12CookieParserEEEEJS4_EEEE16shared_from_thisEv.exit
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 8 ; 3 uses
  %i.pl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i118 = icmp eq i8 %i.pl, 0
  br i1 %.not.i.i.i.i118, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.pm = load i32, ptr %i.pk, align 4, !tbaa !165
  %i.pn = add nsw i32 %i.pm, 1
  store i32 %i.pn, ptr %i.pk, align 4, !tbaa !165
  br label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJNS0_12CookieParserEEEEJS4_EEEEC2ERKS7_.exit

bb.ca:                                            ; preds = %bb.by
  %i.po = atomicrmw volatile add ptr %i.pk, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJNS0_12CookieParserEEEEJS4_EEEEC2ERKS7_.exit

_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJNS0_12CookieParserEEEEJS4_EEEEC2ERKS7_.exit: ; preds = %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJNS0_12CookieParserEEEEJS4_EEEE16shared_from_thisEv.exit, %bb.bz, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.pp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.pp, align 8
  %i.pq = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #43
          to label %.noexc121 unwind label %bb.cl ; 2 uses

.noexc121:                                        ; preds = %_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJNS0_12CookieParserEEEEJS4_EEEEC2ERKS7_.exit
  %i.pr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 4760 ; 2 uses
  %i.pt = load <2 x ptr>, ptr %19, align 16, !tbaa !99
  store ptr null, ptr %i.pi, align 8, !tbaa !201
  store <2 x ptr> %i.pt, ptr %i.pq, align 8, !tbaa !99
  store ptr %i.pq, ptr %2, align 16, !tbaa !99
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ps, i64 16, i1 false), !tbaa.struct !98
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.ps, align 8, !tbaa !93
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 4776 ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 4784
  %i.pw = load <2 x ptr>, ptr %i.pu, align 8, !tbaa !99
  %i.px = load ptr, ptr %i.pu, align 8, !tbaa !99 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbvEZN4crow10ConnectionINS1_13SocketAdaptorENS1_4CrowIJNS1_12CookieParserEEEEJS5_EE6handleEvEUlvE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.pu, align 8, !tbaa !99
  store <2 x ptr> %i.pw, ptr %i.pr, align 16, !tbaa !99
  store ptr @_ZNSt17_Function_handlerIFbvEZN4crow10ConnectionINS1_13SocketAdaptorENS1_4CrowIJNS1_12CookieParserEEEEJS5_EE6handleEvEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.pv, align 8, !tbaa !99
  %.not.i.i119 = icmp eq ptr %i.px, null
  br i1 %.not.i.i119, label %_ZZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJNS_12CookieParserEEEEJS3_EE6handleEvENUlvE_D2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %.noexc121
  %i.py = invoke noundef zeroext i1 %i.px(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJNS_12CookieParserEEEEJS3_EE6handleEvENUlvE_D2Ev.exit unwind label %bb.cc ; 0 uses

bb.cc:                                            ; preds = %bb.cb
  %i.pz = landingpad { ptr, i32 }
          catch ptr null
  %i.qa = extractvalue { ptr, i32 } %i.pz, 0
  call void @__clang_call_terminate(ptr %i.qa) #42
  unreachable

_ZZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJNS_12CookieParserEEEEJS3_EE6handleEvENUlvE_D2Ev.exit: ; preds = %bb.cb, %.noexc121
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %.pre199.a = load ptr, ptr %i.bk, align 8, !tbaa !1131 ; 2 uses
  %.pre200.a = load ptr, ptr %i.bh, align 8, !tbaa !1164 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #40
  invoke void @_ZN4crow12CookieParser13before_handleERNS_7requestERNS_8responseERNS0_7contextE(ptr noundef nonnull align 1 dereferenceable(1) %.pre199.a, ptr noundef nonnull align 8 dereferenceable(280) %.pre200.a, ptr noundef nonnull align 8 dereferenceable(352) %i.op, ptr noundef nonnull align 8 dereferenceable(80) %i.m)
          to label %.noexc124 unwind label %bb.cn

.noexc124:                                        ; preds = %_ZZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJNS_12CookieParserEEEEJS3_EE6handleEvENUlvE_D2Ev.exit
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 4722 ; 2 uses
  %i.qc = load i8, ptr %i.qb, align 2, !tbaa !447, !range !163, !noundef !164
  %i.qd = trunc nuw i8 %i.qc to i1
  br i1 %i.qd, label %bb.cd, label %_ZN4crow6detail22middleware_call_helperINS0_36middleware_call_criteria_only_globalELi0ENS0_7contextIJNS_12CookieParserEEEERSt5tupleIJS4_EEEENSt9enable_ifIXltT0_sr3std10tuple_sizeINSt16remove_referenceIT2_E4typeEEE5valueEbE4typeERKT_RSB_RNS_7requestERNS_8responseERT1_.exit126.thread

bb.cd:                                            ; preds = %.noexc124
  invoke void @_ZN4crow12CookieParser12after_handleERNS_7requestERNS_8responseERNS0_7contextE(ptr noundef nonnull align 1 dereferenceable(1) %.pre199.a, ptr noundef nonnull align 8 dereferenceable(280) %.pre200.a, ptr noundef nonnull align 8 dereferenceable(352) %i.op, ptr noundef nonnull align 8 dereferenceable(80) %i.m)
          to label %_ZN4crow6detail22middleware_call_helperINS0_36middleware_call_criteria_only_globalELi0ENS0_7contextIJNS_12CookieParserEEEERSt5tupleIJS4_EEEENSt9enable_ifIXltT0_sr3std10tuple_sizeINSt16remove_referenceIT2_E4typeEEE5valueEbE4typeERKT_RSB_RNS_7requestERNS_8responseERT1_.exit126 unwind label %bb.cn

_ZN4crow6detail22middleware_call_helperINS0_36middleware_call_criteria_only_globalELi0ENS0_7contextIJNS_12CookieParserEEEERSt5tupleIJS4_EEEENSt9enable_ifIXltT0_sr3std10tuple_sizeINSt16remove_referenceIT2_E4typeEEE5valueEbE4typeERKT_RSB_RNS_7requestERNS_8responseERT1_.exit126: ; preds = %bb.cd
  %.pre201.a = load i8, ptr %i.qb, align 2, !tbaa !2424, !range !163
  %i.qe = trunc nuw i8 %.pre201.a to i1
  br i1 %i.qe, label %bb.cp, label %_ZN4crow6detail22middleware_call_helperINS0_36middleware_call_criteria_only_globalELi0ENS0_7contextIJNS_12CookieParserEEEERSt5tupleIJS4_EEEENSt9enable_ifIXltT0_sr3std10tuple_sizeINSt16remove_referenceIT2_E4typeEEE5valueEbE4typeERKT_RSB_RNS_7requestERNS_8responseERT1_.exit126.thread

_ZN4crow6detail22middleware_call_helperINS0_36middleware_call_criteria_only_globalELi0ENS0_7contextIJNS_12CookieParserEEEERSt5tupleIJS4_EEEENSt9enable_ifIXltT0_sr3std10tuple_sizeINSt16remove_referenceIT2_E4typeEEE5valueEbE4typeERKT_RSB_RNS_7requestERNS_8responseERT1_.exit126.thread: ; preds = %.noexc124, %_ZN4crow6detail22middleware_call_helperINS0_36middleware_call_criteria_only_globalELi0ENS0_7contextIJNS_12CookieParserEEEERSt5tupleIJS4_EEEENSt9enable_ifIXltT0_sr3std10tuple_sizeINSt16remove_referenceIT2_E4typeEEE5valueEbE4typeERKT_RSB_RNS_7requestERNS_8responseERT1_.exit126
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #40
  %i.qf = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.qg = load ptr, ptr %i.ow, align 8, !tbaa !201 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNK4asio6detail23reactive_socket_serviceINS_2ip3tcpEE15remote_endpointERKNS4_19implementation_typeERSt10error_code:bb.a
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.41.0..sroa_idx.i.i.i, align 8, !tbaa !167
  call void @_ZN4asio6detail14do_throw_errorERKSt10error_code(ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %_ZN4asio2ip14basic_endpointINS0_3tcpEE6resizeEm.exit

_ZN4asio2ip14basic_endpointINS0_3tcpEE6resizeEm.exit: ; preds = %bb.c, %_ZN4asio6detail11throw_errorERKSt10error_code.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) %5, i64 28, i1 false), !tbaa.struct !197
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
  br i1 %i.d, label %bb.c, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, !prof !95

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #40
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #40 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #40
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit: ; preds = %bb.b, %bb.c, %bb.d
  store i32 9, ptr %4, align 8, !tbaa !165
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.49.0..sroa_idx, align 8, !tbaa !167
  br label %_ZN4asio6detail10socket_ops14get_last_errorERSt10error_codeb.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.g = load i64, ptr %2, align 8, !tbaa !90
  %i.h = trunc i64 %i.g to i32
  store i32 %i.h, ptr %i.a, align 4, !tbaa !165
  %i.i = call noundef i32 @getpeername(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %i.a) #40 ; 2 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !165
  %i.k = zext i32 %i.j to i64
  store i64 %i.k, ptr %2, align 8, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %4, align 8, !tbaa !174
  br label %_ZN4asio6detail10socket_ops14get_last_errorERSt10error_codeb.exit

bb.g:                                             ; preds = %bb.e
  %i.l = tail call ptr @__errno_location() #44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !165
  %i.n = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.h, label %_ZN4asio5error19get_system_categoryEv.exit.i, !prof !95

bb.h:                                             ; preds = %bb.g
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #40
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %_ZN4asio5error19get_system_categoryEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #40 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #40
  br label %_ZN4asio5error19get_system_categoryEv.exit.i

_ZN4asio5error19get_system_categoryEv.exit.i:     ; preds = %bb.i, %bb.h, %bb.g
  store i32 %i.m, ptr %4, align 8, !tbaa !165
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !167
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
  %i.b = load i8, ptr %1, align 8, !tbaa !921     ; 2 uses
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
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1011 ; 6 uses
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
  %i.l = load i64, ptr %i.j, align 8, !tbaa !1011
  %.not60 = icmp eq i64 %i.l, 0
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br i1 %.not60, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.m = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %7)
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 376 ; 4 uses
  store i32 0, ptr %i.o, align 8, !tbaa !194
  %i.p = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %.not.i = icmp sgt i32 %i.p, 0
  br i1 %.not.i, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef nonnull @.str.358, i64 noundef 20)
          to label %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit:           ; preds = %bb.f
  %.pre189.a = load i32, ptr %i.o, align 8, !tbaa !194
  %.pre190.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.r = icmp slt i32 %.pre189.a, %.pre190.a
  br i1 %i.r, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !92
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !94
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef %i.s, i64 noundef %i.u)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.g
  %.pre191.a = load i32, ptr %i.o, align 8, !tbaa !194
  %.pre192.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.w = icmp slt i32 %.pre191.a, %.pre192.a
  br i1 %i.w, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef nonnull @.str.359, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.e, %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  %i.y = load i8, ptr %1, align 8, !tbaa !921     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2431)
  %i.z = icmp slt i8 %i.y, 34
  br i1 %i.z, label %bb.i, label %bb.m, !prof !491

bb.i:                                             ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.aa = sext i8 %i.y to i64
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !450, !noalias !2431 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ae, ptr %8, align 8, !tbaa !88, !alias.scope !2431
  %17 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2431
  store i64 %17, ptr %i.a, align 8, !tbaa !90, !noalias !2431
  %18 = icmp ugt i64 %17, 15
  br i1 %18, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.i
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc79.a unwind label %bb.p ; 2 uses

.noexc79.a:                                       ; preds = %.noexc.i.i
  store ptr %i.af, ptr %8, align 8, !tbaa !92, !alias.scope !2431
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !2431
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !93, !alias.scope !2431
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc79.a, %bb.i
  %i.ah = phi ptr [ %i.af, %.noexc79.a ], [ %i.ae, %bb.i ] ; 2 uses
  switch i64 %17, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ai = load i8, ptr %i.ad, align 1, !tbaa !93
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !93
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %i.ad, i64 %17, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !2431 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !94, !alias.scope !2431
  %i.al = load ptr, ptr %8, align 8, !tbaa !92, !alias.scope !2431
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2431
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

bb.m:                                             ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !2431
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.361, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc80 unwind label %bb.p

.noexc80:                                         ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !2431
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit: ; preds = %.noexc80, %bb.l
  %i.an = load i32, ptr %i.o, align 8, !tbaa !194
  %i.ao = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %.not.i81 = icmp slt i32 %i.an, %i.ao
  br i1 %.not.i81, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83, label %bb.n

bb.n:                                             ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit
  %i.ap = load ptr, ptr %8, align 8, !tbaa !92
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !94
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83 unwind label %bb.q ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit, %bb.n
  %i.at = load ptr, ptr %8, align 8, !tbaa !92    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !93
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
  %i.bb = load ptr, ptr %8, align 8, !tbaa !92    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.q
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !93
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
  store i32 405, ptr %9, align 8, !tbaa !436
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !88
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.bi, align 8, !tbaa !94
  store i8 0, ptr %i.bh, align 8, !tbaa !93
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !437
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  store i64 1, ptr %i.bl, align 8, !tbaa !438
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bn, align 8, !tbaa !407
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 168 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.bo, i8 0, i64 19, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bp, i8 0, i64 64, i1 false)
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !88
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 176
  store i64 0, ptr %i.bs, align 8, !tbaa !94
  store i8 0, ptr %i.br, align 8, !tbaa !93
  %i.bt = call noundef nonnull align 8 dereferenceable(352) ptr @_ZN4crow8responseaSEOS0_(ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef nonnull align 8 dereferenceable(352) %9) #40 ; 0 uses
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !92 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.br
  br i1 %i.bv, label %_ZN4crow8response16static_file_infoD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.s
  %i.bw = load i64, ptr %i.br, align 8, !tbaa !93
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #41
  br label %_ZN4crow8response16static_file_infoD2Ev.exit.i

_ZN4crow8response16static_file_infoD2Ev.exit.i:   ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !162 ; 2 uses
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
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !162 ; 2 uses
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
  %i.cj = load ptr, ptr %i.bm, align 8, !tbaa !439 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.ck, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.cj, %_ZNSt14_Function_baseD2Ev.exit2.i ] ; 6 uses
  %i.ck = load ptr, ptr %.06.i.i.i, align 8, !tbaa !214 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !92 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !93
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !92 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !93
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #41
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #41
  %.not.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.cx = load ptr, ptr %i.bj, align 8, !tbaa !437
  %i.cy = load i64, ptr %i.bl, align 8, !tbaa !438
  %i.cz = shl i64 %i.cy, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cx, i8 0, i64 %i.cz, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.da = load ptr, ptr %i.bj, align 8, !tbaa !437 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.bk
  br i1 %i.db, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i
  %i.dc = load i64, ptr %i.bl, align 8, !tbaa !438
  %i.dd = shl i64 %i.dc, 3
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #41
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, %bb.x
  %i.de = load ptr, ptr %i.bg, align 8, !tbaa !92 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.bh
  br i1 %i.df, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit
  %i.dg = load i64, ptr %i.bh, align 8, !tbaa !93
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @_ZN4crow8response3endEv(ptr noundef nonnull align 8 dereferenceable(352) %2)
  br label %bb.br

.critedge73:                                      ; preds = %bb.c
  %i.di = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.dj = icmp slt i32 %i.di, 2
  br i1 %i.dj, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %.critedge73
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %10)
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 376 ; 2 uses
  store i32 1, ptr %i.dk, align 8, !tbaa !194
  %i.dl = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %.not.i87 = icmp sgt i32 %i.dl, 1
  br i1 %.not.i87, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit91, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %10, ptr noundef nonnull @.str.353, i64 noundef 19)
          to label %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit unwind label %bb.ab ; 0 uses

_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit:           ; preds = %bb.z
  %.pre193 = load i32, ptr %i.dk, align 8, !tbaa !194
  %.pre194 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !185
  %i.dn = icmp slt i32 %.pre193, %.pre194
  br i1 %i.dn, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit91, label %bb.aa

bb.aa:                                            ; preds = %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit
  %i.do = load ptr, ptr %i.g, align 8, !tbaa !92
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 48
end_hunk_4
