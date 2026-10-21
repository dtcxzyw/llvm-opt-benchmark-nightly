Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example_session?download=true
inline.NumInlined: 13210
inline.NumDeleted: 5212
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN4crow6Router14handle_initialERNS_7requestERNS_8responseE:_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i356: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i354, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i355
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i352, i64 noundef 80) #42
  %.not.i.i.i357 = icmp eq ptr %i.sb, null
  br i1 %.not.i.i.i357, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i358, label %.lr.ph.i.i.i351, !llvm.loop !2

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i358: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i356, %_ZNSt14_Function_baseD2Ev.exit2.i252
  %i.so = load ptr, ptr %i.ra, align 8, !tbaa !122
  %i.sp = load i64, ptr %i.rc, align 8, !tbaa !123
  %i.sq = shl i64 %i.sp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.so, i8 0, i64 %i.sq, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rd, i8 0, i64 16, i1 false)
  %i.sr = load ptr, ptr %i.ra, align 8, !tbaa !122 ; 2 uses
  %i.ss = icmp eq ptr %i.sr, %i.rb
  br i1 %i.ss, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit361, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i358
  %i.st = load i64, ptr %i.rc, align 8, !tbaa !123
  %i.su = shl i64 %i.st, 3
  call void @_ZdlPvm(ptr noundef %i.sr, i64 noundef %i.su) #42
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit361

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit361: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i358, %bb.cc
  %i.sv = load ptr, ptr %i.qx, align 8, !tbaa !101 ; 2 uses
  %i.sw = icmp eq ptr %i.sv, %i.qy
  br i1 %i.sw, label %_ZN4crow8responseD2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i253: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit361
  %i.sx = load i64, ptr %i.qy, align 8, !tbaa !102
  %i.sy = add i64 %i.sx, 1
  call void @_ZdlPvm(ptr noundef %i.sv, i64 noundef %i.sy) #42
  br label %_ZN4crow8responseD2Ev.exit256

_ZN4crow8responseD2Ev.exit256:                    ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit361, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i253
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #41
  invoke void @_ZN4crow8response3endEv(ptr noundef nonnull align 8 dereferenceable(352) %3)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.invoke
  store i8 %i.f, ptr %i.r, align 8, !tbaa !1084
  br label %bb.cd

bb.cd:                                            ; preds = %.sink.split, %_ZN4crow8responseD2Ev.exit256
  %i.sz = load ptr, ptr %10, align 8, !tbaa !101  ; 2 uses
  %i.ta = icmp eq ptr %i.sz, %i.fd
  br i1 %i.ta, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257: ; preds = %bb.cd
  %i.tb = load i64, ptr %i.fd, align 8, !tbaa !102
  %i.tc = add i64 %i.tb, 1
  call void @_ZdlPvm(ptr noundef %i.sz, i64 noundef %i.tc) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %.critedge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159
  %.pn124.pn.pn = phi { ptr, i32 } [ %.pn124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ], [ %.pn121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185 ], [ %.pn117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ], [ %.pn113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237 ], [ %.pn111, %bb.bw ], [ %i.ly, %bb.ax ], [ %.pn121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186 ], [ %.pn113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236 ], [ %lpad.loopexit.split-lp610, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.td = load ptr, ptr %10, align 8, !tbaa !101  ; 2 uses
  %i.te = icmp eq ptr %i.td, %i.fd
  br i1 %i.te, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188
  %i.tf = load i64, ptr %i.fd, align 8, !tbaa !102
  %i.tg = add i64 %i.tf, 1
  call void @_ZdlPvm(ptr noundef %i.td, i64 noundef %i.tg) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %bb.dy

bb.ce:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #41
  %i.th = sext i8 %i.f to i64                     ; 2 uses
  %i.ti = getelementptr inbounds nuw [104 x i8], ptr %1, i64 %i.th
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 64 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  invoke void @_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"struct.crow::routing_handle_result") align 8 %22, ptr noundef nonnull align 8 dereferenceable(80) %i.tj, ptr noundef nonnull align 8 dereferenceable(32) %i.tk, ptr noundef nonnull align 8 dereferenceable(80) %i.tj, i64 noundef 0, ptr noundef null, ptr noundef null)
          to label %_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit264 unwind label %bb.ch

_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit264: ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(137) %i.g, ptr noundef nonnull align 8 dereferenceable(137) %22, i64 16, i1 false)
  %i.tl = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.tm = load ptr, ptr %i.i, align 8, !tbaa !1009 ; 3 uses
  %i.tn = load ptr, ptr %i.j, align 8, !tbaa !1010
  %i.to = load <2 x ptr>, ptr %i.tl, align 8, !tbaa !1086
  store <2 x ptr> %i.to, ptr %i.i, align 8, !tbaa !1086
  %i.tp = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !1010
  store ptr %i.tq, ptr %i.j, align 8, !tbaa !1010
  %.not.i.i.i.i.i.i265 = icmp eq ptr %i.tm, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tl, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i265, label %_ZN4crow21routing_handle_resultaSEOS0_.exit266, label %bb.cf

bb.cf:                                            ; preds = %_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit264
  %i.tr = ptrtoint ptr %i.tn to i64
  %i.ts = ptrtoint ptr %i.tm to i64
  %i.tt = sub i64 %i.tr, %i.ts
  call void @_ZdlPvm(ptr noundef nonnull %i.tm, i64 noundef %i.tt) #42
  br label %_ZN4crow21routing_handle_resultaSEOS0_.exit266

_ZN4crow21routing_handle_resultaSEOS0_.exit266:   ; preds = %_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit264, %bb.cf
  %i.tu = getelementptr inbounds nuw i8, ptr %22, i64 40
  %i.tv = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4crow14routing_paramsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.k, ptr noundef nonnull align 8 dereferenceable(96) %i.tu) #41 ; 0 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %22, i64 136
  %i.tx = load i8, ptr %i.tw, align 8, !tbaa !1084
  store i8 %i.tx, ptr %i.r, align 8, !tbaa !1084
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %22) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #41
  %i.ty = load i64, ptr %i.h, align 8, !tbaa !1082
  %.not = icmp eq i64 %i.ty, 0
  br i1 %.not, label %.preheader, label %bb.dx

.preheader:                                       ; preds = %_ZN4crow21routing_handle_resultaSEOS0_.exit266
  %i.tz = getelementptr inbounds nuw i8, ptr %23, i64 8
  br label %bb.ci

bb.cg:                                            ; preds = %_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit268
  %.0.add = add nuw nsw i64 %.0.idx398, 104       ; 2 uses
  %.not99 = icmp eq i64 %.0.add, 3576
  br i1 %.not99, label %bb.dj, label %bb.ci

bb.ch:                                            ; preds = %bb.ce
  %i.ua = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #41
  br label %bb.dy

bb.ci:                                            ; preds = %.preheader, %bb.cg
  %.0.idx398 = phi i64 [ 40, %.preheader ], [ %.0.add, %bb.cg ] ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.0.idx398
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #41
  %i.ub = getelementptr inbounds nuw i8, ptr %.0.ptr, i64 24 ; 2 uses
  invoke void @_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"struct.crow::routing_handle_result") align 8 %23, ptr noundef nonnull align 8 dereferenceable(80) %i.ub, ptr noundef nonnull align 8 dereferenceable(32) %i.tk, ptr noundef nonnull align 8 dereferenceable(80) %i.ub, i64 noundef 0, ptr noundef null, ptr noundef null)
          to label %_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit268 unwind label %bb.cy

_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit268: ; preds = %bb.ci
  %i.uc = load i64, ptr %i.tz, align 8, !tbaa !1082
  %.not100 = icmp eq i64 %i.uc, 0
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %23) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #41
  br i1 %.not100, label %bb.cg, label %bb.cj

bb.cj:                                            ; preds = %_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit268
  store i32 405, ptr %3, align 8, !tbaa !121
  store i8 1, ptr %i.g, align 8, !tbaa !1083
  %i.ud = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.ue = icmp slt i32 %i.ud, 1
  br i1 %i.ue, label %bb.ck, label %.critedge

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #41
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %24)
          to label %bb.cl unwind label %bb.da

bb.cl:                                            ; preds = %bb.ck
  %i.uf = getelementptr inbounds nuw i8, ptr %24, i64 376 ; 6 uses
  store i32 0, ptr %i.uf, align 8, !tbaa !282
  %i.ug = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %.not.i271 = icmp sgt i32 %i.ug, 0
  br i1 %.not.i271, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.uh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef nonnull @.str.371, i64 noundef 20)
          to label %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit unwind label %bb.db ; 0 uses

_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit:           ; preds = %bb.cm
  %.pre451 = load i32, ptr %i.uf, align 8, !tbaa !282
  %.pre452 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.ui = icmp slt i32 %.pre451, %.pre452
  br i1 %i.ui, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.cn

bb.cn:                                            ; preds = %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit
  %i.uj = load ptr, ptr %i.tk, align 8, !tbaa !101
  %i.uk = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !103
  %i.um = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef %i.uj, i64 noundef %i.ul)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit275 unwind label %bb.db ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit275: ; preds = %bb.cn
  %.pre453 = load i32, ptr %i.uf, align 8, !tbaa !282
  %.pre454 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.un = icmp slt i32 %.pre453, %.pre454
  br i1 %i.un, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.co

bb.co:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit275
  %i.uo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef nonnull @.str.372, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.db ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.cl, %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit275, %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !2239)
  %i.up = icmp slt i8 %i.f, 34
  br i1 %i.up, label %bb.cp, label %bb.ct, !prof !312

bb.cp:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.uq = and i64 %i.th, 4294967295
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.uq
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !243, !noalias !2239 ; 4 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  store ptr %i.ut, ptr %25, align 8, !tbaa !97, !alias.scope !2239
  %29 = icmp eq ptr %i.us, null
  br i1 %29, label %.noexc.i284, label %30

.noexc.i284:                                      ; preds = %bb.cp
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.240) #40
          to label %.noexc285 unwind label %bb.dc

.noexc285:                                        ; preds = %.noexc.i284
  unreachable

30:                                               ; preds = %bb.cp
  %31 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.us) #41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41, !noalias !2239
  store i64 %31, ptr %i.a, align 8, !tbaa !99, !noalias !2239
  %32 = icmp ugt i64 %31, 15
  br i1 %32, label %.noexc.i.i279, label %._crit_edge.i.i.i278

.noexc.i.i279:                                    ; preds = %30
  %i.uu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc280 unwind label %bb.dc ; 2 uses

.noexc280:                                        ; preds = %.noexc.i.i279
  store ptr %i.uu, ptr %25, align 8, !tbaa !101, !alias.scope !2239
  %i.uv = load i64, ptr %i.a, align 8, !tbaa !99, !noalias !2239
  store i64 %i.uv, ptr %i.ut, align 8, !tbaa !102, !alias.scope !2239
  br label %._crit_edge.i.i.i278

._crit_edge.i.i.i278:                             ; preds = %.noexc280, %30
  %i.uw = phi ptr [ %i.uu, %.noexc280 ], [ %i.ut, %30 ] ; 2 uses
  switch i64 %31, label %bb.cr [
    i64 1, label %bb.cq
    i64 0, label %bb.cs
  ]

bb.cq:                                            ; preds = %._crit_edge.i.i.i278
  %i.ux = load i8, ptr %i.us, align 1, !tbaa !102
  store i8 %i.ux, ptr %i.uw, align 1, !tbaa !102
  br label %bb.cs

bb.cr:                                            ; preds = %._crit_edge.i.i.i278
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uw, ptr nonnull align 1 %i.us, i64 %31, i1 false)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %._crit_edge.i.i.i278
  %i.uy = load i64, ptr %i.a, align 8, !tbaa !99, !noalias !2239 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.uy, ptr %i.uz, align 8, !tbaa !103, !alias.scope !2239
  %i.va = load ptr, ptr %25, align 8, !tbaa !101, !alias.scope !2239
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 %i.uy
  store i8 0, ptr %i.vb, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41, !noalias !2239
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit282

bb.ct:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41, !noalias !2239
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.374, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc281 unwind label %bb.dc

