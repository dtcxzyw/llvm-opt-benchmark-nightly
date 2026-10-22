Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example_ws?download=true
inline.NumInlined: 16068
inline.NumDeleted: 5763
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4crow6Router14handle_initialERNS_7requestERNS_8responseE:_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i362: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i360, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i361
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i358, i64 noundef 80) #41
  %.not.i.i.i363 = icmp eq ptr %i.sb, null
  br i1 %.not.i.i.i363, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i364, label %.lr.ph.i.i.i357, !llvm.loop !3

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i364: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i362, %_ZNSt14_Function_baseD2Ev.exit2.i256
  %i.so = load ptr, ptr %i.ra, align 8, !tbaa !538
  %i.sp = load i64, ptr %i.rc, align 8, !tbaa !539
  %i.sq = shl i64 %i.sp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.so, i8 0, i64 %i.sq, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rd, i8 0, i64 16, i1 false)
  %i.sr = load ptr, ptr %i.ra, align 8, !tbaa !538 ; 2 uses
  %i.ss = icmp eq ptr %i.sr, %i.rb
  br i1 %i.ss, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit367, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i364
  %i.st = load i64, ptr %i.rc, align 8, !tbaa !539
  %i.su = shl i64 %i.st, 3
  call void @_ZdlPvm(ptr noundef %i.sr, i64 noundef %i.su) #41
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit367

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit367: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i364, %bb.cc
  %i.sv = load ptr, ptr %i.qx, align 8, !tbaa !164 ; 2 uses
  %i.sw = icmp eq ptr %i.sv, %i.qy
  br i1 %i.sw, label %_ZN4crow8responseD2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i257: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit367
  %i.sx = load i64, ptr %i.qy, align 8, !tbaa !165
  %i.sy = add i64 %i.sx, 1
  call void @_ZdlPvm(ptr noundef %i.sv, i64 noundef %i.sy) #41
  br label %_ZN4crow8responseD2Ev.exit260

_ZN4crow8responseD2Ev.exit260:                    ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit367, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i257
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #40
  invoke void @_ZN4crow8response3endEv(ptr noundef nonnull align 8 dereferenceable(352) %3)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.invoke
  store i8 %i.f, ptr %i.r, align 8, !tbaa !1467
  br label %bb.cd

bb.cd:                                            ; preds = %.sink.split, %_ZN4crow8responseD2Ev.exit260
  %i.sz = load ptr, ptr %10, align 8, !tbaa !164  ; 2 uses
  %i.ta = icmp eq ptr %i.sz, %i.fd
  br i1 %i.ta, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %bb.cd
  %i.tb = load i64, ptr %i.fd, align 8, !tbaa !165
  %i.tc = add i64 %i.tb, 1
  call void @_ZdlPvm(ptr noundef %i.sz, i64 noundef %i.tc) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %.critedge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %.pn124.pn.pn = phi { ptr, i32 } [ %.pn124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ], [ %.pn121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187 ], [ %.pn117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ], [ %.pn113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241 ], [ %.pn111, %bb.bw ], [ %i.ly, %bb.ax ], [ %.pn121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188 ], [ %.pn113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240 ], [ %lpad.loopexit.split-lp617, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.td = load ptr, ptr %10, align 8, !tbaa !164  ; 2 uses
  %i.te = icmp eq ptr %i.td, %i.fd
  br i1 %i.te, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  %i.tf = load i64, ptr %i.fd, align 8, !tbaa !165
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
  %i.tm = load ptr, ptr %i.i, align 8, !tbaa !1406 ; 3 uses
  %i.tn = load ptr, ptr %i.j, align 8, !tbaa !1407
  %i.to = load <2 x ptr>, ptr %i.tl, align 8, !tbaa !1469
  store <2 x ptr> %i.to, ptr %i.i, align 8, !tbaa !1469
  %i.tp = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !1407
  store ptr %i.tq, ptr %i.j, align 8, !tbaa !1407
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
  %i.tx = load i8, ptr %i.tw, align 8, !tbaa !1467
  store i8 %i.tx, ptr %i.r, align 8, !tbaa !1467
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %22) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  %i.ty = load i64, ptr %i.h, align 8, !tbaa !1465
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
  %i.uc = load i64, ptr %i.tz, align 8, !tbaa !1465
  %.not100 = icmp eq i64 %i.uc, 0
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %23) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  br i1 %.not100, label %bb.cg, label %bb.cj

bb.cj:                                            ; preds = %_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit272
  store i32 405, ptr %3, align 8, !tbaa !537
  store i8 1, ptr %i.g, align 8, !tbaa !1466
  %i.ud = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.ue = icmp slt i32 %i.ud, 1
  br i1 %i.ue, label %bb.ck, label %.critedge

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #40
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %24)
          to label %bb.cl unwind label %bb.da

bb.cl:                                            ; preds = %bb.ck
  %i.uf = getelementptr inbounds nuw i8, ptr %24, i64 376 ; 6 uses
  store i32 0, ptr %i.uf, align 8, !tbaa !305
  %i.ug = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %.not.i275 = icmp sgt i32 %i.ug, 0
  br i1 %.not.i275, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.uh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef nonnull @.str.473, i64 noundef 20)
          to label %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit unwind label %bb.db ; 0 uses

_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit:           ; preds = %bb.cm
  %.pre457.a = load i32, ptr %i.uf, align 8, !tbaa !305
  %.pre458.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.ui = icmp slt i32 %.pre457.a, %.pre458.a
  br i1 %i.ui, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.cn

bb.cn:                                            ; preds = %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit
  %i.uj = load ptr, ptr %i.tk, align 8, !tbaa !164
  %i.uk = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !166
  %i.um = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef %i.uj, i64 noundef %i.ul)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit279 unwind label %bb.db ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit279: ; preds = %bb.cn
  %.pre459.a = load i32, ptr %i.uf, align 8, !tbaa !305
  %.pre460.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.un = icmp slt i32 %.pre459.a, %.pre460.a
  br i1 %i.un, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.co

bb.co:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit279
  %i.uo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef nonnull @.str.371, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.db ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.cl, %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit279, %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !3241)
  %i.up = icmp slt i8 %i.f, 34
  br i1 %i.up, label %bb.cp, label %bb.ct, !prof !568

bb.cp:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.uq = and i64 %i.th, 4294967295
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.uq
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !551, !noalias !3241 ; 4 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  store ptr %i.ut, ptr %25, align 8, !tbaa !160, !alias.scope !3241
  %29 = icmp eq ptr %i.us, null
  br i1 %29, label %.noexc.i284, label %30

.noexc.i284:                                      ; preds = %bb.cp
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.234) #39
          to label %.noexc285 unwind label %bb.dc

.noexc285:                                        ; preds = %.noexc.i284
  unreachable

30:                                               ; preds = %bb.cp
  %31 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.us) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !3241
  store i64 %31, ptr %i.a, align 8, !tbaa !162, !noalias !3241
  %32 = icmp ugt i64 %31, 15
  br i1 %32, label %.noexc.i.i283, label %._crit_edge.i.i.i282

.noexc.i.i283:                                    ; preds = %30
  %i.uu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc286 unwind label %bb.dc ; 2 uses

.noexc286:                                        ; preds = %.noexc.i.i283
  store ptr %i.uu, ptr %25, align 8, !tbaa !164, !alias.scope !3241
  %i.uv = load i64, ptr %i.a, align 8, !tbaa !162, !noalias !3241
  store i64 %i.uv, ptr %i.ut, align 8, !tbaa !165, !alias.scope !3241
  br label %._crit_edge.i.i.i282

._crit_edge.i.i.i282:                             ; preds = %.noexc286, %30
  %i.uw = phi ptr [ %i.uu, %.noexc286 ], [ %i.ut, %30 ] ; 2 uses
  switch i64 %31, label %bb.cr [
    i64 1, label %bb.cq
    i64 0, label %bb.cs
  ]

bb.cq:                                            ; preds = %._crit_edge.i.i.i282
  %i.ux = load i8, ptr %i.us, align 1, !tbaa !165
  store i8 %i.ux, ptr %i.uw, align 1, !tbaa !165
  br label %bb.cs

bb.cr:                                            ; preds = %._crit_edge.i.i.i282
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uw, ptr nonnull align 1 %i.us, i64 %31, i1 false)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %._crit_edge.i.i.i282
  %i.uy = load i64, ptr %i.a, align 8, !tbaa !162, !noalias !3241 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.uy, ptr %i.uz, align 8, !tbaa !166, !alias.scope !3241
  %i.va = load ptr, ptr %25, align 8, !tbaa !164, !alias.scope !3241
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 %i.uy
  store i8 0, ptr %i.vb, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !3241
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit288

bb.ct:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !3241
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.475, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc287 unwind label %bb.dc

.noexc287:                                        ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !3241
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit288

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit288: ; preds = %.noexc287, %bb.cs
  %i.vc = load i32, ptr %i.uf, align 8, !tbaa !305
  %i.vd = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %.not.i289 = icmp slt i32 %i.vc, %i.vd
  br i1 %.not.i289, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit288
  %i.ve = load ptr, ptr %25, align 8, !tbaa !164
  %i.vf = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !166
  %i.vh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef %i.ve, i64 noundef %i.vg)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit291 unwind label %bb.dd ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit291: ; preds = %bb.cu
  %.pre461 = load i32, ptr %i.uf, align 8, !tbaa !305
  %.pre462 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.vi = icmp slt i32 %.pre461, %.pre462
  br i1 %i.vi, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit, label %bb.cv