.noexc281:                                        ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41, !noalias !2239
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit282

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit282: ; preds = %.noexc281, %bb.cs
  %i.vc = load i32, ptr %i.uf, align 8, !tbaa !282
  %i.vd = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %.not.i283 = icmp slt i32 %i.vc, %i.vd
  br i1 %.not.i283, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit282
  %i.ve = load ptr, ptr %25, align 8, !tbaa !101
  %i.vf = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !103
  %i.vh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef %i.ve, i64 noundef %i.vg)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit285 unwind label %bb.dd ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit285: ; preds = %bb.cu
  %.pre455 = load i32, ptr %i.uf, align 8, !tbaa !282
  %.pre456 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.vi = icmp slt i32 %.pre455, %.pre456
  br i1 %i.vi, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit, label %bb.cv

bb.cv:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit285
  %i.vj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef nonnull @.str.373, i64 noundef 2)
          to label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit unwind label %bb.dd ; 0 uses

_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit:            ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit282, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit285, %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #41
  invoke void @_ZN4crow6Router9get_errorB5cxx11ERKNS_21routing_handle_resultE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(3656) %1, ptr noundef nonnull align 8 dereferenceable(137) %i.g)
          to label %bb.cw unwind label %bb.de

bb.cw:                                            ; preds = %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit
  %i.vk = load i32, ptr %i.uf, align 8, !tbaa !282
  %i.vl = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %.not.i288 = icmp slt i32 %i.vk, %i.vl
  br i1 %.not.i288, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit290, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.vm = load ptr, ptr %26, align 8, !tbaa !101
  %i.vn = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.vo = load i64, ptr %i.vn, align 8, !tbaa !103
  %i.vp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef %i.vm, i64 noundef %i.vo)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit290 unwind label %bb.df ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit290: ; preds = %bb.cw, %bb.cx
  %i.vq = load ptr, ptr %26, align 8, !tbaa !101  ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.vs = icmp eq ptr %i.vq, %i.vr
  br i1 %i.vs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit290
  %i.vt = load i64, ptr %i.vr, align 8, !tbaa !102
  %i.vu = add i64 %i.vt, 1
  call void @_ZdlPvm(ptr noundef %i.vq, i64 noundef %i.vu) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit290, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #41
  %i.vv = load ptr, ptr %25, align 8, !tbaa !101  ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.vx = icmp eq ptr %i.vv, %i.vw
  br i1 %i.vx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293
  %i.vy = load i64, ptr %i.vw, align 8, !tbaa !102
  %i.vz = add i64 %i.vy, 1
  call void @_ZdlPvm(ptr noundef %i.vv, i64 noundef %i.vz) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #41
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %24) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #41
  br label %.critedge

bb.cy:                                            ; preds = %bb.ci
  %i.wa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #41
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

bb.dc:                                            ; preds = %bb.ct, %.noexc.i.i279, %.noexc.i284
  %i.we = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

bb.dd:                                            ; preds = %bb.cv, %bb.cu
  %i.wf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.de:                                            ; preds = %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit
  %i.wg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

bb.df:                                            ; preds = %bb.cx
  %i.wh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wi = load ptr, ptr %26, align 8, !tbaa !101  ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.wk = icmp eq ptr %i.wi, %i.wj
  br i1 %i.wk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297: ; preds = %bb.df
  %i.wl = load i64, ptr %i.wj, align 8, !tbaa !102
  %i.wm = add i64 %i.wl, 1
  call void @_ZdlPvm(ptr noundef %i.wi, i64 noundef %i.wm) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297, %bb.de
  %.pn = phi { ptr, i32 } [ %i.wg, %bb.de ], [ %i.wh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297 ], [ %i.wh, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #41
  br label %bb.dg

bb.dg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, %bb.dd
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299 ], [ %i.wf, %bb.dd ] ; 2 uses
  %i.wn = load ptr, ptr %25, align 8, !tbaa !101  ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.wp = icmp eq ptr %i.wn, %i.wo
  br i1 %i.wp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300: ; preds = %bb.dg
  %i.wq = load i64, ptr %i.wo, align 8, !tbaa !102
  %i.wr = add i64 %i.wq, 1
  call void @_ZdlPvm(ptr noundef %i.wn, i64 noundef %i.wr) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300, %bb.dc
  %.pn.pn.pn = phi { ptr, i32 } [ %i.we, %bb.dc ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300 ], [ %.pn.pn, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #41
  br label %bb.dh

bb.dh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, %bb.db
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302 ], [ %i.wd, %bb.db ]
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %24) #41
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.da
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.dh ], [ %i.wc, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #41
  br label %bb.dy

bb.dj:                                            ; preds = %bb.cg
  store i32 404, ptr %3, align 8, !tbaa !121
  store i8 1, ptr %i.g, align 8, !tbaa !1083
  %i.ws = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.wt = icmp slt i32 %i.ws, 1
  br i1 %i.wt, label %bb.dk, label %.critedge

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #41
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %27)
          to label %bb.dl unwind label %bb.dr

bb.dl:                                            ; preds = %bb.dk
  %i.wu = getelementptr inbounds nuw i8, ptr %27, i64 376 ; 4 uses
  store i32 0, ptr %i.wu, align 8, !tbaa !282
  %i.wv = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %.not.i305 = icmp sgt i32 %i.wv, 0
  br i1 %.not.i305, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit313, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ww = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %27, ptr noundef nonnull @.str.366, i64 noundef 19)
          to label %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit307 unwind label %bb.ds ; 0 uses

_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit307:        ; preds = %bb.dm
  %.pre457 = load i32, ptr %i.wu, align 8, !tbaa !282
  %.pre458 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.wx = icmp slt i32 %.pre457, %.pre458
  br i1 %i.wx, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit313, label %bb.dn

bb.dn:                                            ; preds = %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit307
  %i.wy = load ptr, ptr %i.tk, align 8, !tbaa !101
  %i.wz = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !103
  %i.xb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %27, ptr noundef %i.wy, i64 noundef %i.xa)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit310 unwind label %bb.ds ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit310: ; preds = %bb.dn
  %.pre459 = load i32, ptr %i.wu, align 8, !tbaa !282
  %.pre460 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.xc = icmp slt i32 %.pre459, %.pre460
  br i1 %i.xc, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit313, label %bb.do

bb.do:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit310
  %i.xd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %27, ptr noundef nonnull @.str.373, i64 noundef 2)
          to label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit313 unwind label %bb.ds ; 0 uses

_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit313:         ; preds = %bb.dl, %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit307, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit310, %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #41
  invoke void @_ZN4crow6Router9get_errorB5cxx11ERKNS_21routing_handle_resultE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(3656) %1, ptr noundef nonnull align 8 dereferenceable(137) %i.g)
          to label %bb.dp unwind label %bb.dt

bb.dp:                                            ; preds = %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit313
  %i.xe = load i32, ptr %i.wu, align 8, !tbaa !282
  %i.xf = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %.not.i314 = icmp slt i32 %i.xe, %i.xf
  br i1 %.not.i314, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.xg = load ptr, ptr %28, align 8, !tbaa !101
  %i.xh = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.xi = load i64, ptr %i.xh, align 8, !tbaa !103
  %i.xj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %27, ptr noundef %i.xg, i64 noundef %i.xi)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316 unwind label %bb.du ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316: ; preds = %bb.dp, %bb.dq
  %i.xk = load ptr, ptr %28, align 8, !tbaa !101  ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.xm = icmp eq ptr %i.xk, %i.xl
  br i1 %i.xm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316
  %i.xn = load i64, ptr %i.xl, align 8, !tbaa !102
  %i.xo = add i64 %i.xn, 1
  call void @_ZdlPvm(ptr noundef %i.xk, i64 noundef %i.xo) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #41
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %27) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #41
  br label %.critedge

bb.dr:                                            ; preds = %bb.dk
  %i.xp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.ds:                                            ; preds = %bb.do, %bb.dn, %bb.dm
  %i.xq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.dt:                                            ; preds = %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit313
  %i.xr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322

bb.du:                                            ; preds = %bb.dq
  %i.xs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xt = load ptr, ptr %28, align 8, !tbaa !101  ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.xv = icmp eq ptr %i.xt, %i.xu
  br i1 %i.xv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320: ; preds = %bb.du
  %i.xw = load i64, ptr %i.xu, align 8, !tbaa !102
  %i.xx = add i64 %i.xw, 1
  call void @_ZdlPvm(ptr noundef %i.xt, i64 noundef %i.xx) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320, %bb.dt
  %.pn107 = phi { ptr, i32 } [ %i.xr, %bb.dt ], [ %i.xs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320 ], [ %i.xs, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #41
  br label %bb.dv

bb.dv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, %bb.ds
  %.pn107.pn = phi { ptr, i32 } [ %.pn107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322 ], [ %i.xq, %bb.ds ]
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %27) #41
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.dr
  %.pn107.pn.pn = phi { ptr, i32 } [ %.pn107.pn, %bb.dv ], [ %i.xp, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #41
  br label %bb.dy

bb.dx:                                            ; preds = %_ZN4crow21routing_handle_resultaSEOS0_.exit266
  store i8 %i.f, ptr %i.r, align 8, !tbaa !1084
  br label %.critedge

.critedge:                                        ; preds = %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, %bb.ac, %_ZNSt6vectorImSaImEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, %bb.dx, %_ZN4crow8responseD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, %bb.dj
  ret void

bb.dy:                                            ; preds = %bb.cy, %bb.cz, %bb.di, %bb.dw, %bb.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, %bb.v, %bb.s, %bb.r
  %.pn133 = phi { ptr, i32 } [ %i.wa, %bb.cy ], [ %i.wb, %bb.cz ], [ %.pn131, %bb.v ], [ %i.cx, %bb.s ], [ %i.cw, %bb.r ], [ %.pn124.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262 ], [ %.pn107.pn.pn, %bb.dw ], [ %i.ua, %bb.ch ], [ %.pn.pn.pn.pn.pn, %bb.di ]
  call void @_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #41
  br label %bb.dz

bb.dz:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit142, %bb.dy
end_hunk_0
begin_hunk_1_@_ZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEEJS3_S6_EE6handleEv:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41, !noalias !2420
  br label %.body

bb.aj:                                            ; preds = %bb.ah
  %i.iw = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !2420 ; 2 uses
  store ptr %i.iw, ptr %4, align 8, !tbaa !284, !noalias !2420
  %i.ix = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8, !noalias !2420
  %i.iy = getelementptr i8, ptr %i.iw, i64 -24
  %i.iz = load i64, ptr %i.iy, align 8
  %i.ja = getelementptr inbounds i8, ptr %4, i64 %i.iz
  store ptr %i.ix, ptr %i.ja, align 8, !tbaa !284, !noalias !2420
  %i.jb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8, !noalias !2420
  store ptr %i.jb, ptr %i.io, align 8, !tbaa !284, !noalias !2420
  %i.jc = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.jc, align 8, !tbaa !284, !noalias !2420
  %i.jd = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !101, !noalias !2420 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.jg = icmp eq ptr %i.je, %i.jf
  br i1 %i.jg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.aj
  %i.jh = load i64, ptr %i.jf, align 8, !tbaa !102, !noalias !2420
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.ji) #42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.jc, align 8, !tbaa !284, !noalias !2420
  %i.jj = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jj) #41
  %i.jk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !2420 ; 2 uses
  store ptr %i.jk, ptr %4, align 8, !tbaa !284, !noalias !2420
  %i.jl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !2420
  %i.jm = getelementptr i8, ptr %i.jk, i64 -24
  %i.jn = load i64, ptr %i.jm, align 8
  %i.jo = getelementptr inbounds i8, ptr %4, i64 %i.jn
  store ptr %i.jl, ptr %i.jo, align 8, !tbaa !284, !noalias !2420
  %i.jp = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.jp, align 8, !tbaa !1095, !noalias !2420
  %i.jq = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.jq) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41, !noalias !2420
  %i.jr = load i32, ptr %i.ij, align 8, !tbaa !282
  %i.js = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %.not.i64 = icmp slt i32 %i.jr, %i.js
  br i1 %.not.i64, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.jt = load ptr, ptr %13, align 8, !tbaa !101
  %i.ju = load i64, ptr %i.in, align 8, !tbaa !103
  %i.jv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef %i.jt, i64 noundef %i.ju)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.bi ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.ak
  %.pre = load i32, ptr %i.ij, align 8, !tbaa !282
  %.pre184 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.jw = icmp slt i32 %.pre, %.pre184
  br i1 %i.jw, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.al