bb.cv:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit291
  %i.vj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef nonnull @.str.474, i64 noundef 2)
          to label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit unwind label %bb.dd ; 0 uses

_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit:            ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit288, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit291, %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #40
  invoke void @_ZN4crow6Router9get_errorB5cxx11ERKNS_21routing_handle_resultE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(3656) %1, ptr noundef nonnull align 8 dereferenceable(137) %i.g)
          to label %bb.cw unwind label %bb.de

bb.cw:                                            ; preds = %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit
  %i.vk = load i32, ptr %i.uf, align 8, !tbaa !305
  %i.vl = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %.not.i294 = icmp slt i32 %i.vk, %i.vl
  br i1 %.not.i294, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit296, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.vm = load ptr, ptr %26, align 8, !tbaa !164
  %i.vn = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.vo = load i64, ptr %i.vn, align 8, !tbaa !166
  %i.vp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef %i.vm, i64 noundef %i.vo)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit296 unwind label %bb.df ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit296: ; preds = %bb.cw, %bb.cx
  %i.vq = load ptr, ptr %26, align 8, !tbaa !164  ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.vs = icmp eq ptr %i.vq, %i.vr
  br i1 %i.vs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297.a: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit296
  %i.vt = load i64, ptr %i.vr, align 8, !tbaa !165
  %i.vu = add i64 %i.vt, 1
  call void @_ZdlPvm(ptr noundef %i.vq, i64 noundef %i.vu) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.a: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit296, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297.a
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #40
  %i.vv = load ptr, ptr %25, align 8, !tbaa !164  ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.vx = icmp eq ptr %i.vv, %i.vw
  br i1 %i.vx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.a
  %i.vy = load i64, ptr %i.vw, align 8, !tbaa !165
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

bb.dc:                                            ; preds = %bb.ct, %.noexc.i.i283, %.noexc.i284
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
  %i.wi = load ptr, ptr %26, align 8, !tbaa !164  ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.wk = icmp eq ptr %i.wi, %i.wj
  br i1 %i.wk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303: ; preds = %bb.df
  %i.wl = load i64, ptr %i.wj, align 8, !tbaa !165
  %i.wm = add i64 %i.wl, 1
  call void @_ZdlPvm(ptr noundef %i.wi, i64 noundef %i.wm) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303, %bb.de
  %.pn = phi { ptr, i32 } [ %i.wg, %bb.de ], [ %i.wh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303 ], [ %i.wh, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #40
  br label %bb.dg

bb.dg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, %bb.dd
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305 ], [ %i.wf, %bb.dd ] ; 2 uses
  %i.wn = load ptr, ptr %25, align 8, !tbaa !164  ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.wp = icmp eq ptr %i.wn, %i.wo
  br i1 %i.wp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %bb.dg
  %i.wq = load i64, ptr %i.wo, align 8, !tbaa !165
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
  store i32 404, ptr %3, align 8, !tbaa !537
  store i8 1, ptr %i.g, align 8, !tbaa !1466
  %i.ws = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.wt = icmp slt i32 %i.ws, 1
  br i1 %i.wt, label %bb.dk, label %.critedge

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #40
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %27)
          to label %bb.dl unwind label %bb.dr

bb.dl:                                            ; preds = %bb.dk
  %i.wu = getelementptr inbounds nuw i8, ptr %27, i64 376 ; 4 uses
  store i32 0, ptr %i.wu, align 8, !tbaa !305
  %i.wv = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %.not.i311 = icmp sgt i32 %i.wv, 0
  br i1 %.not.i311, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit319, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ww = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %27, ptr noundef nonnull @.str.469, i64 noundef 19)
          to label %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit313 unwind label %bb.ds ; 0 uses

_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit313:        ; preds = %bb.dm
  %.pre463 = load i32, ptr %i.wu, align 8, !tbaa !305
  %.pre464 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.wx = icmp slt i32 %.pre463, %.pre464
  br i1 %i.wx, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit319, label %bb.dn

bb.dn:                                            ; preds = %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit313
  %i.wy = load ptr, ptr %i.tk, align 8, !tbaa !164
  %i.wz = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !166
  %i.xb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %27, ptr noundef %i.wy, i64 noundef %i.xa)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316.a unwind label %bb.ds ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316.a: ; preds = %bb.dn
  %.pre465 = load i32, ptr %i.wu, align 8, !tbaa !305
  %.pre466 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.xc = icmp slt i32 %.pre465, %.pre466
  br i1 %i.xc, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit319, label %bb.do

bb.do:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316.a
  %i.xd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %27, ptr noundef nonnull @.str.474, i64 noundef 2)
          to label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit319 unwind label %bb.ds ; 0 uses

_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit319:         ; preds = %bb.dl, %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit313, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316.a, %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #40
  invoke void @_ZN4crow6Router9get_errorB5cxx11ERKNS_21routing_handle_resultE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(3656) %1, ptr noundef nonnull align 8 dereferenceable(137) %i.g)
          to label %bb.dp unwind label %bb.dt

bb.dp:                                            ; preds = %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit319
  %i.xe = load i32, ptr %i.wu, align 8, !tbaa !305
  %i.xf = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %.not.i320 = icmp slt i32 %i.xe, %i.xf
  br i1 %.not.i320, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit322, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.xg = load ptr, ptr %28, align 8, !tbaa !164
  %i.xh = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.xi = load i64, ptr %i.xh, align 8, !tbaa !166
  %i.xj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %27, ptr noundef %i.xg, i64 noundef %i.xi)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit322 unwind label %bb.du ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit322: ; preds = %bb.dp, %bb.dq
  %i.xk = load ptr, ptr %28, align 8, !tbaa !164  ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.xm = icmp eq ptr %i.xk, %i.xl
  br i1 %i.xm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit322
  %i.xn = load i64, ptr %i.xl, align 8, !tbaa !165
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
  %i.xt = load ptr, ptr %28, align 8, !tbaa !164  ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.xv = icmp eq ptr %i.xt, %i.xu
  br i1 %i.xv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %bb.du
  %i.xw = load i64, ptr %i.xu, align 8, !tbaa !165
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
  store i8 %i.f, ptr %i.r, align 8, !tbaa !1467
  br label %.critedge

.critedge:                                        ; preds = %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.a, %bb.ac, %_ZNSt6vectorImSaImEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, %bb.dx, %_ZN4crow8responseD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, %bb.dj
  ret void

bb.dy:                                            ; preds = %bb.cy, %bb.cz, %bb.di, %bb.dw, %bb.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, %bb.v, %bb.s, %bb.r
  %.pn133 = phi { ptr, i32 } [ %i.wa, %bb.cy ], [ %i.wb, %bb.cz ], [ %.pn131, %bb.v ], [ %i.cx, %bb.s ], [ %i.cw, %bb.r ], [ %.pn124.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266 ], [ %.pn107.pn.pn, %bb.dw ], [ %i.ua, %bb.ch ], [ %.pn.pn.pn.pn.pn, %bb.di ]
  call void @_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #40
  br label %bb.dz

bb.dz:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit142, %bb.dy
end_hunk_0
begin_hunk_1_@_ZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEJEE6handleEv:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !3293
  br label %.body

bb.z:                                             ; preds = %bb.x
  %i.gk = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !3293 ; 2 uses
  store ptr %i.gk, ptr %4, align 8, !tbaa !257, !noalias !3293
  %i.gl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8, !noalias !3293
  %i.gm = getelementptr i8, ptr %i.gk, i64 -24
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = getelementptr inbounds i8, ptr %4, i64 %i.gn
  store ptr %i.gl, ptr %i.go, align 8, !tbaa !257, !noalias !3293
  %i.gp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8, !noalias !3293
  store ptr %i.gp, ptr %i.gc, align 8, !tbaa !257, !noalias !3293
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.gq, align 8, !tbaa !257, !noalias !3293
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !164, !noalias !3293 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.z
  %i.gv = load i64, ptr %i.gt, align 8, !tbaa !165, !noalias !3293
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gw) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gq, align 8, !tbaa !257, !noalias !3293
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gx) #40
  %i.gy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !3293 ; 2 uses
  store ptr %i.gy, ptr %4, align 8, !tbaa !257, !noalias !3293
  %i.gz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !3293
  %i.ha = getelementptr i8, ptr %i.gy, i64 -24
  %i.hb = load i64, ptr %i.ha, align 8
  %i.hc = getelementptr inbounds i8, ptr %4, i64 %i.hb
  store ptr %i.gz, ptr %i.hc, align 8, !tbaa !257, !noalias !3293
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.hd, align 8, !tbaa !1062, !noalias !3293
  %i.he = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.he) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !3293
  %i.hf = load i32, ptr %i.fx, align 8, !tbaa !305
  %i.hg = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %.not.i64 = icmp slt i32 %i.hf, %i.hg
  br i1 %.not.i64, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.hh = load ptr, ptr %12, align 8, !tbaa !164
  %i.hi = load i64, ptr %i.gb, align 8, !tbaa !166
  %i.hj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %11, ptr noundef %i.hh, i64 noundef %i.hi)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.ay ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.aa
  %.pre = load i32, ptr %i.fx, align 8, !tbaa !305
  %.pre168.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.hk = icmp slt i32 %.pre, %.pre168.a
  br i1 %i.hk, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ab

bb.ab:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.hl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %11, ptr noundef nonnull @.str.371, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.ay ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.ab
  %.pre169.a = load i32, ptr %i.fx, align 8, !tbaa !305
  %.pre170.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.hm = icmp slt i32 %.pre169.a, %.pre170.a
  br i1 %i.hm, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ac

bb.ac:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.hn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(380) %11, ptr noundef nonnull %0)
          to label %_ZN4crow6loggerlsIPNS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEJEEEEERS0_RKT_.exit unwind label %bb.ay ; 0 uses

_ZN4crow6loggerlsIPNS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEJEEEEERS0_RKT_.exit: ; preds = %bb.ac
  %.pre171.a = load i32, ptr %i.fx, align 8, !tbaa !305
  %.pre172.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.ho = icmp slt i32 %.pre171.a, %.pre172.a
  br i1 %i.ho, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ad

bb.ad:                                            ; preds = %_ZN4crow6loggerlsIPNS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEJEEEEERS0_RKT_.exit
  %i.hp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %11, ptr noundef nonnull @.str.526, i64 noundef 6)
          to label %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit unwind label %bb.ay ; 0 uses

_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit:            ; preds = %bb.ad
  %.pre173.a = load i32, ptr %i.fx, align 8, !tbaa !305
  %.pre174.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.hq = icmp slt i32 %.pre173.a, %.pre174.a
  %i.hr = load ptr, ptr %i.h, align 8, !tbaa !1453, !nonnull !275, !align !411
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 248
  %i.ht = load i8, ptr %i.hs, align 8, !tbaa !1476
  %i.hu = add i8 %i.ht, 48                        ; 2 uses
  br i1 %i.hq, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ae

bb.ae:                                            ; preds = %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.hu, ptr %i.d, align 1, !tbaa !165
  %i.hv = load ptr, ptr %11, align 8, !tbaa !257
  %i.hw = getelementptr i8, ptr %i.hv, i64 -24
  %i.hx = load i64, ptr %i.hw, align 8
  %i.hy = getelementptr inbounds i8, ptr %11, i64 %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !1332
  %.not.i.i73 = icmp eq i64 %i.ia, 0
  br i1 %.not.i.i73, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %11, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit unwind label %bb.ay ; 0 uses

bb.ag:                                            ; preds = %bb.ae
  %i.ic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %11, i8 noundef signext %i.hu)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit unwind label %bb.ay ; 0 uses

_ZN4crow6loggerlsIcEERS0_RKT_.exit:               ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre175.a = load i32, ptr %i.fx, align 8, !tbaa !305
  %.pre176.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.id = icmp slt i32 %.pre175.a, %.pre176.a
  br i1 %i.id, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ah

bb.ah:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit
  %i.ie = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %11, ptr noundef nonnull @.str.385, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78 unwind label %bb.ay ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78:          ; preds = %bb.ah
  %.pre177.a = load i32, ptr %i.fx, align 8, !tbaa !305
  %.pre178.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.if = icmp slt i32 %.pre177.a, %.pre178.a
  %i.ig = load ptr, ptr %i.h, align 8, !tbaa !1453, !nonnull !275, !align !411
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 249
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !1477
  %i.ij = add i8 %i.ii, 48                        ; 2 uses
  br i1 %i.if, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ai

bb.ai:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.ij, ptr %i.c, align 1, !tbaa !165
  %i.ik = load ptr, ptr %11, align 8, !tbaa !257
  %i.il = getelementptr i8, ptr %i.ik, i64 -24
  %i.im = load i64, ptr %i.il, align 8
  %i.in = getelementptr inbounds i8, ptr %11, i64 %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !1332
  %.not.i.i80 = icmp eq i64 %i.ip, 0
  br i1 %.not.i.i80, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.iq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %11, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit84 unwind label %bb.ay ; 0 uses

bb.ak:                                            ; preds = %bb.ai
  %i.ir = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %11, i8 noundef signext %i.ij)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit84 unwind label %bb.ay ; 0 uses

_ZN4crow6loggerlsIcEERS0_RKT_.exit84:             ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.pre179.a = load i32, ptr %i.fx, align 8, !tbaa !305
  %.pre180.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.is = icmp slt i32 %.pre179.a, %.pre180.a
  br i1 %i.is, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.al

bb.al:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !165
  %i.it = load ptr, ptr %11, align 8, !tbaa !257
  %i.iu = getelementptr i8, ptr %i.it, i64 -24
  %i.iv = load i64, ptr %i.iu, align 8
  %i.iw = getelementptr inbounds i8, ptr %11, i64 %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !1332
  %.not.i.i86 = icmp eq i64 %i.iy, 0
  br i1 %.not.i.i86, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.iz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %11, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87 unwind label %bb.ay ; 0 uses

bb.an:                                            ; preds = %bb.al
  %i.ja = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %11, i8 noundef signext 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87 unwind label %bb.ay ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87: ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90

_ZN4crow6loggerlsIcEERS0_RKT_.exit90:             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, %_ZN4crow6loggerlsIPNS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEJEEEEERS0_RKT_.exit, %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit, %_ZN4crow6loggerlsIcEERS0_RKT_.exit, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87, %_ZN4crow6loggerlsIcEERS0_RKT_.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  %i.jb = load ptr, ptr %i.h, align 8, !tbaa !1453, !nonnull !275, !align !411
  %i.jc = load i8, ptr %i.jb, align 8, !tbaa !1389 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3294)
  %i.jd = icmp slt i8 %i.jc, 34
  br i1 %i.jd, label %bb.ao, label %bb.as, !prof !568

bb.ao:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit90
  %i.je = sext i8 %i.jc to i64
  %i.jf = and i64 %i.je, 4294967295
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.jf
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !551, !noalias !3294 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.ji, ptr %14, align 8, !tbaa !160, !alias.scope !3294
  %20 = icmp eq ptr %i.jh, null
  br i1 %20, label %.noexc.i91, label %21

.noexc.i91:                                       ; preds = %bb.ao
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.234) #39
          to label %.noexc92 unwind label %bb.az

.noexc92:                                         ; preds = %.noexc.i91
  unreachable

21:                                               ; preds = %bb.ao
  %22 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jh) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !3294
  store i64 %22, ptr %i.a, align 8, !tbaa !162, !noalias !3294
  %23 = icmp ugt i64 %22, 15
  br i1 %23, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %21
  %i.jj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc93 unwind label %bb.az  ; 2 uses

.noexc93:                                         ; preds = %.noexc.i.i
  store ptr %i.jj, ptr %14, align 8, !tbaa !164, !alias.scope !3294
  %i.jk = load i64, ptr %i.a, align 8, !tbaa !162, !noalias !3294
  store i64 %i.jk, ptr %i.ji, align 8, !tbaa !165, !alias.scope !3294
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc93, %21
  %i.jl = phi ptr [ %i.jj, %.noexc93 ], [ %i.ji, %21 ] ; 2 uses
  switch i64 %22, label %bb.aq [
    i64 1, label %bb.ap
    i64 0, label %bb.ar
  ]

bb.ap:                                            ; preds = %._crit_edge.i.i.i
  %i.jm = load i8, ptr %i.jh, align 1, !tbaa !165
  store i8 %i.jm, ptr %i.jl, align 1, !tbaa !165
  br label %bb.ar

bb.aq:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jl, ptr nonnull align 1 %i.jh, i64 %22, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %._crit_edge.i.i.i
  %i.jn = load i64, ptr %i.a, align 8, !tbaa !162, !noalias !3294 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.jn, ptr %i.jo, align 8, !tbaa !166, !alias.scope !3294
  %i.jp = load ptr, ptr %14, align 8, !tbaa !164, !alias.scope !3294
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jn
  store i8 0, ptr %i.jq, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !3294
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

bb.as:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit90
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !3294
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.475, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc94 unwind label %bb.az

.noexc94:                                         ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !3294
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit: ; preds = %.noexc94, %bb.ar
  %i.jr = load i32, ptr %i.fx, align 8, !tbaa !305
  %i.js = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %.not.i95 = icmp slt i32 %i.jr, %i.js
  br i1 %.not.i95, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103, label %bb.at

bb.at:                                            ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit
  %i.jt = load ptr, ptr %14, align 8, !tbaa !164
  %i.ju = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !166
  %i.jw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %11, ptr noundef %i.jt, i64 noundef %i.jv)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit97 unwind label %bb.ba ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit97: ; preds = %bb.at
  %.pre181.a = load i32, ptr %i.fx, align 8, !tbaa !305
  %.pre182.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.jx = icmp slt i32 %.pre181.a, %.pre182.a
  br i1 %i.jx, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103, label %bb.au

bb.au:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit97
  %i.jy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %11, ptr noundef nonnull @.str.371, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit100 unwind label %bb.ba ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit100:         ; preds = %bb.au
  %.pre183.a = load i32, ptr %i.fx, align 8, !tbaa !305
  %.pre184 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.jz = icmp slt i32 %.pre183.a, %.pre184
  br i1 %i.jz, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103, label %bb.av