bb.al:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.jx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull @.str.372, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.bi ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.al
  %.pre185 = load i32, ptr %i.ij, align 8, !tbaa !282
  %.pre186 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.jy = icmp slt i32 %.pre185, %.pre186
  br i1 %i.jy, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.am

bb.am:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.jz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull %0)
          to label %_ZN4crow6loggerlsIPNS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEEJS5_S8_EEEEERS0_RKT_.exit unwind label %bb.bi ; 0 uses

_ZN4crow6loggerlsIPNS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEEJS5_S8_EEEEERS0_RKT_.exit: ; preds = %bb.am
  %.pre187 = load i32, ptr %i.ij, align 8, !tbaa !282
  %.pre188 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.ka = icmp slt i32 %.pre187, %.pre188
  br i1 %i.ka, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.an

bb.an:                                            ; preds = %_ZN4crow6loggerlsIPNS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEEJS5_S8_EEEEERS0_RKT_.exit
  %i.kb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull @.str.495, i64 noundef 6)
          to label %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit unwind label %bb.bi ; 0 uses

_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit:            ; preds = %bb.an
  %.pre189 = load i32, ptr %i.ij, align 8, !tbaa !282
  %.pre190 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.kc = icmp slt i32 %.pre189, %.pre190
  %i.kd = load ptr, ptr %i.bl, align 8, !tbaa !1067, !nonnull !239, !align !412
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 248
  %i.kf = load i8, ptr %i.ke, align 8, !tbaa !1139
  %i.kg = add i8 %i.kf, 48                        ; 2 uses
  br i1 %i.kc, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ao

bb.ao:                                            ; preds = %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.kg, ptr %i.d, align 1, !tbaa !102
  %i.kh = load ptr, ptr %12, align 8, !tbaa !284
  %i.ki = getelementptr i8, ptr %i.kh, i64 -24
  %i.kj = load i64, ptr %i.ki, align 8
  %i.kk = getelementptr inbounds i8, ptr %12, i64 %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !915
  %.not.i.i73 = icmp eq i64 %i.km, 0
  br i1 %.not.i.i73, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit unwind label %bb.bi ; 0 uses

bb.aq:                                            ; preds = %bb.ao
  %i.ko = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %12, i8 noundef signext %i.kg)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit unwind label %bb.bi ; 0 uses

_ZN4crow6loggerlsIcEERS0_RKT_.exit:               ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre191 = load i32, ptr %i.ij, align 8, !tbaa !282
  %.pre192 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.kp = icmp slt i32 %.pre191, %.pre192
  br i1 %i.kp, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ar

bb.ar:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit
  %i.kq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull @.str.496, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78 unwind label %bb.bi ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78:          ; preds = %bb.ar
  %.pre193 = load i32, ptr %i.ij, align 8, !tbaa !282
  %.pre194 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.kr = icmp slt i32 %.pre193, %.pre194
  %i.ks = load ptr, ptr %i.bl, align 8, !tbaa !1067, !nonnull !239, !align !412
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 249
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !1140
  %i.kv = add i8 %i.ku, 48                        ; 2 uses
  br i1 %i.kr, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.as

bb.as:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.kv, ptr %i.c, align 1, !tbaa !102
  %i.kw = load ptr, ptr %12, align 8, !tbaa !284
  %i.kx = getelementptr i8, ptr %i.kw, i64 -24
  %i.ky = load i64, ptr %i.kx, align 8
  %i.kz = getelementptr inbounds i8, ptr %12, i64 %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !915
  %.not.i.i80 = icmp eq i64 %i.lb, 0
  br i1 %.not.i.i80, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.lc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit84 unwind label %bb.bi ; 0 uses

bb.au:                                            ; preds = %bb.as
  %i.ld = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %12, i8 noundef signext %i.kv)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit84 unwind label %bb.bi ; 0 uses

_ZN4crow6loggerlsIcEERS0_RKT_.exit84:             ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.pre195 = load i32, ptr %i.ij, align 8, !tbaa !282
  %.pre196 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.le = icmp slt i32 %.pre195, %.pre196
  br i1 %i.le, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.av

bb.av:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !102
  %i.lf = load ptr, ptr %12, align 8, !tbaa !284
  %i.lg = getelementptr i8, ptr %i.lf, i64 -24
  %i.lh = load i64, ptr %i.lg, align 8
  %i.li = getelementptr inbounds i8, ptr %12, i64 %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !915
  %.not.i.i86 = icmp eq i64 %i.lk, 0
  br i1 %.not.i.i86, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ll = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87 unwind label %bb.bi ; 0 uses

bb.ax:                                            ; preds = %bb.av
  %i.lm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %12, i8 noundef signext 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87 unwind label %bb.bi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87: ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90

_ZN4crow6loggerlsIcEERS0_RKT_.exit90:             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, %_ZN4crow6loggerlsIPNS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEEJS5_S8_EEEEERS0_RKT_.exit, %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit, %_ZN4crow6loggerlsIcEERS0_RKT_.exit, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87, %_ZN4crow6loggerlsIcEERS0_RKT_.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  %i.ln = load ptr, ptr %i.bl, align 8, !tbaa !1067, !nonnull !239, !align !412
  %i.lo = load i8, ptr %i.ln, align 8, !tbaa !993 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2421)
  %i.lp = icmp slt i8 %i.lo, 34
  br i1 %i.lp, label %bb.ay, label %bb.bc, !prof !312

bb.ay:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit90
  %i.lq = sext i8 %i.lo to i64
  %i.lr = and i64 %i.lq, 4294967295
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.lr
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !243, !noalias !2421 ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.lu, ptr %15, align 8, !tbaa !97, !alias.scope !2421
  %21 = icmp eq ptr %i.lt, null
  br i1 %21, label %.noexc.i91, label %22

.noexc.i91:                                       ; preds = %bb.ay
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.240) #40
          to label %.noexc92 unwind label %bb.bj

.noexc92:                                         ; preds = %.noexc.i91
  unreachable

22:                                               ; preds = %bb.ay
  %23 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lt) #41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41, !noalias !2421
  store i64 %23, ptr %i.a, align 8, !tbaa !99, !noalias !2421
  %24 = icmp ugt i64 %23, 15
  br i1 %24, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %22
  %i.lv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc91 unwind label %bb.bj  ; 2 uses

.noexc91:                                         ; preds = %.noexc.i.i
  store ptr %i.lv, ptr %15, align 8, !tbaa !101, !alias.scope !2421
  %i.lw = load i64, ptr %i.a, align 8, !tbaa !99, !noalias !2421
  store i64 %i.lw, ptr %i.lu, align 8, !tbaa !102, !alias.scope !2421
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc91, %22
  %i.lx = phi ptr [ %i.lv, %.noexc91 ], [ %i.lu, %22 ] ; 2 uses
  switch i64 %23, label %bb.ba [
    i64 1, label %bb.az
    i64 0, label %bb.bb
  ]

bb.az:                                            ; preds = %._crit_edge.i.i.i
  %i.ly = load i8, ptr %i.lt, align 1, !tbaa !102
  store i8 %i.ly, ptr %i.lx, align 1, !tbaa !102
  br label %bb.bb

bb.ba:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lx, ptr nonnull align 1 %i.lt, i64 %23, i1 false)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %._crit_edge.i.i.i
  %i.lz = load i64, ptr %i.a, align 8, !tbaa !99, !noalias !2421 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.lz, ptr %i.ma, align 8, !tbaa !103, !alias.scope !2421
  %i.mb = load ptr, ptr %15, align 8, !tbaa !101, !alias.scope !2421
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.lz
  store i8 0, ptr %i.mc, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41, !noalias !2421
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

bb.bc:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit90
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41, !noalias !2421
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.374, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc92.a unwind label %bb.bj

.noexc92.a:                                       ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41, !noalias !2421
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit: ; preds = %.noexc92.a, %bb.bb
  %i.md = load i32, ptr %i.ij, align 8, !tbaa !282
  %i.me = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %.not.i93 = icmp slt i32 %i.md, %i.me
  br i1 %.not.i93, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit101, label %bb.bd

bb.bd:                                            ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit
  %i.mf = load ptr, ptr %15, align 8, !tbaa !101
  %i.mg = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !103
  %i.mi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef %i.mf, i64 noundef %i.mh)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit95 unwind label %bb.bk ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit95: ; preds = %bb.bd
  %.pre197 = load i32, ptr %i.ij, align 8, !tbaa !282
  %.pre198 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.mj = icmp slt i32 %.pre197, %.pre198
  br i1 %i.mj, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit101, label %bb.be

bb.be:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit95
  %i.mk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull @.str.372, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit98 unwind label %bb.bk ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit98:          ; preds = %bb.be
  %.pre199 = load i32, ptr %i.ij, align 8, !tbaa !282
  %.pre200 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.ml = icmp slt i32 %.pre199, %.pre200
  br i1 %i.ml, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit101, label %bb.bf

bb.bf:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit98
  %i.mm = load ptr, ptr %i.bl, align 8, !tbaa !1067, !nonnull !239, !align !412 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 40
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !101
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 48
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !103
  %i.mr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef %i.mo, i64 noundef %i.mq)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit101 unwind label %bb.bk ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit101: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit95, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit98, %bb.bf
  %i.ms = load ptr, ptr %15, align 8, !tbaa !101  ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.mu = icmp eq ptr %i.ms, %i.mt
  br i1 %i.mu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit101
  %i.mv = load i64, ptr %i.mt, align 8, !tbaa !102
  %i.mw = add i64 %i.mv, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mw) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  %i.mx = load ptr, ptr %13, align 8, !tbaa !101  ; 2 uses
  %i.my = icmp eq ptr %i.mx, %i.im
  br i1 %i.my, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %i.mz = load i64, ptr %i.im, align 8, !tbaa !102
  %i.na = add i64 %i.mz, 1
  call void @_ZdlPvm(ptr noundef %i.mx, i64 noundef %i.na) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  br label %bb.bn

bb.bg:                                            ; preds = %bb.ag
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bh:                                            ; preds = %_ZN4crow17UnixSocketAdaptor15remote_endpointEv.exit, %_ZN4crow6loggerlsIA10_cEERS0_RKT_.exit
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bi:                                            ; preds = %bb.at, %bb.au, %bb.ak, %bb.al, %bb.an, %bb.am, %bb.ar, %bb.aq, %bb.ap, %bb.ax, %bb.aw
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bc, %.noexc.i.i, %.noexc.i91
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

bb.bk:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %i.nf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ng = load ptr, ptr %15, align 8, !tbaa !101  ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ni = icmp eq ptr %i.ng, %i.nh
  br i1 %i.ni, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.bk
  %i.nj = load i64, ptr %i.nh, align 8, !tbaa !102
  %i.nk = add i64 %i.nj, 1
  call void @_ZdlPvm(ptr noundef %i.ng, i64 noundef %i.nk) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %bb.bj
  %.pn22 = phi { ptr, i32 } [ %i.ne, %bb.bj ], [ %i.nf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ], [ %i.nf, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %bb.bi
  %.pn22.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.nd, %bb.bi ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ] ; 2 uses
  %i.nl = load ptr, ptr %13, align 8, !tbaa !101  ; 2 uses
  %i.nm = icmp eq ptr %i.nl, %i.im
  br i1 %i.nm, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.bl
  %i.nn = load i64, ptr %i.im, align 8, !tbaa !102
  %i.no = add i64 %i.nn, 1
  call void @_ZdlPvm(ptr noundef %i.nl, i64 noundef %i.no) #42
  br label %.body