bb.av:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit100
  %i.ka = load ptr, ptr %i.h, align 8, !tbaa !1453, !nonnull !275, !align !411 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 40
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !164
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 48
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !166
  %i.kf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %11, ptr noundef %i.kc, i64 noundef %i.ke)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103 unwind label %bb.ba ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit97, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit100, %bb.av
  %i.kg = load ptr, ptr %14, align 8, !tbaa !164  ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ki = icmp eq ptr %i.kg, %i.kh
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103
  %i.kj = load i64, ptr %i.kh, align 8, !tbaa !165
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kk) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  %i.kl = load ptr, ptr %12, align 8, !tbaa !164  ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.ga
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.kn = load i64, ptr %i.ga, align 8, !tbaa !165
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.ko) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %11) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %bb.bd

bb.aw:                                            ; preds = %bb.w
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ax:                                            ; preds = %_ZN4crow17UnixSocketAdaptor15remote_endpointEv.exit, %_ZN4crow6loggerlsIA10_cEERS0_RKT_.exit
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ay:                                            ; preds = %bb.aj, %bb.ak, %bb.aa, %bb.ab, %bb.ad, %bb.ac, %bb.ah, %bb.ag, %bb.af, %bb.an, %bb.am
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.az:                                            ; preds = %bb.as, %.noexc.i.i, %.noexc.i91
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

bb.ba:                                            ; preds = %bb.av, %bb.au, %bb.at
  %i.kt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ku = load ptr, ptr %14, align 8, !tbaa !164  ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.ba
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !165
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.az
  %.pn22 = phi { ptr, i32 } [ %i.ks, %bb.az ], [ %i.kt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %i.kt, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %bb.ay
  %.pn22.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kr, %bb.ay ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ] ; 2 uses
  %i.kz = load ptr, ptr %12, align 8, !tbaa !164  ; 2 uses
  %i.la = icmp eq ptr %i.kz, %i.ga
  br i1 %i.la, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.bb
  %i.lb = load i64, ptr %i.ga, align 8, !tbaa !165
  %i.lc = add i64 %i.lb, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.lc) #41
  br label %.body

.body:                                            ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn22.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.kq, %bb.ax ], [ %.pn22.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ], [ %.pn22.pn.pn.pn.pn.pn, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.bc

bb.bc:                                            ; preds = %.body, %bb.aw
  %.pn22.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn.pn.pn.pn.pn, %.body ], [ %i.kp, %bb.aw ]
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %11) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %common.resume

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %bb.u
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 5121 ; 2 uses
  store i8 0, ptr %i.ld, align 1, !tbaa !1448
  br i1 %.017, label %bb.cj, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 4624 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 4728 ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 4744 ; 5 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !244 ; 2 uses
  %.not.i116 = icmp eq ptr %i.lh, null
  br i1 %.not.i116, label %_ZNSt8functionIFvvEEaSEDn.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.li = invoke noundef zeroext i1 %i.lh(ptr noundef nonnull align 8 dereferenceable(32) %i.lf, ptr noundef nonnull align 8 dereferenceable(32) %i.lf, i32 noundef 3)
          to label %bb.bg unwind label %bb.bh     ; 0 uses

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lg, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEaSEDn.exit

bb.bh:                                            ; preds = %bb.bf
  %i.lj = landingpad { ptr, i32 }
          catch ptr null
  %i.lk = extractvalue { ptr, i32 } %i.lj, 0
  call void @__clang_call_terminate(ptr %i.lk) #42
  unreachable

_ZNSt8functionIFvvEEaSEDn.exit:                   ; preds = %bb.be, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !3295)
  %i.ll = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !648, !noalias !3295 ; 3 uses
  store ptr %i.ln, ptr %i.ll, align 8, !tbaa !312, !alias.scope !3295
  %i.lo = icmp eq ptr %i.ln, null
  br i1 %i.lo, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt8functionIFvvEEaSEDn.exit
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 8 ; 2 uses
  %i.lq = load atomic i32, ptr %i.lp monotonic, align 8, !noalias !3295
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %.06.i.i.i.i.i = phi i32 [ %i.lq, %bb.bi ], [ %i.lu, %bb.bk ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lr = add nsw i32 %.06.i.i.i.i.i, 1
  %i.ls = cmpxchg weak ptr %i.lp, i32 %.06.i.i.i.i.i, i32 %i.lr acq_rel monotonic, align 8, !noalias !3295 ; 2 uses
  %i.lt = extractvalue { i32, i1 } %i.ls, 1
  %i.lu = extractvalue { i32, i1 } %i.ls, 0
  br i1 %i.lt, label %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEEE16shared_from_thisEv.exit, label %bb.bj, !llvm.loop !34

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.bj, %_ZNSt8functionIFvvEEaSEDn.exit
  %i.lv = call ptr @__cxa_allocate_exception(i64 8) #40, !noalias !3295 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.lv, align 8, !tbaa !257, !noalias !3295
  call void @__cxa_throw(ptr nonnull %i.lv, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #39, !noalias !3295
  unreachable

_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEEE16shared_from_thisEv.exit: ; preds = %bb.bk
  %i.lw = load ptr, ptr %0, align 8, !tbaa !1374, !noalias !3295 ; 2 uses
  store ptr %i.lw, ptr %15, align 16, !tbaa !1233, !alias.scope !3295
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  store ptr %i.lw, ptr %16, align 16, !tbaa !1233
  %i.lx = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.ly = load ptr, ptr %i.ll, align 8, !tbaa !312 ; 3 uses
  store ptr %i.ly, ptr %i.lx, align 8, !tbaa !312
  %.not.i.i.i117 = icmp eq ptr %i.ly, null
  br i1 %.not.i.i.i117, label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEEEC2ERKS6_.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEEE16shared_from_thisEv.exit
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 3 uses
  %i.ma = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i = icmp eq i8 %i.ma, 0
  br i1 %.not.i.i.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.mb = load i32, ptr %i.lz, align 4, !tbaa !276
  %i.mc = add nsw i32 %i.mb, 1
  store i32 %i.mc, ptr %i.lz, align 4, !tbaa !276
  br label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEEEC2ERKS6_.exit

bb.bn:                                            ; preds = %bb.bl
  %i.md = atomicrmw volatile add ptr %i.lz, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEEEC2ERKS6_.exit

_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEEEC2ERKS6_.exit: ; preds = %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEEE16shared_from_thisEv.exit, %bb.bm, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.me, align 8
  %i.mf = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #43
          to label %.noexc120 unwind label %bb.by ; 2 uses

.noexc120:                                        ; preds = %_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEEEC2ERKS6_.exit
  %i.mg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 4760 ; 2 uses
  %i.mi = load <2 x ptr>, ptr %16, align 16, !tbaa !179
  store ptr null, ptr %i.lx, align 8, !tbaa !312
  store <2 x ptr> %i.mi, ptr %i.mf, align 8, !tbaa !179
  store ptr %i.mf, ptr %2, align 16, !tbaa !179
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.mh, i64 16, i1 false), !tbaa.struct !178
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.mh, align 8, !tbaa !165
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 4776 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 4784
  %i.ml = load <2 x ptr>, ptr %i.mj, align 8, !tbaa !179
  %i.mm = load ptr, ptr %i.mj, align 8, !tbaa !179 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbvEZN4crow10ConnectionINS1_17UnixSocketAdaptorENS1_4CrowIJEEEJEE6handleEvEUlvE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.mj, align 8, !tbaa !179
  store <2 x ptr> %i.ml, ptr %i.mg, align 16, !tbaa !179
  store ptr @_ZNSt17_Function_handlerIFbvEZN4crow10ConnectionINS1_17UnixSocketAdaptorENS1_4CrowIJEEEJEE6handleEvEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.mk, align 8, !tbaa !179
  %.not.i.i118 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i118, label %_ZZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEJEE6handleEvENUlvE_D2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %.noexc120
  %i.mn = invoke noundef zeroext i1 %i.mm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEJEE6handleEvENUlvE_D2Ev.exit unwind label %bb.bp ; 0 uses

bb.bp:                                            ; preds = %bb.bo
  %i.mo = landingpad { ptr, i32 }
          catch ptr null
  %i.mp = extractvalue { ptr, i32 } %i.mo, 0
  call void @__clang_call_terminate(ptr %i.mp) #42
  unreachable

_ZZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEJEE6handleEvENUlvE_D2Ev.exit: ; preds = %bb.bo, %.noexc120
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4722
  %.pre185.a = load i8, ptr %.phi.trans.insert, align 2, !tbaa !3296, !range !274
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  %i.mq = trunc nuw i8 %.pre185.a to i1
  br i1 %i.mq, label %bb.cc, label %bb.bq

bb.bq:                                            ; preds = %_ZZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEJEE6handleEvENUlvE_D2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #40
  %i.mr = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ms = load ptr, ptr %i.ll, align 8, !tbaa !312 ; 2 uses
  %i.mt = load <2 x ptr>, ptr %15, align 16, !tbaa !179
  store <2 x ptr> %i.mt, ptr %17, align 16, !tbaa !179
  %.not.i.i.i123 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i123, label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEEEC2ERKS6_.exit125, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 3 uses
  %i.mv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i124 = icmp eq i8 %i.mv, 0
  br i1 %.not.i.i.i.i124, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mw = load i32, ptr %i.mu, align 4, !tbaa !276
  %i.mx = add nsw i32 %i.mw, 1
  store i32 %i.mx, ptr %i.mu, align 4, !tbaa !276
end_hunk_1
begin_hunk_2_@_ZN4crow4CrowIJEE6handleERNS_7requestERNS_8responseERSt10unique_ptrINS_21routing_handle_resultESt14default_deleteIS7_EE:bb.a
  %.not.i.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i.i, label %.thread6, label %bb.b

.thread6:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = getelementptr inbounds i8, ptr null, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr %i.l, ptr %i.m, align 8, !tbaa !1407
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.j, 9223372036854775800
  br i1 %i.n, label %.noexc.i.i.i, label %bb.c, !prof !316

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #39
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #43 ; 5 uses
  store ptr %i.o, ptr %i.c, align 8, !tbaa !1406
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !1471
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !1407
  %i.s = icmp samesign ugt i64 %i.j, 8
  br i1 %i.s, label %bb.d, label %bb.e, !prof !1133

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.t = icmp eq i64 %i.j, 8
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.g, align 8, !tbaa !162
  store i64 %i.u, ptr %i.o, align 8, !tbaa !162
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

_ZNSt6vectorImSaImEEC2ERKS1_.exit.i:              ; preds = %.thread6, %bb.f, %bb.e, %bb.d
  %i.v = phi ptr [ %i.r, %bb.f ], [ %i.r, %bb.e ], [ %i.r, %bb.d ], [ %i.m, %.thread6 ]
  %i.w = phi ptr [ %i.q, %bb.f ], [ %i.q, %bb.e ], [ %i.q, %bb.d ], [ %i.l, %.thread6 ]
  %i.x = phi ptr [ %i.p, %bb.f ], [ %i.p, %bb.e ], [ %i.p, %bb.d ], [ %i.k, %.thread6 ]
  store ptr %i.w, ptr %i.x, align 8, !tbaa !1471
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  invoke void @_ZN4crow14routing_paramsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.y, ptr noundef nonnull align 8 dereferenceable(96) %i.z)
          to label %_ZN4crow21routing_handle_resultC2ERKS0_.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !1406 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !1407
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
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !1467
  store i8 %i.ai, ptr %i.ag, align 8, !tbaa !1467
  invoke void @_ZN4crow6Router6handleINS_4CrowIJEEEEEvRNS_7requestERNS_8responseENS_21routing_handle_resultE(ptr noundef nonnull align 8 dereferenceable(3656) %i.a, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(352) %2, ptr nofreeobj noundef nonnull align 8 dereferenceable(144) %4)
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
  %i.b = load i8, ptr %1, align 8, !tbaa !1389    ; 2 uses
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
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1465 ; 6 uses
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
  %i.l = load i64, ptr %i.j, align 8, !tbaa !1465
  %.not60 = icmp eq i64 %i.l, 0
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br i1 %.not60, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.m = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %7)
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 376 ; 4 uses
  store i32 0, ptr %i.o, align 8, !tbaa !305
  %i.p = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %.not.i = icmp sgt i32 %i.p, 0
  br i1 %.not.i, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef nonnull @.str.473, i64 noundef 20)
          to label %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit:           ; preds = %bb.f
  %.pre189.a = load i32, ptr %i.o, align 8, !tbaa !305
  %.pre190.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.r = icmp slt i32 %.pre189.a, %.pre190.a
  br i1 %i.r, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !164
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !166
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef %i.s, i64 noundef %i.u)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.g
  %.pre191.a = load i32, ptr %i.o, align 8, !tbaa !305
  %.pre192.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.w = icmp slt i32 %.pre191.a, %.pre192.a
  br i1 %i.w, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef nonnull @.str.371, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.e, %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  %i.y = load i8, ptr %1, align 8, !tbaa !1389    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3303)
  %i.z = icmp slt i8 %i.y, 34
  br i1 %i.z, label %bb.i, label %bb.m, !prof !568