.body:                                            ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn22.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ir, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.nc, %bb.bh ], [ %.pn22.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %.pn22.pn.pn.pn.pn.pn, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  br label %bb.bm

bb.bm:                                            ; preds = %.body, %bb.bg
  %.pn22.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn.pn.pn.pn.pn, %.body ], [ %i.nb, %bb.bg ]
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  br label %common.resume

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %bb.ae
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 5121 ; 2 uses
  store i8 0, ptr %i.np, align 1, !tbaa !1063
  br i1 %.017, label %bb.cu, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 4624 ; 6 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 4728 ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 4744 ; 5 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !125 ; 2 uses
  %.not.i114 = icmp eq ptr %i.nt, null
  br i1 %.not.i114, label %_ZNSt8functionIFvvEEaSEDn.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nu = invoke noundef zeroext i1 %i.nt(ptr noundef nonnull align 8 dereferenceable(32) %i.nr, ptr noundef nonnull align 8 dereferenceable(32) %i.nr, i32 noundef 3)
          to label %bb.bq unwind label %bb.br     ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ns, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEaSEDn.exit

bb.br:                                            ; preds = %bb.bp
  %i.nv = landingpad { ptr, i32 }
          catch ptr null
  %i.nw = extractvalue { ptr, i32 } %i.nv, 0
  call void @__clang_call_terminate(ptr %i.nw) #43
  unreachable

_ZNSt8functionIFvvEEaSEDn.exit:                   ; preds = %bb.bo, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !2422)
  %i.nx = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !956, !noalias !2422 ; 3 uses
  store ptr %i.nz, ptr %i.nx, align 8, !tbaa !289, !alias.scope !2422
  %i.oa = icmp eq ptr %i.nz, null
  br i1 %i.oa, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt8functionIFvvEEaSEDn.exit
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 8 ; 2 uses
  %i.oc = load atomic i32, ptr %i.ob monotonic, align 8, !noalias !2422
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bu, %bb.bs
  %.06.i.i.i.i.i = phi i32 [ %i.oc, %bb.bs ], [ %i.og, %bb.bu ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.od = add nsw i32 %.06.i.i.i.i.i, 1
  %i.oe = cmpxchg weak ptr %i.ob, i32 %.06.i.i.i.i.i, i32 %i.od acq_rel monotonic, align 8, !noalias !2422 ; 2 uses
  %i.of = extractvalue { i32, i1 } %i.oe, 1
  %i.og = extractvalue { i32, i1 } %i.oe, 0
  br i1 %i.of, label %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJNS0_12CookieParserENS0_17SessionMiddlewareINS0_13InMemoryStoreEEEEEEJS4_S7_EEEE16shared_from_thisEv.exit, label %bb.bt, !llvm.loop !62

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.bt, %_ZNSt8functionIFvvEEaSEDn.exit
  %i.oh = call ptr @__cxa_allocate_exception(i64 8) #41, !noalias !2422 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.oh, align 8, !tbaa !284, !noalias !2422
  call void @__cxa_throw(ptr nonnull %i.oh, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #40, !noalias !2422
  unreachable

_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJNS0_12CookieParserENS0_17SessionMiddlewareINS0_13InMemoryStoreEEEEEEJS4_S7_EEEE16shared_from_thisEv.exit: ; preds = %bb.bu
  %i.oi = load ptr, ptr %0, align 8, !tbaa !958, !noalias !2422 ; 2 uses
  store ptr %i.oi, ptr %16, align 16, !tbaa !811, !alias.scope !2422
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  store ptr %i.oi, ptr %17, align 16, !tbaa !811
  %i.oj = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.ok = load ptr, ptr %i.nx, align 8, !tbaa !289 ; 3 uses
  store ptr %i.ok, ptr %i.oj, align 8, !tbaa !289
  %.not.i.i.i115 = icmp eq ptr %i.ok, null
  br i1 %.not.i.i.i115, label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJNS0_12CookieParserENS0_17SessionMiddlewareINS0_13InMemoryStoreEEEEEEJS4_S7_EEEEC2ERKSA_.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJNS0_12CookieParserENS0_17SessionMiddlewareINS0_13InMemoryStoreEEEEEEJS4_S7_EEEE16shared_from_thisEv.exit
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8 ; 3 uses
  %i.om = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i.i.i.i116 = icmp eq i8 %i.om, 0
  br i1 %.not.i.i.i.i116, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.on = load i32, ptr %i.ol, align 4, !tbaa !242
  %i.oo = add nsw i32 %i.on, 1
  store i32 %i.oo, ptr %i.ol, align 4, !tbaa !242
  br label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJNS0_12CookieParserENS0_17SessionMiddlewareINS0_13InMemoryStoreEEEEEEJS4_S7_EEEEC2ERKSA_.exit

bb.bx:                                            ; preds = %bb.bv
  %i.op = atomicrmw volatile add ptr %i.ol, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJNS0_12CookieParserENS0_17SessionMiddlewareINS0_13InMemoryStoreEEEEEEJS4_S7_EEEEC2ERKSA_.exit

_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJNS0_12CookieParserENS0_17SessionMiddlewareINS0_13InMemoryStoreEEEEEEJS4_S7_EEEEC2ERKSA_.exit: ; preds = %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJNS0_12CookieParserENS0_17SessionMiddlewareINS0_13InMemoryStoreEEEEEEJS4_S7_EEEE16shared_from_thisEv.exit, %bb.bw, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.oq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.oq, align 8
  %i.or = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %.noexc119 unwind label %bb.cj ; 2 uses

.noexc119:                                        ; preds = %_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJNS0_12CookieParserENS0_17SessionMiddlewareINS0_13InMemoryStoreEEEEEEJS4_S7_EEEEC2ERKSA_.exit
  %i.os = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 4760 ; 2 uses
  %i.ou = load <2 x ptr>, ptr %17, align 16, !tbaa !183
  store ptr null, ptr %i.oj, align 8, !tbaa !289
  store <2 x ptr> %i.ou, ptr %i.or, align 8, !tbaa !183
  store ptr %i.or, ptr %2, align 16, !tbaa !183
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ot, i64 16, i1 false), !tbaa.struct !182
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.ot, align 8, !tbaa !102
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 4776 ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 4784
  %i.ox = load <2 x ptr>, ptr %i.ov, align 8, !tbaa !183
  %i.oy = load ptr, ptr %i.ov, align 8, !tbaa !183 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbvEZN4crow10ConnectionINS1_17UnixSocketAdaptorENS1_4CrowIJNS1_12CookieParserENS1_17SessionMiddlewareINS1_13InMemoryStoreEEEEEEJS5_S8_EE6handleEvEUlvE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.ov, align 8, !tbaa !183
  store <2 x ptr> %i.ox, ptr %i.os, align 16, !tbaa !183
  store ptr @_ZNSt17_Function_handlerIFbvEZN4crow10ConnectionINS1_17UnixSocketAdaptorENS1_4CrowIJNS1_12CookieParserENS1_17SessionMiddlewareINS1_13InMemoryStoreEEEEEEJS5_S8_EE6handleEvEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.ow, align 8, !tbaa !183
  %.not.i.i117 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i117, label %_ZZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEEJS3_S6_EE6handleEvENUlvE_D2Ev.exit, label %bb.by

bb.by:                                            ; preds = %.noexc119
  %i.oz = invoke noundef zeroext i1 %i.oy(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEEJS3_S6_EE6handleEvENUlvE_D2Ev.exit unwind label %bb.bz ; 0 uses

bb.bz:                                            ; preds = %bb.by
  %i.pa = landingpad { ptr, i32 }
          catch ptr null
  %i.pb = extractvalue { ptr, i32 } %i.pa, 0
  call void @__clang_call_terminate(ptr %i.pb) #43
  unreachable

_ZZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEEJS3_S6_EE6handleEvENUlvE_D2Ev.exit: ; preds = %bb.by, %.noexc119
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %.pre201 = load ptr, ptr %i.bo, align 8, !tbaa !998 ; 4 uses
  %.pre202 = load ptr, ptr %i.bl, align 8, !tbaa !1067 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41
  invoke void @_ZN4crow12CookieParser13before_handleERNS_7requestERNS_8responseERNS0_7contextE(ptr noundef nonnull align 8 dereferenceable(288) %.pre201, ptr noundef nonnull align 8 dereferenceable(280) %.pre202, ptr noundef nonnull align 8 dereferenceable(352) %i.nq, ptr noundef nonnull align 8 dereferenceable(96) %i.m)
          to label %.noexc124 unwind label %bb.cl

.noexc124:                                        ; preds = %_ZZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEEJS3_S6_EE6handleEvENUlvE_D2Ev.exit
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 4722 ; 3 uses
  %i.pd = load i8, ptr %i.pc, align 2, !tbaa !533, !range !238, !noundef !239
  %i.pe = trunc nuw i8 %i.pd to i1
  br i1 %i.pe, label %_ZN4crow6detail22middleware_call_helperINS0_36middleware_call_criteria_only_globalELi1ENS0_7contextIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEERSt5tupleIJS4_S7_EEEENSt9enable_ifIXltT0_sr3std10tuple_sizeINSt16remove_referenceIT2_E4typeEEE5valueEbE4typeERKT_RSE_RNS_7requestERNS_8responseERT1_.exit28.sink.split.i123, label %bb.ca

bb.ca:                                            ; preds = %.noexc124
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 5216 ; 2 uses
  invoke void @_ZN4crow17SessionMiddlewareINS_13InMemoryStoreEE13before_handleINS_6detail7contextIJNS_12CookieParserES2_EEEEEvRNS_7requestERNS_8responseERNS2_7contextERT_(ptr noundef nonnull align 8 dereferenceable(288) %.pre201, ptr noundef nonnull align 8 dereferenceable(280) %.pre202, ptr noundef nonnull align 8 dereferenceable(352) %i.nq, ptr noundef nonnull align 8 dereferenceable(16) %i.pf, ptr noundef nonnull align 8 dereferenceable(96) %i.m)
          to label %.noexc125 unwind label %bb.cl

.noexc125:                                        ; preds = %bb.ca
  %i.pg = load i8, ptr %i.pc, align 2, !tbaa !533, !range !238, !noundef !239
  %i.ph = trunc nuw i8 %i.pg to i1
  br i1 %i.ph, label %bb.cb, label %_ZN4crow6detail22middleware_call_helperINS0_36middleware_call_criteria_only_globalELi0ENS0_7contextIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEERSt5tupleIJS4_S7_EEEENSt9enable_ifIXltT0_sr3std10tuple_sizeINSt16remove_referenceIT2_E4typeEEE5valueEbE4typeERKT_RSE_RNS_7requestERNS_8responseERT1_.exit128.thread

bb.cb:                                            ; preds = %.noexc125
  invoke void @_ZN4crow17SessionMiddlewareINS_13InMemoryStoreEE12after_handleINS_6detail7contextIJNS_12CookieParserES2_EEEEEvRNS_7requestERNS_8responseERNS2_7contextERT_(ptr noundef nonnull align 8 dereferenceable(288) %.pre201, ptr noundef nonnull align 8 dereferenceable(280) %.pre202, ptr noundef nonnull align 8 dereferenceable(352) %i.nq, ptr noundef nonnull align 8 dereferenceable(16) %i.pf, ptr noundef nonnull align 8 dereferenceable(96) %i.m)
          to label %_ZN4crow6detail22middleware_call_helperINS0_36middleware_call_criteria_only_globalELi1ENS0_7contextIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEERSt5tupleIJS4_S7_EEEENSt9enable_ifIXltT0_sr3std10tuple_sizeINSt16remove_referenceIT2_E4typeEEE5valueEbE4typeERKT_RSE_RNS_7requestERNS_8responseERT1_.exit28.sink.split.i123 unwind label %bb.cl
end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS5_S5_EEES6_INSA_14_Node_iteratorIS8_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_:bb.a
  %i.bk = load ptr, ptr %.0.us.i.i, align 8, !tbaa !167 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.bk, null
  br i1 %.not18.us.i.i, label %.critedge28, label %bb.j

bb.j:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !173 ; 2 uses
  %i.bn = urem i64 %i.bm, %i.au
  %.not19.us.i.i = icmp eq i64 %i.bn, %i.av
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %.critedge28, !llvm.loop !32

.split.i.i:                                       ; preds = %bb.h, %bb.l
  %i.bo = phi i64 [ %i.by, %bb.l ], [ %.pre26.i.i, %bb.h ]
  %.0.i.i = phi ptr [ %i.bw, %bb.l ], [ %i.bb, %bb.h ] ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.bq = icmp eq i64 %i.aq, %i.bo
  br i1 %i.bq, label %bb.k, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

bb.k:                                             ; preds = %.split.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !103
  %i.bt = icmp eq i64 %.fr22.i.i, %i.bs
  br i1 %i.bt, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i: ; preds = %bb.k
  %i.bu = load ptr, ptr %i.bp, align 8, !tbaa !101
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.be, ptr %i.bu, i64 %.fr22.i.i)
  %i.bv = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bv, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.k, %.split.i.i
  %i.bw = load ptr, ptr %.0.i.i, align 8, !tbaa !167 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.bw, null
  br i1 %.not18.i.i, label %.critedge28, label %bb.l

bb.l:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !173 ; 2 uses
  %i.bz = urem i64 %i.by, %i.au
  %.not19.i.i = icmp eq i64 %i.bz, %i.av
  br i1 %.not19.i.i, label %.split.i.i, label %.critedge28, !llvm.loop !32

.critedge28:                                      ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i, %bb.l, %bb.j, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i, %bb.g, %bb.f
  %i.ca = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.av, i64 noundef %i.aq, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %.critedge28
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %i.cb

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, %.lr.ph.split.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.i
  %i.cc = phi ptr [ %i.l, %.lr.ph.split.us ], [ %i.be, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i ], [ %i.be, %bb.i ], [ %i.l, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit ]
  %.sroa.037.0.ph = phi ptr [ %.sroa.033.055.us, %.lr.ph.split.us ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i ], [ %.0.us.i.i, %bb.i ], [ %.sroa.033.055, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit ]
  %i.cd = load ptr, ptr %i.p, align 8, !tbaa !101 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.q
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread
  %i.cf = load i64, ptr %i.q, align 8, !tbaa !102
  %i.cg = add i64 %i.cf, 1
  tail call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #42
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ch = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.cc, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread ] ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.c
  br i1 %i.ci, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.cj = load i64, ptr %i.c, align 8, !tbaa !102
  %i.ck = add i64 %i.cj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #42
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #42
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge28, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i
  %.sroa.4.045 = phi i8 [ 0, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i ], [ 1, %.critedge28 ]
  %.sroa.037.044 = phi ptr [ %.sroa.037.0.ph, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i ], [ %i.ca, %.critedge28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
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
  %i.b = load i8, ptr %1, align 8, !tbaa !993     ; 2 uses
  %i.c = icmp sgt i8 %i.b, 33
  br i1 %i.c, label %bb.br, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.ptr173 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = sext i8 %i.b to i64
  %i.e = getelementptr inbounds nuw [104 x i8], ptr %.ptr173, i64 %i.d ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  call void @_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"struct.crow::routing_handle_result") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 noundef 0, ptr noundef null, ptr noundef null)
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1082 ; 6 uses
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %.preheader, label %bb.ai