bb.i:                                             ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.aa = sext i8 %i.y to i64
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !551, !noalias !3303 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ae, ptr %8, align 8, !tbaa !160, !alias.scope !3303
  %17 = icmp eq ptr %i.ad, null
  br i1 %17, label %.noexc.i, label %18

.noexc.i:                                         ; preds = %bb.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.234) #39
          to label %.noexc78 unwind label %bb.p

.noexc78:                                         ; preds = %.noexc.i
  unreachable

18:                                               ; preds = %bb.i
  %19 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !3303
  store i64 %19, ptr %i.a, align 8, !tbaa !162, !noalias !3303
  %20 = icmp ugt i64 %19, 15
  br i1 %20, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %18
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc79.a unwind label %bb.p ; 2 uses

.noexc79.a:                                       ; preds = %.noexc.i.i
  store ptr %i.af, ptr %8, align 8, !tbaa !164, !alias.scope !3303
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !162, !noalias !3303
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !165, !alias.scope !3303
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc79.a, %18
  %i.ah = phi ptr [ %i.af, %.noexc79.a ], [ %i.ae, %18 ] ; 2 uses
  switch i64 %19, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ai = load i8, ptr %i.ad, align 1, !tbaa !165
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !165
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %i.ad, i64 %19, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !162, !noalias !3303 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !166, !alias.scope !3303
  %i.al = load ptr, ptr %8, align 8, !tbaa !164, !alias.scope !3303
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !3303
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

bb.m:                                             ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !3303
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.475, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc80 unwind label %bb.p

.noexc80:                                         ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !3303
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit: ; preds = %.noexc80, %bb.l
  %i.an = load i32, ptr %i.o, align 8, !tbaa !305
  %i.ao = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %.not.i81 = icmp slt i32 %i.an, %i.ao
  br i1 %.not.i81, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83, label %bb.n

bb.n:                                             ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit
  %i.ap = load ptr, ptr %8, align 8, !tbaa !164
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !166
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83 unwind label %bb.q ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit, %bb.n
  %i.at = load ptr, ptr %8, align 8, !tbaa !164   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !165
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

bb.p:                                             ; preds = %bb.m, %.noexc.i.i, %.noexc.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.q:                                             ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %8, align 8, !tbaa !164   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.q
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !165
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
  store i32 405, ptr %9, align 8, !tbaa !537
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !160
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.bi, align 8, !tbaa !166
  store i8 0, ptr %i.bh, align 8, !tbaa !165
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !538
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  store i64 1, ptr %i.bl, align 8, !tbaa !539
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bn, align 8, !tbaa !177
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 168 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.bo, i8 0, i64 19, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bp, i8 0, i64 64, i1 false)
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !160
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 176
  store i64 0, ptr %i.bs, align 8, !tbaa !166
  store i8 0, ptr %i.br, align 8, !tbaa !165
  %i.bt = call noundef nonnull align 8 dereferenceable(352) ptr @_ZN4crow8responseaSEOS0_(ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef nonnull align 8 dereferenceable(352) %9) #40 ; 0 uses
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !164 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.br
  br i1 %i.bv, label %_ZN4crow8response16static_file_infoD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.s
  %i.bw = load i64, ptr %i.br, align 8, !tbaa !165
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #41
  br label %_ZN4crow8response16static_file_infoD2Ev.exit.i

_ZN4crow8response16static_file_infoD2Ev.exit.i:   ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !244 ; 2 uses
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
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !244 ; 2 uses
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
  %i.cj = load ptr, ptr %i.bm, align 8, !tbaa !540 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.ck, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.cj, %_ZNSt14_Function_baseD2Ev.exit2.i ] ; 6 uses
  %i.ck = load ptr, ptr %.06.i.i.i, align 8, !tbaa !235 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !164 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !165
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !164 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !165
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #41
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #41
  %.not.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.cx = load ptr, ptr %i.bj, align 8, !tbaa !538
  %i.cy = load i64, ptr %i.bl, align 8, !tbaa !539
  %i.cz = shl i64 %i.cy, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cx, i8 0, i64 %i.cz, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.da = load ptr, ptr %i.bj, align 8, !tbaa !538 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.bk
  br i1 %i.db, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i
  %i.dc = load i64, ptr %i.bl, align 8, !tbaa !539
  %i.dd = shl i64 %i.dc, 3
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #41
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, %bb.x
  %i.de = load ptr, ptr %i.bg, align 8, !tbaa !164 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.bh
  br i1 %i.df, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit
  %i.dg = load i64, ptr %i.bh, align 8, !tbaa !165
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @_ZN4crow8response3endEv(ptr noundef nonnull align 8 dereferenceable(352) %2)
  br label %bb.br

.critedge73:                                      ; preds = %bb.c
  %i.di = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.dj = icmp slt i32 %i.di, 2
  br i1 %i.dj, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %.critedge73
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %10)
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 376 ; 2 uses
  store i32 1, ptr %i.dk, align 8, !tbaa !305
  %i.dl = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %.not.i87 = icmp sgt i32 %i.dl, 1
  br i1 %.not.i87, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit91, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %10, ptr noundef nonnull @.str.469, i64 noundef 19)
          to label %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit unwind label %bb.ab ; 0 uses

_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit:           ; preds = %bb.z
  %.pre193 = load i32, ptr %i.dk, align 8, !tbaa !305
  %.pre194 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.dn = icmp slt i32 %.pre193, %.pre194
  br i1 %i.dn, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit91, label %bb.aa

bb.aa:                                            ; preds = %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit
  %i.do = load ptr, ptr %i.g, align 8, !tbaa !164
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 48
end_hunk_2
begin_hunk_3_@_ZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEJEE6handleEv:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !3490
  br label %.body

bb.ah:                                            ; preds = %bb.af
  %i.hq = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !3490 ; 2 uses
  store ptr %i.hq, ptr %4, align 8, !tbaa !257, !noalias !3490
  %i.hr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8, !noalias !3490
  %i.hs = getelementptr i8, ptr %i.hq, i64 -24
  %i.ht = load i64, ptr %i.hs, align 8
  %i.hu = getelementptr inbounds i8, ptr %4, i64 %i.ht
  store ptr %i.hr, ptr %i.hu, align 8, !tbaa !257, !noalias !3490
  %i.hv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8, !noalias !3490
  store ptr %i.hv, ptr %i.hi, align 8, !tbaa !257, !noalias !3490
  %i.hw = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.hw, align 8, !tbaa !257, !noalias !3490
  %i.hx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !164, !noalias !3490 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.ia = icmp eq ptr %i.hy, %i.hz
  br i1 %i.ia, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.ah
  %i.ib = load i64, ptr %i.hz, align 8, !tbaa !165, !noalias !3490
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ic) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.hw, align 8, !tbaa !257, !noalias !3490
  %i.id = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.id) #40
  %i.ie = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !3490 ; 2 uses
  store ptr %i.ie, ptr %4, align 8, !tbaa !257, !noalias !3490
  %i.if = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !3490
  %i.ig = getelementptr i8, ptr %i.ie, i64 -24
  %i.ih = load i64, ptr %i.ig, align 8
  %i.ii = getelementptr inbounds i8, ptr %4, i64 %i.ih
  store ptr %i.if, ptr %i.ii, align 8, !tbaa !257, !noalias !3490
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ij, align 8, !tbaa !1062, !noalias !3490
  %i.ik = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ik) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !3490
  %i.il = load i32, ptr %i.hd, align 8, !tbaa !305
  %i.im = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %.not.i64 = icmp slt i32 %i.il, %i.im
  br i1 %.not.i64, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.in = load ptr, ptr %14, align 8, !tbaa !164
  %i.io = load i64, ptr %i.hh, align 8, !tbaa !166
  %i.ip = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %13, ptr noundef %i.in, i64 noundef %i.io)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.bg ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.ai
  %.pre = load i32, ptr %i.hd, align 8, !tbaa !305
  %.pre168.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.iq = icmp slt i32 %.pre, %.pre168.a
  br i1 %i.iq, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.aj

bb.aj:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.ir = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %13, ptr noundef nonnull @.str.371, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.bg ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.aj
  %.pre169.a = load i32, ptr %i.hd, align 8, !tbaa !305
  %.pre170.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.is = icmp slt i32 %.pre169.a, %.pre170.a
  br i1 %i.is, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ak

bb.ak:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.it = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(380) %13, ptr noundef nonnull %0)
          to label %_ZN4crow6loggerlsIPNS_10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEJEEEEERS0_RKT_.exit unwind label %bb.bg ; 0 uses

_ZN4crow6loggerlsIPNS_10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEJEEEEERS0_RKT_.exit: ; preds = %bb.ak
  %.pre171.a = load i32, ptr %i.hd, align 8, !tbaa !305
  %.pre172.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.iu = icmp slt i32 %.pre171.a, %.pre172.a
  br i1 %i.iu, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.al

bb.al:                                            ; preds = %_ZN4crow6loggerlsIPNS_10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEJEEEEERS0_RKT_.exit
  %i.iv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %13, ptr noundef nonnull @.str.526, i64 noundef 6)
          to label %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit unwind label %bb.bg ; 0 uses

_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit:            ; preds = %bb.al
  %.pre173.a = load i32, ptr %i.hd, align 8, !tbaa !305
  %.pre174.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.iw = icmp slt i32 %.pre173.a, %.pre174.a
  %i.ix = load ptr, ptr %i.h, align 8, !tbaa !1581, !nonnull !275, !align !411
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 248
  %i.iz = load i8, ptr %i.iy, align 8, !tbaa !1476
  %i.ja = add i8 %i.iz, 48                        ; 2 uses
  br i1 %i.iw, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.am

bb.am:                                            ; preds = %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.ja, ptr %i.d, align 1, !tbaa !165
  %i.jb = load ptr, ptr %13, align 8, !tbaa !257
  %i.jc = getelementptr i8, ptr %i.jb, i64 -24
  %i.jd = load i64, ptr %i.jc, align 8
  %i.je = getelementptr inbounds i8, ptr %13, i64 %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !1332
  %.not.i.i73 = icmp eq i64 %i.jg, 0
  br i1 %.not.i.i73, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %13, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit unwind label %bb.bg ; 0 uses

bb.ao:                                            ; preds = %bb.am
  %i.ji = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %13, i8 noundef signext %i.ja)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit unwind label %bb.bg ; 0 uses

_ZN4crow6loggerlsIcEERS0_RKT_.exit:               ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre175.a = load i32, ptr %i.hd, align 8, !tbaa !305
  %.pre176.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.jj = icmp slt i32 %.pre175.a, %.pre176.a
  br i1 %i.jj, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ap

bb.ap:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit
  %i.jk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %13, ptr noundef nonnull @.str.385, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78 unwind label %bb.bg ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78:          ; preds = %bb.ap
  %.pre177.a = load i32, ptr %i.hd, align 8, !tbaa !305
  %.pre178.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.jl = icmp slt i32 %.pre177.a, %.pre178.a
  %i.jm = load ptr, ptr %i.h, align 8, !tbaa !1581, !nonnull !275, !align !411
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 249
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !1477
  %i.jp = add i8 %i.jo, 48                        ; 2 uses
  br i1 %i.jl, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.aq

bb.aq:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.jp, ptr %i.c, align 1, !tbaa !165
  %i.jq = load ptr, ptr %13, align 8, !tbaa !257
  %i.jr = getelementptr i8, ptr %i.jq, i64 -24
  %i.js = load i64, ptr %i.jr, align 8
  %i.jt = getelementptr inbounds i8, ptr %13, i64 %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !1332
  %.not.i.i80 = icmp eq i64 %i.jv, 0
  br i1 %.not.i.i80, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %13, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit84 unwind label %bb.bg ; 0 uses

bb.as:                                            ; preds = %bb.aq
  %i.jx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %13, i8 noundef signext %i.jp)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit84 unwind label %bb.bg ; 0 uses

_ZN4crow6loggerlsIcEERS0_RKT_.exit84:             ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.pre179.a = load i32, ptr %i.hd, align 8, !tbaa !305
  %.pre180.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.jy = icmp slt i32 %.pre179.a, %.pre180.a
  br i1 %i.jy, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.at

bb.at:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !165
  %i.jz = load ptr, ptr %13, align 8, !tbaa !257
  %i.ka = getelementptr i8, ptr %i.jz, i64 -24
  %i.kb = load i64, ptr %i.ka, align 8
  %i.kc = getelementptr inbounds i8, ptr %13, i64 %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !1332
  %.not.i.i86 = icmp eq i64 %i.ke, 0
  br i1 %.not.i.i86, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %13, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87 unwind label %bb.bg ; 0 uses

bb.av:                                            ; preds = %bb.at
  %i.kg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %13, i8 noundef signext 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87 unwind label %bb.bg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87: ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90

_ZN4crow6loggerlsIcEERS0_RKT_.exit90:             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, %_ZN4crow6loggerlsIPNS_10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEJEEEEERS0_RKT_.exit, %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit, %_ZN4crow6loggerlsIcEERS0_RKT_.exit, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87, %_ZN4crow6loggerlsIcEERS0_RKT_.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  %i.kh = load ptr, ptr %i.h, align 8, !tbaa !1581, !nonnull !275, !align !411
  %i.ki = load i8, ptr %i.kh, align 8, !tbaa !1389 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3491)
  %i.kj = icmp slt i8 %i.ki, 34
  br i1 %i.kj, label %bb.aw, label %bb.ba, !prof !568

bb.aw:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit90
  %i.kk = sext i8 %i.ki to i64
  %i.kl = and i64 %i.kk, 4294967295
  %i.km = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.kl
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !551, !noalias !3491 ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.ko, ptr %16, align 8, !tbaa !160, !alias.scope !3491
  %22 = icmp eq ptr %i.kn, null
  br i1 %22, label %.noexc.i91, label %23

.noexc.i91:                                       ; preds = %bb.aw
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.234) #39
          to label %.noexc92 unwind label %bb.bh

.noexc92:                                         ; preds = %.noexc.i91
  unreachable

23:                                               ; preds = %bb.aw
  %24 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kn) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !3491
  store i64 %24, ptr %i.a, align 8, !tbaa !162, !noalias !3491
  %25 = icmp ugt i64 %24, 15
  br i1 %25, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %23
  %i.kp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc93 unwind label %bb.bh  ; 2 uses

.noexc93:                                         ; preds = %.noexc.i.i
  store ptr %i.kp, ptr %16, align 8, !tbaa !164, !alias.scope !3491
  %i.kq = load i64, ptr %i.a, align 8, !tbaa !162, !noalias !3491
  store i64 %i.kq, ptr %i.ko, align 8, !tbaa !165, !alias.scope !3491
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc93, %23
  %i.kr = phi ptr [ %i.kp, %.noexc93 ], [ %i.ko, %23 ] ; 2 uses
  switch i64 %24, label %bb.ay [
    i64 1, label %bb.ax
    i64 0, label %bb.az
  ]

bb.ax:                                            ; preds = %._crit_edge.i.i.i
  %i.ks = load i8, ptr %i.kn, align 1, !tbaa !165
  store i8 %i.ks, ptr %i.kr, align 1, !tbaa !165
  br label %bb.az