.preheader:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %.critedge

bb.c:                                             ; preds = %.critedge
  %.056.add = add nuw nsw i64 %.056.idx174, 104   ; 2 uses
  %.not59 = icmp eq i64 %.056.add, 3576
  br i1 %.not59, label %.critedge73, label %.critedge

.critedge:                                        ; preds = %.preheader, %bb.c
  %.056.idx174 = phi i64 [ 40, %.preheader ], [ %.056.add, %bb.c ] ; 2 uses
  %.056.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.056.idx174
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.k = getelementptr inbounds nuw i8, ptr %.056.ptr, i64 24 ; 2 uses
  call void @_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"struct.crow::routing_handle_result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.k, i64 noundef 0, ptr noundef null, ptr noundef null)
  %i.l = load i64, ptr %i.j, align 8, !tbaa !1082
  %.not60 = icmp eq i64 %i.l, 0
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br i1 %.not60, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.m = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %7)
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 376 ; 4 uses
  store i32 0, ptr %i.o, align 8, !tbaa !282
  %i.p = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %.not.i = icmp sgt i32 %i.p, 0
  br i1 %.not.i, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef nonnull @.str.371, i64 noundef 20)
          to label %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit:           ; preds = %bb.f
  %.pre187.a = load i32, ptr %i.o, align 8, !tbaa !282
  %.pre188.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.r = icmp slt i32 %.pre187.a, %.pre188.a
  br i1 %i.r, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !101
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !103
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef %i.s, i64 noundef %i.u)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.g
  %.pre189 = load i32, ptr %i.o, align 8, !tbaa !282
  %.pre190 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.w = icmp slt i32 %.pre189, %.pre190
  br i1 %i.w, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef nonnull @.str.372, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.e, %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.y = load i8, ptr %1, align 8, !tbaa !993     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2450)
  %i.z = icmp slt i8 %i.y, 34
  br i1 %i.z, label %bb.i, label %bb.m, !prof !312

bb.i:                                             ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.aa = sext i8 %i.y to i64
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !243, !noalias !2450 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ae, ptr %8, align 8, !tbaa !97, !alias.scope !2450
  %17 = icmp eq ptr %i.ad, null
  br i1 %17, label %.noexc.i, label %18

.noexc.i:                                         ; preds = %bb.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.240) #40
          to label %.noexc78 unwind label %bb.p

.noexc78:                                         ; preds = %.noexc.i
  unreachable

18:                                               ; preds = %bb.i
  %19 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41, !noalias !2450
  store i64 %19, ptr %i.a, align 8, !tbaa !99, !noalias !2450
  %20 = icmp ugt i64 %19, 15
  br i1 %20, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %18
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc78.a unwind label %bb.p ; 2 uses

.noexc78.a:                                       ; preds = %.noexc.i.i
  store ptr %i.af, ptr %8, align 8, !tbaa !101, !alias.scope !2450
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !99, !noalias !2450
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !102, !alias.scope !2450
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc78.a, %18
  %i.ah = phi ptr [ %i.af, %.noexc78.a ], [ %i.ae, %18 ] ; 2 uses
  switch i64 %19, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ai = load i8, ptr %i.ad, align 1, !tbaa !102
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !102
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %i.ad, i64 %19, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !99, !noalias !2450 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !103, !alias.scope !2450
  %i.al = load ptr, ptr %8, align 8, !tbaa !101, !alias.scope !2450
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41, !noalias !2450
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

bb.m:                                             ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41, !noalias !2450
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.374, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc79 unwind label %bb.p

.noexc79:                                         ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41, !noalias !2450
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit: ; preds = %.noexc79, %bb.l
  %i.an = load i32, ptr %i.o, align 8, !tbaa !282
  %i.ao = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %.not.i80 = icmp slt i32 %i.an, %i.ao
  br i1 %.not.i80, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit82, label %bb.n

bb.n:                                             ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit
  %i.ap = load ptr, ptr %8, align 8, !tbaa !101
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !103
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit82 unwind label %bb.q ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit82: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit, %bb.n
  %i.at = load ptr, ptr %8, align 8, !tbaa !101   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit82
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !102
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %bb.s

bb.o:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.p:                                             ; preds = %bb.m, %.noexc.i.i, %.noexc.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

bb.q:                                             ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %8, align 8, !tbaa !101   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.q
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !102
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.p
  %.pn = phi { ptr, i32 } [ %i.az, %bb.p ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %i.ba, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.ay, %bb.o ]
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  store i32 405, ptr %9, align 8, !tbaa !121
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !97
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.bi, align 8, !tbaa !103
  store i8 0, ptr %i.bh, align 8, !tbaa !102
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !122
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  store i64 1, ptr %i.bl, align 8, !tbaa !123
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bn, align 8, !tbaa !124
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 168 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.bo, i8 0, i64 19, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bp, i8 0, i64 64, i1 false)
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !97
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 176
  store i64 0, ptr %i.bs, align 8, !tbaa !103
  store i8 0, ptr %i.br, align 8, !tbaa !102
  %i.bt = call noundef nonnull align 8 dereferenceable(352) ptr @_ZN4crow8responseaSEOS0_(ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef nonnull align 8 dereferenceable(352) %9) #41 ; 0 uses
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !101 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.br
  br i1 %i.bv, label %_ZN4crow8response16static_file_infoD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.s
  %i.bw = load i64, ptr %i.br, align 8, !tbaa !102
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #42
  br label %_ZN4crow8response16static_file_infoD2Ev.exit.i

_ZN4crow8response16static_file_infoD2Ev.exit.i:   ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !125 ; 2 uses
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
  call void @__clang_call_terminate(ptr %i.cd) #43
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.t, %_ZN4crow8response16static_file_infoD2Ev.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !125 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.cf, null
  br i1 %.not.i1.i, label %_ZNSt14_Function_baseD2Ev.exit2.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.cg = invoke noundef zeroext i1 %i.cf(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #43
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i:                ; preds = %bb.v, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.cj = load ptr, ptr %i.bm, align 8, !tbaa !298 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.ck, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.cj, %_ZNSt14_Function_baseD2Ev.exit2.i ] ; 6 uses
  %i.ck = load ptr, ptr %.06.i.i.i, align 8, !tbaa !167 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !101 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !102
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !101 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !102
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #42
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #42
  %.not.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.cx = load ptr, ptr %i.bj, align 8, !tbaa !122
  %i.cy = load i64, ptr %i.bl, align 8, !tbaa !123
  %i.cz = shl i64 %i.cy, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cx, i8 0, i64 %i.cz, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.da = load ptr, ptr %i.bj, align 8, !tbaa !122 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.bk
  br i1 %i.db, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i
  %i.dc = load i64, ptr %i.bl, align 8, !tbaa !123
  %i.dd = shl i64 %i.dc, 3
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #42
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, %bb.x
  %i.de = load ptr, ptr %i.bg, align 8, !tbaa !101 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.bh
  br i1 %i.df, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit
  %i.dg = load i64, ptr %i.bh, align 8, !tbaa !102
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  call void @_ZN4crow8response3endEv(ptr noundef nonnull align 8 dereferenceable(352) %2)
  br label %bb.br

.critedge73:                                      ; preds = %bb.c
  %i.di = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.dj = icmp slt i32 %i.di, 2
  br i1 %i.dj, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %.critedge73
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %10)
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 376 ; 2 uses
  store i32 1, ptr %i.dk, align 8, !tbaa !282
  %i.dl = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %.not.i86 = icmp sgt i32 %i.dl, 1
  br i1 %.not.i86, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit90, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %10, ptr noundef nonnull @.str.366, i64 noundef 19)
          to label %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit unwind label %bb.ab ; 0 uses

_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit:           ; preds = %bb.z
  %.pre191 = load i32, ptr %i.dk, align 8, !tbaa !282
  %.pre192 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.dn = icmp slt i32 %.pre191, %.pre192
  br i1 %i.dn, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit90, label %bb.aa

bb.aa:                                            ; preds = %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit
  %i.do = load ptr, ptr %i.g, align 8, !tbaa !101
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 48
end_hunk_2
begin_hunk_3_@_ZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEEJS3_S6_EE6handleEv:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41, !noalias !2654
  br label %.body