bb.ay:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kr, ptr nonnull align 1 %i.kn, i64 %24, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %._crit_edge.i.i.i
  %i.kt = load i64, ptr %i.a, align 8, !tbaa !162, !noalias !3491 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.kt, ptr %i.ku, align 8, !tbaa !166, !alias.scope !3491
  %i.kv = load ptr, ptr %16, align 8, !tbaa !164, !alias.scope !3491
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.kt
  store i8 0, ptr %i.kw, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !3491
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

bb.ba:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit90
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !3491
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.475, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc94 unwind label %bb.bh

.noexc94:                                         ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !3491
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit: ; preds = %.noexc94, %bb.az
  %i.kx = load i32, ptr %i.hd, align 8, !tbaa !305
  %i.ky = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %.not.i95 = icmp slt i32 %i.kx, %i.ky
  br i1 %.not.i95, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103, label %bb.bb

bb.bb:                                            ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit
  %i.kz = load ptr, ptr %16, align 8, !tbaa !164
  %i.la = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !166
  %i.lc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %13, ptr noundef %i.kz, i64 noundef %i.lb)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit97 unwind label %bb.bi ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit97: ; preds = %bb.bb
  %.pre181.a = load i32, ptr %i.hd, align 8, !tbaa !305
  %.pre182.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.ld = icmp slt i32 %.pre181.a, %.pre182.a
  br i1 %i.ld, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103, label %bb.bc

bb.bc:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit97
  %i.le = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %13, ptr noundef nonnull @.str.371, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit100 unwind label %bb.bi ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit100:         ; preds = %bb.bc
  %.pre183.a = load i32, ptr %i.hd, align 8, !tbaa !305
  %.pre184 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.lf = icmp slt i32 %.pre183.a, %.pre184
  br i1 %i.lf, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103, label %bb.bd

bb.bd:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit100
  %i.lg = load ptr, ptr %i.h, align 8, !tbaa !1581, !nonnull !275, !align !411 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 40
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !164
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 48
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !166
  %i.ll = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %13, ptr noundef %i.li, i64 noundef %i.lk)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103 unwind label %bb.bi ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit97, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit100, %bb.bd
  %i.lm = load ptr, ptr %16, align 8, !tbaa !164  ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.lo = icmp eq ptr %i.lm, %i.ln
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103
  %i.lp = load i64, ptr %i.ln, align 8, !tbaa !165
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lq) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  %i.lr = load ptr, ptr %14, align 8, !tbaa !164  ; 2 uses
  %i.ls = icmp eq ptr %i.lr, %i.hg
  br i1 %i.ls, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.lt = load i64, ptr %i.hg, align 8, !tbaa !165
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lu) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br label %bb.bl

bb.be:                                            ; preds = %bb.ae
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bf:                                            ; preds = %_ZNK4crow13SocketAdaptor15remote_endpointEv.exit, %_ZN4crow6loggerlsIA10_cEERS0_RKT_.exit
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bg:                                            ; preds = %bb.ar, %bb.as, %bb.ai, %bb.aj, %bb.al, %bb.ak, %bb.ap, %bb.ao, %bb.an, %bb.av, %bb.au
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bh:                                            ; preds = %bb.ba, %.noexc.i.i, %.noexc.i91
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

bb.bi:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.lz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ma = load ptr, ptr %16, align 8, !tbaa !164  ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.mc = icmp eq ptr %i.ma, %i.mb
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.bi
  %i.md = load i64, ptr %i.mb, align 8, !tbaa !165
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.ma, i64 noundef %i.me) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.bh
  %.pn22 = phi { ptr, i32 } [ %i.ly, %bb.bh ], [ %i.lz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %i.lz, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %bb.bg
  %.pn22.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.lx, %bb.bg ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ] ; 2 uses
  %i.mf = load ptr, ptr %14, align 8, !tbaa !164  ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.hg
  br i1 %i.mg, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.bj
  %i.mh = load i64, ptr %i.hg, align 8, !tbaa !165
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mi) #41
  br label %.body

.body:                                            ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113, %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn22.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.lw, %bb.bf ], [ %.pn22.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ], [ %.pn22.pn.pn.pn.pn.pn, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  br label %bb.bk

bb.bk:                                            ; preds = %.body, %bb.be
  %.pn22.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn.pn.pn.pn.pn, %.body ], [ %i.lv, %bb.be ]
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br label %common.resume

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %bb.ac
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 5121 ; 2 uses
  store i8 0, ptr %i.mj, align 1, !tbaa !1579
  br i1 %.017, label %bb.cr, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 4624 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 4728 ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 4744 ; 5 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !244 ; 2 uses
  %.not.i116 = icmp eq ptr %i.mn, null
  br i1 %.not.i116, label %_ZNSt8functionIFvvEEaSEDn.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mo = invoke noundef zeroext i1 %i.mn(ptr noundef nonnull align 8 dereferenceable(32) %i.ml, ptr noundef nonnull align 8 dereferenceable(32) %i.ml, i32 noundef 3)
          to label %bb.bo unwind label %bb.bp     ; 0 uses

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mm, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEaSEDn.exit

bb.bp:                                            ; preds = %bb.bn
  %i.mp = landingpad { ptr, i32 }
          catch ptr null
  %i.mq = extractvalue { ptr, i32 } %i.mp, 0
  call void @__clang_call_terminate(ptr %i.mq) #42
  unreachable

_ZNSt8functionIFvvEEaSEDn.exit:                   ; preds = %bb.bm, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !3492)
  %i.mr = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !648, !noalias !3492 ; 3 uses
  store ptr %i.mt, ptr %i.mr, align 8, !tbaa !312, !alias.scope !3492
  %i.mu = icmp eq ptr %i.mt, null
  br i1 %i.mu, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt8functionIFvvEEaSEDn.exit
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 8 ; 2 uses
  %i.mw = load atomic i32, ptr %i.mv monotonic, align 8, !noalias !3492
  br label %bb.br