bb.ar:                                            ; preds = %bb.ap
  %i.kc = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !2654 ; 2 uses
  store ptr %i.kc, ptr %4, align 8, !tbaa !284, !noalias !2654
  %i.kd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8, !noalias !2654
  %i.ke = getelementptr i8, ptr %i.kc, i64 -24
  %i.kf = load i64, ptr %i.ke, align 8
  %i.kg = getelementptr inbounds i8, ptr %4, i64 %i.kf
  store ptr %i.kd, ptr %i.kg, align 8, !tbaa !284, !noalias !2654
  %i.kh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8, !noalias !2654
  store ptr %i.kh, ptr %i.ju, align 8, !tbaa !284, !noalias !2654
  %i.ki = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ki, align 8, !tbaa !284, !noalias !2654
  %i.kj = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !101, !noalias !2654 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.km = icmp eq ptr %i.kk, %i.kl
  br i1 %i.km, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.ar
  %i.kn = load i64, ptr %i.kl, align 8, !tbaa !102, !noalias !2654
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.ko) #42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ki, align 8, !tbaa !284, !noalias !2654
  %i.kp = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.kp) #41
  %i.kq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !2654 ; 2 uses
  store ptr %i.kq, ptr %4, align 8, !tbaa !284, !noalias !2654
  %i.kr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !2654
  %i.ks = getelementptr i8, ptr %i.kq, i64 -24
  %i.kt = load i64, ptr %i.ks, align 8
  %i.ku = getelementptr inbounds i8, ptr %4, i64 %i.kt
  store ptr %i.kr, ptr %i.ku, align 8, !tbaa !284, !noalias !2654
  %i.kv = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.kv, align 8, !tbaa !1095, !noalias !2654
  %i.kw = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.kw) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41, !noalias !2654
  %i.kx = load i32, ptr %i.jp, align 8, !tbaa !282
  %i.ky = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %.not.i64 = icmp slt i32 %i.kx, %i.ky
  br i1 %.not.i64, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.kz = load ptr, ptr %15, align 8, !tbaa !101
  %i.la = load i64, ptr %i.jt, align 8, !tbaa !103
  %i.lb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef %i.kz, i64 noundef %i.la)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.bq ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.as
  %.pre = load i32, ptr %i.jp, align 8, !tbaa !282
  %.pre184 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.lc = icmp slt i32 %.pre, %.pre184
  br i1 %i.lc, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.at

bb.at:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.ld = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull @.str.372, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.bq ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.at
  %.pre185 = load i32, ptr %i.jp, align 8, !tbaa !282
  %.pre186 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.le = icmp slt i32 %.pre185, %.pre186
  br i1 %i.le, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.au

bb.au:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.lf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull %0)
          to label %_ZN4crow6loggerlsIPNS_10ConnectionINS_13SocketAdaptorENS_4CrowIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEEJS5_S8_EEEEERS0_RKT_.exit unwind label %bb.bq ; 0 uses

_ZN4crow6loggerlsIPNS_10ConnectionINS_13SocketAdaptorENS_4CrowIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEEJS5_S8_EEEEERS0_RKT_.exit: ; preds = %bb.au
  %.pre187 = load i32, ptr %i.jp, align 8, !tbaa !282
  %.pre188 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.lg = icmp slt i32 %.pre187, %.pre188
  br i1 %i.lg, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.av

bb.av:                                            ; preds = %_ZN4crow6loggerlsIPNS_10ConnectionINS_13SocketAdaptorENS_4CrowIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEEJS5_S8_EEEEERS0_RKT_.exit
  %i.lh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull @.str.495, i64 noundef 6)
          to label %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit unwind label %bb.bq ; 0 uses

_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit:            ; preds = %bb.av
  %.pre189 = load i32, ptr %i.jp, align 8, !tbaa !282
  %.pre190 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.li = icmp slt i32 %.pre189, %.pre190
  %i.lj = load ptr, ptr %i.bl, align 8, !tbaa !1256, !nonnull !239, !align !412
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 248
  %i.ll = load i8, ptr %i.lk, align 8, !tbaa !1139
  %i.lm = add i8 %i.ll, 48                        ; 2 uses
  br i1 %i.li, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.aw

bb.aw:                                            ; preds = %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.lm, ptr %i.d, align 1, !tbaa !102
  %i.ln = load ptr, ptr %14, align 8, !tbaa !284
  %i.lo = getelementptr i8, ptr %i.ln, i64 -24
  %i.lp = load i64, ptr %i.lo, align 8
  %i.lq = getelementptr inbounds i8, ptr %14, i64 %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !915
  %.not.i.i73 = icmp eq i64 %i.ls, 0
  br i1 %.not.i.i73, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit unwind label %bb.bq ; 0 uses

bb.ay:                                            ; preds = %bb.aw
  %i.lu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %14, i8 noundef signext %i.lm)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit unwind label %bb.bq ; 0 uses

_ZN4crow6loggerlsIcEERS0_RKT_.exit:               ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre191 = load i32, ptr %i.jp, align 8, !tbaa !282
  %.pre192 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.lv = icmp slt i32 %.pre191, %.pre192
  br i1 %i.lv, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.az

bb.az:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit
  %i.lw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull @.str.496, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78 unwind label %bb.bq ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78:          ; preds = %bb.az
  %.pre193 = load i32, ptr %i.jp, align 8, !tbaa !282
  %.pre194 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.lx = icmp slt i32 %.pre193, %.pre194
  %i.ly = load ptr, ptr %i.bl, align 8, !tbaa !1256, !nonnull !239, !align !412
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 249
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !1140
  %i.mb = add i8 %i.ma, 48                        ; 2 uses
  br i1 %i.lx, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.ba

bb.ba:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.mb, ptr %i.c, align 1, !tbaa !102
  %i.mc = load ptr, ptr %14, align 8, !tbaa !284
  %i.md = getelementptr i8, ptr %i.mc, i64 -24
  %i.me = load i64, ptr %i.md, align 8
  %i.mf = getelementptr inbounds i8, ptr %14, i64 %i.me
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !915
  %.not.i.i80 = icmp eq i64 %i.mh, 0
  br i1 %.not.i.i80, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.mi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit84 unwind label %bb.bq ; 0 uses

bb.bc:                                            ; preds = %bb.ba
  %i.mj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %14, i8 noundef signext %i.mb)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit84 unwind label %bb.bq ; 0 uses

_ZN4crow6loggerlsIcEERS0_RKT_.exit84:             ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.pre195 = load i32, ptr %i.jp, align 8, !tbaa !282
  %.pre196 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.mk = icmp slt i32 %.pre195, %.pre196
  br i1 %i.mk, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90, label %bb.bd

bb.bd:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !102
  %i.ml = load ptr, ptr %14, align 8, !tbaa !284
  %i.mm = getelementptr i8, ptr %i.ml, i64 -24
  %i.mn = load i64, ptr %i.mm, align 8
  %i.mo = getelementptr inbounds i8, ptr %14, i64 %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !915
  %.not.i.i86 = icmp eq i64 %i.mq, 0
  br i1 %.not.i.i86, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87 unwind label %bb.bq ; 0 uses

bb.bf:                                            ; preds = %bb.bd
  %i.ms = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %14, i8 noundef signext 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87 unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87: ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4crow6loggerlsIcEERS0_RKT_.exit90

_ZN4crow6loggerlsIcEERS0_RKT_.exit90:             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, %_ZN4crow6loggerlsIPNS_10ConnectionINS_13SocketAdaptorENS_4CrowIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEEJS5_S8_EEEEERS0_RKT_.exit, %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit, %_ZN4crow6loggerlsIcEERS0_RKT_.exit, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit78, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i87, %_ZN4crow6loggerlsIcEERS0_RKT_.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  %i.mt = load ptr, ptr %i.bl, align 8, !tbaa !1256, !nonnull !239, !align !412
  %i.mu = load i8, ptr %i.mt, align 8, !tbaa !993 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  %i.mv = icmp slt i8 %i.mu, 34
  br i1 %i.mv, label %bb.bg, label %bb.bk, !prof !312

bb.bg:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit90
  %i.mw = sext i8 %i.mu to i64
  %i.mx = and i64 %i.mw, 4294967295
  %i.my = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.mx
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !243, !noalias !2655 ; 4 uses
  %i.na = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store ptr %i.na, ptr %17, align 8, !tbaa !97, !alias.scope !2655
  %23 = icmp eq ptr %i.mz, null
  br i1 %23, label %.noexc.i91, label %24

.noexc.i91:                                       ; preds = %bb.bg
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.240) #40
          to label %.noexc92 unwind label %bb.br

.noexc92:                                         ; preds = %.noexc.i91
  unreachable

24:                                               ; preds = %bb.bg
  %25 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mz) #41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41, !noalias !2655
  store i64 %25, ptr %i.a, align 8, !tbaa !99, !noalias !2655
  %26 = icmp ugt i64 %25, 15
  br i1 %26, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %24
  %i.nb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc91 unwind label %bb.br  ; 2 uses

.noexc91:                                         ; preds = %.noexc.i.i
  store ptr %i.nb, ptr %17, align 8, !tbaa !101, !alias.scope !2655
  %i.nc = load i64, ptr %i.a, align 8, !tbaa !99, !noalias !2655
  store i64 %i.nc, ptr %i.na, align 8, !tbaa !102, !alias.scope !2655
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc91, %24
  %i.nd = phi ptr [ %i.nb, %.noexc91 ], [ %i.na, %24 ] ; 2 uses
  switch i64 %25, label %bb.bi [
    i64 1, label %bb.bh
    i64 0, label %bb.bj
  ]

bb.bh:                                            ; preds = %._crit_edge.i.i.i
  %i.ne = load i8, ptr %i.mz, align 1, !tbaa !102
  store i8 %i.ne, ptr %i.nd, align 1, !tbaa !102
  br label %bb.bj

bb.bi:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nd, ptr nonnull align 1 %i.mz, i64 %25, i1 false)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %._crit_edge.i.i.i
  %i.nf = load i64, ptr %i.a, align 8, !tbaa !99, !noalias !2655 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.nf, ptr %i.ng, align 8, !tbaa !103, !alias.scope !2655
  %i.nh = load ptr, ptr %17, align 8, !tbaa !101, !alias.scope !2655
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.nf
  store i8 0, ptr %i.ni, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41, !noalias !2655
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

bb.bk:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit90
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41, !noalias !2655
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.374, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc92.a unwind label %bb.br

.noexc92.a:                                       ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41, !noalias !2655
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit: ; preds = %.noexc92.a, %bb.bj
  %i.nj = load i32, ptr %i.jp, align 8, !tbaa !282
  %i.nk = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %.not.i93 = icmp slt i32 %i.nj, %i.nk
  br i1 %.not.i93, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit101, label %bb.bl

bb.bl:                                            ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit
  %i.nl = load ptr, ptr %17, align 8, !tbaa !101
  %i.nm = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !103
  %i.no = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef %i.nl, i64 noundef %i.nn)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit95 unwind label %bb.bs ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit95: ; preds = %bb.bl
  %.pre197 = load i32, ptr %i.jp, align 8, !tbaa !282
  %.pre198 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.np = icmp slt i32 %.pre197, %.pre198
  br i1 %i.np, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit101, label %bb.bm

bb.bm:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit95
  %i.nq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull @.str.372, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit98 unwind label %bb.bs ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit98:          ; preds = %bb.bm
  %.pre199 = load i32, ptr %i.jp, align 8, !tbaa !282
  %.pre200 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.nr = icmp slt i32 %.pre199, %.pre200
  br i1 %i.nr, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit101, label %bb.bn

bb.bn:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit98
  %i.ns = load ptr, ptr %i.bl, align 8, !tbaa !1256, !nonnull !239, !align !412 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 40
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !101
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 48
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !103
  %i.nx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef %i.nu, i64 noundef %i.nw)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit101 unwind label %bb.bs ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit101: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit95, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit98, %bb.bn
  %i.ny = load ptr, ptr %17, align 8, !tbaa !101  ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.oa = icmp eq ptr %i.ny, %i.nz
  br i1 %i.oa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit101
  %i.ob = load i64, ptr %i.nz, align 8, !tbaa !102
  %i.oc = add i64 %i.ob, 1
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.oc) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41
  %i.od = load ptr, ptr %15, align 8, !tbaa !101  ; 2 uses
  %i.oe = icmp eq ptr %i.od, %i.js
  br i1 %i.oe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %i.of = load i64, ptr %i.js, align 8, !tbaa !102
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.od, i64 noundef %i.og) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %14) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br label %bb.bv

bb.bo:                                            ; preds = %bb.ao
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bp:                                            ; preds = %_ZNK4crow13SocketAdaptor15remote_endpointEv.exit, %_ZN4crow6loggerlsIA10_cEERS0_RKT_.exit
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bq:                                            ; preds = %bb.bb, %bb.bc, %bb.as, %bb.at, %bb.av, %bb.au, %bb.az, %bb.ay, %bb.ax, %bb.bf, %bb.be
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.br:                                            ; preds = %bb.bk, %.noexc.i.i, %.noexc.i91
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

bb.bs:                                            ; preds = %bb.bn, %bb.bm, %bb.bl
  %i.ol = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.om = load ptr, ptr %17, align 8, !tbaa !101  ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.oo = icmp eq ptr %i.om, %i.on
  br i1 %i.oo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.bs
  %i.op = load i64, ptr %i.on, align 8, !tbaa !102
  %i.oq = add i64 %i.op, 1
  call void @_ZdlPvm(ptr noundef %i.om, i64 noundef %i.oq) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %bb.br
  %.pn22 = phi { ptr, i32 } [ %i.ok, %bb.br ], [ %i.ol, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ], [ %i.ol, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %bb.bq
  %.pn22.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.oj, %bb.bq ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ] ; 2 uses
  %i.or = load ptr, ptr %15, align 8, !tbaa !101  ; 2 uses
  %i.os = icmp eq ptr %i.or, %i.js
  br i1 %i.os, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.bt
  %i.ot = load i64, ptr %i.js, align 8, !tbaa !102
  %i.ou = add i64 %i.ot, 1
  call void @_ZdlPvm(ptr noundef %i.or, i64 noundef %i.ou) #42
  br label %.body

.body:                                            ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %bb.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn22.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.oi, %bb.bp ], [ %.pn22.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %.pn22.pn.pn.pn.pn.pn, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br label %bb.bu

bb.bu:                                            ; preds = %.body, %bb.bo
  %.pn22.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn.pn.pn.pn.pn, %.body ], [ %i.oh, %bb.bo ]
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %14) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br label %common.resume

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %bb.am
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 5121 ; 2 uses
  store i8 0, ptr %i.ov, align 1, !tbaa !1254
  br i1 %.017, label %bb.dc, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 4624 ; 6 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 4728 ; 4 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 4744 ; 5 uses
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !125 ; 2 uses
  %.not.i114 = icmp eq ptr %i.oz, null
  br i1 %.not.i114, label %_ZNSt8functionIFvvEEaSEDn.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.pa = invoke noundef zeroext i1 %i.oz(ptr noundef nonnull align 8 dereferenceable(32) %i.ox, ptr noundef nonnull align 8 dereferenceable(32) %i.ox, i32 noundef 3)
          to label %bb.by unwind label %bb.bz     ; 0 uses

bb.by:                                            ; preds = %bb.bx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oy, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEaSEDn.exit

bb.bz:                                            ; preds = %bb.bx
  %i.pb = landingpad { ptr, i32 }
          catch ptr null
  %i.pc = extractvalue { ptr, i32 } %i.pb, 0
  call void @__clang_call_terminate(ptr %i.pc) #43
  unreachable

_ZNSt8functionIFvvEEaSEDn.exit:                   ; preds = %bb.bw, %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !2656)
  %i.pd = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !956, !noalias !2656 ; 3 uses
  store ptr %i.pf, ptr %i.pd, align 8, !tbaa !289, !alias.scope !2656
  %i.pg = icmp eq ptr %i.pf, null
  br i1 %i.pg, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt8functionIFvvEEaSEDn.exit
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 8 ; 2 uses
  %i.pi = load atomic i32, ptr %i.ph monotonic, align 8, !noalias !2656
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cc, %bb.ca
  %.06.i.i.i.i.i = phi i32 [ %i.pi, %bb.ca ], [ %i.pm, %bb.cc ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.pj = add nsw i32 %.06.i.i.i.i.i, 1
  %i.pk = cmpxchg weak ptr %i.ph, i32 %.06.i.i.i.i.i, i32 %i.pj acq_rel monotonic, align 8, !noalias !2656 ; 2 uses
  %i.pl = extractvalue { i32, i1 } %i.pk, 1
  %i.pm = extractvalue { i32, i1 } %i.pk, 0
  br i1 %i.pl, label %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJNS0_12CookieParserENS0_17SessionMiddlewareINS0_13InMemoryStoreEEEEEEJS4_S7_EEEE16shared_from_thisEv.exit, label %bb.cb, !llvm.loop !62

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.cb, %_ZNSt8functionIFvvEEaSEDn.exit
  %i.pn = call ptr @__cxa_allocate_exception(i64 8) #41, !noalias !2656 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.pn, align 8, !tbaa !284, !noalias !2656
  call void @__cxa_throw(ptr nonnull %i.pn, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #40, !noalias !2656
  unreachable

_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJNS0_12CookieParserENS0_17SessionMiddlewareINS0_13InMemoryStoreEEEEEEJS4_S7_EEEE16shared_from_thisEv.exit: ; preds = %bb.cc
  %i.po = load ptr, ptr %0, align 8, !tbaa !1212, !noalias !2656 ; 2 uses
  store ptr %i.po, ptr %18, align 16, !tbaa !1168, !alias.scope !2656
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #41
  store ptr %i.po, ptr %19, align 16, !tbaa !1168
  %i.pp = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.pq = load ptr, ptr %i.pd, align 8, !tbaa !289 ; 3 uses
  store ptr %i.pq, ptr %i.pp, align 8, !tbaa !289
  %.not.i.i.i115 = icmp eq ptr %i.pq, null
  br i1 %.not.i.i.i115, label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJNS0_12CookieParserENS0_17SessionMiddlewareINS0_13InMemoryStoreEEEEEEJS4_S7_EEEEC2ERKSA_.exit, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJNS0_12CookieParserENS0_17SessionMiddlewareINS0_13InMemoryStoreEEEEEEJS4_S7_EEEE16shared_from_thisEv.exit
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8 ; 3 uses
  %i.ps = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i.i.i.i116 = icmp eq i8 %i.ps, 0
  br i1 %.not.i.i.i.i116, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.pt = load i32, ptr %i.pr, align 4, !tbaa !242
  %i.pu = add nsw i32 %i.pt, 1
  store i32 %i.pu, ptr %i.pr, align 4, !tbaa !242
  br label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJNS0_12CookieParserENS0_17SessionMiddlewareINS0_13InMemoryStoreEEEEEEJS4_S7_EEEEC2ERKSA_.exit

bb.cf:                                            ; preds = %bb.cd
  %i.pv = atomicrmw volatile add ptr %i.pr, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJNS0_12CookieParserENS0_17SessionMiddlewareINS0_13InMemoryStoreEEEEEEJS4_S7_EEEEC2ERKSA_.exit

_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJNS0_12CookieParserENS0_17SessionMiddlewareINS0_13InMemoryStoreEEEEEEJS4_S7_EEEEC2ERKSA_.exit: ; preds = %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJNS0_12CookieParserENS0_17SessionMiddlewareINS0_13InMemoryStoreEEEEEEJS4_S7_EEEE16shared_from_thisEv.exit, %bb.ce, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.pw = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.pw, align 8
  %i.px = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %.noexc119 unwind label %bb.cr ; 2 uses

.noexc119:                                        ; preds = %_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJNS0_12CookieParserENS0_17SessionMiddlewareINS0_13InMemoryStoreEEEEEEJS4_S7_EEEEC2ERKSA_.exit
  %i.py = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 4760 ; 2 uses
  %i.qa = load <2 x ptr>, ptr %19, align 16, !tbaa !183
  store ptr null, ptr %i.pp, align 8, !tbaa !289
  store <2 x ptr> %i.qa, ptr %i.px, align 8, !tbaa !183
  store ptr %i.px, ptr %2, align 16, !tbaa !183
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.pz, i64 16, i1 false), !tbaa.struct !182
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.pz, align 8, !tbaa !102
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 4776 ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 4784
  %i.qd = load <2 x ptr>, ptr %i.qb, align 8, !tbaa !183
  %i.qe = load ptr, ptr %i.qb, align 8, !tbaa !183 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbvEZN4crow10ConnectionINS1_13SocketAdaptorENS1_4CrowIJNS1_12CookieParserENS1_17SessionMiddlewareINS1_13InMemoryStoreEEEEEEJS5_S8_EE6handleEvEUlvE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.qb, align 8, !tbaa !183
  store <2 x ptr> %i.qd, ptr %i.py, align 16, !tbaa !183
  store ptr @_ZNSt17_Function_handlerIFbvEZN4crow10ConnectionINS1_13SocketAdaptorENS1_4CrowIJNS1_12CookieParserENS1_17SessionMiddlewareINS1_13InMemoryStoreEEEEEEJS5_S8_EE6handleEvEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.qc, align 8, !tbaa !183
  %.not.i.i117 = icmp eq ptr %i.qe, null
  br i1 %.not.i.i117, label %_ZZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEEJS3_S6_EE6handleEvENUlvE_D2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %.noexc119
  %i.qf = invoke noundef zeroext i1 %i.qe(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEEJS3_S6_EE6handleEvENUlvE_D2Ev.exit unwind label %bb.ch ; 0 uses

bb.ch:                                            ; preds = %bb.cg
  %i.qg = landingpad { ptr, i32 }
          catch ptr null
  %i.qh = extractvalue { ptr, i32 } %i.qg, 0
  call void @__clang_call_terminate(ptr %i.qh) #43
  unreachable

_ZZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEEJS3_S6_EE6handleEvENUlvE_D2Ev.exit: ; preds = %bb.cg, %.noexc119
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %.pre201 = load ptr, ptr %i.bo, align 8, !tbaa !1223 ; 4 uses
  %.pre202 = load ptr, ptr %i.bl, align 8, !tbaa !1256 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #41
  invoke void @_ZN4crow12CookieParser13before_handleERNS_7requestERNS_8responseERNS0_7contextE(ptr noundef nonnull align 8 dereferenceable(288) %.pre201, ptr noundef nonnull align 8 dereferenceable(280) %.pre202, ptr noundef nonnull align 8 dereferenceable(352) %i.ow, ptr noundef nonnull align 8 dereferenceable(96) %i.m)
          to label %.noexc124 unwind label %bb.ct

.noexc124:                                        ; preds = %_ZZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEEJS3_S6_EE6handleEvENUlvE_D2Ev.exit
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 4722 ; 3 uses
  %i.qj = load i8, ptr %i.qi, align 2, !tbaa !533, !range !238, !noundef !239
  %i.qk = trunc nuw i8 %i.qj to i1
  br i1 %i.qk, label %_ZN4crow6detail22middleware_call_helperINS0_36middleware_call_criteria_only_globalELi1ENS0_7contextIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEERSt5tupleIJS4_S7_EEEENSt9enable_ifIXltT0_sr3std10tuple_sizeINSt16remove_referenceIT2_E4typeEEE5valueEbE4typeERKT_RSE_RNS_7requestERNS_8responseERT1_.exit28.sink.split.i123, label %bb.ci

bb.ci:                                            ; preds = %.noexc124
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 5216 ; 2 uses
  invoke void @_ZN4crow17SessionMiddlewareINS_13InMemoryStoreEE13before_handleINS_6detail7contextIJNS_12CookieParserES2_EEEEEvRNS_7requestERNS_8responseERNS2_7contextERT_(ptr noundef nonnull align 8 dereferenceable(288) %.pre201, ptr noundef nonnull align 8 dereferenceable(280) %.pre202, ptr noundef nonnull align 8 dereferenceable(352) %i.ow, ptr noundef nonnull align 8 dereferenceable(16) %i.ql, ptr noundef nonnull align 8 dereferenceable(96) %i.m)
          to label %.noexc125 unwind label %bb.ct

.noexc125:                                        ; preds = %bb.ci
  %i.qm = load i8, ptr %i.qi, align 2, !tbaa !533, !range !238, !noundef !239
  %i.qn = trunc nuw i8 %i.qm to i1
  br i1 %i.qn, label %bb.cj, label %_ZN4crow6detail22middleware_call_helperINS0_36middleware_call_criteria_only_globalELi0ENS0_7contextIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEERSt5tupleIJS4_S7_EEEENSt9enable_ifIXltT0_sr3std10tuple_sizeINSt16remove_referenceIT2_E4typeEEE5valueEbE4typeERKT_RSE_RNS_7requestERNS_8responseERT1_.exit128.thread

bb.cj:                                            ; preds = %.noexc125
  invoke void @_ZN4crow17SessionMiddlewareINS_13InMemoryStoreEE12after_handleINS_6detail7contextIJNS_12CookieParserES2_EEEEEvRNS_7requestERNS_8responseERNS2_7contextERT_(ptr noundef nonnull align 8 dereferenceable(288) %.pre201, ptr noundef nonnull align 8 dereferenceable(280) %.pre202, ptr noundef nonnull align 8 dereferenceable(352) %i.ow, ptr noundef nonnull align 8 dereferenceable(16) %i.ql, ptr noundef nonnull align 8 dereferenceable(96) %i.m)
          to label %_ZN4crow6detail22middleware_call_helperINS0_36middleware_call_criteria_only_globalELi1ENS0_7contextIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEERSt5tupleIJS4_S7_EEEENSt9enable_ifIXltT0_sr3std10tuple_sizeINSt16remove_referenceIT2_E4typeEEE5valueEbE4typeERKT_RSE_RNS_7requestERNS_8responseERT1_.exit28.sink.split.i123 unwind label %bb.ct
end_hunk_3
begin_hunk_4_@_ZNK4asio6detail23reactive_socket_serviceINS_2ip3tcpEE15remote_endpointERKNS4_19implementation_typeERSt10error_code:bb.a
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.41.0..sroa_idx.i.i.i, align 8, !tbaa !255
  call void @_ZN4asio6detail14do_throw_errorERKSt10error_code(ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %_ZN4asio2ip14basic_endpointINS0_3tcpEE6resizeEm.exit

_ZN4asio2ip14basic_endpointINS0_3tcpEE6resizeEm.exit: ; preds = %bb.c, %_ZN4asio6detail11throw_errorERKSt10error_code.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) %5, i64 28, i1 false), !tbaa.struct !285
  br label %bb.g

bb.g:                                             ; preds = %_ZN4asio2ip14basic_endpointINS0_3tcpEE6resizeEm.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
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
  br i1 %i.d, label %bb.c, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, !prof !104

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #41
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #41 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #41
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit: ; preds = %bb.b, %bb.c, %bb.d
  store i32 9, ptr %4, align 8, !tbaa !242
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.49.0..sroa_idx, align 8, !tbaa !255
  br label %_ZN4asio6detail10socket_ops14get_last_errorERSt10error_codeb.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.g = load i64, ptr %2, align 8, !tbaa !99
  %i.h = trunc i64 %i.g to i32
  store i32 %i.h, ptr %i.a, align 4, !tbaa !242
  %i.i = call noundef i32 @getpeername(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %i.a) #41 ; 2 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !242
  %i.k = zext i32 %i.j to i64
  store i64 %i.k, ptr %2, align 8, !tbaa !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %4, align 8, !tbaa !262
  br label %_ZN4asio6detail10socket_ops14get_last_errorERSt10error_codeb.exit

bb.g:                                             ; preds = %bb.e
  %i.l = tail call ptr @__errno_location() #45
  %i.m = load i32, ptr %i.l, align 4, !tbaa !242
  %i.n = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.h, label %_ZN4asio5error19get_system_categoryEv.exit.i, !prof !104

bb.h:                                             ; preds = %bb.g
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #41
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %_ZN4asio5error19get_system_categoryEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #41 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #41
  br label %_ZN4asio5error19get_system_categoryEv.exit.i

_ZN4asio5error19get_system_categoryEv.exit.i:     ; preds = %bb.i, %bb.h, %bb.g
  store i32 %i.m, ptr %4, align 8, !tbaa !242
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !255
  br label %_ZN4asio6detail10socket_ops14get_last_errorERSt10error_codeb.exit

_ZN4asio6detail10socket_ops14get_last_errorERSt10error_codeb.exit: ; preds = %_ZN4asio5error19get_system_categoryEv.exit.i, %bb.f, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit
  %.0 = phi i32 [ -1, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit ], [ 0, %bb.f ], [ %i.i, %_ZN4asio5error19get_system_categoryEv.exit.i ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @getpeername(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

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
  %i.b = load i8, ptr %1, align 8, !tbaa !993     ; 2 uses
  %i.c = icmp sgt i8 %i.b, 33
  br i1 %i.c, label %bb.br, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.ptr173 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = sext i8 %i.b to i64
  %i.e = getelementptr inbounds nuw [104 x i8], ptr %.ptr173, i64 %i.d ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  call void @_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"struct.crow::routing_handle_result") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 noundef 0, ptr noundef null, ptr noundef null)
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1082 ; 6 uses
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %.preheader, label %bb.ai

.preheader:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %.critedge

bb.c:                                             ; preds = %.critedge
  %.056.add = add nuw nsw i64 %.056.idx174, 104   ; 2 uses
  %.not59 = icmp eq i64 %.056.add, 3576
  br i1 %.not59, label %.critedge73, label %.critedge

.critedge:                                        ; preds = %.preheader, %bb.c
  %.056.idx174 = phi i64 [ 40, %.preheader ], [ %.056.add, %bb.c ] ; 2 uses
  %.056.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.056.idx174
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.k = getelementptr inbounds nuw i8, ptr %.056.ptr, i64 24 ; 2 uses
  call void @_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"struct.crow::routing_handle_result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.k, i64 noundef 0, ptr noundef null, ptr noundef null)
  %i.l = load i64, ptr %i.j, align 8, !tbaa !1082
  %.not60 = icmp eq i64 %i.l, 0
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br i1 %.not60, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.m = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %7)
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 376 ; 4 uses
  store i32 0, ptr %i.o, align 8, !tbaa !282
  %i.p = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %.not.i = icmp sgt i32 %i.p, 0
  br i1 %.not.i, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef nonnull @.str.371, i64 noundef 20)
          to label %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit:           ; preds = %bb.f
  %.pre187.a = load i32, ptr %i.o, align 8, !tbaa !282
  %.pre188.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.r = icmp slt i32 %.pre187.a, %.pre188.a
  br i1 %i.r, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !101
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !103
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef %i.s, i64 noundef %i.u)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.g
  %.pre189 = load i32, ptr %i.o, align 8, !tbaa !282
  %.pre190 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.w = icmp slt i32 %.pre189, %.pre190
  br i1 %i.w, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef nonnull @.str.372, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.e, %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.y = load i8, ptr %1, align 8, !tbaa !993     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2664)
  %i.z = icmp slt i8 %i.y, 34
  br i1 %i.z, label %bb.i, label %bb.m, !prof !312