bb.br:                                            ; preds = %bb.bs, %bb.bq
  %.06.i.i.i.i.i = phi i32 [ %i.mw, %bb.bq ], [ %i.na, %bb.bs ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mx = add nsw i32 %.06.i.i.i.i.i, 1
  %i.my = cmpxchg weak ptr %i.mv, i32 %.06.i.i.i.i.i, i32 %i.mx acq_rel monotonic, align 8, !noalias !3492 ; 2 uses
  %i.mz = extractvalue { i32, i1 } %i.my, 1
  %i.na = extractvalue { i32, i1 } %i.my, 0
  br i1 %i.mz, label %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEEE16shared_from_thisEv.exit, label %bb.br, !llvm.loop !34

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.br, %_ZNSt8functionIFvvEEaSEDn.exit
  %i.nb = call ptr @__cxa_allocate_exception(i64 8) #40, !noalias !3492 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.nb, align 8, !tbaa !257, !noalias !3492
  call void @__cxa_throw(ptr nonnull %i.nb, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #39, !noalias !3492
  unreachable

_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEEE16shared_from_thisEv.exit: ; preds = %bb.bs
  %i.nc = load ptr, ptr %0, align 8, !tbaa !1540, !noalias !3492 ; 2 uses
  store ptr %i.nc, ptr %17, align 16, !tbaa !1496, !alias.scope !3492
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #40
  store ptr %i.nc, ptr %18, align 16, !tbaa !1496
  %i.nd = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.ne = load ptr, ptr %i.mr, align 8, !tbaa !312 ; 3 uses
  store ptr %i.ne, ptr %i.nd, align 8, !tbaa !312
  %.not.i.i.i117 = icmp eq ptr %i.ne, null
  br i1 %.not.i.i.i117, label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEEEC2ERKS6_.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEEE16shared_from_thisEv.exit
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8 ; 3 uses
  %i.ng = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i = icmp eq i8 %i.ng, 0
  br i1 %.not.i.i.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.nh = load i32, ptr %i.nf, align 4, !tbaa !276
  %i.ni = add nsw i32 %i.nh, 1
  store i32 %i.ni, ptr %i.nf, align 4, !tbaa !276
  br label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEEEC2ERKS6_.exit

bb.bv:                                            ; preds = %bb.bt
  %i.nj = atomicrmw volatile add ptr %i.nf, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEEEC2ERKS6_.exit

_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEEEC2ERKS6_.exit: ; preds = %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEEE16shared_from_thisEv.exit, %bb.bu, %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.nk = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.nk, align 8
  %i.nl = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #43
          to label %.noexc120 unwind label %bb.cg ; 2 uses

.noexc120:                                        ; preds = %_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEEEC2ERKS6_.exit
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 4760 ; 2 uses
  %i.no = load <2 x ptr>, ptr %18, align 16, !tbaa !179
  store ptr null, ptr %i.nd, align 8, !tbaa !312
  store <2 x ptr> %i.no, ptr %i.nl, align 8, !tbaa !179
  store ptr %i.nl, ptr %2, align 16, !tbaa !179
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.nn, i64 16, i1 false), !tbaa.struct !178
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.nn, align 8, !tbaa !165
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 4776 ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 4784
  %i.nr = load <2 x ptr>, ptr %i.np, align 8, !tbaa !179
  %i.ns = load ptr, ptr %i.np, align 8, !tbaa !179 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbvEZN4crow10ConnectionINS1_13SocketAdaptorENS1_4CrowIJEEEJEE6handleEvEUlvE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.np, align 8, !tbaa !179
  store <2 x ptr> %i.nr, ptr %i.nm, align 16, !tbaa !179
  store ptr @_ZNSt17_Function_handlerIFbvEZN4crow10ConnectionINS1_13SocketAdaptorENS1_4CrowIJEEEJEE6handleEvEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.nq, align 8, !tbaa !179
  %.not.i.i118 = icmp eq ptr %i.ns, null
  br i1 %.not.i.i118, label %_ZZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEJEE6handleEvENUlvE_D2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %.noexc120
  %i.nt = invoke noundef zeroext i1 %i.ns(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEJEE6handleEvENUlvE_D2Ev.exit unwind label %bb.bx ; 0 uses

bb.bx:                                            ; preds = %bb.bw
  %i.nu = landingpad { ptr, i32 }
          catch ptr null
  %i.nv = extractvalue { ptr, i32 } %i.nu, 0
  call void @__clang_call_terminate(ptr %i.nv) #42
  unreachable

_ZZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEJEE6handleEvENUlvE_D2Ev.exit: ; preds = %bb.bw, %.noexc120
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4722
  %.pre185.a = load i8, ptr %.phi.trans.insert, align 2, !tbaa !3493, !range !274
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #40
  %i.nw = trunc nuw i8 %.pre185.a to i1
  br i1 %i.nw, label %bb.ck, label %bb.by

bb.by:                                            ; preds = %_ZZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEJEE6handleEvENUlvE_D2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #40
  %i.nx = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ny = load ptr, ptr %i.mr, align 8, !tbaa !312 ; 2 uses
  %i.nz = load <2 x ptr>, ptr %17, align 16, !tbaa !179
  store <2 x ptr> %i.nz, ptr %19, align 16, !tbaa !179
  %.not.i.i.i123 = icmp eq ptr %i.ny, null
  br i1 %.not.i.i.i123, label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEEEC2ERKS6_.exit125, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 8 ; 3 uses
  %i.ob = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i124 = icmp eq i8 %i.ob, 0
  br i1 %.not.i.i.i.i124, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.oc = load i32, ptr %i.oa, align 4, !tbaa !276
  %i.od = add nsw i32 %i.oc, 1
  store i32 %i.od, ptr %i.oa, align 4, !tbaa !276
end_hunk_3
begin_hunk_4_@_ZZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEJEE6handleEvENUlvE_D2Ev:bb.a
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !141
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !141
  br label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !316

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40
  br label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEJEE6handleEvENUlvE0_D2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !314
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !315
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !141
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !141
  br label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !316

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40
  br label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

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
  %i.b = load i8, ptr %1, align 8, !tbaa !1389    ; 2 uses
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
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1465 ; 6 uses
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
  %i.l = load i64, ptr %i.j, align 8, !tbaa !1465
  %.not60 = icmp eq i64 %i.l, 0
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br i1 %.not60, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.m = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %7)
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 376 ; 4 uses
  store i32 0, ptr %i.o, align 8, !tbaa !305
  %i.p = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %.not.i = icmp sgt i32 %i.p, 0
  br i1 %.not.i, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef nonnull @.str.473, i64 noundef 20)
          to label %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit:           ; preds = %bb.f
  %.pre189.a = load i32, ptr %i.o, align 8, !tbaa !305
  %.pre190.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.r = icmp slt i32 %.pre189.a, %.pre190.a
  br i1 %i.r, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !164
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !166
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef %i.s, i64 noundef %i.u)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.g
  %.pre191.a = load i32, ptr %i.o, align 8, !tbaa !305
  %.pre192.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.w = icmp slt i32 %.pre191.a, %.pre192.a
  br i1 %i.w, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef nonnull @.str.371, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.e, %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  %i.y = load i8, ptr %1, align 8, !tbaa !1389    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3500)
  %i.z = icmp slt i8 %i.y, 34
  br i1 %i.z, label %bb.i, label %bb.m, !prof !568

bb.i:                                             ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.aa = sext i8 %i.y to i64
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !551, !noalias !3500 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ae, ptr %8, align 8, !tbaa !160, !alias.scope !3500
  %17 = icmp eq ptr %i.ad, null
  br i1 %17, label %.noexc.i, label %18

.noexc.i:                                         ; preds = %bb.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.234) #39
          to label %.noexc78 unwind label %bb.p

.noexc78:                                         ; preds = %.noexc.i
  unreachable

18:                                               ; preds = %bb.i
  %19 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !3500
  store i64 %19, ptr %i.a, align 8, !tbaa !162, !noalias !3500
  %20 = icmp ugt i64 %19, 15
  br i1 %20, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %18
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc79.a unwind label %bb.p ; 2 uses

.noexc79.a:                                       ; preds = %.noexc.i.i
  store ptr %i.af, ptr %8, align 8, !tbaa !164, !alias.scope !3500
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !162, !noalias !3500
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !165, !alias.scope !3500
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc79.a, %18
  %i.ah = phi ptr [ %i.af, %.noexc79.a ], [ %i.ae, %18 ] ; 2 uses
  switch i64 %19, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ai = load i8, ptr %i.ad, align 1, !tbaa !165
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !165
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %i.ad, i64 %19, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !162, !noalias !3500 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !166, !alias.scope !3500
  %i.al = load ptr, ptr %8, align 8, !tbaa !164, !alias.scope !3500
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !3500
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

bb.m:                                             ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !3500
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.475, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc80 unwind label %bb.p

.noexc80:                                         ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !3500
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit: ; preds = %.noexc80, %bb.l
  %i.an = load i32, ptr %i.o, align 8, !tbaa !305
  %i.ao = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %.not.i81 = icmp slt i32 %i.an, %i.ao
  br i1 %.not.i81, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83, label %bb.n

bb.n:                                             ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit
  %i.ap = load ptr, ptr %8, align 8, !tbaa !164
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !166
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83 unwind label %bb.q ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit, %bb.n
  %i.at = load ptr, ptr %8, align 8, !tbaa !164   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !165
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

bb.p:                                             ; preds = %bb.m, %.noexc.i.i, %.noexc.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.q:                                             ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %8, align 8, !tbaa !164   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.q
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !165
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
  store i32 405, ptr %9, align 8, !tbaa !537
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !160
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.bi, align 8, !tbaa !166
  store i8 0, ptr %i.bh, align 8, !tbaa !165
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !538
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  store i64 1, ptr %i.bl, align 8, !tbaa !539
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bn, align 8, !tbaa !177
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 168 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.bo, i8 0, i64 19, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bp, i8 0, i64 64, i1 false)
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !160
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 176
  store i64 0, ptr %i.bs, align 8, !tbaa !166
  store i8 0, ptr %i.br, align 8, !tbaa !165
  %i.bt = call noundef nonnull align 8 dereferenceable(352) ptr @_ZN4crow8responseaSEOS0_(ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef nonnull align 8 dereferenceable(352) %9) #40 ; 0 uses
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !164 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.br
  br i1 %i.bv, label %_ZN4crow8response16static_file_infoD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.s
  %i.bw = load i64, ptr %i.br, align 8, !tbaa !165
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #41
  br label %_ZN4crow8response16static_file_infoD2Ev.exit.i

_ZN4crow8response16static_file_infoD2Ev.exit.i:   ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !244 ; 2 uses
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
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !244 ; 2 uses
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
  %i.cj = load ptr, ptr %i.bm, align 8, !tbaa !540 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.ck, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.cj, %_ZNSt14_Function_baseD2Ev.exit2.i ] ; 6 uses
  %i.ck = load ptr, ptr %.06.i.i.i, align 8, !tbaa !235 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !164 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !165
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !164 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !165
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #41
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #41
  %.not.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.cx = load ptr, ptr %i.bj, align 8, !tbaa !538
  %i.cy = load i64, ptr %i.bl, align 8, !tbaa !539
  %i.cz = shl i64 %i.cy, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cx, i8 0, i64 %i.cz, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.da = load ptr, ptr %i.bj, align 8, !tbaa !538 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.bk
  br i1 %i.db, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i
  %i.dc = load i64, ptr %i.bl, align 8, !tbaa !539
  %i.dd = shl i64 %i.dc, 3
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #41
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, %bb.x
  %i.de = load ptr, ptr %i.bg, align 8, !tbaa !164 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.bh
  br i1 %i.df, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit
  %i.dg = load i64, ptr %i.bh, align 8, !tbaa !165
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @_ZN4crow8response3endEv(ptr noundef nonnull align 8 dereferenceable(352) %2)
  br label %bb.br

.critedge73:                                      ; preds = %bb.c
  %i.di = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.dj = icmp slt i32 %i.di, 2
  br i1 %i.dj, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %.critedge73
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %10)
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 376 ; 2 uses
  store i32 1, ptr %i.dk, align 8, !tbaa !305
  %i.dl = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %.not.i87 = icmp sgt i32 %i.dl, 1
  br i1 %.not.i87, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit91, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %10, ptr noundef nonnull @.str.469, i64 noundef 19)
          to label %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit unwind label %bb.ab ; 0 uses

_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit:           ; preds = %bb.z
  %.pre193 = load i32, ptr %i.dk, align 8, !tbaa !305
  %.pre194 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !296
  %i.dn = icmp slt i32 %.pre193, %.pre194
  br i1 %i.dn, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit91, label %bb.aa

bb.aa:                                            ; preds = %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit
  %i.do = load ptr, ptr %i.g, align 8, !tbaa !164
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 48
end_hunk_4