bb.i:                                             ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.aa = sext i8 %i.y to i64
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !243, !noalias !2664 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ae, ptr %8, align 8, !tbaa !97, !alias.scope !2664
  %17 = icmp eq ptr %i.ad, null
  br i1 %17, label %.noexc.i, label %18

.noexc.i:                                         ; preds = %bb.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.240) #40
          to label %.noexc78 unwind label %bb.p

.noexc78:                                         ; preds = %.noexc.i
  unreachable

18:                                               ; preds = %bb.i
  %19 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41, !noalias !2664
  store i64 %19, ptr %i.a, align 8, !tbaa !99, !noalias !2664
  %20 = icmp ugt i64 %19, 15
  br i1 %20, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %18
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc78.a unwind label %bb.p ; 2 uses

.noexc78.a:                                       ; preds = %.noexc.i.i
  store ptr %i.af, ptr %8, align 8, !tbaa !101, !alias.scope !2664
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !99, !noalias !2664
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !102, !alias.scope !2664
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc78.a, %18
  %i.ah = phi ptr [ %i.af, %.noexc78.a ], [ %i.ae, %18 ] ; 2 uses
  switch i64 %19, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ai = load i8, ptr %i.ad, align 1, !tbaa !102
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !102
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %i.ad, i64 %19, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !99, !noalias !2664 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !103, !alias.scope !2664
  %i.al = load ptr, ptr %8, align 8, !tbaa !101, !alias.scope !2664
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41, !noalias !2664
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

bb.m:                                             ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41, !noalias !2664
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.374, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc79 unwind label %bb.p

.noexc79:                                         ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41, !noalias !2664
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit: ; preds = %.noexc79, %bb.l
  %i.an = load i32, ptr %i.o, align 8, !tbaa !282
  %i.ao = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %.not.i80 = icmp slt i32 %i.an, %i.ao
  br i1 %.not.i80, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit82, label %bb.n

bb.n:                                             ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit
  %i.ap = load ptr, ptr %8, align 8, !tbaa !101
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !103
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit82 unwind label %bb.q ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit82: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit, %bb.n
  %i.at = load ptr, ptr %8, align 8, !tbaa !101   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit82
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !102
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %bb.s

bb.o:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.p:                                             ; preds = %bb.m, %.noexc.i.i, %.noexc.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

bb.q:                                             ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %8, align 8, !tbaa !101   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.q
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !102
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.p
  %.pn = phi { ptr, i32 } [ %i.az, %bb.p ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %i.ba, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.ay, %bb.o ]
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  store i32 405, ptr %9, align 8, !tbaa !121
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !97
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.bi, align 8, !tbaa !103
  store i8 0, ptr %i.bh, align 8, !tbaa !102
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !122
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  store i64 1, ptr %i.bl, align 8, !tbaa !123
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bn, align 8, !tbaa !124
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 168 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.bo, i8 0, i64 19, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bp, i8 0, i64 64, i1 false)
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !97
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 176
  store i64 0, ptr %i.bs, align 8, !tbaa !103
  store i8 0, ptr %i.br, align 8, !tbaa !102
  %i.bt = call noundef nonnull align 8 dereferenceable(352) ptr @_ZN4crow8responseaSEOS0_(ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef nonnull align 8 dereferenceable(352) %9) #41 ; 0 uses
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !101 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.br
  br i1 %i.bv, label %_ZN4crow8response16static_file_infoD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.s
  %i.bw = load i64, ptr %i.br, align 8, !tbaa !102
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #42
  br label %_ZN4crow8response16static_file_infoD2Ev.exit.i

_ZN4crow8response16static_file_infoD2Ev.exit.i:   ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !125 ; 2 uses
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
  call void @__clang_call_terminate(ptr %i.cd) #43
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.t, %_ZN4crow8response16static_file_infoD2Ev.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !125 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.cf, null
  br i1 %.not.i1.i, label %_ZNSt14_Function_baseD2Ev.exit2.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.cg = invoke noundef zeroext i1 %i.cf(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #43
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i:                ; preds = %bb.v, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.cj = load ptr, ptr %i.bm, align 8, !tbaa !298 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.ck, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.cj, %_ZNSt14_Function_baseD2Ev.exit2.i ] ; 6 uses
  %i.ck = load ptr, ptr %.06.i.i.i, align 8, !tbaa !167 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !101 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !102
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !101 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !102
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #42
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #42
  %.not.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.cx = load ptr, ptr %i.bj, align 8, !tbaa !122
  %i.cy = load i64, ptr %i.bl, align 8, !tbaa !123
  %i.cz = shl i64 %i.cy, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cx, i8 0, i64 %i.cz, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.da = load ptr, ptr %i.bj, align 8, !tbaa !122 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.bk
  br i1 %i.db, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i
  %i.dc = load i64, ptr %i.bl, align 8, !tbaa !123
  %i.dd = shl i64 %i.dc, 3
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #42
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, %bb.x
  %i.de = load ptr, ptr %i.bg, align 8, !tbaa !101 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.bh
  br i1 %i.df, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit
  %i.dg = load i64, ptr %i.bh, align 8, !tbaa !102
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  call void @_ZN4crow8response3endEv(ptr noundef nonnull align 8 dereferenceable(352) %2)
  br label %bb.br

.critedge73:                                      ; preds = %bb.c
  %i.di = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.dj = icmp slt i32 %i.di, 2
  br i1 %i.dj, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %.critedge73
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %10)
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 376 ; 2 uses
  store i32 1, ptr %i.dk, align 8, !tbaa !282
  %i.dl = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %.not.i86 = icmp sgt i32 %i.dl, 1
  br i1 %.not.i86, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit90, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %10, ptr noundef nonnull @.str.366, i64 noundef 19)
          to label %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit unwind label %bb.ab ; 0 uses

_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit:           ; preds = %bb.z
  %.pre191 = load i32, ptr %i.dk, align 8, !tbaa !282
  %.pre192 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.dn = icmp slt i32 %.pre191, %.pre192
  br i1 %i.dn, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit90, label %bb.aa

bb.aa:                                            ; preds = %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit
  %i.do = load ptr, ptr %i.g, align 8, !tbaa !101
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 48
end_hunk_4
